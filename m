Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF4ADE00CE9; Tue, 25 Oct 2016 19:42:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EF66E00CC3
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2016 19:42:30 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga104.jf.intel.com with ESMTP; 25 Oct 2016 19:42:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,548,1473145200"; 
	d="scan'208,217";a="777729531"
Received: from sloi-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.184.176])
	by FMSMGA003.fm.intel.com with ESMTP; 25 Oct 2016 19:42:26 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 26 Oct 2016 15:41:54 +1300
Message-Id: <1477449716-24619-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [layerindex-web][PATCH 1/3] editlayer: allow selecting web interface type
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 26 Oct 2016 02:42:35 -0000

For some repo URLs we can automatically determine the values of all of
the other fields - e.g. for github or git.openembedded.org, and we've
been doing that for a while. However if someone submits a URL for some
other site we don't know what type of interface it uses, and usually
the submitter leaves the fields blank so it falls to the layer index
maintainer to set the values, and then you have to remember what the
correct URL format is which is awkward especially for gitweb.

In order to fix this, add a select field to the form which allows
specifying which type of interface is being used. At the moment only
cgit, gitweb, gitlab and "(custom)" (i.e. the current behaviour) are
supported. This is not a real field but activates javascript code
that sets the other fields and enables/disables the controls.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/static/css/additional.css |   6 ++
 templates/layerindex/editlayer.html  | 117 +++++++++++++++++++++++++++++++----
 2 files changed, 112 insertions(+), 11 deletions(-)

diff --git a/layerindex/static/css/additional.css b/layerindex/static/css/additional.css
index e6cf526..2a27712 100644
--- a/layerindex/static/css/additional.css
+++ b/layerindex/static/css/additional.css
@@ -88,6 +88,12 @@ padding: 8px;
     width: 50%;
 }
 
+.formfield-div {
+    width: 50%;
+    display: inline-block;
+    margin-right: 13px;
+}
+
 .checkboxtd input {
     width: 25px;
 }
diff --git a/templates/layerindex/editlayer.html b/templates/layerindex/editlayer.html
index b7ff5dc..161dcda 100644
--- a/templates/layerindex/editlayer.html
+++ b/templates/layerindex/editlayer.html
@@ -89,6 +89,24 @@
                 </div>
             </div>
             {% endif %}
+            {% if field.name = 'vcs_web_url' %}
+                <div class="control-label">
+                    Web interface type
+                </div>
+                <div class="controls">
+                    <div class="formfield-div">
+                        <select id="idx_vcs_web_type">
+                        <option>(custom)</option>
+                        <option>cgit</option>
+                        <option>gitweb</option>
+                        <option>gitlab</option>
+                        </select>
+                    </div>
+                    <span class="help-inline custom-help">
+                        Type of web interface (helps to auto-determine other URL fields)
+                    </span>
+                </div>
+            {% endif %}
         {% endfor %}
     </div>
     <h3 id="maintainers">Maintainers</h3>
@@ -169,6 +187,7 @@
     }
 
     function AutoWebFields(repoval) {
+        // Auto-determine web interface URLs from repo URL
         if( repoval[repoval.length-1] == '/' )
             repoval = repoval.slice(0, repoval.length-1)
 
@@ -177,12 +196,14 @@
             this.vcs_web_url = 'http://cgit.openembedded.org/cgit.cgi/' + reponame
             this.vcs_web_tree_base_url = 'http://cgit.openembedded.org/cgit.cgi/' + reponame + '/tree/%path%?h=%branch%'
             this.vcs_web_file_base_url = 'http://cgit.openembedded.org/cgit.cgi/' + reponame + '/tree/%path%?h=%branch%'
+            this.vcs_web_type = 'cgit'
         }
         else if( repoval.indexOf('git.yoctoproject.org/') > -1 ) {
             reponame = repoval.replace(/^.*\//, '')
             this.vcs_web_url = 'http://git.yoctoproject.org/cgit/cgit.cgi/' + reponame
             this.vcs_web_tree_base_url = 'http://git.yoctoproject.org/cgit/cgit.cgi/' + reponame + '/tree/%path%?h=%branch%'
             this.vcs_web_file_base_url = 'http://git.yoctoproject.org/cgit/cgit.cgi/' + reponame + '/tree/%path%?h=%branch%'
+            this.vcs_web_type = 'cgit'
         }
         else if( repoval.indexOf('github.com/') > -1 ) {
             reponame = repoval.replace(/^.*github.com\//, '')
@@ -190,13 +211,7 @@
             this.vcs_web_url = 'http://github.com/' + reponame
             this.vcs_web_tree_base_url = 'http://github.com/' + reponame + '/tree/%branch%/'
             this.vcs_web_file_base_url = 'http://github.com/' + reponame + '/blob/%branch%/'
-        }
-        else if( repoval.indexOf('gitorious.org/') > -1 ) {
-            reponame = repoval.replace(/^.*gitorious.org\//, '')
-            reponame = reponame.replace(/.git$/, '')
-            this.vcs_web_url = 'http://gitorious.org/' + reponame
-            this.vcs_web_tree_base_url = 'http://gitorious.org/' + reponame + '/trees/%branch%/'
-            this.vcs_web_file_base_url = 'http://gitorious.org/' + reponame + '/blobs/%branch%/'
+            this.vcs_web_type = '(custom)'
         }
         else if( repoval.indexOf('bitbucket.org/') > -1 ) {
             reponame = repoval.replace(/^.*bitbucket.org\//, '')
@@ -204,14 +219,91 @@
             this.vcs_web_url = 'http://bitbucket.org/' + reponame
             this.vcs_web_tree_base_url = 'http://bitbucket.org/' + reponame + '/src/%branch%/%path%?at=%branch%'
             this.vcs_web_file_base_url = 'http://bitbucket.org/' + reponame + '/src/%branch%/%path%?at=%branch%'
+            this.vcs_web_type = '(custom)'
         }
         else {
             this.vcs_web_url = ''
             this.vcs_web_tree_base_url = ''
             this.vcs_web_file_base_url = ''
+            this.vcs_web_type = '(custom)'
+        }
+    };
+
+    auto_web_url_field = function (e) {
+        // Auto-determine web interface type from URL
+        vcs_web_url = $('#id_vcs_web_url').val()
+        if ( vcs_web_url.indexOf('/cgit.cgi/') > -1 || vcs_web_url.indexOf('/cgit/') > -1 ) {
+            $('#idx_vcs_web_type').val('cgit')
+            auto_web_type_field(e)
+        }
+        else if ( vcs_web_url.indexOf('a=summary') > -1 ) {
+            $('#idx_vcs_web_type').val('gitweb')
+            auto_web_type_field(e)
         }
     }
 
+    auto_web_type_field = function (e) {
+        // Auto-determine web interface tree/file URLs based on type
+        type = $('#idx_vcs_web_type').val()
+        if (type == '(custom)') {
+            readonly = $('#idx_vcs_web_type').prop('disabled')
+            $('#id_vcs_web_tree_base_url').prop('readonly', readonly)
+            $('#id_vcs_web_file_base_url').prop('readonly', readonly)
+        }
+        else {
+            $('#id_vcs_web_tree_base_url').prop('readonly', true)
+            $('#id_vcs_web_file_base_url').prop('readonly', true)
+            vcs_web_url = $('#id_vcs_web_url').val()
+            if (vcs_web_url) {
+                if (vcs_web_url.endsWith('/')) {
+                    vcs_web_url = vcs_web_url.slice(0, -1)
+                }
+                if (type == 'cgit') {
+                    $('#id_vcs_web_tree_base_url').val('readonly', true)
+                    $('#id_vcs_web_file_base_url').prop('readonly', true)
+                    if (e) {
+                        $('#id_vcs_web_tree_base_url').val(vcs_web_url + '/tree/%path%?h=%branch%')
+                        $('#id_vcs_web_file_base_url').val(vcs_web_url + '/tree/%path%?h=%branch%')
+                    }
+                }
+                else if (type == 'gitweb') {
+                    $('#id_vcs_web_tree_base_url').val('readonly', true)
+                    $('#id_vcs_web_file_base_url').prop('readonly', true)
+                    if (e) {
+                        spliturl = vcs_web_url.split('?')
+                        if (spliturl.length > 1) {
+                            params = spliturl[1].split(';')
+                            newparams = []
+                            for (i = 0; i < params.length; i++) {
+                                if (!params[i].startsWith('a=')) {
+                                    newparams.push(params[i])
+                                }
+                            }
+                            newparamsstr = newparams.join(';')
+                            if( newparamsstr ) {
+                                newparamsstr += ';'
+                            }
+                            vcs_web_url = spliturl[0] + '?' + newparamsstr
+                        }
+                        else {
+                            vcs_web_url = spliturl[0] + '?'
+                        }
+                        $('#id_vcs_web_tree_base_url').val(vcs_web_url + 'a=tree;f=%path%;hb=refs/heads/%branch%')
+                        $('#id_vcs_web_file_base_url').val(vcs_web_url + 'a=blob;f=%path%;hb=refs/heads/%branch%')
+                    }
+                }
+                else if (type == 'gitlab') {
+                    $('#id_vcs_web_tree_base_url').val('readonly', true)
+                    $('#id_vcs_web_file_base_url').prop('readonly', true)
+                    if (e) {
+                        $('#id_vcs_web_tree_base_url').val(vcs_web_url + '/tree/%branch%/%path%')
+                        $('#id_vcs_web_file_base_url').val(vcs_web_url + '/blob/%branch%/%path%')
+                    }
+                }
+            }
+        }
+    };
+
     auto_web_fields = function (e) {
         repoval = $('#id_vcs_url').val()
         awf = new AutoWebFields(repoval)
@@ -220,16 +312,17 @@
                 $('#id_vcs_web_url').val(awf.vcs_web_url)
                 $('#id_vcs_web_tree_base_url').val(awf.vcs_web_tree_base_url)
                 $('#id_vcs_web_file_base_url').val(awf.vcs_web_file_base_url)
+                $('#idx_vcs_web_type').val(awf.vcs_web_type)
             }
             $('#id_vcs_web_url').prop('readonly', true);
-            $('#id_vcs_web_tree_base_url').prop('readonly', true);
-            $('#id_vcs_web_file_base_url').prop('readonly', true);
+            $('#idx_vcs_web_type').prop('disabled', true);
         }
         else {
             $('#id_vcs_web_url').prop('readonly', false);
-            $('#id_vcs_web_tree_base_url').prop('readonly', false);
-            $('#id_vcs_web_file_base_url').prop('readonly', false);
+            $('#idx_vcs_web_type').prop('disabled', false);
         }
+
+        auto_web_type_field(e)
     };
 
     split_email = function() {
@@ -280,6 +373,8 @@
         $('#addanothermaintainer').click(expand_maintainer)
 
         $('#id_vcs_url').change(auto_web_fields)
+        $('#id_vcs_web_url').change(auto_web_url_field)
+        $('#idx_vcs_web_type').change(auto_web_type_field)
         auto_web_fields(null)
 
         firstfield = $("#edit_layer_form input:text, #edit_layer_form textarea").first();
-- 
2.5.5


