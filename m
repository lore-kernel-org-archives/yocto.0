Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6EBD2E0049A; Thu, 15 Sep 2016 07:57:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0646DE00404
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2016 07:57:30 -0700 (PDT)
Received: by mail-oi0-f49.google.com with SMTP id q188so72825314oia.3
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2016 07:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Knuf9K936kmjGXDeZII5qPZOgaddejwx9Ll7bfTAU78=;
	b=CvDSMC4PNv5gNmVLBk39lGoX8UMmEWII/fzzaZsDcg/iDmZecH64Rrw5K5aVWA1Tbk
	An23Y9hIOUU+fIyXKW9YixORubgoiQJnNE4+wYPZKERVC0YxzNfIsD5gCSwcp77j16jx
	GTdT+tMzTKu5dLTU2rHKnyTPlFCMlQqVHR9wtPwPJjiQYUULhbjPIwSA9TmgkEJXY7Oz
	MRNn2Rev+2iHMrJVgcGWGDtRVqFfd0YhbLprbmUMi3E57sba+GjoZJ+14GXzNc8+NfWl
	V6WN5+r1O/4O7ncz96m08B+MBQ6AlY5HKXc6/ICeJeiIKceIfzdypOXjS9kFF50gWX0X
	vDtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Knuf9K936kmjGXDeZII5qPZOgaddejwx9Ll7bfTAU78=;
	b=eC7CWEkDJ3j16qqOtcmGyzwC3MCmm78MqZoEq8i4FUnaO66BS16YhDADujuq5yvA8b
	7E/phgxpHdQsv2gfLkPiQOS7mIBitRQ4VuPUh/IoqML487I+tvAgrh044eUpHIIMg2ob
	LBOcnjfXvfqNSdG5ViWqeJnQ3FwYd/ZJaSfH0G4n2m7qbD7ojj/cMinrZcH/70ZU3+2w
	1ClXoRYfXNeHpFqAA0Rg1xZ+cPvQH8pPfW2obkhkP6/11DPT5j/RjNpc/d4m/yY5zdoK
	mxSNsAlwwmxPV+/ln6qBlbnBgx2fDmiOegggfzmTpSRVrkEk7h1hbd7s2gEFfA7lJyA5
	ElGA==
X-Gm-Message-State: AE9vXwPkSflRy1c/UVAkIaR/JojNiWUulp9aarWd5ydCIAkVcOhjr3zO3qDSFutVdgcIFd726I4N4nynK+hho7Uy
X-Received: by 10.107.170.87 with SMTP id t84mr17230235ioe.87.1473951450271;
	Thu, 15 Sep 2016 07:57:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.135.27 with HTTP; Thu, 15 Sep 2016 07:57:09 -0700 (PDT)
In-Reply-To: <803AC7A90CD4DF4880EDA6182185AD7026D49212@RCHEXMBP1.fnc.net.local>
References: <803AC7A90CD4DF4880EDA6182185AD7026D491AD@RCHEXMBP1.fnc.net.local>
	<CAJTo0LZYbkM+7NghAvvYOC=ZPGZybkdsguzBDDj76vug_6LouQ@mail.gmail.com>
	<803AC7A90CD4DF4880EDA6182185AD7026D49212@RCHEXMBP1.fnc.net.local>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 15 Sep 2016 15:57:09 +0100
Message-ID: <CAJTo0LZSO4OVGGfmJDcrwmGy91JCYspVnhCV31+THQ0VQR=8Tg@mail.gmail.com>
To: "Nadikuda, Lavanya" <Lavanya.Nadikuda@us.fujitsu.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: No /lib64 directory in yocto
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
X-List-Received-Date: Thu, 15 Sep 2016 14:57:34 -0000
Content-Type: multipart/alternative; boundary=001a11415cc89c46a9053c8d104f

--001a11415cc89c46a9053c8d104f
Content-Type: text/plain; charset=UTF-8

On 15 September 2016 at 15:51, Nadikuda, Lavanya <
Lavanya.Nadikuda@us.fujitsu.com> wrote:

> What if I want both the directories.
>
>
So Set libdir to one, install a symlink for the other.

Ross

--001a11415cc89c46a9053c8d104f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 15 September 2016 at 15:51, Nadikuda, Lavanya <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:Lavanya.Nadikuda@us.fujitsu.com" target=3D"_blank">Lavanya.Na=
dikuda@us.fujitsu.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x"><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif;color:#1f497d">What if I want both the directorie=
s.<u></u><u></u></span></p>
<p class=3D"MsoNormal"></p></blockquote></div><br>So Set libdir to one, ins=
tall a symlink for the other.</div><div class=3D"gmail_extra"><br></div><di=
v class=3D"gmail_extra">Ross</div></div>

--001a11415cc89c46a9053c8d104f--
