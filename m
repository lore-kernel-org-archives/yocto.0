Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEB37E00346
	for <yocto@yoctoproject.org>; Tue, 25 Sep 2012 13:51:27 -0700 (PDT)
Received: from [109.224.129.17] (helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1TGc6E-0000xU-D8
	for yocto@yoctoproject.org; Tue, 25 Sep 2012 21:51:22 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Tue, 25 Sep 2012 21:51:19 +0100
Message-Id: <CEE73346-DC1B-4CB2-9D51-A2D47705ADFC@keylevel.com>
To: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: How can I build gstreamer and its plugins without x11?
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
X-List-Received-Date: Tue, 25 Sep 2012 20:51:28 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I'm trying to build gstreamer to run on a system that does not have x11 =
(for audio and to stream video). It seems as if =
gst-plugins-good-id3demux needs x11:

NOTE: Resolving any missing task queue dependencies
ERROR: Nothing PROVIDES 'virtual/libx11' (but =
/media/SSD-RAID/poky-git/meta/recipes-support/consolekit/consolekit_0.4.5.=
bb DEPENDS on or otherwise requires it)
ERROR: libx11-nativesdk PROVIDES virtual/libx11 but was skipped: 'x11' =
not in DISTRO_FEATURES
ERROR: libx11-trim PROVIDES virtual/libx11 but was skipped: 'x11' not in =
DISTRO_FEATURES
ERROR: libx11 PROVIDES virtual/libx11 but was skipped: 'x11' not in =
DISTRO_FEATURES
ERROR: libx11-diet PROVIDES virtual/libx11 but was skipped: 'x11' not in =
DISTRO_FEATURES
NOTE: Runtime target 'gst-plugins-good-id3demux' is unbuildable, =
removing...
Missing or unbuildable dependency chain was: =
['gst-plugins-good-id3demux', 'pulseaudio', 'consolekit', =
'virtual/libx11']
ERROR: Required build target 'task-sjs' has no buildable providers.
Missing or unbuildable dependency chain was: ['task-sjs', =
'gst-plugins-good-id3demux', 'pulseaudio', 'consolekit', =
'virtual/libx11']

Is there an easy way to build gstreamer without x11? I tried removing =
the x11 dependency from consolekit, but I then had gtk+ fail because =
cairo-xlib wasn't built... (this may be due to a different gst plugin =
issue).

Chris Tapp

opensource@keylevel.com
www.keylevel.com




