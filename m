Return-Path: <skorpyon1992@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02164E00803; Fri, 23 Sep 2016 04:46:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (skorpyon1992[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [72.30.239.212 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm40-vm4.bullet.mail.bf1.yahoo.com
	(nm40-vm4.bullet.mail.bf1.yahoo.com [72.30.239.212])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC50AE00803
	for <yocto@yoctoproject.org>; Fri, 23 Sep 2016 04:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1474631205; bh=dIwo8g6SmoljJMk0/h0idOtyVza5Qmr96pHUkmBow2g=;
	h=To:From:Subject:Date:From:Subject;
	b=SotXe1K+KQWlRn4k+2baMEv2ERoRL2mQcdQmFLC0t88gV5Za2UuxpjUlkPlTyH1P/mgsZB1JUU5dHXUATS3SRJG4L4Z80YHxcI2yfwuIa1Ftd8vY9mcZYvT87eP86dO3yuJNGEJsQNOef1UOWZdryhXZGAWDY/ZZAKB04FHX3Vwp62EIxX5iifY1FWxQQU4DEx6Bmy5E+Vg6rgHXF5TPABhyUrv+fsHFUHj9U7Q5S2joVJjgyj2J/YYNvV8s25x1ho+rHOHgN7aeKhyeh1fRKLhkD/GeWC1ATALJXFpPg4jYlAk1Z4G94zzTYv3J91neaQXeGqPWecEBBEv9mmb/9w==
Received: from [66.196.81.173] by nm40.bullet.mail.bf1.yahoo.com with NNFMP;
	23 Sep 2016 11:46:45 -0000
Received: from [98.139.211.204] by tm19.bullet.mail.bf1.yahoo.com with NNFMP;
	23 Sep 2016 11:46:45 -0000
Received: from [127.0.0.1] by smtp213.mail.bf1.yahoo.com with NNFMP;
	23 Sep 2016 11:46:45 -0000
X-Yahoo-Newman-Id: 573695.7425.bm@smtp213.mail.bf1.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: jKRRTwEVM1lZT.d9UCAlpnBOYN7fGpgXpBRhLBo2rMUSgIc
	L8YtuxJgZEWmDlJBKMnQRxDqYvioZ0V0s9cd7k3D4NAuLQAfveGCRNcUsL17
	0zhn0idwbH_.6xRWqnlmVhX0WurycYKnb8w2XQ7MaIXLNwO57SqtrSTKgRUE
	K5atphfTO3lLOe_sDbKZ0kCSR..to5u6uzrRfXLo2CrXN205z3UMEsFszoYE
	M5HcloOta7JsLMwiYKmNo2oFL5l0CuZjFcUvBjyKrQJzubMSq2KYfyL9qY2T
	2xBs805zMJZ0IJZqXapPJQo81SFGXvuyMQBP7K9mmT0F8ERPQ5XWl2Flkhn8
	3uwOTZY4te_32jFB4PmiefMm3..twjGt4hZpzpsgOsQsxRd1Fam2oJLi7s2Y
	cTc8.bj.uWatTisLhcoH_aGjXQUsOfMfuQE3hyOt5d8EADPjh9M5qPGmIMia
	5ADlolyaKSNMGCwhJEvGAdMXuvXFPJHG.QK_gtI7JHzw0yC4j5iCppLRVLuI
	CSZHsLdx2iRSjcM7ZwkPbu0xcbgqSrsQzXx7ZXHpDxrkj.13Y29VtSqJQuit e5jw-
X-Yahoo-SMTP: hmuUxceswBC0UlvOzl1Q5a.Poz8XMfp8HQ--
To: yocto@yoctoproject.org
From: skorpyon1992 <skorpyon1992@yahoo.com>
Message-ID: <57E5161F.80500@yahoo.com>
Date: Fri, 23 Sep 2016 14:46:39 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.8.0
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 26 Sep 2016 08:13:12 -0700
Subject: TEMPLATECONF for multiple devices
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
X-List-Received-Date: Fri, 23 Sep 2016 11:46:50 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

      Hello everyone,

      I started to build linux distributions for different devices and I 
would like to write some scripts that automatically clones git 
repositories  (poky, necessary layers, etc) and build the final image 
for the desired device. The configuration templates (provided from my 
custom layer) are the same for all devices except the MACHINE variable.
  Until now, for testing, I have manually set the TEMPLATECONF path 
(export TEMPLATECONF= path-to-my-layer/meta-mylayer/conf source 
poky/oe-init-build-env build-mydevice) and modified the local.conf with 
the correspondant  MACHINE name before creating any image.

   What would it be the best practice to minimize the configuration 
part? Use the same template configurations and modify the variables (in 
this case the MACHINE variable) after? Or have separate template 
configurations for each device inside my layer?

     Thanks in advance!

