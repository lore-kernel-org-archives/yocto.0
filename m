Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E245E0043F; Fri, 18 Jul 2014 11:48:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f53.google.com (mail-la0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3A9CE00342
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 11:48:40 -0700 (PDT)
Received: by mail-la0-f53.google.com with SMTP id gl10so3112209lab.40
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 11:48:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=xZ9dDeIvhx25bre8ZmEbuzy/l7VcPki5VFajz1n4BlE=;
	b=gCy+6CjcXJr0Nhqyb+SUYxPrjUCG+ckvt+s65AGvrN1satD2YkKa0OgM8S4qjQg3Xw
	2sfmzUo8DDfyfhamUADwkCfQMPct9r2jtpfFRgsugozXDyxVOniv+9NiG8EM1l+v3MlB
	1JSKMJ/SGAZatII/WpbaFUguJfnHAsZ/AZtxTqg2bxFCxiTbnRT+I9MQT9Ewo1KM5aXH
	d9hiFK5mtYLXsC8J5U/IspndrFTq6GLVBfr4zkDO6vZWn61Tqt4dSaWt87ClOAsixdCc
	Bj2r2/a4NOLjb/6SxEfTrQ+dkta+2AiAuICU9FgEhc3xBNA/y6WKGVOV23YB+smUqRbI
	iZGg==
X-Received: by 10.112.13.137 with SMTP id h9mr7087662lbc.33.1405709319051;
	Fri, 18 Jul 2014 11:48:39 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.63.72 with HTTP; Fri, 18 Jul 2014 11:48:18 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.11.1407181439030.24703@localhost>
References: <53C94ACD.6010800@mlbassoc.com>
	<CABcZAN=B3uNLKrTK4j_G5Ex=9WQw3xHkidhVVR-2E-2oLpOrhw@mail.gmail.com>
	<53C9515F.1040504@mlbassoc.com>
	<alpine.LFD.2.11.1407181439030.24703@localhost>
From: Christopher Larson <clarson@kergoth.com>
Date: Fri, 18 Jul 2014 11:48:18 -0700
X-Google-Sender-Auth: Jj6V3Imz-4RhMRB_SyDtc6wvofY
Message-ID: <CABcZANm+Nb9OKDHrvjBm-BOyWaKy5pHgZmp33F0fjAmoUQH18Q@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: yocto <yocto@yoctoproject.org>, Gary Thomas <gary@mlbassoc.com>
Subject: Re: Extending images
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
X-List-Received-Date: Fri, 18 Jul 2014 18:48:56 -0000
Content-Type: multipart/alternative; boundary=001a11c3d10a9ea0b304fe7c346b

--001a11c3d10a9ea0b304fe7c346b
Content-Type: text/plain; charset=UTF-8

On Fri, Jul 18, 2014 at 11:45 AM, Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

>
> > On 2014-07-18 10:49, Christopher Larson wrote:
> > >
> > > On Fri, Jul 18, 2014 at 9:26 AM, Gary Thomas <gary@mlbassoc.com
> > > <mailto:gary@mlbassoc.com>> wrote:
> > >
> > >     've always used 'IMAGE_INSTALL += " xyz"' in my local.conf
> > >     to add new packages to a build.  That said, I had a working
> > >     build for qemuarm (probably doesn't matter) and I added:
> > >        IMAGE_INSTALL += " strace"
> > >     This produced a completely broken image which barely came
> > >     up to a shell, lots of missing programs, etc.
> > >
> > >     I then tried
> > >        CORE_IMAGE_EXTRA_INSTALL += " strace"
> > >     which produced a perfectly working build (just as previous)
> > >     with the new package added.
> > >
> > >     I can see that the images produced are vastly different:
> > >
> > >     * Original working build
> > >     -rw-r--r-- 1 gthomas gthomas     11719 Jul 18 09:34
> > >     core-image-sato-qemuarm-__20140718124453.rootfs.manifest
> > >     -rw-r--r-- 1 gthomas gthomas  87611203 Jul 18 09:34
> > >     core-image-sato-qemuarm-__20140718124453.rootfs.tar.bz2
> > >
> > >     * After 'IMAGE_INSTALL += '
> > >     -rw-r--r-- 1 gthomas gthomas      9986 Jul 18 09:55
> > >     core-image-sato-qemuarm-__20140718155134.rootfs.manifest
> > >     -rw-r--r-- 1 gthomas gthomas  37859884 Jul 18 09:56
> > >     core-image-sato-qemuarm-__20140718155134.rootfs.tar.bz2
> > >
> > >     * After 'CORE_IMAGE_EXTRA_INSTALL += '
> > >     -rw-r--r-- 1 gthomas gthomas     11738 Jul 18 10:05
> > >     core-image-sato-qemuarm-__20140718160108.rootfs.manifest
> > >     -rw-r--r-- 1 gthomas gthomas  87720106 Jul 18 10:05
> > >     core-image-sato-qemuarm-__20140718160108.rootfs.tar.bz2
> > >
> > >     What's the difference and why did the first attempt fail?
> > >
> > >
> > > Most likely the image defined its own IMAGE_INSTALL using ?=, so
> > > defining it yourself in the configuration data overrode its
> > > default definition, since ?= is "set only if unset". If the recipe
> > > didn't use ?=, then your IMAGE_INSTALL += would have had no effect
> > > at all. To append to IMAGE_INSTALL directly without using
> > > CORE_IMAGE_EXTRA_INSTALL you could have used IMAGE_INSTALL_append,
> > > since that's a postponed operation that happens at the end of the
> > > recipe parsing.
> >
> > That makes sense, thanks.  I'll stick to using
> > CORE_IMAGE_EXTRA_INSTALL from now on!
>
>   not to sound repetitively repetitive, but this is related to what i
> thought was the weird way core images are defined based off of
> core-image.bbclass, where core-image.bbclass does *exactly* what you
> describe above:
>
> CORE_IMAGE_BASE_INSTALL = '\
>     packagegroup-core-boot \
>     packagegroup-base-extended \
>     \
>     ${CORE_IMAGE_EXTRA_INSTALL} \
>     '
>
> CORE_IMAGE_EXTRA_INSTALL ?= ""
>
> IMAGE_INSTALL ?= "${CORE_IMAGE_BASE_INSTALL}"
>
>   the danger here is that if someone has been defining/building images
> for a while based off of the lower-level image.bbclass, then (i think)
> using "IMAGE_INSTALL +=" will work just fine, and the poor developer
> gets lulled into a false sense of security and carries that habit over
> to her first core-image and ... boom.
>

I really don't think this was ever safe, as it completely depended on how
the image recipe added its bits to IMAGE_INSTALL, which could easily vary
from image to image. I've *always* told folks to use IMAGE_INSTALL_append
if anything, even back in oe classic :)
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11c3d10a9ea0b304fe7c346b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Fri, Jul 18, 2014 at 11:45 AM, Robert P. J. Day <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcourse=
.ca</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D""><br>
</div><div><div class=3D"h5">&gt; On 2014-07-18 10:49, Christopher Larson w=
rote:<br>
&gt; &gt;<br>
&gt; &gt; On Fri, Jul 18, 2014 at 9:26 AM, Gary Thomas &lt;<a href=3D"mailt=
o:gary@mlbassoc.com">gary@mlbassoc.com</a><br>
&gt; &gt; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com=
</a>&gt;&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; =C2=A0 =C2=A0 &#39;ve always used &#39;IMAGE_INSTALL +=3D &quot; =
xyz&quot;&#39; in my local.conf<br>
&gt; &gt; =C2=A0 =C2=A0 to add new packages to a build. =C2=A0That said, I =
had a working<br>
&gt; &gt; =C2=A0 =C2=A0 build for qemuarm (probably doesn&#39;t matter) and=
 I added:<br>
&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0IMAGE_INSTALL +=3D &quot; strace&quot;=
<br>
&gt; &gt; =C2=A0 =C2=A0 This produced a completely broken image which barel=
y came<br>
&gt; &gt; =C2=A0 =C2=A0 up to a shell, lots of missing programs, etc.<br>
&gt; &gt;<br>
&gt; &gt; =C2=A0 =C2=A0 I then tried<br>
&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0CORE_IMAGE_EXTRA_INSTALL +=3D &quot; s=
trace&quot;<br>
&gt; &gt; =C2=A0 =C2=A0 which produced a perfectly working build (just as p=
revious)<br>
&gt; &gt; =C2=A0 =C2=A0 with the new package added.<br>
&gt; &gt;<br>
&gt; &gt; =C2=A0 =C2=A0 I can see that the images produced are vastly diffe=
rent:<br>
&gt; &gt;<br>
&gt; &gt; =C2=A0 =C2=A0 * Original working build<br>
&gt; &gt; =C2=A0 =C2=A0 -rw-r--r-- 1 gthomas gthomas =C2=A0 =C2=A0 11719 Ju=
l 18 09:34<br>
&gt; &gt; =C2=A0 =C2=A0 core-image-sato-qemuarm-__20140718124453.rootfs.man=
ifest<br>
&gt; &gt; =C2=A0 =C2=A0 -rw-r--r-- 1 gthomas gthomas =C2=A087611203 Jul 18 =
09:34<br>
&gt; &gt; =C2=A0 =C2=A0 core-image-sato-qemuarm-__20140718124453.rootfs.tar=
.bz2<br>
&gt; &gt;<br>
&gt; &gt; =C2=A0 =C2=A0 * After &#39;IMAGE_INSTALL +=3D &#39;<br>
&gt; &gt; =C2=A0 =C2=A0 -rw-r--r-- 1 gthomas gthomas =C2=A0 =C2=A0 =C2=A099=
86 Jul 18 <span tabindex=3D"0" class=3D"aBn"><span class=3D"aQJ">09:55</spa=
n></span><br>
&gt; &gt; =C2=A0 =C2=A0 core-image-sato-qemuarm-__20140718155134.rootfs.man=
ifest<br>
&gt; &gt; =C2=A0 =C2=A0 -rw-r--r-- 1 gthomas gthomas =C2=A037859884 Jul 18 =
09:56<br>
&gt; &gt; =C2=A0 =C2=A0 core-image-sato-qemuarm-__20140718155134.rootfs.tar=
.bz2<br>
&gt; &gt;<br>
&gt; &gt; =C2=A0 =C2=A0 * After &#39;CORE_IMAGE_EXTRA_INSTALL +=3D &#39;<br=
>
&gt; &gt; =C2=A0 =C2=A0 -rw-r--r-- 1 gthomas gthomas =C2=A0 =C2=A0 11738 Ju=
l 18 10:05<br>
&gt; &gt; =C2=A0 =C2=A0 core-image-sato-qemuarm-__20140718160108.rootfs.man=
ifest<br>
&gt; &gt; =C2=A0 =C2=A0 -rw-r--r-- 1 gthomas gthomas =C2=A087720106 Jul 18 =
10:05<br>
&gt; &gt; =C2=A0 =C2=A0 core-image-sato-qemuarm-__20140718160108.rootfs.tar=
.bz2<br>
&gt; &gt;<br>
&gt; &gt; =C2=A0 =C2=A0 What&#39;s the difference and why did the first att=
empt fail?<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Most likely the image defined its own IMAGE_INSTALL using ?=3D, s=
o<br>
&gt; &gt; defining it yourself in the configuration data overrode its<br>
&gt; &gt; default definition, since ?=3D is &quot;set only if unset&quot;. =
If the recipe<br>
&gt; &gt; didn&#39;t use ?=3D, then your IMAGE_INSTALL +=3D would have had =
no effect<br>
&gt; &gt; at all. To append to IMAGE_INSTALL directly without using<br>
&gt; &gt; CORE_IMAGE_EXTRA_INSTALL you could have used IMAGE_INSTALL_append=
,<br>
&gt; &gt; since that&#39;s a postponed operation that happens at the end of=
 the<br>
&gt; &gt; recipe parsing.<br>
&gt;<br>
&gt; That makes sense, thanks. =C2=A0I&#39;ll stick to using<br>
&gt; CORE_IMAGE_EXTRA_INSTALL from now on!<br>
<br>
</div></div>=C2=A0 not to sound repetitively repetitive, but this is relate=
d to what i<br>
thought was the weird way core images are defined based off of<br>
core-image.bbclass, where core-image.bbclass does *exactly* what you<br>
describe above:<br>
<br>
CORE_IMAGE_BASE_INSTALL =3D &#39;\<br>
=C2=A0 =C2=A0 packagegroup-core-boot \<br>
=C2=A0 =C2=A0 packagegroup-base-extended \<br>
=C2=A0 =C2=A0 \<br>
=C2=A0 =C2=A0 ${CORE_IMAGE_EXTRA_INSTALL} \<br>
=C2=A0 =C2=A0 &#39;<br>
<br>
CORE_IMAGE_EXTRA_INSTALL ?=3D &quot;&quot;<br>
<br>
IMAGE_INSTALL ?=3D &quot;${CORE_IMAGE_BASE_INSTALL}&quot;<br>
<br>
=C2=A0 the danger here is that if someone has been defining/building images=
<br>
for a while based off of the lower-level image.bbclass, then (i think)<br>
using &quot;IMAGE_INSTALL +=3D&quot; will work just fine, and the poor deve=
loper<br>
gets lulled into a false sense of security and carries that habit over<br>
to her first core-image and ... boom.<br></blockquote><div><br></div><div>I=
 really don&#39;t think this was ever safe, as it completely depended on ho=
w the image recipe added its bits to IMAGE_INSTALL, which could easily vary=
 from image to image. I&#39;ve *always* told folks to use IMAGE_INSTALL_app=
end if anything, even back in oe classic :)<br>

</div>-- <br></div>Christopher Larson<br>clarson at kergoth dot com<br>Foun=
der - BitBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Sof=
tware Engineer, Mentor Graphics
</div></div>

--001a11c3d10a9ea0b304fe7c346b--
