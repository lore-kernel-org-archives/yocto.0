Return-Path: <elvis.dowson@gmail.com>
Received: from mail-da0-f50.google.com (mail-da0-f50.google.com
	[209.85.210.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6753E0146C;
	Fri, 12 Apr 2013 03:12:58 -0700 (PDT)
Received: by mail-da0-f50.google.com with SMTP id t1so1066542dae.23
	for <multiple recipients>; Fri, 12 Apr 2013 03:12:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:message-id:references:to:x-mailer;
	bh=6GmAkzJM2iZPG6g0oTbLdgCPnl15WBPYIz76pHwUxrc=;
	b=tyMoaTsvXfAVGmZAB/6EUakO0S8Q8YSO25asBrwEbJ6y7wwEsJNSDDfchuD77l0VpR
	qNO4gQEoTcbFT6V8xYUKGWjUAGgCX3BlWqyJCWLT2SMpAvRpj/uYU6xRiKhYxsHQB7l9
	iPLrYp5+Op8CVzTEViPFh8VIT7UAHiF9YPBmwA5blq1QYFE3QVJN3tcKUIqCk4VYoEiu
	TrmI3M26+djL2oqb11WDFOKv5QU/8ellZU8HPl4FS2GhKhe/QsYOaJG4ju4BAs5lofiD
	fhIrjVzkJEYpkTLe8TI4DE2uOgKK2MaSidErbQyHBFsErw3EZqSGKSRNhwtLljFaGdt8
	sbZQ==
X-Received: by 10.66.251.161 with SMTP id zl1mr14490844pac.54.1365761578669;
	Fri, 12 Apr 2013 03:12:58 -0700 (PDT)
Received: from [192.168.1.100] ([94.205.106.101])
	by mx.google.com with ESMTPS id ad7sm8006923pbd.14.2013.04.12.03.12.54
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 12 Apr 2013 03:12:57 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CAACeMc+wMTTRjKNPe5udZ5MKL=EFLL-comumqQbTt2zHtacTcg@mail.gmail.com>
Date: Fri, 12 Apr 2013 14:12:51 +0400
Message-Id: <6222517F-BACB-4DDC-B668-880D201FA00E@gmail.com>
References: <CAACeMc+wMTTRjKNPe5udZ5MKL=EFLL-comumqQbTt2zHtacTcg@mail.gmail.com>
To: Andrew James <andrew.james77777@gmail.com>
X-Mailer: Apple Mail (2.1503)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>,
	meta-xilinx Mailing List <meta-xilinx@yoctoproject.org>
Subject: Re: Build problems with ML507 and meta-xilinx
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
X-List-Received-Date: Fri, 12 Apr 2013 10:12:59 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_2DB2E744-E292-4279-8FE2-804D3FCCE6E1"

--Apple-Mail=_2DB2E744-E292-4279-8FE2-804D3FCCE6E1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1

Hi Andrew,

On Apr 12, 2013, at 12:34 PM, Andrew James <andrew.james77777@gmail.com> =
wrote:

> I wonder if someone can help me. I'm attempting to do a yocto build =
for the ML507 xilinx development board and am running into build error =
when building eglibc
> I'm using VMWARE Player running an Ubuntu 12.10 64-bit virtual =
machine. I can succesfully build core-image-minimal using the default =
settings, but when trying
> to build for the ML507 (MACHINE =3D virtex-5-ml507-powerpc-440 I get a =
build error when compiling eglibc, '440fp not supported'
> =20
> I have used git to get the 'danny' version of the yocto directories.
> =20
> Any help would be appreciated, I can provide futher details if =
neccessary

I was able to get Yocto to build soft fpu (gcc-4.5) and hard fpu =
(gcc-4.7) support, a couple of months back.

Here are some instructions

Step 01: Modfy your bblayers.conf file to include the following =
repositories

BBLAYERS ?=3D " \
  /tool/yocto/poky/meta \
  /tool/yocto/poky/meta-yocto \
  /tool/yocto/meta-openembedded/toolchain-layer \
  /tool/yocto/meta-xilinx \
  "

Step 02: Modify your local.conf file

XILINX_LOC ?=3D "/tool/xilinx/14.3/ISE_DS"

MACHINE ?=3D "virtex-5-ml507-powerpc-440"

XILINX_BSP_PATH ?=3D "/project/xilinx-ml507-base-trd-ppc440-fpu"

If you use the EDK BSB to create a default project with APU FPU support, =
it should be sufficient.


Step 03: Checkout specific commits ids for each of the repositories

poky: commit id: 2a9c574fd8b0800199b6569b6abf02634801013d

meta-openembedded: commit id: ef5e1d752003e70d30ce8462c3cd09ce3794d783

meta-xilinx: commit id: c8ad57010f189d6b072ca193a88fd1ff551c5644

http://git.yoctoproject.org/cgit/cgit.cgi/meta-xilinx/log/


Let me know if you run into any more issues. I will need to get around =
to updating support for the ML507 against the current poky master & =
danny branches in a couple of weeks.

Best regards,

Elvis Dowson=

--Apple-Mail=_2DB2E744-E292-4279-8FE2-804D3FCCE6E1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Diso-8859-1"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; ">Hi =
Andrew,<div><br><div><div>On Apr 12, 2013, at 12:34 PM, Andrew James =
&lt;<a =
href=3D"mailto:andrew.james77777@gmail.com">andrew.james77777@gmail.com</a=
>&gt; wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div>I wonder if someone can help me. I'm attempting to do =
a yocto build for the ML507 xilinx development board and am running into =
build error when building eglibc</div>
<div>I'm using VMWARE Player running an Ubuntu 12.10 64-bit virtual =
machine. I can succesfully build core-image-minimal using the default =
settings, but when trying</div>
<div>to build for the ML507 (MACHINE =3D <font =
color=3D"#009933">virtex-5-<b>ml507</b>-powerpc-440 </font>I get a build =
error when compiling eglibc, '440fp not supported'</div>
<div>&nbsp;</div>
<div>I have used git to get the 'danny' version of the yocto =
directories.</div>
<div>&nbsp;</div>
<div>Any help would be appreciated, I can provide futher details if =
neccessary</div>
</blockquote><div><br></div>I was able to get Yocto to build soft fpu =
(gcc-4.5) and hard fpu (gcc-4.7) support, a couple of months =
back.</div><div><br></div><div>Here are some =
instructions</div><div><br></div><div><b><u>Step 01: Modfy your =
bblayers.conf file to include the following =
repositories</u></b></div><div><br></div><div><div>BBLAYERS ?=3D " =
\</div><div>&nbsp; /tool/yocto/poky/meta \</div><div>&nbsp; =
/tool/yocto/poky/meta-yocto \</div><div>&nbsp; =
/tool/yocto/meta-openembedded/toolchain-layer \</div><div>&nbsp; =
/tool/yocto/meta-xilinx \</div><div>&nbsp; =
"</div><div><br></div><div><b><u>Step 02: Modify your local.conf =
file</u></b></div><div><br></div><div><div>XILINX_LOC ?=3D =
"/tool/xilinx/14.3/ISE_DS"</div><div><br></div><div>MACHINE ?=3D =
"virtex-5-ml507-powerpc-440"</div><div><br></div><div>XILINX_BSP_PATH ?=3D=
 =
"/project/xilinx-ml507-base-trd-ppc440-fpu"</div></div><div><br></div></di=
v></div><div>If you use the EDK BSB to create a default project with APU =
FPU support, it should be =
sufficient.</div><div><br></div><div><br></div><div><b><u>Step 03: =
Checkout specific commits ids for each of the =
repositories</u></b></div><div><br></div><div><b>poky: </b>commit id: =
2a9c574fd8b0800199b6569b6abf02634801013d</div><div><br></div><div><b>meta-=
openembedded: </b>commit id: =
ef5e1d752003e70d30ce8462c3cd09ce3794d783</div><div><br></div><div><div><b>=
meta-xilinx</b>:&nbsp;commit =
id:&nbsp;c8ad57010f189d6b072ca193a88fd1ff551c5644</div><div><br></div><div=
><a =
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-xilinx/log/">http:/=
/git.yoctoproject.org/cgit/cgit.cgi/meta-xilinx/log/</a></div></div><div><=
br></div><div><br></div><div>Let me know if you run into any more =
issues. I will need to get around to updating support for the ML507 =
against the current poky master &amp; danny branches in a couple of =
weeks.</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_2DB2E744-E292-4279-8FE2-804D3FCCE6E1--
