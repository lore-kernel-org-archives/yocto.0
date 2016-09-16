Return-Path: <simon.bolek@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF031E00C62; Fri, 16 Sep 2016 03:28:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (simon.bolek[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.43 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AE47E00C55
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 03:28:07 -0700 (PDT)
Received: by mail-wm0-f43.google.com with SMTP id l132so29590090wmf.0
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 03:28:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=from:subject:to:references:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=9+4Y11mU0qyRzHAjkwRURsB4c9VMMeu9g9m7xPIizng=;
	b=ShMThvj9NraSKrmhwz1BpAff1YKEHb6gaQThwdiy4U64OfhsTiROejDjgMTM0rPuNH
	T9HK7IJn7nJfsMfRB2jIUFLPRnXbAytmACynNaFgGbFR2SSHzbjxyyxk48Iw/gxzFWDI
	WPsW8W2NO8R5x5pVqAVkawq8MzJ2B39c8zrMMIaeJoeT2uodMo6ZSjf6AKR7C1gDNFId
	7LWFKDv2+6ek0lE1TsBSUObA+FP2oPtPNM6zYrim/dOqb/s8VzMi55cXjy6ziYSx+j2q
	wRBTuPYXr/DdE54Zidf5IuTgYTDYx/M9op5Fsbhor57uSBlvahUfQRTqc5bC+XmqnUI/
	LUGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:subject:to:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=9+4Y11mU0qyRzHAjkwRURsB4c9VMMeu9g9m7xPIizng=;
	b=T9T4B4h08OHHqkr7UNEZHbFO7oTmrC4+eQOi2YDG31ta3+GY7EADyjyhsW2HR/Huuh
	R31haW7SFGhDiGeMO5Uit3qUMXv6E6A26wZQ8rylL3+uzwsDBkZ6IbbfiePa0V2UvX6A
	mqdeFR68kBWJuX4NLZQm0IP9uyhR2LJAN0u6GK1m3mp5qyByJuJJLkQeMOyxPwk+8HUz
	lyTMnR/40yddcJ2aEQtY14Vy9X85O2/Sh/as/Z5fqjvKCLYq5h3MEvHBSdaCLr1yCGMD
	Vcffvx6ivS4X6hRDSep0SvhgVCPTS8LXeLC8+OKwl7cCsyUkIlv2Q3gjKeTgMvETbbaV
	3a9w==
X-Gm-Message-State: AE9vXwNToIUbqCVG7CAHRXpx+UfcDl0NcTo1mZJO1QVZ6c4Wrz6Tll0r0mh4hcGCo9WSNg==
X-Received: by 10.28.152.206 with SMTP id a197mr7031880wme.21.1474021685982;
	Fri, 16 Sep 2016 03:28:05 -0700 (PDT)
Received: from [192.168.178.20] (p54AFFEED.dip0.t-ipconnect.de.
	[84.175.254.237])
	by smtp.gmail.com with ESMTPSA id e5sm6694898wma.13.2016.09.16.03.28.05
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 16 Sep 2016 03:28:05 -0700 (PDT)
From: "Simon P. Bolek" <simon.bolek@googlemail.com>
X-Google-Original-From: "Simon P. Bolek" <simon.bolek@gmail.com>
To: yocto@yoctoproject.org
References: <a64c3613-bf32-f37c-0887-ac2bc6176623@gmail.com>
Message-ID: <da199140-9d2f-9052-9664-d45a0255ad57@gmail.com>
Date: Fri, 16 Sep 2016 12:28:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <a64c3613-bf32-f37c-0887-ac2bc6176623@gmail.com>
Subject: [core-image-sato jethro] what kernel drivers for GPS / gpsd - udev rules / gpsd.hotplug not working
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
X-List-Received-Date: Fri, 16 Sep 2016 10:28:10 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi everyone,

When attaching a Navilock GPS USB mouse to the device, the gpsd-script 
(/lib/udev/gpsd.hotplug) is not triggered to start gpsd with 
/dev/ttyACM0, that was found.

It seems, /etc/udev/rules.d/60-gpsd.rules does not get triggered. In 
there, the line:

SUBSYSTEM!="tty", GOTO="gpsd_rules_end"

prevents this line from beeing executed:

ATTRS{idVendor}=="1546", ATTRS{idProduct}=="01a5", SYMLINK+="gps%n", 
RUN+="/lib/udev/gpsd.hotplug"

Why? Could you help me on that, please? I am stuck :(


When I comment the SUBSYSTEM!="tty" out, than it gets executed, but not 
for /dev/ttyACM0 but for some "usb".

Do you know of any kernel modules that have to be bitbaked in order for 
the GPS devices to run properly?

When running bitbake -c menuconfig linux-yocto i did not find any 
specific GPS devices under "USB support". Are there generic drivers, 
that need to be activated?

thank you and kind regards

simon :-)


