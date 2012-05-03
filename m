Return-Path: <elvis.dowson@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16B77E0044A
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 09:25:44 -0700 (PDT)
Received: by werc12 with SMTP id c12so1664591wer.35
	for <yocto@yoctoproject.org>; Thu, 03 May 2012 09:25:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:to:mime-version:x-mailer;
	bh=S/mWPcqU9DeyN5UR4SMlcm6rZ3tg+EI1censYxEPKkk=;
	b=JNYWQCVFijzXCvhmaRtKrAKLwC9Sz8OaNja3Ecg3LTJL0ZarEyGwpeo1hK4IN1O7Ae
	jEAvPuRDqrHBM4FB8LDkacFWzYPaAC18302BQX0xdeGN47RUCBS9P0q/vGNJeL6fDtXe
	p8m/s8iQVEgwh4NzLYk2vvTcigk6PZc808HFXSMDPFSxdxh164z/or9wFYR8LmdCU6KC
	/9NWIoG/zWsufA2RhffGjqK8nsf4VFD3Z60oHCeApmTMpytOnLw4mX0MwmwcKj/P+v5n
	84PoCPGanWparLWoNPTNNpG6YanW8FxTB5tY15ViPkLQWD5q9Dp0Zq1KQ6Vi/UtR2Z4t
	ESXg==
Received: by 10.180.88.67 with SMTP id be3mr4725476wib.20.1336062343954;
	Thu, 03 May 2012 09:25:43 -0700 (PDT)
Received: from [192.168.1.33] (240.Red-88-6-19.staticIP.rima-tde.net.
	[88.6.19.240])
	by mx.google.com with ESMTPS id j3sm4682034wiw.1.2012.05.03.09.25.41
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 03 May 2012 09:25:42 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Thu, 3 May 2012 18:25:40 +0200
Message-Id: <7513B431-B65B-4ADC-AAA3-9C54F9A37028@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1257)
X-Mailer: Apple Mail (2.1257)
Subject: ERROR: ParseError at /tool/yocto/poky-extras/meta-linaro/recipes-devtools/gcc/gcc-4.5.1.linaro.inc:1: Could not include required file recipes-devtools/gcc/gcc-4.5.1.inc
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
X-List-Received-Date: Thu, 03 May 2012 16:25:45 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_B3531271-BB07-493C-8903-45C3D9B1F3B7"

--Apple-Mail=_B3531271-BB07-493C-8903-45C3D9B1F3B7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
       In my bblayers.conf, I've included the poky-extras/meta-linaro =
meta layer.

BBLAYERS ?=3D " \
  /tool/yocto/poky/meta \
  /tool/yocto/poky/meta-yocto \
  /tool/yocto/poky-extras/meta-kernel-dev \
  /tool/yocto/poky-extras/meta-linaro \
  /tool/yocto/meta-openembedded/meta-oe \
  /tool/yocto/meta-gumstix \
  /tool/yocto/meta-ti \
  /tool/yocto/meta-xilinx \
  "

However, I get a build error when I execute the following command:

$ bitbake -c fetchall meta-toolchain

Pseudo is not present but is required, building this first before the =
main build
WARNING: Host distribution "Ubuntu 12.04 LTS" has not been validated =
with this version of the build system; you may possibly experience =
unexpected failures. It is recommended that you use a tested =
distribution.
WARNING: /tool/yocto/meta-ti/recipes-misc/payload/bonescript.bb: it is =
recommended to set SYSTEMD_PACKAGES as <existing-package>-systemd
ERROR: ParseError at =
/tool/yocto/poky-extras/meta-linaro/recipes-devtools/gcc/gcc-4.5.1.linaro.=
inc:1: Could not include required file =
recipes-devtools/gcc/gcc-4.5.1.inc
ERROR: Command execution failed: Exited with 1

Summary: There were 2 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit =
code.

Am I missing an additional meta-layer?

Best regards,

Elvis Dowson=

--Apple-Mail=_B3531271-BB07-493C-8903-45C3D9B1F3B7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div>&nbsp; &nbsp; &nbsp; &nbsp;In my bblayers.conf, I've included =
the&nbsp;poky-extras/meta-linaro meta =
layer.</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">BBLAYERS ?=3D " \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; =
/tool/yocto/poky/meta \</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; /tool/yocto/poky/meta-yocto =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; /tool/yocto/poky-extras/meta-kernel-dev =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; /tool/yocto/poky-extras/meta-linaro =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; /tool/yocto/meta-openembedded/meta-oe =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; /tool/yocto/meta-gumstix \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; =
/tool/yocto/meta-ti \</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; /tool/yocto/meta-xilinx =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; "</font></div></div><div><br></div><div>However, I get =
a build error when I execute the following =
command:</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">$ bitbake -c fetchall =
meta-toolchain</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Pseudo is not =
present but is required, building this first before the main =
build</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">WARNING: Host distribution "Ubuntu 12.04 LTS" has not been =
validated with this version of the build system; you may possibly =
experience unexpected failures. It is recommended that you use a tested =
distribution.</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">WARNING: =
/tool/yocto/meta-ti/recipes-misc/payload/bonescript.bb: it is =
recommended to set SYSTEMD_PACKAGES as =
&lt;existing-package&gt;-systemd</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">ERROR: ParseError =
at =
/tool/yocto/poky-extras/meta-linaro/recipes-devtools/gcc/gcc-4.5.1.linaro.=
inc:1: Could not include required file =
recipes-devtools/gcc/gcc-4.5.1.inc</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">ERROR: Command =
execution failed: Exited with 1</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Summary: There were 2 WARNING messages =
shown.</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">Summary: There were 2 ERROR messages shown, returning a =
non-zero exit code.</font></div></div><div><br></div><div>Am I missing =
an additional meta-layer?</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_B3531271-BB07-493C-8903-45C3D9B1F3B7--
