Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D66C9E00828; Wed, 18 Mar 2015 12:55:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (k4230r6[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.169 listed in list.dnswl.org]
Received: from mail-lb0-f169.google.com (mail-lb0-f169.google.com
	[209.85.217.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99E17E0034E
	for <yocto@yoctoproject.org>; Wed, 18 Mar 2015 12:55:10 -0700 (PDT)
Received: by lbcgn8 with SMTP id gn8so37811589lbc.2
	for <yocto@yoctoproject.org>; Wed, 18 Mar 2015 12:55:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=5QSyaLgNUbhNo82+mQxVboDkmns05uPe9Xt850gtzp4=;
	b=0vBI8otv0HvAvN1Y7iLncw7oRpzG46cChvgY/xLE+yyBTAyLRzxdNUxcO9LZigNPJS
	UtISDtlQZqxzJiocfLPGbHLjShoBChVBJQ6r5O7Toe1GrhSXYgA1N4Il71aJvHJQjehh
	MT8NhnTTCvjTvLAs+jxHomdsTUISdvUFm2p8ttnEjTuF6i3fxfeB3i35448Py54dakWp
	Z57Rk82/G3of8BOthJpXfat4vdJWQgHINGkw8E3eZ9oTal8uSWvSf/duP7THrU9L7cvY
	DS6/uZbhbmfmBJCY0NB5hffcXm97sdsHxB+ICjF4g+hbws8ydnHNqZ3iqLjXQmBeoFqg
	Sctw==
MIME-Version: 1.0
X-Received: by 10.152.197.34 with SMTP id ir2mr65585596lac.36.1426708508189;
	Wed, 18 Mar 2015 12:55:08 -0700 (PDT)
Received: by 10.25.206.132 with HTTP; Wed, 18 Mar 2015 12:55:08 -0700 (PDT)
Date: Wed, 18 Mar 2015 20:55:08 +0100
Message-ID: <CAALGJZaXn=ohTynN0sk_Qz8GPahX44AmdPgQ4=xqSmU8kpM0fg@mail.gmail.com>
From: Christian Ege <k4230r6@gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: How to support arm-none-eabi toolchain for u-boot on Amlogic
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
X-List-Received-Date: Wed, 18 Mar 2015 19:55:13 -0000
Content-Type: text/plain; charset=UTF-8

Hello,

it looks like that Amlogic based devices like the ODROID-C1 [1]
requires their u-boot compiled with an arm-none-eabi toolchain. The
rest kernel and rootfs is compiled with standard arm eabi toolchain. I
am wondering how to support this in yocto/openembedded.

With kind regrads,
Christian


[1] http://odroid.com/dokuwiki/doku.php?id=en:c1_building_u-boot
-- 
http://project-magpie.github.io/

