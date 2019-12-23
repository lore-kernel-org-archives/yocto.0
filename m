Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.2298.1577135520035030018
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Dec 2019 13:12:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sbcglobal.net header.s=s2048 header.b=Kxgxj5Ej;
 spf=none, err=permanent DNS error (domain: sbcglobal.net, ip: 140.211.169.56, mailfrom: develone@sbcglobal.net)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DFDAE01308; Mon, 23 Dec 2019 13:11:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [74.6.132.193 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from sonic314-19.consmr.mail.bf2.yahoo.com (sonic314-19.consmr.mail.bf2.yahoo.com [74.6.132.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84A85E01272
	for <yocto@yoctoproject.org>; Mon, 23 Dec 2019 13:11:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048; t=1577135516; bh=elgGc6lt2QGf1UPiy0FJr+G1bSTQPTZmeDEfr4wDGvU=; h=Date:From:To:Subject:References:From:Subject; b=Kxgxj5EjZw/moqhWWYPc9X0UzvJpXAJ0yj6K/wsJn0CKrvR3UeXkhUM15QiX7WN44w8l5cUvHDT+zYj7qrBQevttpqfA4YPkuvakwki/tMhwjREuCsFdgb02BvLxhNouSoN0VV2I5rn9gUmqVnlapBEa3BXdDIGli6VGoJxLDQSpwEYwUL4UFinpAnDmkkPzodE2x2+2dwvdV2uWAfgL7bffhpSQ9xQA209s38qc2kkukSvmvrv4GgkGtqoy4hXFXvKDJZi8gISQJ6zoiIGrsgs4PxeYh0/+8fFQl1UWiCBugow/BjQgdROx7ECT8p7e6flgFSWjMUCVYvk/55BHvw==
X-YMail-OSG: Yzrds4AVM1lo3e.q69ZawBlbfGOExxXBfa9T5FrU8Fmb1CgmqOzu5TPBJo0CTgK
 fsxzg99rQVdxTj0FXjC36PFvxyZrCJ6T1MH6iCBOIdny3IyE6vKeTbbPh1eRJ.LwYb63lfmE7xVr
 ij1WCGBuGzATHGGSREK.FHFA4AzZ349vYwfG0obAUoBesAiCt69AwV_gfoYy2u1pRC4LL.s33xjh
 uvYQGMNMJsoHvf2bPYur9S_xpLJ9EI3ZB8o.mESL3KUUpPT3QSAWondihfxnzbMPoy0Hnml1RDrA
 SJZoGiRHuv3CdrG6pLss0wV759JjN.ulsiuSZ285TJAiKHNKYLeH6ZM3.TaoY8KqoigquL0jHP15
 qHis5brNllOPOguuTccsRc1Ksceoj_lD.m_QSFH9G3r0gCccD0f1u1pTrwEnNzhQnLFp4gl0Tlcy
 UqbSMVkmlknYWIoROqVIsuDS6mXL8Ti84DNRPTqaNDxHmlE9HDTSKejeIGmxzg1ykWQtowFyfbSk
 oWrW0hD.RPG8dj8xBa1Vl_ZgGTVit17GQIz_kmhwo9KtAoWGXTWIlXjT262D9VMcVfi2fPnKrh5q
 turvrPjMAsw7wpXrB_TQ.iqxC0OS3mgjkIkTiu_4Q0zf2RvzaEM8Y9NvbW1vKjZgldBuUjqXtEb7
 nduTwz6QKGUKKKuyzPN93bW0oRKEcfgkFWlfR184_Wjn94a_6dUpFNYf8xHTH79rmXHI1hxDuUun
 Ofbf04WzuAhS_Uj_X.DLLJdeSj0gzv2dTky3CLdrB7ILp1Zf6VT3ifuc6ecIWlJRcUjo6hBd0a7m
 STNYVfMS_vL26PkTckI0dEj7ZDx3mytPU9q0m2WeJ3PzV2YA5XGVQc3G5fvHf4YAwkL6g3dJdqkQ
 k1BB68GOnTr2_mLARu2gb1YDAIByp8tOfrGrcAQ4s5klKw6JF2o1SIaDsq1Up9WRBXCVfAOAX.SE
 Tv6wi3PRVg1s4eTnnq7CbQ4YA1oj49SAMDTXNB.BR0wuneSFjOMeQBdg.emz9lbX17oNOxMXrpnC
 ZCaLFOr_QVe85e0biemONC9OvYO5gZCSQOb.nCwzHGCnORGeQHRPmZ2hr.bVgZy6CSbfyCuuuA6V
 ABKIMh..N_ahBfLn1vWB36JPsyuDGexMfi7Hudh_ll2khldFN7eL7WMysIul07ZJu2Zg9DAdrFuN
 JkuEB63JbvmdklluiVFzNazroEkkmTOf93_XP_HyeCFgDeFUyRjnEQzvvdvC19MIy7x5DerTA9XG
 OgDn3fA.JE8v72JGHM66QzMPXA1hBpxKm7CDPH_5mJLJs2_9wXYNecWSLpYjveF_0JFnsFAsW6Ag
 4gQHNnE.s2WfOd2u8e0I4iJYgj7WYWZ0-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic314.consmr.mail.bf2.yahoo.com with HTTP; Mon, 23 Dec 2019 21:11:56 +0000
Date: Mon, 23 Dec 2019 21:11:07 +0000 (UTC)
From: "Ed Vidal" <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1603144693.1899827.1577135467329@mail.yahoo.com>
Subject: Re: Raspberry pi 4 recipe and layer issues.
MIME-Version: 1.0
References: <1603144693.1899827.1577135467329.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.14873 YMailNorrin Mozilla/5.0 (X11; Linux armv7l) AppleWebKit/537.36 (KHTML, like Gecko) Raspbian Chromium/74.0.3729.157 Chrome/74.0.3729.157 Safari/537.36
Content-Type: multipart/alternative; 
	boundary="----=_Part_1899826_930176670.1577135467327"

------=_Part_1899826_930176670.1577135467327
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi=C2=A0

The Makefile executes several lines, which set variables=C2=A0ARACHNE_VER,=
=C2=A0GIT_REV, and=C2=A0VER_HASH.=C2=A0 =C2=A0These are used in the rule wh=
ich creates a file=C2=A0src/version_$(VER_HASH).cc.The line below appears t=
o be the one that causes the error.VER_HASH =3D $(shell echo "$(ARACHNE_VER=
) $(GIT_REV)" | sum | cut -d ' ' -f -1)
src/version_$(VER_HASH).cc: echo "const char *version_str =3D \"arachne-pnr=
 $(ARACHNE_VER) (git sha1 $(GIT_REV), $(notdir $(CXX)) `$(CXX) --version | =
tr ' ()' '\n' | grep '^[0-9]' | head -n1` $(filter -f% -m% -O% -DNDEBUG,$(C=
XXFLAGS)))\";" > src/version_$(VER_HASH).cc
bin/arachne-pnr$(EXE): src/arachne-pnr.o src/netlist.o src/blif.o src/pack.=
o src/place.o src/util.o src/io.o src/route.o src/chipdb.o src/location.o s=
rc/configuration.o src/line_parser.o src/pcf.o src/global.o src/constant.o =
src/designstate.o src/version_$(VER_HASH).o $(CXX) $(CXXFLAGS) $(LDFLAGS) -=
o $@ $^ $(LIBS)
These variables are based on git revision.=C2=A0 =C2=A0So I can not hard co=
de them.This is the error that I get.
/bin/sh: 1: sum: not found

I have tried adding busybox & coreutils to=C2=A0DEPENDS=C2=A0Thanks=C2=A0Be=
st Regards,
Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613

------=_Part_1899826_930176670.1577135467327
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp627c2d19yahoo-style-wrap" style=
=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 1=
3px;"><div dir=3D"ltr" data-setdir=3D"false">Hi&nbsp;</div><div dir=3D"ltr"=
 data-setdir=3D"false"><br></div><div><br></div><div dir=3D"ltr" data-setdi=
r=3D"false">The Makefile executes several lines, which set variables&nbsp;<=
span><span style=3D"color: rgb(0, 0, 0); font-family: Helvetica Neue, Helve=
tica, Arial, sans-serif;">ARACHNE_VER,&nbsp;<span><span style=3D"color: rgb=
(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">GIT_=
REV, and&nbsp;</span></span><span><span style=3D"color: rgb(0, 0, 0); font-=
family: Helvetica Neue, Helvetica, Arial, sans-serif;">VER_HASH.&nbsp; &nbs=
p;These are used in the rule which creates a file&nbsp;<span><span style=3D=
"color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-s=
erif;">src/version_$(VER_HASH).cc.</span></span></span></span></span></span=
></div><div dir=3D"ltr" data-setdir=3D"false">The line below appears to be =
the one that causes the error.</div><div dir=3D"ltr" data-setdir=3D"false">=
<div><div>VER_HASH =3D $(shell echo "$(ARACHNE_VER) $(GIT_REV)" | sum | cut=
 -d ' ' -f -1)</div><div><br></div><div>src/version_$(VER_HASH).cc:</div><d=
iv><span style=3D"white-space: pre-wrap;">=09</span>echo "const char *versi=
on_str =3D \"arachne-pnr $(ARACHNE_VER) (git sha1 $(GIT_REV), $(notdir $(CX=
X)) `$(CXX) --version | tr ' ()' '\n' | grep '^[0-9]' | head -n1` $(filter =
-f% -m% -O% -DNDEBUG,$(CXXFLAGS)))\";" &gt; src/version_$(VER_HASH).cc</div=
><div><br></div><div>bin/arachne-pnr$(EXE): src/arachne-pnr.o src/netlist.o=
 src/blif.o src/pack.o src/place.o src/util.o src/io.o src/route.o src/chip=
db.o src/location.o src/configuration.o src/line_parser.o src/pcf.o src/glo=
bal.o src/constant.o src/designstate.o src/version_$(VER_HASH).o</div><div>=
<span style=3D"white-space: pre-wrap;">=09</span>$(CXX) $(CXXFLAGS) $(LDFLA=
GS) -o $@ $^ $(LIBS)</div><div><br></div></div>These variables are based on=
 git revision.&nbsp; &nbsp;So I can not hard code them.</div><div dir=3D"lt=
r" data-setdir=3D"false">This is the error that I get.</div><div dir=3D"ltr=
" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"><s=
pan>/bin/sh: 1: sum: not found</span><br></div><div dir=3D"ltr" data-setdir=
=3D"false"><span><br></span></div><div dir=3D"ltr" data-setdir=3D"false"><s=
pan>I have tried adding busybox &amp; <span>coreutils to&nbsp;<span>DEPENDS=
&nbsp;</span></span></span></div><div dir=3D"ltr" data-setdir=3D"false"><sp=
an><span><span>Thanks&nbsp;</span></span></span></div><div dir=3D"ltr" data=
-setdir=3D"false"><span><span><span>Best Regards,</span></span></span></div=
><div dir=3D"ltr" data-setdir=3D"false"><span><span><span><br></span></span=
></span></div><div class=3D"ydp627c2d19signature">Edward Vidal Jr. e-mail d=
evelone@sbcglobal.net 915-595-1613</div></div></body></html>

------=_Part_1899826_930176670.1577135467327--
