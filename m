Return-Path: <t_dufff@yahoo.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8227DE0096C; Wed,  2 Dec 2015 06:06:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (t_dufff[at]yahoo.ca)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [98.136.216.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm36-vm9.bullet.mail.gq1.yahoo.com
	(nm36-vm9.bullet.mail.gq1.yahoo.com [98.136.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5D3BE0048C
	for <yocto@yoctoproject.org>; Wed,  2 Dec 2015 06:05:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.ca; s=s2048;
	t=1449065112; bh=/9C8A2p92Qt9AONJk7gDdgm8EbueqisKf7rCx/H+sQs=;
	h=Date:From:Reply-To:To:Subject:References:From:Subject;
	b=dZxjLV7qSFFWtDz4ihLhcZ4pQswTsNpfPuXIK6WOHghqIwOEg23WAz0FpS2ZgCPBPZ9akgU7WaQ1DZG+IWYFzaPS2yY8ipq7/IIkqoem9AFxT2M6FMcEUbtqbD0zt7H5Ip6pYn1hzHUtK5o3j2r2F8MsaTALKFez7Glf7mrt53rdmpSDae65WTG7+kUG0WqD7k4+00ekjFsWF0lP3Q0v/U+m0BM2gjWu6rMqlE3hHjoARViZjJOrjqDLD0jCeovwrojrmmUq16ftbzA4InJ5gHDcgRcOxFLz1FWoGDHMP5QBm+Mxde7y8Uz3QK6/Qx8nhFynbOmQBciuKq+wMSiGFw==
Received: from [127.0.0.1] by nm36.bullet.mail.gq1.yahoo.com with NNFMP;
	02 Dec 2015 14:05:12 -0000
Received: from [98.137.12.55] by nm36.bullet.mail.gq1.yahoo.com with NNFMP;
	02 Dec 2015 14:02:12 -0000
Received: from [98.137.12.194] by tm15.bullet.mail.gq1.yahoo.com with NNFMP;
	02 Dec 2015 14:02:12 -0000
Received: from [127.0.0.1] by omp1002.mail.gq1.yahoo.com with NNFMP;
	02 Dec 2015 14:02:12 -0000
X-Yahoo-Newman-Property: ymail-4
X-Yahoo-Newman-Id: 87603.25069.bm@omp1002.mail.gq1.yahoo.com
X-YMail-OSG: OufjhRgVM1ky85LBvtGKf1XT77B0LU2hRqfNpmrx3cAxrZa8oR3Q7I5.A2kFRtS
	tTowtwzLeQoGMqREfHnnHymDf5ppGUaPKw79G67mNzOkMlQ7qxSxMyGLnYstIgDzU07dZz0Y5I1u
	eNCZfm7r2LJbPg2TpbCoezoawS_uIP3dh0.t302cg72ieXAD9HIvPCzzzwuRN6762MXJEqeyNrvQ
	OywYw.qgtLqls6_L0I9fSK6VTXSkhTapIOMsou8hTPlWZa1.zVoQz5bUoCM093HzeZlYwRkIIzSB
	B4s.rBsjj6aS1QAfvRUEQdJNZvbDq4uHeAnr8oNaw_CpLKclvZRekKnLMP9mw3sQPQJusDv93g1H
	6Z9eT2BMwyi6aTFB9rFNyPjFPsOJoHSFZbGU_DWzQsv6eHz5nSENbrTqCE0NC_vGeFD1cLczAtuH
	VZ1QGlQJ2nkfpym_OPKRP1_O8yTY_DUNy.a5dYDISaSPfLMSId9BNlrcddzJ.uLcFR8DcAhymvfz
	TOkDA.B8eeDjm35aR4XT30kuXiffJtdmfuA--
Received: by 216.39.60.206; Wed, 02 Dec 2015 14:02:11 +0000 
Date: Wed, 2 Dec 2015 14:01:50 +0000 (UTC)
From: kris duff <t_dufff@yahoo.ca>
To: Yocto Project <yocto@yoctoproject.org>
Message-ID: <1277413665.13071775.1449064911230.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
References: <1277413665.13071775.1449064911230.JavaMail.yahoo.ref@mail.yahoo.com>
Subject: Where to set preferred_version / preferred_provider
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: kris duff <t_dufff@yahoo.ca>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 02 Dec 2015 14:06:00 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_13071774_1832826645.1449064911228"

------=_Part_13071774_1832826645.1449064911228
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello!
I am using webmin 1.620 on my image (a custom recipe in my own meta layer).=
 When I have upgraded my yocto revision to dizzy, a new webmin version has =
appeared in the meta-openembedded layer (the version is 1.700) this version=
 seems not to work (I am unable to start it using systemctl and when I try =
to add a webmin.service in a bbappend it fails).
I have tried to put the instruction PREFERRED_VERSION_webmin =3D "1.620" in=
 my meta layer conf/layer.conf but I can't make it to work.
When I add PREFERRED_VERSION and trying to bitbake my image, I receive a me=
ssage telling me that the image have to install 2 version of the same packa=
ge. (probably because the package is present in multiple meta layer)
I also tried to add a version suffix in my image (webmin-1.620 or webmin_1.=
620 and I always get an error telling me that this package is not found.). =
Then I would like to try PREFERED_PROVIDER_ but I don't understand how this=
 command should work with webmin.
For now, I have removed the webmin_1.700.bb file but, this is not a good so=
lution.
Any idea ?
Thank you=C2=A0
Kris

------=_Part_13071774_1832826645.1449064911228
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, =
sans-serif;font-size:16px"><div id=3D"yiv7998017629yui_3_16_0_1_14486354032=
28_12377" class=3D"">Hello!</div><div id=3D"yiv7998017629yui_3_16_0_1_14486=
35403228_12377" class=3D""><br id=3D"yui_3_16_0_1_1449064428113_5452" class=
=3D""></div><div id=3D"yiv7998017629yui_3_16_0_1_1448635403228_12377" dir=
=3D"ltr" class=3D"">I am using webmin 1.620 on my image (a custom recipe in=
 my own meta layer). When I have upgraded my yocto revision to dizzy, a new=
 webmin version has appeared in the meta-openembedded layer (the version is=
 1.700) this version seems not to work (I am unable to start it using syste=
mctl and when I try to add a webmin.service in a bbappend it fails).</div><=
div id=3D"yiv7998017629yui_3_16_0_1_1448635403228_12377" dir=3D"ltr" class=
=3D""><br id=3D"yui_3_16_0_1_1449064428113_5456" class=3D""></div><div id=
=3D"yiv7998017629yui_3_16_0_1_1448635403228_12377" dir=3D"ltr" class=3D"">I=
 have tried to put the instruction PREFERRED_VERSION_webmin =3D "1.620" in =
my meta layer conf/layer.conf but I can't make it to work.</div><div id=3D"=
yiv7998017629yui_3_16_0_1_1448635403228_12377" dir=3D"ltr" class=3D""><br i=
d=3D"yui_3_16_0_1_1449064428113_5460" class=3D""></div><div id=3D"yiv799801=
7629yui_3_16_0_1_1448635403228_12377" dir=3D"ltr" class=3D"">When I add PRE=
FERRED_VERSION and trying to bitbake my image, I receive a message telling =
me that the image have to install 2 version of the same package. (probably =
because the package is present in multiple meta layer)</div><div id=3D"yiv7=
998017629yui_3_16_0_1_1448635403228_12377" dir=3D"ltr" class=3D""><br></div=
><div id=3D"yiv7998017629yui_3_16_0_1_1448635403228_12377" dir=3D"ltr" clas=
s=3D"">I also tried to add a version suffix in my image (webmin-1.620 or we=
bmin_1.620 and I always get an error telling me that this package is not fo=
und.). Then I would like to try PREFERED_PROVIDER_ but I don't understand h=
ow this command should work with webmin.</div><div id=3D"yiv7998017629yui_3=
_16_0_1_1448635403228_12377" dir=3D"ltr" class=3D""><br id=3D"yui_3_16_0_1_=
1449064428113_5468" class=3D""></div><div id=3D"yiv7998017629yui_3_16_0_1_1=
448635403228_12377" dir=3D"ltr" class=3D"">For now, I have removed the webm=
in_1.700.bb file but, this is not a good solution.</div><div id=3D"yiv79980=
17629yui_3_16_0_1_1448635403228_12377" dir=3D"ltr" class=3D""><br id=3D"yui=
_3_16_0_1_1449064428113_5472" class=3D""></div><div id=3D"yiv7998017629yui_=
3_16_0_1_1448635403228_12377" dir=3D"ltr" class=3D"">Any idea ?</div><div i=
d=3D"yiv7998017629yui_3_16_0_1_1448635403228_12377" dir=3D"ltr" class=3D"">=
<br id=3D"yui_3_16_0_1_1449064428113_5476" class=3D""></div><div id=3D"yiv7=
998017629yui_3_16_0_1_1448635403228_12377" dir=3D"ltr" class=3D"">Thank you=
&nbsp;</div><div id=3D"yiv7998017629yui_3_16_0_1_1448635403228_12377" dir=
=3D"ltr" class=3D""><br id=3D"yui_3_16_0_1_1449064428113_5480" class=3D""><=
/div><div id=3D"yiv7998017629yui_3_16_0_1_1448635403228_12377" dir=3D"ltr" =
class=3D"">Kris</div></div></body></html>

------=_Part_13071774_1832826645.1449064911228--
