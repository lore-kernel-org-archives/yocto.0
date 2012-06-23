Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED96AE00739
	for <yocto@yoctoproject.org>; Sat, 23 Jun 2012 09:04:37 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so5735119pbb.35
	for <yocto@yoctoproject.org>; Sat, 23 Jun 2012 09:04:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=JWcH5meN5id++CXuc7+fr7+eKIKm+50uxXgJQG0StEs=;
	b=ZlYV6qepZlW88PKNyQTRP0HoVuYyd/eXQqIoQCFhBS+dAfpGkbqAwTydqrQzOLwlBG
	YsnU4ioyotuEq4DPAcTcpBtphipmk864v1JD7Z4tqdaqBZgxreVRcITmsaLSpnN98CtT
	kZirXiiMKda5ixlHTdkqaFIaBPdO11BoeCJEdv2lHYXgsex55VE15kyaf39iI+/itt+3
	Ny1/re1DdGunnpfW4t9EANDo1qQW2UILxzbFp2ptAmXONJEhK28WB9S1+xp5Lhiz3/xR
	uEmkLm9GriwRbnBt3R/GxLv52KPVS3MQCabgT3cDUA+51biNqzmfNrmDip1aJ1sP6+67
	7jsg==
Received: by 10.68.217.40 with SMTP id ov8mr21515896pbc.131.1340467477719;
	Sat, 23 Jun 2012 09:04:37 -0700 (PDT)
Received: from [192.168.1.102] ([94.205.109.242])
	by mx.google.com with ESMTPS id nh6sm2669520pbc.44.2012.06.23.09.04.35
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 23 Jun 2012 09:04:37 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <4FE5DDF2.8040908@gmail.com>
Date: Sat, 23 Jun 2012 20:04:31 +0400
Message-Id: <883800F1-AD79-4AD7-AF0B-2E72E5235DE3@gmail.com>
References: <2E8A3DA3-EC31-4CE7-979D-E842AFFAB8CA@gmail.com>
	<42D532F4-5629-4BE6-B8AD-3E28A192327D@gmail.com>
	<CAMKF1srTFrW4VwF5ApQFW+oNs_4CiRiEvnZn6EiVCWBC_7DNTQ@mail.gmail.com>
	<6C530CF7-A92F-495A-8472-B2D46EBBDFCD@gmail.com>
	<4FE5DDF2.8040908@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: SRCREV spec not working for kernel git recipes
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 23 Jun 2012 16:04:38 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_B33E4DCE-AD50-4917-876F-E77B2D1CA455"

--Apple-Mail=_B33E4DCE-AD50-4917-876F-E77B2D1CA455
Content-Transfer-Encoding: 7bit
Content-Type: text/plain;
	charset=iso-8859-1

Hi Khem,

On Jun 23, 2012, at 7:17 PM, Khem Raj wrote:
>> 
>> BTW, I do not have a PROVIDES += "virtual/kernel" entry in the
>> linux-xilinx kernel recipes. Is that necessary to get SRCREV to
>> work?
>> 
> hmm I see
> SRCREV = "AUTOINC" in faulty case which is your problem comes from
> meta-xilinx layer it sets SRCEREV in
> conf/distro/include/xilinx-default-revisions.inc
> 
> SRCREV_pn-u-boot-xilinx ?= "${AUTOREV}"
> SRCREV_pn-linux-xilinx ?= "${AUTOREV}"
> 
> that setting up SRCREV to be top of tree and its using pn-${PN} override
> so whatever you set without override will be overwritten by this the
> reson why SRCREV_pn-${PN} worked is because this is a weak assignment so
> when you defined yours that one took precedence.

What do you recommend I do? 

Best regards,

Elvis Dowson

--Apple-Mail=_B33E4DCE-AD50-4917-876F-E77B2D1CA455
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; ">Hi =
Khem,<div><br><div><div>On Jun 23, 2012, at 7:17 PM, Khem Raj =
wrote:</div><blockquote type=3D"cite"><div><blockquote type=3D"cite"><font=
 class=3D"Apple-style-span" =
color=3D"#000000"><br></font></blockquote><blockquote type=3D"cite">BTW, =
I do not have a PROVIDES +=3D "virtual/kernel" entry in =
the<br></blockquote><blockquote type=3D"cite">linux-xilinx kernel =
recipes. Is that necessary to get SRCREV to<br></blockquote><blockquote =
type=3D"cite">work?<br></blockquote><blockquote =
type=3D"cite"><br></blockquote>hmm I see<br>SRCREV =3D "AUTOINC" in =
faulty case which is your problem comes from<br>meta-xilinx layer it =
sets SRCEREV =
in<br>conf/distro/include/xilinx-default-revisions.inc<br><br>SRCREV_pn-u-=
boot-xilinx ?=3D "${AUTOREV}"<br>SRCREV_pn-linux-xilinx ?=3D =
"${AUTOREV}"<br><br>that setting up SRCREV to be top of tree and its =
using pn-${PN} override<br>so whatever you set without override will be =
overwritten by this the<br>reson why SRCREV_pn-${PN} worked is because =
this is a weak assignment so<br>when you defined yours that one took =
precedence.<font class=3D"Apple-style-span" =
color=3D"#00721e"><br></font></div></blockquote><br></div><div>What do =
you recommend I do?&nbsp;</div></div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_B33E4DCE-AD50-4917-876F-E77B2D1CA455--
