Return-Path: <jaymin.dabhi@vivaldi.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63940E00BC0; Wed, 19 Jul 2017 05:48:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_20,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_MED autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [82.221.99.162 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.1541]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 547 seconds by postgrey-1.32 at yocto-www;
	Wed, 19 Jul 2017 05:48:54 PDT
Received: from mail.vivaldi.net (mail.vivaldi.net [82.221.99.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD16EE00B76
	for <yocto@yoctoproject.org>; Wed, 19 Jul 2017 05:48:54 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.vivaldi.net (Postfix) with ESMTP id 2A377F26
	for <yocto@yoctoproject.org>; Wed, 19 Jul 2017 12:39:51 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=vivaldi.net; h=
	subject:subject:from:from:x-mailer:message-id:content-type
	:content-type:date:date:mime-version:received:received; s=dkim;
	t=1500467988; bh=AC3x/L7fzMdbDtugu3OtkpUTyC8+woRJJByTKD+oLaA=; b=
	uk5YCUkcA530QgUWPOE8nu1KKDXsGK9nHMnj68Vh9PMtWDFYUFY0g63XNfgF8GQ/
	kZEBlxlwFwVvCQqmVxM7c1cJa0xd+lCq52Tn2hsu2QxO/4SAGXnS15et9Cejv9Nd
	OrsDpktF2vgANYtiu/yVnEc8/yYQTww1XEDNs9Rl+YE=
X-Virus-Scanned: Debian amavisd-new at vivaldi.net
Received: from mail.vivaldi.net ([127.0.0.1])
	by localhost (mail.vivaldi.net [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K08dxqfBK0CP for <yocto@yoctoproject.org>;
	Wed, 19 Jul 2017 12:39:48 +0000 (GMT)
Received: from webmail.vivaldi.net (unknown [10.20.20.55])
	(Authenticated sender: jaymin.dabhi)
	by mail.vivaldi.net (Postfix) with ESMTPSA id F0620F20
	for <yocto@yoctoproject.org>; Wed, 19 Jul 2017 12:39:45 +0000 (GMT)
Mime-Version: 1.0
Date: Wed, 19 Jul 2017 12:39:41 +0000
Message-ID: <3709be24aaf0557d2d66d1c93fb3c189@webmail.vivaldi.net>
X-Mailer: AfterLogic webmail client
From: "JAYMIN DABHI" <jaymin.dabhi@vivaldi.net>
To: yocto@yoctoproject.org
X-Priority: 3 (Normal)
Subject: Error while integrating PyPy module in Yocto (Jethro branch) build.
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
X-List-Received-Date: Wed, 19 Jul 2017 12:48:56 -0000
Content-Type: multipart/alternative;
	boundary="----=_Part_472_946789111.1500467981"

------=_Part_472_946789111.1500467981
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,=0A I am trying to integrate PyPy in my current Yocto (Jethro bran=
ch) build for my i.MX6UL processor based development board. The board has=
 "armv7a" (cortexa7) architecture. =0A I am using "meta-pypy" layer from =
here (https://github.com/mzakharo/meta-pypy) and inherit the pypy package=
 in my local.conf.=0A But, it gives me error during bitbaking. I am bitba=
king the "core-image-base".=0A The error is as below :=0A	ERROR: Fetcher =
failure: Unable to find file file://pypy-4.0.1-cortexa7.tar.bz2 anywhere.=
  I think, it can't find the package "pypy-4.0.1-cortexa7.tar.bz2" in pyp=
y directory.=0A What should be the other possible reason? and How it can =
be solved?=0A=0A Suggestions are welcome.=0A=0A Thanks,=0A-=0AJAYMIN

------=_Part_472_946789111.1500467981
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><meta http-equiv=3D"Content-Type" content=3D"t=
ext/html; charset=3Dutf-8" /></head><body><div data-crea=3D"font-wrapper"=
 style=3D"font-family: Tahoma; font-size: 16px; direction: ltr"><div clas=
s=3D"issue-description wiki-content"><font face=3D"Times New Roman, serif=
">Hi All,</font></div><div class=3D"issue-description wiki-content"><font=
 face=3D"Times New Roman, serif"><br>=0AI am trying to integrate PyPy in =
my current Yocto (Jethro branch) =0Abuild for my i.MX6UL processor based =
development board. The board has "armv7a" (cortexa7) =0Aarchitecture.=C2=
=A0</font></div><div class=3D"issue-description wiki-content"><font face=
=3D"Times New Roman, serif"><br>=0AI am using "meta-pypy" layer from <a h=
ref=3D"https://github.com/mzakharo/meta-pypy" style=3D"cursor: pointer;">=
here</a> and inherit the pypy package in my local.conf.<br>=0ABut, it giv=
es me error during bitbaking. I am bitbaking the "core-image-base".<br>=
=0AThe error is as below :<br></font><div class=3D"codehilite"><pre><font=
 face=3D"Times New Roman, serif"><span class=3D"n">ERROR</span><span clas=
s=3D"o">:</span> <span class=3D"n">Fetcher</span> <span class=3D"n">failu=
re</span><span class=3D"o">:</span> <span class=3D"n">Unable</span> <span=
 class=3D"n">to</span> <span class=3D"n">find</span> <span class=3D"n">fi=
le</span> <span class=3D"n">file</span><span class=3D"o">://</span><span =
class=3D"n">pypy</span><span class=3D"o">-</span><span class=3D"mf">4.0</=
span><span class=3D"o">.</span><span class=3D"mi">1</span><span class=3D"=
o">-</span><span class=3D"n">cortexa7</span><span class=3D"o">.</span><sp=
an class=3D"na">tar</span><span class=3D"o">.</span><span class=3D"na">bz=
2</span> <span class=3D"n">anywhere</span><span class=3D"o">.</span>=0A</=
font></pre></div><font face=3D"Times New Roman, serif">=0A=0A=0AI think, =
it can't find the package "pypy-4.0.1-cortexa7.tar.bz2" in pypy directory=
.</font></div><div class=3D"issue-description wiki-content"><font face=3D=
"Times New Roman, serif"><br>=0AWhat should be the other possible reason?=
 and How it can be solved?<br><br></font></div><div class=3D"issue-descri=
ption wiki-content">=0A<font face=3D"Times New Roman, serif">Suggestions =
are welcome.<br><br></font></div><div class=3D"issue-description wiki-con=
tent">=0A<font face=3D"Times New Roman, serif">Thanks,</font></div><div><=
div data-crea=3D"font-wrapper" style=3D"font-family: Tahoma; font-size: 1=
6px; direction: ltr"><font face=3D"Times New Roman, serif">-</font><div><=
font face=3D"Times New Roman, serif">JAYMIN</font></div></div></div><br><=
/div></body></html>

------=_Part_472_946789111.1500467981--
