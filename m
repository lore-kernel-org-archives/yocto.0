Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E718BE00A16; Wed, 26 Sep 2018 17:13:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [64.235.154.226 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 905 seconds by postgrey-1.32 at yocto-www;
	Wed, 26 Sep 2018 17:13:29 PDT
Received: from 15pmail.ess.barracuda.com (15pmail.ess.barracuda.com
	[64.235.154.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21DA0E0097D
	for <yocto@yoctoproject.org>; Wed, 26 Sep 2018 17:13:28 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx1402.ess.rzc.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Thu, 27 Sep 2018 00:13:27 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Wed, 26 Sep 2018 16:43:16 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Wed, 26 Sep 2018 16:43:16 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: can't get header files from recipe included in SDK build
Thread-Index: AQHUVfA+Dx+D1zHYD0SobZAtFmOQqw==
Date: Wed, 26 Sep 2018 23:43:16 +0000
Message-ID: <c629d3876eed4da1872ce4f4aa9157af@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1538007207-321458-15455-13081-1
X-BESS-VER: 2018.12-r1809142233
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.200463
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 HTML_MESSAGE           BODY: HTML included in message 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, HTML_MESSAGE
X-BESS-BRTS-Status: 1
Subject: can't get header files from recipe included in SDK build
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
X-List-Received-Date: Thu, 27 Sep 2018 00:13:30 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_c629d3876eed4da1872ce4f4aa9157afsakurauscom_"

--_000_c629d3876eed4da1872ce4f4aa9157afsakurauscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I've got a recipe that I've created for a package that creates some .so lib=
s and I'm having trouble getting the associated header files included in th=
e SDK build.


The FILES lines that I have are:

FILES_${PN}-dbg =3D "/usr/src/debug/canfestival"
FILES_${PN}-dev =3D "/usr/lib/libcanfestival*.a /usr/include/canfestival/*.=
h"
FILES_${PN} =3D "/usr/lib/libcanfestival*.a /usr/lib/libcanfestival*.so"
#FILES_${PN} =3D "/usr/include/canfestival/*.h /usr/lib/libcanfestival*.so"


As you can see I have even tried to include the headers with the FILES_${PN=
} spec. The headers exist in the package/usr/include/canfestival directory,=
 and also in the packages-split/canfestival-dev directory. But when I use t=
he FILES_${PN} line with the headers in it the files don't end up in the pa=
ckages-split/canfestival directory.

Despite the fact that the files exist in the packages-split/canfestival-dev=
 directory they don't get transferred to the SYSROOT that is built by the S=
DK build.

I'm obviously missing something, any enlightenment would be greatly appreci=
ated.


I don't currently have the build set up to create any .a files so those are=
 just ignored (I hope).


This is being built with Yocto 2.2.4 Morty.


Thanks in advance for any help.

Regards,

Greg Wilson-Lindberg

--_000_c629d3876eed4da1872ce4f4aa9157afsakurauscom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;">
<p>I've got a recipe that I've created for a package that creates some .so =
libs&nbsp;and I'm having trouble getting the associated header files includ=
ed in the SDK build.</p>
<p><br>
</p>
<p>The FILES lines that I have are:</p>
<p></p>
<div style=3D"color: #000000;background-color: #ffffff; font-style: normal;=
 font-weight: normal; text-decoration: none;">
<pre>FILES_${PN}-dbg =3D &quot;/usr/src/debug/canfestival&quot;=0A=
FILES_${PN}-dev =3D &quot;/usr/lib/libcanfestival*.a /usr/include/canfestiv=
al/*.h&quot;=0A=
FILES_${PN} =3D &quot;/usr/lib/libcanfestival*.a /usr/lib/libcanfestival*.s=
o&quot;=0A=
#FILES_${PN} =3D &quot;/usr/include/canfestival/*.h /usr/lib/libcanfestival=
*.so&quot;=0A=
</pre>
</div>
As you can see I have even tried to include the headers with the&nbsp;FILES=
_${PN} spec. The headers exist in the package/usr/include/canfestival direc=
tory, and also in the packages-split/canfestival-dev directory. But when I =
use the&nbsp;FILES_${PN} line with the headers
 in it the files don't end up in the&nbsp;<span style=3D"font-family: Calib=
ri, Arial, Helvetica, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Sego=
e UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Androi=
d Emoji&quot;, EmojiSymbols; font-size: 16px;">packages-split/canfestival d=
irectory.</span>
<p></p>
<p>Despite the fact that the files exist in the&nbsp;packages-split/canfest=
ival-dev directory they don't get transferred&nbsp;to the SYSROOT that is b=
uilt by the SDK build.</p>
<p>I'm obviously missing something, any enlightenment would be greatly appr=
eciated.</p>
<p><br>
</p>
<p>I don't currently have the build set up to create any .a files so those =
are just ignored (I hope).</p>
<p><br>
</p>
<p>This is being built with Yocto 2.2.4 Morty.</p>
<p><br>
</p>
<p>Thanks in advance for any help.</p>
<p>Regards,</p>
<p>Greg Wilson-Lindberg</p>
</div>
</body>
</html>

--_000_c629d3876eed4da1872ce4f4aa9157afsakurauscom_--
