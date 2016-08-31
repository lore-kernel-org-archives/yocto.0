Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B699E009C7; Wed, 31 Aug 2016 13:26:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1B37E009B4
	for <yocto@yoctoproject.org>; Wed, 31 Aug 2016 13:26:23 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 31 Aug 2016 13:26:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,263,1470726000"; 
	d="scan'208,217";a="1033771300"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.7.133])
	by fmsmga001.fm.intel.com with ESMTP; 31 Aug 2016 13:26:20 -0700
Message-ID: <1472675179.2904.21.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 31 Aug 2016 21:26:19 +0100
In-Reply-To: <1471450360.19448.6.camel@linux.intel.com>
References: <1471392559-5756-1-git-send-email-william.c.randle@intel.com>
	<1471449564.3023.11.camel@linux.intel.com>
	<1471450179.2860.57.camel@intel.com>
	<1471450360.19448.6.camel@linux.intel.com>
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
X-List-Received-Date: Wed, 31 Aug 2016 20:26:26 -0000
Content-Type: multipart/alternative; boundary="=-7rEPqHwNHLvSYkRso7cJ"

--=-7rEPqHwNHLvSYkRso7cJ
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2016-08-17 at 17:12 +0100, Joshua G Lock wrote:
> On Wed, 2016-08-17 at 16:09 +0000, Randle, William C wrote:
> > On Wed, 2016-08-17 at 16:59 +0100, Joshua G Lock wrote:
> > 
> > > On Tue, 2016-08-16 at 17:09 -0700, Bill Randle wrote:
> > > > > > > > Use a common script to check for a running vnc server, and if
not
> > > > running
> > > > cleanup dangling lock files and restart the server.
> > > > 
> > > > [YOCTO #8210]
> > > > 
> > > > > > > > Signed-off-by: Bill Randle <william.c.randle@intel.com>
> > > > ---
> > > > > > > >  bin/checkvnc                                                  
 | 10
> > > > ++++++++++
> > > > > > > >  .../site-packages/autobuilder/buildsteps/RunESDKSanityTests.py 
|  3
> > > > +--
> > > > > > > >  .../site-
packages/autobuilder/buildsteps/RunOeSelftest.py      |  3
> > > > +--
> > > > > > > >  .../site-
packages/autobuilder/buildsteps/RunSDKSanityTests.py  |  3
> > > > +--
> > > > > > > >  .../site-
packages/autobuilder/buildsteps/RunSanityTests.py     |  3
> > > > +--
> > > >  5 files changed, 14 insertions(+), 8 deletions(-)
> > > >  create mode 100755 bin/checkvnc
> > > > 
> > > > diff --git a/bin/checkvnc b/bin/checkvnc
> > > > new file mode 100755
> > > > index 0000000..574ba48
> > > > --- /dev/null
> > > > +++ b/bin/checkvnc
> > > > @@ -0,0 +1,10 @@
> > > > +#!/bin/sh
> > > > +#
> > > > > > > > +# check if vnc server is running, and if not, cleanup and
restart
> > > > +#
> > > > +pid=$(pidof Xvnc)
> > > > +if [[ $? != 0 ]]; then
> > > > +    echo "Xvnc not running, attempting restart"
> > > > +    vncserver -kill :1
> > > > +    vncserver
> > > 
> > > > > > The vncserver is currently started with `vncserver :1`, whereas
this
> > > script just calls `vncserver` — is that intentional/desirable?
> > > 
> > > > > > Would it be a little cleaner/more robust if we didn't assume only
one
> > > > > > Xvnc instance was running and instead write the pid of the
process we
> > > start to a file and use that file to check the status?
> > > 
> > > Regards,
> > > 
> > > Joshua
> > > 
> > > 
> > 
> > 
> > 
> > 
> > > > The vncserver program is a shell script and uses :1 as the default
display.
> > 
> > 
> > 
> > 
> > 
> > > > > > > > The pid of Xvnc is written to a file already. The problem is, if
Xvmc crashes, the pid file (and lock file) are left around, so just
looking at the pid file existance, you can't tell if it's actually
running or not.
> > 
> 
> 
> > > > Can we read the pid from the pidfile and do the tidy up if the
process isn't running? My main concern here is that we assume only a
single instance of Xvnc is running, I'm not sure if that is a safe
assumption to make?

It turns out we implicitly assume only one vncserver is running (on
display 1) in several places throughout the AB codebase. Therefore I've
pushed this change to master.

Thanks,

Joshua

--=-7rEPqHwNHLvSYkRso7cJ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body><div>On Wed, 2016-08-17 at 17:12 +0100, Joshua G Lock wrote:</div><blockquote type="cite"><div>On Wed, 2016-08-17 at 16:09 +0000, Randle, William C wrote:</div><blockquote type="cite">
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
</div><div>Can we read the pid from the pidfile and do the tidy up if the process isn't running? My main concern here is that we assume only a single instance of Xvnc is running, I'm not sure if that is a safe assumption to make?</div></blockquote><div><br></div><div>It turns out we implicitly assume only one vncserver is running (on display 1) in several places throughout the AB codebase. Therefore I've pushed this change to master.</div><div><br></div><div>Thanks,</div><div><br></div><div>Joshua</div></body></html>

--=-7rEPqHwNHLvSYkRso7cJ--
