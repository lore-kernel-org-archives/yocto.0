Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.1585.1579027199226374519
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jan 2020 10:39:59 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=D8PLwc09;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: akuster808@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A100E01532; Tue, 14 Jan 2020 10:39:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.215.179 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4760FE00CAE
	for <yocto@yoctoproject.org>; Tue, 14 Jan 2020 10:39:55 -0800 (PST)
Received: by mail-pg1-f179.google.com with SMTP id k197so6783224pga.10
        for <yocto@yoctoproject.org>; Tue, 14 Jan 2020 10:39:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=17OneuF5iNxecLWNmPk3CueZ1GdcAl42V4WSVg8O1Dc=;
        b=D8PLwc09HWyPYp2jlhXRTdEn6fCOO89KPt4Z4EriXTcnG/0gJ2j9GNeB5LZQt8cJKC
         N/zL9yzjEDsiMAsJ4GUvWrqFyUVliNzL9ofWjY7LkD8MEJClU3Oa3MuPnp4d60Is39t4
         JOimfyQwaCtQz4a5NEbeVqQltGdgpXMNCMYavO5DMwiKiuLE9kAjx/2XykRGe1YAdcv4
         eGTcYFiukujXgQMmyt3UdXG5q+0/Eif2WNiLa+GDw9ma61ENFKtZzel5/yHtsCrzUaZF
         RZ61zokrKKatpAb9Un7ym9zAAdewG0bbeLDmO+EWcajwGAAb7iKiGkKgOg4HvyhnXlOt
         6+cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=17OneuF5iNxecLWNmPk3CueZ1GdcAl42V4WSVg8O1Dc=;
        b=MpT16GyyHOGIml2/HL5uKf0M8UBQ4D3qf9fSmKftPYzGlgAz4wABtZIvnI6QebmXg0
         y8swZ7Iasiji4qI9DE2fzm0hmKDZY6v/WPPCe121wrStTYHel4iUN/NxBiV2GaJs2Uuy
         RjWyAvheUhA7kegW0/QEK43rFRSGrdhUeadzHzQHTkU+ZJ/tPG0/eAB3CikOOrbddL2J
         WHXRZmmwDmUFvT0cL8fxx8dr79jauTbJMiDQ12UkTfhQoPX3p92y1mJ82gG/ZUTfBxXn
         CmHI9Kw+YTo7rlQVUBVgvk2oSlE6/fFtI4jORjMJWNiWJxBJgftkyrijhNs1WYe9DKrD
         1O/Q==
X-Gm-Message-State: APjAAAVwdzNB3WXeWavnh02e71u9O7FqfN/1Q/QiHBAxIuIXoZwkcoEQ
	wFvz1i2/JxWRiezMvejkG/8=
X-Google-Smtp-Source: APXvYqzrAntrYuu+drSzUcooKeRJkaSDy3DjJCWEoQAuXTDcCbgc1JYSdzo7fK6r0Oxk4Jz00ypD5A==
X-Received: by 2002:a65:66c8:: with SMTP id c8mr29707214pgw.161.1579027194821;
        Tue, 14 Jan 2020 10:39:54 -0800 (PST)
Received: from ?IPv6:2601:202:4180:a5c0:fd83:79d8:6b68:b6b6? ([2601:202:4180:a5c0:fd83:79d8:6b68:b6b6])
        by smtp.gmail.com with ESMTPSA id g19sm19054314pfh.134.2020.01.14.10.39.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jan 2020 10:39:54 -0800 (PST)
Subject: Re: [yocto] Yocto Project Status WW03'20
To: Stephen Jolley <sjolley.yp.pm@gmail.com>, yocto@yoctoproject.org,
 openembedded-core@lists.openembedded.org
References: <074801d5caf2$a160cdf0$e42269d0$@gmail.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 xsFNBFnlUP4BEADpKf+FQdLykenQXKk8i6xJNxDow+ypFeVAy8iFJp7Dsev+BtwUFo8VG7hx
 Jmd71vHMw+coBetWC3lk+IKjX815Ox0puYXQVRRtI+yMCgd6ib3oGxoQ8tCMwhf9c9/aKjaz
 mP97lWgGHbiEVsDpjzmMZGlJ6pDVZzxykkJExKaosE46AcA8KvfhRQg5zRyYBtinzs8Zu8AP
 aquZVHNXxPwjKPaSEEYqQjFeiNgFTavV+AhM2dmPmGUWCX9RZisrqA4slGwEB0srMdFf12Zg
 mD35Y9jZ80qpu5LPtJCFcsaAlebqR+dg36pIpiRR+olhN1wmC6LYP1vw6uMEYBjkTa2Rnb6+
 C4FDzCJD4UCrUvLMNeTW810DY0bjMMj3SfmSGSfQUssaaaTXCVlLGuGxyCr/kza1rHaXMKum
 Ek4EFj1fyn7AfkSLEHfJfY4sO1tpgigvs4eD/4ZSQEXSu/TjVvyKx4EvUbhlGMRyH2CPwD/H
 7DFF8tcVtJvCwUUW+zKtjxjSSLrhniNMXAOQJZ6CdaqCe4OyJQT5aRdr+FWbBRjpaRCCf5nf
 dTc88NMU9PrBT3vu0QJ5WNPO6MJpnb+d8iMNLZAz8tv8JMm2l+sMcNKSJ6lhX8peoBsfMVqc
 FgiykEO0fUt7DCbUYR5tLjM/3E5tHvTjMooVJyOxoufVLYtTtQARAQABzSFha3VzdGVyODA4
 IDxha3VzdGVyODA4QGdtYWlsLmNvbT7CwX0EEwEIACcFAlnlUP4CGyMFCQlmAYAFCwkIBwIG
 FQgJCgsCBBYCAwECHgECF4AACgkQ7ou0mfRW5/kuhRAAlR2FTq5572jrX5nnPR7AqI2bvSVb
 vqGLlvv739WhghvagbC+tu05QguopAhWW1/DcHK2+QtfIoC9UZrSW4RaO0CCo5sPjqK7l1KT
 ngWX/rGjF6xTF2QN0U/btcpMyVN2CNtVLwsDF9e+GHKoUcnFkP+JP8vHGokN9k6E/c97hLaL
 IJPeKl8LZXc2Efk+MaW1NXkfDJdcp/p+voajbihSQO6OZ/o+x9d2I3ZybKfTZ71+ek5Hxzjz
 g6KkMOI7KJjlmBlrQFAtVbS+CFAKrwkYznE6ggkcmGv3N7DeUBTUR78hf+EZEAM+ajeLMtrG
 rXE00pIb+gLGYPZxba5pCdQ+qWUW38qi9UnIRPm6fq7Ypx1r6XwJvbgCOkhbxo3D4YUdyC0b
 FE9lgrg8htbc9in4j2+hVI6ALswNjLprzXdzdKrd+T3Egx36o3Z/qrYsW2o5/A5sVvvASVKi
 wRPuEKhEhfmiHUPLvuKqhMoymHaz3fg5D2Q8G0gSDkLgeEpAjiWqf4+AGLx+MSDai7DSOsmI
 t61kWxs7cFTB32UrB/TDoVNn3Fm88ZFQpA/bngikE9jgEm045mSY86fNlbFj2mcCd0Ha1i1n
 aYc97RpgfjNMWyHDVHOGrNg/hJjkGa5RsAXkfyBwltHRw0Hj4urUQ3rr8um8PLe43SezPwXA
 oRoyDxDOwU0EWeVQ/gEQALNHwj5VSPdnvXy1RXUuH+rclMx4x8zaqDyY0YqHfA7b/d8Y0VAt
 Y6YpzDeFTwD8A0Wfb7kZ2mlDIE6ODCB71uT/E3C6b+FiiN+lgzslznjUW+9l8ddDhRrC8HMG
 37vrXF5h++PTXUKEKUlkDib1w093tu3mlJXUvIAzl8CEHkptF6Br0L9XxFwuWoNUfjT9IorQ
 0SVIhvq5PhVAITXUD5fD7/N8B4TYegmHFRo1UaaKSnSHwlJJkzKpeWOH8QTYrP0RHxX86Obv
 IZuwbAo3F3oojcvLJt9NxWnbEmEALkleklLZnukgu7q5Wp1VDwhUbMFTLb6qmnBa/Xi30uOk
 0l1TMHDbeQswvQDOZBAMukSRqyBetKxQ3iTfZ/3z1ubQRcVDbVlMDScSHQq0LK3F9yMOMM/6
 0QPqJjl13xn/+Bn7WJiAIXXwzAV7uo6i0khFfjDtCDQ40aeffqOLxp1yMLkc3EKJGcQ5F6O2
 ycEf4QXCYUbMXjxB0EJB8y7z+xOi5Mmd/pPlVmZ2gQK84NAL90p7n7jRlyf3gOUY+JOl4c5e
 UFiIhOzmuqNrvPOiZ02GXh6SGUU5y7IgSoIKvXSFgHAn2OG/tcspBmkyv6IuNVpmbmEgYn4I
 Rnt40UXVQkxTh0dENFhk2cjunMYozV/OqYCgmZLFSeJd8kAo4yn+yOtNABEBAAHCwWUEGAEI
 AA8FAlnlUP4CGwwFCQlmAYAACgkQ7ou0mfRW5/nNcg//R63cbOS6zLtvdnPub3Ssp1Ft8Wmv
 mni+kccuNApuDV7d63QckYxjAfUv2zYMLpbh87gVbLyCq9ASn552EbfRhTvHdk44CgbHBVcI
 ZBEdZWgRR5ViJakQSYHpP2e5AGNFnx9gSIuRTaa5rvZM+4xeoZ2vJiq93TtaYPr7UFNfK+c4
 vv4C66lkt9l95/I10eSc3RqbOKZW47emlg4X3ygEoB9k2lPrpspyf6sUuSEi0WrlSxoLAr6p
 JG8rTUErYNeXe6JCdL31odDx1Dh5sdKIj2RicUYZNilxu9f1M7jZwf2ra1FGAlKj2ybqmgpZ
 EFteaiCinEYsvDyZyOiWHjAFI+RZIPQQL3AnVp4l7wYD3r9hnqYPww0slyMDcb9262RoFkHq
 dDwxPYarrNjWUpOzxB6bFxOgNRdCTgvQl8Ftk8a/yXB6vHeUSm1vPFCBxQPZytyfOLhEWm0J
 /mkVL0Z6iRK3p1LKnpLYCS4/esL2u7RrhPyCs2SsL58YcQF/g+PpeT9geZ+oyZ/4IQ+TWJoU
 PNHndk8VBTpzrmOaJxrebNL/W6C8JCmbLM11TAUMmHYi9JDytN8Au78hWpDbIdKwg1LeSxpw
 ZZD/OqOc0DBvHOpQhzkSrtR1lVlDV/+9E8J1T4uDhrGmZwYV+4xQetypHax8aAHisYbjXdVa
 8CS2NxU=
Message-ID: <d5c64105-2bde-0840-17d3-d44192edc770@gmail.com>
Date: Tue, 14 Jan 2020 10:39:53 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <074801d5caf2$a160cdf0$e42269d0$@gmail.com>
Content-Type: multipart/alternative;
 boundary="------------DAB9FE06B64351407BAB80A3"
Content-Language: en-US

--------------DAB9FE06B64351407BAB80A3
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable



On 1/14/20 7:52 AM, Stephen Jolley wrote:
>
> Current Dev Position: YP 3.1 M2
>
> Next Deadline: YP 3.1 M2 build date 1/20/2020
>
> =A0
>
> Next Team Meetings:
>
>   * Bug Triage meeting Thursday Jan. 16th=A0 at 7:30am PDT
>     (https://zoom.us/j/454367603)
>   * Monthly Project Meeting Tuesday Feb. 4th=A0 at 8am PDT
>     (https://zoom.us/j/990892712) <https://zoom.us/j/990892712>
>   * Weekly Engineering Sync Tuesday Jan. 14th at 8am PDT
>     (https://zoom.us/j/990892712) <https://zoom.us/j/990892712>
>   * Twitch - Next event is Tuesday Jan. 14th at 8am PDT
>     (https://www.twitch.tv/yocto_project)
>
> =A0
>
> Tip of the Week:
>
>   * =91oe-pkgdata-browser=92 is a new handy small helper UI added by Ros=
s
>     to visualise the pkgdata held within a build.
>   * (anyone with tips they=92d like to see here, please send to Stephen
>     or Richard)
>
> =A0
>
> Key Status/Updates:
>
>   * YP 3.1 M2 is due to be built next week.
>   * Patch merging is roughly on track however there are a number of
>     failures identified with key patches (glibc has a prelink issue on
>     mips, python 3.8 upgrade blocked on uid issue, gstreamer meson
>     transition blocked on nodistro failure). Most of these issues are
>     making progress over time.
>   * The more worrying aspect is that there are a number of
>     recurring/intermittent failures in the automated testing, mostly
>     from selftest and testimage.
>   * Looking at the build history, =93full=94 images have built cleanly
>     only once in the past month (3 times in the last two months),
>     which is a pretty shocking statistic which summarises the
>     challenges we face there. Most of these are being procrastinated
>     on by the bug owners since we can=92t reproduce them at will. We
>     really need help working on these kinds of issues.
>   * We have changed the sstate mirrors to be per release, simply to
>     lower the numbers of files in any given sstate directory.
>   * The triage team is worried about attendance at triage meetings and
>     the project is finding it hard to find people to help fix bugs. If
>     anyone is willing to work on bugs, assistance would be greatly
>     appreciated.
>
> =A0
>
> YP 3.1 Milestone Dates:
>
>   * YP 3.1 M2 build date 1/20/2020
>   * YP 3.1 M2 release date 1/31/2020
>   * YP 3.1 M3 build date 2/24/2020
>   * YP 3.1 M3 release date 3/6/2020
>   * YP 3.1 M4 build date=A0 3/30/2020
>   * YP 3.1 M4 release date=A0 4/24/2020
>
> =A0
>
> Planned upcoming dot releases:
>
>   * YP 2.7.3 build date=A0 2/10/2020
>   * YP 2.7.3 release date 2/21/2020
>
New set of warrior patches sent out for review.


>  *
>
>
>
>   * YP 3.0.2 build date=A0 2/3/2020
>   * YP 3.0.2 release date 2/14/2020
>
Back porting the remaining hash equivalence patches.

Do have some build failures that also affecting Master.

Will send out a call for patches sometime the end of next week.

Do we hold up the dot release if we add a new host?

- armin
>
>  *
>
> =A0
>
> Tracking Metrics:
>
>   * WDD 2772 (last week
>     2773)(https://wiki.yoctoproject.org/charts/combo.html)
>   * Poky Patch Metrics=A0=A0
>       o Total patches found: 1411 (last week 1400)
>       o Patches in the Pending State: 562 (40%) [last week 562 (40%)]
>
> =A0
>
> The Yocto Project=92s technical governance is through its Technical
> Steering Committee, more information is available at:
>
> https://wiki.yoctoproject.org/wiki/TSC
>
> =A0
>
> The Status reports are now stored on the wiki at:
> https://wiki.yoctoproject.org/wiki/Weekly_Status
>
> =A0
>
> [If anyone has suggestions for other information you=92d like to see on
> this weekly status update, let us know!]
>
> =A0
>
> Thanks,
>
> =A0
>
> */Stephen K. Jolley/**//*
>
> *Yocto Project Project Manager*
>
> (=A0=A0=A0 *Cell*:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 (208) 24=
4-4460
>
> * *Email*:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0_sjolley.yp.pm@gmail=
.com
> <mailto:sjolley.yp.pm@gmail.com>_
>
> =A0
>
>
>=20


--------------DAB9FE06B64351407BAB80A3
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body>
    <br>
    <br>
    <div class=3D"moz-cite-prefix">On 1/14/20 7:52 AM, Stephen Jolley
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:074801d5caf2$a160cdf0$e42269d0$@gmail.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
@font-face
	{font-family:"Comic Sans MS";
	panose-1:3 15 7 2 3 3 2 2 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"MS Sans Serif";}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:285503537;
	mso-list-template-ids:-1442514388;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1
	{mso-list-id:388849393;
	mso-list-template-ids:745155412;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l2
	{mso-list-id:656610575;
	mso-list-template-ids:298983202;}
@list l2:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l2:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l2:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l2:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l2:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l2:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l2:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l2:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l2:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l3
	{mso-list-id:955989339;
	mso-list-template-ids:100696504;}
@list l3:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l3:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l3:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l3:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l3:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l3:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l3:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l3:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l4
	{mso-list-id:1020814898;
	mso-list-template-ids:-1691966188;}
@list l4:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l4:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l4:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l4:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l4:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l4:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l4:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l4:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l4:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l5
	{mso-list-id:1126004780;
	mso-list-template-ids:-184510978;}
@list l5:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l5:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l5:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l5:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l5:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l5:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l5:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l5:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l5:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l6
	{mso-list-id:1459496779;
	mso-list-template-ids:1223869194;}
@list l6:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l6:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l6:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l6:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l6:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l6:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l6:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l6:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l6:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l7
	{mso-list-id:1613246509;
	mso-list-template-ids:-962182500;}
@list l7:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l7:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l7:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l7:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l7:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l7:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l7:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l7:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l7:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l8
	{mso-list-id:1718047357;
	mso-list-template-ids:-1655521626;}
@list l8:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l8:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l8:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l8:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l8:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l8:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l8:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l8:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l8:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l9
	{mso-list-id:1899198675;
	mso-list-template-ids:-319940586;}
@list l9:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l9:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l9:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l9:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l9:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l9:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l9:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l9:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l9:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l10
	{mso-list-id:2013024561;
	mso-list-template-ids:-86611496;}
@list l10:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l10:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l10:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l10:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l10:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l10:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l10:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l10:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l10:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black"=
>Current
            Dev Position: YP 3.1 M2</span><o:p></o:p></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black"=
>Next
            Deadline: YP 3.1 M2 build date 1/20/2020</span><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black"=
>Next
            Team Meetings:</span><o:p></o:p></p>
        <ul style=3D"margin-top:0in" type=3D"disc">
          <li class=3D"MsoNormal" style=3D"color:black;mso-list:l2 level1
            lfo6;vertical-align:baseline"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif">Bug
              Triage meeting Thursday Jan. 16th=A0 at 7:30am PDT (<a
                href=3D"https://zoom.us/j/454367603"
                moz-do-not-send=3D"true"><span
                  style=3D"font-size:10.0pt;color:#1155CC">https://zoom.us=
/j/454367603</span></a>)<o:p></o:p></span></li>
          <li class=3D"MsoNormal" style=3D"color:black;mso-list:l2 level1
            lfo6;vertical-align:baseline"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif">Monthly
              Project Meeting Tuesday Feb. 4th=A0 at 8am PDT (<a
                href=3D"https://zoom.us/j/990892712"
                moz-do-not-send=3D"true"><span style=3D"color:#1155CC">htt=
ps://zoom.us/j/990892712)</span></a><o:p></o:p></span></li>
          <li class=3D"MsoNormal" style=3D"color:black;mso-list:l2 level1
            lfo6;vertical-align:baseline"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif">Weekly
              Engineering Sync Tuesday Jan. 14th at 8am PDT (<a
                href=3D"https://zoom.us/j/990892712"
                moz-do-not-send=3D"true"><span style=3D"color:#1155CC">htt=
ps://zoom.us/j/990892712)</span></a><o:p></o:p></span></li>
          <li class=3D"MsoNormal" style=3D"color:black;mso-list:l2 level1
            lfo6;vertical-align:baseline"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif">Twitch -
              Next event is Tuesday Jan. 14th at 8am PDT (<a
                href=3D"https://www.twitch.tv/yocto_project"
                moz-do-not-send=3D"true"><span style=3D"color:#1155CC">htt=
ps://www.twitch.tv/yocto_project</span></a>)<o:p></o:p></span></li>
        </ul>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black"=
>Tip
            of the Week:</span><o:p></o:p></p>
        <ul style=3D"margin-top:0in" type=3D"disc">
          <li class=3D"MsoNormal" style=3D"color:black;mso-list:l6 level1
            lfo7;vertical-align:baseline"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif">=91oe-pkg=
data-browser=92
              is a new handy small helper UI added by Ross to visualise
              the pkgdata held within a build.<o:p></o:p></span></li>
          <li class=3D"MsoNormal" style=3D"color:black;mso-list:l6 level1
            lfo7;vertical-align:baseline"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif">(anyone
              with tips they=92d like to see here, please send to Stephen
              or Richard)<o:p></o:p></span></li>
        </ul>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black"=
>Key
            Status/Updates:</span><o:p></o:p></p>
        <ul style=3D"margin-top:0in" type=3D"disc">
          <li class=3D"MsoNormal" style=3D"color:black;mso-list:l9 level1
            lfo8;vertical-align:baseline"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif">YP 3.1 M2
              is due to be built next week.<o:p></o:p></span></li>
          <li class=3D"MsoNormal" style=3D"color:black;mso-list:l9 level1
            lfo8;vertical-align:baseline"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif">Patch
              merging is roughly on track however there are a number of
              failures identified with key patches (glibc has a prelink
              issue on mips, python 3.8 upgrade blocked on uid issue,
              gstreamer meson transition blocked on nodistro failure).
              Most of these issues are making progress over time.<o:p></o:=
p></span></li>
          <li class=3D"MsoNormal" style=3D"color:black;mso-list:l9 level1
            lfo8;vertical-align:baseline"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif">The more
              worrying aspect is that there are a number of
              recurring/intermittent failures in the automated testing,
              mostly from selftest and testimage.<o:p></o:p></span></li>
          <li class=3D"MsoNormal" style=3D"color:black;mso-list:l9 level1
            lfo8;vertical-align:baseline"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif">Looking
              at the build history, =93full=94 images have built cleanly
              only once in the past month (3 times in the last two
              months), which is a pretty shocking statistic which
              summarises the challenges we face there. Most of these are
              being procrastinated on by the bug owners since we can=92t
              reproduce them at will. We really need help working on
              these kinds of issues.<o:p></o:p></span></li>
          <li class=3D"MsoNormal" style=3D"color:black;mso-list:l9 level1
            lfo8;vertical-align:baseline"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif">We have
              changed the sstate mirrors to be per release, simply to
              lower the numbers of files in any given sstate directory.<o:=
p></o:p></span></li>
          <li class=3D"MsoNormal" style=3D"color:black;mso-list:l9 level1
            lfo8;vertical-align:baseline"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif">The
              triage team is worried about attendance at triage meetings
              and the project is finding it hard to find people to help
              fix bugs. If anyone is willing to work on bugs, assistance
              would be greatly appreciated.<o:p></o:p></span></li>
        </ul>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black"=
>YP
            3.1 Milestone Dates:</span><o:p></o:p></p>
        <ul style=3D"margin-top:0in" type=3D"disc">
          <li class=3D"MsoNormal" style=3D"color:black;mso-list:l5 level1
            lfo9;vertical-align:baseline"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif">YP 3.1 M2
              build date 1/20/2020<o:p></o:p></span></li>
          <li class=3D"MsoNormal" style=3D"color:black;mso-list:l5 level1
            lfo9;vertical-align:baseline"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif">YP 3.1 M2
              release date 1/31/2020<o:p></o:p></span></li>
          <li class=3D"MsoNormal" style=3D"color:black;mso-list:l5 level1
            lfo9;vertical-align:baseline"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif">YP 3.1 M3
              build date 2/24/2020<o:p></o:p></span></li>
          <li class=3D"MsoNormal" style=3D"color:black;mso-list:l5 level1
            lfo9;vertical-align:baseline"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif">YP 3.1 M3
              release date 3/6/2020<o:p></o:p></span></li>
          <li class=3D"MsoNormal" style=3D"color:black;mso-list:l5 level1
            lfo9;vertical-align:baseline"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif">YP 3.1 M4
              build date=A0 3/30/2020<o:p></o:p></span></li>
          <li class=3D"MsoNormal" style=3D"color:black;mso-list:l5 level1
            lfo9;vertical-align:baseline"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif">YP 3.1 M4
              release date=A0 4/24/2020<o:p></o:p></span></li>
        </ul>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black"=
>Planned
            upcoming dot releases:</span><o:p></o:p></p>
        <ul style=3D"margin-top:0in" type=3D"disc">
          <li class=3D"MsoNormal" style=3D"color:black;mso-list:l7 level1
            lfo10;vertical-align:baseline"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif">YP 2.7.3
              build date=A0 2/10/2020<o:p></o:p></span></li>
          <li class=3D"MsoNormal" style=3D"color:black;mso-list:l7 level1
            lfo10;vertical-align:baseline"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif">YP 2.7.3
              release date 2/21/2020</span></li>
        </ul>
      </div>
    </blockquote>
    New set of warrior patches sent out for review.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:074801d5caf2$a160cdf0$e42269d0$@gmail.com">
      <div class=3D"WordSection1">
        <ul style=3D"margin-top:0in" type=3D"disc">
          <li class=3D"MsoNormal" style=3D"color:black;mso-list:l7 level1
            lfo10;vertical-align:baseline"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif"><o:p></o:=
p></span><br>
          </li>
          <li class=3D"MsoNormal" style=3D"color:black;mso-list:l7 level1
            lfo10;vertical-align:baseline"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif">YP 3.0.2
              build date=A0 2/3/2020<o:p></o:p></span></li>
          <li class=3D"MsoNormal" style=3D"color:black;mso-list:l7 level1
            lfo10;vertical-align:baseline"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif">YP 3.0.2
              release date 2/14/2020</span></li>
        </ul>
      </div>
    </blockquote>
    Back porting the remaining hash equivalence patches.<br>
    <br>
    Do have some build failures that also affecting Master.<br>
    <br>
    Will send out a call for patches sometime the end of next week.<br>
    <br>
    Do we hold up the dot release if we add a new host?<br>
    <br>
    - armin<br>
    <blockquote type=3D"cite"
      cite=3D"mid:074801d5caf2$a160cdf0$e42269d0$@gmail.com">
      <div class=3D"WordSection1">
        <ul style=3D"margin-top:0in" type=3D"disc">
          <li class=3D"MsoNormal" style=3D"color:black;mso-list:l7 level1
            lfo10;vertical-align:baseline"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif"><o:p></o:=
p></span></li>
        </ul>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black"=
>Tracking
            Metrics:</span><o:p></o:p></p>
        <ul style=3D"margin-top:0in" type=3D"disc">
          <li class=3D"MsoNormal" style=3D"color:black;mso-list:l8 level1
            lfo11;vertical-align:baseline"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif">WDD 2772
              (last week 2773)</span><span style=3D"font-family:Consolas">
              (</span><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif"><a
                href=3D"https://wiki.yoctoproject.org/charts/combo.html"
                moz-do-not-send=3D"true"><span style=3D"color:#1155CC">htt=
ps://wiki.yoctoproject.org/charts/combo.html</span></a></span><span
              style=3D"font-family:Consolas">)</span><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif"><o:p></o:=
p></span></li>
          <li class=3D"MsoNormal" style=3D"color:black;mso-list:l8 level1
            lfo11;vertical-align:baseline"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif">Poky
              Patch Metrics=A0=A0</span><span style=3D"font-family:Consola=
s"><o:p></o:p></span></li>
          <ul style=3D"margin-top:0in" type=3D"circle">
            <li class=3D"MsoNormal" style=3D"color:black;mso-list:l8 level=
2
              lfo11;vertical-align:baseline"><span
                style=3D"font-family:&quot;Arial&quot;,sans-serif">Total
                patches found: 1411 (last week 1400)<o:p></o:p></span></li=
>
            <li class=3D"MsoNormal" style=3D"color:black;mso-list:l8 level=
2
              lfo11;vertical-align:baseline"><span
                style=3D"font-family:&quot;Arial&quot;,sans-serif">Patches
                in the Pending State: 562 (40%) [last week 562 (40%)]</spa=
n><span
                style=3D"font-family:Consolas"><o:p></o:p></span></li>
          </ul>
        </ul>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black"=
>The
            Yocto Project=92s technical governance is through its
            Technical Steering Committee, more information is available
            at:</span><o:p></o:p></p>
        <p class=3D"MsoNormal"><a
            href=3D"https://wiki.yoctoproject.org/wiki/TSC"
            moz-do-not-send=3D"true"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif;color:#115=
5CC">https://wiki.yoctoproject.org/wiki/TSC</span></a><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black"=
>The
            Status reports are now stored on the wiki at: </span><a
            href=3D"https://wiki.yoctoproject.org/wiki/Weekly_Status"
            moz-do-not-send=3D"true"><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif;color:#115=
5CC">https://wiki.yoctoproject.org/wiki/Weekly_Status</span></a><o:p></o:p>=
</p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black"=
>[If
            anyone has suggestions for other information you=92d like to
            see on this weekly status update, let us know!]</span><o:p></o=
:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal"
          style=3D"page-break-after:avoid;text-autospace:none"><b><i><span
                style=3D"font-size:16.0pt;font-family:&quot;Times New
                Roman&quot;,serif;color:purple">Stephen K. Jolley</span></=
i></b><b><i><span
style=3D"font-size:16.0pt;font-family:&quot;Tahoma&quot;,sans-serif;color:=
purple"><o:p></o:p></span></i></b></p>
        <p class=3D"MsoNormal"><b><span
              style=3D"font-size:8.0pt;font-family:&quot;Courier
              New&quot;;color:blue">Yocto Project Project Manager<o:p></o:=
p></span></b></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:9.0pt;font-family:Wingdings;color:black">(<=
/span><span
            style=3D"font-size:9.0pt;font-family:&quot;MS Sans
            Serif&quot;;color:teal">=A0=A0=A0 </span><b><span
              style=3D"font-size:8.0pt;font-family:&quot;Comic Sans
              MS&quot;;color:teal">Cell</span></b><span
            style=3D"font-size:9.0pt;font-family:&quot;MS Sans
            Serif&quot;;color:teal">:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 </span><span
            style=3D"font-size:9.0pt;font-family:&quot;MS Sans
            Serif&quot;">(208) 244-4460<span style=3D"color:black"><o:p></=
o:p></span></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:9.0pt;font-family:Wingdings">* </span><b><s=
pan
              style=3D"font-size:8.0pt;font-family:&quot;Comic Sans
              MS&quot;;color:teal" lang=3D"FR">Email</span></b><span
            style=3D"font-size:9.0pt;font-family:&quot;MS Sans
            Serif&quot;;color:teal" lang=3D"FR">:</span><span
            style=3D"font-size:9.0pt;font-family:&quot;MS Sans
            Serif&quot;" lang=3D"FR">=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0<u><span
                style=3D"color:blue"><a
                  href=3D"mailto:sjolley.yp.pm@gmail.com"
                  moz-do-not-send=3D"true">sjolley.yp.pm@gmail.com</a></sp=
an></u></span><span
style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif"
            lang=3D"FR"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------DAB9FE06B64351407BAB80A3--
