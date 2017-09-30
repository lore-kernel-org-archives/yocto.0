Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B63AE00C62; Sat, 30 Sep 2017 02:35:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E66BE00C01
	for <yocto@yoctoproject.org>; Sat, 30 Sep 2017 02:35:52 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id i131so3048908wma.0
	for <yocto@yoctoproject.org>; Sat, 30 Sep 2017 02:35:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=HSKsc6BfSm+313ORnab7qzvw8SnBSeOaKab+iTxPmks=;
	b=SDX4jiL7iub/OBpSbc/Yxi5VBereGgQiKWI6OB/NKLl5NNnR2V8KSX5uYOnVMG6Gzz
	VSxNQO2o5sGK1YxxuGF7ddRuwaFDxsCOqmqD3an9IHyF3QgHmMoeUwSvf/FVUEgWXeSX
	FCpiimk1rsLbOgLTsmDLnocBVr/aD9zg0iLfmYI70j2BT7iyQJvzBxxir9ukfyTzwYhR
	a9o0+959UzGbXIaDYxZxrcYArlECMTy2vI15bivA0YyDtMj/I29zRDnHUNvUlkdHXtDt
	XnJDpumg88O/qQ3ZVrQcLNEdD8BfGWIfm7VtrDAYIjrSX1LaM1NZNitRRcCcXXDjyIqw
	pydw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=HSKsc6BfSm+313ORnab7qzvw8SnBSeOaKab+iTxPmks=;
	b=oWNJ0W5LJ0oH0ptEiFE/6cotK76u+MtNXU+z4rZiO2lhlzOAZALq5L7JHHEUU29Esj
	Ks0F62JJID+NeIq6BSXGDq81/ukAkxq2v+kkogbJPpO2jXz3c5NiBogeTCQsnK7UNc5D
	Ve7YGxI+NtfYC+7ZdbapBnTe7cdn/Uo6xEePl4vsBFpMUwi7wq8CW/GOkXnnkeSeFXyU
	LxwoMGtmMTHlkK4VyPrw/uWJqvVrdAcqWBQymcW9Sfm9E5N8vsx9c2LvH6fF5y6S8Vm7
	xnVOAEvY6UVa0XUSlIaOPjyK7wnXKvg5fQ6ZjSr4T4vZwbsk0iJQqkpz8PCIUHq9XLXm
	lMMg==
X-Gm-Message-State: AHPjjUjA57T05EzlXIWz5MfgjAkwn6NC2TDczZ0Ut4thmOi0AMfJNWf7
	w7Jjdl+7PqzwawZH1hm/i+1hWSOPZwnyGs/9tYxcHw==
X-Google-Smtp-Source: AOwi7QD7Rj4g54sfNSq18qYiuG8WRHGmD74UedEM1vX9SHoTHYfParv7qbaSW9FvA+nGfUVFTw0AD827esoU6naz+4k=
X-Received: by 10.28.218.146 with SMTP id r140mr5470356wmg.14.1506764150895;
	Sat, 30 Sep 2017 02:35:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.67.131 with HTTP; Sat, 30 Sep 2017 02:35:50 -0700 (PDT)
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Sat, 30 Sep 2017 11:35:50 +0200
Message-ID: <CAGAf8LxcQAwP5+nFnbjZj=pq1oouYbXkCpMPWwGvBBw6ETzmCA@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: INTEL E3900 Apollo Lake I (APL-I) with U-Boot and YOCTO?
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
X-List-Received-Date: Sat, 30 Sep 2017 09:35:53 -0000
Content-Type: multipart/alternative; boundary="001a1145b476f97f30055a64dd3b"

--001a1145b476f97f30055a64dd3b
Content-Type: text/plain; charset="UTF-8"

Hello to the YOCTO Community,

I am curious about the following HW/FW configuration, for the YOCTO Project?

Did anybody managed to run the following: INTEL Atom E3900 APL-I with
U-Boot and YOCTO on the top of it?

E3900 -> IFWI -> MBR -> U-Boot -> YOCTO ?!

Here are some explanations regarding the terms:

*IFWI is the Intel FirmWare Interface, a binary blob loaded from the eMMC
boot partition that executes a secondary loader (in this case U-Boot) from
the main eMMC. IFWI blobs for the APL-I are provided by Intel and are
specific for different flavors of the MID silicon.*
*Normal IFWI eMMC boot process*

   1. *On-chip boot rom inits eMMC and loads IFWI from the MMC boot
   partitions*
   2. *IFWI looks for OSIP header at top of eMMC (MBR boot block)*
   3. *The header directs IFWI to the start, size, load address, and entry
   of U-Boot in eMMC*
   4. *(need clarification) If u-boot is not found, try the alt u-boot
   image at 5MB into the eMMC*
   5. *U-Boot is loaded into RAM and executed*

*OSIP stands for OS Image Profile, and it is nothing more and less than
INTEL name for very known old fashion MBR, considering DATA structure.*

Thank you in advance,
Zoran

--001a1145b476f97f30055a64dd3b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello to the YOCTO Community,<div><br></div><div>I am curi=
ous about the following HW/FW configuration, for the YOCTO Project?</div><d=
iv><br></div><div>Did anybody managed to run the following: INTEL Atom E390=
0 APL-I with U-Boot and YOCTO on the top of it?</div><div><br></div><div>E3=
900 -&gt; IFWI -&gt; MBR -&gt; U-Boot -&gt; YOCTO ?!</div><div><br></div><d=
iv>Here are some explanations regarding the terms:</div><div><br></div><div=
><div style=3D""><span style=3D"color:rgb(36,41,46)"><font face=3D"arial, h=
elvetica, sans-serif" style=3D""><i><u>IFWI is the Intel FirmWare Interface=
, a binary blob loaded from the eMMC boot partition that executes a seconda=
ry loader (in this case U-Boot) from the main eMMC. IFWI blobs for the APL-=
I are provided by Intel and are specific for different flavors of the MID s=
ilicon.</u></i></font></span></div><div style=3D""><h4 style=3D"box-sizing:=
border-box;margin-top:24px;margin-bottom:16px;line-height:1.25;color:rgb(36=
,41,46)"><font face=3D"arial, helvetica, sans-serif"><i><u>Normal IFWI eMMC=
 boot process</u></i></font></h4><ol style=3D"box-sizing:border-box;padding=
-left:2em;margin-top:0px;margin-bottom:16px;color:rgb(36,41,46)"><li style=
=3D"margin-left:15px;box-sizing:border-box"><font face=3D"arial, helvetica,=
 sans-serif"><i><u>On-chip boot rom inits eMMC and loads IFWI from the MMC =
boot partitions</u></i></font></li><li style=3D"margin-left:15px;box-sizing=
:border-box;margin-top:0.25em"><font face=3D"arial, helvetica, sans-serif">=
<i><u>IFWI looks for OSIP header at top of eMMC (MBR boot block)</u></i></f=
ont></li><li style=3D"margin-left:15px;box-sizing:border-box;margin-top:0.2=
5em"><font face=3D"arial, helvetica, sans-serif"><i><u>The header directs I=
FWI to the start, size, load address, and entry of U-Boot in eMMC</u></i></=
font></li><li style=3D"margin-left:15px;box-sizing:border-box;margin-top:0.=
25em"><font face=3D"arial, helvetica, sans-serif"><i><u>(need clarification=
) If u-boot is not found, try the alt u-boot image at 5MB into the eMMC</u>=
</i></font></li><li style=3D"margin-left:15px;box-sizing:border-box;margin-=
top:0.25em"><font face=3D"arial, helvetica, sans-serif"><i><u>U-Boot is loa=
ded into RAM and executed</u></i></font></li></ol></div><div style=3D""><i>=
<u>OSIP stands for OS Image Profile, and it is nothing more and less than I=
NTEL name for very known old fashion MBR, considering DATA structure.</u></=
i></div><div style=3D""><i><u><br></u></i></div><div style=3D"">Thank you i=
n advance,</div><div style=3D"">Zoran</div><div style=3D"font-size:12.8px">=
<br></div><div style=3D"font-size:12.8px">=C2=A0</div></div></div>

--001a1145b476f97f30055a64dd3b--
