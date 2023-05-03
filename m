Return-Path: <antabboud@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB7E7C77B78
	for <webhook@archiver.kernel.org>; Wed,  3 May 2023 16:13:20 +0000 (UTC)
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
 by mx.groups.io with SMTP id smtpd.web10.24236.1683130395254104659
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 May 2023 09:13:15 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=Yea7gZYu;
 spf=pass (domain: gmail.com, ip: 209.85.160.48, mailfrom: antabboud@gmail.com)
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-1929818d7faso5254022fac.0
        for <yocto@lists.yoctoproject.org>; Wed, 03 May 2023 09:13:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683130394; x=1685722394;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=y20zSai+S4R+LuPgdfozp1mtA3AQZDq6XBYno7ZfiiQ=;
        b=Yea7gZYu0htNm0G/rTwUcDrqA7MeQInS08TMbE8O596AZ+Y2d+SlgSOOxbvWHtwty5
         f8TU+F3lSWIqfRIjaP94ZrsUcZQUiM8XE4Ko80Z1c9tkYJw7r4MNndPA0uY2766L6dEy
         uUWCC4L2EbgIAtwI76SwquJ4d4Ubf3VT67YFfKuYhPtgYAuXC42bIJEFKgznuD03PAT7
         8hg+m3jq2grWBtWoFw2eCfwmEpD4ZYRHAczVOwE7pukmSlXszkMDVoAz8Pl7UUh5BMQw
         nNU3jSgkmlxtJqoer4TaumH2gd8p/Y/OtkqJlO4dzERzxR4ABZWqGzAlZp39j2Unwpvh
         NWkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683130394; x=1685722394;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y20zSai+S4R+LuPgdfozp1mtA3AQZDq6XBYno7ZfiiQ=;
        b=ffAyY4WG2L7rEXjF8E8dcEiJBlsK44hhMUO3cvmakhtb8/CT4NEfLkL5U4KThO+LVG
         d2e8DGf3/VGeyYO0rHOo2X+Egb3HyrQFn6Eb/TbRjYSnuEnIVLt+4GzFWv8iEXBEM6DS
         yseX/Wpaw7bK7ILbI46RfJ2eqozjPXfMdCFWVNtkzm+dopHTiCdKYh07JWNiNoco803A
         qP6nQyOjHUdfTXuf3TPGCcR9aHXw/5wkso2hlyBMNAEzGLUcApT4mtyypy+lcuo+37op
         BgtxhwnC4jth/F6FDAt4FfjwacSpFuLmwG7KL14hp9Se+S5O3wl4nn1mY9ye3E0kSgfi
         ilAw==
X-Gm-Message-State: AC+VfDxQ7vevYQ3lfxmnOEiyUem+8EbSWQ1lt91u6lNIDRFwQGaqEhHD
	/O3DsrjGDNV+Al3YO+RV03hl/6N3OHslYuezUUGuqI1IbgA=
X-Google-Smtp-Source: ACHHUZ4QtlQQzYb4JO8hi5LOnIZAXs3UVYjCy540SHB4tXnUVJptOD0jMTV6nkSAB1uIJup984mC1eCB4LVdDCPt6FE=
X-Received: by 2002:aca:bb09:0:b0:392:32a8:3f8 with SMTP id
 l9-20020acabb09000000b0039232a803f8mr269751oif.12.1683130392764; Wed, 03 May
 2023 09:13:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAEAv8SAsr=37-qCpzYU88=SO+vRWdkcz9kcD0B8SrODj77XZaA@mail.gmail.com>
 <14190.1683101564095576045@lists.yoctoproject.org> <CAEt6NwqRD-M4n088HQnFDsvmKEWZ5kVcZgeT3=mSSuO-+hCC9A@mail.gmail.com>
 <175BADC4F55E7349.14539@lists.yoctoproject.org> <175BADF4585BE3A9.14539@lists.yoctoproject.org>
In-Reply-To: <175BADF4585BE3A9.14539@lists.yoctoproject.org>
From: Anthony Abboud <antabboud@gmail.com>
Date: Wed, 3 May 2023 12:13:01 -0400
Message-ID: <CAEAv8SDmwMaBRv2eyC5rQQtj3w61Y-gfMA=3ObQ+v6dAF1zF-Q@mail.gmail.com>
Subject: Re: [yocto] Trouble Adding Files to rootfs
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000002be6e205facc5522"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 May 2023 16:13:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59857

--0000000000002be6e205facc5522
Content-Type: text/plain; charset="UTF-8"

Hi,

Thank you all for your contribution to this thread.
Following this, here's what I have tried so far that HAS NOT worked.
1. The initial code of this post as a separate recipe.
2. The initial code of this post as a .bbappend.
3. The example shown here:
http://embeddedguruji.blogspot.com/2019/02/yocto-recipe-to-copy-single-file-on.html
4. The format of the recipe as shown here:
https://stackoverflow.com/questions/62635557/add-files-to-system-image-in-yocto
5. Other similar scripts around StackOverflow

Basically, none of them showed usage of adding the S=${WORKDIR} line.

Upon using it, the files transferred to the rootfs build successfully.

First thing I tried was the following recipe with an absolute path:

```
SUMMARY = "filesystem"
DESCRIPTION = "Copy gui and relevant scripts"
LICENSE = "CLOSED"

inherit allarch

MY_FILES =
/home/<user>/oe-core/layers/meta-custom-gui/recipes-gui/gui/files"

do_install() {
    install -d {D}/etc
    install -m 0755 ${MY_FILES}/fb.modes ${D}/etc
    # Same thing for other files
}

FILES_${PN} += " \
    /etc \
    # Same thing for other files
"

Then in build/local.conf: CORE_IMAGE_EXTRA_INSTALL += " filesystem "
```

And this recipe worked.
So I figured it probably has to do with the pathing, so rewrote my initial
code by adding S=${WORKDIR} like you all suggested, here is my final
working recipe.

```
SUMMARY = "filesystem"
DESCRIPTION = "Copy gui and relevant scripts"
LICENSE = "CLOSED"

SRC_URI += " \
    file://qt_app \
    file://startup.sh \
    file://fb.modes \
"

S = "${WORKDIR}"

do_install() {
    install -d 0644 ${D}/home/root
    install -m 0755 ${WORKDIR}/qt_app ${D}/home/root
    install -d 0644 ${D}/etc/init.d
    install -m 0755 ${WORKDIR}/startup.sh ${D}/etc/init.d
    install -m 0755 ${WORKDIR}/fb.modes ${D}/etc
}

FILES_${PN} += " \
    /home/root/qt_app \
    /etc/init.d/startup.sh \
    /etc/fb.modes \
"

Then in build/local.conf: CORE_IMAGE_EXTRA_APPEND += " filesystem "
```

So a few observations and follow-up questions on this:
1. Adding S=${WORKDIR} did the trick. Why is that? I don't use S anywhere
in my do_install().
2. In order to copy a bash script, I had to add RDEPENDS_${PN} += " bash "
to this secondary recipe.
3. In order to copy my Qt app, I also had to add its Qt dependencies as in
(2). Why do I need everything's dependencies even if I only wish to do a
copy in the rootfs?
4. Some of you have been suggesting adding the recipe to
CORE_IMAGE_EXTRA_INSTALL or CORE_IMAGE_EXTRA_APPEND. Both give me the same
result. Is there a fundamental difference?
4. To setup Yocto, I used Toradex's manifest for the Dunfell version, which
uses Yocto v3.1 LTS since I'm working on an Apalis iMX6 board:
https://developer.toradex.com/linux-bsp/os-development/build-yocto/build-a-reference-image-with-yocto-projectopenembedded

Thank you all again and I hope this helps others.
Anthony

--0000000000002be6e205facc5522
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi,<div><br></div><div>Thank you all=
 for your contribution to this thread.</div><div>Following this, here&#39;s=
 what I have tried so far that HAS NOT worked.</div><div>1. The initial cod=
e of this post as a separate recipe.</div><div>2. The initial code of this =
post as a .bbappend.</div><div>3. The example shown here:=C2=A0<a href=3D"h=
ttp://embeddedguruji.blogspot.com/2019/02/yocto-recipe-to-copy-single-file-=
on.html" target=3D"_blank">http://embeddedguruji.blogspot.com/2019/02/yocto=
-recipe-to-copy-single-file-on.html</a></div><div>4. The format of the reci=
pe as shown here:=C2=A0<a href=3D"https://stackoverflow.com/questions/62635=
557/add-files-to-system-image-in-yocto" target=3D"_blank">https://stackover=
flow.com/questions/62635557/add-files-to-system-image-in-yocto</a></div><di=
v>5. Other similar scripts around StackOverflow</div><div><br></div><div>Ba=
sically, none of them showed usage of adding the S=3D${WORKDIR} line.</div>=
<div><br></div><div>Upon using it, the files transferred to the rootfs buil=
d successfully.</div><div><br></div><div>First thing I tried was the follow=
ing recipe with an absolute path:</div><div><br></div><div><span style=3D"c=
olor:rgb(51,51,51);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,s=
ans-serif;font-size:14px;white-space:pre-wrap">```</span><br></div><div><sp=
an style=3D"color:rgb(51,51,51);font-family:&quot;Helvetica Neue&quot;,Helv=
etica,Arial,sans-serif;font-size:14px;white-space:pre-wrap">SUMMARY =3D &qu=
ot;filesystem&quot;</span></div><div><span style=3D"color:rgb(51,51,51);fon=
t-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14=
px;white-space:pre-wrap">DESCRIPTION =3D &quot;Copy gui and relevant script=
s&quot;</span></div><div><span style=3D"color:rgb(51,51,51);font-family:&qu=
ot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px;white-spa=
ce:pre-wrap">LICENSE =3D &quot;CLOSED&quot;</span></div><div><br></div><div=
>inherit allarch</div><div><br></div><div>MY_FILES =3D /home/&lt;user&gt;/o=
e-core/layers/meta-custom-gui/recipes-gui/gui/files&quot;</div><div><br></d=
iv><div>do_install() {</div><div><div>=C2=A0 =C2=A0 install -d {D}/etc</div=
><div>=C2=A0 =C2=A0 install -m 0755 ${MY_FILES}/fb.modes ${D}/etc</div><div=
>=C2=A0 =C2=A0 # Same thing for other files</div></div><div>}</div><div><br=
></div><div>FILES_${PN}=C2=A0+=3D &quot; \</div><div>=C2=A0 =C2=A0 /etc \</=
div><div><div>=C2=A0 =C2=A0 # Same thing for other files</div>&quot;<br></d=
iv><div><br></div><div>Then in build/local.conf: CORE_IMAGE_EXTRA_INSTALL=
=C2=A0+=3D &quot; filesystem &quot;</div><div><span style=3D"color:rgb(51,5=
1,51);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;fon=
t-size:14px;white-space:pre-wrap">```</span>=C2=A0=C2=A0<span style=3D"colo=
r:rgb(51,51,51);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans=
-serif;font-size:14px;white-space:pre-wrap"><br></span></div><div><br></div=
><div>And this recipe worked.</div><div>So I figured it probably has to do =
with the pathing, so rewrote my initial code by adding S=3D${WORKDIR} like =
you all suggested, here is my final working recipe.</div><div><br></div><di=
v><div><span style=3D"color:rgb(51,51,51);font-family:&quot;Helvetica Neue&=
quot;,Helvetica,Arial,sans-serif;font-size:14px;white-space:pre-wrap">```</=
span><br></div><div><span style=3D"color:rgb(51,51,51);font-family:&quot;He=
lvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px;white-space:pr=
e-wrap">SUMMARY =3D &quot;filesystem&quot;</span></div><div><span style=3D"=
color:rgb(51,51,51);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,=
sans-serif;font-size:14px;white-space:pre-wrap">DESCRIPTION =3D &quot;Copy =
gui and relevant scripts&quot;</span></div><div><span style=3D"color:rgb(51=
,51,51);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;f=
ont-size:14px;white-space:pre-wrap">LICENSE =3D &quot;CLOSED&quot;</span></=
div><div><br></div><div>SRC_URI=C2=A0+=3D &quot; \</div></div><div><div>=C2=
=A0 =C2=A0 file://qt_app \</div></div>=C2=A0 =C2=A0 file://startup.sh \<div=
>=C2=A0 =C2=A0 file://fb.modes \</div>&quot;<div><br></div><div>S =3D &quot=
;${WORKDIR}&quot;</div><div><br></div><div><div>do_install() {<br></div><di=
v><div>=C2=A0 =C2=A0 install -d 0644 ${D}/home/root</div>=C2=A0 =C2=A0 inst=
all -m 0755 ${WORKDIR}/qt_app ${D}/home/root<br>=C2=A0 =C2=A0 install -d 06=
44 ${D}/etc/init.d<div>=C2=A0 =C2=A0 install -m 0755 ${WORKDIR}/startup.sh =
${D}/etc/init.d</div>=C2=A0 =C2=A0 install -m 0755 ${WORKDIR}/fb.modes ${D}=
/etc</div><div>}</div><div><br></div><div>FILES_${PN}=C2=A0+=3D &quot; \</d=
iv></div><div><div>=C2=A0 =C2=A0 /home/root/qt_app \</div></div><div><div>=
=C2=A0 =C2=A0 /etc/init.d/startup.sh \<div>=C2=A0 =C2=A0 /etc/fb.modes \</d=
iv>&quot;<br></div><div><br></div><div>Then in build/local.conf: CORE_IMAGE=
_EXTRA_APPEND +=3D &quot; filesystem &quot;</div><div><span style=3D"color:=
rgb(51,51,51);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-s=
erif;font-size:14px;white-space:pre-wrap">```</span>=C2=A0=C2=A0</div></div=
><div><br></div><div>So a few observations and follow-up questions on this:=
</div><div>1. Adding S=3D${WORKDIR} did the trick. Why is that? I don&#39;t=
 use S anywhere in my do_install().</div><div>2. In order to copy a bash sc=
ript, I had to add RDEPENDS_${PN}=C2=A0+=3D &quot; bash &quot; to this seco=
ndary recipe.=C2=A0</div><div>3. In order to copy my Qt app, I also had to =
add its Qt dependencies as in (2). Why do I need everything&#39;s dependenc=
ies even if I only wish to do a copy in the rootfs?</div><div>4. Some of yo=
u have been suggesting adding the recipe to CORE_IMAGE_EXTRA_INSTALL or COR=
E_IMAGE_EXTRA_APPEND. Both give me the same result. Is there a fundamental=
=C2=A0difference?</div><div>4. To setup=C2=A0Yocto, I used Toradex&#39;s ma=
nifest for the Dunfell version, which uses Yocto v3.1 LTS since I&#39;m wor=
king on an Apalis iMX6 board:=C2=A0<a href=3D"https://developer.toradex.com=
/linux-bsp/os-development/build-yocto/build-a-reference-image-with-yocto-pr=
ojectopenembedded" target=3D"_blank">https://developer.toradex.com/linux-bs=
p/os-development/build-yocto/build-a-reference-image-with-yocto-projectopen=
embedded</a></div><div><br></div><div>Thank you all again and I hope this h=
elps others.</div><div>Anthony</div></div></div></div>

--0000000000002be6e205facc5522--

