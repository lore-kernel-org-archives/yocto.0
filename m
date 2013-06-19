Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-ve0-f175.google.com (mail-ve0-f175.google.com
	[209.85.128.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF307E014E2
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 06:11:09 -0700 (PDT)
Received: by mail-ve0-f175.google.com with SMTP id da11so3958753veb.20
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 06:11:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:content-type;
	bh=c+MbLYWAmrYpCuV740zSJ17LHTVJoCYaU3U9oLvFDYU=;
	b=Z19dASAyWNamkenx68Y4rY9i4Va68nFUrbHI6EMgWR+FMhWtCI28Mq2lxmZ36303LU
	J4wpIt093FHaTZqNKdaOgcH2PJG6goxmxlGveTa9FruTw66o6u4OHK8KzZCaCh/YYdxH
	Tb7KkqZRwlI60AZqbsi5qZZVhyYi4ORTy1i8RTzw3SVAZ3FpLVGxm70JOcs2mgy81VzY
	QXnWd4UyypgHDC/EZoM0d71CHiId39GM5DIbcPSyOpO3JI8jtDy2I5fwh5Q+546QtnF6
	Q732ErkxOQio0RWFCVc139BfXbk9B61luhOy2pt0wishJL5r66JK+V3ZbdneoaU38vk8
	sPBA==
MIME-Version: 1.0
X-Received: by 10.52.164.227 with SMTP id yt3mr740399vdb.107.1371647468250;
	Wed, 19 Jun 2013 06:11:08 -0700 (PDT)
Sender: satyaswaroop.damarla@gmail.com
Received: by 10.52.179.33 with HTTP; Wed, 19 Jun 2013 06:11:08 -0700 (PDT)
In-Reply-To: <CAJTo0LbzcSMRwoowq00MZr1G=+Vo-M6=VA=6HRuTBf6YMiBnAg@mail.gmail.com>
References: <CAFMfyzKMgx_6gJLO13ei7nr3fxaJg0-A3nG0=BCWQk5rH9p4TQ@mail.gmail.com>
	<CAJTo0LbzcSMRwoowq00MZr1G=+Vo-M6=VA=6HRuTBf6YMiBnAg@mail.gmail.com>
Date: Wed, 19 Jun 2013 15:11:08 +0200
X-Google-Sender-Auth: HaBpvXeVVpv-s0U6V6KTT4BYJ0c
Message-ID: <CAFMfyz+YoRDJ-5sC3ayaD+8oiY8rHyUWfyJnixcXbCsngYDUcA@mail.gmail.com>
From: DAMARLA Satya Swaroop <swaroop.damarla@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Toolchain... Issues with systemd (probably)
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
X-List-Received-Date: Wed, 19 Jun 2013 13:11:12 -0000
Content-Type: multipart/alternative; boundary=001a11c206921a2c5904df819099

--001a11c206921a2c5904df819099
Content-Type: text/plain; charset=ISO-8859-1

Yes... I thought the same and so, I made two build directories , one for
sysvinit and the other for systemd and the errors I get abosulte no error
when I try to *populate_sdk* under sysvinit but I get the following errors
when I run the same under systemd.

*| The following packages have unmet dependencies:*
*|  udev-dev : Depends: udev (= 182-r7) but 1:204-r0 is to be installed*
*|             Recommends: libusb-dev but it is not installable*
*|             Recommends: module-init-tools-dev but it is not installable*
*|             Recommends: libkmod-dev but it is not installable*
*| E: Unable to correct problems, you have held broken packages.*
*| DEBUG: Python function do_populate_sdk finished*
*| ERROR: Function failed: populate_sdk_image (log file is located at
/home/damarla/openYocto/poky/buildSmartCPUsystemd/tmp/work/smartcpu-poky-linux-gnueabi/rootfs-smartcpu-sdk/1.0-r0/temp/log.do_populate_sdk.17015)
*
*ERROR: Task 10
(/home/damarla/openYocto/poky/meta-skidata/recipes-smartcpu/images/
rootfs-smartcpu-sdk.bb, do_populate_sdk) failed with exit code '1'*
*NOTE: Tasks Summary: Attempted 4961 tasks of which 4960 didn't need to be
rerun and 1 failed.*
*
*
*Summary: 1 task failed:*
*  /home/damarla/openYocto/poky/meta-skidata/recipes-smartcpu/images/
rootfs-smartcpu-sdk.bb, do_populate_sdk*
*Summary: There was 1 ERROR message shown, returning a non-zero exit code.*
*
*
* *I don't understand why I dont get an error with sysvinit and get an
error here....


On Wed, Jun 19, 2013 at 2:11 PM, Burton, Ross <ross.burton@intel.com> wrote:

> On 19 June 2013 13:08, DAMARLA Satya Swaroop <swaroop.damarla@gmail.com>
> wrote:
> > I think I had to open the issue as its not closed... Here is more
> > clarity....
> >
> > The issue is I decided the problem may be with init_manager. I did two
> > builds one with sysvinit using traditional Poky distro and other one is
> > uisng systemd using new distribution which is different as we need a new
> > distribution for using systemd
> >
> > .. I didno t get any errors when i build using bitbake -c populate_sdk
> > rootfs-smartcpu with sysvinit and got build errors using systemd...
> >
> > Any possible resons what could have caused failure to build the
> toolchain?
>
> It really helps when you tell us what the errors are.
>
> Note that changing DISTRO_FEATURES in an existing build directory
> isn't supported and may well cause problems.
>
> Ross
>

--001a11c206921a2c5904df819099
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes... I thought the same and so, I made two build directo=
ries , one for sysvinit and the other for systemd and the errors I get abos=
ulte no error when I try to <i>populate_sdk</i>=A0under sysvinit but I get =
the following errors when I run the same under systemd.<div>
<br></div><div><div><i>| The following packages have unmet dependencies:</i=
></div><div><i>| =A0udev-dev : Depends: udev (=3D 182-r7) but 1:204-r0 is t=
o be installed</i></div><div><i>| =A0 =A0 =A0 =A0 =A0 =A0 Recommends: libus=
b-dev but it is not installable</i></div>
<div><i>| =A0 =A0 =A0 =A0 =A0 =A0 Recommends: module-init-tools-dev but it =
is not installable</i></div><div><i>| =A0 =A0 =A0 =A0 =A0 =A0 Recommends: l=
ibkmod-dev but it is not installable</i></div><div><i>| E: Unable to correc=
t problems, you have held broken packages.</i></div>
<div><i>| DEBUG: Python function do_populate_sdk finished</i></div><div><i>=
| ERROR: Function failed: populate_sdk_image (log file is located at /home/=
damarla/openYocto/poky/buildSmartCPUsystemd/tmp/work/smartcpu-poky-linux-gn=
ueabi/rootfs-smartcpu-sdk/1.0-r0/temp/log.do_populate_sdk.17015)</i></div>
<div><i>ERROR: Task 10 (/home/damarla/openYocto/poky/meta-skidata/recipes-s=
martcpu/images/<a href=3D"http://rootfs-smartcpu-sdk.bb">rootfs-smartcpu-sd=
k.bb</a>, do_populate_sdk) failed with exit code &#39;1&#39;</i></div><div>
<i>NOTE: Tasks Summary: Attempted 4961 tasks of which 4960 didn&#39;t need =
to be rerun and 1 failed.</i></div><div><i><br></i></div><div><i>Summary: 1=
 task failed:</i></div><div><i>=A0 /home/damarla/openYocto/poky/meta-skidat=
a/recipes-smartcpu/images/<a href=3D"http://rootfs-smartcpu-sdk.bb">rootfs-=
smartcpu-sdk.bb</a>, do_populate_sdk</i></div>
<div><i>Summary: There was 1 ERROR message shown, returning a non-zero exit=
 code.</i></div></div><div><i><br></i></div><div style><i>=A0</i>I don&#39;=
t understand why I dont get an error with sysvinit and get an error here...=
.</div>
</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed,=
 Jun 19, 2013 at 2:11 PM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;<=
/span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On 1=
9 June 2013 13:08, DAMARLA Satya Swaroop &lt;<a href=3D"mailto:swaroop.dama=
rla@gmail.com">swaroop.damarla@gmail.com</a>&gt; wrote:<br>

&gt; I think I had to open the issue as its not closed... Here is more<br>
&gt; clarity....<br>
&gt;<br>
&gt; The issue is I decided the problem may be with init_manager. I did two=
<br>
&gt; builds one with sysvinit using traditional Poky distro and other one i=
s<br>
&gt; uisng systemd using new distribution which is different as we need a n=
ew<br>
&gt; distribution for using systemd<br>
&gt;<br>
&gt; .. I didno t get any errors when i build using bitbake -c populate_sdk=
<br>
&gt; rootfs-smartcpu with sysvinit and got build errors using systemd...<br=
>
&gt;<br>
&gt; Any possible resons what could have caused failure to build the toolch=
ain?<br>
<br>
</div></div>It really helps when you tell us what the errors are.<br>
<br>
Note that changing DISTRO_FEATURES in an existing build directory<br>
isn&#39;t supported and may well cause problems.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--001a11c206921a2c5904df819099--
