Return-Path: <f_l_k@t-online.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E142E00E1E; Mon, 23 May 2016 00:56:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_05,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [194.25.134.85 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0276]
X-Greylist: delayed 373 seconds by postgrey-1.32 at yocto-www;
	Mon, 23 May 2016 00:56:13 PDT
Received: from mailout11.t-online.de (mailout11.t-online.de [194.25.134.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74091E00E10
	for <yocto@yoctoproject.org>; Mon, 23 May 2016 00:56:13 -0700 (PDT)
Received: from fwd00.aul.t-online.de (fwd00.aul.t-online.de [172.20.26.147])
	by mailout11.t-online.de (Postfix) with SMTP id 1D9694257AEA
	for <yocto@yoctoproject.org>; Mon, 23 May 2016 09:49:59 +0200 (CEST)
Received: from [192.168.2.113]
	(EXHQc-ZUghuO3Dr2sWPRm65P-8ZZJYT1uLxFG+1eF5JN0NDZdOiUkhOVc9lV-lHwvh@[79.199.39.213])
	by fwd00.t-online.de with (TLSv1:ECDHE-RSA-AES256-SHA encrypted)
	esmtp id 1b4kcb-4cbMOW0; Mon, 23 May 2016 09:49:53 +0200
From: Markus Volk <f_l_k@t-online.de>
Message-Id: <2313E880-9ADC-4AE1-A22B-8ACE0799C4D1@t-online.de>
Date: Mon, 23 May 2016 09:49:52 +0200
To: Yocto discussion list <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
X-ID: EXHQc-ZUghuO3Dr2sWPRm65P-8ZZJYT1uLxFG+1eF5JN0NDZdOiUkhOVc9lV-lHwvh
X-TOI-MSGID: fc907f63-9fa0-4d37-83c2-ccf3db136921
Subject: useradd.bbclass: Strip trailing ';' in cmd params
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
X-List-Received-Date: Mon, 23 May 2016 07:56:17 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_5E07492C-4C40-40F2-8217-C2D93F10C632"

--Apple-Mail=_5E07492C-4C40-40F2-8217-C2D93F10C632
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hello,

just to mention =E2=80=A6

=
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D553fa35147adb9=
96d515c3d27f62555d9c969cd8 =
<http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D553fa35147adb=
996d515c3d27f62555d9c969cd8>

results in a do_rootfs loop here if an attached whitspace exists in =
USERADD_PARAM_${PN}

this fixes my problem:
=
https://github.com/neutrino-hd/meta-neutrino/commit/a8a442ecc1eba1e211c0a1=
6d054f3622045334a5 =
<https://github.com/neutrino-hd/meta-neutrino/commit/a8a442ecc1eba1e211c0a=
16d054f3622045334a5>

regards,

Markus=

--Apple-Mail=_5E07492C-4C40-40F2-8217-C2D93F10C632
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">Hello,<div class=3D""><br class=3D""></div><div class=3D"">just=
 to mention =E2=80=A6</div><div class=3D""><br class=3D""></div><div =
class=3D""><a =
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D553fa3=
5147adb996d515c3d27f62555d9c969cd8" =
class=3D"">http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D553=
fa35147adb996d515c3d27f62555d9c969cd8</a></div><div class=3D""><br =
class=3D""></div><div class=3D"">results in a do_rootfs loop here if an =
attached whitspace exists in&nbsp;<span style=3D"color: rgb(51, 51, 51); =
font-family: Consolas, 'Liberation Mono', Menlo, Courier, monospace; =
white-space: pre-wrap; background-color: rgb(255, 255, 255);" =
class=3D"">USERADD_PARAM_${PN}</span></div><div class=3D""><span =
style=3D"color: rgb(51, 51, 51); font-family: Consolas, 'Liberation =
Mono', Menlo, Courier, monospace; white-space: pre-wrap; =
background-color: rgb(255, 255, 255);" class=3D""><br =
class=3D""></span></div><div class=3D""><span style=3D"color: rgb(51, =
51, 51); font-family: Consolas, 'Liberation Mono', Menlo, Courier, =
monospace; white-space: pre-wrap; background-color: rgb(255, 255, 255);" =
class=3D"">this fixes my problem:</span></div><div class=3D""><a =
href=3D"https://github.com/neutrino-hd/meta-neutrino/commit/a8a442ecc1eba1=
e211c0a16d054f3622045334a5" =
class=3D"">https://github.com/neutrino-hd/meta-neutrino/commit/a8a442ecc1e=
ba1e211c0a16d054f3622045334a5</a></div><div class=3D""><br =
class=3D""></div><div class=3D"">regards,</div><div class=3D""><br =
class=3D""></div><div class=3D"">Markus</div></body></html>=

--Apple-Mail=_5E07492C-4C40-40F2-8217-C2D93F10C632--
