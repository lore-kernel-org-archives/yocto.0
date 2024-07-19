Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C65DC3DA5D
	for <webhook@archiver.kernel.org>; Fri, 19 Jul 2024 23:21:53 +0000 (UTC)
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
 by mx.groups.io with SMTP id smtpd.web11.1836.1721431309436213361
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Jul 2024 16:21:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=m9kMLCYW;
 spf=pass (domain: gmail.com, ip: 209.85.160.51, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-25dfb580d1fso991503fac.2
        for <yocto@lists.yoctoproject.org>; Fri, 19 Jul 2024 16:21:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721431308; x=1722036108; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sQOO5Fa17MEKi6opsMOcTJg6PmN3JnW87ESqlCobVus=;
        b=m9kMLCYWFYHo4m9xdEWISSjORXC+q3TzhwshHxv4aELccQl2/qONlT0W36OOzptX7T
         It7/R98p7OHPGmy+qbLyJV3Sf13uTKlvsS04Of/SHox8gPaKJGB6vB+t3K5jdmeE0XV5
         gZS3I5elfVZpPLuXyLxa+jNGvnXuJyM5h8j4NYF6qhTmmRA+c3hY3iIHsFi2VPem8a69
         oKsl3NbPIfVUoa0xvbkRH/0SLnNmYkymoC4rmNUUwXaUyidDsvd2gwwhEPk2BgdQXrbc
         W4vNOodfdYg+NA8DDXZ78HelWEzlQPyI1rm+YicarO/mle/I8Ok7EQaW0fr04k2NqzmY
         KTqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721431308; x=1722036108;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sQOO5Fa17MEKi6opsMOcTJg6PmN3JnW87ESqlCobVus=;
        b=qq4Om+n92GIV269OBwKwRzypsZwl6ewhrHt5eIoPpbnARThHiVHFj6xJiJaKUWbn+P
         G2tukWLbBLOfLCw0azkflO5xZB7ubnLRI5EW10K8/q6ggDLmwZjMO/KMIAlHjKdJ4Lg6
         cbDn4gA4nmdhAMrAS8PxYL/FeGOmmoq2dMbadUSKkxqLG++Pb3srOXMOuLRaCoN0mAvO
         yYlP7kC6o7sv7X22j+EAP5Ji9P+D6dpxBShU5p9LX2Km6i0nNE9U0d8f5LNiSQ0QxCF6
         /UmjxNuwONXCdX9UeHL0NZ8s+hbbaPzQ0vRlHgGgvVlhljDiBoy74/hqG0IaFECBMTmE
         7cyw==
X-Forwarded-Encrypted: i=1; AJvYcCXrJGy1QyUNC8isIUQe4ZAVlmqEGxlXRth5Ib4pCTBcJiWiJYnezxCF9ie+/gUZPMfnGgFnPYDlv/mVmNRRZ8vChfhPTWU6oMUUH/nb
X-Gm-Message-State: AOJu0YykJtcr2SlABHj3K8Fh4aCRYIfKzLh3edZhciIGmEWJ2eI/gTSM
	mjPY0Vew6fcx6C5iDtpGtU4QGHq1o8bNddmWS5UsuZLgXS2pgULsOQqfghjGBt/Qkl0g0Ma/3nN
	yABFkwOZT+QOzbzNENmUsTfvMfto=
X-Google-Smtp-Source: AGHT+IGvkdrN0x2xgpYj9on5s2F6ZkwaO6FlLGjFESllWc0ruIa2r/u9kxPe70FBPH2oZRvOqhxPaLPcIq6A3tK0F2Q=
X-Received: by 2002:a05:6870:b60f:b0:260:ed20:dc8f with SMTP id
 586e51a60fabf-2638deddddbmr25214fac.3.1721431308544; Fri, 19 Jul 2024
 16:21:48 -0700 (PDT)
MIME-Version: 1.0
References: <1619D009AA8C9E469331A8EE22395AEC01106D3D98@Exchange2013.PRIMES.local>
In-Reply-To: <1619D009AA8C9E469331A8EE22395AEC01106D3D98@Exchange2013.PRIMES.local>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 19 Jul 2024 16:21:38 -0700
Message-ID: <CAMKF1soA9tV+Cj1jdrT78JMrvbfFqpcksQsK86PDzjNtzfpWoQ@mail.gmail.com>
Subject: Re: [yocto] Raspberry build: fstype in cmdline.txt might be wrong
To: G.Kautzmann@primes.de, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a6b539061da1f55c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 Jul 2024 23:21:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63539

--000000000000a6b539061da1f55c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 19, 2024 at 4:14=E2=80=AFAM Gerd Kautzmann via lists.yoctoproje=
ct.org
<G.Kautzmann=3DPRIMES.de@lists.yoctoproject.org> wrote:

> I might have discovered a minor bug when building a bootable yocto
> scarthgap for Raspberry Pi.
>
> The cmdline.txt in the vfat partition is asking for an ext4 bootsystem:
>
> =E2=80=9E dwc_otg.lpm_enable=3D0 console=3Dserial0,115200 root=3D/dev/mmc=
blk0p2
> rootfstype=3Dext4 rootwait  net.ifnames=3D0 =E2=80=9C
>
> but blkid proofes it is an ext3 partition:
>
> =E2=80=9E /dev/mmcblk0p2: UUID=3D"6a34a495-6214-4a0d-b960-72f70fc80f3e" T=
YPE=3D"ext3" =E2=80=9C
>
>
> Even the /etc/mtab seems to be confused:
>
>
> =E2=80=9E /dev/root / ext4 rw,relatime 0 0 =E2=80=9E
>
>
>
> I hope this will not lead to any problems.
>

How are you building sd card image

>
>
> *CU Gerd*
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#63537):
> https://lists.yoctoproject.org/g/yocto/message/63537
> Mute This Topic: https://lists.yoctoproject.org/mt/107433054/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000a6b539061da1f55c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Jul 19, 2024 at 4:14=E2=80=AFAM Gerd Kautzmann via =
<a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;G.=
Kautzmann=3D<a href=3D"mailto:PRIMES.de@lists.yoctoproject.org">PRIMES.de@l=
ists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">





<div lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"m_7638119752505370486WordSection1">
<p class=3D"MsoNormal">I might have discovered a minor bug when building a =
bootable yocto scarthgap for Raspberry Pi.<br>
<br>
The cmdline.txt in the vfat partition is asking for an ext4 bootsystem:<br>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Cascadia Mono&quot;;color=
:#444444;background:white">=E2=80=9E dwc_otg.lpm_enable=3D0 console=3Dseria=
l0,115200 root=3D/dev/mmcblk0p2 rootfstype=3Dext4 rootwait =C2=A0net.ifname=
s=3D0 =E2=80=9C<br>
<br>
</span>but blkid proofes it is an ext3 partition:<br>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Cascadia Mono&quot;;color=
:#444444;background:white">=E2=80=9E /dev/mmcblk0p2: UUID=3D&quot;6a34a495-=
6214-4a0d-b960-72f70fc80f3e&quot; TYPE=3D&quot;ext3&quot; =E2=80=9C<br>
<br>
<br>
Even the /etc/mtab seems to be confused:<br>
<br>
<br>
</span>=E2=80=9E <span style=3D"font-size:10.0pt;font-family:&quot;Cascadia=
 Mono&quot;;color:#444444;background:white">
/dev/root / ext4 rw,relatime 0 0 =E2=80=9E</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-right:0cm;margin-bottom:1.0pt;margin=
-left:0cm">
<span lang=3D"EN-US" style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;=
,sans-serif;color:black"><br>
<br>
I hope this will not lead to any problems.</span></p></div></div></blockquo=
te><div dir=3D"auto"><br></div><div dir=3D"auto">How are you building sd ca=
rd image=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div lang=3D"DE" link=3D=
"#0563C1" vlink=3D"#954F72"><div class=3D"m_7638119752505370486WordSection1=
"><p class=3D"MsoNormal" style=3D"margin-right:0cm;margin-bottom:1.0pt;marg=
in-left:0cm" dir=3D"auto"><span lang=3D"EN-US" style=3D"font-size:9.0pt;fon=
t-family:&quot;Arial&quot;,sans-serif;color:black"><u></u><u></u></span></p=
>
<p class=3D"MsoNormal" style=3D"margin-left:5.65pt"><span style=3D"font-siz=
e:2.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#383739"><br>
<br>
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-GB" style=3D"font-size:8.0pt;fon=
t-family:&quot;Arial&quot;,sans-serif;color:#4f4d51">CU Gerd</span></b><u><=
/u><u></u></p>
</div>
</div>

<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#63537): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63537" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63537</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/107433054/199=
7914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/107433054/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000a6b539061da1f55c--

