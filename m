Return-Path: <bratiranjan12@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3BBC3C4345F
	for <webhook@archiver.kernel.org>; Tue, 16 Apr 2024 08:36:40 +0000 (UTC)
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
 by mx.groups.io with SMTP id smtpd.web10.15506.1713256598781151154
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Apr 2024 01:36:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=VgOCM+AT;
 spf=pass (domain: gmail.com, ip: 209.85.160.43, mailfrom: bratiranjan12@gmail.com)
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-23335730db1so2385525fac.2
        for <yocto@lists.yoctoproject.org>; Tue, 16 Apr 2024 01:36:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713256598; x=1713861398; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hm1J6vbc9sXWiYV7Hu8hMAvpoYQqaYDCrBvbdEBAr48=;
        b=VgOCM+ATiGDHe6wrerSbHamGGHgmm3j+duZh89lxJkqMWc5ed+BQFVbVS0kJBqP5Cr
         cp2a1o0MRqrfVZManaCH3Kbm50n4oVO71FMukV6zIlURYXax3Lejey/cIL/eXXqb0umC
         AV7WfANaKvh0OmpGxKceNhVYFFPY7iWFQa6n/wc2he1Cfua/aheU9vto+0Ja0jc3Z9lP
         X0YHOcp9R4Z9Pgpr3zsI3kR1twVhkQfaQfB07GghTK1QriwxUhUlPT3SbbCZvOWdgQVm
         81AbILbNTat8T+f4rrCGK8Y/ktZhDLPP5TBo7lBZAe3c80XaQsQXol3+RlO7jOnAvWUF
         yFYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713256598; x=1713861398;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hm1J6vbc9sXWiYV7Hu8hMAvpoYQqaYDCrBvbdEBAr48=;
        b=X6DzWvtbrdcnqST/h4X4fO5jEYCTcVchaU93M/wq61xzX3pCUuoZTlrZVF6XzQPZ9M
         jww+MItkmvfD0Hp6kU3fVXiZ/aFKlQ76Uko6f+NsULQpvBE77VIk+yZCoDjOxfNQ72Z4
         HKIb83NdMwaOg3a3Oy23Piv3oxYAnDezsNTLa2ZfYtUg6nE0xYGzpu4gB1iIxbt9mjCg
         YwZ0KdDIX4QdI5gHFjqcTbf20feCWQ6UrV2QxHHjVnIqMsX17Lvh2siNCCmorr1/J2y0
         yIsaIAhKCmjJ5dauEIIPQHtFI9b8+UWulVSEi/TuzrvoZhOh4ej77py7yA7O41GNdRk4
         68WQ==
X-Gm-Message-State: AOJu0YzYNedqSCORyazp/OfVPwhrXZLG5Z/yOGO72owJGU7W8bJ7z+hy
	vw/MUp7ZrEsh83SvpuIRRt11Uae61sZ9YRBRjMmd6kPS/FtHxyFa1N7AiWl1h/g/rWXnWzak9W2
	5Y2XaDaFdQRQZPMvpFtMtDmuvwYyoJQ==
X-Google-Smtp-Source: AGHT+IGX9T68pbkFt3ISfxddOuqmUdY1LPDlVPnr2MWbHaD42Hv4Mz82vV+TtxNv9YYPqM2A6n6NjiB9HqSAad5urP4=
X-Received: by 2002:a05:6870:a3d0:b0:234:2ad3:524a with SMTP id
 h16-20020a056870a3d000b002342ad3524amr8649714oak.58.1713256597569; Tue, 16
 Apr 2024 01:36:37 -0700 (PDT)
MIME-Version: 1.0
References: <CALSmAY76pRGxBWfWJQFEuiEQ1e3tmMm03p=wAnZr+=+Eb_cZbg@mail.gmail.com>
In-Reply-To: <CALSmAY76pRGxBWfWJQFEuiEQ1e3tmMm03p=wAnZr+=+Eb_cZbg@mail.gmail.com>
From: Bratiranjan Acharya <bratiranjan12@gmail.com>
Date: Tue, 16 Apr 2024 14:06:26 +0530
Message-ID: <CALSmAY6riT0qgNcrQMcYTSSfguvXirYb3EEa2=Kd1CcdQOX9gA@mail.gmail.com>
Subject: Fwd: Wic Image Generation
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e84927061632a214"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Apr 2024 08:36:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62935

--000000000000e84927061632a214
Content-Type: text/plain; charset="UTF-8"

---------- Forwarded message ---------
From: Bratiranjan Acharya <bratiranjan12@gmail.com>
Date: Thu, 11 Apr 2024 at 11:12
Subject: Wic Image Generation
To: <yocto@lists.yoctoproject.org>


Hi,
I want to create a Wic image from total scratch. Like, i have a "gpt.bin"
which creates the partition and put the required images in it. But, i want
to reate a wic image which will do the same. So, for that do i need that
"gpt.bin"? like, as per my knowledge wic cannot create the gpt
partition please do correct me if am wrong. And i dont even have any
.bbclass file which can help to create the wic image so please help me to
generate this wic image from total scratch, what are the steps i need to
follow, where i need to put the wks file and how i can write in the wks
file.

FOR Eg: I need to have 6 partitions where i have a active and backup
bootloader,kernel,rootfs so for that how we can write the wks file.

Thanks & Regards
Brati

--000000000000e84927061632a214
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">---------- Forwarded message ---------<br>From: <strong cla=
ss=3D"gmail_sendername" dir=3D"auto">Bratiranjan Acharya</strong> <span dir=
=3D"auto">&lt;<a href=3D"mailto:bratiranjan12@gmail.com">bratiranjan12@gmai=
l.com</a>&gt;</span><br>Date: Thu, 11 Apr 2024 at 11:12<br>Subject: Wic Ima=
ge Generation<br>To:  &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org">y=
octo@lists.yoctoproject.org</a>&gt;<br></div><br><br><div dir=3D"ltr">Hi,<b=
r>I want to create a Wic image from total=C2=A0scratch. Like, i have a &quo=
t;gpt.bin&quot; which creates the partition and put the required images in =
it. But, i want to reate a wic image which will do the same. So, for that d=
o i need that &quot;gpt.bin&quot;? like, as per my knowledge wic cannot cre=
ate the gpt partition=C2=A0please do correct me if am wrong. And i dont eve=
n have any .bbclass file which can help to create the wic image so please h=
elp me to generate this wic image from total scratch, what are the steps i =
need to follow, where i need to put the wks file and how i can write in the=
 wks file.<br><br>FOR Eg: I need to have 6 partitions=C2=A0where i have a a=
ctive and backup bootloader,kernel,rootfs so for that how we can write the =
wks file.<br><br>Thanks &amp; Regards<br>Brati</div>
</div></div>

--000000000000e84927061632a214--

