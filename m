Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.16244.1579630195318589340
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jan 2020 10:09:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@assonance-org.20150623.gappssmtp.com header.s=20150623 header.b=ywwOxZgy;
 spf=softfail (domain: assonance.org, ip: 140.211.169.56, mailfrom: aaron@assonance.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2FB7E015DA; Tue, 21 Jan 2020 10:09:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8481E0044F
	for <yocto@yoctoproject.org>; Tue, 21 Jan 2020 10:09:51 -0800 (PST)
Received: by mail-ot1-f43.google.com with SMTP id p8so3762489oth.10
        for <yocto@yoctoproject.org>; Tue, 21 Jan 2020 10:09:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=assonance-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=VDXrZREvb1CTQZ1NyUB6lUTn+BPatRE5eIp7/3/AlU4=;
        b=ywwOxZgy6AstJZIB7xoXtwG9Hd9ltSYwE2zPcAtT8w8nfZKux+IbY+9yMRaA6BNv7T
         v3VfbeMg5y4BQRnW+IoCokpgUgyq1wm4n3XUr4L5Gs4Iq/vsi43QI1xIjT/go3glmzjy
         e6VxIo2orMD0KyTRc+ttvZgNEW5YPakwt3d7TgkwhhpFgxmhM/qbsg82Qb/mjkbl+7bk
         sTpFQKCjQOA0bpTZmHWxMcSHR3yj0A5WId5OXda4k3O15pHS71V4aMj5f0r2fGSC60yd
         33hCifcEw2NRBoEZ0Qd/XBe73/oILqbnu4lLy9Ykf5USCXCmeo3MnlModN62yN6uzWLK
         qazg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=VDXrZREvb1CTQZ1NyUB6lUTn+BPatRE5eIp7/3/AlU4=;
        b=RPNdAhHLnd08O3YOXoRls7RmKSIjRFSk0dCbq7VrLD5B/2Yrjh+oCN8f/filKn8Lma
         z9e5HQ/AFSmF87dErEY75lV6MOnBCBqqq5syaJXUrguEWgvfBWx6Fn8Qbykjmk+R4Foq
         6kZnf/AJZBojBqMxVy0IgWQCK6NTaaG0JRFBAlGU59wReXbKWepqQJg26Bluw/SrmAwH
         rmee01JQy+qVcSGdmJoqWpvKOqja1GtvhQhubiPRh7ADIbQ+brh5++1NRpAHwNO24fzD
         hpzQKufmzPh38hgTmFm8O4mC4VuqdyMhrDqib4klcHz1KTSCpArM8T0uE4GfqVIbfRrf
         bomg==
X-Gm-Message-State: APjAAAUyIecJqFt1AmF4TtOPseZL3c3Eehj4QMPqswCrlfgRap6oghgt
	NRVqJ+Gq+gNDWh/LVsDrMUd6sU2uU/KeGOKRJyGvzblZp/c=
X-Google-Smtp-Source: APXvYqx7xZvHODVWKuMKq/FmNRqbfArCB7SykTTqLop2jU5GiSxeDNw9DJtlGth8yFVGEfqPrnJHNk/XbugYaRWTgZs=
X-Received: by 2002:a9d:c42:: with SMTP id 60mr4415157otr.182.1579630190806;
 Tue, 21 Jan 2020 10:09:50 -0800 (PST)
MIME-Version: 1.0
From: "Joel A Cohen" <aaron@assonance.org>
Date: Tue, 21 Jan 2020 13:09:39 -0500
Message-ID: <CAFSZm+jDtbpE0wwVNydu8zs7oF5i9LGWCahmXQggbjyOhye1OA@mail.gmail.com>
Subject: Bundled initramfs not updating?
To: Yocto list discussion <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000066613b059caa506a"

--00000000000066613b059caa506a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I=E2=80=99m using thud latest and trying to update the initramfs that is bu=
ndled
into my kernel.

For some reason, my initramfs is updated in the images directory, but I=E2=
=80=99m
still getting some old version of the initramfs bundled into the kernel
when I rebuild my image.

Anyone have advice about what to look into to fix this?

--00000000000066613b059caa506a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I=E2=80=99m using thud latest and trying to update the in=
itramfs that is bundled into my kernel.</div><div dir=3D"auto"><br></div><d=
iv dir=3D"auto">For some reason, my initramfs is updated in the images dire=
ctory, but I=E2=80=99m still getting some old version of the initramfs bund=
led into the kernel when I rebuild my image.</div><div dir=3D"auto"><br></d=
iv><div dir=3D"auto">Anyone have advice about what to look into to fix this=
?</div>

--00000000000066613b059caa506a--
