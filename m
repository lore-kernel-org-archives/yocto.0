Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.34481.1614000600476339850
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Feb 2021 05:30:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aruba.it header.s=a1 header.b=TrkBGMWJ;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 198.145.29.25, mailfrom: mauro@faresoftware.it)
Received: from smtpcmd0642.aruba.it (smtpcmd0642.aruba.it [62.149.156.42])
	by mail.yoctoproject.org (Postfix) with ESMTP id 8EE4838C04B3
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2021 13:29:57 +0000 (UTC)
Received: from [10.0.3.95] ([213.213.6.58])
	by Aruba Outgoing Smtp  with ESMTPSA
	id EBHfl4AS4l6tsEBHflgze4; Mon, 22 Feb 2021 14:29:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1614000596; bh=XcG+cQy8VPbHLLOO91kdHzX2aH272rPHWANeMnzGrDs=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=TrkBGMWJfVyPXjSFUQzPVCDlenYWRmrv8/S1x7DSOCcS7EmUdE7+uMEnmB7xEeXXU
	 sGZCBwfHjwfRVRPlAU6+WFTArls7ygMvUYUCEVZGgA6oXnfIlLFXQPhm4uO2q29FI9
	 z2cV83vyWMs3Gupc14Z3ZDA5v++Cep2AasuzjnUIgbMxRqASHfEMgRXgjRZVnm8BUl
	 286PcBYR8YWi5CdY77FMKEV7wwc3W7zUjpPdTswEHNVVNrUOyqMICuTHSUI8MpJlfc
	 ZkGHcUtJM3J0PNPJgFqDZ3KtwVfWCAOtDJYcwRd3Eut6xpCSjohm1NpJn2JocyqWwr
	 nQbUNVf1KnUmg==
To: yocto@yoctoproject.org
From: "Mauro Ziliani" <mauro@faresoftware.it>
Subject: Include "my.conf" in conf/local.conf
Message-ID: <b97c87dd-8818-2827-18d7-425b7c03f849@faresoftware.it>
Date: Mon, 22 Feb 2021 14:29:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfLtuYVHbXlhJgqRlyzPm+7htbi4ACbVMma/wTsnCrPTHFN7UGJiSCKxAI50W42jvalYEbMT2FZzQkz7GWsQIlv4fr/7+MclvcbBLm4OUXz4GXV9RFd3R
 N7IJfmz/A9lJWTD1W+deZxwdtqBizJKhDSGomC3Bg8QTm60SMLtYAzsp
Content-Type: multipart/alternative;
 boundary="------------F90F60BBB785393E0300B226"
Content-Language: en-US

--------------F90F60BBB785393E0300B226
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

Hi all

Is it possible to include a fine in local.conf?


MZ


--------------F90F60BBB785393E0300B226
Content-Type: text/html; charset=iso-8859-15
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-15">
  </head>
  <body>
    <p><font size="-1">Hi all</font></p>
    <p><font size="-1">Is it possible to include a fine in local.conf?</font></p>
    <p><font size="-1"><br>
      </font></p>
    <p><font size="-1">MZ</font><br>
    </p>
  </body>
</html>

--------------F90F60BBB785393E0300B226--
