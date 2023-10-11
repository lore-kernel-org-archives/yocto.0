Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55D5ACD6E55
	for <webhook@archiver.kernel.org>; Wed, 11 Oct 2023 09:26:20 +0000 (UTC)
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com [209.85.222.44])
 by mx.groups.io with SMTP id smtpd.web11.12642.1697016374221753410
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Oct 2023 02:26:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GTNgfq9W;
 spf=pass (domain: gmail.com, ip: 209.85.222.44, mailfrom: quaresma.jose@gmail.com)
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-7b0767462adso1981779241.1
        for <yocto@lists.yoctoproject.org>; Wed, 11 Oct 2023 02:26:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697016373; x=1697621173; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Tx5bjsMnVrhA+GHxGN7eIChwV4fCNDHOT2OpHXdsLzs=;
        b=GTNgfq9W3UW56d4fmCDcY33XoTubqeD5F8zBd2qLfxjCI7oQ6N1FPVkMQTUwvno8do
         7IBFLt6PJZ8OgfYFpVcL1n6tL23OjQ/JtMKG3CPXMUYNW/A56utqW/997wK+h9TwRnMl
         TTAkPB0rZger1arxcw71UBwr9CGnfnxOJ7BZuxlMT5ja59kqQmw2plg3wcOUAQuPCbxY
         KsI4psFcepJSeSJsDa0XKW+uu4UGyl6CL8lCaNnnKL0ohAEHTGUgo2yfsYAnQSWrhPcy
         pCV6nWNcuInKUXium0hcLW9JErn08b3aIicFHTfjEHASGfkJHJ6NO6p5DEXZItRw93Gc
         o/KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697016373; x=1697621173;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tx5bjsMnVrhA+GHxGN7eIChwV4fCNDHOT2OpHXdsLzs=;
        b=FFc559QDkwjVvsteaTladHxLhm3wDkAHixzEk5sGjJprsF4szByE5My3dx4XTSGh78
         ngkFLvG6vhRq/idyiByB1Cpy+y3CRqtnklTzfN+qecNXK5huF4SXXpVx0s/h7GxvKHZ3
         weUamxbbzJbLso08u6PwXaae8N85qlhY4JaipR982gUqnlJnZ1FN2Hg360nJblpKb/l8
         PtRWVoyDW2j0RUrl/AmoeRIJwKVoiHP4SjGjZoJBwy8ng9S7W8PpOmA9GCjO4Fg2Horz
         g49q+Er57J7S8zImj2ZFz56P+yHuLqQCS8QTb0pwKACnM/JYUvNfk3hw9O5L1KbHK3RC
         Ysxw==
X-Gm-Message-State: AOJu0Yx279QpUbiHDTPjZtPWQyks8w2Y+Gi4OCPA3NfUljzgSg8dP0V2
	S2RICwAZyogPSo7JOdpMEejhhDBVd9HRnWkIIeM=
X-Google-Smtp-Source: AGHT+IE/sjhEzP7pEElc0mw1vBA1chSHPqx13Oywt+0Lxi7QCGARXlBMSoeO6LaKtos6DEU/IhQ/1jimQZ08nhGuJYg=
X-Received: by 2002:a67:e3c2:0:b0:452:94b8:2fe9 with SMTP id
 k2-20020a67e3c2000000b0045294b82fe9mr13598087vsm.21.1697016373094; Wed, 11
 Oct 2023 02:26:13 -0700 (PDT)
MIME-Version: 1.0
References: <20231002145446.3166108-1-fabien.thomas@smile.fr>
 <178B43BD6DF66AF4.3256@lists.yoctoproject.org> <178B4DC19A31CF35.3256@lists.yoctoproject.org>
 <a1f9a4b2816d9f048d9ef04d20a6a21b5663ecd7.camel@linuxfoundation.org>
 <CAFS+G_tey5-KWRgOSsTTUcBpSWXmbzYkX_BaF=gp_iUJ3Ag9cg@mail.gmail.com> <CANNYZj-Y2sXGN1vKswDn_QNd5ucCQaTHN8rovN_BbvhBuge=oA@mail.gmail.com>
In-Reply-To: <CANNYZj-Y2sXGN1vKswDn_QNd5ucCQaTHN8rovN_BbvhBuge=oA@mail.gmail.com>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Wed, 11 Oct 2023 10:26:02 +0100
Message-ID: <CANPvuRnzXnLqyXjtQkjNmQO7HtbjTkAdrF+-ebGcpRoYmUwm7w@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH v2] config.json: add
 reproducible-openembedded build
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Fabien Thomas <fabien.thomas@smile.fr>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>, yocto@lists.yoctoproject.org, 
	Yoann Congal <yoann.congal@smile.fr>
Content-Type: multipart/alternative; boundary="00000000000018b15706076d6a88"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 11 Oct 2023 09:26:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61320

--00000000000018b15706076d6a88
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Alexander Kanavin <alex.kanavin@gmail.com> escreveu no dia quarta,
11/10/2023 =C3=A0(s) 09:38:

> On Fri, 6 Oct 2023 at 16:27, Fabien Thomas <fabien.thomas@smile.fr> wrote=
:
> > -> On the build step "Run cmds" for meta-oe, I see following error :
> > ERROR - Build directory
> > /home/pokybuild/yocto-worker/reproducible-meta-oe/build/build-st
> > already exists, aborting
> > Probably due to previous step failed. Do you think it is necessary to
> > add an rm -rf [...]/build-st in each step, before actually running
> > selftest ?
>
> No, because this complicates investigating failures after they
> happened. The correct thing to do is to stop the whole job when a
> specific step fails. Letting subsequent steps fail due to the already
> existing failed directory is ok too.
>

Other options can be using oe-selftest --newbuilddir
[...]/build-st-${LAYER} and build each layer in your own directory.
I have used this --newbuilddir in my reproducible build and it works.

Jose


>
> Alex
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61316):
> https://lists.yoctoproject.org/g/yocto/message/61316
> Mute This Topic: https://lists.yoctoproject.org/mt/101713575/5052612
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--00000000000018b15706076d6a88
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Alexander Kanavin &lt;<a href=3D"mail=
to:alex.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt; escreveu no dia q=
uarta, 11/10/2023 =C3=A0(s) 09:38:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">On Fri, 6 Oct 2023 at 16:27, Fabien Thomas &lt;<a href=
=3D"mailto:fabien.thomas@smile.fr" target=3D"_blank">fabien.thomas@smile.fr=
</a>&gt; wrote:<br>
&gt; -&gt; On the build step &quot;Run cmds&quot; for meta-oe, I see follow=
ing error :<br>
&gt; ERROR - Build directory<br>
&gt; /home/pokybuild/yocto-worker/reproducible-meta-oe/build/build-st<br>
&gt; already exists, aborting<br>
&gt; Probably due to previous step failed. Do you think it is necessary to<=
br>
&gt; add an rm -rf [...]/build-st in each step, before actually running<br>
&gt; selftest ?<br>
<br>
No, because this complicates investigating failures after they<br>
happened. The correct thing to do is to stop the whole job when a<br>
specific step fails. Letting subsequent steps fail due to the already<br>
existing failed directory is ok too.<br></blockquote><div><br></div><div>Ot=
her options can be using=C2=A0oe-selftest --newbuilddir [...]/build-st-${LA=
YER} and build each=C2=A0layer=C2=A0in your own directory.</div><div>I have=
 used this --newbuilddir in my reproducible build and it works.</div><div><=
br>Jose</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">
<br>
Alex<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#61316): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/61316" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/61316</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/101713575/505=
2612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/101713575/5052612</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quare=
sma.jose@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div></=
div>

--00000000000018b15706076d6a88--

