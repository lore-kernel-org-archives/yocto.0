Return-Path: <jose.perez.carranza@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 559CDE00CB6; Mon,  2 Oct 2017 13:49:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3293E00C65
	for <yocto@yoctoproject.org>; Mon,  2 Oct 2017 13:49:06 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Oct 2017 13:49:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,471,1500966000"; d="scan'208";a="158545569"
Received: from jgperezc-mobl1.zpn.intel.com ([10.219.4.33])
	by fmsmga006.fm.intel.com with ESMTP; 02 Oct 2017 13:49:05 -0700
From: jose.perez.carranza@linux.intel.com
To: yocto@yoctoproject.org
Date: Mon,  2 Oct 2017 15:52:27 -0500
Message-Id: <20171002205227.17058-1-jose.perez.carranza@linux.intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [qa-tools][PATCH] scripts: Add ptest-parser to create reports for pTest executions
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
X-List-Received-Date: Mon, 02 Oct 2017 20:49:08 -0000

From: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>

Add ptest-parser.py scrip that creates a file with the report of pTest
execution compared with the previous results provided, the data stored
on the file is in wikimedia format to be copied and pasted on the new
created wiki for pTest results of QA cycle.

Signed-off-by: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>
---
 scripts/ptest-parser.py | 234 ++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 234 insertions(+)
 create mode 100755 scripts/ptest-parser.py

diff --git a/scripts/ptest-parser.py b/scripts/ptest-parser.py
new file mode 100755
index 0000000..a3f20fb
--- /dev/null
+++ b/scripts/ptest-parser.py
@@ -0,0 +1,234 @@
+#!/usr/bin/python3
+
+import sys
+import os.path
+import codecs
+import logging
+import argparse
+
+
+prelog = {}
+currlog = {}
+
+
+def get_args():
+    parser = argparse.ArgumentParser(description="Parse ptest results")
+    requiredNamed = parser.add_argument_group('required arguments')
+    requiredNamed.add_argument('-p', dest="pre_log", required=True, help='prvious log of the pTest result')
+    requiredNamed.add_argument('--pre_commit', dest="pre_commit", required=True, help='commit of the previous log.')
+    requiredNamed.add_argument('--pre_release', dest="pre_release", required=True, help='release of the previous log.')
+    requiredNamed.add_argument('-c', dest="curr_log", required=True, help='current log of pTets results.')
+    requiredNamed.add_argument('--curr_commit', dest="curr_commit", required=True, help='commit of the current log.')
+    requiredNamed.add_argument('--curr_release', dest="curr_release", required=True, help='release of the current log.')
+
+    return parser.parse_args()
+
+
+
+##Check that logs exists
+def check_args():
+    if not os.path.isfile(args.pre_log):
+        logging.error("Cannot find log file %s" % args.pre_log)
+        sys.exit(1)
+    elif not os.path.isfile(args.curr_log):
+        logging.error("Cannot find log file %s" % args.pre_curr)
+
+
+def create_log_dict(argslog):
+    test_id = ""
+    result = ""
+    failures = ""
+    failures_log = []
+    passed = 0
+    failed = 0
+    content_file = codecs.open(argslog, 'r', 'utf-8', errors='ignore')
+    content = content_file.read()
+    content = content.split("\n")
+    res_dict = {}
+    directory = 'failures'
+
+    #create dir to store failures
+    if not os.path.exists(directory):
+        os.makedirs(directory)
+
+    #Parse the logs
+    for i in range (len(content)-1):
+        try:
+            result = content[i].split(":")[0]
+            test_id = content[i].split(":")[1].strip()
+        except:
+            result = None
+        if result:
+            if result in "BEGIN":
+                test_module = test_id
+                test_module = test_module.replace('/usr/lib/', '')
+                test_module = test_module.replace('/ptest', '')
+            elif result in "PASS":
+                passed = passed + 1
+            elif result in "FAIL":
+                failed = failed + 1
+                failures = "{0}:{1}" .format(result,test_id)
+                failures_log.append(failures)
+            elif result in "END":
+                total = passed + failed
+                if total == 0:
+                    passrate = 0
+                else:
+                    passrate = 100 * (passed / total)
+                res_dict[test_module] = [total, passed, failed, round(passrate,2)]
+
+                #Store Failures
+                with open('failures/'+test_module+".failures", 'w') as failures_file:
+                    for fails in failures_log:
+                        failures_file.write("{0}\n" .format(fails))
+                        failures_log = []
+
+                total = passed = failed = 0
+
+    return res_dict
+
+
+def create_compared_dict(currlog, prelog):
+    diff = set(prelog.keys()) - set(currlog.keys())
+
+    for key, value in currlog .items():
+        if key in prelog.keys():
+            lastpastrate = prelog[key][3]
+        else:
+            lastpastrate = 0
+
+        currlog[key].append(lastpastrate)
+
+    for item in diff:
+        if item in prelog.keys():
+            currlog[item] = prelog[item]
+            currlog[item].insert(3, 0)
+
+    return currlog
+
+
+def create_header(file_name):
+    header = '[https://wiki.yoctoproject.org/wiki/Ptest/archive < Archive]' + \
+             '\n\n<br />Ran on a NUC and compared with' + \
+             '[[Ptest %s| %s]]'% (args.pre_commit, args.pre_release) + \
+             '\n\n[<put-here-link-of-the-log> < FULL_LOG]'
+
+    with open(file_name, 'a') as f:
+        f.write(header)
+
+def create_table(file_name, finalog):
+
+    nomenclature = '\n\n{| style="border-spacing:0;"\n' + \
+        '| style="background-color:#ff8080;border:0.05pt solid #000000' + \
+        ';padding:0.0382in;"| Failures\n' + \
+        '|-\n' + \
+        '| style="background-color:#99ff66;border-top:none;border-bottom:0.05pt' + \
+        'solid #000000;border-left:0.05pt solid #000000;border-right:0.05pt' + \
+        'solid #000000;padding:0.0201in;"| % increased\n' + \
+        '|-\n' + \
+        '| style="background-color:#c5000b;border-top:none;border-bottom:0.05pt' + \
+        'solid #000000;border-left:0.05pt solid #000000;border-right:0.05pt' + \
+        'solid #000000;padding:0.0201in;color:#ffffff"| % decreased\n' + \
+        '|-\n' + \
+        '| style="background-color:gray;border-top:none;border-bottom:0.05pt' + \
+        'solid #000000;border-left:0.05pt solid #000000;border-right:0.05pt' + \
+        'solid #000000;padding:0.0201in;color:#000000"| Module not executed\n' + \
+        '|}'
+
+    titles = ['Package Name', 'Tests ran', 'Passed', 'Failed', 'Passrate', 'Last Passrate']
+
+    table = '\n\n{| class="wikitable"\n' + \
+        '|+Results\n' + \
+        '|-\n'
+
+    for t in titles:
+        table += '| align=center style="background-color:#ccffff;' + \
+            'border-top:0.05pt solid #000000;border-bottom:0.5pt solid' + \
+            '#000000;border-left:0.05pt solid #000000;border-right:0.5pt' + \
+            'solid #000000;padding:0.0201in;"' + \
+            "| '''%s'''\n"% t
+
+    table += '|-\n'
+
+
+    for key, value in sorted(finalog.items()):
+        bgcolor_rate = bgcolor_fails = 'transparent'
+        text_color = '#000000'
+
+        if all(v == 0 for v in value[0:2]):
+            bgcolor_rate = bgcolor_fails = 'gray'
+            rate_image = 'no_rate.png'
+
+        #Package Name
+        table += '| align=left style="background-color:trasnparent' + \
+            'border-color:#000000"| %s\n'% key
+
+        #Tests ran and Passed
+        for v in range(0,2):
+            table += '| align=center style="background-color:%s;'% bgcolor_rate + \
+                'border-color:#000000"|%s\n'% value[v]
+
+        if value[2] > 0:
+            bgcolor_fails = '#ff8080'
+
+        #Failed
+        table += '| align=center style="background-color:%s;'% bgcolor_fails + \
+            'border-color:#000000"|%s\n'% value[2]
+
+        if value[3] > value[4]:
+            bgcolor_rate = '#99ff66'
+            rate_image = 'up_rate.png'
+        elif value[3] < value[4]:
+            bgcolor_rate = '#c5000b'
+            rate_image = 'down_rate.png'
+            text_color = '#ffffff'
+
+        #Passrate
+        table += '| align=center style="background-color:%s;'% bgcolor_rate + \
+            'border-color:#000000;color:%s"|%s\n'% (text_color, value[3])
+
+        #Last Passrate
+        table += '| align=center style="background-color:%s;'% bgcolor_rate + \
+            'border-color:#000000;color:%s"|%s\n'% (text_color, value[4])
+
+        if  bgcolor_rate not in 'transparent':
+            table += '| align=center style="background-color:transparent;' + \
+                'border-color:transparent" |[[File:%s|15px]]\n'% rate_image
+
+        table += '|-\n'
+
+
+
+    with open(file_name, 'a') as f:
+        f.write(nomenclature + table)
+
+
+def create_pTest_wiki(finalog):
+
+    file_name = args.curr_release + '-wiki.page'
+
+    create_header(file_name)
+
+    create_table(file_name, finalog)
+
+    return file_name
+
+if __name__ == '__main__':
+    args = get_args()
+    logger = None
+
+    logging.basicConfig(stream=sys.stdout)
+    root = logging.getLogger()
+    root.setLevel(logging.INFO)
+
+    logger = logging.getLogger()
+    ##Parse previous log
+    prelog = create_log_dict(args.pre_log)
+    #Parse current log
+    currlog = create_log_dict(args.curr_log)
+    logger.info("Logs parsed correctly")
+    #Get a compraed result
+    compared_log = create_compared_dict(currlog, prelog)
+
+    file_name = create_pTest_wiki(compared_log)
+    logger.info("Wiki correctly created as -  %s -"%file_name)
-- 
2.11.0


