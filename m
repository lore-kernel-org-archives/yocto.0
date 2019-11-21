Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E55F1E00B0B; Thu, 21 Nov 2019 01:27:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
	[209.85.208.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92FD0E007AE
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2019 01:27:32 -0800 (PST)
Received: by mail-lj1-f172.google.com with SMTP id n21so2352689ljg.12
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2019 01:27:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=v3rSJc90QDZ42liix4Jq6HQim4AUE5b33ZJs1HgMAKw=;
	b=UZ6LgwSI+NFqemQO78t6c0vRwJ4WeNp8ZDRWCiuI9zj00UjwA3SQWb2iuvAo5zra2F
	lSD9kYMIp1FxJV/jD+IsNgUFF0f0w59rPakfSDHWS315ntejJD2UQjocHs3OLWEIvv5+
	5FlqPI+kcw52sIBkyz1uXVoTD20MQt+SsqzDjLtZKOtpLdNMdNTVQBRw9Kv5x/HjD9VK
	tRiGQXv0ER/lyLKjhnXlMmwDRWBkowyYQD3yTIeKZXH0xnjbOtRC77CZ7HY1cQ9K4+Cg
	NQdKeJIO0VHjD7qenkic2fGB418CFPj4qWBKMimMg3PMZqNDdn0Dnk4i7Q1eLy46lCcy
	7xzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=v3rSJc90QDZ42liix4Jq6HQim4AUE5b33ZJs1HgMAKw=;
	b=FhguoJLSGhwPQo5FnR4a80EAamPBPQg6Mhd5ZvqzAlEtXk5KcTFVCfIYwvIZ/i4kqi
	1J28GX2/sMdzYkuRiq7BrrsN4NLNgUyc6+EiFHAu2DUnmxc15OK8pf6QxCzsfy6sRFXb
	YZssHBK49r2DaBR+Bj9KYr+5kUKq2+jXZLQVW8egYjbfyR+N1ta6L2Xw1wBXe+eHWUDD
	tJ5af9+0MvLwk/tN1x2xAuc3bRn1EyN3eblAgJ/TtAWMF+9lfQNKtAKcxGiZBf8JTKxs
	OwOlcY4uSa4odsngLQuD/+DMewei+pbsJafXkH15I7kTp3p/cQFqx8zy3h50iqrmGpAy
	uMEw==
X-Gm-Message-State: APjAAAVwa1XG26zMPX+an24qt/KK4dsfemdbNtVSaIt4DI35UMkzTWpc
	mvFBbGmcrOwSzXFUtm6oiy4NQ8JdwX0beZVyXVZaEw==
X-Google-Smtp-Source: APXvYqxU+9RbXup1geFiNYijadmZqK2T4OdPS6t8/jjzMxmnxGnyRzk1j1XSxD52JK+t+EB8h5Fu4o5fRyG3fZ9KoIA=
X-Received: by 2002:a2e:898a:: with SMTP id c10mr6458485lji.177.1574328451422; 
	Thu, 21 Nov 2019 01:27:31 -0800 (PST)
MIME-Version: 1.0
References: <LO3P265MB1833034A1F2816101F2B3F1E9C4F0@LO3P265MB1833.GBRP265.PROD.OUTLOOK.COM>
In-Reply-To: <LO3P265MB1833034A1F2816101F2B3F1E9C4F0@LO3P265MB1833.GBRP265.PROD.OUTLOOK.COM>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 21 Nov 2019 10:27:20 +0100
Message-ID: <CAP71WjxRadTs3DQh_O1DxZzRdAtrsdzU-KJVDWvU-ngAU5jApw@mail.gmail.com>
To: Richard Barrass <r.barrass@bassettelectronics.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Is Yocto the right fit for my project?
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
X-List-Received-Date: Thu, 21 Nov 2019 09:27:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

hey,

On Thu, Nov 21, 2019 at 10:16 AM Richard Barrass
<r.barrass@bassettelectronics.com> wrote:
>
> Hello,
>
>
>
> I am a lead engineer on project where we run a well-known Linux distribut=
ion on-top of a SBC (Intel Quad Pentium processor based) driving a 27=E2=80=
=9D display. We have a 32GB SSD to run from, which we partition with multip=
le EXT4 partitions to help with potential corruption mitigation if the devi=
ce is switched off =E2=80=98hard=E2=80=99.
>
>
>
> But, with the well-known Linux distribution comes a lot of things we don=
=E2=80=99t need, plus the potential ability to =E2=80=98break=E2=80=99 in t=
o our application which is running full-screen.
>
>
>
> We basically need
>
>
>
> QT 5.12 runtime (our application)
>
> SSH
>
> OpenVPN
>
> Wifi
>
> Ethernet
>
> Modem (via Telit modem)
>
> USB-ACM
>
> USB-Memory stick
>
>
>
> Is this something I should be looking to the yocto project for, or should=
 I be looking at a more =E2=80=98traditional=E2=80=99 custom linux distro.

The way you ask the question, you seem to already know the answer ;)

Based on tools, metadata and processes provided by the Yocto Project
and OpenEmbedded, you will be able to create *the* Linux system that
fits your exact needs and requirements. You can customize the content
of the system (image), and also the features you need from each
component that make up the whole system (distro). Doing that with the
Yocto Project means that you are using a standard tool that many
people are familiar with, so it's definitely better than starting your
own custom Linux, or starting to randomly try to trim down an existing
standard Linux distro.

>
>
>
> The only other aspect, is that we have future plans to cost reduce the ap=
plication to be running on a Pi based, 10=E2=80=9D display system =E2=80=A6

The project is architecture agnostic. So once you have defined your
distro (system config) and your image (system content), you can build
the *same* Linux system for any hardware, even for different
architecture, using the same tools, same metadata, same CI scripts,
... you just need to integrate a BSP layer that provides kernel,
bootloader and hardware specific content.

>
>
>
> Any thoughts and ideas would be appreciated.

On top of that you get to work with our great community ;)

>
>
>
> Regards
>
> Richard
>
>
>
> --
>
> Richard Barrass
>
>
>
> Bassett Electronic Systems Ltd. Solutions under one roof.
>
> T: 01793 859974 E: r.barrass@bassettelectronics.com
>
> Unit 23-25 Whitehill Industrial Estate, Whitehill Lane, Royal Wootton Bas=
sett, Wiltshire, SN4 7DB
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

