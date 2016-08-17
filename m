Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C47A0E00EE2; Wed, 17 Aug 2016 09:13:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E2E1E00EBE
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2016 09:13:03 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 17 Aug 2016 09:12:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,529,1464678000"; 
	d="scan'208,217";a="867030551"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.4.209])
	by orsmga003.jf.intel.com with ESMTP; 17 Aug 2016 09:12:42 -0700
Message-ID: <1471450360.19448.6.camel@linux.intel.com>
From: Joshua G Lock <joshua.g.lock@linux.intel.com>
To: "Randle, William C" <william.c.randle@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Wed, 17 Aug 2016 17:12:40 +0100
In-Reply-To: <1471450179.2860.57.camel@intel.com>
References: <1471392559-5756-1-git-send-email-william.c.randle@intel.com>
	<1471449564.3023.11.camel@linux.intel.com>
	<1471450179.2860.57.camel@intel.com>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
Subject: Re: [yocto-autobuilder][PATCH] cleanup and restart crashed vnc server
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
X-List-Received-Date: Wed, 17 Aug 2016 16:13:07 -0000
Content-Type: multipart/alternative; boundary="=-azkBcNSVQwmgOwU/QkWf"

--=-azkBcNSVQwmgOwU/QkWf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2016-08-17 at 16:09 +0000, Randle, William C wrote:
> 
> On Wed, 2016-08-17 at 16:59 +0100, Joshua G Lock wrote:
> 
> > On Tue, 2016-08-16 at 17:09 -0700, Bill Randle wrote:
> > > Use a common script to check for a running vnc server, and if not
> > > running
> > > cleanup dangling lock files and restart the server.
> > > 
> > > [YOCTO #8210]
> > > 
> > > > > > Signed-off-by: Bill Randle <william.c.randle@intel.com>
> > > ---
> > > > > >  bin/checkvnc                                                   |
10
> > > ++++++++++
> > > > > >  .../site-packages/autobuilder/buildsteps/RunESDKSanityTests.py
|  3
> > > +--
> > > > > >  .../site-
packages/autobuilder/buildsteps/RunOeSelftest.py      |  3
> > > +--
> > > > > >  .../site-
packages/autobuilder/buildsteps/RunSDKSanityTests.py  |  3
> > > +--
> > > > > >  .../site-
packages/autobuilder/buildsteps/RunSanityTests.py     |  3
> > > +--
> > >  5 files changed, 14 insertions(+), 8 deletions(-)
> > >  create mode 100755 bin/checkvnc
> > > 
> > > diff --git a/bin/checkvnc b/bin/checkvnc
> > > new file mode 100755
> > > index 0000000..574ba48
> > > --- /dev/null
> > > +++ b/bin/checkvnc
> > > @@ -0,0 +1,10 @@
> > > +#!/bin/sh
> > > +#
> > > > > > +# check if vnc server is running, and if not, cleanup and
restart
> > > +#
> > > +pid=$(pidof Xvnc)
> > > +if [[ $? != 0 ]]; then
> > > +    echo "Xvnc not running, attempting restart"
> > > +    vncserver -kill :1
> > > +    vncserver
> > 
> > > > The vncserver is currently started with `vncserver :1`, whereas
this
> > script just calls `vncserver` — is that intentional/desirable?
> > 
> > > > Would it be a little cleaner/more robust if we didn't assume only
one
> > > > Xvnc instance was running and instead write the pid of the process
we
> > start to a file and use that file to check the status?
> > 
> > Regards,
> > 
> > Joshua
> > 
> > 
> 
> 
> 
> 
> > The vncserver program is a shell script and uses :1 as the default
display.
> 
> 
> 
> 
> 
> > > > The pid of Xvnc is written to a file already. The problem is, if Xvmc
crashes, the pid file (and lock file) are left around, so just
looking at the pid file existance, you can't tell if it's actually
running or not.
> 


Can we read the pid from the pidfile and do the tidy up if the process
isn't running? My main concern here is that we assume only a single
instance of Xvnc is running, I'm not sure if that is a safe assumption
to make?

Thanks,

Joshua

> > > > 
>     - Bill

> 


> > > > 
> > > 
+fi
diff --git a/lib/python2.7/site-
packages/autobuilder/buildsteps/RunESDKSanityTests.py
b/lib/python2.7/site-
packages/autobuilder/buildsteps/RunESDKSanityTests.py
index 7471d3d..c16c8c2 100644
--- a/lib/python2.7/site-
packages/autobuilder/buildsteps/RunESDKSanityTests.py
+++ b/lib/python2.7/site-
packages/autobuilder/buildsteps/RunESDKSanityTests.py
@@ -47,8 +47,7 @@ class RunESDKSanityTests(BitbakeShellCommand):
         layerversion = self.getProperty("layerversion_core")
         command = ""
         command = command + ". ./oe-init-build-env; "
-        command = command + "netstat -an | grep -q 5901 ;"
-        command = command + 'if [ $? -ne 0 ]; then echo "Starting a
VNC server on :1"; vncserver :1; else echo "Will use a VNC server
already running on :1"; fi;'
+        command = command + "checkvnc; "
         if layerversion and int(layerversion) >= 7:
             command = command + "echo 'INHERIT += \"testsdk\"' >>
./conf/auto.conf;"
             command = command + "echo 'TEST_QEMUBOOT_TIMEOUT =
\"1500\"' >> ./conf/auto.conf;"
diff --git a/lib/python2.7/site-
packages/autobuilder/buildsteps/RunOeSelftest.py
b/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py
index 809bcc3..84d32fe 100644
--- a/lib/python2.7/site-
packages/autobuilder/buildsteps/RunOeSelftest.py
+++ b/lib/python2.7/site-
packages/autobuilder/buildsteps/RunOeSelftest.py
@@ -31,8 +31,7 @@ class RunOeSelftest(ShellCommand):
     def start(self):
         self.command = ""
         self.command += ". ./oe-init-build-env; "
-        self.command += "netstat -an | grep -q 5901 ;"
-        self.command += "if [ $? -ne 0 ]; then echo 'Starting a VNC
server on :1'; vncserver :1; else echo 'Will use a VNC server already
running on :1'; fi;"
+        self.command += "checkvnc; "
         if self.tests == None:
             self.command += "if [ -d ../meta-selftest ]; then export
DISPLAY=:1; oe-selftest --run-all-tests; else echo 'Skipping step -
no meta-selftest layer here'; fi"
         else:
diff --git a/lib/python2.7/site-
packages/autobuilder/buildsteps/RunSDKSanityTests.py
b/lib/python2.7/site-
packages/autobuilder/buildsteps/RunSDKSanityTests.py
index 9b6eb5b..6fb3127 100644
--- a/lib/python2.7/site-
packages/autobuilder/buildsteps/RunSDKSanityTests.py
+++ b/lib/python2.7/site-
packages/autobuilder/buildsteps/RunSDKSanityTests.py
@@ -47,8 +47,7 @@ class RunSDKSanityTests(BitbakeShellCommand):
         layerversion = self.getProperty("layerversion_core")
         command = ""
         command = command + ". ./oe-init-build-env; "
-        command = command + "netstat -an | grep -q 5901 ;"
-        command = command + 'if [ $? -ne 0 ]; then echo "Starting a
VNC server on :1"; vncserver :1; else echo "Will use a VNC server
already running on :1"; fi;'
+        command = command + "checkvnc; "
         if layerversion and int(layerversion) >= 6:
             command = command + "echo 'INHERIT += \"testimage\"' >>
./conf/auto.conf;"
             command = command + "echo 'TEST_QEMUBOOT_TIMEOUT =
\"1500\"' >> ./conf/auto.conf;"
diff --git a/lib/python2.7/site-
packages/autobuilder/buildsteps/RunSanityTests.py
b/lib/python2.7/site-
packages/autobuilder/buildsteps/RunSanityTests.py
index 4fa6dac..81e20cd 100644
--- a/lib/python2.7/site-
packages/autobuilder/buildsteps/RunSanityTests.py
+++ b/lib/python2.7/site-
packages/autobuilder/buildsteps/RunSanityTests.py
@@ -48,8 +48,7 @@ class RunSanityTests(BitbakeShellCommand):
         distro = self.getProperty("DISTRO")
         command = ""
         command = command + ". ./oe-init-build-env; "
-        command = command + "netstat -an | grep -q 5901 ;"
-        command = command + 'if [ $? -ne 0 ]; then echo "Starting a
VNC server on :1"; vncserver :1; else echo "Will use a VNC server
already running on :1"; fi;'
+        command = command + "checkvnc; "
         if distro == "poky-lsb" and layerversion and
int(layerversion) < 6:
             command = "echo 'Skipping step.'"
         elif layerversion and int(layerversion) > 1:





--=-azkBcNSVQwmgOwU/QkWf
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body><div>On Wed, 2016-08-17 at 16:09 +0000, Randle, William C wrote:</div><blockquote type="cite">
<div>On Wed, 2016-08-17 at 16:59 +0100, Joshua G Lock wrote:</div>
<blockquote type="cite">
<pre>On Tue, 2016-08-16 at 17:09 -0700, Bill Randle wrote:
<blockquote type="cite">
Use a common script to check for a running vnc server, and if not
running
cleanup dangling lock files and restart the server.

[YOCTO #8210]

Signed-off-by: Bill Randle &lt;<a href="mailto:william.c.randle@intel.com">william.c.randle@intel.com</a>&gt;
---
&nbsp;bin/checkvnc&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| 10
++++++++++
&nbsp;.../site-packages/autobuilder/buildsteps/RunESDKSanityTests.py |&nbsp;&nbsp;3
+--
&nbsp;.../site-packages/autobuilder/buildsteps/RunOeSelftest.py&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;3
+--
&nbsp;.../site-packages/autobuilder/buildsteps/RunSDKSanityTests.py&nbsp;&nbsp;|&nbsp;&nbsp;3
+--
&nbsp;.../site-packages/autobuilder/buildsteps/RunSanityTests.py&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;3
+--
&nbsp;5 files changed, 14 insertions(+), 8 deletions(-)
&nbsp;create mode 100755 bin/checkvnc

diff --git a/bin/checkvnc b/bin/checkvnc
new file mode 100755
index 0000000..574ba48
--- /dev/null
+++ b/bin/checkvnc
@@ -0,0 +1,10 @@
+#!/bin/sh
+#
+# check if vnc server is running, and if not, cleanup and restart
+#
+pid=$(pidof Xvnc)
+if [[ $? != 0 ]]; then
+&nbsp;&nbsp;&nbsp;&nbsp;echo "Xvnc not running, attempting restart"
+&nbsp;&nbsp;&nbsp;&nbsp;vncserver -kill :1
+&nbsp;&nbsp;&nbsp;&nbsp;vncserver
</blockquote>

The vncserver is currently started with `vncserver :1`, whereas this
script just calls `vncserver` — is that intentional/desirable?

Would it be a little cleaner/more robust if we didn't assume only one
Xvnc instance was running and instead write the pid of the process we
start to a file and use that file to check the status?

Regards,

Joshua

</pre>
</blockquote>
<div><br>
</div>
<div>The vncserver program is a shell script and uses :1 as the default display.</div>
<div><br>
</div>
<div>The pid of Xvnc is written to a file already. The problem is, if Xvmc crashes, the pid file (and lock file) are left around, so just looking at the pid file existance, you can't tell if it's actually running or not.</div>
</blockquote><div><br>
</div><div>Can we read the pid from the pidfile and do the tidy up if the process isn't running? My main concern here is that we assume only a single instance of Xvnc is running, I'm not sure if that is a safe assumption to make?</div><div><br></div><div>Thanks,</div><div><br></div><div>Joshua</div><div><br></div><blockquote type="cite">
<div>&nbsp; &nbsp; - Bill</div>
<div><br>
</div>
<blockquote type="cite">
<pre><blockquote type="cite">
+fi
diff --git a/lib/python2.7/site-
packages/autobuilder/buildsteps/RunESDKSanityTests.py
b/lib/python2.7/site-
packages/autobuilder/buildsteps/RunESDKSanityTests.py
index 7471d3d..c16c8c2 100644
--- a/lib/python2.7/site-
packages/autobuilder/buildsteps/RunESDKSanityTests.py
+++ b/lib/python2.7/site-
packages/autobuilder/buildsteps/RunESDKSanityTests.py
@@ -47,8 +47,7 @@ class RunESDKSanityTests(BitbakeShellCommand):
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;layerversion = self.getProperty("layerversion_core")
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;command = ""
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;command = command + ". ./oe-init-build-env; "
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;command = command + "netstat -an | grep -q 5901 ;"
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;command = command + 'if [ $? -ne 0 ]; then echo "Starting a
VNC server on :1"; vncserver :1; else echo "Will use a VNC server
already running on :1"; fi;'
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;command = command + "checkvnc; "
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if layerversion and int(layerversion) &gt;= 7:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;command = command + "echo 'INHERIT += \"testsdk\"' &gt;&gt;
./conf/auto.conf;"
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;command = command + "echo 'TEST_QEMUBOOT_TIMEOUT =
\"1500\"' &gt;&gt; ./conf/auto.conf;"
diff --git a/lib/python2.7/site-
packages/autobuilder/buildsteps/RunOeSelftest.py
b/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py
index 809bcc3..84d32fe 100644
--- a/lib/python2.7/site-
packages/autobuilder/buildsteps/RunOeSelftest.py
+++ b/lib/python2.7/site-
packages/autobuilder/buildsteps/RunOeSelftest.py
@@ -31,8 +31,7 @@ class RunOeSelftest(ShellCommand):
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def start(self):
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;self.command = ""
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;self.command += ". ./oe-init-build-env; "
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;self.command += "netstat -an | grep -q 5901 ;"
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;self.command += "if [ $? -ne 0 ]; then echo 'Starting a VNC
server on :1'; vncserver :1; else echo 'Will use a VNC server already
running on :1'; fi;"
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;self.command += "checkvnc; "
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if self.tests == None:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;self.command += "if [ -d ../meta-selftest ]; then export
DISPLAY=:1; oe-selftest --run-all-tests; else echo 'Skipping step -
no meta-selftest layer here'; fi"
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else:
diff --git a/lib/python2.7/site-
packages/autobuilder/buildsteps/RunSDKSanityTests.py
b/lib/python2.7/site-
packages/autobuilder/buildsteps/RunSDKSanityTests.py
index 9b6eb5b..6fb3127 100644
--- a/lib/python2.7/site-
packages/autobuilder/buildsteps/RunSDKSanityTests.py
+++ b/lib/python2.7/site-
packages/autobuilder/buildsteps/RunSDKSanityTests.py
@@ -47,8 +47,7 @@ class RunSDKSanityTests(BitbakeShellCommand):
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;layerversion = self.getProperty("layerversion_core")
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;command = ""
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;command = command + ". ./oe-init-build-env; "
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;command = command + "netstat -an | grep -q 5901 ;"
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;command = command + 'if [ $? -ne 0 ]; then echo "Starting a
VNC server on :1"; vncserver :1; else echo "Will use a VNC server
already running on :1"; fi;'
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;command = command + "checkvnc; "
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if layerversion and int(layerversion) &gt;= 6:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;command = command + "echo 'INHERIT += \"testimage\"' &gt;&gt;
./conf/auto.conf;"
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;command = command + "echo 'TEST_QEMUBOOT_TIMEOUT =
\"1500\"' &gt;&gt; ./conf/auto.conf;"
diff --git a/lib/python2.7/site-
packages/autobuilder/buildsteps/RunSanityTests.py
b/lib/python2.7/site-
packages/autobuilder/buildsteps/RunSanityTests.py
index 4fa6dac..81e20cd 100644
--- a/lib/python2.7/site-
packages/autobuilder/buildsteps/RunSanityTests.py
+++ b/lib/python2.7/site-
packages/autobuilder/buildsteps/RunSanityTests.py
@@ -48,8 +48,7 @@ class RunSanityTests(BitbakeShellCommand):
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;distro = self.getProperty("DISTRO")
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;command = ""
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;command = command + ". ./oe-init-build-env; "
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;command = command + "netstat -an | grep -q 5901 ;"
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;command = command + 'if [ $? -ne 0 ]; then echo "Starting a
VNC server on :1"; vncserver :1; else echo "Will use a VNC server
already running on :1"; fi;'
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;command = command + "checkvnc; "
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if distro == "poky-lsb" and layerversion and
int(layerversion) &lt; 6:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;command = "echo 'Skipping step.'"
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;elif layerversion and int(layerversion) &gt; 1:
</blockquote></pre>
</blockquote>


</blockquote></body></html>

--=-azkBcNSVQwmgOwU/QkWf--
