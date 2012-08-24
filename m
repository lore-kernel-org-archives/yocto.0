Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 692E3E0027E
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 09:49:08 -0700 (PDT)
Received: by pbbrq13 with SMTP id rq13so4514673pbb.35
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 09:49:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=/IoujxKhKIkDaYWKfGNn7GKH+KiGHN0JzGWOvrN4KoY=;
	b=VzLKN9U2nz+x/sVB1/nSXmZxbXdvnjkbNsepmX96f5DXwWTAmXtkWtXqAPlYdl4agC
	hLQ6fcAQAeRglhlHuSCaZHGLvakjtxm31iXhmwTgwmTS9m9xGWHIFex6Pkc3DMflnB01
	kEn1zbCBVvuWZwGw0lToySAm8uEbk6AM9OmzMgNgwieRdY4/NbdTcrqHiBQfl+Ft5X3C
	WmxHFyt+3Ewx/UcHnH+XHp2IaT3m8EVIXynmScvgl1m7O2+KD1lFBSoSdoHgyEqZhRiD
	c/1d3Yy4z02Jt7UHYCnrwQz1L5RwSwEYBJqN56hH1s07+PMQNOohInDN3BGhNV4nNvJJ
	7zcg==
Received: by 10.68.236.102 with SMTP id ut6mr14188493pbc.113.1345826948249;
	Fri, 24 Aug 2012 09:49:08 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id qn3sm8657592pbc.6.2012.08.24.09.49.04
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 24 Aug 2012 09:49:06 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CAMKF1srGqCXGdYPmOh9XXOV3uXTj4P6NvD6QdsBrNsiXC1e6_A@mail.gmail.com>
Date: Fri, 24 Aug 2012 20:49:01 +0400
Message-Id: <EA466178-7AF0-4E00-9D24-88A40709B2D1@gmail.com>
References: <B69A6542-B9AD-4E9E-9806-8C344D30B29F@gmail.com>
	<CAMKF1srGqCXGdYPmOh9XXOV3uXTj4P6NvD6QdsBrNsiXC1e6_A@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: TARGET_FPU not getting populated for powerpc 405/440 fpu-hard targets
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
X-List-Received-Date: Fri, 24 Aug 2012 16:49:08 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_413C136D-A9F7-4FC3-AA63-83A4D216C9DC"

--Apple-Mail=_413C136D-A9F7-4FC3-AA63-83A4D216C9DC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi Khem,

On Aug 24, 2012, at 8:35 PM, Khem Raj wrote:

> On Fri, Aug 24, 2012 at 9:27 AM, Elvis Dowson <elvis.dowson@gmail.com> =
wrote:
>> I just observed that TARGET_FPU is not getting populated, when you do
>> a build for fpu-hard targets. For fpu-soft targets, it displays =
TARGET_FPU =3D
>> "soft", but for fpu-hard targets, it display TARGET_FPU =3D "".
>=20
> that means default is hard for this architecture. This option is
> essentially used to configure gcc
> unless your fpu is special like fsl one's you are good here.

The FPU unit is an IP core, that is attached to a generic PowerPC405 or =
PowerPC440 embedded processor core on the FPGA, which by default doesn't =
contain an FPU unit.=20

In the Xilinx FPGA hardware project, I have to add this FPU unit, and =
there are some additional options that I can see relevant to this setup =
with the FPU unit, such as -mxilinx-fpu and -mfpu=3Ddp_full

Should I specify them in TUNE_CCARGS (as shown below) or =
TUNE_FEATURES_tune-ppc405e (not done below) or specify the same values =
for both variables ?

TUNE_CCARGS +=3D "${@bb.utils.contains("TUNE_FEATURES", "ppc405e", =
"-mcpu=3D405fp -mxilinx-fpu -mfpu=3Ddp_full", "", d)}"

AVAILTUNES +=3D "ppc405e"
TUNE_FEATURES_tune-ppc405e =3D "m32 ppc405e fpu-hard"

Best regards,

Elvis Dowson=

--Apple-Mail=_413C136D-A9F7-4FC3-AA63-83A4D216C9DC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; ">Hi =
Khem,<div><br><div><div>On Aug 24, 2012, at 8:35 PM, Khem Raj =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div>On Fri, Aug 24, 2012 at 9:27 AM, Elvis Dowson &lt;<a =
href=3D"mailto:elvis.dowson@gmail.com">elvis.dowson@gmail.com</a>&gt; =
wrote:<br><blockquote type=3D"cite">I just observed that TARGET_FPU is =
not getting populated, when you do<br></blockquote><blockquote =
type=3D"cite">a build for fpu-hard targets. For fpu-soft targets, it =
displays TARGET_FPU =3D<br></blockquote><blockquote type=3D"cite">"soft", =
but for fpu-hard targets, it display TARGET_FPU =3D =
"".<br></blockquote><br>that means default is hard for this =
architecture. This option is<br>essentially used to configure =
gcc<br>unless your fpu is special like fsl one's you are good =
here.<br></div></blockquote></div><br></div><div>The FPU unit is an IP =
core, that is attached to a generic PowerPC405 or PowerPC440 embedded =
processor core on the FPGA, which by default doesn't contain an FPU =
unit.&nbsp;</div><div><br></div><div>In the Xilinx FPGA hardware =
project, I have to add this FPU unit, and there are some additional =
options that I can see relevant to this setup with the FPU unit, such =
as&nbsp;-mxilinx-fpu and -mfpu=3Ddp_full</div><div><br></div><div>Should =
I specify them in&nbsp;TUNE_CCARGS (as shown below) =
or&nbsp;TUNE_FEATURES_tune-ppc405e (not done below) or specify the same =
values for both variables ?</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">TUNE_CCARGS +=3D =
"${@bb.utils.contains("TUNE_FEATURES", "ppc405e", "-mcpu=3D405fp =
-mxilinx-fpu -mfpu=3Ddp_full", "", d)}"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">AVAILTUNES +=3D =
"ppc405e"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">TUNE_FEATURES_tune-ppc405e =3D "m32 ppc405e =
fpu-hard"</font></div></div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_413C136D-A9F7-4FC3-AA63-83A4D216C9DC--
