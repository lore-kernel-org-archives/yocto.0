Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5877BE00B9D; Thu, 22 Jun 2017 21:57:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.47 listed in list.dnswl.org]
Received: from mail-it0-f47.google.com (mail-it0-f47.google.com
	[209.85.214.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAEC7E00B57
	for <yocto@yoctoproject.org>; Thu, 22 Jun 2017 21:57:02 -0700 (PDT)
Received: by mail-it0-f47.google.com with SMTP id m47so2393134iti.0
	for <yocto@yoctoproject.org>; Thu, 22 Jun 2017 21:57:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language;
	bh=mTfdD4eVCNy0iXeq9T9Cej+d4sTRgxp4KmrUPworV88=;
	b=QGw4pO7xqlI8XV2uiYRvr2yY+eqEyFk3UlnOevmb6XXV429jyIHIR0jdjLnhZwCwDk
	RUVU2yttnLewcY9mRfh9a4JAzyoJV5SaQVDOcN+l6poIJGzxTsHAZBbVXFlvBcn8HM3M
	xHPrrtdc2pY3DW3FbvS9je+BoviW3lkFrUQlByGylsEm4G85Q4Xbdbanu7slpUhbcAd+
	SsT+7EzoaxmQTH+brfmqyX2ovHd817LMZC/ot49PF/aD+EwiuEknohrktG045f8S8Q2h
	9ue6EkNSFoZ1XqUZ5Y+KTX7D6fNGlws8kc4UYzlrbBKn/5eQc8SVLssR+TAq7UKwTh5f
	4gCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language;
	bh=mTfdD4eVCNy0iXeq9T9Cej+d4sTRgxp4KmrUPworV88=;
	b=py7i/Ffst5+3TQYhOy2CjFIAWWrB4AyW7Ih4FQB93jojr7xeSSBBmF5KwVdKc7MJh0
	g9HUllTRE8Xh+s44kQeXTWYWbDwfopnNnfJKjGSE2Go1qwocxnjj7OMmIA28OkbjOyq8
	ZjGSy2BZreerFWsb4HBZGWUA/vhi0dGd99jW4zkR7BGcoqMUFoaELo4r2lx3AbAAqKf9
	5LT16OZdRwAfIQrWWjcPabWv2aRJYhydb8gSZBw9VXCnbZIwfObd4vzWEfm1ggdmdRDM
	uTp2p+x61xsWAsiRX9BEZaLNX1fauFZhCx2DaG7JhbP8tBMIpEg8kLc4HpmMqvzanIis
	GXhA==
X-Gm-Message-State: AKS2vOyx9fQBwo0MrhtxHFTGTjHZa2P2AH7us/pB34qP4CebVCYTDW6J
	/uBt20dNdViJtnGl
X-Received: by 10.36.178.75 with SMTP id h11mr381192iti.61.1498193821477;
	Thu, 22 Jun 2017 21:57:01 -0700 (PDT)
Received: from [10.0.0.1] (CPE-1-122-193-77.wwl9.wel.bigpond.net.au.
	[1.122.193.77]) by smtp.gmail.com with ESMTPSA id
	v10sm2180888iov.59.2017.06.22.21.56.58 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 22 Jun 2017 21:57:00 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <42cd4cc2-3406-462d-a748-853f75e604bd@gmail.com>
Date: Fri, 23 Jun 2017 12:56:56 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
Subject: wlan0: link is not ready ?
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
X-List-Received-Date: Fri, 23 Jun 2017 04:57:05 -0000
Content-Type: multipart/alternative;
	boundary="------------A5127853B7BFEBD6367298CD"
Content-Language: en-US

--------------A5127853B7BFEBD6367298CD
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello everyone,

The board can see the dongle but it can not obtain IP, how to fix it ?

====

ieee80211 phy0: rt2x00lib_request_firmware: Info - Loading firmware file 
'rt2870.bin'
ieee80211 phy0: rt2x00lib_request_firmware: Info - Firmware detected - 
version: 0.36
IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
udhcpc (v1.24.1) started
Sending discover...
Sending discover...
Sending discover...
No lease, forking to background

-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
谢谢,
Regards,
Riko Ho
/*******/

*

--------------A5127853B7BFEBD6367298CD
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hello everyone,</p>
    <p>The board can see the dongle but it can not obtain IP, how to fix
      it ?</p>
    <p>====<br>
    </p>
    <p>ieee80211 phy0: rt2x00lib_request_firmware: Info - Loading
      firmware file 'rt2870.bin'<br>
      ieee80211 phy0: rt2x00lib_request_firmware: Info - Firmware
      detected - version: 0.36<br>
      IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready<br>
      udhcpc (v1.24.1) started<br>
      Sending discover...<br>
      Sending discover...<br>
      Sending discover...<br>
      No lease, forking to background<br>
      <br>
    </p>
    <div class="moz-signature">-- <br>
      <b>
        <p style="color:blue;"> /*******/<br>
          Sent by Ubuntu LTS 16.04,<br>
          谢谢,<br>
          Regards,<br>
          Riko Ho<br>
          /*******/<br>
        </p>
      </b></div>
  </body>
</html>

--------------A5127853B7BFEBD6367298CD--
