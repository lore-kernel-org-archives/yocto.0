Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.4178.1575369890503667631
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 02:44:51 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@aruba.it header.s=a1 header.b=b004LU13;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 140.211.169.56, mailfrom: mauro@faresoftware.it)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A396E0108A; Tue,  3 Dec 2019 02:44:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [62.149.156.146 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd13146.aruba.it (smtpcmd13146.aruba.it [62.149.156.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89975E00736
	for <yocto@yoctoproject.org>; Tue,  3 Dec 2019 02:44:46 -0800 (PST)
Received: from [10.0.3.99] ([213.213.6.58])
	by smtpcmd13.ad.aruba.it with bizsmtp
	id ZNkl2100U1F741R01NklY1; Tue, 03 Dec 2019 11:44:45 +0100
To: yocto@yoctoproject.org
From: "Mauro Ziliani" <mauro@faresoftware.it>
Subject: Adding libstdc++-dev path?
Message-ID: <fd9a0cae-b45c-dcdd-1b5b-1c67904a3eec@faresoftware.it>
Date: Tue, 3 Dec 2019 11:44:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1575369885; bh=ltmTlVVqdfj7PcHe4DQXc36i0wqrNF7bYZW516kbUvI=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=b004LU13lAVe7L2C5FJ33u7rEBRC64MqnDjmMpAYpJDP9T/G9eWY7ePEoQ/yjHHvK
	 6aUVsF/fnN71S/mumZmwpJhLssjnLznWzkqCt2RCXsPgD2CkkiYqa6CsFNxP99jurY
	 hwaGTylH5RI0N4bu7vYu2x2PKw9u6dytrZ00/wy5yh56Kv/0uP8XNuRy7FQ2vx0mHO
	 YXkxhAl9fWTfNnSOcenOdYx/cDtqtApYfj4v/AY1Em1Ji1/Ab2nIng6nor7ck1zYp0
	 iDjEF3gt4IZPpI8kHDsbhODDAi2p37DJvYsXnaWCuE8Ha3uI7HbyhTBg0n8BC9DFce
	 YOsKG0bi54HDA==
Content-Type: multipart/alternative;
 boundary="------------8A60AC481FDD5D51C1785E2F"
Content-Language: it

--------------8A60AC481FDD5D51C1785E2F
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

Hi all

I'm trying to compile a library which need cstdio.

The file is in ${STAGING_INCDIR}/c++/5.3.0 and in 
${STAGING_INCDIR}/c++/5.3.0/tr1

I think I need to "include" in my recipe all libstdc++dev package

Looking on ${CXX} -v I get 
--with-gxx-include-dir=/not/exist/usr/include/c++/5.3.0


How can I use stdc by recipe?


Mauro


--------------8A60AC481FDD5D51C1785E2F
Content-Type: text/html; charset=iso-8859-15
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DISO=
-8859-15">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p><font size=3D"-1">Hi all</font></p>
    <p><font size=3D"-1">I'm trying to compile a library which need
        cstdio.</font></p>
    <p><font size=3D"-1">The file is in ${STAGING_INCDIR}/c++/5.3.0 and
        in=A0 </font><font size=3D"-1"> ${STAGING_INCDIR}/c++/5.3.0/tr1</=
font></p>
    <p><font size=3D"-1">I think I need to "include" in my recipe all
        libstdc++dev package</font></p>
    <p><font size=3D"-1">Looking on ${CXX} -v I get
        --with-gxx-include-dir=3D/not/exist/usr/include/c++/5.3.0</font><=
/p>
    <p><font size=3D"-1"><br>
      </font></p>
    <p><font size=3D"-1">How can I use stdc by recipe?</font></p>
    <p><font size=3D"-1"><br>
      </font></p>
    <p><font size=3D"-1">Mauro<br>
      </font></p>
  </body>
</html>

--------------8A60AC481FDD5D51C1785E2F--
