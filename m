Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D66DDC36010
	for <webhook@archiver.kernel.org>; Fri,  4 Apr 2025 06:36:20 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web10.5519.1743748578726042810
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Apr 2025 23:36:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=zNIl2p0X;
 spf=pass (domain: smile.fr, ip: 209.85.221.41, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-39c1ef4ae3aso976394f8f.1
        for <yocto@lists.yoctoproject.org>; Thu, 03 Apr 2025 23:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1743748577; x=1744353377; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ze9KFPSRjgzkO+iO+EYISgfwnbcE7iXBaD9ATXo0WVY=;
        b=zNIl2p0XpIF5cRI43s72mXzo3QcBAGE6hlY0VHujZwcvVcB/NLZJkFqMnXlF3SkAK7
         4Ujux0lYEYoLMAwuzkSi/UHsYsumU8pqpwfVxgoMpCD0KGuBBdNRw+/Fs4Nj7+Z7VWw0
         dU0uPRAzjOVYBGHAUoh+VPdiYfEvF+FVTKLB4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743748577; x=1744353377;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ze9KFPSRjgzkO+iO+EYISgfwnbcE7iXBaD9ATXo0WVY=;
        b=SRbmpKwkS8S3R3AQIDFAADkWctPevCIcYucVmZ+wUR4CXw4/iQRggGRxhYxvXL1EcT
         LmtWSFp9Ni0xKROU5T0h0p2T/FXl7FaCSqo6oCvYqgYP5fAqIpDXkLyp2nq5ruDzcJMG
         xdMcfTSnDQdsewcxsALAtqF0JoJyb66qjt3gVylepwA1x7pO6LYxfiyFXFnGeRgqWOxR
         fo2S6/18ID7QB3zEU5KbkzTc0rED44WUfpCJjXoaZ7rdSlpSJA6Pffa1oRe5lIK36dkH
         6NgojvzyTEAz30QamMbVu/y1Vxdd1A8sZF3gMK/Tc16fmWXA4q1Zd3u635PQ5bVWI3UW
         OMSw==
X-Gm-Message-State: AOJu0YyAMyLIjt4mbOOze7ZrbRZepZ7PthmVLUJcs0wiibRXHSbeEz+F
	MB4/F4RaW3NGqHuohdbiswX5g14PGjlMR/QkPqlIBXqOpnJz/EnJIBOaV5CLC6uQhIFM6WWkqpg
	WmHMwnK1Mb6H8BUnMQyHKDqWGmgYj4DXxlVOrnQGDpWMi2WGp
X-Gm-Gg: ASbGncsoK/UwvgqVvnNVehnB0FOU1WdB1SWF89XkYb4TrpgGloE3jFlOYqFU52Z1y82
	tBtft+oeRobFW1M/GN85jckqsy4hD5/TLjk5JkrBg4xHfclwWmgg6okZ+xy8yjsJPsYzLFuNkxZ
	ADGBIsKR4K/SZy9O2zAXEtR3gVKX1X9+mmOhfHCCFccso4PeJNjtynAa90rrA=
X-Google-Smtp-Source: AGHT+IEbd9tuPKuhZUz7NgRN7NXlX++UDJPRO8N5fFmZpXKHTfPNvKw38+LjI6Glc0qme+G9J/xiir2yD5xJ+91QZqg=
X-Received: by 2002:a5d:6da6:0:b0:39c:2673:4f10 with SMTP id
 ffacd0b85a97d-39c2e651726mr6397228f8f.23.1743748576739; Thu, 03 Apr 2025
 23:36:16 -0700 (PDT)
MIME-Version: 1.0
References: <BL4PR11MB87978ADAB7C9CAF579B1AF0DB9AF2@BL4PR11MB8797.namprd11.prod.outlook.com>
 <CAMSfU+6MVEpORbaTvnxQMJQ55mW1F4ZwaYPDBzGvtzrt0KJeMA@mail.gmail.com> <BL4PR11MB8797BD6E2B3B2ECDE9088CA6B9A92@BL4PR11MB8797.namprd11.prod.outlook.com>
In-Reply-To: <BL4PR11MB8797BD6E2B3B2ECDE9088CA6B9A92@BL4PR11MB8797.namprd11.prod.outlook.com>
From: Yoann Congal <yoann.congal@smile.fr>
Date: Fri, 4 Apr 2025 08:35:48 +0200
X-Gm-Features: ATxdqUFTP_D5fYeGLuDczyH3QbZxZrlyr_SFuCG6G7bOhugnAg4E8exc3QfZjTw
Message-ID: <CAMSfU+6YLdjVWS6A0RdNd9-UmDmKV+M=O79ge5+KtiSEcU40Pg@mail.gmail.com>
Subject: Re: [yocto] [ANNOUNCEMENT] Yocto Project 5.1.4 is Released
To: yocto@lists.yoctoproject.org, chee.yang.lee@intel.com
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="0000000000007e9c310631ee1a78"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Apr 2025 06:36:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65095

--0000000000007e9c310631ee1a78
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le ven. 4 avr. 2025 =C3=A0 05:20, Lee Chee Yang via lists.yoctoproject.org
<chee.yang.lee=3Dintel.com@lists.yoctoproject.org> a =C3=A9crit :

> I must have missed the previous email.
> i can add the codename in title. I don=E2=80=99t think there is strict fo=
rmat for
> the title format.
>

That would be awesome, thanks!


>
>
> *From:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> *On
> Behalf Of *Yoann Congal via lists.yoctoproject.org
> *Sent:* Friday, 4 April, 2025 1:22 AM
> *To:* yocto@lists.yoctoproject.org; Lee, Chee Yang <
> chee.yang.lee@intel.com>
> *Cc:* Richard Purdie <richard.purdie@linuxfoundation.org>
> *Subject:* Re: [yocto] [ANNOUNCEMENT] Yocto Project 5.1.4 is Released
>
>
>
> Hello,
>
>
>
> I've answered the 5.1.3 release mail asking for a change in the release
> mail template. Maybe you missed it?
>
>
>
> Here it is:
>
> Thanks for these nice release emails!
>
> Would it be possible to put the release branch ("kirkstone",
> "scarthgap", ...) in the commit title? (Those branch names are more
> used than their numerical equivalent)
> For this mail, something like : "Yocto Project 5.1.3 (styhead) is
> Released" ? I don't know how strict/free the format is...
>
> Best regards,
>
>
>
> Thanks!
>
>
>
>
>
> Le mer. 2 avr. 2025 =C3=A0 05:06, Lee Chee Yang via lists.yoctoproject.or=
g
> <chee.yang.lee=3Dintel.com@lists.yoctoproject.org> a =C3=A9crit :
>
> Hi
>
> We are pleased to announce the Yocto Project 5.1.4 Release is now
> available for download.
>
>
>
>
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.4/poky-70dc28=
ac287bf35541270cae1d99130a0f6b7b5f.tar.bz2
>
>
>
> https://mirrors.kernel.org/yocto/yocto/yocto-5.1.4/poky-70dc28ac287bf3554=
1270cae1d99130a0f6b7b5f.tar.bz2
>
>
>
> A gpg signed version of these release notes is available at:
>
>
>
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.4/RELEASENOTE=
S
>
>
>
> Full Test Report:
>
>
>
>
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.4/testreport.=
txt
>
>
>
> Thank you for everyone's contributions to this release.
>
>
>
> Chee Yang
>
> chee.yang.lee@intel.com
>
> Yocto Project Build and Release
>
> --------------------------
>
> yocto-5.1.4 Release Notes
>
> --------------------------
>
>
>
>
>
> --------------------------
>
> Repositories/Downloads
>
> --------------------------
>
>
>
> Repository Name: poky
>
> Repository Location: https://git.yoctoproject.org/poky
>
> Branch: styhead
>
> Tag: yocto-5.1.4
>
> Git Revision: 70dc28ac287bf35541270cae1d99130a0f6b7b5f
>
> Release Artefact: poky-70dc28ac287bf35541270cae1d99130a0f6b7b5f
>
> sha: 63f1d3d47a28bd9b41c89db6e1f2657c04233a00d10210795e766c0bc265d766
>
> Download Locations:
>
>
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.4/poky-70dc28=
ac287bf35541270cae1d99130a0f6b7b5f.tar.bz2
>
>
> https://mirrors.kernel.org/yocto/yocto/yocto-5.1.4/poky-70dc28ac287bf3554=
1270cae1d99130a0f6b7b5f.tar.bz2
>
>
>
> Repository Name: openembedded-core
>
> Repository Location: https://git.openembedded.org/openembedded-core
>
> Branch: styhead
>
> Tag: yocto-5.1.4
>
> Git Revision: 2d94f4b8a852dc761f89e5106347e239382df5fb
>
> Release Artefact: oecore-2d94f4b8a852dc761f89e5106347e239382df5fb
>
> sha: 344ac23f814c049d69b06cee42c43b7b422506ce84397406caef09becb2555bf
>
> Download Locations:
>
>
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.4/oecore-2d94=
f4b8a852dc761f89e5106347e239382df5fb.tar.bz2
>
>
> https://mirrors.kernel.org/yocto/yocto/yocto-5.1.4/oecore-2d94f4b8a852dc7=
61f89e5106347e239382df5fb.tar.bz2
>
>
>
> Repository Name: meta-mingw
>
> Repository Location: https://git.yoctoproject.org/meta-mingw
>
> Branch: styhead
>
> Tag: yocto-5.1.4
>
> Git Revision: 77fe18d4f8ec34501045c5d92ce7e13b1bd129e9
>
> Release Artefact: meta-mingw-77fe18d4f8ec34501045c5d92ce7e13b1bd129e9
>
> sha: 4c7f8100a3675d9863e51825def3df5b263ffc81cd57bae26eedbc156d771534
>
> Download Locations:
>
>
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.4/meta-mingw-=
77fe18d4f8ec34501045c5d92ce7e13b1bd129e9.tar.bz2
>
>
> https://mirrors.kernel.org/yocto/yocto/yocto-5.1.4/meta-mingw-77fe18d4f8e=
c34501045c5d92ce7e13b1bd129e9.tar.bz2
>
>
>
> Repository Name: bitbake
>
> Repository Location: https://git.openembedded.org/bitbake
>
> Branch: 2.10
>
> Tag: yocto-5.1.4
>
> Git Revision: 82b9f42126983579da03bdbb4e3ebf07346118a7
>
> Release Artefact: bitbake-82b9f42126983579da03bdbb4e3ebf07346118a7
>
> sha: 209d62c5262f2287af60e7fe2343c29ab25b5088de4da71de89016e75900285a
>
> Download Locations:
>
>
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.4/bitbake-82b=
9f42126983579da03bdbb4e3ebf07346118a7.tar.bz2
>
>
> https://mirrors.kernel.org/yocto/yocto/yocto-5.1.4/bitbake-82b9f421269835=
79da03bdbb4e3ebf07346118a7.tar.bz2
>
>
>
> Repository Name: yocto-docs
>
> Repository Location: https://git.yoctoproject.org/yocto-docs
>
> Branch: styhead
>
> Tag: yocto-5.1.4
>
> Git Revision: f0324b8f14881227336f84325cdebd0518e17796
>
>
>
>
>
> ---------------
>
> Contributors
>
> ---------------
>
> Alessio Cascone
>
> Lee Chee Yang
>
> Makarios Christakis
>
> Marta Rybczynska
>
> Peter Marko
>
> Priyal Doshi
>
> Richard Purdie
>
> Ross Burton
>
> Steve Sakoman
>
> Vijay Anusuri
>
> Wang Mingyu
>
> Weisser, Pascal
>
>
>
>
>
> ---------------
>
> Known Issues
>
> ---------------
>
> N/A
>
>
>
>
>
> ---------------
>
> Security Fixes
>
> ---------------
>
> binutils: Fix CVE-2025-0840
>
> grub: Fix CVE-2024-45774  CVE-2024-45775  CVE-2024-45776  CVE-2024-45777
> CVE-2024-45778   CVE-2024-45779  CVE-2024-45780  CVE-2024-45781
> CVE-2024-45782   CVE-2024-45783  CVE-2024-56737  CVE-2025-0622
> CVE-2025-0624  CVE-2025-0677  CVE-2025-0678  CVE-2025-0684  CVE-2025-0685
> CVE-2025-0686  CVE-2025-0689  CVE-2025-0690  CVE-2025-1118  CVE-2025-1125
>
> openssh: Fix CVE-2025-26465 CVE-2025-26466
>
> puzzles: Ignore CVE-2024-13769 CVE-2024-13770 CVE-2025-0837
>
> subversion: Ignore CVE-2024-45720
>
> xserver-xorg: Ignore CVE-2025-26594 CVE-2025-26595 CVE-2025-26596
> CVE-2025-26597 CVE-2025-26598 CVE-2025-26599 CVE-2025-26600 CVE-2025-2660=
1
>
>
>
> ---------------
>
> Fixes
>
> ---------------
>
> bitbake: event/utils: Avoid deadlock from lock_timeout() and recursive
> events
>
> bitbake: utils: Add signal blocking for lock_timeout
>
> bitbake: utils: Print information about lock issue before exiting
>
> bitbake: utils: Tweak lock_timeout logic
>
> build-appliance-image: Update to styhead head revision
>
> docs: Remove all mention of core-image-lsb
>
> grub: backport strlcpy function
>
> grub: drop obsolete CVE statuses
>
> icu: Adjust ICU_DATA_DIR path on big endian targets
>
> libtasn1: upgrade to 4.20.0
>
> libxml2: upgrade to 2.13.6
>
> migration-guides: add release notes for 4.0.25 and 5.1.3
>
> poky.conf: bump version for 5.1.4
>
> ref-manual: Add missing variable IMAGE_ROOTFS_MAXSIZE
>
> ref-manual: don't refer to poky-lsb
>
> ref-manual: remove OE_IMPORTS
>
> tzcode-native: Fix compiler setting from 2023d version
>
> tzdata/tzcode-native: upgrade to 2025a
>
> vulnerabilities/classes: remove references to cve-check text format
>
> xserver-xf86-config: add a configuration fragment to disable screen
> blanking
>
> xserver-xf86-config: remove obsolete configuration files
>
> xserver-xorg: upgrade to 21.1.16
>
> xwayland: upgrade to 21.1.6
>
>
>
>
>
>
>
> --
>
> Yoann Congal
>
> Smile ECS
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65093):
> https://lists.yoctoproject.org/g/yocto/message/65093
> Mute This Topic: https://lists.yoctoproject.org/mt/112040510/4316185
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Yoann Congal
Smile ECS

--0000000000007e9c310631ee1a78
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Le=C2=A0ven. 4 avr. 2025 =C3=A0=C2=A005:2=
0, Lee Chee Yang via <a href=3D"http://lists.yoctoproject.org">lists.yoctop=
roject.org</a> &lt;chee.yang.lee=3D<a href=3D"mailto:intel.com@lists.yoctop=
roject.org">intel.com@lists.yoctoproject.org</a>&gt; a =C3=A9crit=C2=A0:</d=
iv><div class=3D"gmail_quote gmail_quote_container"><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div class=3D"msg8214225139796969982">





<div lang=3D"EN-MY" style=3D"overflow-wrap: break-word;">
<div class=3D"m_8214225139796969982WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">I must have missed th=
e previous email.
<br>
i can add the codename in title. I don=E2=80=99t think there is strict form=
at for the title format.</span></p></div></div></div></blockquote><div><br>=
</div><div>That would be awesome, thanks!</div><div>=C2=A0</div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div class=3D"msg8214225139796969982=
"><div lang=3D"EN-MY" style=3D"overflow-wrap: break-word;"><div class=3D"m_=
8214225139796969982WordSection1"><p class=3D"MsoNormal"><span style=3D"font=
-size:11pt">
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<div style=3D"border-width:medium medium medium 1.5pt;border-style:none non=
e none solid;border-color:currentcolor currentcolor currentcolor blue;paddi=
ng:0cm 0cm 0cm 4pt">
<div>
<div style=3D"border-width:1pt medium medium;border-style:solid none none;b=
order-color:rgb(225,225,225) currentcolor currentcolor;padding:3pt 0cm 0cm"=
>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11pt;font=
-family:&quot;Calibri&quot;,sans-serif">From:</span></b><span lang=3D"EN-US=
" style=3D"font-size:11pt;font-family:&quot;Calibri&quot;,sans-serif"> <a h=
ref=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lists.y=
octoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org" tar=
get=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;
<b>On Behalf Of </b>Yoann Congal via <a href=3D"http://lists.yoctoproject.o=
rg" target=3D"_blank">lists.yoctoproject.org</a><br>
<b>Sent:</b> Friday, 4 April, 2025 1:22 AM<br>
<b>To:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a>; Lee, Chee Yang &lt;<a href=3D"mailto:ch=
ee.yang.lee@intel.com" target=3D"_blank">chee.yang.lee@intel.com</a>&gt;<br=
>
<b>Cc:</b> Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfoundat=
ion.org" target=3D"_blank">richard.purdie@linuxfoundation.org</a>&gt;<br>
<b>Subject:</b> Re: [yocto] [ANNOUNCEMENT] Yocto Project 5.1.4 is Released<=
u></u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Hello,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I&#39;ve answered the 5.1.3 release mail asking for =
a change in the release mail template. Maybe you missed it?<u></u><u></u></=
p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Here it is:<u></u><u></u></p>
</div>
<blockquote style=3D"border-width:medium medium medium 1pt;border-style:non=
e none none solid;border-color:currentcolor currentcolor currentcolor rgb(2=
04,204,204);padding:0cm 0cm 0cm 6pt;margin-left:4.8pt;margin-right:0cm">
<p class=3D"MsoNormal">Thanks for these nice release emails!<br>
<br>
Would it be possible to put the release branch (&quot;kirkstone&quot;,<br>
&quot;scarthgap&quot;, ...) in the commit title? (Those branch names are mo=
re<br>
used than their numerical equivalent)<br>
For this mail, something like : &quot;Yocto Project 5.1.3 (styhead) is<br>
Released&quot; ? I don&#39;t know how strict/free the format is...<br>
<br>
Best regards,<u></u><u></u></p>
</blockquote>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Thanks!<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Le=C2=A0mer. 2 avr. 2025 =C3=A0=C2=A005:06, Lee Chee=
 Yang via <a href=3D"http://lists.yoctoproject.org" target=3D"_blank">
lists.yoctoproject.org</a> &lt;chee.yang.lee=3D<a href=3D"mailto:intel.com@=
lists.yoctoproject.org" target=3D"_blank">intel.com@lists.yoctoproject.org<=
/a>&gt; a =C3=A9crit=C2=A0:<u></u><u></u></p>
</div>
<blockquote style=3D"border-width:medium medium medium 1pt;border-style:non=
e none none solid;border-color:currentcolor currentcolor currentcolor rgb(2=
04,204,204);padding:0cm 0cm 0cm 6pt;margin-left:4.8pt;margin-right:0cm">
<div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Hi<br>
<br>
We are pleased to announce the Yocto Project 5.1.4 Release is now available=
 for download.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><a href=3D"https://do=
wnloads.yoctoproject.org/releases/yocto/yocto-5.1.4/poky-70dc28ac287bf35541=
270cae1d99130a0f6b7b5f.tar.bz2" target=3D"_blank">https://downloads.yoctopr=
oject.org/releases/yocto/yocto-5.1.4/poky-70dc28ac287bf35541270cae1d99130a0=
f6b7b5f.tar.bz2</a>
 =C2=A0=C2=A0=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><a href=3D"https://mi=
rrors.kernel.org/yocto/yocto/yocto-5.1.4/poky-70dc28ac287bf35541270cae1d991=
30a0f6b7b5f.tar.bz2" target=3D"_blank">https://mirrors.kernel.org/yocto/yoc=
to/yocto-5.1.4/poky-70dc28ac287bf35541270cae1d99130a0f6b7b5f.tar.bz2</a>
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">A gpg signed version =
of these release notes is available at:</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><a href=3D"https://do=
wnloads.yoctoproject.org/releases/yocto/yocto-5.1.4/RELEASENOTES" target=3D=
"_blank">https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.4/RELE=
ASENOTES</a></span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Full Test Report:</sp=
an><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><a href=3D"https://do=
wnloads.yoctoproject.org/releases/yocto/yocto-5.1.4/testreport.txt" target=
=3D"_blank">https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.4/t=
estreport.txt</a></span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Thank you for everyon=
e&#39;s contributions to this release.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Chee Yang</span><u></=
u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><a href=3D"mailto:che=
e.yang.lee@intel.com" target=3D"_blank">chee.yang.lee@intel.com</a></span><=
u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-siz=
e:11pt">Yocto Project Build and Release<br>
<br>
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">---------------------=
-----</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">yocto-5.1.4 Release N=
otes</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">---------------------=
-----</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">---------------------=
-----</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Repositories/Download=
s</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">---------------------=
-----</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Repository Name: poky=
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Repository Location:
<a href=3D"https://git.yoctoproject.org/poky" target=3D"_blank">https://git=
.yoctoproject.org/poky</a></span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Branch: styhead</span=
><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Tag: yocto-5.1.4</spa=
n><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Git Revision: 70dc28a=
c287bf35541270cae1d99130a0f6b7b5f</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Release Artefact: pok=
y-70dc28ac287bf35541270cae1d99130a0f6b7b5f</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">sha: 63f1d3d47a28bd9b=
41c89db6e1f2657c04233a00d10210795e766c0bc265d766</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Download Locations:</=
span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><a href=3D"https://do=
wnloads.yoctoproject.org/releases/yocto/yocto-5.1.4/poky-70dc28ac287bf35541=
270cae1d99130a0f6b7b5f.tar.bz2" target=3D"_blank">https://downloads.yoctopr=
oject.org/releases/yocto/yocto-5.1.4/poky-70dc28ac287bf35541270cae1d99130a0=
f6b7b5f.tar.bz2</a></span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><a href=3D"https://mi=
rrors.kernel.org/yocto/yocto/yocto-5.1.4/poky-70dc28ac287bf35541270cae1d991=
30a0f6b7b5f.tar.bz2" target=3D"_blank">https://mirrors.kernel.org/yocto/yoc=
to/yocto-5.1.4/poky-70dc28ac287bf35541270cae1d99130a0f6b7b5f.tar.bz2</a></s=
pan><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Repository Name: open=
embedded-core</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Repository Location:
<a href=3D"https://git.openembedded.org/openembedded-core" target=3D"_blank=
">https://git.openembedded.org/openembedded-core</a></span><u></u><u></u></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Branch: styhead</span=
><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Tag: yocto-5.1.4</spa=
n><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Git Revision: 2d94f4b=
8a852dc761f89e5106347e239382df5fb</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Release Artefact: oec=
ore-2d94f4b8a852dc761f89e5106347e239382df5fb</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">sha: 344ac23f814c049d=
69b06cee42c43b7b422506ce84397406caef09becb2555bf</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Download Locations:</=
span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><a href=3D"https://do=
wnloads.yoctoproject.org/releases/yocto/yocto-5.1.4/oecore-2d94f4b8a852dc76=
1f89e5106347e239382df5fb.tar.bz2" target=3D"_blank">https://downloads.yocto=
project.org/releases/yocto/yocto-5.1.4/oecore-2d94f4b8a852dc761f89e5106347e=
239382df5fb.tar.bz2</a></span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><a href=3D"https://mi=
rrors.kernel.org/yocto/yocto/yocto-5.1.4/oecore-2d94f4b8a852dc761f89e510634=
7e239382df5fb.tar.bz2" target=3D"_blank">https://mirrors.kernel.org/yocto/y=
octo/yocto-5.1.4/oecore-2d94f4b8a852dc761f89e5106347e239382df5fb.tar.bz2</a=
></span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Repository Name: meta=
-mingw</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Repository Location:
<a href=3D"https://git.yoctoproject.org/meta-mingw" target=3D"_blank">https=
://git.yoctoproject.org/meta-mingw</a></span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Branch: styhead</span=
><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Tag: yocto-5.1.4</spa=
n><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Git Revision: 77fe18d=
4f8ec34501045c5d92ce7e13b1bd129e9</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Release Artefact: met=
a-mingw-77fe18d4f8ec34501045c5d92ce7e13b1bd129e9</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">sha: 4c7f8100a3675d98=
63e51825def3df5b263ffc81cd57bae26eedbc156d771534</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Download Locations:</=
span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><a href=3D"https://do=
wnloads.yoctoproject.org/releases/yocto/yocto-5.1.4/meta-mingw-77fe18d4f8ec=
34501045c5d92ce7e13b1bd129e9.tar.bz2" target=3D"_blank">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.1.4/meta-mingw-77fe18d4f8ec34501045c=
5d92ce7e13b1bd129e9.tar.bz2</a></span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><a href=3D"https://mi=
rrors.kernel.org/yocto/yocto/yocto-5.1.4/meta-mingw-77fe18d4f8ec34501045c5d=
92ce7e13b1bd129e9.tar.bz2" target=3D"_blank">https://mirrors.kernel.org/yoc=
to/yocto/yocto-5.1.4/meta-mingw-77fe18d4f8ec34501045c5d92ce7e13b1bd129e9.ta=
r.bz2</a></span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Repository Name: bitb=
ake</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Repository Location:
<a href=3D"https://git.openembedded.org/bitbake" target=3D"_blank">https://=
git.openembedded.org/bitbake</a></span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Branch: 2.10</span><u=
></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Tag: yocto-5.1.4</spa=
n><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Git Revision: 82b9f42=
126983579da03bdbb4e3ebf07346118a7</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Release Artefact: bit=
bake-82b9f42126983579da03bdbb4e3ebf07346118a7</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">sha: 209d62c5262f2287=
af60e7fe2343c29ab25b5088de4da71de89016e75900285a</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Download Locations:</=
span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><a href=3D"https://do=
wnloads.yoctoproject.org/releases/yocto/yocto-5.1.4/bitbake-82b9f4212698357=
9da03bdbb4e3ebf07346118a7.tar.bz2" target=3D"_blank">https://downloads.yoct=
oproject.org/releases/yocto/yocto-5.1.4/bitbake-82b9f42126983579da03bdbb4e3=
ebf07346118a7.tar.bz2</a></span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><a href=3D"https://mi=
rrors.kernel.org/yocto/yocto/yocto-5.1.4/bitbake-82b9f42126983579da03bdbb4e=
3ebf07346118a7.tar.bz2" target=3D"_blank">https://mirrors.kernel.org/yocto/=
yocto/yocto-5.1.4/bitbake-82b9f42126983579da03bdbb4e3ebf07346118a7.tar.bz2<=
/a></span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Repository Name: yoct=
o-docs</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Repository Location:
<a href=3D"https://git.yoctoproject.org/yocto-docs" target=3D"_blank">https=
://git.yoctoproject.org/yocto-docs</a></span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Branch: styhead</span=
><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Tag: yocto-5.1.4</spa=
n><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Git Revision: f0324b8=
f14881227336f84325cdebd0518e17796</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">---------------</span=
><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Contributors</span><u=
></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">---------------</span=
><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Alessio Cascone</span=
><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Lee Chee Yang</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Makarios Christakis</=
span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Marta Rybczynska</spa=
n><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Peter Marko</span><u>=
</u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Priyal Doshi</span><u=
></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Richard Purdie</span>=
<u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Ross Burton</span><u>=
</u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Steve Sakoman</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Vijay Anusuri</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Wang Mingyu</span><u>=
</u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Weisser, Pascal</span=
><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">---------------</span=
><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Known Issues</span><u=
></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">---------------</span=
><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">N/A</span><u></u><u><=
/u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">---------------</span=
><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Security Fixes</span>=
<u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">---------------</span=
><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">binutils: Fix CVE-202=
5-0840</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">grub: Fix CVE-2024-45=
774=C2=A0 CVE-2024-45775=C2=A0 CVE-2024-45776=C2=A0 CVE-2024-45777=C2=A0 CV=
E-2024-45778=C2=A0=C2=A0 CVE-2024-45779=C2=A0 CVE-2024-45780=C2=A0 CVE-2024=
-45781=C2=A0 CVE-2024-45782=C2=A0=C2=A0
 CVE-2024-45783=C2=A0 CVE-2024-56737=C2=A0 CVE-2025-0622=C2=A0 CVE-2025-062=
4=C2=A0 CVE-2025-0677=C2=A0 CVE-2025-0678=C2=A0 CVE-2025-0684=C2=A0 CVE-202=
5-0685=C2=A0 CVE-2025-0686=C2=A0 CVE-2025-0689=C2=A0 CVE-2025-0690=C2=A0 CV=
E-2025-1118=C2=A0 CVE-2025-1125</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">openssh: Fix CVE-2025=
-26465 CVE-2025-26466</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">puzzles: Ignore CVE-2=
024-13769 CVE-2024-13770 CVE-2025-0837</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">subversion: Ignore CV=
E-2024-45720</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">xserver-xorg: Ignore =
CVE-2025-26594 CVE-2025-26595 CVE-2025-26596 CVE-2025-26597 CVE-2025-26598 =
CVE-2025-26599 CVE-2025-26600 CVE-2025-26601</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">---------------</span=
><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Fixes</span><u></u><u=
></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">---------------</span=
><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">bitbake: event/utils:=
 Avoid deadlock from lock_timeout() and recursive events</span><u></u><u></=
u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">bitbake: utils: Add s=
ignal blocking for lock_timeout</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">bitbake: utils: Print=
 information about lock issue before exiting</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">bitbake: utils: Tweak=
 lock_timeout logic</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">build-appliance-image=
: Update to styhead head revision</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">docs: Remove all ment=
ion of core-image-lsb</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">grub: backport strlcp=
y function</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">grub: drop obsolete C=
VE statuses</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">icu: Adjust ICU_DATA_=
DIR path on big endian targets</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">libtasn1: upgrade to =
4.20.0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">libxml2: upgrade to 2=
.13.6</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">migration-guides: add=
 release notes for 4.0.25 and 5.1.3</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">poky.conf: bump versi=
on for 5.1.4</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">ref-manual: Add missi=
ng variable IMAGE_ROOTFS_MAXSIZE</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">ref-manual: don&#39;t=
 refer to poky-lsb</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">ref-manual: remove OE=
_IMPORTS</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">tzcode-native: Fix co=
mpiler setting from 2023d version</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">tzdata/tzcode-native:=
 upgrade to 2025a</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">vulnerabilities/class=
es: remove references to cve-check text format</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">xserver-xf86-config: =
add a configuration fragment to disable screen blanking</span><u></u><u></u=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">xserver-xf86-config: =
remove obsolete configuration files</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">xserver-xorg: upgrade=
 to 21.1.16</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">xwayland: upgrade to =
21.1.6</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><u></u>=C2=A0<u></u></p=
>
</div>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><br>
<br>
<u></u><u></u></p>
</div>
</blockquote>
</div>
<div>
<p class=3D"MsoNormal"><br clear=3D"all">
<u></u><u></u></p>
</div>
<p class=3D"MsoNormal"><br>
<span class=3D"m_8214225139796969982gmailsignatureprefix">-- </span><u></u>=
<u></u></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:Raleway">Yoann Congal</sp=
an><u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:Raleway">Smile ECS</span>=
<u></u><u></u></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#65093): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/65093" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/65093</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/112040510/431=
6185" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/112040510/4316185</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:yoann.congal@smile.fr" target=3D"_blank">yoann.c=
ongal@smile.fr</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</div></blockquote></div><div><br clear=3D"all"></div><br><span class=3D"gm=
ail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signatu=
re"><div dir=3D"ltr"><font face=3D"Raleway, regular">Yoann Congal</font><di=
v><font face=3D"Raleway, regular">Smile ECS</font></div></div></div></div>

--0000000000007e9c310631ee1a78--

