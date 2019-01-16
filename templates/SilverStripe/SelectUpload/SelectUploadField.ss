<div class="ss-uploadfield-container">
    <% if $UploadEnabled || $AttachEnabled %>
        <div class="ss-uploadfield-item ss-uploadfield-addfile<% if $Items %> borderTop<% end_if %>">
            <div class="ss-uploadfield-item-info">
                <label class="ss-uploadfield-item-name">
                    <% if $CanSelectFolder %>
                        <small><%t SilverStripe\\SelectUpload\\SelectUploadField.ADDTO 'Add to' %>
                            <span class="change-folder">
                                <strong class="folder-name">
                                    <%t SilverStripe\\SelectUpload\\SelectUploadField.FILESPATH 'Files / {path}' path=$DisplayFolderName %>
                                </strong>
                                <span class="change">(change)</span>
                            </span>
                        </small>
                    <% else_if $canPreviewFolder %>
                        <small><%t SilverStripe\\SelectUpload\\SelectUploadField.ADDTO 'Add to' %> <strong>$DisplayFolderName</strong></small>
                    <% else_if $multiple %>
                        <small><%t SilverStripe\\SelectUpload\\SelectUploadField.ATTACHFILES 'Attach files' %></small>
                    <% else %>
                        <small><%t SilverStripe\\SelectUpload\\SelectUploadField.ATTACHFILE 'Attach a file' %></small>
                    <% end_if %>
                </label>
                <% if $CanSelectFolder %>
                    <% with FolderSelector %>
                        <div class="select-folder-container hide">
                            $Field
                        </div>
                    <% end_with %>
                <% end_if %>
                <% if $UploadEnabled %>
                    <div class="uploadfield-holder">
                        <% if $Items %>
                            <div class="entwine-placeholder">
                                <% loop $Items %>
                                    <input type="hidden" name="$Up.Name[Files][]" value="$ID.ATT"/>
                                <% end_loop %>
                            </div>
                        <% end_if %>
                    </div>
                    <input $AttributesHTML <% include SilverStripe/Forms/AriaAttributes %> />

                <% else %>
                    <input id="$id" name="{$Name}[Uploads][]" class="$extraClass ss-uploadfield-fromcomputer-fileinput"
                           data-config="$configString" type="hidden"/>
                <% end_if %>
            </div>
        </div>
    <% end_if %>
</div>
