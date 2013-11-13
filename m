Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F03AE0182C
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 04:02:42 -0800 (PST)
Received: from [173.34.6.101] (port=44653 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VgZ9c-0005vj-P2; Wed, 13 Nov 2013 07:02:40 -0500
Date: Wed, 13 Nov 2013 07:02:34 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1311130700360.6820@oneiric>
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
Subject: [PATCH] Documentation: Grammar/typo tweaks to perf chapter, profiling manual.
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
X-List-Received-Date: Wed, 13 Nov 2013 12:02:43 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  given the length of the tools sections in the profiling manual, i'm
doing each tool separately so that patches come in manageable chunks.

diff --git a/documentation/profile-manual/profile-manual-usage.xml b/documentation/profile-manual/profile-manual-usage.xml
index 9116d5b..c1ceb58 100644
--- a/documentation/profile-manual/profile-manual-usage.xml
+++ b/documentation/profile-manual/profile-manual-usage.xml
@@ -22,7 +22,7 @@
     <para>
         Don't let the fact that it's part of the kernel fool you into thinking
         that it's only for tracing and profiling the kernel - you can indeed
-        use it to trace and profile just the kernel , but you can also use it
+        use it to trace and profile just the kernel, but you can also use it
         to profile specific applications separately (with or without kernel
         context), and you can also use it to trace and profile the kernel
         and all applications on the system simultaneously to gain a system-wide
@@ -30,10 +30,10 @@
     </para>

     <para>
-        In many ways, it aims to be a superset of all the tracing and profiling
+        In many ways, perf aims to be a superset of all the tracing and profiling
         tools available in Linux today, including all the other tools covered
         in this HOWTO. The past couple of years have seen perf subsume a lot
-        of the functionality of those other tools, and at the same time those
+        of the functionality of those other tools and, at the same time, those
         other tools have removed large portions of their previous functionality
         and replaced it with calls to the equivalent functionality now
         implemented by the perf subsystem. Extrapolation suggests that at
@@ -126,7 +126,7 @@
      wget <ulink url='http://downloads.yoctoproject.org/mirror/sources/linux-2.6.19.2.tar.bz2'>http://downloads.yoctoproject.org/mirror/sources/linux-2.6.19.2.tar.bz2</ulink>
                 </literallayout>
                 The quickest and easiest way to get some basic overall data about
-                what's going on for a particular workload it to profile it using
+                what's going on for a particular workload is to profile it using
                 'perf stat'. 'perf stat' basically profiles using a few default
                 counters and displays the summed counts at the end of the run:
                 <literallayout class='monospaced'>
@@ -201,7 +201,7 @@
                 As our first attempt at profiling this workload, we'll simply
                 run 'perf record', handing it the workload we want to profile
                 (everything after 'perf record' and any perf options we hand
-                it - here none - will be executedin a new shell). perf collects
+                it - here none - will be executed in a new shell). perf collects
                 samples until the process exits and records them in a file named
                 'perf.data' in the current working directory.
                 <literallayout class='monospaced'>
@@ -241,7 +241,7 @@
                 Notice also that the above report shows an entry for 'busybox',
                 which is the executable that implements 'wget' in Yocto, but that
                 instead of a useful function name in that entry, it displays
-                an not-so-friendly hex value instead. The steps below will show
+                a not-so-friendly hex value instead. The steps below will show
                 how to fix that problem.
             </para>

@@ -308,7 +308,7 @@
             </para>

             <para>
-                Notice also that here there's also a case where the a hex value
+                Notice also that here there's also a case where the hex value
                 is displayed in the callstack, here in the expanded
                 sys_clock_gettime() function. Later we'll see it resolve to a
                 userspace function call in busybox.
@@ -367,7 +367,7 @@

             <para>
                 To generate the debug info for the packages in the image, we can
-                to add dbg-pkgs to EXTRA_IMAGE_FEATURES in local.conf. For example:
+                add dbg-pkgs to EXTRA_IMAGE_FEATURES in local.conf. For example:
                 <literallayout class='monospaced'>
      EXTRA_IMAGE_FEATURES = "debug-tweaks tools-profile dbg-pkgs"
                 </literallayout>
@@ -462,7 +462,7 @@
                 The tracing and profiling infrastructure in Linux has become
                 unified in a way that allows us to use the same tool with a
                 completely different set of counters, not just the standard
-                hardware counters that traditionally tools have had to restrict
+                hardware counters that traditional tools have had to restrict
                 themselves to (of course the traditional tools can also make use
                 of the expanded possibilities now available to them, and in some
                 cases have, as mentioned previously).
@@ -828,7 +828,7 @@
             </para>

             <para>
-                Luckily, there is general-purpose way to handle such needs,
+                Luckily, there is a general-purpose way to handle such needs,
                 called 'programming languages'. Making programming languages
                 easily available to apply to such problems given the specific
                 format of data is called a 'programming language binding' for
@@ -925,9 +925,9 @@
                 </literallayout>
                 Each event handler function in the generated code is modified
                 to do this. For convenience, we define a common function called
-                inc_counts() that each handler calls; inc_counts simply tallies
+                inc_counts() that each handler calls; inc_counts() simply tallies
                 a count for each event using the 'counts' hash, which is a
-                specialized has function that does Perl-like autovivification, a
+                specialized hash function that does Perl-like autovivification, a
                 capability that's extremely useful for kinds of multi-level
                 aggregation commonly used in processing traces (see perf's
                 documentation on the Python language binding for details):

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

