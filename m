Return-Path: <simonkbaby@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6D12C001CC
	for <webhook@archiver.kernel.org>; Thu, 11 Apr 2024 16:49:27 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web11.23214.1712854166235356384
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Apr 2024 09:49:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DgHGpJQL;
 spf=pass (domain: gmail.com, ip: 209.85.216.47, mailfrom: simonkbaby@gmail.com)
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-2a55a3d0b8eso23552a91.1
        for <yocto@lists.yoctoproject.org>; Thu, 11 Apr 2024 09:49:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712854165; x=1713458965; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P3HTQUEVKiTOs9DIuFDxnTC1CwL9KtgR7d88zZiH1lo=;
        b=DgHGpJQLxxP9Bu9z2q5HOhxM3aQQswOUI/EDJnCEem4m3tizcQOqlu9HU6DM9H/nEt
         y+6/jE4T+8bSmwdcpahJFgWIU+OOAxPDNkdsj69cas/kROtWoW7a+vQJ+e0tRB1VMFDr
         o50eerEteu1W0YA6C7BuT//Thdra60c0XanDhYQ98JHARpBSPGkUqA8Az8zQFLqvI7Xn
         eqYPJgV7qPgxjddVvhChzhr2sDHCFj+pIkVXLdhd9DV1Xk0L6GdJM9I+RG+XqDINMF7Z
         zX0QBRrqHEREgZvoh82QYbU5CnyoH1lrt8FCc7M/TMY1020U2waE+zz/sWlcKrQBHQz4
         FaMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712854165; x=1713458965;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P3HTQUEVKiTOs9DIuFDxnTC1CwL9KtgR7d88zZiH1lo=;
        b=U9d106U7BG6fbSTgHTHw5YpRtctbSfRz9F2O/qbSu2m9aia3+EXoXEZQD+hRa34EiX
         DrZvTnvTYBcqYvaebN1xWGGJ8rxZ8cHFofNDNFOwmbqC9zvKZlprCV3ZazBVBOAco7zu
         1l0xI2N3o0zlD02SIZGNxEQbJ+We53y0OhXCRMKt195pOLx4I8jeONz9X3OStOt7sMiE
         lMgpdXwdLIezjYCsgkgIft2MQAyODyT4H65beWXS0TG1pXOQ/3tj9MmJr4aRuEwyQiPx
         LpDcQ1TIv+DoWwxOUoWbnUqKKNhV/mZSopFUUF1KCxjCE7eYXOYmNoTNOUKYqMRb9n1l
         gVNw==
X-Gm-Message-State: AOJu0Yyr6JOZunsueHmFhiWdmQF3P8tRD/5kwGY7SP4X2rCS57mRsp+E
	7GVqTAxBeqfX73qBkf5ta63sFgbmZ2nXDSt+tMyrtEKfgqiyZdTUUyeGfU9r2Otx3HH+5VZXQAy
	39JQeWg9RzpkkVCobQiGagVVnnKyaxw==
X-Google-Smtp-Source: AGHT+IFEjccp5DozAIPZ6p8pXgQ+VhYh0qq7kdUbzuQWhmC8TuI4MwyBFUltIc2KAZRgn7UtXaMegQyKYdS/+vXBO6Y=
X-Received: by 2002:a17:90b:5387:b0:2a5:506f:161c with SMTP id
 sv7-20020a17090b538700b002a5506f161cmr347762pjb.4.1712854165126; Thu, 11 Apr
 2024 09:49:25 -0700 (PDT)
MIME-Version: 1.0
References: <CALSmAY76pRGxBWfWJQFEuiEQ1e3tmMm03p=wAnZr+=+Eb_cZbg@mail.gmail.com>
In-Reply-To: <CALSmAY76pRGxBWfWJQFEuiEQ1e3tmMm03p=wAnZr+=+Eb_cZbg@mail.gmail.com>
From: SIMON BABY <simonkbaby@gmail.com>
Date: Thu, 11 Apr 2024 09:49:13 -0700
Message-ID: <CAEFUPH3zHR2BF13UpUhxfSx+cChsgZqg=gMBhty01JJrzEz+Wg@mail.gmail.com>
Subject: Re: [yocto] Wic Image Generation
To: yocto@lists.yoctoproject.org, bratiranjan12@gmail.com
Content-Type: multipart/alternative; boundary="000000000000108d2a0615d4f0f8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Apr 2024 16:49:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62920

--000000000000108d2a0615d4f0f8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I am also looking to format my eMMC card with 6 partitions with different
primary and secondary images. How can I achieve this using the wks file ?

Regards
Simon

On Thu, Apr 11, 2024 at 12:38=E2=80=AFAM Bratiranjan Acharya <
bratiranjan12@gmail.com> wrote:

> Hi,
> I want to create a Wic image from total scratch. Like, i have a "gpt.bin"
> which creates the partition and put the required images in it. But, i wan=
t
> to reate a wic image which will do the same. So, for that do i need that
> "gpt.bin"? like, as per my knowledge wic cannot create the gpt
> partition please do correct me if am wrong. And i dont even have any
> .bbclass file which can help to create the wic image so please help me to
> generate this wic image from total scratch, what are the steps i need to
> follow, where i need to put the wks file and how i can write in the wks
> file.
>
> FOR Eg: I need to have 6 partitions where i have a active and backup
> bootloader,kernel,rootfs so for that how we can write the wks file.
>
> Thanks & Regards
> Brati
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62913):
> https://lists.yoctoproject.org/g/yocto/message/62913
> Mute This Topic: https://lists.yoctoproject.org/mt/105458322/4946642
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> simonkbaby@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000108d2a0615d4f0f8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am also looking to format=C2=A0my eMMC card with 6 parti=
tions with different primary and secondary images. How can I achieve this u=
sing the wks file ?<div><br></div><div>Regards</div><div>Simon</div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu,=
 Apr 11, 2024 at 12:38=E2=80=AFAM Bratiranjan Acharya &lt;<a href=3D"mailto=
:bratiranjan12@gmail.com">bratiranjan12@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<br>I =
want to create a Wic image from total=C2=A0scratch. Like, i have a &quot;gp=
t.bin&quot; which creates the partition and put the required images in it. =
But, i want to reate a wic image which will do the same. So, for that do i =
need that &quot;gpt.bin&quot;? like, as per my knowledge wic cannot create =
the gpt partition=C2=A0please do correct me if am wrong. And i dont even ha=
ve any .bbclass file which can help to create the wic image so please help =
me to generate this wic image from total scratch, what are the steps i need=
 to follow, where i need to put the wks file and how i can write in the wks=
 file.<br><br>FOR Eg: I need to have 6 partitions=C2=A0where i have a activ=
e and backup bootloader,kernel,rootfs so for that how we can write the wks =
file.<br><br>Thanks &amp; Regards<br>Brati</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#62913): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/62913" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/62913</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/105458322/494=
6642" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/105458322/4946642</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:simonkbaby@gmail.com" target=3D"_blank">simonkba=
by@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000108d2a0615d4f0f8--

