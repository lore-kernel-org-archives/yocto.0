Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 674EBE00B58; Tue, 14 Aug 2018 06:32:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD125E00B6C
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 06:32:40 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Aug 2018 06:32:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,238,1531810800"; d="scan'208";a="66079748"
Received: from pciunel-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
	([10.252.52.11])
	by orsmga006.jf.intel.com with ESMTP; 14 Aug 2018 06:32:39 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 14 Aug 2018 15:32:18 +0200
Message-Id: <b3e9cb05d22e0961341d87dce3128eeb273544f6.1534253407.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1534253406.git.paul.eggleton@linux.intel.com>
References: <cover.1534253406.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 5/5] Include errors/warnings in main log in error/warning counts for updates
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
X-List-Received-Date: Tue, 14 Aug 2018 13:32:50 -0000

When showing the error/warning counts for update records we need to
include any errors/warnings that are shown only in the main update log,
so we need to adjust how these are collected. Use a function rather than
pure aggregation to give a bit more control, and a {% with ... %} block
in the template to avoid the functions being called more than necessary.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/models.py                 | 8 ++++++++
 layerindex/views.py                  | 2 +-
 templates/layerindex/updatelist.html | 6 ++++--
 3 files changed, 13 insertions(+), 3 deletions(-)

diff --git a/layerindex/models.py b/layerindex/models.py
index 0dc4bd7c..379fdb6b 100644
--- a/layerindex/models.py
+++ b/layerindex/models.py
@@ -98,6 +98,14 @@ class Update(models.Model):
     task_id = models.CharField(max_length=50, blank=True, db_index=True)
     triggered_by = models.ForeignKey(User, blank=True, null=True, on_delete=models.SET_NULL)
 
+    def error_count(self):
+        sums = self.layerupdate_set.aggregate(errors=models.Sum('errors'))
+        return (sums['errors'] or 0) + self.log.count('ERROR:')
+
+    def warning_count(self):
+        sums = self.layerupdate_set.aggregate(warnings=models.Sum('warnings'))
+        return (sums['warnings'] or 0) + self.log.count('WARNING:')
+
     def __str__(self):
         return '%s' % self.started
 
diff --git a/layerindex/views.py b/layerindex/views.py
index 69165c48..8adebed9 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -708,7 +708,7 @@ class UpdateListView(ListView):
     paginate_by = 50
 
     def get_queryset(self):
-        return Update.objects.all().order_by('-started').annotate(errors=Sum('layerupdate__errors'), warnings=Sum('layerupdate__warnings'))
+        return Update.objects.all().order_by('-started')
 
 
 class UpdateDetailView(DetailView):
diff --git a/templates/layerindex/updatelist.html b/templates/layerindex/updatelist.html
index d58d175b..5a207ce8 100644
--- a/templates/layerindex/updatelist.html
+++ b/templates/layerindex/updatelist.html
@@ -35,12 +35,14 @@
 
             <tbody>
                 {% for update in updates %}
+                {% with error_count=update.error_count warning_count=update.warning_count %}
                 <tr>
                     <td><a href="{% url 'update' update.id %}">{{ update.started }}{% if update.reload %} (reload){% endif %}</a></td>
                     <td>{% if update.finished %}{{ update.started|timesince2:update.finished }}{% else %}(in progress){% endif %}</td>
-                    <td>{% if update.errors %}<span class="badge badge-important">{{ update.errors }}</span>{% endif %}</td>
-                    <td>{% if update.warnings %}<span class="badge badge-warning">{{ update.warnings }}</span>{% endif %}</td>
+                    <td>{% if error_count %}<span class="badge badge-important">{{ error_count }}</span>{% endif %}</td>
+                    <td>{% if warning_count %}<span class="badge badge-warning">{{ warning_count }}</span>{% endif %}</td>
                 </tr>
+                {% endwith %}
                 {% endfor %}
 
             </tbody>
-- 
2.17.1


