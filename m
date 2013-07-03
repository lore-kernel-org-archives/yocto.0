Return-Path: <vidal.develone@gmail.com>
Received: from mail-ea0-f180.google.com (mail-ea0-f180.google.com
	[209.85.215.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F8CEE003E3
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2013 16:25:30 -0700 (PDT)
Received: by mail-ea0-f180.google.com with SMTP id k10so406681eaj.39
	for <yocto@yoctoproject.org>; Wed, 03 Jul 2013 16:25:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ldevM6obLUKbovSAnS+Y+olN+/qFo8ENevWeqjncB8M=;
	b=FCPAYpcIjlEYozYm83hUp8e9oapKkAe27xCtv1RaavOf0jLrdjcmCqoJ4g/lmYfAbk
	fW1stMyE0IaobNMgiy31sS34H4wH0Sf1CoAvUmxgI7k0KzGeGmSNdqpoB/T3Ynaf0hg/
	390Ft4mzddHWklSITHSgNI/B8UOnHzFvI4EO/7fhJvZ2+sZwFG5bpUzYXt8KMCPDXUgL
	wPKBdLvlepiIMHOhjrns1yAbnThhVyolP9i74k/Gy7utqWxzQa0T9ClCFdRqftWWE3sI
	Yx12t9JIzYTeQQcHnAIZvA7wE32g5JNHk0sThCkcyjNVgbu/VUD/rKr23G6tkNPMwISI
	ycOQ==
MIME-Version: 1.0
X-Received: by 10.15.31.198 with SMTP id y46mr3311960eeu.135.1372893928779;
	Wed, 03 Jul 2013 16:25:28 -0700 (PDT)
Received: by 10.223.74.139 with HTTP; Wed, 3 Jul 2013 16:25:28 -0700 (PDT)
In-Reply-To: <7B6DB0F2-A890-4A2B-B6DA-DEB57257A020@gmail.com>
References: <CANwz6nz2obpC75mXTYtK3roMczmNfHUEt84cj58Wjq5vGAFdaw@mail.gmail.com>
	<7B6DB0F2-A890-4A2B-B6DA-DEB57257A020@gmail.com>
Date: Wed, 3 Jul 2013 17:25:28 -0600
Message-ID: <CANwz6nz+UwUyiNebT=AQk2t7Fe_dAXgK1ftsPMcbdgSeKW-X=Q@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
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
X-List-Received-Date: Wed, 03 Jul 2013 23:25:31 -0000
Content-Type: multipart/alternative; boundary=089e0160c5cef093b604e0a3c682

--089e0160c5cef093b604e0a3c682
Content-Type: text/plain; charset=ISO-8859-1

Hello,

*Where do you find the boot.scr or uEnv.txt for the zc702?
*




On Wed, Jul 3, 2013 at 1:35 PM, Elvis Dowson <elvis.dowson@gmail.com> wrote:

> Hi Edward,
>
> On Jul 3, 2013, at 11:05 PM, Edward Vidal <vidal.develone@gmail.com>
> wrote:
>
> Hello,
> I recently built core-image-minimal for zc702.
> This generated a file with a  dtb extension that I have not seen before
> uImage--3.8-xilinx+git0+6a0bedad60-r1-zynq-zc702-20130703173428.dtb.  Can
> anyone tell me more about the this extension.
>
>
> The *.dts and *.dtb files are related to the device tree source and binary
> formats. When you work with a hardware project using the Xilinx ISE
> 14.6/Vivado 2013.2 tools, a dts file will be create. This contains the base
> address and other parameters for each device peripheral, e.g. serial ports,
> video controller, etc.
>
> The yocto build system takes these files and generates the required *.dtb
> file.
>
> Please refer the Zynq Base TRD 14.6 document, (you can quickly scan
> through the document and fast forward to section 8.2, for building a dtb
> file from a dts file)
>
> http://www.wiki.xilinx.com/Zynq+Base+TRD+14.6-beta
>
> Where do you find the boot.scr or uEnv.txt for the zc702?   I built this
> on both a CentOS 6.4 and a Fedora18 x86_64 system.
>
> meta-yocto        = "(nobranch):04af378874f38d1200bea2fa191beeae94232d6e"
> meta-xilinx
> meta-kc705
> meta-zc702
> meta-zedboard     = "(nobranch):b065f091f10060f2bb68b58f1d618e26a966fee2"
> meta-yocto-bsp    = "(nobranch):04af378874f38d1200bea2fa191beeae94232d6e"
>
> The latest version of poky that I downloaded
> commit 8a186a6b3853fc1a7dcf342d421c8926c38949c9
> Author: Cristiana Voicu <cristiana.voicu@intel.com>
> Date:   Mon Jul 1 08:09:52 2013 +0000
>
>     bitbake: hob: save button from settings called a nonexisting method
>
>     The method was removed when the process for saving configuration
>     in Hob was changed. Replace the call with the right function.
>
>     [YOCTO #4793]
>     (Bitbake rev: b6aa2b63d71cbe82850a375381b2dbc750cf1905)
>
>     Signed-off-by: Cristiana Voicu <cristiana.voicu@intel.com>
>     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>
> causes the following error on both CentOS 6.4 and Fedora 18
> . oe-init-build-env
>
> BitBake requires Python 2.7.3 or later
> CentOS 6.4 has a non standard location of python.  Does anyone know how to
> tell bitbake of the non standard location of python.
>
> This latest version of poky that I downloaded on fedora18
> causes the following error.
>  MACHINE=zc702 bitbake core-image-minimal -vDD
> ERROR:  OE-core's config sanity checker detected a potential
> misconfiguration.
>     Either fix the cause of this error or at your own risk disable the
> checker (see sanity.conf).
>     Following is the list of potential problems / advisories:
>
>     Your version of make 3.82 is broken. Please revert to 3.81 or install
> a patched version.
>
> ERROR: Execution of event handler 'check_sanity_eventhandler' failed
>
> This version of poky and meta-xilinx worked okay.
>
> meta
> meta-yocto        = "(nobranch):04af378874f38d1200bea2fa191beeae94232d6e"
> meta-xilinx
> meta-kc705
> meta-zc702
> meta-zedboard     = "(nobranch):b065f091f10060f2bb68b58f1d618e26a966fee2"
> meta-yocto-bsp    = "(nobranch):04af378874f38d1200bea2fa191beeae94232d6e"
>
> MACHINE=zc702 bitbake core-image-minimal -vDD
>
> NOTE: Tasks Summary: Attempted 1530 tasks of which 306 didn't need to be
> rerun and all succeeded.
> We are trying to determine which board to purchase the
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
>
>
> From a support standpoint, both the ZC702 and Zedboard are supported
> really well. You will find that most of the Xilinx reference design and
> application notes usually always target the ZC702. If you get a Zedboard
> you'll need to take the extra effort to adapt the pin constraints file.
> Also the ZC702 has two FMC LPC connectors rather than 1 FMC LPC connector,
> if that's more important for you.
>
> My recommendation would be to go in for the ZC702 or the ZC706 if you need
> more logic density.
>
> Best regards,
>
> Elvis Dowson
>

--089e0160c5cef093b604e0a3c682
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div>Hello,<br><pre><i>Where do you find the boo=
t.scr or uEnv.txt for the zc702? <br></i></pre><br></div><div class=3D"gmai=
l_extra"><br><br><div class=3D"gmail_quote">On Wed, Jul 3, 2013 at 1:35 PM,=
 Elvis Dowson <span dir=3D"ltr">&lt;<a href=3D"mailto:elvis.dowson@gmail.co=
m" target=3D"_blank">elvis.dowson@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div style=3D"word-wrap:break-word">Hi Edwar=
d,<div><br><div><div class=3D"im"><div>On Jul 3, 2013, at 11:05 PM, Edward =
Vidal &lt;<a href=3D"mailto:vidal.develone@gmail.com" target=3D"_blank">vid=
al.develone@gmail.com</a>&gt; wrote:</div>
<br><blockquote type=3D"cite"><div dir=3D"ltr">Hello,<br>I recently built c=
ore-image-minimal for zc702.<br>This generated a file with a=A0 dtb extensi=
on that I have not seen before uImage--3.8-xilinx+git0+6a0bedad60-r1-zynq-z=
c702-20130703173428.dtb.=A0 Can anyone tell me more about the this extensio=
n.=A0 </div>
</blockquote><div><br></div></div><div>The *.dts and *.dtb files are relate=
d to the device tree source and binary formats. When you work with a hardwa=
re project using the Xilinx ISE 14.6/Vivado 2013.2 tools, a dts file will b=
e create. This contains the base address and other parameters for each devi=
ce peripheral, e.g. serial ports, video controller, etc.</div>
<div><br></div><div>The yocto build system takes these files and generates =
the required *.dtb file.</div><div><br></div><div>Please refer the Zynq Bas=
e TRD 14.6 document, (you can quickly scan through the document and fast fo=
rward to section 8.2, for building a dtb file from a dts file)</div>
<div><br></div><div><a href=3D"http://www.wiki.xilinx.com/Zynq+Base+TRD+14.=
6-beta" target=3D"_blank">http://www.wiki.xilinx.com/Zynq+Base+TRD+14.6-bet=
a</a></div><div><div class=3D"h5"><br><blockquote type=3D"cite"><div dir=3D=
"ltr">
Where do you find the boot.scr or uEnv.txt for the zc702?=A0=A0 I built thi=
s on both a CentOS 6.4 and a Fedora18 x86_64 system.<br>
<br>meta-yocto=A0=A0=A0=A0=A0=A0=A0 =3D &quot;(nobranch):04af378874f38d1200=
bea2fa191beeae94232d6e&quot;
<br>meta-xilinx=A0=A0=A0=A0=A0=A0=A0
<br>meta-kc705=A0=A0=A0=A0=A0=A0=A0=A0
<br>meta-zc702=A0=A0=A0=A0=A0=A0=A0=A0
<br>meta-zedboard=A0=A0=A0=A0 =3D &quot;(nobranch):b065f091f10060f2bb68b58f=
1d618e26a966fee2&quot;
<br>meta-yocto-bsp=A0=A0=A0 =3D &quot;(nobranch):04af378874f38d1200bea2fa19=
1beeae94232d6e&quot;<br><br>The latest version of poky that I downloaded <b=
r>commit 8a186a6b3853fc1a7dcf342d421c8926c38949c9<br>Author: Cristiana Voic=
u &lt;<a href=3D"mailto:cristiana.voicu@intel.com" target=3D"_blank">cristi=
ana.voicu@intel.com</a>&gt;<br>

Date:=A0=A0 Mon Jul 1 08:09:52 2013 +0000<br><br>=A0=A0=A0 bitbake: hob: sa=
ve button from settings called a nonexisting method<br>=A0=A0=A0 <br>=A0=A0=
=A0 The method was removed when the process for saving configuration<br>=A0=
=A0=A0 in Hob was changed. Replace the call with the right function.<br>

=A0=A0=A0 <br>=A0=A0=A0 [YOCTO #4793]<br>=A0=A0=A0 (Bitbake rev: b6aa2b63d7=
1cbe82850a375381b2dbc750cf1905)<br>=A0=A0=A0 <br>=A0=A0=A0 Signed-off-by: C=
ristiana Voicu &lt;<a href=3D"mailto:cristiana.voicu@intel.com" target=3D"_=
blank">cristiana.voicu@intel.com</a>&gt;<br>
=A0=A0=A0 Signed-off-by: Richard Purdie &lt;<a href=3D"mailto:richard.purdi=
e@linuxfoundation.org" target=3D"_blank">richard.purdie@linuxfoundation.org=
</a>&gt;<br>
<br>causes the following error on both CentOS 6.4 and Fedora 18 <br>. oe-in=
it-build-env <br><br>BitBake requires Python 2.7.3 or later<br>CentOS 6.4 h=
as a non standard location of python.=A0 Does anyone know how to tell bitba=
ke of the non standard location of python.<br>

<br>This latest version of poky that I downloaded on fedora18 <br>causes th=
e following error.<br>=A0MACHINE=3Dzc702 bitbake core-image-minimal -vDD
<br>ERROR:=A0 OE-core&#39;s config sanity checker detected a potential misc=
onfiguration.
<br>=A0=A0=A0 Either fix the cause of this error or at your own risk disabl=
e the checker (see sanity.conf).
<br>=A0=A0=A0 Following is the list of potential problems / advisories:
<br>=A0<br>=A0=A0=A0 Your version of make 3.82 is broken. Please revert to =
3.81 or install a patched version.
<br>=A0<br>ERROR: Execution of event handler &#39;check_sanity_eventhandler=
&#39; failed<br><br>This version of poky and meta-xilinx worked okay.<br><b=
r>meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0
<br>meta-yocto=A0=A0=A0=A0=A0=A0=A0 =3D &quot;(nobranch):04af378874f38d1200=
bea2fa191beeae94232d6e&quot;
<br>meta-xilinx=A0=A0=A0=A0=A0=A0=A0
<br>meta-kc705=A0=A0=A0=A0=A0=A0=A0=A0
<br>meta-zc702=A0=A0=A0=A0=A0=A0=A0=A0
<br>meta-zedboard=A0=A0=A0=A0 =3D &quot;(nobranch):b065f091f10060f2bb68b58f=
1d618e26a966fee2&quot;
<br>meta-yocto-bsp=A0=A0=A0 =3D &quot;(nobranch):04af378874f38d1200bea2fa19=
1beeae94232d6e&quot;<br><br>MACHINE=3Dzc702 bitbake core-image-minimal -vDD=
<br><br>NOTE: Tasks Summary: Attempted 1530 tasks of which 306 didn&#39;t n=
eed to be rerun and all succeeded.<br>

We are trying to determine which board to purchase the <br>Xilinx Zynq-7000=
 SoC ZC702 Evaluation Kit<br>EK-Z7-ZC702-G<br>$895.00 or<br>AES-Z7EV-7Z020-=
G<br>ZEDBOARD ZYNQ BOARD<br>AES-Z7EV-7Z020-G<br>ECCN<br>Avnet Design Servic=
es - Custom<br>

$395.00<br>Does anyone have any experience with either of these boards?<br>=
</div></blockquote><br></div></div></div><div>From a support standpoint, bo=
th the ZC702 and Zedboard are supported really well. You will find that mos=
t of the Xilinx reference design and application notes usually always targe=
t the ZC702. If you get a Zedboard you&#39;ll need to take the extra effort=
 to adapt the pin constraints file. Also the ZC702 has two FMC LPC connecto=
rs rather than 1 FMC LPC connector, if that&#39;s more important for you.</=
div>
<div><br></div><div>My recommendation would be to go in for the ZC702 or th=
e ZC706 if you need more logic density.</div><div><br></div><div>Best regar=
ds,</div></div><div><br></div><div>Elvis Dowson</div></div></blockquote>
</div><br></div>

--089e0160c5cef093b604e0a3c682--
