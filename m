Return-Path: <simon.bolek@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82794E0070B; Sun,  1 Feb 2015 09:56:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (simon.bolek[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.169 listed in list.dnswl.org]
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F05BDE00596
	for <yocto@yoctoproject.org>; Sun,  1 Feb 2015 09:56:06 -0800 (PST)
Received: by mail-wi0-f169.google.com with SMTP id h11so11602466wiw.0
	for <yocto@yoctoproject.org>; Sun, 01 Feb 2015 09:56:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=wXFf67dji/FGqMgMShj0KDqFeE42F9rpA1UxjL8voNg=;
	b=Rpq2RkijF8TFArm6OBBhyyXqz9Jhl9SVKG0T3d+kgaGOxSkL3xieNwLlIzL7Nw0jzZ
	d+aAbVA/XvgN8rZcGBvIT0NWlcjvbCyvS5rBr2jmJORVmTMUbtNBUPSTrZb5LNqM1dp7
	N+IQtajhTxEAjUBqqfLVC97OCZX70rtVPpFOUUz4osw9NcHCJDJq18ZDM4/ZV2ta8lDd
	h4Cnb8o4prKYvqhNSi+7svgD/HDiX+wK/bu03REa6EmvSsEHjkhCRUnlwpqYXgV4koyj
	WO8TgiqXwUwwgOt8CCsbaCi+HsOw5h+uu8Na261GUs0UcsCsuFSlPv2mcyVjdoYlNLSH
	OI2Q==
X-Received: by 10.194.76.73 with SMTP id i9mr35157736wjw.93.1422813365476;
	Sun, 01 Feb 2015 09:56:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.27.32.85 with HTTP; Sun, 1 Feb 2015 09:55:45 -0800 (PST)
In-Reply-To: <54CE5E14.3020500@dynamicdevices.co.uk>
References: <dd6db0bfa347b43e563b4d948b0ae128f94f1c16@webmail.adam.com.au>
	<54CE5E14.3020500@dynamicdevices.co.uk>
From: Simon Bolek <simon.bolek@googlemail.com>
Date: Sun, 1 Feb 2015 18:55:45 +0100
Message-ID: <CAEfap_BF2O2q=y5ZxOpZir3zZPY0yky2Guruy-fKARBpPTgq4w@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: yocto@yoctoproject.org, peterengcomau001@adam.com.au
Subject: Re: meta-qt5 problem in yocto 1.7
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
X-List-Received-Date: Sun, 01 Feb 2015 17:56:11 -0000
Content-Type: multipart/alternative; boundary=047d7bb03bda3b2268050e0a8d0d

--047d7bb03bda3b2268050e0a8d0d
Content-Type: text/plain; charset=UTF-8

Thanks!
As for the examples. I cannot help directly, but i would read
log.do_configure etc. files for details. You might find the reason there.
Although I have to say, that my knowledge in yocto is at the beginners
stadium at the moment ;-)

cheers
simon :-)

On Sun, Feb 1, 2015 at 6:10 PM, Alex J Lennon <ajlennon@dynamicdevices.co.uk
> wrote:

>
> On 31/01/2015 19:10, peterengcomau001@adam.com.au wrote:
> >
> > Hi Alex,
> >
> > Thanks for confirming the problem exists.
> > I set QT_MODULE_BRANCH ?= "dev" in
> > meta-qt5/recipes-qt/qt5/qt5-git.inc, but still get the same problem.
> > Do I have the correct file ?
>
> Lachlan,
>
> So I have been building for qemux86 with dizzy,
>
> Build Configuration:
> BB_VERSION        = "1.24.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Ubuntu-14.04"
> TARGET_SYS        = "i586-poky-linux"
> MACHINE           = "qemux86"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.7.1"
> TUNE_FEATURES     = "m32 i586"
> TARGET_FPU        = ""
> meta
> meta-yocto        = "dizzy:9fc095a439c36014c73b3a8f240afba09fe0e4d7"
> meta-oe
> meta-efl
> meta-webserver
> meta-networking   = "dizzy:200f6cafc878d4c26871fc56d21ecc8eaa9aa61b"
> meta-mono         = "master:b73fc7c525cc0068b2ed84fc26b5d2d4d87c6c12"
> meta-gnome
> meta-efl          = "dizzy:200f6cafc878d4c26871fc56d21ecc8eaa9aa61b"
> meta-browser.master = "master:14e4829d716db416f62403ddd0941ab97491d707"
> meta-ruby
> meta-python       = "dizzy:200f6cafc878d4c26871fc56d21ecc8eaa9aa61b"
> meta-qt5.dizzy    = "dizzy:8b0ffbd849203d07164ccfad2535bdb107eecd08"
>
> local.conf is here http://pastebin.com/0t2GFWhu
> bblayers.conf is here http://pastebin.com/CK6dF9f5
>
> Build command is
>
> bitbake -k core-image-minimal
>
> So this fails a few times building, which seems to be related to gcc
> issues, and I've seen on and off for some time.
>
> Afer a few restarts I get to the point where most of it is built and I have
>
> ERROR: Function failed: do_configure (log file is located at
>
> /data_drive/imx6/rootfs_builder/qemux86.dizzy/tmp/work/i586-poky-linux/qtwebkit-examples/5.3.2-r0/temp/log.do_configure.26328)
> ERROR: Logfile of failure stored in:
>
> /data_drive/imx6/rootfs_builder/qemux86.dizzy/tmp/work/i586-poky-linux/qtwebkit-examples/5.3.2-r0/temp/log.do_configure.26328
>
> ERROR: Task 842
> (/data_drive/imx6/rootfs_builder/sources/meta-qt5.dizzy/recipes-qt/qt5/
> qtwebkit-examples_5.3.2.bb,
> do_configure) failed with exit code '1'
> WARNING: Failed to fetch URL
> git://qt.gitorious.org/qt/qtsystems.git;branch=5.3, attempting MIRRORS
> if available
> ERROR: Fetcher failure: Unable to find revision
> aa651c73bf7bc57c1b6b1bfcfa9afe901884a102 in branch 5.3 even from upstream
> ERROR: Function failed: Fetcher failure for URL:
> 'git://qt.gitorious.org/qt/qtsystems.git;branch=5.3'. Unable to fetch
> URL from any source.
> ERROR: Logfile of failure stored in:
>
> /data_drive/imx6/rootfs_builder/qemux86.dizzy/tmp/work/i586-poky-linux/qtsystems/5.3.99+5.4.0-beta1+gitAUTOINC+aa651c73bf-r0/temp/log.do_fetch.26325
> ERROR: Task 756
> (/data_drive/imx6/rootfs_builder/sources/meta-qt5.dizzy/recipes-qt/qt5/
> qtsystems_git.bb,
> do_fetch) failed with exit code '1'
>
> ...
>
> Note from the above that qtbase has built ok without modifications to
> meta-qt5
>
> To double check the qtbase and also to get qtwebkit building I
>
> bitbake -f -c cleansstate qtbase
> bitbake qtbase
>
> This builds OK
>
> ...
>
> Then
>
> bitbake -k core-image-minimal
>
> Gives
>
> ERROR: Task 843
> (/data_drive/imx6/rootfs_builder/sources/meta-qt5.dizzy/recipes-qt/qt5/
> qtwebkit-examples_5.3.2.bb,
> do_compile) failed with exit code '1'
> WARNING: Failed to fetch URL
> git://qt.gitorious.org/qt/qtsystems.git;branch=5.3, attempting MIRRORS
> if available
> ERROR: Fetcher failure: Unable to find revision
> aa651c73bf7bc57c1b6b1bfcfa9afe901884a102 in branch 5.3 even from upstream
> ERROR: Function failed: Fetcher failure for URL:
> 'git://qt.gitorious.org/qt/qtsystems.git;branch=5.3'. Unable to fetch
> URL from any source.
> ERROR: Logfile of failure stored in:
>
> /data_drive/imx6/rootfs_builder/qemux86.dizzy/tmp/work/i586-poky-linux/qtsystems/5.3.99+5.4.0-beta1+gitAUTOINC+aa651c73bf-r0/temp/log.do_fetch.21451
> ERROR: Task 756
> (/data_drive/imx6/rootfs_builder/sources/meta-qt5.dizzy/recipes-qt/qt5/
> qtsystems_git.bb,
> do_fetch) failed with exit code '1'
>
> ...
>
> Changing the branch in qtsystems_git gets qtsystems building
>
> #QT_MODULE_BRANCH = "5.3"
> QT_MODULE_BRANCH = "dev"
>
> ...
>
> I then removed the qtwebkit examples from local.conf as there's some
> strange linker problem there
>
> #    qtwebkit-examples-examples \
>
> I then had to remove the qt examples packages as for some reason they
> aren't getting built at all
>
> # qtbase-examples \
>
> ...
>
> That gets me to the point I get a dizzy root filesystem built. Next I
> need to understand why I am not getting the examples packages built.
>
> Hope that helps somewhat.
>
> Cheers,
>
> Alex
>
>

--047d7bb03bda3b2268050e0a8d0d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks!<br></div>As for the examples. I cannot help d=
irectly, but i would read log.do_configure etc. files for details. You migh=
t find the reason there. Although I have to say, that my knowledge in yocto=
 is at the beginners stadium at the moment ;-)<br><div class=3D"gmail_extra=
"><br></div><div class=3D"gmail_extra">cheers<br>simon :-)<br><br></div><di=
v class=3D"gmail_extra"><div class=3D"gmail_quote">On Sun, Feb 1, 2015 at 6=
:10 PM, Alex J Lennon <span dir=3D"ltr">&lt;<a href=3D"mailto:ajlennon@dyna=
micdevices.co.uk" target=3D"_blank">ajlennon@dynamicdevices.co.uk</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><br>
On 31/01/2015 19:10, <a href=3D"mailto:peterengcomau001@adam.com.au">petere=
ngcomau001@adam.com.au</a> wrote:<br>
&gt;<br>
&gt; Hi Alex,<br>
&gt;<br>
&gt; Thanks for confirming the problem exists.<br>
&gt; I set QT_MODULE_BRANCH ?=3D &quot;dev&quot; in<br>
&gt; meta-qt5/recipes-qt/qt5/qt5-git.inc, but still get the same problem.<b=
r>
&gt; Do I have the correct file ?<br>
<br>
Lachlan,<br>
<br>
So I have been building for qemux86 with dizzy,<br>
<br>
Build Configuration:<br>
BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.24.0&quot;<br>
BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-linux&quot;<br>
NATIVELSBSTRING=C2=A0 =C2=A0=3D &quot;Ubuntu-14.04&quot;<br>
TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;i586-poky-linux&quot;<br>
MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;qemux86&quot;<br>
DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;poky&quot;<br>
DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot;1.7.1&quot;<br>
TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0=3D &quot;m32 i586&quot;<br>
TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;&quot;<br>
meta<br>
meta-yocto=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;dizzy:9fc095a439c36014c73b3=
a8f240afba09fe0e4d7&quot;<br>
meta-oe<br>
meta-efl<br>
meta-webserver<br>
meta-networking=C2=A0 =C2=A0=3D &quot;dizzy:200f6cafc878d4c26871fc56d21ecc8=
eaa9aa61b&quot;<br>
meta-mono=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;master:b73fc7c525cc006=
8b2ed84fc26b5d2d4d87c6c12&quot;<br>
meta-gnome<br>
meta-efl=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;dizzy:200f6cafc878d4c2=
6871fc56d21ecc8eaa9aa61b&quot;<br>
meta-browser.master =3D &quot;master:14e4829d716db416f62403ddd0941ab97491d7=
07&quot;<br>
meta-ruby<br>
meta-python=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;dizzy:200f6cafc878d4c26871f=
c56d21ecc8eaa9aa61b&quot;<br>
meta-qt5.dizzy=C2=A0 =C2=A0 =3D &quot;dizzy:8b0ffbd849203d07164ccfad2535bdb=
107eecd08&quot;<br>
<br>
local.conf is here <a href=3D"http://pastebin.com/0t2GFWhu" target=3D"_blan=
k">http://pastebin.com/0t2GFWhu</a><br>
bblayers.conf is here <a href=3D"http://pastebin.com/CK6dF9f5" target=3D"_b=
lank">http://pastebin.com/CK6dF9f5</a><br>
<br>
Build command is<br>
<br>
bitbake -k core-image-minimal<br>
<br>
So this fails a few times building, which seems to be related to gcc<br>
issues, and I&#39;ve seen on and off for some time.<br>
<br>
Afer a few restarts I get to the point where most of it is built and I have=
<br>
<br>
ERROR: Function failed: do_configure (log file is located at<br>
/data_drive/imx6/rootfs_builder/qemux86.dizzy/tmp/work/i586-poky-linux/qtwe=
bkit-examples/5.3.2-r0/temp/log.do_configure.26328)<br>
ERROR: Logfile of failure stored in:<br>
/data_drive/imx6/rootfs_builder/qemux86.dizzy/tmp/work/i586-poky-linux/qtwe=
bkit-examples/5.3.2-r0/temp/log.do_configure.26328<br>
<br>
ERROR: Task 842<br>
(/data_drive/imx6/rootfs_builder/sources/meta-qt5.dizzy/recipes-qt/qt5/<a h=
ref=3D"http://qtwebkit-examples_5.3.2.bb" target=3D"_blank">qtwebkit-exampl=
es_5.3.2.bb</a>,<br>
do_configure) failed with exit code &#39;1&#39;<br>
WARNING: Failed to fetch URL<br>
git://<a href=3D"http://qt.gitorious.org/qt/qtsystems.git;branch=3D5.3" tar=
get=3D"_blank">qt.gitorious.org/qt/qtsystems.git;branch=3D5.3</a>, attempti=
ng MIRRORS<br>
if available<br>
ERROR: Fetcher failure: Unable to find revision<br>
aa651c73bf7bc57c1b6b1bfcfa9afe901884a102 in branch 5.3 even from upstream<b=
r>
ERROR: Function failed: Fetcher failure for URL:<br>
&#39;git://<a href=3D"http://qt.gitorious.org/qt/qtsystems.git;branch=3D5.3=
" target=3D"_blank">qt.gitorious.org/qt/qtsystems.git;branch=3D5.3</a>&#39;=
. Unable to fetch<br>
URL from any source.<br>
ERROR: Logfile of failure stored in:<br>
/data_drive/imx6/rootfs_builder/qemux86.dizzy/tmp/work/i586-poky-linux/qtsy=
stems/5.3.99+5.4.0-beta1+gitAUTOINC+aa651c73bf-r0/temp/log.do_fetch.26325<b=
r>
ERROR: Task 756<br>
(/data_drive/imx6/rootfs_builder/sources/meta-qt5.dizzy/recipes-qt/qt5/<a h=
ref=3D"http://qtsystems_git.bb" target=3D"_blank">qtsystems_git.bb</a>,<br>
do_fetch) failed with exit code &#39;1&#39;<br>
<br>
...<br>
<br>
Note from the above that qtbase has built ok without modifications to<br>
meta-qt5<br>
<br>
To double check the qtbase and also to get qtwebkit building I<br>
<br>
bitbake -f -c cleansstate qtbase<br>
bitbake qtbase<br>
<br>
This builds OK<br>
<br>
...<br>
<br>
Then<br>
<br>
bitbake -k core-image-minimal<br>
<br>
Gives<br>
<br>
ERROR: Task 843<br>
(/data_drive/imx6/rootfs_builder/sources/meta-qt5.dizzy/recipes-qt/qt5/<a h=
ref=3D"http://qtwebkit-examples_5.3.2.bb" target=3D"_blank">qtwebkit-exampl=
es_5.3.2.bb</a>,<br>
do_compile) failed with exit code &#39;1&#39;<br>
WARNING: Failed to fetch URL<br>
git://<a href=3D"http://qt.gitorious.org/qt/qtsystems.git;branch=3D5.3" tar=
get=3D"_blank">qt.gitorious.org/qt/qtsystems.git;branch=3D5.3</a>, attempti=
ng MIRRORS<br>
if available<br>
ERROR: Fetcher failure: Unable to find revision<br>
aa651c73bf7bc57c1b6b1bfcfa9afe901884a102 in branch 5.3 even from upstream<b=
r>
ERROR: Function failed: Fetcher failure for URL:<br>
&#39;git://<a href=3D"http://qt.gitorious.org/qt/qtsystems.git;branch=3D5.3=
" target=3D"_blank">qt.gitorious.org/qt/qtsystems.git;branch=3D5.3</a>&#39;=
. Unable to fetch<br>
URL from any source.<br>
ERROR: Logfile of failure stored in:<br>
/data_drive/imx6/rootfs_builder/qemux86.dizzy/tmp/work/i586-poky-linux/qtsy=
stems/5.3.99+5.4.0-beta1+gitAUTOINC+aa651c73bf-r0/temp/log.do_fetch.21451<b=
r>
ERROR: Task 756<br>
(/data_drive/imx6/rootfs_builder/sources/meta-qt5.dizzy/recipes-qt/qt5/<a h=
ref=3D"http://qtsystems_git.bb" target=3D"_blank">qtsystems_git.bb</a>,<br>
do_fetch) failed with exit code &#39;1&#39;<br>
<br>
...<br>
<br>
Changing the branch in qtsystems_git gets qtsystems building<br>
<br>
#QT_MODULE_BRANCH =3D &quot;5.3&quot;<br>
QT_MODULE_BRANCH =3D &quot;dev&quot;<br>
<br>
...<br>
<br>
I then removed the qtwebkit examples from local.conf as there&#39;s some<br=
>
strange linker problem there<br>
<br>
#=C2=A0 =C2=A0 qtwebkit-examples-examples \<br>
<br>
I then had to remove the qt examples packages as for some reason they<br>
aren&#39;t getting built at all<br>
<br>
# qtbase-examples \<br>
<br>
...<br>
<br>
That gets me to the point I get a dizzy root filesystem built. Next I<br>
need to understand why I am not getting the examples packages built.<br>
<br>
Hope that helps somewhat.<br>
<br>
Cheers,<br>
<br>
Alex<br>
<br>
</blockquote></div><br></div></div>

--047d7bb03bda3b2268050e0a8d0d--
