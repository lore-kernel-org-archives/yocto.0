Return-Path: <ulfwin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EB93E00837; Sun,  7 Dec 2014 03:22:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ulfwin[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.179 listed in list.dnswl.org]
Received: from mail-lb0-f179.google.com (mail-lb0-f179.google.com
	[209.85.217.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAF0FE00345
	for <yocto@yoctoproject.org>; Sun,  7 Dec 2014 03:22:08 -0800 (PST)
Received: by mail-lb0-f179.google.com with SMTP id z11so2486122lbi.38
	for <yocto@yoctoproject.org>; Sun, 07 Dec 2014 03:22:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=1CFd/rfEwohJ1MlnOEGH8uoxjg7rCXVAm7zqB82hBRU=;
	b=qCmI5Yj0wRMbCe3ikmCQTjtTU4Kb8pD3EsoBB/grZiGyMWM30Dpf6yvfu4tYaYoab1
	dLCABUT0XjIa5nzUcgIdMk4LcMRQKiuTwNXZR7sqLjiBiR3QL415lORsbwgGipJPNR4U
	0KM3zxkL3gCqE80BGn1u55MhSvR9xVicanKpjln0+gILePhmwQBLxulYG+AHUmmbu72l
	QCeKL8jOWEKHM1kEpvRA2cDmKYoD3ps29plKv1dmtHewj2YheWpZHL4FAMupoWdmfsLl
	+XTp6il1Dg+xeaBNvGMbt14k4j1khq+PpW7KlZPIW/4UGOXcAmLj5YaTzykBkJQulMlt
	9LwA==
MIME-Version: 1.0
X-Received: by 10.152.3.100 with SMTP id b4mr11019498lab.68.1417951326214;
	Sun, 07 Dec 2014 03:22:06 -0800 (PST)
Received: by 10.25.42.131 with HTTP; Sun, 7 Dec 2014 03:22:06 -0800 (PST)
Date: Sun, 7 Dec 2014 12:22:06 +0100
Message-ID: <CAP9QVgA8bD6oro2rxut4sceWr7qXjD4A5QGWz4BU6UXGCWZvEg@mail.gmail.com>
From: Ulf Winberg <ulfwin@gmail.com>
To: yocto@yoctoproject.org
Subject: Using anonymous python function to define variables
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
X-List-Received-Date: Sun, 07 Dec 2014 11:22:12 -0000
Content-Type: multipart/alternative; boundary=089e014940641ba0f005099e85fd

--089e014940641ba0f005099e85fd
Content-Type: text/plain; charset=UTF-8

I'm struggling with trying to dynamically set a file name, to be used with
"require". See code below:

python () {
       TA = d.getVar('TARGET_ARCH', True)
       if TA == "arm":
               javaPkg = "oracle-jse-ejre-arm-vfp-hflt-client-headless"
       elif TA == "i586":
               javaPkg = "oracle-jse-jre-i586"
       elif TA == "x86_64":
               javaPkg = "oracle-jse-jre-x86-64"
       else:
               raise Exception("Target architecture '%s' is not supported
by the meta-oracle-java layer" %TA)
       d.setVar('JAVA_PKG', javaPkg)
}

require ${JAVA_PKG}.inc

The python function executes properly (if I print javaPkg, it shows up
correctly) but the "JAVA_PKG" variable does not become available for
"require". From what I can read in section 3.4.4 in this link
<http://www.yoctoproject.org/docs/1.6/bitbake-user-manual/bitbake-user-manual.html>,
it seems to me it should work. Could someone please explain to me why it
doesn't?

Thank you in advance!

Ulf

--089e014940641ba0f005099e85fd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>I&#39;m struggling with trying to dynamical=
ly set a file name, to be used with &quot;require&quot;. See code below:<br=
><br><span style=3D"font-family:monospace">python () {<br>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 TA =3D d.getVar(&#39;TARGET_ARCH&#39;, True)<br>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if TA =3D=3D &quot;arm&quot;:<br>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 javaPkg =3D &quot;oracle-jse-ejre-arm-vfp-hflt-client-headless&quot;<br=
>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 elif TA =3D=3D &quot;i586&quot;:<br>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 javaPkg =3D &quot;oracle-jse-jre-i586&quot;<br>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 elif TA =3D=3D &quot;x86_64&quot;:<br>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 javaPkg =
=3D &quot;oracle-jse-jre-x86-64&quot;<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 else:<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 raise Exception(&quot;Target architecture &#39;%s&=
#39; is not supported by the meta-oracle-java layer&quot; %TA)<br>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 d.setVar(&#39;JAVA_PKG&#39;, javaPkg)<br>}<br><=
br>require ${JAVA_PKG}.inc</span><br><br></div>The python function executes=
 properly (if I print javaPkg, it shows up correctly) but the &quot;JAVA_PK=
G&quot; variable does not become available for &quot;require&quot;. From wh=
at I can read in section 3.4.4 in <a href=3D"http://www.yoctoproject.org/do=
cs/1.6/bitbake-user-manual/bitbake-user-manual.html">this link</a>, it seem=
s to me it should work. Could someone please explain to me why it doesn&#39=
;t?<br><br></div>Thank you in advance!<br><br></div>Ulf<br></div>

--089e014940641ba0f005099e85fd--
