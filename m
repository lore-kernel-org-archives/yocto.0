Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.1574.1595613903375330881
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Jul 2020 11:05:08 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: randy.macleod@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE3C7E01EFF; Fri, 24 Jul 2020 11:05:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	NICE_REPLY_A,RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.3 NICE_REPLY_A Looks like a legit reply (A)
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CA14E01EFC
	for <yocto@yoctoproject.org>; Fri, 24 Jul 2020 11:05:01 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 06OI4w0t016024
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Fri, 24 Jul 2020 11:04:58 -0700 (PDT)
Received: from [172.25.44.3] (172.25.44.3) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Fri, 24 Jul
 2020 11:04:57 -0700
Subject: Re: [yocto-builds] Please Help me: v4l2loopback recipe
To: <profecie@gmail.com>, Yocto discussion list <yocto@yoctoproject.org>
References: <a7dC.1595607686218504048.LfGh@lists.yoctoproject.org>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <230c9dde-f766-1b2b-ea25-ef4392a3326b@windriver.com>
Date: Fri, 24 Jul 2020 14:04:55 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <a7dC.1595607686218504048.LfGh@lists.yoctoproject.org>
X-Originating-IP: [172.25.44.3]
Content-Type: multipart/alternative;
	boundary="------------55A4F53D8EC0BD78BF904388"
Content-Language: en-CA

--------------55A4F53D8EC0BD78BF904388
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2020-07-24 12:21 p.m., profecie@gmail.com wrote:
>
> Hi,
>
> I'm begginer on Yocto and I try to add v4l2loopback to my image.Idon't=
=20
> find any recipe to do that so i try to do myself but it's not a success =
:)
>
Hi,

Welcome to Yocto development.

I'm moving this email to the yocto general list.

the yocto-builds list is mainly about automated build reports.


> I download current source on github=20
> (https://github.com/umlaeute/v4l2loopback) and i try to compile with=20
> with recipe
>
> |SUMMARY =3D "V4L2Loopback" DESCRIPTION =3D "v4l2loopback module" LICENS=
E=20
> =3D "GPLv2" LIC_FILES_CHKSUM =3D=20
> "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=3D801f80980d171dd6425610833a22=
dbe6"=20
> # Use local tarball SRC_URI =3D "file://v4l2loopback-master.tar.gz" #=20
> Make sure our source directory (for the build) matches the directory=20
> structure in the tarball S =3D "${WORKDIR}/v4l2loopback-master" inherit=
=20
> module KERNEL_MODULE_AUTOLOAD =3D "v4l2loopback" |
>
> bitbake give me :
>
> || NOTE: make -j 4=20
> KERNEL_SRC=3D/media/yocto-irts/distro/build/tmp/work-shared/genericx86-6=
4/kernel-source=20
> DEPMOD=3Decho=20
> MODLIB=3D/media/yocto-irts/distro/build/tmp/work/genericx86_64-poky-linu=
x/v4l2loopbackd/1.0-r0/image/lib/modules/4.18.22-yocto-standard=20
> CC=3Dx86_64-poky-linux-gcc -fuse-ld=3Dbfd=20
> -fdebug-prefix-map=3D/media/yocto-irts/distro/build/tmp/work/genericx86_=
64-poky-linux/v4l2loopbackd/1.0-r0=3D/usr/src/debug/v4l2loopbackd/1.0-r0=20
> -fdebug-prefix-map=3D/media/yocto-irts/distro/build/tmp/work/genericx86_=
64-poky-linux/v4l2loopbackd/1.0-r0/recipe-sysroot=3D=20
> -fdebug-prefix-map=3D/media/yocto-irts/distro/build/tmp/work/genericx86_=
64-poky-linux/v4l2loopbackd/1.0-r0/recipe-sysroot-native=3D=20
> -fdebug-prefix-map=3D/media/yocto-irts/distro/build/tmp/work-shared/gene=
ricx86-64/kernel-source=3D/usr/src/kernel=20
> LD=3Dx86_64-poky-linux-ld.bfd=20
> O=3D/media/yocto-irts/distro/build/tmp/work-shared/genericx86-64/kernel-=
build-artifacts=20
> modules_install | make: *** No rule to make target 'modules_install'.=20
> Stop. | ERROR: oe_runmake failed | WARNING: exit code 1 from a shell=20
> command.|

||This seems to be an out of tree kernel module so you should take a=20
look at:||||


      2.10.2.=C2=A0Incorporating Out-of-Tree Modules

In:

https://www.yoctoproject.org/docs/current/kernel-dev/kernel-dev.html

Try the example here:

http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-skeleton/recipes-=
kernel/hello-mod/hello-mod_0.1.bb

Will you please send the recipe to the=20
*openembedded-devel@lists.openembedded.org*
list following these instructions:
https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded
once it works?

Good luck,

../Randy


> ||
>
> I think i have to patch Makefile but i don't know how
>
> Please help me to get v4l2loopback on my yocto project ;)
>
> Thanks
>
>
>=20


--=20
# Randy MacLeod
# Wind River Linux


--------------55A4F53D8EC0BD78BF904388
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2020-07-24 12:21 p.m.,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:profecie@gmail.=
com">profecie@gmail.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:a7dC.1595607686218504048.LfGh@lists.yoctoproject.org">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUT=
F-8">
      <div class=3D"post-text">
        <p>Hi,<br>
          <br>
          I'm begginer on Yocto and I try to add v4l2loopback to my
          image.Idon't find any recipe to do that so i try to do myself
          but it's not a success :)<br>
          <br>
        </p>
      </div>
    </blockquote>
    <p>Hi,</p>
    <p>Welcome to Yocto development.</p>
    <p>I'm moving this email to the yocto general list.</p>
    <p>the yocto-builds list is mainly about automated build reports.</p>
    <p><br>
    </p>
    <blockquote type=3D"cite"
      cite=3D"mid:a7dC.1595607686218504048.LfGh@lists.yoctoproject.org">
      <div class=3D"post-text">
        <p>I download current source on github (<a
            href=3D"https://github.com/umlaeute/v4l2loopback"
            rel=3D"nofollow noreferrer" moz-do-not-send=3D"true">https://g=
ithub.com/umlaeute/v4l2loopback</a>)
          and i try to compile with with recipe</p>
        <pre><code>SUMMARY =3D "V4L2Loopback"
DESCRIPTION =3D "v4l2loopback module"
LICENSE =3D "GPLv2"
LIC_FILES_CHKSUM =3D <a class=3D"moz-txt-link-rfc2396E" href=3D"file://${C=
OMMON_LICENSE_DIR}/GPL-2.0;md5=3D801f80980d171dd6425610833a22dbe6">"file://=
${COMMON_LICENSE_DIR}/GPL-2.0;md5=3D801f80980d171dd6425610833a22dbe6"</a>


# Use local tarball
SRC_URI =3D <a class=3D"moz-txt-link-rfc2396E" href=3D"file://v4l2loopback=
-master.tar.gz">"file://v4l2loopback-master.tar.gz"</a>

# Make sure our source directory (for the build) matches the directory str=
ucture in the tarball
S =3D "${WORKDIR}/v4l2loopback-master"

inherit module

KERNEL_MODULE_AUTOLOAD =3D "v4l2loopback"
</code></pre>
        <p>bitbake give me :</p>
        <pre><code>| NOTE: make -j 4 KERNEL_SRC=3D/media/yocto-irts/distro=
/build/tmp/work-shared/genericx86-64/kernel-source DEPMOD=3Decho MODLIB=3D/=
media/yocto-irts/distro/build/tmp/work/genericx86_64-poky-linux/v4l2loopbac=
kd/1.0-r0/image/lib/modules/4.18.22-yocto-standard CC=3Dx86_64-poky-linux-g=
cc  -fuse-ld=3Dbfd -fdebug-prefix-map=3D/media/yocto-irts/distro/build/tmp/=
work/genericx86_64-poky-linux/v4l2loopbackd/1.0-r0=3D/usr/src/debug/v4l2loo=
pbackd/1.0-r0 -fdebug-prefix-map=3D/media/yocto-irts/distro/build/tmp/work/=
genericx86_64-poky-linux/v4l2loopbackd/1.0-r0/recipe-sysroot=3D -fdebug-pre=
fix-map=3D/media/yocto-irts/distro/build/tmp/work/genericx86_64-poky-linux/=
v4l2loopbackd/1.0-r0/recipe-sysroot-native=3D  -fdebug-prefix-map=3D/media/=
yocto-irts/distro/build/tmp/work-shared/genericx86-64/kernel-source=3D/usr/=
src/kernel LD=3Dx86_64-poky-linux-ld.bfd  O=3D/media/yocto-irts/distro/buil=
d/tmp/work-shared/genericx86-64/kernel-build-artifacts modules_install
| make: *** No rule to make target 'modules_install'.  Stop.
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.</code></pre>
      </div>
    </blockquote>
    <p><font size=3D"-1"><code></code>This seems to be an out of tree
        kernel module so you should take a look at:<code></code><code></co=
de></font></p>
    <div class=3D"titlepage">
      <div>
        <div>
          <h3 class=3D"title">2.10.2.=C2=A0Incorporating Out-of-Tree Modul=
es<span
              class=3D"permalink"></span></h3>
          <p>In:</p>
          <p><a class=3D"moz-txt-link-freetext" href=3D"https://www.yoctop=
roject.org/docs/current/kernel-dev/kernel-dev.html">https://www.yoctoprojec=
t.org/docs/current/kernel-dev/kernel-dev.html</a></p>
          <p>Try the example here:</p>
          <p><a class=3D"moz-txt-link-freetext" href=3D"http://git.yoctopr=
oject.org/cgit/cgit.cgi/poky/tree/meta-skeleton/recipes-kernel/hello-mod/he=
llo-mod_0.1.bb">http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-sk=
eleton/recipes-kernel/hello-mod/hello-mod_0.1.bb</a></p>
          <p>Will you please send the recipe to the <b><a class=3D"moz-txt=
-link-abbreviated" href=3D"mailto:openembedded-devel@lists.openembedded.org=
">openembedded-devel@lists.openembedded.org</a></b><br>
            list following these instructions:<br>
            =C2=A0=C2=A0
            <a class=3D"moz-txt-link-freetext" href=3D"https://www.openemb=
edded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded">https://www.openembed=
ded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded</a><br>
            once it works?<br>
          </p>
          <p>Good luck,</p>
          <p>../Randy</p>
          <p><br>
          </p>
        </div>
      </div>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:a7dC.1595607686218504048.LfGh@lists.yoctoproject.org">
      <div class=3D"post-text">
        <pre><code>
</code></pre>
        <p>I think i have to patch Makefile but i don't know how</p>
        <p>Please help me to get v4l2loopback on my yocto project ;) </p>
        <p>Thanks</p>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class=3D"moz-signature" cols=3D"72">--=20
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------55A4F53D8EC0BD78BF904388--
