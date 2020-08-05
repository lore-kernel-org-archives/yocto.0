Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.3490.1596619162460142627
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Aug 2020 02:19:23 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@aruba.it header.s=a1 header.b=aT9QtkP5;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 140.211.169.56, mailfrom: mauro@faresoftware.it)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E841DE01F8D; Wed,  5 Aug 2020 02:19:21 -0700 (PDT)
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
	*      [62.149.158.132 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www; Wed, 05 Aug 2020 02:19:19 PDT
Received: from smtpcmd15177.aruba.it (smtpcmd04132.aruba.it [62.149.158.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6027CE01F8B
	for <yocto@yoctoproject.org>; Wed,  5 Aug 2020 02:19:19 -0700 (PDT)
Received: from [192.168.24.172] ([93.38.119.136])
	by Aruba Outgoing Smtp  with ESMTPSA
	id 3FYtkrG6cbOmE3FYukCamV; Wed, 05 Aug 2020 11:18:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1596619096; bh=5EfCRRTwNdn/Ytk8HS3TNRxQMO11pAYS/F47VesVQbc=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=aT9QtkP5YVy2Tn9GW4Ws9Xtcw9UhuLrpbi4tHtiMTcpnSh7IjxBYCQFpT7CLxmBvU
	 e41pgAW8RdUE53JH3GM1MQpCCc/b6yWkcq/4wWIG+z8G60kBSM/8MyoWXQ4+cNF+FM
	 9Re12OfeiOPSVRre7Zz/42TSC+SOlXgC2undL918H5zv5lrFuKlKI2t86edSgAvSRA
	 LxK0FEB0OhQ99qknQhZPGFzaFgzyO6p8Cqh6lZ/zU4Jlq2mp7plbZkLx+GMJeG9uWK
	 ilsDUaHWHErJLA6zcODaYvbgjNuDU/N2kXZtJhZIEOtmM5lqrZkWRS0GMOXmZHHghI
	 n3JPHClmiMh+w==
To: yocto@yoctoproject.org
From: "Mauro Ziliani" <mauro@faresoftware.it>
Subject: psplash and mountpoint -q
Message-ID: <cb154246-04c9-d47e-e28f-d848f7d8baca@faresoftware.it>
Date: Wed, 5 Aug 2020 11:18:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.1.0
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfBsULdEBylaLQ5KjoOT2pSBKK1slnzt8Kig3ukQHLsCuROviTWLkCNb3Zb6x01CJuDmKhPDfQPWLxkD3S2iyuXy2Az3THOETpWl002D8GccIGmNvzFv6
 1rCT6B7j5m9cGkoHZSpIEIvhlv2wPA48ISY2GbWrztv5/EuRTnAtiIcxhXf0JD61iSWMIkZ5s/ShMg==
Content-Type: multipart/alternative;
 boundary="------------62035D8036E37B5FA169B24A"
Content-Language: it

--------------62035D8036E37B5FA169B24A
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi all.

I'm working woth Zeus on intel platform

When the script is run in shutdown I get the error at line 28

26: export TMPDIR=3D/mnt/.psplash
27: [ -d $TMPDIR ] || mkdir -p $TMPDIR
*28: if [ ! mountpoint -q $TMPDIR ]; then*
29:=A0 =A0=A0 mount tmpfs -t tmpfs $TMPDIR -o,size=3D40k
30: fi

So I change the line so

28: if [ ! `mountpoint -q $TMPDIR` ]; then


Is this ok?


MZ


--------------62035D8036E37B5FA169B24A
Content-Type: text/html; charset=iso-8859-15
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DISO=
-8859-15">
  </head>
  <body>
    <p>Hi all.</p>
    <p>I'm working woth Zeus on intel platform</p>
    <p>When the script is run in shutdown I get the error at line 28<br>
    </p>
    <font size=3D"-1">26: export TMPDIR=3D/mnt/.psplash</font><br>
    <font size=3D"-1">27: [ -d $TMPDIR ] || mkdir -p $TMPDIR</font><br>
    <font size=3D"-1"><b><font color=3D"#ff0000">28: if [ ! mountpoint -q
          $TMPDIR ]; then</font></b></font><br>
    <font size=3D"-1">29:=A0 =A0=A0 mount tmpfs -t tmpfs $TMPDIR -o,size=3D=
40k</font><br>
    <font size=3D"-1">30: fi<br>
    </font>
    <p>So I change the line so</p>
    <p>28: if [ ! `mountpoint -q $TMPDIR` ]; then</p>
    <p><br>
    </p>
    <p>Is this ok?</p>
    <p><br>
    </p>
    <p>MZ<br>
    </p>
  </body>
</html>

--------------62035D8036E37B5FA169B24A--
