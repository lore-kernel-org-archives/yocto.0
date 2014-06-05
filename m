Return-Path: <rstreif@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C15F7E00BE0; Wed,  4 Jun 2014 18:37:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 069C8E00B74
	for <yocto@yoctoproject.org>; Wed,  4 Jun 2014 18:37:40 -0700 (PDT)
Received: by mail-ig0-f177.google.com with SMTP id l13so1757835iga.16
	for <yocto@yoctoproject.org>; Wed, 04 Jun 2014 18:37:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=8f2CM5wZbSFs/u+vvfXTuAxtJ3XfjAOvwh7ZSIGsZfo=;
	b=IEskhkb4nlRs1jO1YX5epwVzqQIaVx1eOrsNv5gJOSqRR23uFMXobicCxm8L4vM6B6
	EOFU8H0jSuuzWzh3OONp+dB6SovpCloohZs6l7/TzeKIbBSu/flVIOvXLHyDkzrpGQwx
	MiIO/TxH9B7G05lSTyy8GXs39tg0zzFtfco3U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=8f2CM5wZbSFs/u+vvfXTuAxtJ3XfjAOvwh7ZSIGsZfo=;
	b=ah6wBVkEzY4BupeCXDyzoW0yEpPf/Vt4wXhwQL8ProjhD83yWi9qllZ6qHUJDymFW2
	rtSfmINiO/0G473mN697W+wSHox+PXo+S0O7RIPkKPE24mxGCBi8T14GgX1nvelUCcdm
	Px75U/oqmks8njXLolM7KehgO3/EteyoiXwZUGr8MQybgk94xIKNtqbd4OGxW06MP/zu
	brAJPln4sv+tfxQGt+TiDcG1OwCYQ+83Xa+aNUEda3geayNy6t03mEUZaSriZfEqppG6
	p5bNsjRgUDB6trS3VNVJ3z1LBqANm9+10wfQjeAubdyZWWPGwqjf9gAe8RzQ/kIwfifX
	77dQ==
X-Gm-Message-State: ALoCoQkrO1DpA6pmLk07SXITYoVWI/pfw5TA/clmmHD8d/t2jl238UNxIaa/AAlHiq9dlSEKwqSx
MIME-Version: 1.0
X-Received: by 10.50.124.42 with SMTP id mf10mr13635426igb.41.1401932259998;
	Wed, 04 Jun 2014 18:37:39 -0700 (PDT)
Received: by 10.50.224.136 with HTTP; Wed, 4 Jun 2014 18:37:39 -0700 (PDT)
In-Reply-To: <CACzyEJ-WoUrc+Cvib3XHasdZPO1gk7rcyepTE1Xj5G2ndxaB+Q@mail.gmail.com>
References: <CACzyEJ-WoUrc+Cvib3XHasdZPO1gk7rcyepTE1Xj5G2ndxaB+Q@mail.gmail.com>
Date: Wed, 4 Jun 2014 18:37:39 -0700
Message-ID: <CA+gsK-pQz1TeXzfbP0tMMfwdWQcHoCme4PdUM3s+vRbe3oT4EA@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Insop Song <insop.song@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: how to specify if multiple bb files are existing
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
X-List-Received-Date: Thu, 05 Jun 2014 01:37:43 -0000
Content-Type: multipart/alternative; boundary=089e0111d41e5b5b5104fb0ccaa4

--089e0111d41e5b5b5104fb0ccaa4
Content-Type: text/plain; charset=UTF-8

Hi Insop,

Technically u-boot-fw-utils_2013.01.01 should be used because it's the
newer version. However, you can explicitly specify

PREFERRED_VERSION_u-boot-fw-utils = "2013.01.01"

Cheers,
Rudi

--089e0111d41e5b5b5104fb0ccaa4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Insop,<div><br></div><div>Technically u-boot-fw-utils_2=
013.01.01 should be used because it&#39;s the newer version. However, you c=
an explicitly specify</div><div><br></div><div>PREFERRED_VERSION_u-boot-fw-=
utils =3D &quot;2013.01.01&quot;</div>
<div><br></div><div>Cheers,</div><div>Rudi</div><div class=3D"gmail_extra">=
<div dir=3D"ltr"><div><font face=3D"garamond, serif"><span style=3D"border-=
collapse:collapse;color:rgb(102,102,102);font-family:arial,sans-serif;font-=
size:13px"><br>
</span></font></div></div>
</div></div>

--089e0111d41e5b5b5104fb0ccaa4--
