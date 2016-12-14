Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F098AE00D3F; Wed, 14 Dec 2016 03:14:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wj0-f176.google.com (mail-wj0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 355ACE00D2C
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2016 03:14:10 -0800 (PST)
Received: by mail-wj0-f176.google.com with SMTP id v7so27886159wjy.2
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2016 03:14:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=FZ0tdD5pjcRru3eMNHUV1QvqZzWKibQ0ken8wmWNpBY=;
	b=gGvUOHEOGaymmrUM73WD3KYNr9eYe69VbrTbH3EW+bEzrzguPY90UEbgK2Qd8AjY5Y
	wuCNv9YIczYphkn/zIrcK68bO2HTXJnBs1pwGpNC15Has0jHB/WnHMG3Grvn2Lej08MS
	6Y0QZQ0gQpDLg8tCIC3t/QZMgyfO9fDmzuG7LUwEsHI8le9y4j2Ej6WicphxtwyoFGuz
	ZInQCq3P76LAf29W1z0J+70bNcPyDcjSfMVYpdTJIL9BGlqwNrpHnRjjr/LlLPmXpG2N
	rjmYQLbdPqAPbPg8mQYYQR9rYqrts1HS8D7AgieqGuN+IsrSM3bOdxOpLOGwslqp6CMf
	djwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=FZ0tdD5pjcRru3eMNHUV1QvqZzWKibQ0ken8wmWNpBY=;
	b=gj2JfPJta81/ZfvRiyD6IksnnARz3HxHUKB+lmxyV62oZlyWydtEnS5J8fFrKG8ahb
	WonxY19UQu+BzqYqAUbAx5Hair4520RNUBg8p3rD7zMVReaYDdGsaHjJCnAr9HLY6WDy
	dK9blVdq1E9mS1j1BDUG96izONcCBPJbPfdHz1ZmMlFZ8Gw1KdkZ7rDJ07uKYveF38mC
	PnhLeMBBgyySUGNQxm/1k6l/25JErQSnbk9AoxKf8+JV+YlG+PSLbAuK/Iuk76q1t8dk
	i+BYMPGxOuIj3/mOzIlnGGdwoKmdGWO7Ick7aAeqgaxOrpuQnMzVSvXaytS3bka3OmmP
	yl9Q==
X-Gm-Message-State: AKaTC02+pMJ8scMkx5eQjMQfrkA99pFJYG0ZTwd/4GK6Hght3AbPQPOEaK8DQF62tBVQKw==
X-Received: by 10.28.63.16 with SMTP id m16mr6685884wma.113.1481714049571;
	Wed, 14 Dec 2016 03:14:09 -0800 (PST)
Received: from [192.168.2.176] (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114])
	by smtp.gmail.com with ESMTPSA id u18sm7125590wmd.1.2016.12.14.03.14.08
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 14 Dec 2016 03:14:09 -0800 (PST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Piotr Lewicki <piotr.lewicki@elfin.de>
Message-ID: <80fb4491-6f66-0317-84d5-7b3e7efa8645@elfin.de>
Date: Wed, 14 Dec 2016 12:14:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
Subject: [meta-raspberrypi] How to set the kernel config variables in the recipe?
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
X-List-Received-Date: Wed, 14 Dec 2016 11:14:13 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I need to set some kernel parameters and I thought that it would work 
with "do_configure_prepend()" task in my "linux-raspberrypi_%.bbappend" 
file.

I have do configure like so:

do_configure_prepend() {

     kernel_configure_variable USB_PRINTER n

# and some other variables

}


Now I have noticed that what I get in the real do_configure task is:

do_configure() {
     kernel_configure_variable USB_PRINTER n

# and some other variables
     # Clean .config
     echo "" > 
/home/piotr.lewicki/2016-12-09/build/tmp/work/raspberrypi3-poky-linux-gnueabi/linux-raspberrypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/linux-raspberrypi3-standard-build/.config
     CONF_SED_SCRIPT=""

...

}


Does this mean that my configuration does not get into the recipe?

Is there a better (working) way to do it?


Best regards,

Piotr Lewicki


