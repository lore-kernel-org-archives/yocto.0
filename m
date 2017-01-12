Return-Path: <roger@sentientblue.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1922E00963; Thu, 12 Jan 2017 07:21:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_20,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [109.224.233.103 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.1983]
X-Greylist: delayed 401 seconds by postgrey-1.32 at yocto-www;
	Thu, 12 Jan 2017 07:21:24 PST
Received: from pamail.gradwell.com (linmainlb.pa.thw.gradwell.net
	[109.224.233.103])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75E35E00939
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 07:21:23 -0800 (PST)
Received: (qmail 2598 invoked from network); 12 Jan 2017 15:14:42 -0000
Received: from unknown (HELO ?10.0.1.192?)
	(roger@sentientblue.com@[73.231.167.180])
	by 192.168.50.232 with ESMTPSA (DHE-RSA-AES256-SHA encrypted,
	authenticated); 12 Jan 2017 15:14:42 -0000
From: Roger Smith <roger@sentientblue.com>
Message-Id: <F2336301-06DF-41BD-B64E-82D421DB9366@sentientblue.com>
Date: Thu, 12 Jan 2017 07:14:40 -0800
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: Building on MacOS X
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
X-List-Received-Date: Thu, 12 Jan 2017 15:21:25 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_3C04A13C-AE4D-4AA6-9979-4B1AF20C9DA2"

--Apple-Mail=_3C04A13C-AE4D-4AA6-9979-4B1AF20C9DA2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Is there any documentation for running the Yocto build system on Mac OS =
X or macOS as Apple now calls it? I am working with the Intel Aero =
board. Before I go down the rabbit hole of fixing issues like this one =
(and I am using the bash shell), I=E2=80=99d like to know if anyone has =
build it on os x before.

thanks


source oe-init-build-env
readlink: illegal option -- f
usage: readlink [-n] [file ...]
-bash: /scripts/oe-buildenv-internal: No such file or directory=

--Apple-Mail=_3C04A13C-AE4D-4AA6-9979-4B1AF20C9DA2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space;" class=3D"">Is there any =
documentation for running the Yocto build system on Mac OS X or macOS as =
Apple now calls it? I am working with the Intel Aero board. Before I go =
down the rabbit hole of fixing issues like this one (and I am using the =
bash shell), I=E2=80=99d like to know if anyone has build it on os x =
before.<div class=3D""><br class=3D""></div><div class=3D"">thanks<br =
class=3D""><div class=3D""><br class=3D""></div><div class=3D""><br =
class=3D""></div><div class=3D""><div style=3D"margin: 0px; font-size: =
9px; line-height: normal; font-family: Monaco;" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D"">source =
oe-init-build-env</span></div><div style=3D"margin: 0px; font-size: 9px; =
line-height: normal; font-family: Monaco;" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D"">readlink:=
 illegal option -- f</span></div><div style=3D"margin: 0px; font-size: =
9px; line-height: normal; font-family: Monaco;" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D"">usage: =
readlink [-n] [file ...]</span></div><div style=3D"margin: 0px; =
font-size: 9px; line-height: normal; font-family: Monaco;" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">-bash: /scripts/oe-buildenv-internal: No such file or =
directory</span></div></div></div></body></html>=

--Apple-Mail=_3C04A13C-AE4D-4AA6-9979-4B1AF20C9DA2--
