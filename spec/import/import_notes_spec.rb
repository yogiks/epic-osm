require 'spec_helper'

require_relative '../../import_scripts/osm_api/import_notes'

describe NoteImport do
	before :all do 
		@EpicOSM = EpicOSM.new(analysis_window: 'analysis_windows/nic_test.yml')
	end

	before :each do
		@note_import = NoteImport.new(@EpicOSM.aw_config['bbox'])
	end

	it "Can import notes" do 
		@note_import.import_note_objects
		puts @note_import.import_note_objects.length
	end
end