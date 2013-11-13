Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A98DE0182F
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 04:58:40 -0800 (PST)
Received: from [173.34.6.101] (port=45307 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Vga1m-0007kK-VD; Wed, 13 Nov 2013 07:58:39 -0500
Date: Wed, 13 Nov 2013 07:58:35 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1311130751100.10200@oneiric>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: [PATCH] Documentation: Remaining tweaks/corrections to Usage chapter, Profiling manual
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
X-List-Received-Date: Wed, 13 Nov 2013 12:58:43 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  if someone wants to check this over, make sure i didn't make any
silly changes ...

diff --git a/documentation/profile-manual/profile-manual-usage.xml b/documentation/profile-manual/profile-manual-usage.xml
index 9116d5b..ade0dde 100644
--- a/documentation/profile-manual/profile-manual-usage.xml
+++ b/documentation/profile-manual/profile-manual-usage.xml
@@ -1377,7 +1377,7 @@
             the /tracing directory of the mounted debugfs filesystem
             (Yocto follows the standard convention and mounts it
             at /sys/kernel/debug). Here's a listing of all the files
-            found in /sys/kernel/debug/tracing on a Yocto system.:
+            found in /sys/kernel/debug/tracing on a Yocto system:
             <literallayout class='monospaced'>
      root@sugarbay:/sys/kernel/debug/tracing# ls
      README                      kprobe_events               trace
@@ -1634,7 +1634,7 @@
             Also notice that there are various annotations on the left
             hand side of the display. For example if the total time it
             took for a given function to execute is above a certain
-            threshold, and exclamation point or plus sign appears on the
+            threshold, an exclamation point or plus sign appears on the
             left hand side. Please see the ftrace documentation for
             details on all these fields.
         </para>
@@ -1842,7 +1842,7 @@
             </literallayout>
             You can enable any number of events or complete subsystems
             (by using the 'enable' file in the subsystem directory) and
-            get am arbitrarily fine-grained idea of what's going on in the
+            get an arbitrarily fine-grained idea of what's going on in the
             system by enabling as many of the appropriate tracepoints
             as applicable.
         </para>
@@ -1878,14 +1878,14 @@
             in /sys/kernel/debug/tracing, allowing users to specify
             specific particular events within the
             /sys/kernel/debug/tracing/events/ subdirectory and to collect
-            traces and avoiding having to deal with those details directly.
+            traces and avoid having to deal with those details directly.
         </para>

         <para>
             As yet another layer on top of that, kernelshark provides a GUI
             that allows users to start and stop traces and specify sets
             of events using an intuitive interface, and view the
-            output as both trace events and as a per-cpu graphical
+            output as both trace events and as a per-CPU graphical
             display. It directly uses 'trace-cmd' as the plumbing
             that accomplishes all that underneath the covers (and
             actually displays the trace-cmd command it uses, as we'll see).
@@ -1896,13 +1896,13 @@
             <literallayout class='monospaced'>
      root@sugarbay:~# kernelshark
             </literallayout>
-            The bring up the 'Capture' dialog by choosing from the
+            Then bring up the 'Capture' dialog by choosing from the
             kernelshark menu:
             <literallayout class='monospaced'>
      Capture | Record
             </literallayout>
             That will display the following dialog, which allows you to
-            choose on or more events (or even one or more complete
+            choose one or more events (or even one or more complete
             subsystems) to trace:
         </para>

@@ -1911,7 +1911,7 @@
         </para>

         <para>
-            Note that these are exactly the same set of events described
+            Note that these are exactly the same sets of events described
             in the previous trace events subsystem section, and in fact
             is where trace-cmd gets them for kernelshark.
         </para>
@@ -1980,13 +1980,15 @@
             <literallayout class='monospaced'>
      Documentation/trace/events.txt
             </literallayout>
-            There are a nice series of articles on using
+            There is a nice series of articles on using
             ftrace and trace-cmd at LWN:
             <itemizedlist>
                 <listitem><para><ulink url='http://lwn.net/Articles/365835/'>Debugging the kernel using Ftrace - part 1</ulink>
                     </para></listitem>
                 <listitem><para><ulink url='http://lwn.net/Articles/366796/'>Debugging the kernel using Ftrace - part 2</ulink>
                     </para></listitem>
+                <listitem><para><ulink url='http://lwn.net/Articles/370423/'>Secrets of the Ftrace function tracer</ulink>
+                    </para></listitem>
                 <listitem><para><ulink url='https://lwn.net/Articles/410200/'>trace-cmd: A front-end for Ftrace</ulink>
                     </para></listitem>
             </itemizedlist>
@@ -2022,7 +2024,7 @@
         <ulink url='http://sourceware.org/systemtap/tutorial/'>SystemTap tutorial</ulink>
         simply prints a line every time any process on the system open()s
         a file. For each line, it prints the executable name of the
-        program that opened the file, along with its pid, and the name
+        program that opened the file, along with its PID, and the name
         of the file it opened (or tried to open), which it extracts
         from the open syscall's argstr.
         <literallayout class='monospaced'>
@@ -2099,11 +2101,11 @@
             <note>
                 SystemTap, which uses 'crosstap', assumes you can establish an
                 ssh connection to the remote target.
-                Please refer to crosstap wiki page for details on verifying
+                Please refer to the crosstap wiki page for details on verifying
                 ssh connections at
                 <ulink url='https://wiki.yoctoproject.org/wiki/Tracing_and_Profiling#systemtap'></ulink>.
                 Also, the ability to ssh into the target system is not enabled
-                by default in -minimal images.
+                by default in *-minimal images.
             </note>
             <literallayout class='monospaced'>
      $ crosstap root@192.168.1.88 trace_open.stp
@@ -2201,7 +2203,7 @@
         <para>
             If everything worked as planned, you should see something
             like this (enter the password when prompted, or press enter
-            if its set up to use no password):
+            if it's set up to use no password):
             <literallayout class='monospaced'>
      $ crosstap root@192.168.7.2 trace_open.stp
      root@192.168.7.2's password:
@@ -2246,7 +2248,7 @@
         </para>

         <para>
-            For the the section that deals with oprofile from the command-line,
+            For the section that deals with running oprofile from the command-line,
             we assume you've ssh'ed to the host and will be running
             oprofile on the target.
         </para>
@@ -2266,7 +2268,7 @@
             Oprofile as configured in Yocto is a system-wide profiler
             (i.e. the version in Yocto doesn't yet make use of the
             perf_events interface which would allow it to profile
-            specific processes and workloads). It's relies on hardware
+            specific processes and workloads). It relies on hardware
             counter support in the hardware (but can fall back to a
             timer-based mode), which means that it doesn't take
             advantage of tracepoints or other event sources for example.
@@ -2287,8 +2289,8 @@
         <para>
             The oprofile daemon should already be running, but before
             you start profiling, you may need to change some settings
-            and some of these settings may require the daemon not
-            be running. One of these settings is the path the the
+            and some of these settings may require the daemon to not
+            be running. One of these settings is the path to the
             vmlinux file, which you'll want to set using the --vmlinux
             option if you want the kernel profiled:
             <literallayout class='monospaced'>
@@ -2319,7 +2321,7 @@
      Using log file /var/lib/oprofile/samples/oprofiled.log
      Daemon started.
             </literallayout>
-            If we get the status again we now see our updated settings:
+            If we check the status again we now see our updated settings:
             <literallayout class='monospaced'>
      root@crownbay:~# opcontrol --status
      Daemon paused: pid 1649
@@ -2328,7 +2330,7 @@
      Image filter: none
      Call-graph depth: 6
             </literallayout>
-            We're now in a position to run a profile. For that we used
+            We're now in a position to run a profile. For that we use
             'opcontrol --start':
             <literallayout class='monospaced'>
      root@crownbay:~# opcontrol --start
@@ -2340,10 +2342,10 @@
      Connecting to downloads.yoctoproject.org (140.211.169.59:80)
      linux-2.6.19.2.tar.b 100% |*******************************| 41727k  0:00:00 ETA
             </literallayout>
-            To stop the profile we use 'opcontrol --shudown', which not
+            To stop the profile we use 'opcontrol --shutdown', which not
             only stops the profile but shuts down the daemon as well:
             <literallayout class='monospaced'>
-     root@crownbay:~# opcontrol --start
+     root@crownbay:~# opcontrol --shutdown
      Stopping profiling.
      Killing daemon.
             </literallayout>
@@ -2902,7 +2904,7 @@

         <para>
             Once you've applied the above commits and built and booted your
-            image (you need to build the core-image-sato-sdk image or the
+            image (you need to build the core-image-sato-sdk image or use one of the
             other methods described in the General Setup section), you're
             ready to start tracing.
         </para>
@@ -2911,7 +2913,7 @@
             <title>Collecting and viewing a trace on the target (inside a shell)</title>

             <para>
-                First, from the target, ssh to the target:
+                First, from the host, ssh to the target:
                 <literallayout class='monospaced'>
      $ ssh -l root 192.168.1.47
      The authenticity of host '192.168.1.47 (192.168.1.47)' can't be established.
@@ -3012,7 +3014,7 @@
             <title>Collecting and viewing a userspace trace on the target (inside a shell)</title>

             <para>
-                For lttng userspace tracing, you need to have a properly
+                For LTTng userspace tracing, you need to have a properly
                 instrumented userspace program. For this example, we'll use
                 the 'hello' test program generated by the lttng-ust build.
             </para>
@@ -3034,7 +3036,7 @@
             </para>

             <para>
-                First, from the target, ssh to the target:
+                First, from the host, ssh to the target:
                 <literallayout class='monospaced'>
      $ ssh -l root 192.168.1.47
      The authenticity of host '192.168.1.47 (192.168.1.47)' can't be established.
@@ -3600,7 +3602,7 @@
                 It's also possible to trace block I/O using only
                 <link linkend='the-trace-events-subsystem'>trace events subsystem</link>,
                 which can be useful for casual tracing
-                if you don't want bother dealing with the userspace tools.
+                if you don't want to bother dealing with the userspace tools.
             </para>

             <para>

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

