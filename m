Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 790A0C3601A
	for <webhook@archiver.kernel.org>; Thu,  3 Apr 2025 17:22:24 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web10.1308.1743700935566881975
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Apr 2025 10:22:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=EO43KEvC;
 spf=pass (domain: smile.fr, ip: 209.85.221.51, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-39ac8e7688aso890058f8f.2
        for <yocto@lists.yoctoproject.org>; Thu, 03 Apr 2025 10:22:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1743700933; x=1744305733; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hGtWqcbpmXzyURhy4dQMw5ju1gtA34JLb9LGl0jdwzk=;
        b=EO43KEvC+JOEbskhE0gocf8CZ8x9MXgmrgj5R40/Ymgp5vh/mydKqIy6nBn5B6SLjt
         rW4lx7o5RT+yimF2vYP7W62PKK9lA7Wz0JYroC7KnI29c3rqiVbAgS4rgvtCJQEjgbWR
         HxtDGc0BwcEtlrb9S0EflnJ2TigeHVOHzM8j8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743700933; x=1744305733;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hGtWqcbpmXzyURhy4dQMw5ju1gtA34JLb9LGl0jdwzk=;
        b=tiFtJwK6roh3gmomOQVIcw2X+U+0D7F/f/4nvVMSBTfh4Gkv/velt/x9Ezp+6/B6V9
         Q7zN+tv8axlRcW/VsNFTsLqKHY4ydFgoGvsWFKazvZeab/ldQDSh2K7NfUiygligcfg+
         6pv0s1znd79/5KW9mqARMwo4Fd1JaE815FrGsIT4p8NaTaO70o0/w0NVP1z9sr+gNR5g
         ohTJ6IJjZLrghbKKQDL8Kv4LpTBEqHs6/DrqrO9jD4FxFYk2TqNkrljM2nFPBGciMwA1
         eAvjT9xrIvOm6J24I/6k/a/uOHn1ISYAZpzs/gL74jzN0UkHwzoa0bJpx/lYDJubDaTR
         KK/A==
X-Gm-Message-State: AOJu0YyWIy2A4kmaWIqVzGiV9Hul0N+DDpEyQ+zZlGS166XrqaV8N6WE
	MTl8ZhTFSCGLAIPqNj2OX+8bbo0yCeln9mwwoUqK20PURzzGvBQ0+W61rfqQdrWDaCaWRC40uRp
	dBlGfh6bAPcYsMxp/qp24l3P+jXFX7/z88AcDRDBZIMEJs8sWzIA=
X-Gm-Gg: ASbGnctt/ev8Apjg1xVBCui2o1b093tLvDQhPOWdJzflxWq81hF/BoEfbHyGPdezyna
	Ial3X/UHxdxlHJfiFid4iB0GZNccmliSf8/N5U4j6bi4pji7ZFzLIHr9pUbQEistm7NtEEXoEfh
	sOV1zoD6kaL0p0ojLrOGdonvxCaWb4mZz9fyk6ZWhrKsfMABO1mHAVBvvFCHIH
X-Google-Smtp-Source: AGHT+IFWlVMv8TMmq7kIduRjIiOcCdXE/Fsn+YF6huXlCY/9pZ8AVKbOUv/3QKOXxJUAZulvysBCRM9NnUY3BN8arVc=
X-Received: by 2002:a05:6000:4022:b0:391:231b:8e0d with SMTP id
 ffacd0b85a97d-39cba977650mr96332f8f.39.1743700933312; Thu, 03 Apr 2025
 10:22:13 -0700 (PDT)
MIME-Version: 1.0
References: <BL4PR11MB87978ADAB7C9CAF579B1AF0DB9AF2@BL4PR11MB8797.namprd11.prod.outlook.com>
In-Reply-To: <BL4PR11MB87978ADAB7C9CAF579B1AF0DB9AF2@BL4PR11MB8797.namprd11.prod.outlook.com>
From: Yoann Congal <yoann.congal@smile.fr>
Date: Thu, 3 Apr 2025 19:21:46 +0200
X-Gm-Features: ATxdqUGMA3JbLuq3pqjbOuZBPerm4WkRrDkPmGjCxwLYmRJ-Cg8UTJ8DY_H84Tg
Message-ID: <CAMSfU+6MVEpORbaTvnxQMJQ55mW1F4ZwaYPDBzGvtzrt0KJeMA@mail.gmail.com>
Subject: Re: [yocto] [ANNOUNCEMENT] Yocto Project 5.1.4 is Released
To: yocto@lists.yoctoproject.org, chee.yang.lee@intel.com
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="000000000000b99c090631e302e6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Apr 2025 17:22:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65090

--000000000000b99c090631e302e6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I've answered the 5.1.3 release mail asking for a change in the release
mail template. Maybe you missed it?

Here it is:

> Thanks for these nice release emails!
>
> Would it be possible to put the release branch ("kirkstone",
> "scarthgap", ...) in the commit title? (Those branch names are more
> used than their numerical equivalent)
> For this mail, something like : "Yocto Project 5.1.3 (styhead) is
> Released" ? I don't know how strict/free the format is...
>
> Best regards,


Thanks!


Le mer. 2 avr. 2025 =C3=A0 05:06, Lee Chee Yang via lists.yoctoproject.org
<chee.yang.lee=3Dintel.com@lists.yoctoproject.org> a =C3=A9crit :

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
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65051):
> https://lists.yoctoproject.org/g/yocto/message/65051
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

--000000000000b99c090631e302e6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I&#39;ve answered the=
 5.1.3 release mail asking for a change in the release mail template. Maybe=
 you missed it?</div><div><br></div><div>Here it is:</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
Thanks for these nice release emails!<br>
<br>
Would it be possible to put the release branch (&quot;kirkstone&quot;,<br>
&quot;scarthgap&quot;, ...) in the commit title? (Those branch names are mo=
re<br>
used than their numerical equivalent)<br>
For this mail, something like : &quot;Yocto Project 5.1.3 (styhead) is<br>
Released&quot; ? I don&#39;t know how strict/free the format is...<br>
<br>
Best regards,</blockquote><div><br></div><div>Thanks!</div><div><br></div><=
br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=
=3D"gmail_attr">Le=C2=A0mer. 2 avr. 2025 =C3=A0=C2=A005:06, Lee Chee Yang v=
ia <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt=
;chee.yang.lee=3D<a href=3D"mailto:intel.com@lists.yoctoproject.org">intel.=
com@lists.yoctoproject.org</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div class=3D"msg1282906510442997460=
">





<div lang=3D"EN-MY" style=3D"overflow-wrap: break-word;">
<div class=3D"m_1282906510442997460WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Hi<br>
<br>
We are pleased to announce the Yocto Project 5.1.4 Release is now available=
 for download.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><a href=3D"https://do=
wnloads.yoctoproject.org/releases/yocto/yocto-5.1.4/poky-70dc28ac287bf35541=
270cae1d99130a0f6b7b5f.tar.bz2" target=3D"_blank">https://downloads.yoctopr=
oject.org/releases/yocto/yocto-5.1.4/poky-70dc28ac287bf35541270cae1d99130a0=
f6b7b5f.tar.bz2</a>
 =C2=A0=C2=A0=C2=A0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><a href=3D"https://mi=
rrors.kernel.org/yocto/yocto/yocto-5.1.4/poky-70dc28ac287bf35541270cae1d991=
30a0f6b7b5f.tar.bz2" target=3D"_blank">https://mirrors.kernel.org/yocto/yoc=
to/yocto-5.1.4/poky-70dc28ac287bf35541270cae1d99130a0f6b7b5f.tar.bz2</a>
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">A gpg signed version =
of these release notes is available at:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><a href=3D"https://do=
wnloads.yoctoproject.org/releases/yocto/yocto-5.1.4/RELEASENOTES" target=3D=
"_blank">https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.4/RELE=
ASENOTES</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Full Test Report:<u><=
/u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><a href=3D"https://do=
wnloads.yoctoproject.org/releases/yocto/yocto-5.1.4/testreport.txt" target=
=3D"_blank">https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.4/t=
estreport.txt</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Thank you for everyon=
e&#39;s contributions to this release.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Chee Yang<u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><a href=3D"mailto:che=
e.yang.lee@intel.com" target=3D"_blank">chee.yang.lee@intel.com</a><u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Yocto Project Build a=
nd Release<br>
<br>
<br>
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">---------------------=
-----<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">yocto-5.1.4 Release N=
otes<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">---------------------=
-----<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">---------------------=
-----<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Repositories/Download=
s<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">---------------------=
-----<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Repository Name: poky=
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Repository Location: =
<a href=3D"https://git.yoctoproject.org/poky" target=3D"_blank">https://git=
.yoctoproject.org/poky</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Branch: styhead<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Tag: yocto-5.1.4<u></=
u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Git Revision: 70dc28a=
c287bf35541270cae1d99130a0f6b7b5f<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Release Artefact: pok=
y-70dc28ac287bf35541270cae1d99130a0f6b7b5f<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">sha: 63f1d3d47a28bd9b=
41c89db6e1f2657c04233a00d10210795e766c0bc265d766<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Download Locations:<u=
></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><a href=3D"https://do=
wnloads.yoctoproject.org/releases/yocto/yocto-5.1.4/poky-70dc28ac287bf35541=
270cae1d99130a0f6b7b5f.tar.bz2" target=3D"_blank">https://downloads.yoctopr=
oject.org/releases/yocto/yocto-5.1.4/poky-70dc28ac287bf35541270cae1d99130a0=
f6b7b5f.tar.bz2</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><a href=3D"https://mi=
rrors.kernel.org/yocto/yocto/yocto-5.1.4/poky-70dc28ac287bf35541270cae1d991=
30a0f6b7b5f.tar.bz2" target=3D"_blank">https://mirrors.kernel.org/yocto/yoc=
to/yocto-5.1.4/poky-70dc28ac287bf35541270cae1d99130a0f6b7b5f.tar.bz2</a><u>=
</u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Repository Name: open=
embedded-core<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Repository Location: =
<a href=3D"https://git.openembedded.org/openembedded-core" target=3D"_blank=
">https://git.openembedded.org/openembedded-core</a><u></u><u></u></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Branch: styhead<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Tag: yocto-5.1.4<u></=
u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Git Revision: 2d94f4b=
8a852dc761f89e5106347e239382df5fb<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Release Artefact: oec=
ore-2d94f4b8a852dc761f89e5106347e239382df5fb<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">sha: 344ac23f814c049d=
69b06cee42c43b7b422506ce84397406caef09becb2555bf<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Download Locations:<u=
></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><a href=3D"https://do=
wnloads.yoctoproject.org/releases/yocto/yocto-5.1.4/oecore-2d94f4b8a852dc76=
1f89e5106347e239382df5fb.tar.bz2" target=3D"_blank">https://downloads.yocto=
project.org/releases/yocto/yocto-5.1.4/oecore-2d94f4b8a852dc761f89e5106347e=
239382df5fb.tar.bz2</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><a href=3D"https://mi=
rrors.kernel.org/yocto/yocto/yocto-5.1.4/oecore-2d94f4b8a852dc761f89e510634=
7e239382df5fb.tar.bz2" target=3D"_blank">https://mirrors.kernel.org/yocto/y=
octo/yocto-5.1.4/oecore-2d94f4b8a852dc761f89e5106347e239382df5fb.tar.bz2</a=
><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Repository Name: meta=
-mingw<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Repository Location: =
<a href=3D"https://git.yoctoproject.org/meta-mingw" target=3D"_blank">https=
://git.yoctoproject.org/meta-mingw</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Branch: styhead<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Tag: yocto-5.1.4<u></=
u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Git Revision: 77fe18d=
4f8ec34501045c5d92ce7e13b1bd129e9<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Release Artefact: met=
a-mingw-77fe18d4f8ec34501045c5d92ce7e13b1bd129e9<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">sha: 4c7f8100a3675d98=
63e51825def3df5b263ffc81cd57bae26eedbc156d771534<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Download Locations:<u=
></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><a href=3D"https://do=
wnloads.yoctoproject.org/releases/yocto/yocto-5.1.4/meta-mingw-77fe18d4f8ec=
34501045c5d92ce7e13b1bd129e9.tar.bz2" target=3D"_blank">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.1.4/meta-mingw-77fe18d4f8ec34501045c=
5d92ce7e13b1bd129e9.tar.bz2</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><a href=3D"https://mi=
rrors.kernel.org/yocto/yocto/yocto-5.1.4/meta-mingw-77fe18d4f8ec34501045c5d=
92ce7e13b1bd129e9.tar.bz2" target=3D"_blank">https://mirrors.kernel.org/yoc=
to/yocto/yocto-5.1.4/meta-mingw-77fe18d4f8ec34501045c5d92ce7e13b1bd129e9.ta=
r.bz2</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Repository Name: bitb=
ake<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Repository Location: =
<a href=3D"https://git.openembedded.org/bitbake" target=3D"_blank">https://=
git.openembedded.org/bitbake</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Branch: 2.10<u></u><u=
></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Tag: yocto-5.1.4<u></=
u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Git Revision: 82b9f42=
126983579da03bdbb4e3ebf07346118a7<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Release Artefact: bit=
bake-82b9f42126983579da03bdbb4e3ebf07346118a7<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">sha: 209d62c5262f2287=
af60e7fe2343c29ab25b5088de4da71de89016e75900285a<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Download Locations:<u=
></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><a href=3D"https://do=
wnloads.yoctoproject.org/releases/yocto/yocto-5.1.4/bitbake-82b9f4212698357=
9da03bdbb4e3ebf07346118a7.tar.bz2" target=3D"_blank">https://downloads.yoct=
oproject.org/releases/yocto/yocto-5.1.4/bitbake-82b9f42126983579da03bdbb4e3=
ebf07346118a7.tar.bz2</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><a href=3D"https://mi=
rrors.kernel.org/yocto/yocto/yocto-5.1.4/bitbake-82b9f42126983579da03bdbb4e=
3ebf07346118a7.tar.bz2" target=3D"_blank">https://mirrors.kernel.org/yocto/=
yocto/yocto-5.1.4/bitbake-82b9f42126983579da03bdbb4e3ebf07346118a7.tar.bz2<=
/a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Repository Name: yoct=
o-docs<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Repository Location: =
<a href=3D"https://git.yoctoproject.org/yocto-docs" target=3D"_blank">https=
://git.yoctoproject.org/yocto-docs</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Branch: styhead<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Tag: yocto-5.1.4<u></=
u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Git Revision: f0324b8=
f14881227336f84325cdebd0518e17796<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">---------------<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Contributors<u></u><u=
></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">---------------<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Alessio Cascone<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Lee Chee Yang<u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Makarios Christakis<u=
></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Marta Rybczynska<u></=
u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Peter Marko<u></u><u>=
</u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Priyal Doshi<u></u><u=
></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Richard Purdie<u></u>=
<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Ross Burton<u></u><u>=
</u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Steve Sakoman<u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Vijay Anusuri<u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Wang Mingyu<u></u><u>=
</u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Weisser, Pascal<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">---------------<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Known Issues<u></u><u=
></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">---------------<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">N/A<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">---------------<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Security Fixes<u></u>=
<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">---------------<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">binutils: Fix CVE-202=
5-0840<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">grub: Fix CVE-2024-45=
774=C2=A0 CVE-2024-45775=C2=A0 CVE-2024-45776=C2=A0 CVE-2024-45777=C2=A0 CV=
E-2024-45778=C2=A0=C2=A0 CVE-2024-45779=C2=A0 CVE-2024-45780=C2=A0 CVE-2024=
-45781=C2=A0 CVE-2024-45782=C2=A0=C2=A0 CVE-2024-45783=C2=A0 CVE-2024-56737=
=C2=A0 CVE-2025-0622=C2=A0 CVE-2025-0624=C2=A0
 CVE-2025-0677=C2=A0 CVE-2025-0678=C2=A0 CVE-2025-0684=C2=A0 CVE-2025-0685=
=C2=A0 CVE-2025-0686=C2=A0 CVE-2025-0689=C2=A0 CVE-2025-0690=C2=A0 CVE-2025=
-1118=C2=A0 CVE-2025-1125<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">openssh: Fix CVE-2025=
-26465 CVE-2025-26466<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">puzzles: Ignore CVE-2=
024-13769 CVE-2024-13770 CVE-2025-0837<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">subversion: Ignore CV=
E-2024-45720<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">xserver-xorg: Ignore =
CVE-2025-26594 CVE-2025-26595 CVE-2025-26596 CVE-2025-26597 CVE-2025-26598 =
CVE-2025-26599 CVE-2025-26600 CVE-2025-26601<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">---------------<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Fixes<u></u><u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">---------------<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">bitbake: event/utils:=
 Avoid deadlock from lock_timeout() and recursive events<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">bitbake: utils: Add s=
ignal blocking for lock_timeout<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">bitbake: utils: Print=
 information about lock issue before exiting<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">bitbake: utils: Tweak=
 lock_timeout logic<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">build-appliance-image=
: Update to styhead head revision<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">docs: Remove all ment=
ion of core-image-lsb<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">grub: backport strlcp=
y function<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">grub: drop obsolete C=
VE statuses<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">icu: Adjust ICU_DATA_=
DIR path on big endian targets<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">libtasn1: upgrade to =
4.20.0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">libxml2: upgrade to 2=
.13.6<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">migration-guides: add=
 release notes for 4.0.25 and 5.1.3<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">poky.conf: bump versi=
on for 5.1.4<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">ref-manual: Add missi=
ng variable IMAGE_ROOTFS_MAXSIZE<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">ref-manual: don&#39;t=
 refer to poky-lsb<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">ref-manual: remove OE=
_IMPORTS<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">tzcode-native: Fix co=
mpiler setting from 2023d version<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">tzdata/tzcode-native:=
 upgrade to 2025a<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">vulnerabilities/class=
es: remove references to cve-check text format<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">xserver-xf86-config: =
add a configuration fragment to disable screen blanking<u></u><u></u></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">xserver-xf86-config: =
remove obsolete configuration files<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">xserver-xorg: upgrade=
 to 21.1.16<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">xwayland: upgrade to =
21.1.6<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><br>
<br>
<u></u><u></u></span></p>
</div>
</div>

<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#65051): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/65051" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/65051</a><br>
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

--000000000000b99c090631e302e6--

