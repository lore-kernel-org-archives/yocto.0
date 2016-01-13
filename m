Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08E2CE00AD7; Wed, 13 Jan 2016 02:21:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f51.google.com (mail-vk0-f51.google.com
	[209.85.213.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA6A1E00A9C
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 02:20:59 -0800 (PST)
Received: by mail-vk0-f51.google.com with SMTP id n1so104320596vkb.3
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 02:20:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=z+gr80oTneFfht+JP6KCB9eAovpOzDbihMVJwRLpd+k=;
	b=SUTDUcHQN0MBgY2MGoUPqPxabT+Uhz4VwsaGT6+fZRTmWXH9jSuxYZa88h3ZEsaw2E
	2Vh2DXMibVTL7CzjuY+OM2YiHrMTVAr4xTyrQVxrH8m1TbD4HX4XPA6Y16ut2Mh+3HG6
	Qtn4xVS9O9fb/fT3cVFPW8LczmiZQH8WOdUApAti3LXX0INCcYNYwi61WaD32/AIqmd9
	tq3S0iGhJ/GuMGL6zutiECh1ja7nzixBWD46d8L3jwa2AaQ+YVI0T6BwxLRM8T38EB6g
	Y/NZu55kB3wrYTfog4XS9Nnln8NSmak3ol23Am183yeBqArTFK7vEs0ugMxmoXgYWu1C
	HorQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=z+gr80oTneFfht+JP6KCB9eAovpOzDbihMVJwRLpd+k=;
	b=T0CwP8mFTeNnrp8X9RgDm3knGTXawV17QaWeSSm+hdErLeluzZ1LOlgkeaf771JUfZ
	zIUhT/+u6lSXEwAP1/wOAZb46pSc7dsNf2SWbuHBrecSNWuiXDZjpetmkEckv9JqfVgF
	hYTj+qqQRkJNnj3nhDPJ627FZsKThDc3p56xRrdBPYDHX5ycoveqFLsH5lybTzPdBoaq
	HmB8Zea8A/bZcrCfr0mqS85RrDxZ3C3YHA4Q4EL7iLXPiMiYoanerPei42svA0RF8fo/
	Cqe5z6NWyuqfFMvrV4jo+6/yIzHPQGsapsgLitvYVgohA0/2iX5St2WMkhwBi7sbbEwb
	cHmw==
X-Gm-Message-State: ALoCoQlEiXxv10W8lPVKr88y8Cf4gRUHtZ0THd3UygnNZJCCAht9r/9Sx6jLWRNbnbgNd9eYM0nX7/6rdv03/dtIYRuG1FcgYA==
MIME-Version: 1.0
X-Received: by 10.31.49.210 with SMTP id x201mr29824257vkx.81.1452680458568;
	Wed, 13 Jan 2016 02:20:58 -0800 (PST)
Received: by 10.31.229.71 with HTTP; Wed, 13 Jan 2016 02:20:58 -0800 (PST)
Date: Wed, 13 Jan 2016 15:50:58 +0530
Message-ID: <CALLyC8SbQtH_eWCWdY6cK_Y_gZGiRZ5Fq5MuPtQauWvzpJX9Vw@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: Yocto <yocto@yoctoproject.org>
Subject: How to set password policy using libpam in yocto
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
X-List-Received-Date: Wed, 13 Jan 2016 10:21:05 -0000
Content-Type: multipart/alternative; boundary=001a1143873eb48b6305293486f7

--001a1143873eb48b6305293486f7
Content-Type: text/plain; charset=UTF-8

Hi,
     I want to create run time users in my target and the password for that
should have maximum of 12 letters (which include both capital and small)
and minimum of 8 letter. How can i modify "libpam" recipe to set this
configuration . where to add libpam recipe.
   I found in one blog that i have to add this feature in "DISTO_FEATURES =
"pam" but , i don't see this feature in "DISTRO_FEATURE" variable in yocto
reference manual

https://wiki.yoctoproject.org/wiki/PAM_Integration

How can i include above feature in rootfs using libpam .


Thanks in advance


Thanks and Regards
        Vivek

--001a1143873eb48b6305293486f7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>=C2=A0 =C2=A0 =C2=A0I want to create run time user=
s in my target and the password for that should have maximum of 12 letters =
(which include both capital and small) and minimum of 8 letter. How can i m=
odify &quot;libpam&quot; recipe to set this configuration . where to add li=
bpam recipe.</div><div>=C2=A0 =C2=A0I found in one blog that i have to add =
this feature in &quot;DISTO_FEATURES =3D &quot;pam&quot; but , i don&#39;t =
see this feature in &quot;DISTRO_FEATURE&quot; variable in yocto reference =
manual=C2=A0</div><div><br></div><div><a href=3D"https://wiki.yoctoproject.=
org/wiki/PAM_Integration">https://wiki.yoctoproject.org/wiki/PAM_Integratio=
n</a>=C2=A0<br></div><div><br></div><div>How can i include above feature in=
 rootfs using libpam .</div><div><br></div><div><br></div><div>Thanks in ad=
vance</div><div><br></div><div><br></div><div>Thanks and Regards</div><div>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Vivek</div></div>

--001a1143873eb48b6305293486f7--
