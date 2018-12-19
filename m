Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D027E00C1E; Tue, 18 Dec 2018 22:59:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (balazovic.peter[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com
	[209.85.166.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA31DE00AC5
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2018 22:59:02 -0800 (PST)
Received: by mail-io1-f52.google.com with SMTP id a11so159288ioq.7
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2018 22:59:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=A409o6Us50pC/syE7jKU0ZJV/d0f9dqLjXKOPBasNss=;
	b=FTxFSpSd0Vj+4Y3ItzyQF8b1Q9u6NDTtWaOynccLPWxMvU57iXHLpApX2CELcd99Y7
	iZkxNEryRNLKM8kwjBrgny+BEF7BVHEMCaXIib6N/61cVwXvhmcRgT6RHkyS85hxRaq1
	lTotQ+27iUxJ/KMGMrBtnhhYRNJ9xOhwErn+oHkhWEOom/FAdSbuB3+N06gjnsNXx7y9
	pZARwCKUWrQKdlh3vyQKYcLtd3S1MyFJz1VZLIMXVsvbRRXihjDNJLTj+8okSrn8u2a3
	VRhp59GXXrx7JiEZtMr0SeRVX5ipaAAQOHr6cbiXtRw/QDCGpThZtDKqqxKEvu7szRl8
	2BSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=A409o6Us50pC/syE7jKU0ZJV/d0f9dqLjXKOPBasNss=;
	b=muyj41b/0vPUhnl+Fs3JQL6VuczpTJaO0aEvSGs8WMJyNErA5+rhbOwrRBiCpK432F
	2e2jj54s0N9xp7ZfAiT0hYDmheASnbN/btjm4iHJUxeGRVfWg4Z8QFeI6JB/CAn9vN+i
	+hlyXzhw2C1MN76myg4ulCHoX0skJpQtMEF7cibyy4lXMp4M38ZZsIpA/u+nS1m3YYX6
	S8cS7n9lSyUbRZwlgKxPSJzGcd4DO9Bcrl7G5Bz2Lbp52ruIi//RoG2UFGa84nauUYfl
	IuscDgtuwbJke21vOiKPLsDZzpoV/aSP7tmmea2w5lh2CG0TdoKf2RMG6l4FplOLlxHz
	un2w==
X-Gm-Message-State: AA+aEWbxl2TALOwKTQPE+wFCz+WWmPgvi1fCQUvGGsCpSV9q3jDAjqo6
	RDuOp6Cs8wJUXcBHQrdD6nA5bhrSOGx5vti/oM/H/qeB
X-Google-Smtp-Source: AFSGD/WPTv2fN5Wkyzeb17EI3UdxzmEuiDraDMp+DEBOPoesEKphVyY7hM35JjEk2/lzIPkE0A2aWi7RptRGsY8ch/8=
X-Received: by 2002:a5d:8415:: with SMTP id i21mr17061442ion.173.1545202741680;
	Tue, 18 Dec 2018 22:59:01 -0800 (PST)
MIME-Version: 1.0
From: Peter Balazovic <balazovic.peter@gmail.com>
Message-ID: <CAFq4t4gO3zuLwCedh6bRWkH2PLOqi=jg__vsZTZ=fNB40P8Zew@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
X-Mailman-Approved-At: Thu, 03 Jan 2019 01:08:45 -0800
Subject: NXP Yocto imx-linux-sumo can't boot
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
Date: Wed, 19 Dec 2018 06:59:03 -0000
X-Original-Date: Wed, 19 Dec 2018 07:58:50 +0100
X-List-Received-Date: Wed, 19 Dec 2018 06:59:03 -0000
Content-Type: multipart/alternative; boundary="000000000000861e83057d5a8c7b"

--000000000000861e83057d5a8c7b
Content-Type: text/plain; charset="UTF-8"

After building an image out of

repo init -u https://source.codeaurora.org/external/imx/imx-manifest
<https://community.nxp.com/external-link.jspa?url=https%3A%2F%2Fsource.codeaurora.org%2Fexternal%2Fimx%2Fimx-manifest>
-b
imx-linux-sumo -m imx-4.14.78-1.0.0_ga.xml



build on 8qm machine



MACHINE=imx8qmmek DISTRO=fsl-imx-xwayland source ./fsl-setup-release.sh -b
bld-xwayland

the image can't boot ...



sudo dd if=core-image-minimal-imx8qmmek.sdcard of=/dev/mmcblk0 bs=1M
conv=fsync


image artefacts are generated so how to correctly create SDCard with image
manually?

--000000000000861e83057d5a8c7b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><p style=3D"margin:0px;padding:0px;border=
:0px;font-size:15px;font-family:arial,helvetica,&quot;helvetica neue&quot;,=
verdana,sans-serif;vertical-align:baseline;color:rgb(81,98,111)">After buil=
ding an image out of=C2=A0</p><blockquote class=3D"gmail-jive_macro_quote g=
mail-jive-quote gmail-jive_text_macro" style=3D"margin:10px 0px;padding:10p=
x 20px;border-width:0px 0px 0px 2px;border-top-style:initial;border-right-s=
tyle:initial;border-bottom-style:initial;border-left-style:solid;border-top=
-color:initial;border-right-color:initial;border-bottom-color:initial;borde=
r-left-color:rgb(204,204,204);font-size:15px;font-family:arial,helvetica,&q=
uot;helvetica neue&quot;,verdana,sans-serif;vertical-align:baseline;quotes:=
&quot;&quot; &quot;&quot;;background:rgb(246,246,246);overflow-x:auto;color=
:rgb(81,98,111)"><p style=3D"margin:0px;padding:0px;border:0px;font-weight:=
inherit;font-style:inherit;font-family:inherit;vertical-align:baseline"><sp=
an style=3D"margin:0px;padding:0px;border:0px;font-weight:inherit;font-styl=
e:inherit;font-family:inherit;vertical-align:baseline">repo init -u=C2=A0</=
span><a class=3D"gmail-jive-link-external-small" href=3D"https://community.=
nxp.com/external-link.jspa?url=3Dhttps%3A%2F%2Fsource.codeaurora.org%2Fexte=
rnal%2Fimx%2Fimx-manifest" rel=3D"nofollow" target=3D"_blank" style=3D"marg=
in:0px;padding-top:0px;padding-bottom:0px;padding-left:0px;border:0px;font-=
weight:inherit;font-style:inherit;font-family:inherit;vertical-align:baseli=
ne;color:rgb(61,156,231);text-decoration-line:none">https://source.codeauro=
ra.org/external/imx/imx-manifest</a><span style=3D"margin:0px;padding:0px;b=
order:0px;font-weight:inherit;font-style:inherit;font-family:inherit;vertic=
al-align:baseline">=C2=A0-b imx-linux-sumo -m imx-4.14.78-1.0.0_ga.xml</spa=
n></p></blockquote><p style=3D"margin:0px;padding:0px;border:0px;font-size:=
15px;font-family:arial,helvetica,&quot;helvetica neue&quot;,verdana,sans-se=
rif;vertical-align:baseline;color:rgb(81,98,111);min-height:8pt">=C2=A0</p>=
<p style=3D"margin:0px;padding:0px;border:0px;font-size:15px;font-family:ar=
ial,helvetica,&quot;helvetica neue&quot;,verdana,sans-serif;vertical-align:=
baseline;color:rgb(81,98,111)">build on 8qm machine</p><p style=3D"margin:0=
px;padding:0px;border:0px;font-size:15px;font-family:arial,helvetica,&quot;=
helvetica neue&quot;,verdana,sans-serif;vertical-align:baseline;color:rgb(8=
1,98,111);min-height:8pt">=C2=A0</p><blockquote class=3D"gmail-jive_macro_q=
uote gmail-jive-quote gmail-jive_text_macro" style=3D"margin:10px 0px;paddi=
ng:10px 20px;border-width:0px 0px 0px 2px;border-top-style:initial;border-r=
ight-style:initial;border-bottom-style:initial;border-left-style:solid;bord=
er-top-color:initial;border-right-color:initial;border-bottom-color:initial=
;border-left-color:rgb(204,204,204);font-size:15px;font-family:arial,helvet=
ica,&quot;helvetica neue&quot;,verdana,sans-serif;vertical-align:baseline;q=
uotes:&quot;&quot; &quot;&quot;;background:rgb(246,246,246);overflow-x:auto=
;color:rgb(81,98,111)"><p style=3D"margin:0px;padding:0px;border:0px;font-w=
eight:inherit;font-style:inherit;font-family:inherit;vertical-align:baselin=
e">MACHINE=3Dimx8qmmek DISTRO=3Dfsl-imx-xwayland source ./fsl-setup-release=
.sh -b bld-xwayland</p></blockquote><p style=3D"margin:0px;padding:0px;bord=
er:0px;font-size:15px;font-family:arial,helvetica,&quot;helvetica neue&quot=
;,verdana,sans-serif;vertical-align:baseline;color:rgb(81,98,111)">the imag=
e can&#39;t boot ...</p><p style=3D"margin:0px;padding:0px;border:0px;font-=
size:15px;font-family:arial,helvetica,&quot;helvetica neue&quot;,verdana,sa=
ns-serif;vertical-align:baseline;color:rgb(81,98,111);min-height:8pt">=C2=
=A0</p><blockquote class=3D"gmail-jive_macro_quote gmail-jive-quote gmail-j=
ive_text_macro" style=3D"margin:10px 0px;padding:10px 20px;border-width:0px=
 0px 0px 2px;border-top-style:initial;border-right-style:initial;border-bot=
tom-style:initial;border-left-style:solid;border-top-color:initial;border-r=
ight-color:initial;border-bottom-color:initial;border-left-color:rgb(204,20=
4,204);vertical-align:baseline;quotes:&quot;&quot; &quot;&quot;;background-=
image:initial;background-position:initial;background-size:initial;backgroun=
d-repeat:initial;background-origin:initial;background-clip:initial;overflow=
-x:auto"><p style=3D"color:rgb(81,98,111);font-family:inherit;font-size:15p=
x;background-color:rgb(246,246,246);margin:0px;padding:0px;border:0px;font-=
weight:inherit;font-style:inherit;vertical-align:baseline">sudo dd if=3Dcor=
e-image-minimal-imx8qmmek.sdcard of=3D/dev/mmcblk0 bs=3D1M conv=3Dfsync</p>=
<br><br>image artefacts are generated so how to correctly create SDCard wit=
h image manually?=C2=A0<br><br></blockquote></div></div>

--000000000000861e83057d5a8c7b--
