Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCB6C4167B
	for <webhook@archiver.kernel.org>; Wed,  6 Dec 2023 14:54:58 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
 by mx.groups.io with SMTP id smtpd.web11.33268.1701874490882131669
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Dec 2023 06:54:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=eHSsBrzD;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.208.46, mailfrom: jester@theyoctojester.info)
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-54c7744a93fso5909910a12.2
        for <yocto@lists.yoctoproject.org>; Wed, 06 Dec 2023 06:54:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1701874489; x=1702479289; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XN7u9puQaj3UtMcF4Sn36HTxlp0BrSLP308lpWp8tzM=;
        b=eHSsBrzDwNHATOaHAXkfYniTz0zbhAsSMDr/YlRGAbRU62O6wtoN9EQ/WHFJ55cZSB
         90+dQVvtXS68prPYsizCaSo+FVVlE1Sikxh7Wsojli+9vVJ/2HhPZPpzZJxdQb5UPdgI
         yn6kOTyptnlZew0fTk2kXVS0rU4l2hT9B3n9xuaFDiyb501EaV+ZTfhiJn0UCojS7MfV
         czgslSlUrc/19/SGgzy8rDoSX6TAT+gp0vPU1sTL+NjaS+QfAiPYgdDT5D+dN52ituQP
         Wc31ZrA+k2bG25+ZI2KUJXjhmodGfAjI3tYjPnPEjYe0vCgxCf99ynmIhVDVPKW5sqSs
         0xaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701874489; x=1702479289;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XN7u9puQaj3UtMcF4Sn36HTxlp0BrSLP308lpWp8tzM=;
        b=r48fw/Uvxv9bIwYEsITWaNXon8FtWpa7iN/Tq/TKCVeSTc/l9YTQR6iRagRcr/gGMr
         n/L44ciAXiK3FUf0eaLXyp+E7uSSn2yDMEKbQXM0Zlfeelzl61cAY01jDzpdQMxO6S0W
         jK8exMA5zz96FLB4CKFEm0vjR7cVGxXoez0/8Ok1GtuYIQfH56kWcacVhG3kqA3/72wa
         ddDwpHd7czWcfcDP8xi6ap5uD09zg9J2fSLSKiP/tnsk7zmyxtL0zbhmFnjFIxnZT/Cg
         6UEsh320XkV489i7CIIgxkjYeQA3sHZrvj+rrVmERiz3PbM4VZx5yd+zb6A8rU2eQhjk
         Ojew==
X-Gm-Message-State: AOJu0Yw2/0ztk/tEUxqFQQW2pzn/v3DBzPHpPH1v94ETla+5TiDNXIWd
	od55yEGjHdal1uYni+z5lbFBqIChqJD0bmTEf7/pKg==
X-Google-Smtp-Source: AGHT+IFADsnC6YqXJGTSeBaziMYmWuxyGgyzyr8VkUzYr1Hw9YWsnjzMF5y94w6pJ7Kgi/R5WOi3KUjdrHg9UKbj/5A=
X-Received: by 2002:aa7:c1cc:0:b0:54d:54d:fd50 with SMTP id
 d12-20020aa7c1cc000000b0054d054dfd50mr831284edp.32.1701874489153; Wed, 06 Dec
 2023 06:54:49 -0800 (PST)
MIME-Version: 1.0
References: <1w5J.1701871834409746085.0H28@lists.yoctoproject.org>
In-Reply-To: <1w5J.1701871834409746085.0H28@lists.yoctoproject.org>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Wed, 6 Dec 2023 15:54:23 +0100
Message-ID: <CAEt6Nwop_n5GU+exF+UXKcYufEXmoX-BJXenaBEFP1gi9pEUpg@mail.gmail.com>
Subject: Re: [yocto] WARNING: IMAGE_FSTYPES:remove += is not a recommended
 operator combination, please replace it / Fuzz detected
To: renato.mendes.pes@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000060ef26060bd8880f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Dec 2023 14:54:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61815

--00000000000060ef26060bd8880f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Renato,

Replace it with
IMAGE_FSTYPES:remove =3D "rpi-sdimg"
The +=3D operator is not meant to be used in combination with :append and
:remove.

Greetz,
Josef

On Wed, Dec 6, 2023 at 3:10=E2=80=AFPM <renato.mendes.pes@gmail.com> wrote:

> I'm building a Yocto image to Raspi Zero W and Mender. My configuration:
>
> MACHINE =3D "raspberrypi0-wifi"
> MENDER_ARTIFACT_NAME =3D "release-1"
> INHERIT +=3D "mender-full"
> RPI_USE_U_BOOT =3D "1"
> #MENDER_PARTITION_ALIGNMENT =3D "4096000"
> MENDER_BOOT_PART_SIZE_MB =3D "40"
> IMAGE_INSTALL:append =3D " kernel-image kernel-devicetree"
> IMAGE_FSTYPES:remove +=3D " rpi-sdimg"
> MENDER_SERVER_URL =3D "https://mender.mydomain.com"
> MENDER_TENANT_TOKEN =3D "MY_TOKEN"
> DISTRO_FEATURES:append =3D " systemd"
> VIRTUAL-RUNTIME_init_manager =3D "systemd"
> DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"
> VIRTUAL-RUNTIME_initscripts =3D ""
> IMAGE_FSTYPES =3D "ext4"
>
> When building:
> bitbake core-image-full-cmdline
>
> I'm getting the following warning:
>
> *WARNING: IMAGE_FSTYPES:remove +=3D is not a recommended operator
> combination, please replace it.*
> *WARNING: IMAGE_FSTYPES:remove +=3D is not a recommended operator
> combination, please replace it*
>
> Any ideas of what's going on and how to fix it?
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#61814):
> https://lists.yoctoproject.org/g/yocto/message/61814
> Mute This Topic: https://lists.yoctoproject.org/mt/103013050/4689568
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> jester@theyoctojester.info]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000060ef26060bd8880f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Renato,<div><br></div><div>Replace it with</div><div>IM=
AGE_FSTYPES:remove =3D &quot;rpi-sdimg&quot;</div><div>The=C2=A0+=3D operat=
or is not meant to be used in combination with :append and :remove.</div><d=
iv><br></div><div>Greetz,<br>Josef</div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Dec 6, 2023 at 3:10=E2=80=
=AFPM &lt;<a href=3D"mailto:renato.mendes.pes@gmail.com">renato.mendes.pes@=
gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">I&#39;m building a Yocto image to Raspi Zero W and Mender. My co=
nfiguration:<br><br>
<div style=3D"color:rgb(204,204,204);background-color:rgb(31,31,31);font-fa=
mily:Menlo,Monaco,&quot;Courier New&quot;,monospace;font-size:12px;line-hei=
ght:18px;white-space:pre-wrap">
<div><span style=3D"color:rgb(156,220,254)">MACHINE</span> <span style=3D"c=
olor:rgb(212,212,212)">=3D</span> <span style=3D"color:rgb(206,145,120)">&q=
uot;raspberrypi0-wifi&quot;</span></div>
<div><span style=3D"color:rgb(156,220,254)">MENDER_ARTIFACT_NAME</span> <sp=
an style=3D"color:rgb(212,212,212)">=3D</span> <span style=3D"color:rgb(206=
,145,120)">&quot;release-1&quot;</span></div>
<div><span style=3D"color:rgb(156,220,254)">INHERIT</span> <span style=3D"c=
olor:rgb(212,212,212)">+=3D</span> <span style=3D"color:rgb(206,145,120)">&=
quot;mender-full&quot;</span></div>
<div><span style=3D"color:rgb(156,220,254)">RPI_USE_U_BOOT</span> <span sty=
le=3D"color:rgb(212,212,212)">=3D</span> <span style=3D"color:rgb(206,145,1=
20)">&quot;1&quot;</span></div>
<div><span style=3D"color:rgb(106,153,85)">#MENDER_PARTITION_ALIGNMENT =3D =
&quot;4096000&quot;</span></div>
<div><span style=3D"color:rgb(156,220,254)">MENDER_BOOT_PART_SIZE_MB</span>=
 <span style=3D"color:rgb(212,212,212)">=3D</span> <span style=3D"color:rgb=
(206,145,120)">&quot;40&quot;</span></div>
<div><span style=3D"color:rgb(156,220,254)">IMAGE_INSTALL</span><span style=
=3D"color:rgb(212,212,212)">:</span><span style=3D"color:rgb(156,220,254)">=
append</span> <span style=3D"color:rgb(212,212,212)">=3D</span> <span style=
=3D"color:rgb(206,145,120)">&quot; kernel-image kernel-devicetree&quot;</sp=
an></div>
<div><span style=3D"color:rgb(156,220,254)">IMAGE_FSTYPES</span><span style=
=3D"color:rgb(212,212,212)">:</span><span style=3D"color:rgb(156,220,254)">=
remove</span> <span style=3D"color:rgb(212,212,212)">+=3D</span> <span styl=
e=3D"color:rgb(206,145,120)">&quot; rpi-sdimg&quot;</span></div>
<div><span style=3D"color:rgb(156,220,254)">MENDER_SERVER_URL</span> <span =
style=3D"color:rgb(212,212,212)">=3D</span> <span style=3D"color:rgb(206,14=
5,120)">&quot;<a href=3D"https://mender.mydomain.com" target=3D"_blank">htt=
ps://mender.mydomain.com</a>&quot;</span></div>
<div><span style=3D"color:rgb(156,220,254)">MENDER_TENANT_TOKEN</span> <spa=
n style=3D"color:rgb(212,212,212)">=3D</span> <span style=3D"color:rgb(206,=
145,120)">&quot;MY_TOKEN&quot;</span></div>
<div><span style=3D"color:rgb(156,220,254)">DISTRO_FEATURES</span><span sty=
le=3D"color:rgb(212,212,212)">:</span><span style=3D"color:rgb(156,220,254)=
">append</span> <span style=3D"color:rgb(212,212,212)">=3D</span> <span sty=
le=3D"color:rgb(206,145,120)">&quot; systemd&quot;</span></div>
<div>VIRTUAL<span style=3D"color:rgb(212,212,212)">-</span><span style=3D"c=
olor:rgb(156,220,254)">RUNTIME_init_manager</span> <span style=3D"color:rgb=
(212,212,212)">=3D</span> <span style=3D"color:rgb(206,145,120)">&quot;syst=
emd&quot;</span></div>
<div><span style=3D"color:rgb(156,220,254)">DISTRO_FEATURES_BACKFILL_CONSID=
ERED</span> <span style=3D"color:rgb(212,212,212)">=3D</span> <span style=
=3D"color:rgb(206,145,120)">&quot;sysvinit&quot;</span></div>
<div>VIRTUAL<span style=3D"color:rgb(212,212,212)">-</span><span style=3D"c=
olor:rgb(156,220,254)">RUNTIME_initscripts</span> <span style=3D"color:rgb(=
212,212,212)">=3D</span> <span style=3D"color:rgb(206,145,120)">&quot;&quot=
;</span></div>
<div><span style=3D"color:rgb(156,220,254)">IMAGE_FSTYPES</span> <span styl=
e=3D"color:rgb(212,212,212)">=3D</span> <span style=3D"color:rgb(206,145,12=
0)">&quot;ext4&quot;</span></div>
</div>
<br>When building:=C2=A0<br>
<div style=3D"color:rgb(204,204,204);background-color:rgb(31,31,31);font-fa=
mily:Menlo,Monaco,&quot;Courier New&quot;,monospace;font-size:12px;line-hei=
ght:18px;white-space:pre-wrap">
<div><span style=3D"color:rgb(220,220,170)">bitbake</span> <span style=3D"c=
olor:rgb(206,145,120)">core-image-full-cmdline</span></div>
</div>
<br>I&#39;m getting the following warning:<br><br>
<div><strong>WARNING: IMAGE_FSTYPES:remove +=3D is not a recommended operat=
or combination, please replace it.</strong></div>
<div><strong>WARNING: IMAGE_FSTYPES:remove +=3D is not a recommended operat=
or combination, please replace it</strong><br><br>Any ideas of what&#39;s g=
oing on and how to fix it?<br><br></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#61814): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/61814" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/61814</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/103013050/468=
9568" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/103013050/4689568</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:jester@theyoctojester.info" target=3D"_blank">je=
ster@theyoctojester.info</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--00000000000060ef26060bd8880f--

