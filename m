Received: from smtpcmd15177.aruba.it (smtpcmd15177.aruba.it [62.149.156.72])
 by mx.groups.io with SMTP id smtpd.web12.62256.1606753499637250177
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Nov 2020 08:25:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aruba.it header.s=a1 header.b=deNWW5xe;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 62.149.156.72, mailfrom: mauro@faresoftware.it)
Received: from [10.0.3.97] ([213.213.6.58])
	by Aruba Outgoing Smtp  with ESMTPSA
	id jlyxkg2t4QWvtjlyxk3H8R; Mon, 30 Nov 2020 17:24:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1606753496; bh=9DCiy97x8wqOQBBO3LFNPsnVa72/XkbMqRHOsyAAVF8=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=deNWW5xe2cwg8MZCRj5U3XcTFqtrrNDjfh7huOiT8bGDjPMlS5a6w4nFReRWahAdQ
	 np+L5He10GsdgBeDGWiSUdBoBl4QGCfbGpRV5NXmCAPM7QXXYB3Alv6HFzZz593oDL
	 C8PEzHTrE2Sq/DN9HNr1lAwtUlH6DrmCqCmGAdkFEiDSML0Zy079KTmxmxNzY70Ch0
	 zhGexUpBrw2Z9fRmc+GK91+vzRRt9pXAGmWTY2CJiRzxGHcz2KU62dCbxHOjNUB0hr
	 bjePNRzSOFpRWv7Pxq1WjP9NRFLOBpLNFM+3x4C4nFF0HT4NiIacZFadisuHbMKFst
	 tR8stuQpR0cMA==
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
From: "Mauro Ziliani" <mauro@faresoftware.it>
Subject: Yoctoproject ad Qt Commercial License.
Message-ID: <f6feaa1c-e9dc-683e-1d50-dff3cbe18a4b@faresoftware.it>
Date: Mon, 30 Nov 2020 17:24:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfIOxqVteg7ICiYoBFw3lTjTzZwdiXxD4HPvcNPIDphM9jee/icojCDncf74ex0Vuoeku3BhpFhhw+CZo/lBtqJrFJHMVdZoiHirWCb3J8CjtE/79ze90
 09mFrpp86Ws8xD/zBLj501wTtW71jCoy85xV6trnDOmDRnuahVwHyi1CjV/047ZQI5s3zyeV4jvvGA==
Content-Type: multipart/alternative;
 boundary="------------99A2763B7765F96E77BD5F34"
Content-Language: it

--------------99A2763B7765F96E77BD5F34
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit

Hi all.

Anyone has experience with Qt Commercial and Yocto Project?


Best regards,

   Mauro Ziliani


--------------99A2763B7765F96E77BD5F34
Content-Type: text/html; charset=iso-8859-15
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-15">
  </head>
  <body>
    <p><font size="-1">Hi all.</font></p>
    <p><font size="-1">Anyone has experience with Qt Commercial and
        Yocto Project?</font></p>
    <p><font size="-1"><br>
      </font></p>
    <p><font size="-1">Best regards,</font></p>
    <p><font size="-1">  Mauro Ziliani</font><br>
    </p>
  </body>
</html>

--------------99A2763B7765F96E77BD5F34--
