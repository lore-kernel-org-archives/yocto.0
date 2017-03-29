Return-Path: <maxpowel@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1220E00655; Wed, 29 Mar 2017 01:40:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (maxpowel[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.176 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.176 listed in list.dnswl.org]
Received: from mail-qt0-f176.google.com (mail-qt0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B635AE004E5
	for <yocto@yoctoproject.org>; Wed, 29 Mar 2017 01:40:22 -0700 (PDT)
Received: by mail-qt0-f176.google.com with SMTP id r45so6706879qte.3
	for <yocto@yoctoproject.org>; Wed, 29 Mar 2017 01:40:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=4ert+k00qwUZ+6GzvcZO9FC8BoXkZm52WVqF7yRWBTQ=;
	b=Ma2nWOTainOzW88aVT83zp3minUpwAZ+zEO6HNisqliGa9k0MPyapeJqQkAJueGDKf
	CdQ7MInpYO+/CBhm/aSzeyXWSSFUjVPP3ITsLfkFdd+RwO9lgk9QkMv3Ka65o/l+P8lg
	70ELWeLSpIXiCSSjhaKrB5Eue0/k9NFG8bA7hWy+abAr2/LFNVA6CUBkeiJ73gj22amp
	tIqAfERPaMmbk3LX8r7YzZoUV9nJNx2X+Uu98xfYIvALIAuuea8QKxeBMPv4LfW6rsKm
	2CYaSzfdqeojK/l3WJYusgzP+b55XYTsStTpBm0QDKzgvSwYtBC9Bxs+E9cy5suo/dcT
	yFxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=4ert+k00qwUZ+6GzvcZO9FC8BoXkZm52WVqF7yRWBTQ=;
	b=K1QjesmxK54eWPtkFGfTCj9H/P6qv10mfb9shetoW7nXLzS8WXDJdsD1zy7/P9LsVM
	QPFd/EqvBRSb1/dYXq+N+vpbY8+AC7Jn4BQluiLcrpMh3BHAISkVUwiEb9o0VeBmOu9I
	GoiBF6y89xr+d0ll5nnU7/R9k+x0nP7WNifVtWolldtJ3xj1djbovbfEEZRYPJDeeEs8
	HBFDax3cIgnrTRmWgRvbtjdFFiVb2fhThYzAzH9mBs8wj4IFok/KtO6FNUfIsPRRqWWH
	TbQlQmdqMvGlsfJBADYzhAwdRHtTGRcLlSZG/58La47kHoydCG8lcBpBpi1OqN6iRX0Y
	MgDQ==
X-Gm-Message-State: AFeK/H0khjMyJfoBSuxARxUZ0r+gLBTLY+ehR1iZc8aUbjZrheEheY+xX4hmMp15eKyJclL2+aQTfPRXZRIMww==
X-Received: by 10.237.54.100 with SMTP id e91mr29999665qtb.224.1490776821512; 
	Wed, 29 Mar 2017 01:40:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.37.5 with HTTP; Wed, 29 Mar 2017 01:40:21 -0700 (PDT)
In-Reply-To: <CAOsmwBS288wYPvM2Aq45hH28TNdDtq+XWUNqNxWP2bwJcxKoAg@mail.gmail.com>
References: <CAOsmwBR47gfDH-mQ5ej7vzn9xJSeB=OM=pv9X06-smxgKkKX6A@mail.gmail.com>
	<CAJTo0LZFhn+df6_x+AnMaU7CT3s38cPfweV2K+M18AiLjy0z9Q@mail.gmail.com>
	<CAOsmwBQnbywO8SNhtHviL5=DxkCKHr4MoANx7JPR0abPaMHYKQ@mail.gmail.com>
	<CAJTo0LZyXuVLLpeEQsgqn0pswfFO0m9HBLfg81MLH24+0oFxJw@mail.gmail.com>
	<CAOsmwBS46rZ4qKLJuBHbY5jWpLiA-+SF=vE74wED-WgGykq4yQ@mail.gmail.com>
	<CAJTo0LZC6cpkKuZwD6VK6yrk3Ki_tXAG_647XrHJ=QxdrqGjLw@mail.gmail.com>
	<CAOsmwBS288wYPvM2Aq45hH28TNdDtq+XWUNqNxWP2bwJcxKoAg@mail.gmail.com>
From: Alvaro Garcia <maxpowel@gmail.com>
Date: Wed, 29 Mar 2017 10:40:21 +0200
Message-ID: <CAOsmwBQzrb0ob77DMp2iikAnbeExTjoT_3Fsf3yH_n-NtrWM9Q@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: NVIDIA Drivers
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
X-List-Received-Date: Wed, 29 Mar 2017 08:40:23 -0000
Content-Type: multipart/alternative; boundary=001a114462c2e2c6a7054bda860d

--001a114462c2e2c6a7054bda860d
Content-Type: text/plain; charset=UTF-8

Well, the problem was booting from UEFI. Enabled normal boot and now
everything is working perfectly. Its ok for me but if anyone knows how to
make it run nice from UEFI will be nice because the splash screen does not
work in normal boot.

Thank you so much for your help!

2017-03-29 10:19 GMT+02:00 Alvaro Garcia <maxpowel@gmail.com>:

> I have checked the rootfs and the nouveau files are there:
> /usr/lib/libdrm_nouveau.so.2
> /usr/lib/libdrm_nouveau.so.2.0.0
> /usr/lib/xorg/modules/drivers/nouveau_drv.so
> /usr/lib/dri/nouveau_vieux_dri.so
>
> Xorg seems to load it
> (II) LoadModule: "nouveau"
>
> It seems that the recipe is working fine, will try xorg configuration.
>

--001a114462c2e2c6a7054bda860d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Well, the problem was booting from UEFI. Enabled norm=
al boot and now everything is working perfectly. Its ok for me but if anyon=
e knows how to make it run nice from UEFI will be nice because the splash s=
creen does not work in normal boot.<br><br></div>Thank you so much for your=
 help!<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2=
017-03-29 10:19 GMT+02:00 Alvaro Garcia <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:maxpowel@gmail.com" target=3D"_blank">maxpowel@gmail.com</a>&gt;</span=
>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div><div><div>I=
 have checked the rootfs and the nouveau files are there:<br></div>/usr/lib=
/libdrm_nouveau.so.2<br>/usr/lib/libdrm_nouveau.so.2.<wbr>0.0<br>/usr/lib/x=
org/modules/drivers/<wbr>nouveau_drv.so<br></div>/usr/lib/dri/nouveau_vieux=
_<wbr>dri.so<br><br></div>Xorg seems to load it<br></div>(II) LoadModule: &=
quot;nouveau&quot;<div class=3D"gmail_extra"><br></div><div class=3D"gmail_=
extra">It seems that the recipe is working fine, will try xorg configuratio=
n.<br></div></div>
</blockquote></div><br></div>

--001a114462c2e2c6a7054bda860d--
