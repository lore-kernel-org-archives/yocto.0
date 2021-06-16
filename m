Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web08.4814.1623833023787314447
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Jun 2021 01:43:45 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: sakib.sajal@windriver.com)
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com [147.11.82.252])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 15G8hbO5032332
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Wed, 16 Jun 2021 01:43:38 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 16 Jun 2021 01:43:37 -0700
Received: from localhost.localdomain (128.224.73.109) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.10 via Frontend Transport; Wed, 16 Jun 2021 01:43:37 -0700
From: sakib.sajal@windriver.com
To: <yocto@lists.yoctoproject.org>
Subject: [PATCH yocto-autobuilder-helper] summarize_top_output.py: add script, use it and publish summary
Date: Wed, 16 Jun 2021 04:43:34 -0400
Message-ID: <20210616084334.35144-1-sakib.sajal@windriver.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

summarize_top_output.py is used to summarize the top
output that is captured during autobuilder intermittent
failures.

Use the script to summarize the host top output and
publish the summary that is created instead of
the raw logfile.

Signed-off-by: Sakib Sajal <sakib.sajal@windriver.com>
---
 scripts/collect-results              |   2 +-
 scripts/generate-testresult-index.py |   2 +-
 scripts/run-config                   |   1 +
 scripts/summarize_top_output.py      | 132 +++++++++++++++++++++++++++
 4 files changed, 135 insertions(+), 2 deletions(-)
 create mode 100755 scripts/summarize_top_output.py

diff --git a/scripts/collect-results b/scripts/collect-results
index 7474e36..7178380 100755
--- a/scripts/collect-results
+++ b/scripts/collect-results
@@ -19,7 +19,7 @@ if [ -e $WORKDIR/buildhistory ]; then
 fi
 
 HSFILE=$WORKDIR/tmp/buildstats/*/host_stats
-d=`date +%Y-%m-%d--%H-%M`
+d="intermittent_failure_host_data"
 
 mkdir -p $DEST/$target/$d
 
diff --git a/scripts/generate-testresult-index.py b/scripts/generate-testresult-index.py
index 7fdc17c..d85d606 100755
--- a/scripts/generate-testresult-index.py
+++ b/scripts/generate-testresult-index.py
@@ -154,7 +154,7 @@ for build in sorted(os.listdir(path), key=keygen, reverse=True):
     hd = []
     counter = 0
     # do we really need the loop?
-    for p in glob.glob(buildpath + "/*/*/host_stats*top.txt"):
+    for p in glob.glob(buildpath + "/*/*/host_stats*top_summary.txt"):
         n_split = p.split(build)
         res = reldir[0:-1] + n_split[1]
         hd.append((res, str(counter)))
diff --git a/scripts/run-config b/scripts/run-config
index 8ed88cf..82de91f 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -327,6 +327,7 @@ elif args.phase == "finish" and args.stepname == "collect-results":
     if args.results_dir:
         hp.printheader("Running results collection")
         runcmd([scriptsdir + "/collect-results", args.builddir, args.results_dir, args.target])
+        runcmd([scriptsdir + "/summarize_top_output.py", args.results_dir, args.target])
     sys.exit(0)
 
 if jcfg:
diff --git a/scripts/summarize_top_output.py b/scripts/summarize_top_output.py
new file mode 100755
index 0000000..0606a34
--- /dev/null
+++ b/scripts/summarize_top_output.py
@@ -0,0 +1,132 @@
+#!/usr/bin/env python3
+
+import os, sys, glob
+
+# constants
+top_header = 7
+top_summary = 5
+max_cols = 11
+
+# string substitution to make things easier to read
+subs = {
+    "/home/pokybuild/yocto-worker/" : "~/",
+    "/build/build/tmp/work/core2-32-poky-linux/" : "/.../POKY_32/.../",
+    "/build/build/tmp/work/core2-64-poky-linux/" : "/.../POKY_64/.../",
+    "/recipe-sysroot-native/usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/" : "/...GCC.../"
+}
+
+def usage():
+    print("Usage: " + sys.argv[0] + " <dest> <target>")
+
+def list_top_outputs(logfile):
+    # top delimiter
+    top_start = "start: top output"
+    top_end = "end: top output"
+
+    # list of top outputs
+    top_outputs = []
+
+    # flag
+    collect = False
+    with open(logfile) as log:
+        top_output = []
+        for line in log:
+            lstrip = line.strip()
+            if collect:
+                if lstrip.startswith(top_end):
+                    collect = False
+                    top_outputs.append(top_output)
+                    top_output = []
+                else:
+                    top_output.append(lstrip)
+            if lstrip.startswith(top_start):
+                collect = True
+                    
+    return top_outputs
+
+def summarize_top(top_outs):
+    summaries = []
+    kernel_summaries = []
+    short_summaries = []
+    for top_out in top_outs:
+        summary = {}
+        kernel_summary = {}
+        short_summary = top_out[:top_summary]
+        for line in top_out[top_header:]:
+            cmd = line.split(maxsplit=max_cols)[-1]
+            # kernel processes
+            if cmd[0] == "[" and cmd[-1] == "]":
+                kproc = cmd[1:-1].split("/")[0]
+                if kproc not in kernel_summary:
+                    kernel_summary[kproc] = 1
+                else:
+                    kernel_summary[kproc] += 1
+                continue
+            cmd_split = cmd.split()
+            prog = cmd_split[0]
+            if prog not in summary:
+                summary[prog] = 1
+            else:
+                summary[prog] += 1
+        summary = dict(sorted(summary.items(), key=lambda item: item[1], reverse=True))
+        kernel_summary = dict(sorted(kernel_summary.items(), key=lambda item: item[1], reverse=True))
+        
+        summaries.append(summary)
+        kernel_summaries.append(kernel_summary)
+        short_summaries.append(short_summary)
+
+    return (short_summaries, summaries, kernel_summaries)
+    
+def summarize_path(path):
+    p = path
+    for k, v in subs.items():
+        p = p.replace(k, v)
+    return p
+
+def write_summary(short_summary, summary, kernel_summary, logfile):
+    dirname = os.path.dirname(logfile)
+    fname = os.path.basename(logfile)
+    report_name = fname.split(".")[0] + "_summary.txt"
+    outfile = os.path.join(dirname, report_name)
+    out = "NOTE: program names have been shortened for better readability.\nSubstitutions are as follows:\n"
+    for k, v in subs.items():
+        out += (v + " = " + k + "\n")
+    out += "\n"
+
+    out += "top was invoked " + str(len(short_summary)) + " times.\n\n"
+
+    for i in range(len(short_summary)):
+        for l in short_summary[i]:
+            out += (l + "\n")
+
+        out += ("\nSummary: " + "\n")
+        for k, v in summary[i].items():
+            if v > 1:
+                r = summarize_path(k)
+                out += (str(v) + "  " + r + "\n")
+        
+        out += ("\nKernel Summary: " + "\n")
+        for k, v in kernel_summary[i].items():
+            if v > 1:
+                r = summarize_path(k)
+                out += (str(v) + "  " + r + "\n")
+        out += ("\n")
+
+    with open(outfile, "w") as of:
+        of.write(out)
+
+def main():
+    if len(sys.argv) != 3:
+        usage()
+        sys.exit()
+        
+    dest = sys.argv[1]
+    target = sys.argv[2]
+    host_data_dir = "intermittent_failure_host_data"
+    directory = os.path.join(dest, target, host_data_dir)
+    for f in glob.glob(directory + "/*_top.txt"):
+        outputs = list_top_outputs(f)
+        short_summary, summary, kernel_summary = summarize_top(outputs)
+        write_summary(short_summary, summary, kernel_summary, f)        
+
+main()
-- 
2.25.1

