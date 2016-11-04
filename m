Return-Path: <bradleyb@fuzziesquirrel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BA58E00BB0; Fri,  4 Nov 2016 11:55:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from bajor.fuzziesquirrel.com (mail.fuzziesquirrel.com
	[173.167.31.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81B0DE00ACE
	for <yocto@yoctoproject.org>; Fri,  4 Nov 2016 11:55:52 -0700 (PDT)
X-Virus-Scanned: amavisd-new at fuzziesquirrel.com
Sender: bradleyb@fuzziesquirrel.com
From: Brad Bishop <bradleyb@fuzziesquirrel.com>
Message-Id: <BE188BBB-0307-494A-9564-BCDF589A0550@fuzziesquirrel.com>
Date: Fri, 4 Nov 2016 14:55:34 -0400
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: Help with out of (python) tree python modules in SDK
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
X-List-Received-Date: Fri, 04 Nov 2016 18:55:54 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_29D369A5-7DDA-48D6-986E-CC670925275C"

--Apple-Mail=_29D369A5-7DDA-48D6-986E-CC670925275C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

I am on Krogoth.  I have an autotools inheriting recipe.  The configure =
script runs a python script (in repo), that imports an =
out-of-python-distro module.

I can=E2=80=99t seem to wrap my head around the correct way to express =
this in terms of dependencies, such that when I build with an SDK, I can =
import this module.

What does seem to work is adding nativesdk-python-foomodule to =
RRECOMMENDS_python-core_append_class-nativesdk in the python recipe.  Is =
there a better way?

My intuition says that:

DEPENDS +=3D =E2=80=9Cpython-foomodule-native=E2=80=9D=20

translated to words means: to build this package, you need =
python-foomodule-native.  And given that the target -dev packages get =
included in the SDK when you do this=E2=80=A6the same doesn=E2=80=99t =
appear to be the case for python modules?

I feel like I am missing a fundamental concept.

Thx for your time.

-brad bishop=

--Apple-Mail=_29D369A5-7DDA-48D6-986E-CC670925275C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><span class=3D"" style=3D"font-family: Menlo-Regular; =
font-size: 11px;">I am on Krogoth. &nbsp;I have an autotools inheriting =
recipe. &nbsp;The configure script runs a python script (in repo), that =
imports an out-of-python-distro module.</span><br class=3D"" =
style=3D"font-family: Menlo-Regular; font-size: 11px;"><br class=3D"" =
style=3D"font-family: Menlo-Regular; font-size: 11px;"><span class=3D"" =
style=3D"font-family: Menlo-Regular; font-size: 11px;">I can=E2=80=99t =
seem to wrap my head around the correct way to express this in terms of =
dependencies, such that when I build with an SDK, I can import this =
module.</span><br class=3D"" style=3D"font-family: Menlo-Regular; =
font-size: 11px;"><br class=3D"" style=3D"font-family: Menlo-Regular; =
font-size: 11px;"><span class=3D"" style=3D"font-family: Menlo-Regular; =
font-size: 11px;">What does seem to work is adding =
nativesdk-python-foomodule to =
RRECOMMENDS_python-core_append_class-nativesdk in the python recipe. =
&nbsp;Is there a better way?</span><br class=3D"" style=3D"font-family: =
Menlo-Regular; font-size: 11px;"><br class=3D"" style=3D"font-family: =
Menlo-Regular; font-size: 11px;"><span class=3D"" style=3D"font-family: =
Menlo-Regular; font-size: 11px;">My intuition says that:</span><br =
class=3D"" style=3D"font-family: Menlo-Regular; font-size: 11px;"><br =
class=3D"" style=3D"font-family: Menlo-Regular; font-size: 11px;"><span =
class=3D"" style=3D"font-family: Menlo-Regular; font-size: =
11px;">DEPENDS +=3D =E2=80=9Cpython-foomodule-native=E2=80=9D&nbsp;</span>=
<br class=3D"" style=3D"font-family: Menlo-Regular; font-size: =
11px;"><br class=3D"" style=3D"font-family: Menlo-Regular; font-size: =
11px;"><span class=3D"" style=3D"font-family: Menlo-Regular; font-size: =
11px;">translated to words means: to build this package, you need =
python-foomodule-native. &nbsp;And given that the target -dev packages =
get included in the SDK when you do this=E2=80=A6the same doesn=E2=80=99t =
appear to be the case for python modules?</span><br class=3D"" =
style=3D"font-family: Menlo-Regular; font-size: 11px;"><br class=3D"" =
style=3D"font-family: Menlo-Regular; font-size: 11px;"><span class=3D"" =
style=3D"font-family: Menlo-Regular; font-size: 11px;">I feel like I am =
missing a fundamental concept.</span><br class=3D"" style=3D"font-family: =
Menlo-Regular; font-size: 11px;"><br class=3D"" style=3D"font-family: =
Menlo-Regular; font-size: 11px;"><span class=3D"" style=3D"font-family: =
Menlo-Regular; font-size: 11px;">Thx for your time.</span><br class=3D"" =
style=3D"font-family: Menlo-Regular; font-size: 11px;"><br class=3D"" =
style=3D"font-family: Menlo-Regular; font-size: 11px;"><span class=3D"" =
style=3D"font-family: Menlo-Regular; font-size: 11px;">-brad =
bishop</span></body></html>=

--Apple-Mail=_29D369A5-7DDA-48D6-986E-CC670925275C--
