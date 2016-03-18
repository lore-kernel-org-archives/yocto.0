Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54897E00C80; Fri, 18 Mar 2016 13:07:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3F76E00C71
	for <yocto@yoctoproject.org>; Fri, 18 Mar 2016 13:06:59 -0700 (PDT)
Received: by mail-io0-f173.google.com with SMTP id m184so150281267iof.1
	for <yocto@yoctoproject.org>; Fri, 18 Mar 2016 13:06:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=5aaSoh0Atm4u6E3tpYNVeh/u6MbcWMupVoqdoVmgcgA=;
	b=DasrhAhTAacoRWAYphxRmCnAXJhGh0y8EKhmsazZFNPoZ0itzYzPpF/xAhAOEA/EGP
	KnJohJVb5Y0Kw4YXMDggyvZlMYcj5c2CvpBNTko92I2A04NBHtClC5GA5HwOWpwsYlN7
	LH8gkAPKV3YVugnauqNAcRZQ5EWHjQb5izUXPyBTWogMCkoO27wAwVZrxfdlZXcs5u6l
	YdxHAmTTnYA+9tgYMCGYC0nV0az2ptP2F7KmHT1EfUeqdecfmrauYSVn95V0elG0+lUa
	tI/JobnQOzYnm0gMN1BSWp23B2cEjWUMIvPeqxoq7Lstrb2fZH3iIP9ICb617TbZePvf
	VmKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=5aaSoh0Atm4u6E3tpYNVeh/u6MbcWMupVoqdoVmgcgA=;
	b=ItDc4V69PKrmwdy40Y2iAzwE2GV5H3PS/2tMjJ6qi89S6UIRgH2SePk/OHizRklI/p
	PjCQK/tJTUcPNuy3RcMWVvxaI1X4kFYLRn8IaK8d7eAT1W2p4F6oLF19LwEn6WGdBL6d
	GRfodWoJ3U8Mo4/UdBeOvjd4jYYPWI8tn27pvrUtt1sa5tT9B+OZTYNLOtCa0zjISrO4
	KwZzJXwfVtF+gvWezBPUnLKaNh4ryaLMZdh6cfq6H/4QkdfpDi1aSgLZTManMFDRPGI5
	Oa6mC855jYCHmMgyOYDojE5RUUFUsZn+IBvXukgcXeif1wiYmXWRn7lISNdmxAL2E0Z8
	vWeA==
X-Gm-Message-State: AD7BkJKK7Enx6fxtQFS6gO1T1241+dNF2L3LHII0+U4OoUgaONp3r6yJnfypYxBpRsAvgq7sgQXdTkmQh35zcimS
X-Received: by 10.107.137.38 with SMTP id l38mr19270124iod.133.1458331619345; 
	Fri, 18 Mar 2016 13:06:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Fri, 18 Mar 2016 13:06:39 -0700 (PDT)
In-Reply-To: <CALf_N3YgGQOZpfT17GNd+m-hbCDRekm9zeR6WpKbwuYZjKzHUA@mail.gmail.com>
References: <CALf_N3bObyR-EPgVLtjS+NMmYETQsavs+DT45gxhF8CT1m1-yw@mail.gmail.com>
	<CAJTo0LaVEa3-GL6Nd3uMkBC0P7PvUj23FqTLchMo8bLcLbKXCg@mail.gmail.com>
	<CAJ86T=V-YaLEbH=i+34ZfB27Krnpg_F-XP=k7dBRA+g=D_gBFA@mail.gmail.com>
	<CALf_N3YgGQOZpfT17GNd+m-hbCDRekm9zeR6WpKbwuYZjKzHUA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 18 Mar 2016 20:06:39 +0000
Message-ID: <CAJTo0LZHXN2jgmsnwjwr46uaQwMJkJ6OWMvVgamNSUdFWmjCCA@mail.gmail.com>
To: Mark T <mtl1nuxd3v@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Conditional compile for package in layer.conf for Qemu
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
X-List-Received-Date: Fri, 18 Mar 2016 20:07:04 -0000
Content-Type: multipart/alternative; boundary=001a113ec52222e110052e584afc

--001a113ec52222e110052e584afc
Content-Type: text/plain; charset=UTF-8

On 18 March 2016 at 17:32, Mark T <mtl1nuxd3v@gmail.com> wrote:

> Thanks, that  " IMAGE_INSTALL_append_intel-corei7-64 = "package_b" "  worked
> a treat.
>
> If I want to exclude a recipe from a layer for qemu builds  - is there a
> similar method for that ?
>

You can use _remove_qemuall for that.

Ross

--001a113ec52222e110052e584afc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 18 March 2016 at 17:32, Mark T <span dir=3D"ltr">&lt;<a href=3D"mailto:m=
tl1nuxd3v@gmail.com" target=3D"_blank">mtl1nuxd3v@gmail.com</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><div>Thanks, that=C2=A0 &quot; <sp=
an>IMAGE_INSTALL_append_intel-corei7-64 =3D &quot;package_b&quot; &quot;=C2=
=A0 </span>worked a treat.=C2=A0 <br><br></div>If I want to exclude a recip=
e from a layer for qemu builds=C2=A0 - is there a similar method for that ?=
<br></blockquote></div><br>You can use _remove_qemuall for that.</div><div =
class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a113ec52222e110052e584afc--
