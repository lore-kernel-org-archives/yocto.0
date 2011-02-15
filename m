Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id F33294C808E5
	for <yocto@yoctoproject.org>; Mon, 14 Feb 2011 20:11:50 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 14 Feb 2011 18:11:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,471,1291622400"; d="scan'208";a="707832841"
Received: from eflanaga-mobl.jf.intel.com (HELO [10.7.198.62]) ([10.7.198.62])
	by orsmga001.jf.intel.com with ESMTP; 14 Feb 2011 18:11:50 -0800
Message-ID: <4D59E0E5.5060504@intel.com>
Date: Mon, 14 Feb 2011 18:11:49 -0800
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7 ThunderBrowse/3.3.4
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [PATCH 1/1] Buildstats commit: buildstats.bbclass
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 15 Feb 2011 02:11:51 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


Used to track some basic build metrics by build and task/event level.

Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
---
 meta/classes/base.bbclass       |    1 +
 meta/classes/buildstats.bbclass |  194 +++++++++++++++++++++++++++++++++++++++
 2 files changed, 195 insertions(+), 0 deletions(-)
 create mode 100644 meta/classes/buildstats.bbclass

diff --git a/meta/classes/base.bbclass b/meta/classes/base.bbclass
index e4ea69d..a674f52 100644
--- a/meta/classes/base.bbclass
+++ b/meta/classes/base.bbclass
@@ -7,6 +7,7 @@ inherit mirrors
 inherit utils
 inherit utility-tasks
 inherit metadata_scm
+inherit buildstats

 python sys_path_eh () {
     if isinstance(e, bb.event.ConfigParsed):
diff --git a/meta/classes/buildstats.bbclass b/meta/classes/buildstats.bbclass
new file mode 100644
index 0000000..f57d018
--- /dev/null
+++ b/meta/classes/buildstats.bbclass
@@ -0,0 +1,194 @@
+BUILDSTATS_BASE = ${TMPDIR}/buildstats/
+BNFILE = ${BUILDSTATS_BASE}/.buildname
+
+################################################################################
+# Build statistics gathering.
+#
+# The CPU and Time gathering/tracking functions and bbevent inspiration
+# were written by Christopher Larson and can be seen here:
+# http://kergoth.pastey.net/142813
+#
+################################################################################
+
+def get_process_cputime(pid):
+    fields = open("/proc/%d/stat" % pid, "r").readline().rstrip().split()
+    # 13: utime, 14: stime, 15: cutime, 16: cstime
+    return sum(int(field) for field in fields[13:16])
+
+def get_cputime():
+    fields = open("/proc/stat", "r").readline().rstrip().split()[1:]
+    return sum(int(field) for field in fields)
+
+def set_timedata(var, data):
+    import time
+
+    time = time.time()
+    cputime = get_cputime()
+    proctime = get_process_cputime(os.getpid())
+    data.setVar(var, (time, cputime, proctime))
+
+def get_timedata(var, data):
+    import time
+    timedata = data.getVar(var, False)
+    if timedata is None:
+        return
+    oldtime, oldcpu, oldproc = timedata
+    procdiff = get_process_cputime(os.getpid()) - oldproc
+    cpudiff = get_cputime() - oldcpu
+    timediff = time.time() - oldtime
+    if cpudiff > 0:
+        cpuperc = float(procdiff) * 100 / cpudiff
+    else:
+        cpuperc = None
+    return timediff, cpuperc
+
+##############################################
+# We need to set the buildname to a file since
+# BUILDNAME changes throughout a build
+##############################################
+
+def set_bn(e):
+    bn = e.getPkgs()[0] + "-" + bb.data.getVar('MACHINE',e.data, True)
+    try:
+        os.remove(bb.data.getVar('BNFILE',e.data, True))
+    except:
+        pass
+    file = open(bb.data.getVar('BNFILE',e.data, True), "w")
+    file.write(os.path.join(bn, bb.data.getVar('BUILDNAME', e.data, True)))
+    file.close()
+
+def get_bn(e):
+    file = open(bb.data.getVar('BNFILE',e.data, True))
+    bn = file.readline()
+    file.close()
+    return bn
+
+python run_buildstats () {
+    import bb.build
+    import bb.event
+    import bb.data
+    import time, subprocess
+
+    if isinstance(e, bb.event.BuildStarted):
+        ##############################################
+        # at first pass make the buildstats heriarchy and then
+        # set the buildname
+        ##############################################
+        try:
+            bb.mkdirhier(bb.data.getVar('BUILDSTATS_BASE', e.data, True))
+        except:
+            pass
+        set_bn(e)
+        bn = get_bn(e)
+        bb.warn(bn)
+        bsdir = os.path.join(bb.data.getVar('BUILDSTATS_BASE', e.data, True), bn)
+        try:
+            bb.mkdirhier(bsdir)
+        except:
+            pass
+        set_timedata("__timedata_build", e.data)
+        build_time = os.path.join(bsdir, "build_stats")
+        # write start of build into build_time
+        file = open(build_time,"a")
+        # We do this here because subprocess within BuildStarted is messy
+        host_info = subprocess.Popen(["uname", "-a"], stdout=subprocess.PIPE).stdout.read()
+        file.write("Host Info: %s" % host_info)
+        file.write("Build Started: %0.2f \n" % time.time())
+        file.close()
+
+    elif isinstance(e, bb.event.BuildCompleted):
+        bn=get_bn(e)
+        timedata = get_timedata("__timedata_build", e.data)
+        if not timedata:
+            return
+        time, cpu = timedata
+        bsdir = os.path.join(bb.data.getVar('BUILDSTATS_BASE', e.data, True), bn)
+        build_time = os.path.join(bsdir, "build_stats")
+        # write end of build and cpu used into build_time
+        file = open(build_time, "a")
+        file.write("Elapsed time: %0.2f seconds \n" % (time))
+        if cpu:
+            file.write("CPU usage: %0.1f%% \n" % cpu)
+        file.close()
+
+
+    if isinstance(e, bb.build.TaskStarted):
+        bn=get_bn(e)
+        set_timedata("__timedata_task", e.data)
+
+        bsdir = os.path.join(bb.data.getVar('BUILDSTATS_BASE', e.data, True), bn)
+        taskdir = os.path.join(bsdir, bb.data.expand("${PF}", e.data))
+        try:
+            bb.mkdirhier(taskdir)
+        except:
+            pass
+        # write into the task event file the name and start time
+        file = open(os.path.join(taskdir, e.task), "a")
+        file.write("Event: %s \n" % bb.event.getName(e))
+        file.write("Started: %0.2f \n" % time.time())
+        file.close()
+
+    elif isinstance(e, bb.build.TaskSucceeded):
+        bn=get_bn(e)
+        timedata = get_timedata("__timedata_task", e.data)
+        if not timedata:
+            return
+        time, cpu = timedata
+        bsdir = os.path.join(bb.data.getVar('BUILDSTATS_BASE', e.data, True), bn)
+        taskdir = os.path.join(bsdir, bb.data.expand("${PF}", e.data))
+        file = open(os.path.join(taskdir, e.task), "a")
+        file.write(bb.data.expand("${PF}: %s: Elapsed time: %0.2f seconds \n" %
+                               (e.task, time), e.data))
+        if cpu:
+            file.write("CPU usage: %0.1f%% \n" % cpu)
+    	
+    	file.write("Status: PASSED")
+        file.close()
+
+        ##############################################
+        # Alot of metric gathering occurs here.
+        # Reminder: I stripped out some in process stuff here
+        ##############################################
+
+        if e.task == "do_rootfs":
+            bs=os.path.join(bsdir, "build_stats")
+            file = open(bs,"a")
+            rootfs = bb.data.getVar('IMAGE_ROOTFS', e.data, True)
+            rootfs_size = subprocess.Popen(["du", "-sh", rootfs], stdout=subprocess.PIPE).stdout.read()
+            file.write("Uncompressed Rootfs size: %s" % rootfs_size)
+            file.close()
+
+    elif isinstance(e, bb.build.TaskFailed):
+        bn=get_bn(e)
+        timedata = get_timedata("__timedata_task", e.data)
+        if not timedata:
+            return
+        time, cpu = timedata
+        bsdir = os.path.join(bb.data.getVar('BUILDSTATS_BASE', e.data, True), bn)
+        taskdir = os.path.join(bsdir, bb.data.expand("${PF}", e.data))
+        ##############################################
+        # If the task fails dump the regular data.
+        # fgrep -R "FAILED" <bsdir>
+        # will grep all the events that failed.
+        ##############################################
+        file = open(os.path.join(taskdir, e.task), "a")
+        file.write(bb.data.expand("${PF}: %s: Elapsed time: %0.2f seconds \n" %
+                               (e.task, time), e.data))
+        if cpu:
+            file.write("CPU usage: %0.1f%% \n" % cpu)
+        file.write("Status: FAILED")
+        file.close()
+        ##############################################
+        # Lets make things easier and tell people where the build failed in build_status
+        # We do this here because BuildCompleted triggers no matter what the status of the
+        # build actually is
+        ##############################################
+        build_status = os.path.join(bsdir, "build_stats")
+        file = open(build_status,"a")
+        file.write(bb.data.expand("Failed at: ${PF} at task: %s \n", e.task))
+        file.close()
+
+}
+
+addhandler run_buildstats
+
-- 
1.7.1

