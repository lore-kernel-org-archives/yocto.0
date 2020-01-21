Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.10439.1579607990157273738
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jan 2020 03:59:50 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@aruba.it header.s=a1 header.b=j3KdmnUE;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 140.211.169.56, mailfrom: mauro@faresoftware.it)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 982CFE0144D; Tue, 21 Jan 2020 03:59:49 -0800 (PST)
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
	*      [62.149.158.217 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www; Tue, 21 Jan 2020 03:59:45 PST
Received: from smtpcmd01-g.aruba.it (smtpcmd01-g.aruba.it [62.149.158.217])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6BEBE011DB
	for <yocto@yoctoproject.org>; Tue, 21 Jan 2020 03:59:45 -0800 (PST)
Received: from [10.0.3.91] ([213.213.6.58])
	by smtpcmd01.ad.aruba.it with bizsmtp
	id szyb2101H1F741R01zycae; Tue, 21 Jan 2020 12:58:37 +0100
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: "Mauro Ziliani" <mauro@faresoftware.it>
Subject: Remove buildhistory from deb package version
Message-ID: <18da5635-d9e0-5f6d-0aac-101008ba6fb6@faresoftware.it>
Date: Tue, 21 Jan 2020 12:58:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1579607917; bh=HSSmc8kKhJyw96wP9x4iBII1+5IrB5TgcqID7S+0KoM=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=j3KdmnUEBDqOLzcBZ8Yf0VStKeNEvu5D88v1M4X2v9d3dL7aBxYSg0wzAPQ7NYj5v
	 hbal3S2MCx+l1VK9JdlzbnF3CEkkhdKqqQ8UphN+iu4rzgYrQaT3ggIvppPF/x+H9R
	 3llcSuhODCvXR1c4a9JVO+ew9aYqC5srSXnsS3G9zBikDiiT6VPAJxDP2mysHGDqRw
	 UOWTNq/cZBIi4AGDcxqsThBx5BMZ40q7leEgVPb6/ZUtl5e1GX2A+yhRlW9KoltgZU
	 gO+J83rXPmdWggvk+h5+b3gT2lwhUvGRK2/vK7lPblsnndYFlUrLX/18ijGLRoAN3Y
	 xvVClsvYd6DPw==
Content-Type: multipart/alternative;
 boundary="------------538A963652998DFA64B61F04"
Content-Language: it

--------------538A963652998DFA64B61F04
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi all.

I need to remove the buildhistory number from final package version


Until now I use in local.conf

PRSERV_HOST =3D "localhost:0"
BUILDHISTORY_COMMIT =3D "1"
INHERIT +=3D " buildhistory "

When the package is built the buildhistory number is appended to the=20
version.

i.e.=A0 1.0.0-r0.3

I nee to remove .3 from version.

So I commented out

#PRSERV_HOST =3D "localhost:0"
#BUILDHISTORY_COMMIT =3D "1"
#NHERIT +=3D " buildhistory "

But now every package has always .0 has buildhistory number

i.e. 1.0.0-r0.3=A0 is 1.0.0-r0.0 always.

How can I get 1.0.0-r0?


Best regards,

 =A0 MZ


--------------538A963652998DFA64B61F04
Content-Type: text/html; charset=iso-8859-15
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DISO=
-8859-15">
  </head>
  <body>
    <p><font size=3D"-1">Hi all.</font></p>
    <p><font size=3D"-1">I need to remove the buildhistory number from
        final package version</font></p>
    <p><font size=3D"-1"><br>
      </font></p>
    <p><font size=3D"-1">Until now I use in local.conf</font></p>
    <p><font size=3D"-1">PRSERV_HOST =3D "localhost:0"<br>
        BUILDHISTORY_COMMIT =3D "1"<br>
        INHERIT +=3D " buildhistory "</font></p>
    <p><font size=3D"-1">When the package is built the buildhistory numbe=
r
        is appended to the version.</font></p>
    <p><font size=3D"-1">i.e.=A0 1.0.0-r0.3</font></p>
    <p><font size=3D"-1">I nee to remove .3 from version.</font></p>
    <p><font size=3D"-1">So I commented out=A0</font></p>
    <p><font size=3D"-1">#PRSERV_HOST =3D "localhost:0"<br>
        #BUILDHISTORY_COMMIT =3D "1"<br>
        #NHERIT +=3D " buildhistory "</font></p>
    <p><font size=3D"-1">But now every package has always .0 has
        buildhistory number</font></p>
    <p><font size=3D"-1">i.e. 1.0.0-r0.3=A0 is 1.0.0-r0.0 always.</font><=
/p>
    <p><font size=3D"-1">How can I get 1.0.0-r0?</font></p>
    <p><font size=3D"-1"><br>
      </font></p>
    <p><font size=3D"-1">Best regards,</font></p>
    <p><font size=3D"-1">=A0 MZ</font><br>
    </p>
  </body>
</html>

--------------538A963652998DFA64B61F04--
