Return-Path: <jose.perez.carranza@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9C0FE00BDA; Tue, 13 Jun 2017 08:45:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AA08E00B99
	for <yocto@yoctoproject.org>; Tue, 13 Jun 2017 08:45:19 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Jun 2017 08:45:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,338,1493708400"; d="scan'208";a="980308276"
Received: from jgperezc-mobl1.zpn.intel.com ([10.219.4.33])
	by orsmga003.jf.intel.com with ESMTP; 13 Jun 2017 08:45:18 -0700
From: jose.perez.carranza@linux.intel.com
To: yocto@yoctoproject.org
Date: Tue, 13 Jun 2017 10:47:27 -0500
Message-Id: <20170613154728.19002-3-jose.perez.carranza@linux.intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170613154728.19002-1-jose.perez.carranza@linux.intel.com>
References: <20170613154728.19002-1-jose.perez.carranza@linux.intel.com>
Subject: [qa-tools][PATCH 3/4] testopia_update/utils: Add utils directory
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
X-List-Received-Date: Tue, 13 Jun 2017 15:45:20 -0000

From: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>

Add utils directory to be used as the repository for different utilities

-wikimaker.py : scripts that creates the wiki report data saves it to
the data inside a file to be copied on the already created wiki page

Signed-off-by: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>
---
 testopia_update/utils/__init__.py  |   0
 testopia_update/utils/wikimaker.py | 203 +++++++++++++++++++++++++++++++++++++
 2 files changed, 203 insertions(+)
 create mode 100644 testopia_update/utils/__init__.py
 create mode 100644 testopia_update/utils/wikimaker.py

diff --git a/testopia_update/utils/__init__.py b/testopia_update/utils/__init__.py
new file mode 100644
index 0000000..e69de29
diff --git a/testopia_update/utils/wikimaker.py b/testopia_update/utils/wikimaker.py
new file mode 100644
index 0000000..96fdfc0
--- /dev/null
+++ b/testopia_update/utils/wikimaker.py
@@ -0,0 +1,203 @@
+#!/usr/bin/env python
+
+def wiki_define_varaibles(file_name, wikivars):
+    write_vars = '{|\n' + wikivars + '|}\n'
+    with open(file_name, "w+") as f:
+        f.write(write_vars)
+
+
+def wiki_testing_data(file_name):
+    test_data = '\n=Testing data= \n <nowiki> \n Test type: \n Branch: \n' + \
+    ' Build name: \n poky commit: \n Autobuilder images repository: \n' + \
+    ' Distributions tested: \n </nowiki> \n'
+    with open(file_name, 'a') as f:
+        f.write(test_data)
+
+def wiki_test_summary(file_name, list_vars):
+    vars_wikistyle = ''
+
+    #Create the list of variables on wiki style
+    for v in list_vars:
+        vars_wikistyle += ''.join(['{{#var:', v, '}}, '])
+
+    #Delete the last ',' of the list of varaibles
+    vars_wikistyle = vars_wikistyle[:-2]
+
+    #Create the summary table
+    summary_table = '{|\n|{{#testopia:\n|run_id=0, %s\n'  % vars_wikistyle + \
+                            '||report_id=concatstats}}\n'
+
+    #Create bug status graphics
+    bugs_graphics = '<br>\n' + \
+                '{|\n|{{#testopia:\n|run_id=0, %s\n  '  % vars_wikistyle + \
+                '|chart=bstatus\n  |report_id=bugs\n  |charttype=bar\n' + \
+                '  |sortable=true\n  |nudechart=true\n  |chartpos=top\n}}\n'
+
+    tc_report = '<br>\n' + \
+                '{|\n|{{#testopia:\n|run_id=0, %s\n'  % vars_wikistyle + \
+                '|charttype=bar\n|report_id=status}}\n|}'
+
+    with open(file_name, 'a') as f:
+        f.write((summary_table + '\n' + bugs_graphics + '\n' + tc_report))
+
+def wiki_bugs_found_QA(file_name):
+    bugs_new = '\n= Bugs Found during QA Test =\n== <span style="color:' + \
+             'blue; "> New issues Found during QA Test & Community </span>==' + \
+             '\n{{#bugzilla:\n   |columns=id,summary,priority,to,qa,' + \
+             'milestone,status,resolution,cf_regression_type,created\n' + \
+             '   |noresultsmessage="None"\n   |sort=ID\n   |group=product\n' + \
+             '   |id=0000 \n}}\n<br>\n\n'
+
+    bugs_hm_not_new = '== <span style="color: red; "> High and M+ issues' + \
+                      'Found during QA Test (NOT NEW) </span>==\n{{#bugzilla' + \
+                      ':\n   |columns=id,summary,priority,to,qa,milestone,' + \
+                      'status,resolution,cf_regression_type,created\n   ' + \
+                      '|noresultsmessage="None"\n   |sort=priority\n   ' + \
+                      '|group=product\n   |id=0000 \n}}<br>\n\n'
+
+    other_bugs = '== Other Bugs found during QA Test (NOT NEW) ==\n' + \
+                 '{{#bugzilla:\n   |columns=id,summary,priority,to,qa,' + \
+                 'milestone,status,resolution,cf_regression_type,created\n' + \
+                 '   |noresultsmessage="None"\n   |sort=priority\n'+ \
+                 '   |group=cf_regression_type,product\n   |id=0000 \n}}\n'
+
+
+    with open(file_name, 'a') as f:
+        f.write((bugs_new + bugs_hm_not_new + other_bugs))
+
+def wiki_community_bugs(file_name):
+    open_bugs = '\n= Current community Open Bugs - Medium+/High =\n' + \
+                'Overview of the open bugs opened against current milestone' + \
+                'or release which are Medium+ or High and are not targeted' + \
+                'for the next milestones\n\n{{#bugzilla:\n    |columns=id,' + \
+                'priority,summary,to,qa,milestone,status,cf_regression_type' + \
+                ',created\n    |noresultsmessage="None"\n    |priority=high,' + \
+                'Medium%2B\n    |severity=!enhancement\n    ' + \
+                '|sort=cf_regression_type\n    |group=product\n    ' + \
+                '|total=summary\n    |status=!(RESOLVED,VERIFIED)\n    ' + \
+                '|milestone=2.4\n}}\n\n== Bug Trend ==\nAn overview of this' + \
+                'week\'s [[Yocto Bug Trend]] charts can be accessed on the' + \
+                'following [https://wiki.yoctoproject.org/charts/combo.html' + \
+                'page]\n'
+
+    with open(file_name, 'a') as f:
+        f.write(open_bugs)
+
+
+def wiki_perf_tests(file_name):
+    perf_data = '\n= Build Performance Test =\n' + \
+                'Detailed description on how performance test is run can' + \
+                'be found on the [[Performance Test]] wiki.\nThe below' + \
+                'charts are displaying the build performance trend for 2.1' + \
+                'M4 to 2.3 M3. Performance execution has had 2 stages, one ' + \
+                'executed from 1.6 to 2.1 in RO and executed from 1.6 to 2.1' + \
+                'in RO and  are differences between HW used in both' + \
+                'locations, hence the numbers are different.\n\n' + \
+                '* [https://wiki.yoctoproject.org/charts/perf_milestone/' + \
+                'performance_test.html RO Charts]\n* [https://wiki.' + \
+                'yoctoproject.org/charts/perf_milestone_GDC/performance_test' + \
+                '.html GDC Charts]\n\nBelow chars are showing the latest' + \
+                'performance results taken from the current milestone.\n\n' + \
+                '== Performance Charts==\n\nFor Bitbake core-image-sato with' + \
+                'rm_work\n\n[[File:Ww19-2k17 - rmwork.png | 1280px | ' + \
+                'link=https://wiki.yoctoproject.org/charts/perf_milestone_' + \
+                'GDC/bitbake-core-image-sato-rmwork.html ]]\n\nBuilding the ' + \
+                'Virtual kernel\n\n[[File:Ww19-2k17 - kernel.png | 1280px | ' + \
+                'link=https://wiki.yoctoproject.org/charts/perf_milestone_' + \
+                'GDC/bitbake-virtual-kernel.html]]\n\nBuilding the rootfs\n' + \
+                '\n[[File:Ww19-2k17_-_rootfs.png | 1280px | link=https://' + \
+                'wiki.yoctoproject.org/charts/perf_milestone_GDC/bitbake-' + \
+                'core-image-sato-rootfs.html]]\n\nBuilding core-image-sato' + \
+                '\n\n[[File:Ww19-2k17_-_sato.png | 1280px | link=https://' + \
+                'wiki.yoctoproject.org/charts/perf_milestone_GDC/bitbake-' + \
+                'core-image-sato.html]]\n\neSDK Deploy time\n\n[[File:Ww19' + \
+                '-2k17_-_esdk.png | 1280px | link=https://wiki.yoctoproject' + \
+                '.org/charts/perf_milestone_GDC/bitbake-eSDK.html]]\n'
+
+    with open(file_name, 'a') as f:
+        f.write(perf_data)
+
+def wic_ptest_results(file_name):
+    perf_data = '\n=pTest for genericx86-64 on NUC=\n\n== open bugs ==\n\n' + \
+                '{{#bugzilla:\n    |columns=id,summary,priority,to,qa,' + \
+                'milestone,status,resolution,cf_regression_type,created\n' + \
+                '    |noresultsmessage="None"\n    |sort=status\n    ' + \
+                '|group=product\n    |id=0000\n}}\n\n== results ==\n\n' + \
+                '{{:Ptest 381897c64069ea43d595380a3ae913bcc79cf7e1}}\n'
+
+    with open(file_name, 'a') as f:
+        f.write(perf_data)
+
+
+def detailed_status(var):
+    status_data = '\nStatus\n{{#testopia:\n|run_id={{#var:%s}}' % var + \
+                 '\n|showhide=true\n|hidden=true\n|report_id=status\n' + \
+                 '|charttype=pie3}}\n'
+
+    return status_data
+
+def detailed_bugs(var):
+    bugs_data = '\nBugs\n{{#testopia:\n|run_id={{#var:%s}}' % var + \
+                '\n|report_id=bugs\n|chart=bstatus,prio,severity\n' + \
+                '|charttype=pie,pie,pie\n|showhide=true\n|hidden=true}}\n'
+
+    return bugs_data
+
+def detailed_agenda(var):
+    agenda_data = '\nAgenda\n{{#testopia:\n|run_id={{#var:%s}}' % var + \
+                  '\n|report_id=agenda\n|showhide=true\n|hidden=true\n' + \
+                  '|reportoptions=withdependency=false}}\n'
+
+    return agenda_data
+
+
+def wiki_detailed_report(file_name, vars_list):
+    details = '=Detailed Report=\n'
+    comp_list = []
+    for var in vars_list:
+        comp = var.partition('_')[2].partition('_')[0]
+        if not comp in comp_list:
+            comp_list.append(comp)
+            details += '\n==%s==' % comp
+            details += detailed_status(var) + \
+                       detailed_bugs(var) + detailed_agenda(var)
+        else:
+            details += detailed_status(var) + detailed_bugs(var) + \
+                       detailed_agenda(var)
+
+    with open(file_name, 'a') as f:
+        f.write(details)
+
+
+def create_wiki(wikivars, vars_list):
+
+    file_name = 'wiki.page'
+
+    #Add section of varaibles definition
+    wiki_define_varaibles(file_name, wikivars)
+
+    #Start adding sections to the wiki page
+    #1- Testing Data
+    wiki_testing_data(file_name)
+
+    #2- Test Run Summary Report
+    wiki_test_summary(file_name, vars_list)
+
+    #3 Bugs Found during QA Test
+    wiki_bugs_found_QA(file_name)
+
+    #4 Current community Open Bugs - Medium+/High
+    wiki_community_bugs(file_name)
+
+    #5 Build Performance Test
+    wiki_perf_tests(file_name)
+
+    #6 pTest for genericx86-64 on NUC
+    wic_ptest_results(file_name)
+
+    #7 Detailed Report
+    wiki_detailed_report(file_name, vars_list)
+
+    #8 Upload wiki
+    #TODO a funtion that can access to the wiki DB upload the results currently
+    #saved on wiki_page file.
-- 
2.11.0


