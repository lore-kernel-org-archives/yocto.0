Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.11058.1574773393121415433
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Nov 2019 05:03:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aruba.it header.s=a1 header.b=R/Snp4KD;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 140.211.169.56, mailfrom: mauro@faresoftware.it)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02DA2E00E8F; Tue, 26 Nov 2019 05:03:13 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17552E0079A
	for <yocto@yoctoproject.org>; Tue, 26 Nov 2019 05:03:10 -0800 (PST)
Received: from [10.0.3.95] ([213.213.6.58])
	by smtpcmd13.ad.aruba.it with bizsmtp
	id Wd372100A1F741R01d37wb; Tue, 26 Nov 2019 14:03:07 +0100
To: yocto@yoctoproject.org
From: "Mauro Ziliani" <mauro@faresoftware.it>
Subject: Adding python3-compile-native
Message-ID: <d257b4e4-165b-da06-f988-58621366a309@faresoftware.it>
Date: Tue, 26 Nov 2019 14:03:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1574773387; bh=o9MZIKPfhupkDVlnRzo5SiTA5okpItLxnQfpd9MeCWc=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=R/Snp4KDC4ehwo9Yl7hB3tF7j3KhzbtCOW7h1FbbnHpC4jZeN9FZ3Z/SJWWIR9F1b
	 Anxr1ChiQWO92RYOZwrDK2A8MdH+CEHGs81lsxLvm7rEt2DaFEv61GuIbdveO2Sf0/
	 CDe5RKzNSp3FHyTDDBJ0kNaNjefHQlDo1g6xUGz0q6VcqWsV2bYh927B85NIdFzBDW
	 KYxXXCb/0l1CqtaNTx7G5NrnBCBVD/1W4rM0uC78q2JHTbBJji7kkq8yj+U8+ABapY
	 YCuh4pIyZer5Fs1H9im/rAPv2hat1c0KplvcJtOL2o7IR3vv3rZQe0CAh1CO41LZnu
	 wNJ/zeu0a7+Rg==
Content-Type: multipart/alternative;
 boundary="------------93043B0291EA4B982053E47E"
Content-Language: it

--------------93043B0291EA4B982053E47E
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

Hi all.

How can I add python3-compile-native to my bsp?

I working with Krogoth, I llok python-3.5-manifest.inc where 
FILES_${PN}-compile is defined.

I think I need to define FILES_${PN}-compile-native in some way


M


--------------93043B0291EA4B982053E47E
Content-Type: text/html; charset=iso-8859-15
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-15">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><font size="-1">Hi all.</font></p>
    <p><font size="-1">How can I add python3-compile-native to my bsp?</font></p>
    <p><font size="-1">I working with Krogoth, I llok
        python-3.5-manifest.inc where FILES_${PN}-compile is defined.</font></p>
    <p><font size="-1">I think I need to define
        FILES_${PN}-compile-native in some way</font></p>
    <p><font size="-1"><br>
      </font></p>
    <p><font size="-1">M</font><br>
    </p>
  </body>
</html>

--------------93043B0291EA4B982053E47E--
