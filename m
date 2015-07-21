Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 832E4E009BE; Tue, 21 Jul 2015 11:30:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f172.google.com (mail-qk0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 245EFE0096A
	for <yocto@yoctoproject.org>; Tue, 21 Jul 2015 11:30:17 -0700 (PDT)
Received: by qkdl129 with SMTP id l129so138734904qkd.0
	for <yocto@yoctoproject.org>; Tue, 21 Jul 2015 11:30:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=dXBadTxzyCaRGiYqtyTgwLYUH+qOZcpCfhgkbn0oFIs=;
	b=N6wZrtflLEDSfpJAk7NNDkBWcKE3loXhnFDBcOxC5ItPSHsRK3GWo6LCNE0quHSOUm
	sDEupKTWye18IipqEt6HIpR4S8At58rkCa6WLjOxAZ3QXwn/9xBCtpL3YpExO4Sy6N6e
	etbWVQ0nxRt6VCftZQ7wnUqR/MrgEKuml1lwwu8mdEXJR8WZrnsK5QlqSuiHSv23eilU
	/+fj8zLRwA8Fbg2o/+ecdqiwXWWQ1vePUivsmdpUCIsBxFCNiPv1uHpJQ/40Pv2VKblA
	fAqSw53U4qFstOhmrc8j8UCj/dzynX7+vZkaWjgcdQ+nyf12mNpIMOcdpm/xAQId3zMx
	u+Rw==
MIME-Version: 1.0
X-Received: by 10.140.148.82 with SMTP id 79mr18626706qhu.24.1437503417014;
	Tue, 21 Jul 2015 11:30:17 -0700 (PDT)
Received: by 10.96.179.74 with HTTP; Tue, 21 Jul 2015 11:30:16 -0700 (PDT)
Date: Tue, 21 Jul 2015 15:30:16 -0300
Message-ID: <CAF3SDA4dAU5TBMv2BoB-GMpUUpMWGTpzYbS9AE56npKXG5tO5w@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Does anybody knows a recipe for open-ath9k-htc-firmware?
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
X-List-Received-Date: Tue, 21 Jul 2015 18:30:18 -0000
Content-Type: text/plain; charset=UTF-8

Hi all,

I'm trying to use TPLINK TL-WN722N usb wireless card which is known to
work with ath9k_htc.ko driver and open-ath9k-htc-firmware[1]. I've
compiled the driver built-in with success. When I plug the usb stick I
got this on dmesg:

usb 2-1.1: ath9k_htc: Firmware htc_9271.fw requested
usb 2-1.1: Direct firmware load failed with error -2
usb 2-1.1: Falling back to user helper
usb 2-1.1: ath9k_htc: Failed to get firmware htc_9271.fw
usb 2-1.1: ath9k_htc: USB layer deinitialized


So firmware is missing. Does anybody knows a recipe for it?
Best regards,
- dhs

[1] https://wireless.wiki.kernel.org/en/users/drivers/ath9k_htc/devices

-- 
"Do or do not. There is no try"
  Yoda Master

