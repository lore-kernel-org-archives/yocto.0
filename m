Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC912E009CD; Mon, 31 Oct 2016 12:21:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.181 listed in dnsbl.sorbs.net]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.181 listed in list.dnswl.org]
Received: from mail-ua0-f181.google.com (mail-ua0-f181.google.com
	[209.85.217.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF725E0098A
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 12:21:21 -0700 (PDT)
Received: by mail-ua0-f181.google.com with SMTP id 20so96333735uak.0
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 12:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=cn8L+mBc39/WlrkqfdOeCM2quAGeDMkNjdLQZi202Zo=;
	b=XkwSstfu7+LM0de6sSf0GNIYGEoIemgJ+/QMDR+wCyUoCC9JXBqSI3oAW0CjhHm1nt
	GRi5ycuN51a5S3w8PDLGMFOerax4wK9jSqc5M4cZ401aMj0d3oGnXe37DcaOYia2Prx3
	tku6O9Yt8qZxQK5VzB157XmcZqrBgbUVgGsEaq/ry8ohTUGRdLk0NdfCOhjSBDoi3+mF
	LofDG84oNANaJKMin/G9ODBY0qM+iQcdBK2XVfdtkyp/5w45gmEk4k2sfYY53Z/6m4++
	Uu8gN1h3UBAKU7325SuDa6r4HJh/pChf8Oiq9funynPgCy8WeVkYz4y/AOPJpdn4FMyC
	rj4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=cn8L+mBc39/WlrkqfdOeCM2quAGeDMkNjdLQZi202Zo=;
	b=CwTjIsDuLv2hcHf/I99KRcJRnj6/EARNoSoCoBKbdwIKtSI9X5qaZW/LhGGmTvuGAA
	CR/hwaCvAEEsB0eK8WAzDUvDHYyD3YeIlqs6EV1Eqn9sD+JRzICY4P9YG5274gDKeyYq
	lW/CHBQdkaovuxc1WXwZSMhGaZtHgo4bNcDZkT51s7NPyuBLAjQOaWds3H7wrFg7SDT9
	X7rhZlS0iJnQmzy77blo+8F/TNdR6kCh9VHToNIKrRhVitP/uaJKBhPFpqptgiuz4Z97
	2FOxSz5MOJ39HaDza/t/ezjSMQyCRYwcUZX0BgoXWhgUTvrNwkfjJwsOrLgFaiYpzmwq
	htNQ==
X-Gm-Message-State: ABUngvee0sur+XLsT0lB0n4bhAI5nlOxclPzMYlIx4T+dUeDb05ZYOg/u/OBCS2H/f17fJczLRaIQ/i5fSGF8w==
X-Received: by 10.159.55.200 with SMTP id q66mr25045874uaq.107.1477941680661; 
	Mon, 31 Oct 2016 12:21:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.5.136 with HTTP; Mon, 31 Oct 2016 12:21:20 -0700 (PDT)
Received: by 10.176.5.136 with HTTP; Mon, 31 Oct 2016 12:21:20 -0700 (PDT)
In-Reply-To: <20161031170537.GI3276@carbonA>
References: <DM2PR08MB7209533987800927B4C9AAD98DF0@DM2PR08MB720.namprd08.prod.outlook.com>
	<20161031170537.GI3276@carbonA>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 31 Oct 2016 12:21:20 -0700
Message-ID: <CAMKF1so3d23Dt08ghP=oGO9CZmUb67=Q_zvxKX9KGC_AL=4+gg@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] Master doesn't seem to be building right...
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
X-List-Received-Date: Mon, 31 Oct 2016 19:21:24 -0000
Content-Type: multipart/alternative; boundary=94eb2c04c8cedff50305402e1cb9

--94eb2c04c8cedff50305402e1cb9
Content-Type: text/plain; charset=UTF-8

For clarity if your workspace is krogoth based used krogoth branch for rpi
layer too. Master has hot incompatible changes which requires morty+ of oe
core

On Oct 31, 2016 10:06 AM, "Andrei Gherzan" <andrei@gherzan.ro> wrote:

> On Fri, Oct 14, 2016 at 03:26:53PM +0000, Frank Earl wrote:
> > It's boggling on the sd card image build.  Attached is the console
> output from the build (Don't need the log, this one's clear from the build
> fail output.) and a dump of the directory structures in
> tmp/deploy/images/raspberrypi2 from my setup.
> >
> > It's choking on trying to put the overlays onto the sd card image:
> >
> > /home/frank/git_repos/guardhat/build/tmp/deploy/
> images/raspberrypi2/Image-hifiberry-amp.dtbo: No such file or directory
> > | WARNING: /home/frank/git_repos/guardhat/build/tmp/work/
> raspberrypi2-poky-linux-gnueabi/gh-base-image/1.0-r0/
> temp/run.do_image_rpi_sdimg.26079:1 exit 1 from 'mcopy -i
> /home/frank/git_repos/guardhat/build/tmp/work/raspberrypi2-poky-linux-
> gnueabi/gh-base-image/1.0-r0/boot.img -s /home/frank/git_repos/
> guardhat/build/tmp/deploy/images/raspberrypi2/Image-${DTB_BASE_NAME}.${DTB_EXT}
> ::overlays/${DTB_BASE_NAME}.${DTB_EXT}'
> >
> >
> > Directory path:
> >
> >   4 -rw-r--r-- 2 frank frank      779 Oct 13 20:27 /home/frank/git_repos/
> guardhat/build/tmp/deploy/images/raspberrypi2/Image-1-4.
> 4.23+git0+c2a1d97553-r0-hifiberry-amp.dtbo-20161014012231.dtb
> >
> > So, the backing file seems to be there...but...
> >
> >     4 lrwxrwxrwx 1 frank frank       71 Oct 13 20:45
> /home/frank/git_repos/guardhat/build/tmp/deploy/images/raspberrypi2/Image-hifiberry-amp.dtbo.dtb
> -> Image-1-4.4.23+git0+c2a1d97553-r0-hifiberry-amp.dtbo-20161014012231.dtb
> >
> >
> > Heh...  Something's not QUITE right there.  The packager is looking for
> .dtbo's and we're symlinking .dtb's...    I'm looking through the path
> trying to understand how it's setting the 'latest-build' symlinks, but if
> someone actually has a hint for me, it'd be appreciated.  :-D
> >
> >
> >
> > Frank Earl
> >
> >
> >
> > Frank Earl
> >
> >
> >
> > Legal Disclaimer:
> > The information contained in this message may be privileged and
> confidential. It is intended to be read only by the individual or entity to
> whom it is addressed or by their designee. If the reader of this message is
> not the intended recipient, you are on notice that any distribution of this
> message, in any form, is strictly prohibited. If you have received this
> message in error, please immediately notify the sender and delete or
> destroy any copy of this message!
>
> > Loading cache...done.
> > Loaded 2741 entries from dependency cache.
> > WARNING: No recipes available for:
> >   /home/frank/git_repos/guardhat/build/../meta-gh/
> recipes-bsp/u-boot/u-boot-ti-staging_2015.07.bbappend
> > NOTE: Resolving any missing task queue dependencies
> >
> > Build Configuration:
> > BB_VERSION        = "1.30.0"
> > BUILD_SYS         = "x86_64-linux"
> > NATIVELSBSTRING   = "universal"
> > TARGET_SYS        = "arm-poky-linux-gnueabi"
> > MACHINE           = "raspberrypi2"
> > DISTRO            = "poky"
> > DISTRO_VERSION    = "2.1.1"
> > TUNE_FEATURES     = "arm armv7ve vfp thumb neon vfpv4
> callconvention-hard cortexa7"
> > TARGET_FPU        = "hard"
> > meta
> > meta-poky
> > meta-yocto-bsp    = "krogoth:e93596fe74927e2e2f4dd7f671994ccb9744cff8"
> > meta-linaro-toolchain = "krogoth:85faf6c6824597e7fd9e2d35fc9d8d
> a2e9f90bc7"
> > meta-oe
> > meta-filesystems
> > meta-networking
> > meta-multimedia
> > meta-initramfs
> > meta-systemd
> > meta-python       = "krogoth:851a064b53dca3b14dd33eaaaca9573b1a36bf0e"
> > meta-telephony    = "HEAD:8cf5a67850adf270bc2fdb4c0ed708b0ba037670"
> > meta-gh           = "master:12dc12456e7f6f486ca2815603c5f21f74c2d2c2"
> > meta-ti           = "master:6cb779a6ba1b0693f6bf82777e1a333effe6fca5"
> > meta-raspberrypi  = "master:05be947a31df873405cdd70ada210c9f7f7b132f"
> >
>
> I see that you are using master of meta-raspberrypi. Can you try with
> the krogoth branch, please?
>
> --
> Andrei Gherzan
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--94eb2c04c8cedff50305402e1cb9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">For clarity if your workspace is krogoth based used krogoth =
branch for rpi layer too. Master has hot incompatible changes which require=
s morty+ of oe core</p>
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Oct 31, 2016 1=
0:06 AM, &quot;Andrei Gherzan&quot; &lt;<a href=3D"mailto:andrei@gherzan.ro=
">andrei@gherzan.ro</a>&gt; wrote:<br type=3D"attribution"><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">On Fri, Oct 14, 2016 at 03:26:53PM +0000, Frank Earl wrote:<=
br>
&gt; It&#39;s boggling on the sd card image build.=C2=A0 Attached is the co=
nsole output from the build (Don&#39;t need the log, this one&#39;s clear f=
rom the build fail output.) and a dump of the directory structures in tmp/d=
eploy/images/raspberrypi2 from my setup.<br>
&gt;<br>
&gt; It&#39;s choking on trying to put the overlays onto the sd card image:=
<br>
&gt;<br>
&gt; /home/frank/git_repos/<wbr>guardhat/build/tmp/deploy/<wbr>images/raspb=
errypi2/Image-<wbr>hifiberry-amp.dtbo: No such file or directory<br>
&gt; | WARNING: /home/frank/git_repos/<wbr>guardhat/build/tmp/work/<wbr>ras=
pberrypi2-poky-linux-<wbr>gnueabi/gh-base-image/1.0-r0/<wbr>temp/run.do_ima=
ge_rpi_sdimg.<wbr>26079:1 exit 1 from &#39;mcopy -i /home/frank/git_repos/<=
wbr>guardhat/build/tmp/work/<wbr>raspberrypi2-poky-linux-<wbr>gnueabi/gh-ba=
se-image/1.0-r0/<wbr>boot.img -s /home/frank/git_repos/<wbr>guardhat/build/=
tmp/deploy/<wbr>images/raspberrypi2/Image-${<wbr>DTB_BASE_NAME}.${DTB_EXT} =
::overlays/${DTB_BASE_NAME}.${<wbr>DTB_EXT}&#39;<br>
&gt;<br>
&gt;<br>
&gt; Directory path:<br>
&gt;<br>
&gt;=C2=A0 =C2=A04 -rw-r--r-- 2 frank frank=C2=A0 =C2=A0 =C2=A0 779 Oct 13 =
20:27 /home/frank/git_repos/<wbr>guardhat/build/tmp/deploy/<wbr>images/rasp=
berrypi2/Image-1-4.<wbr>4.23+git0+c2a1d97553-r0-<wbr>hifiberry-amp.dtbo-<wb=
r>20161014012231.dtb<br>
&gt;<br>
&gt; So, the backing file seems to be there...but...<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A04 lrwxrwxrwx 1 frank frank=C2=A0 =C2=A0 =C2=A0 =C2=
=A071 Oct 13 20:45 /home/frank/git_repos/<wbr>guardhat/build/tmp/deploy/<wb=
r>images/raspberrypi2/Image-<wbr>hifiberry-amp.dtbo.dtb -&gt; Image-1-4.4.2=
3+git0+<wbr>c2a1d97553-r0-hifiberry-amp.<wbr>dtbo-20161014012231.dtb<br>
&gt;<br>
&gt;<br>
&gt; Heh...=C2=A0 Something&#39;s not QUITE right there.=C2=A0 The packager=
 is looking for .dtbo&#39;s and we&#39;re symlinking .dtb&#39;s...=C2=A0 =
=C2=A0 I&#39;m looking through the path trying to understand how it&#39;s s=
etting the &#39;latest-build&#39; symlinks, but if someone actually has a h=
int for me, it&#39;d be appreciated.=C2=A0 :-D<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Frank Earl<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Frank Earl<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Legal Disclaimer:<br>
&gt; The information contained in this message may be privileged and confid=
ential. It is intended to be read only by the individual or entity to whom =
it is addressed or by their designee. If the reader of this message is not =
the intended recipient, you are on notice that any distribution of this mes=
sage, in any form, is strictly prohibited. If you have received this messag=
e in error, please immediately notify the sender and delete or destroy any =
copy of this message!<br>
<br>
&gt; Loading cache...done.<br>
&gt; Loaded 2741 entries from dependency cache.<br>
&gt; WARNING: No recipes available for:<br>
&gt;=C2=A0 =C2=A0/home/frank/git_repos/<wbr>guardhat/build/../meta-gh/<wbr>=
recipes-bsp/u-boot/u-boot-ti-<wbr>staging_2015.07.bbappend<br>
&gt; NOTE: Resolving any missing task queue dependencies<br>
&gt;<br>
&gt; Build Configuration:<br>
&gt; BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.30.0&quot;<br>
&gt; BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-linux&quot=
;<br>
&gt; NATIVELSBSTRING=C2=A0 =C2=A0=3D &quot;universal&quot;<br>
&gt; TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm-poky-linux-gnueabi=
&quot;<br>
&gt; MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;raspberrypi2=
&quot;<br>
&gt; DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;poky&quot;<b=
r>
&gt; DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot;2.1.1&quot;<br>
&gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0=3D &quot;arm armv7ve vfp thumb neon =
vfpv4 callconvention-hard cortexa7&quot;<br>
&gt; TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;hard&quot;<br>
&gt; meta<br>
&gt; meta-poky<br>
&gt; meta-yocto-bsp=C2=A0 =C2=A0 =3D &quot;krogoth:<wbr>e93596fe74927e2e2f4=
dd7f671994c<wbr>cb9744cff8&quot;<br>
&gt; meta-linaro-toolchain =3D &quot;krogoth:<wbr>85faf6c6824597e7fd9e2d35f=
c9d8d<wbr>a2e9f90bc7&quot;<br>
&gt; meta-oe<br>
&gt; meta-filesystems<br>
&gt; meta-networking<br>
&gt; meta-multimedia<br>
&gt; meta-initramfs<br>
&gt; meta-systemd<br>
&gt; meta-python=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;krogoth:<wbr>851a064b5=
3dca3b14dd33eaaaca957<wbr>3b1a36bf0e&quot;<br>
&gt; meta-telephony=C2=A0 =C2=A0 =3D &quot;HEAD:<wbr>8cf5a67850adf270bc2fdb=
4c0ed708<wbr>b0ba037670&quot;<br>
&gt; meta-gh=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;master:<wbr>=
12dc12456e7f6f486ca2815603c5f2<wbr>1f74c2d2c2&quot;<br>
&gt; meta-ti=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;master:<wbr>=
6cb779a6ba1b0693f6bf82777e1a33<wbr>3effe6fca5&quot;<br>
&gt; meta-raspberrypi=C2=A0 =3D &quot;master:<wbr>05be947a31df873405cdd70ad=
a210c<wbr>9f7f7b132f&quot;<br>
&gt;<br>
<br>
I see that you are using master of meta-raspberrypi. Can you try with<br>
the krogoth branch, please?<br>
<br>
--<br>
Andrei Gherzan<br>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div></div>

--94eb2c04c8cedff50305402e1cb9--
