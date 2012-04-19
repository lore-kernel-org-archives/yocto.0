Return-Path: <agikling@lasx.com>
Received: from mx.cbeyond.com (mx.cbeyond.com [66.180.96.58])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3165EE0030B
	for <yocto@yoctoproject.org>; Thu, 19 Apr 2012 10:54:39 -0700 (PDT)
X-SBRS: 4.5
X-HAT: Sender Group CBEYOND_SYSTEMS, Policy $CBEYOND_RELAY applied.
X-Hostname: imx02dal.sys.cbeyond.net
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AncDACBQkE9CtGAbkWdsb2JhbABDsWYBAQEBFBIUJ4IQJxM/EgEINkImAQQODYgHC7sRkARjBJIJhHiSLA
X-IronPort-AV: E=Sophos;i="4.75,447,1330923600"; d="scan'208";a="399444449"
Received: from exchange.cbeyondonline.net (HELO hub402dal.mmeprod.cbeyond)
	([66.180.96.27])
	by mx.cbeyond.com with ESMTP; 19 Apr 2012 13:54:38 -0400
Received: from EXMBX05.mmeprod.cbeyond ([192.168.13.77]) by
	hub402dal.mmeprod.cbeyond ([192.168.13.100]) with mapi; Thu, 19 Apr 2012
	13:54:38 -0400
From: Andy Gikling <agikling@lasx.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 19 Apr 2012 13:54:36 -0400
Thread-Topic: configure: error: C compiler cannot create executables when
Thread-Index: Ac0eSUcBqvBdxeBLTMqjLYkTj0GqlA==
Message-ID: <23FC35CD1508674EBB20455EB700B1B4BCE885D88B@EXMBX05.mmeprod.cbeyond>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "woailinux@hotmail.com" <woailinux@hotmail.com>
Subject: Re: configure: error: C compiler cannot create executables when
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
X-List-Received-Date: Thu, 19 Apr 2012 17:54:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Jack,

I've been burned by this same type of issue several times during different =
trial runs of the Yocto quick start and when running through the ADT Manual=
.  Here are a few things to try / things I've done wrong in the past / comm=
on pitfalls:

1.  Be very sure your tool chain is correct for your target.  You need to k=
now if you are "cross compiling" or not!  Look up what that means if you ar=
e unfamiliar.  For example, if you have 32Bit host and a 64bit target the p=
re-built toolchain you should download is "poky-eglibc-i686-x86_64-toolchai=
n-gmae-1.1.1.tar.bz2" - these premade toolchains can be found at http://dow=
nloads.yoctoproject.org/releases/yocto/yocto-1.1.1/toolchain/
As another example, if you are trying to run the quick start with qemux86 a=
s the target emulator you should get "poky-eglibc-i686-i586-toolchain-gmae-=
1.1.1.tar.bz2" from the above site.  Or see the ADT Manual for details on o=
ther ways to get and configure your build tools.

2.  Once you get a toolchain, make sure it's contents end up in /opt/poky/v=
ersion/ folder where version is the Yocto version your using.  v1.1.1 is th=
e latest and 1.2 is coming soon.  It is important to know what version of Y=
octo you are trying to use! (Obviously... but note in the steps below that =
it's easy to get the wrong version of the Eclipse plugin for Yocto.)

3.  When downloading the Eclipse Yocto plugin I have found it's easiest to =
simply download the ...archive.zip version of the Yocto v1.1.1 plugin from =
this address: http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.1/=
eclipse-plugin/indigo/ - then in Eclipse, when adding that plugin, don't en=
ter a software site address, simply click the "Archive" button (the dialog =
will look for a .zip file) then point at the plugin's .zip file you downloa=
d.

4.  It's easy to miss the step in the ADT manual about how to configure the=
 Yocto plugin once you've installed it.  (Also make sure you've correctly i=
nstalled all the other add-on software described in the Eclipse setup proce=
dure at the end of the ADT manual.  Note the WinCE software on that list do=
esn't seem to ever install correctly.  I haven't needed it though - should =
be able to skip it.)  The ADT Manual tell you to go to Window->Preferences =
and you'll see the Yocto ADT settings on the bottom of the column on the le=
ft.  You should chose Standalone pre-built tollchain if you downloaded it l=
ike I described above.  "Toolchain Root Location" should be "/opt/poky/1.1.=
1" and "Sysroot Location" should be "/opt/poky/1.1.1/targetSysrootFolder" w=
here targetSysrootFolder will change depending on what toolchain you've dow=
nloaded.  This is supposed to be a folder that mimic's what's going to be a=
vailable on the target when the software you're developing is running there=
.  It includes headers, libraries etc...  Pointing at the right sysroot loc=
ation is very important.  It will own you if you don't!

5.  There's a nice 1 liner in the quick start manual after you've opened a =
new hello world template that's easily missed!  One you've open your Yocto =
hello world template you need to run the autotools, but this is not suppose=
d to be done from the command line.  If your Yocto ADT plugin is setup corr=
ectly, and you've selected the new hello world project in Eclipse's Project=
 Explorer, you will be able to get to the menu option Project->Reconfigure =
Project.  This runs the autotools for you.  In the console you should see t=
hat this completed successfully.  Once it's completed successfully, you sho=
uld see a Makefile in hello world's /src/ folder.  It was not there before =
and was generated by calling Reconfigure Project.  Now you should be able t=
o right click your project and build it.

Hope this helps!  Let us know.

~Andy Gikling
LasX Industries Inc.=20
=20


