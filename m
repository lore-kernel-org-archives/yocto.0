Return-Path: <john.rama01@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9151AE00A39; Sat,  7 Jan 2017 05:53:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (john.rama01[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f47.google.com (mail-pg0-f47.google.com [74.125.83.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A4AFE00A08
	for <yocto@yoctoproject.org>; Sat,  7 Jan 2017 05:53:54 -0800 (PST)
Received: by mail-pg0-f47.google.com with SMTP id f188so260926158pgc.3
	for <yocto@yoctoproject.org>; Sat, 07 Jan 2017 05:53:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=GcYkuJJE9MomdOgiXipFssBdHUQFgpeVRZ+YlIsRSM4=;
	b=JmFVflVChQ6vvOjnNj/S6UuL4b+hWe5NYS6FUpfteybhGL15FeLcuMB7hsiv5svsok
	EN/Fyr8ToP+wzmcI1ycr8pjan/RGj/Lp1nRLKK6j8QAdBbG5MMslLVfkLJh2VQB21qKL
	1/1hppkbBzR4DGW+tD3G5/VAZCsrmIipD2Rnr9/DjUTYaEn8R35nYrTBfOdlBHtqbN+F
	Jyjm+SrbPihQG1UKcva1EK9vK0ZmpFRUPPJcAcUbmK8WBND1Hi6vVWghKWL1WiBbnPs7
	llbHxMRLo7kVjqOiUryLRdSP/Ef+5PXV3LS3BX7ljrPhHXdouGEAGJlyKG5/izpoo7SN
	vNEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=GcYkuJJE9MomdOgiXipFssBdHUQFgpeVRZ+YlIsRSM4=;
	b=bcBq3S6m3RxubxS1y8UFiV/d9LcOJWaERC4tzrWymXJtpOka5iOB5kiSuLqHrloNgg
	Y5XycntMhB85BsYOsysbQIViihjNGIxTYImnmsKtRCQI/UYXmDI1adOmpcSB0fz9Zkeu
	lpu0O9JjqNJLku2Q+SzI3+pzG+xzCjG5iCawqU6qR8PCbTlyALzsXTbMo7wTnarHVDsf
	TSZQj/D/Q67xhQht7diL80qcmLgG3VtiGxbCJ1ktH/cDmhE7e/fNGVFBmTncWdSJfsWb
	FZyesIU1w2e0J58/eXTDWZB8tediTFFGofcyzaYD78+CM5XbLO0PCPm5oPg5jTd10eFy
	yRsw==
X-Gm-Message-State: AIkVDXJjOQT1Yz4tCFFkE2MT0ZVcRZJlqWFc+EgLzyJDAaLG4fUtIXCRxSX9v+qm4xw6VQ==
X-Received: by 10.84.200.39 with SMTP id s36mr174691406pld.77.1483797234031;
	Sat, 07 Jan 2017 05:53:54 -0800 (PST)
Received: from [192.168.10.3] (KD118155101045.ppp-bb.dion.ne.jp.
	[118.155.101.45]) by smtp.googlemail.com with ESMTPSA id
	x4sm168018943pgc.14.2017.01.07.05.53.51 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 07 Jan 2017 05:53:52 -0800 (PST)
To: yocto@yoctoproject.org
From: John Rama <john.rama01@gmail.com>
Message-ID: <5870F2F2.4060508@gmail.com>
Date: Sat, 7 Jan 2017 22:53:54 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.4.0
MIME-Version: 1.0
Subject: Q on how to keep the debug information for kernel module
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
X-List-Received-Date: Sat, 07 Jan 2017 13:53:56 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Dear Yocto specialists

I have one question. 
When building the kernel module and install to rootfs with Yocto, I got the kernel module without debug information.
Investigating a little bit revealed that it seems do_package process remove the debug information from binary, 
as the file size indicates as shown below.

-rw-r--r-- 1 atmark atmark    321 12月 14 17:15 ./3.14.28-r0/git/drivers/net/usb/.usbnet.ko.cmd
-rw-r--r-- 1 atmark atmark 278101 12月 14 17:15 ./3.14.28-r0/git/drivers/net/usb/usbnet.ko
-rw-r--r-- 1 atmark atmark 278101 12月 14 20:08 ./3.14.28-r0/image/lib/modules/3.14.28-rt25-1.0.0_ga-avb_1_0_0+g91cf351/kernel/drivers/net/usb/usbnet.ko
-rw-r--r-- 2 atmark atmark  45328 12月 14 20:08 ./3.14.28-r0/package/lib/modules/3.14.28-rt25-1.0.0_ga-avb_1_0_0+g91cf351/kernel/drivers/net/usb/usbnet.ko
-rw-r--r-- 2 atmark atmark  45328 12月 14 20:08 ./3.14.28-r0/packages-split/kernel-module-usbnet/lib/modules/3.14.28-rt25-1.0.0_ga-avb_1_0_0+g91cf351/kernel/drivers/net/usb/usbnet.ko

I would like to kept debug information preserved.
I've check the manual but could not find out how to control this behavior.

Does anyone know how to do that ?
Any information is highly appreciated.

Kind Regars,
John Rama

