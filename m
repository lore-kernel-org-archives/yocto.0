Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6592C77B78
	for <webhook@archiver.kernel.org>; Wed,  3 May 2023 08:33:38 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
 by mx.groups.io with SMTP id smtpd.web11.14040.1683102810954244917
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 May 2023 01:33:31 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@theyoctojester-info.20221208.gappssmtp.com header.s=20221208 header.b=UhTxLRVQ;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.218.52, mailfrom: jester@theyoctojester.info)
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-94eff00bcdaso938780966b.1
        for <yocto@lists.yoctoproject.org>; Wed, 03 May 2023 01:33:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20221208.gappssmtp.com; s=20221208; t=1683102809; x=1685694809;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TYEArAFl1ep/r6BnllFTdtEEQQy4SQTf1UFHiRpNxJc=;
        b=UhTxLRVQkjdXQ9WZ92jKrL38C4ooIXVidEt/35ijNKAc9LSyMl65v/Ie5LnTv7Lmr8
         YoTpKpE4s6c8VgI59LwoQfQFhQJNExJ9Nvp8kmK1IuZbo/EHcRRN58B8vZHd/2zFOX2I
         bPOLk5gasY5cuzpVfLtOIc/+IrQyAJqFlFvmLYlLLozzE2XDAhGsAm2lbfJtmbe/jYC0
         RZv3PeITlDNcuS17eqlyNoLUCAC2Y3z8jSb1tDLI7eXVcS0QWIzQ0qW424MQ1UF/xYoM
         ljPtCS55VQJ1SzZRxCuzKqN6v5s6TIJi78Ztjv/7l5gm9TNAPZ1+B8NQTP7ca8MdoPir
         kLXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683102809; x=1685694809;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TYEArAFl1ep/r6BnllFTdtEEQQy4SQTf1UFHiRpNxJc=;
        b=I2EQHRflFzvZHiMcOg2YK+0o1YrxeVpCs6Qtn+/Ab2efMJ2PQDXe5XLOkkV6qtLJ5Q
         2Q5Y8SUR1Qv7BrZunmpNZKS7vSihyZpID+AZHFJQWGIWQQVL5+P/ai+GH6H3agtPIzkK
         4PY6Pa2TqYpU5c5Ac2bMWzE1xDcJtqmh0VQCyJi8KENAkjAXh0GQJpJnZ+UEOJstvLL+
         ztPa/oFMsJMlagSnF003kXtqHz74AIHVG5Xb5AIddUS/0C2LAYCDZwUU7zCXyvdl1V9q
         gwj37X50c2Bizg32o6u5+HvKeE1gaqEdIiUCEzYgmQTeMshcUXk7ceiX2CKEwW0y03j1
         z8WA==
X-Gm-Message-State: AC+VfDxAickXsa3s3YtydfdUwUGtR4Udk6fLdR1XaMMHMo9OCvAlsrxQ
	cQBNWZcAZi336BTJk/MbeYb6zH8/BMtrILuWAoIbqQ==
X-Google-Smtp-Source: ACHHUZ5deCVU76Foeg7a0buBB9CuWnVskxyfOleXP+LhFnIdjyEEyLJS7dx3REizHgMeIonsxX6cIk9+a5jIPV4epBM=
X-Received: by 2002:a17:907:36c4:b0:94f:61b2:c991 with SMTP id
 bj4-20020a17090736c400b0094f61b2c991mr2299586ejc.74.1683102809181; Wed, 03
 May 2023 01:33:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAEAv8SAsr=37-qCpzYU88=SO+vRWdkcz9kcD0B8SrODj77XZaA@mail.gmail.com>
 <14190.1683101564095576045@lists.yoctoproject.org>
In-Reply-To: <14190.1683101564095576045@lists.yoctoproject.org>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Wed, 3 May 2023 10:33:03 +0200
Message-ID: <CAEt6NwqRD-M4n088HQnFDsvmKEWZ5kVcZgeT3=mSSuO-+hCC9A@mail.gmail.com>
Subject: Re: [yocto] Trouble Adding Files to rootfs
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000000fe64f05fac5e967"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 May 2023 08:33:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59851

--0000000000000fe64f05fac5e967
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

My guess is that you are on a recent release, which as changed syntax. To
add files to packages, you need:

FILES:${PN} +=3D ...

But I agree with the other responders, please be as precise as possible.
Name your used versions please, for one thing.
The other part is that things will not be added to an image automatically
just because you wrote a recipe. You have to add them explicitly. Its a bit
dated by now, but I think most of this is explained in the various
livecoding sessions:
https://www.youtube.com/playlist?list=3DPLD4M5FoHz-TxMfBFrDKfIS_GLY25Qsfyj

Greetz


On Wed, May 3, 2023 at 10:12=E2=80=AFAM MOHAMMED HASSAN <hassanchattarki@gm=
ail.com>
wrote:

> On Tue, May 2, 2023 at 03:17 PM, Anthony Abboud wrote:
>
> HI Yocto Community,
>
> I am currently working on build a custom Boot2Qt image to learn about
> How-To's since it's my first time playing with Yocto. I am successfully
> able to build an image for my system; manually inserting and launching my
> Qt application works great.
>
> Now I want to include this app and some files into the rootfs of the
> image. I modified the recipe by adding the following lines at the end to
> attempt this:
>
> ```
>
> Ignore my previous posts Ive made some mistakes there.
> 1) Create a custom recipe file.
>
>
> SRC_URI +=3D " \
> file://qtApp_qml \
> file://startup.sh \
> file://fb.modes \
> "
>
>
> Add line S=3D"${WORKDIR}"
>
>
> do_install() {
>   install -d ${D}/home/root
>   install -m 755 ${WORKDIR}/qtApp_qml ${D}/home/root/
>
>   install -d ${D}/etc/init.d
>   install -m 755 ${WORKDIR}/startup.sh ${D}/etc/init.d/
>
>   install -d ${D}/etc
>   install -m 755 ${WORKDIR}/fb.modes ${D}/etc/
> }
>
> FILES_${PN} +=3D " \
>         /home/root/qtApp_qml \
>         /etc/init.d/startup.sh \
>         /etc/fb.modes \
> "
> ```
>
>
> Run bitbake recipename
> If it runs successfully,  then add the below in your local.conf folder.
> CORE_IMAGE_EXTRA_INSTALL_append +=3D " recipename "
> Next bitbake target
>
>
> But I'm simply unable to get those three files to show up at all in the
> final build (both the folders and files!).
>
> I've tried a few variations I saw around but still nothing. Any idea
> what's missing?
>
> Would it be possible for you to share what changes you have tried. To be
> honest I am a beginner too and want too learn more, so I got curious.
> Also the above will most probably work, but in case you solve it with any
> other method, then please post here for other's reference.
>
>
>
> Thanks!
> Anthony
>
>
> Best Regards,
> Hassan
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#59850):
> https://lists.yoctoproject.org/g/yocto/message/59850
> Mute This Topic: https://lists.yoctoproject.org/mt/98649960/4689568
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> jester@theyoctojester.info]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000000fe64f05fac5e967
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">My guess is that you are on a recent release, which as cha=
nged syntax. To add files to packages, you need:<div><br></div><div>FILES:$=
{PN}=C2=A0<a class=3D"gmail_plusreply" id=3D"plusReplyChip-0">+=3D ...</a><=
/div><div><a class=3D"gmail_plusreply"><br></a></div><div>But I agree with =
the other responders, please be as precise as possible. Name your used vers=
ions please, for one thing.</div><div>The other part is that things will no=
t be added to an image automatically just because you wrote a recipe. You h=
ave to add them explicitly. Its a bit dated by now, but I think most of thi=
s is explained in the various livecoding sessions:=C2=A0<a href=3D"https://=
www.youtube.com/playlist?list=3DPLD4M5FoHz-TxMfBFrDKfIS_GLY25Qsfyj">https:/=
/www.youtube.com/playlist?list=3DPLD4M5FoHz-TxMfBFrDKfIS_GLY25Qsfyj</a></di=
v><div><br></div><div>Greetz</div><div><a class=3D"gmail_plusreply"><br></a=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Wed, May 3, 2023 at 10:12=E2=80=AFAM MOHAMMED HASSAN &lt;<a href=
=3D"mailto:hassanchattarki@gmail.com">hassanchattarki@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Tue, May =
2, 2023 at 03:17 PM, Anthony Abboud wrote:<br>
<blockquote>
<div dir=3D"ltr">HI Yocto Community,
<div>=C2=A0</div>
<div>I am currently working on build a custom Boot2Qt image to learn about =
How-To&#39;s since it&#39;s my first time playing with Yocto. I am successf=
ully able to build an image for my system; manually inserting and launching=
 my Qt application works great.</div>
<div>=C2=A0</div>
<div>Now I want to include this app and some files into the rootfs of the i=
mage. I modified the recipe by adding the following lines at the end to att=
empt this:</div>
<div>=C2=A0</div>
<div><span style=3D"color:rgb(51,51,51);font-family:&quot;Helvetica Neue&qu=
ot;,Helvetica,Arial,sans-serif;font-size:14px;white-space:pre-wrap">```<br>=
</span></div>
</div>
</blockquote>
Ignore my previous posts Ive made some mistakes there.<br>1) Create a custo=
m recipe file.<br>
<blockquote>
<div dir=3D"ltr">
<div><span style=3D"color:rgb(51,51,51);font-family:&quot;Helvetica Neue&qu=
ot;,Helvetica,Arial,sans-serif;font-size:14px;white-space:pre-wrap"></span>=
<br style=3D"box-sizing:border-box;color:rgb(51,51,51);font-family:&quot;He=
lvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px;white-space:pr=
e-wrap">SRC_URI +=3D &quot; \<br>file://qtApp_qml \<br>file://startup.sh \<=
br>file://fb.modes \ <br>&quot;</div>
<div>=C2=A0</div>
</div>
</blockquote>
Add line S=3D&quot;${WORKDIR}&quot;<br>
<blockquote>
<div dir=3D"ltr">
<div><br>do_install() {<br>=C2=A0 install -d ${D}/home/root<br>=C2=A0 insta=
ll -m 755 ${WORKDIR}/qtApp_qml ${D}/home/root/<br>=C2=A0 <br>=C2=A0 install=
 -d ${D}/etc/init.d<br>=C2=A0 install -m 755 ${WORKDIR}/startup.sh ${D}/etc=
/init.d/<br>=C2=A0 <br>=C2=A0 install -d ${D}/etc<br>=C2=A0 install -m 755 =
${WORKDIR}/fb.modes ${D}/etc/<br>}<br><br>FILES_${PN} +=3D &quot; \<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 /home/root/qtApp_qml \<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /etc/init.d/startup.sh \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 /etc/fb.modes \=
<br>&quot;<br style=3D"box-sizing:border-box;color:rgb(51,51,51);font-famil=
y:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px;whit=
e-space:pre-wrap"><span style=3D"color:rgb(51,51,51);font-family:&quot;Helv=
etica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px;white-space:pre-=
wrap">```</span></div>
<div>
<div>=C2=A0</div>
</div>
</div>
</blockquote>
Run bitbake recipename<br>If it runs successfully,=C2=A0 then add the below=
 in your local.conf folder.<br>CORE_IMAGE_EXTRA_INSTALL_append +=3D &quot; =
recipename &quot;<br>Next bitbake target<br>
<blockquote>
<div dir=3D"ltr">
<div>
<div>=C2=A0</div>
<div>But I&#39;m simply unable to get those three files to show up at all i=
n the final build (both the folders and files!).</div>
<div>=C2=A0</div>
<div>I&#39;ve tried a few variations I saw around but still nothing. Any id=
ea what&#39;s missing?</div>
</div>
</div>
</blockquote>
Would it be possible for you to share what changes you have tried. To be ho=
nest I am a beginner too and want too learn more, so I got curious.<br>Also=
 the above will most probably work, but in case you solve it with any other=
 method, then please post here for other&#39;s reference.=C2=A0<br>
<blockquote>
<div dir=3D"ltr">
<div>
<div>=C2=A0</div>
<div>=C2=A0</div>
<div>Thanks!</div>
<div>Anthony</div>
</div>
</div>
</blockquote>
<br>Best Regards,<br>Hassan<br>
<blockquote>
<div dir=3D"ltr">
<div>
<div>=C2=A0</div>
</div>
</div>
</blockquote>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#59850): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59850" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/59850</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/98649960/4689=
568" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/98649960/4689568</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:jester@theyoctojester.info" target=3D"_blank">je=
ster@theyoctojester.info</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000000fe64f05fac5e967--

