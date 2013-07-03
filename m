Return-Path: <elvis.dowson@gmail.com>
Received: from mail-ee0-f49.google.com (mail-ee0-f49.google.com [74.125.83.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD10BE0140D
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2013 12:35:18 -0700 (PDT)
Received: by mail-ee0-f49.google.com with SMTP id b57so297539eek.36
	for <yocto@yoctoproject.org>; Wed, 03 Jul 2013 12:35:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=C0Bj3UqMfV0BD+AuBz1Egnuo2r+BPNmQQIbT0jNNsU0=;
	b=Vr8Ho5UyDZJ1OhbXLDmQoizuW9jDVRmCrpDnb+9/5O1mxtqEhiphnP1tpI+KMP3fLT
	Gfy2QTRZcbatlmx5tFsAXUsiHicb8XR1H8F61a2nDh44FcSPHud0bwsj7Ge2PkanaDTL
	O4OKstbnsXtx21nkc/v1PrM43IIovJIUMQ8kuHxw8Ag+x2ewQC06yckAyyZjClADf2cb
	uEQfhlr8IZf9IwAp52kBIU5DiYya5yyp6hsC0wn6nngTjxeQuzdw9yjTuJ/jqCOhqlIy
	QTVgP7YNzKErlh8BLfaBgq0Ukq3l9olA7so2ImURwUzNMPTpCN2D75o+F/KE21WHZ6I/
	HPAA==
X-Received: by 10.15.94.11 with SMTP id ba11mr2448187eeb.101.1372880117851;
	Wed, 03 Jul 2013 12:35:17 -0700 (PDT)
Received: from [192.168.1.104] ([94.205.109.186])
	by mx.google.com with ESMTPSA id p49sm46438677eeu.2.2013.07.03.12.35.14
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 03 Jul 2013 12:35:16 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.1 \(1498\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CANwz6nz2obpC75mXTYtK3roMczmNfHUEt84cj58Wjq5vGAFdaw@mail.gmail.com>
Date: Wed, 3 Jul 2013 23:35:09 +0400
Message-Id: <7B6DB0F2-A890-4A2B-B6DA-DEB57257A020@gmail.com>
References: <CANwz6nz2obpC75mXTYtK3roMczmNfHUEt84cj58Wjq5vGAFdaw@mail.gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
X-Mailer: Apple Mail (2.1498)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Fedora 18 CentOS 6.4 yocto difference zc702
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
X-List-Received-Date: Wed, 03 Jul 2013 19:35:22 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_F2F2D77B-F907-44A6-82A7-0EA728FDE2B1"

--Apple-Mail=_F2F2D77B-F907-44A6-82A7-0EA728FDE2B1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1

Hi Edward,

On Jul 3, 2013, at 11:05 PM, Edward Vidal <vidal.develone@gmail.com> =
wrote:

> Hello,
> I recently built core-image-minimal for zc702.
> This generated a file with a  dtb extension that I have not seen =
before =
uImage--3.8-xilinx+git0+6a0bedad60-r1-zynq-zc702-20130703173428.dtb.  =
Can anyone tell me more about the this extension.=20

The *.dts and *.dtb files are related to the device tree source and =
binary formats. When you work with a hardware project using the Xilinx =
ISE 14.6/Vivado 2013.2 tools, a dts file will be create. This contains =
the base address and other parameters for each device peripheral, e.g. =
serial ports, video controller, etc.

The yocto build system takes these files and generates the required =
*.dtb file.

Please refer the Zynq Base TRD 14.6 document, (you can quickly scan =
through the document and fast forward to section 8.2, for building a dtb =
file from a dts file)

http://www.wiki.xilinx.com/Zynq+Base+TRD+14.6-beta

> Where do you find the boot.scr or uEnv.txt for the zc702?   I built =
this on both a CentOS 6.4 and a Fedora18 x86_64 system.
>=20
> meta-yocto        =3D =
"(nobranch):04af378874f38d1200bea2fa191beeae94232d6e"=20
> meta-xilinx       =20
> meta-kc705        =20
> meta-zc702        =20
> meta-zedboard     =3D =
"(nobranch):b065f091f10060f2bb68b58f1d618e26a966fee2"=20
> meta-yocto-bsp    =3D =
"(nobranch):04af378874f38d1200bea2fa191beeae94232d6e"
>=20
> The latest version of poky that I downloaded=20
> commit 8a186a6b3853fc1a7dcf342d421c8926c38949c9
> Author: Cristiana Voicu <cristiana.voicu@intel.com>
> Date:   Mon Jul 1 08:09:52 2013 +0000
>=20
>     bitbake: hob: save button from settings called a nonexisting =
method
>    =20
>     The method was removed when the process for saving configuration
>     in Hob was changed. Replace the call with the right function.
>    =20
>     [YOCTO #4793]
>     (Bitbake rev: b6aa2b63d71cbe82850a375381b2dbc750cf1905)
>    =20
>     Signed-off-by: Cristiana Voicu <cristiana.voicu@intel.com>
>     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>=20
> causes the following error on both CentOS 6.4 and Fedora 18=20
> . oe-init-build-env=20
>=20
> BitBake requires Python 2.7.3 or later
> CentOS 6.4 has a non standard location of python.  Does anyone know =
how to tell bitbake of the non standard location of python.
>=20
> This latest version of poky that I downloaded on fedora18=20
> causes the following error.
>  MACHINE=3Dzc702 bitbake core-image-minimal -vDD=20
> ERROR:  OE-core's config sanity checker detected a potential =
misconfiguration.=20
>     Either fix the cause of this error or at your own risk disable the =
checker (see sanity.conf).=20
>     Following is the list of potential problems / advisories:=20
> =20
>     Your version of make 3.82 is broken. Please revert to 3.81 or =
install a patched version.=20
> =20
> ERROR: Execution of event handler 'check_sanity_eventhandler' failed
>=20
> This version of poky and meta-xilinx worked okay.
>=20
> meta              =20
> meta-yocto        =3D =
"(nobranch):04af378874f38d1200bea2fa191beeae94232d6e"=20
> meta-xilinx       =20
> meta-kc705        =20
> meta-zc702        =20
> meta-zedboard     =3D =
"(nobranch):b065f091f10060f2bb68b58f1d618e26a966fee2"=20
> meta-yocto-bsp    =3D =
"(nobranch):04af378874f38d1200bea2fa191beeae94232d6e"
>=20
> MACHINE=3Dzc702 bitbake core-image-minimal -vDD
>=20
> NOTE: Tasks Summary: Attempted 1530 tasks of which 306 didn't need to =
be rerun and all succeeded.
> We are trying to determine which board to purchase the=20
> Xilinx Zynq-7000 SoC ZC702 Evaluation Kit
> EK-Z7-ZC702-G
> $895.00 or
> AES-Z7EV-7Z020-G
> ZEDBOARD ZYNQ BOARD
> AES-Z7EV-7Z020-G
> ECCN
> Avnet Design Services - Custom
> $395.00
> Does anyone have any experience with either of these boards?

=46rom a support standpoint, both the ZC702 and Zedboard are supported =
really well. You will find that most of the Xilinx reference design and =
application notes usually always target the ZC702. If you get a Zedboard =
you'll need to take the extra effort to adapt the pin constraints file. =
Also the ZC702 has two FMC LPC connectors rather than 1 FMC LPC =
connector, if that's more important for you.

My recommendation would be to go in for the ZC702 or the ZC706 if you =
need more logic density.

Best regards,

Elvis Dowson=

--Apple-Mail=_F2F2D77B-F907-44A6-82A7-0EA728FDE2B1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Diso-8859-1"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; ">Hi =
Edward,<div><br><div><div>On Jul 3, 2013, at 11:05 PM, Edward Vidal =
&lt;<a =
href=3D"mailto:vidal.develone@gmail.com">vidal.develone@gmail.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div dir=3D"ltr">Hello,<br>I recently built =
core-image-minimal for zc702.<br>This generated a file with a&nbsp; dtb =
extension that I have not seen before =
uImage--3.8-xilinx+git0+6a0bedad60-r1-zynq-zc702-20130703173428.dtb.&nbsp;=
 Can anyone tell me more about the this extension.&nbsp; =
</div></blockquote><div><br></div><div>The *.dts and *.dtb files are =
related to the device tree source and binary formats. When you work with =
a hardware project using the Xilinx ISE 14.6/Vivado 2013.2 tools, a dts =
file will be create. This contains the base address and other parameters =
for each device peripheral, e.g. serial ports, video controller, =
etc.</div><div><br></div><div>The yocto build system takes these files =
and generates the required *.dtb file.</div><div><br></div><div>Please =
refer the Zynq Base TRD 14.6 document, (you can quickly scan through the =
document and fast forward to section 8.2, for building a dtb file from a =
dts file)</div><div><br></div><div><a =
href=3D"http://www.wiki.xilinx.com/Zynq+Base+TRD+14.6-beta">http://www.wik=
i.xilinx.com/Zynq+Base+TRD+14.6-beta</a></div><br><blockquote =
type=3D"cite"><div dir=3D"ltr">Where do you find the boot.scr or =
uEnv.txt for the zc702?&nbsp;&nbsp; I built this on both a CentOS 6.4 =
and a Fedora18 x86_64 system.<br>
<br>meta-yocto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
"(nobranch):04af378874f38d1200bea2fa191beeae94232d6e"
<br>meta-xilinx&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br>meta-kc705&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br>meta-zc702&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br>meta-zedboard&nbsp;&nbsp;&nbsp;&nbsp; =3D =
"(nobranch):b065f091f10060f2bb68b58f1d618e26a966fee2"
<br>meta-yocto-bsp&nbsp;&nbsp;&nbsp; =3D =
"(nobranch):04af378874f38d1200bea2fa191beeae94232d6e"<br><br>The latest =
version of poky that I downloaded <br>commit =
8a186a6b3853fc1a7dcf342d421c8926c38949c9<br>Author: Cristiana Voicu =
&lt;<a =
href=3D"mailto:cristiana.voicu@intel.com">cristiana.voicu@intel.com</a>&gt=
;<br>
Date:&nbsp;&nbsp; Mon Jul 1 08:09:52 2013 =
+0000<br><br>&nbsp;&nbsp;&nbsp; bitbake: hob: save button from settings =
called a nonexisting method<br>&nbsp;&nbsp;&nbsp; <br>&nbsp;&nbsp;&nbsp; =
The method was removed when the process for saving =
configuration<br>&nbsp;&nbsp;&nbsp; in Hob was changed. Replace the call =
with the right function.<br>
&nbsp;&nbsp;&nbsp; <br>&nbsp;&nbsp;&nbsp; [YOCTO =
#4793]<br>&nbsp;&nbsp;&nbsp; (Bitbake rev: =
b6aa2b63d71cbe82850a375381b2dbc750cf1905)<br>&nbsp;&nbsp;&nbsp; =
<br>&nbsp;&nbsp;&nbsp; Signed-off-by: Cristiana Voicu &lt;<a =
href=3D"mailto:cristiana.voicu@intel.com">cristiana.voicu@intel.com</a>&gt=
;<br>&nbsp;&nbsp;&nbsp; Signed-off-by: Richard Purdie &lt;<a =
href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfou=
ndation.org</a>&gt;<br>
<br>causes the following error on both CentOS 6.4 and Fedora 18 <br>. =
oe-init-build-env <br><br>BitBake requires Python 2.7.3 or =
later<br>CentOS 6.4 has a non standard location of python.&nbsp; Does =
anyone know how to tell bitbake of the non standard location of =
python.<br>
<br>This latest version of poky that I downloaded on fedora18 <br>causes =
the following error.<br>&nbsp;MACHINE=3Dzc702 bitbake core-image-minimal =
-vDD
<br>ERROR:&nbsp; OE-core's config sanity checker detected a potential =
misconfiguration.
<br>&nbsp;&nbsp;&nbsp; Either fix the cause of this error or at your own =
risk disable the checker (see sanity.conf).
<br>&nbsp;&nbsp;&nbsp; Following is the list of potential problems / =
advisories:
<br>&nbsp;<br>&nbsp;&nbsp;&nbsp; Your version of make 3.82 is broken. =
Please revert to 3.81 or install a patched version.
<br>&nbsp;<br>ERROR: Execution of event handler =
'check_sanity_eventhandler' failed<br><br>This version of poky and =
meta-xilinx worked =
okay.<br><br>meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;
<br>meta-yocto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
"(nobranch):04af378874f38d1200bea2fa191beeae94232d6e"
<br>meta-xilinx&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br>meta-kc705&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br>meta-zc702&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br>meta-zedboard&nbsp;&nbsp;&nbsp;&nbsp; =3D =
"(nobranch):b065f091f10060f2bb68b58f1d618e26a966fee2"
<br>meta-yocto-bsp&nbsp;&nbsp;&nbsp; =3D =
"(nobranch):04af378874f38d1200bea2fa191beeae94232d6e"<br><br>MACHINE=3Dzc7=
02 bitbake core-image-minimal -vDD<br><br>NOTE: Tasks Summary: Attempted =
1530 tasks of which 306 didn't need to be rerun and all succeeded.<br>
We are trying to determine which board to purchase the <br>Xilinx =
Zynq-7000 SoC ZC702 Evaluation Kit<br>EK-Z7-ZC702-G<br>$895.00 =
or<br>AES-Z7EV-7Z020-G<br>ZEDBOARD ZYNQ =
BOARD<br>AES-Z7EV-7Z020-G<br>ECCN<br>Avnet Design Services - Custom<br>
$395.00<br>Does anyone have any experience with either of these =
boards?<br></div></blockquote><br></div><div>=46rom a support =
standpoint, both the ZC702 and Zedboard are supported really well. You =
will find that most of the Xilinx reference design and application notes =
usually always target the ZC702. If you get a Zedboard you'll need to =
take the extra effort to adapt the pin constraints file. Also the ZC702 =
has two FMC LPC connectors rather than 1 FMC LPC connector, if that's =
more important for you.</div><div><br></div><div>My recommendation would =
be to go in for the ZC702 or the ZC706 if you need more logic =
density.</div><div><br></div><div>Best =
regards,</div></div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_F2F2D77B-F907-44A6-82A7-0EA728FDE2B1--
