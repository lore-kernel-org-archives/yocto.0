Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6064E00DD9; Sun, 20 Oct 2019 15:50:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08203E00AE6
	for <yocto@yoctoproject.org>; Sun, 20 Oct 2019 15:50:18 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	20 Oct 2019 15:50:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,320,1566889200"; d="scan'208";a="398487196"
Received: from tchoongs-mobl.gar.corp.intel.com (HELO linux.fritz.box)
	([10.255.184.244])
	by fmsmga006.fm.intel.com with ESMTP; 20 Oct 2019 15:50:15 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 21 Oct 2019 11:49:51 +1300
Message-Id: <eac33e6c7907234262bc2e0bd78bf34148582625.1571611698.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1571611698.git.paul.eggleton@linux.intel.com>
References: <cover.1571611698.git.paul.eggleton@linux.intel.com>
MIME-Version: 1.0
Subject: [layerindex-web][PATCH 2/3] Add branch comparison function
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
X-List-Received-Date: Sun, 20 Oct 2019 22:50:23 -0000
Content-Transfer-Encoding: 8bit

Add the ability to compare available recipes and their versions between
two branches for a selection of layers (default is just OE-Core). This
was mainly intended to help us with the Yocto Project release notes
preparation (hence the "Plain text" button at the bottom of the page)
but is also useful in its own right.

Note: for readability, SRCREVs are only shown when PV has not changed.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/forms.py                          |  19 ++
 layerindex/urls.py                           |  12 +-
 layerindex/views.py                          | 113 +++++++++-
 templates/base.html                          |   1 +
 templates/layerindex/branchcompare.html      | 214 +++++++++++++++++++
 templates/layerindex/branchcompare_plain.txt |  17 ++
 6 files changed, 374 insertions(+), 2 deletions(-)
 create mode 100644 templates/layerindex/branchcompare.html
 create mode 100644 templates/layerindex/branchcompare_plain.txt

diff --git a/layerindex/forms.py b/layerindex/forms.py
index 13ba3aad..51583c60 100644
--- a/layerindex/forms.py
+++ b/layerindex/forms.py
@@ -354,3 +354,22 @@ class PatchDispositionForm(StyledModelForm):
         }
 
 PatchDispositionFormSet = modelformset_factory(PatchDisposition, form=PatchDispositionForm, extra=0)
+
+
+class BranchComparisonForm(StyledForm):
+    from_branch = forms.ModelChoiceField(label='From', queryset=Branch.objects.none())
+    to_branch = forms.ModelChoiceField(label='To', queryset=Branch.objects.none())
+    layers = forms.CharField(widget=forms.HiddenInput())
+
+    def __init__(self, *args, request=None, **kwargs):
+        super(BranchComparisonForm, self).__init__(*args, **kwargs)
+        qs = Branch.objects.filter(comparison=False, hidden=False).order_by('sort_priority', 'name')
+        self.fields['from_branch'].queryset = qs
+        self.fields['to_branch'].queryset = qs
+        self.request = request
+
+    def clean(self):
+        cleaned_data = super(BranchComparisonForm, self).clean()
+        if cleaned_data['from_branch'] == cleaned_data['to_branch']:
+            raise forms.ValidationError({'to_branch': 'From and to branches cannot be the same'})
+        return cleaned_data
diff --git a/layerindex/urls.py b/layerindex/urls.py
index 89e70a22..abeb0928 100644
--- a/layerindex/urls.py
+++ b/layerindex/urls.py
@@ -14,7 +14,8 @@ from layerindex.views import LayerListView, LayerReviewListView, LayerReviewDeta
     bulk_change_edit_view, bulk_change_patch_view, BulkChangeDeleteView, RecipeDetailView, RedirectParamsView, \
     ClassicRecipeSearchView, ClassicRecipeDetailView, ClassicRecipeStatsView, LayerUpdateDetailView, UpdateListView, \
     UpdateDetailView, StatsView, publish_view, LayerCheckListView, BBClassCheckListView, TaskStatusView, \
-    ComparisonRecipeSelectView, ComparisonRecipeSelectDetailView, task_log_view, task_stop_view, email_test_view
+    ComparisonRecipeSelectView, ComparisonRecipeSelectDetailView, task_log_view, task_stop_view, email_test_view, \
+    BranchCompareView
 from layerindex.models import LayerItem, Recipe, RecipeChangeset
 from rest_framework import routers
 from . import restviews
@@ -185,6 +186,15 @@ urlpatterns = [
     url(r'^stoptask/(?P<task_id>[-\w]+)/$',
         task_stop_view,
         name='task_stop'),
+    url(r'^branch_comparison/$',
+        BranchCompareView.as_view(
+            template_name='layerindex/branchcompare.html'),
+        name='branch_comparison'),
+    url(r'^branch_comparison_plain/$',
+        BranchCompareView.as_view(
+            content_type='text/plain',
+            template_name='layerindex/branchcompare_plain.txt'),
+        name='branch_comparison_plain'),
     url(r'^ajax/layerchecklist/(?P<branch>[-.\w]+)/$',
         LayerCheckListView.as_view(
             template_name='layerindex/layerchecklist.html'),
diff --git a/layerindex/views.py b/layerindex/views.py
index 2dacf516..12054fe7 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -47,7 +47,8 @@ from layerindex.forms import (AdvancedRecipeSearchForm, BulkChangeEditFormSet,
                               ComparisonRecipeSelectForm, EditLayerForm,
                               EditNoteForm, EditProfileForm,
                               LayerMaintainerFormSet, RecipeChangesetForm,
-                              PatchDispositionForm, PatchDispositionFormSet)
+                              PatchDispositionForm, PatchDispositionFormSet,
+                              BranchComparisonForm)
 from layerindex.models import (BBAppend, BBClass, Branch, ClassicRecipe,
                                Distro, DynamicBuildDep, IncFile, LayerBranch,
                                LayerDependency, LayerItem, LayerMaintainer,
@@ -1705,3 +1706,113 @@ class ComparisonRecipeSelectDetailView(DetailView):
             messages.error(request, 'Failed to save changes: %s' % form.errors)
 
         return self.get(request, *args, **kwargs)
+
+
+class BranchCompareView(FormView):
+    form_class = BranchComparisonForm
+
+    def get_recipes(self, from_branch, to_branch, layer_ids):
+        from distutils.version import LooseVersion
+        class BranchComparisonResult:
+            def __init__(self, pn, short_desc):
+                self.pn = pn
+                self.short_desc = short_desc
+                self.from_versions = []
+                self.to_versions = []
+                self.id = None
+            def pv_changed(self):
+                from_pvs = sorted([x.pv for x in self.from_versions])
+                to_pvs = sorted([x.pv for x in self.to_versions])
+                return (from_pvs != to_pvs)
+        class BranchComparisonVersionResult:
+            def __init__(self, id, pv, srcrev):
+                self.id = id
+                self.pv = pv
+                self.srcrev = srcrev
+            def version_expr(self):
+                return (self.pv, self.srcrev)
+
+        def map_name(recipe):
+            pn = recipe.pn
+            if pn.startswith('gcc-source-'):
+                pn = pn.replace('-%s' % recipe.pv, '')
+            elif pn.endswith(('-i586', '-i686')):
+                pn = pn[:-5]
+            elif pn.endswith('-x86_64-oesdk-linux'):
+                pn = pn[:-19]
+            return pn
+
+        from_recipes = Recipe.objects.filter(layerbranch__branch=from_branch)
+        to_recipes = Recipe.objects.filter(layerbranch__branch=to_branch)
+        if layer_ids:
+            from_recipes = from_recipes.filter(layerbranch__layer__in=layer_ids)
+            to_recipes = to_recipes.filter(layerbranch__layer__in=layer_ids)
+        recipes = {}
+        for recipe in from_recipes:
+            pn = map_name(recipe)
+            res = recipes.get(pn, None)
+            if not res:
+                res = BranchComparisonResult(pn, recipe.short_desc)
+                recipes[pn] = res
+            res.from_versions.append(BranchComparisonVersionResult(id=recipe.id, pv=recipe.pv, srcrev=recipe.srcrev))
+        for recipe in to_recipes:
+            pn = map_name(recipe)
+            res = recipes.get(pn, None)
+            if not res:
+                res = BranchComparisonResult(pn, recipe.short_desc)
+                recipes[pn] = res
+            res.to_versions.append(BranchComparisonVersionResult(id=recipe.id, pv=recipe.pv, srcrev=recipe.srcrev))
+
+        added = []
+        changed = []
+        removed = []
+        for _, recipe in sorted(recipes.items(), key=lambda item: item[0]):
+            recipe.from_versions = sorted(recipe.from_versions, key=lambda item: LooseVersion(item.pv))
+            from_version_exprs = [x.version_expr() for x in recipe.from_versions]
+            recipe.to_versions = sorted(recipe.to_versions, key=lambda item: LooseVersion(item.pv))
+            to_version_exprs = [x.version_expr() for x in recipe.to_versions]
+            if not from_version_exprs:
+                added.append(recipe)
+            elif not to_version_exprs:
+                recipe.id = recipe.from_versions[-1].id
+                removed.append(recipe)
+            elif from_version_exprs != to_version_exprs:
+                changed.append(recipe)
+        return added, changed, removed
+
+    def form_valid(self, form):
+        return HttpResponseRedirect(reverse_lazy('branch_comparison', args=(form.cleaned_data['from_branch'].name, form.cleaned_data['to_branch'].name)))
+
+    def get_initial(self):
+        initial = super(BranchCompareView, self).get_initial()
+        from_branch_id = self.request.GET.get('from_branch', None)
+        if from_branch_id is not None:
+            initial['from_branch'] = get_object_or_404(Branch, id=from_branch_id)
+        to_branch_id = self.request.GET.get('to_branch', None)
+        if to_branch_id is not None:
+            initial['to_branch'] = get_object_or_404(Branch, id=to_branch_id)
+        initial['layers'] = self.request.GET.get('layers', str(LayerItem.objects.get(name=settings.CORE_LAYER_NAME).id))
+        return initial
+
+    def get_context_data(self, **kwargs):
+        context = super(BranchCompareView, self).get_context_data(**kwargs)
+        from_branch_id = self.request.GET.get('from_branch', None)
+        to_branch_id = self.request.GET.get('to_branch', None)
+
+        layer_ids = self.request.GET.get('layers', self.request.GET.get('layers', str(LayerItem.objects.get(name=settings.CORE_LAYER_NAME).id)))
+        from_branch = None
+        if from_branch_id is not None:
+            from_branch = get_object_or_404(Branch, id=from_branch_id)
+        context['from_branch'] = from_branch
+        to_branch = None
+        if from_branch_id is not None:
+            to_branch = get_object_or_404(Branch, id=to_branch_id)
+        context['to_branch'] = to_branch
+        if from_branch and to_branch:
+            context['added'], context['changed'], context['removed'] = self.get_recipes(from_branch, to_branch, layer_ids)
+        context['this_url_name'] = resolve(self.request.path_info).url_name
+        context['layers'] = LayerItem.objects.filter(status__in=['P', 'X']).order_by('name')
+        context['showlayers'] = layer_ids
+
+        return context
+
diff --git a/templates/base.html b/templates/base.html
index ae1ad01c..126784d1 100644
--- a/templates/base.html
+++ b/templates/base.html
@@ -87,6 +87,7 @@
                             <li><a href="{% url 'duplicates' 'master' %}">Duplicates</a></li>
                             <li><a href="{% url 'update_list' %}">Updates</a></li>
                             <li><a href="{% url 'stats' %}">Statistics</a></li>
+                            <li><a href="{% url 'branch_comparison' %}">Branch Comparison</a></li>
                             {% if rrs_enabled %}
                             <li><a href="{% url 'rrs_frontpage' %}">Recipe Maintenance</a></li>
                             {% endif %}
diff --git a/templates/layerindex/branchcompare.html b/templates/layerindex/branchcompare.html
new file mode 100644
index 00000000..56b23109
--- /dev/null
+++ b/templates/layerindex/branchcompare.html
@@ -0,0 +1,214 @@
+{% extends "base.html" %}
+{% load i18n %}
+{% load static %}
+
+{% comment %}
+
+  layerindex-web - branch comparison page template
+
+  Copyright (C) 2019 Intel Corporation
+  Licensed under the MIT license, see COPYING.MIT for details
+
+{% endcomment %}
+
+
+<!--
+{% block title_append %} - branch comparison{% endblock %}
+-->
+
+{% block content %}
+{% autoescape on %}
+
+        <div class="row">
+            <div class="col-md-12">
+
+    <div class="pull-right">
+        <form class="form-inline" method="GET">
+            {{ form }}
+
+            <div id="layerDialog" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="layerDialogLabel">
+                <div class="modal-dialog" role="document">
+                    <div class="modal-content">
+                        <div class="modal-header">
+                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
+                            <h3 id="layerDialogLabel">Select layers to include</h3>
+                        </div>
+                            <div class="modal-body">
+                                <div class="form-group has-feedback has-clear">
+                                    <input type="text" class="form-control" id="layersearchtext" placeholder="search layers">
+                                    <a class="glyphicon glyphicon-remove-sign form-control-feedback form-control-clear" id="layersearchclear" style="pointer-events: auto; text-decoration: none;cursor: pointer;"></a>
+                                </div>
+                                <div class="scrolling">
+                                    <table class="layerstable"><tbody>
+                                        {% for layer in layers %}
+                                            <tr>
+                                                <td class="checkboxtd"><input
+                                                    type="checkbox"
+                                                    class="filterlayercheckbox"
+                                                    name="l"
+                                                    value="{{ layer.id }}" id="id_layercheckbox_{{layer.id}}"
+                                                    {% if showlayers and layer.id in showlayers %}
+                                                        checked
+                                                    {% endif %}
+                                                    />
+                                                </td>
+                                                <td><label for="id_layercheckbox_{{layer.id}}">{{ layer.name }}</label></td>
+                                            </tr>
+                                        {% endfor %}
+                                    </tbody></table>
+                                </div>
+                                <div class="buttonblock">
+                                <button type="button" class="btn btn-default buttonblock-btn" id="id_select_none">Clear selections</button>
+                                </div>
+                            </div>
+                            <div class="modal-footer">
+                                <button type="button" class="btn btn-primary" id="id_layerdialog_ok" data-dismiss="modal">Filter</button>
+                                <button type="button" class="btn btn-default" id="id_cancel" data-dismiss="modal">Cancel</button>
+                            </div>
+                    </div><!-- /.modal-content -->
+                </div><!-- /.modal-dialog -->
+            </div>
+
+            <a href="#layerDialog" role="button" id="id_select_layers" class="btn btn-default nav-spacer" data-toggle="modal">Filter layers <span class="badge badge-success" id="id_layers_count">{{ showlayers|length }}</span></a>
+
+            <button type="submit" class="btn btn-primary">Show</button>
+        </form>
+    </div>
+
+                <h2>Branch recipe comparison</h2>
+{% if added or changed or removed %}
+                <h3>Added</h3>
+                <table class="table table-striped table-bordered recipestable">
+                    <thead>
+                        <tr>
+                            <th>Recipe</th>
+                            <th>Description</th>
+                            <th>Version - {{ to_branch }}</th>
+                        </tr>
+                    </thead>
+
+                    <tbody>
+                        {% for recipe in added %}
+                            <tr>
+                                <td class="success">{{ recipe.pn }}</td>
+                                <td class="success">{{ recipe.short_desc }}</td>
+                                <td class="success">{% for rv in recipe.to_versions %}<a href="{% url 'recipe' rv.id %}">{{ rv.pv }}{% if not forloop.last %}, {% endif %}</a>{% endfor %}</td>
+                            </tr>
+                        {% endfor %}
+                    </tbody>
+                </table>
+
+                <h3>Changed</h3>
+                <table class="table table-striped table-bordered recipestable">
+                    <thead>
+                        <tr>
+                            <th>Recipe</th>
+                            <th>Description</th>
+                            <th>Version - {{ from_branch }}</th>
+                            <th>Version - {{ to_branch }}</th>
+                        </tr>
+                    </thead>
+
+                    <tbody>
+                        {% for recipe in changed %}
+                            {% with pv_changed=recipe.pv_changed %}
+                            <tr>
+                                <td>{{ recipe.pn }}</td>
+                                <td>{{ recipe.short_desc }}</td>
+                                <td>{% for rv in recipe.from_versions %}<a href="{% url 'recipe' rv.id %}">{{ rv.pv }}{% if rv.srcrev and not pv_changed %} ({{ rv.srcrev|truncatechars:13 }}){% endif %}{% if not forloop.last %}, {% endif %}</a>{% endfor %}</td>
+                                <td>{% for rv in recipe.to_versions %}<a href="{% url 'recipe' rv.id %}">{{ rv.pv }}{% if rv.srcrev and not pv_changed %} ({{ rv.srcrev|truncatechars:13 }}){% endif %}{% if not forloop.last %}, {% endif %}</a>{% endfor %}</td>
+                            </tr>
+                            {% endwith %}
+                        {% endfor %}
+                    </tbody>
+                </table>
+
+                <h3>Removed</h3>
+                <table class="table table-striped table-bordered recipestable">
+                    <thead>
+                        <tr>
+                            <th>Recipe</th>
+                            <th>Description</th>
+                        </tr>
+                    </thead>
+
+                    <tbody>
+                        {% for recipe in removed %}
+                            <tr>
+                                <td class="error"><a href="{% url 'recipe' recipe.id %}">{{ recipe.pn }}</a></td>
+                                <td class="error">{{ recipe.short_desc }}</td>
+                            </tr>
+                        {% endfor %}
+                    </tbody>
+                </table>
+{% elif from_branch and to_branch %}
+    <p>No matching recipes in database.</p>
+{% else %}
+    <p>Select some parameters above to begin comparison.</p>
+{% endif %}
+            </div>
+        </div>
+
+    <span class="pull-right">
+    <a class="btn btn-default" href="{% url 'branch_comparison_plain' %}?{{ request.GET.urlencode }}"><i class="glyphicon glyphicon-file"></i> Plain text</a>
+    </span>
+
+
+{% endautoescape %}
+
+{% endblock %}
+
+
+{% block scripts %}
+<script>
+    $(document).ready(function() {
+        firstfield = $("#filter-form input:text").first()
+        if( ! firstfield.val() )
+            firstfield.focus()
+    });
+    $('#id_select_none').click(function (e) {
+        $('.layerstable').find('tr:visible').find('.filterlayercheckbox').prop('checked', false);
+    });
+
+    function clearLayerSearch() {
+        $("#layersearchtext").val('');
+        $(".layerstable > tbody > tr").show();
+    }
+
+    update_selected_layer_display = function() {
+        //layernames = [];
+        layerids = [];
+        $('.filterlayercheckbox:checked').each(function() {
+            //layernames.push($("label[for="+$(this).attr('id')+"]").html());
+            layerids.push($(this).attr('value'))
+        });
+        $('#id_layers').val(layerids)
+        $('#id_layers_count').html(layerids.length)
+    }
+    select_layer_checkboxes = function() {
+        $('.filterlayercheckbox').prop('checked', false);
+        selectedlayers = $('#id_layers').val().split(',');
+        for(i in selectedlayers) {
+            $('#id_layercheckbox_' + selectedlayers[i]).prop('checked', true);
+        }
+    }
+
+    $('#id_layerdialog_ok').click(function (e) {
+        update_selected_layer_display()
+    });
+    $("#layersearchtext").on("input", function() {
+        var value = $(this).val().toLowerCase();
+        $(".layerstable > tbody > tr").filter(function() {
+            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
+        });
+    });
+    $("#layersearchclear").click(function(){
+        clearLayerSearch();
+        $("#layersearchtext").focus();
+    });
+    $('#id_select_layers').click(function (e) {
+        clearLayerSearch();
+        select_layer_checkboxes();
+    })
+</script>
+{% endblock %}
diff --git a/templates/layerindex/branchcompare_plain.txt b/templates/layerindex/branchcompare_plain.txt
new file mode 100644
index 00000000..91bfe192
--- /dev/null
+++ b/templates/layerindex/branchcompare_plain.txt
@@ -0,0 +1,17 @@
+From {{ from_branch }} to {{ to_branch }}
+
+
+Added
+-----
+{% for recipe in added %}{{ recipe.pn }} {% for rv in recipe.to_versions %}{{ rv.pv }}{% if not forloop.last %}, {% endif %}{% endfor %}
+{% endfor %}
+
+Changed
+-------
+{% for recipe in changed %}{% with pv_changed=recipe.pv_changed %}{{ recipe.pn }} {% for rv in recipe.from_versions %}{{ rv.pv }}{% if rv.srcrev and not pv_changed %} ({{ rv.srcrev|truncatechars:13 }}){% endif %}{% if not forloop.last %}, {% endif %}{% endfor %} -> {% for rv in recipe.to_versions %}{{ rv.pv }}{% if rv.srcrev and not pv_changed %} ({{ rv.srcrev|truncatechars:13 }}){% endif %}{% if not forloop.last %}, {% endif %}{% endfor %}
+{% endwith %}{% endfor %}
+
+Removed
+-------
+{% for recipe in removed %}{{ recipe.pn }}
+{% endfor %}
-- 
2.20.1


