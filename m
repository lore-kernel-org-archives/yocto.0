Return-Path: <jags.gediya@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FFE1E0082D; Sun, 31 Aug 2014 23:37:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jags.gediya[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qa0-f43.google.com (mail-qa0-f43.google.com
	[209.85.216.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A366CE00824;
	Sun, 31 Aug 2014 23:37:46 -0700 (PDT)
Received: by mail-qa0-f43.google.com with SMTP id cm18so4639349qab.30
	for <multiple recipients>; Sun, 31 Aug 2014 23:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type;
	bh=KSeCMirUR7FRpFMtuEh604wHr5q8HPQIWMfUk82FuaA=;
	b=HTE6B4ZxxyFr2yu9N5qKhOjphb6mM9IiSTSEj/FbNxEOmrKTngp1x3EH1F9t4xnJuQ
	cYR47QXjgBrlLckp2ELGY2lNHXtFjXnjo2S3IkGfAghZ4TQKlN898v/15nNVi9+3ZzJg
	TF0X3Vqt8Z9gvpXXk4NMUcVA4/7WDwVG7nbNLbI0Y7Pf4Rnn9r4yfD4o1jfgJ5MkW2H9
	uLitZhZUKcYkIDXQ0XjhtyQSmIo9txnn/WFjsb/RFc2w6kELctPQN5Mmqf2wjtaQr1qb
	rA8dfJF5YREqDlPEPDKbma0ThmhqOCvEjzeja8gP2G8wGfr/GSWOjIUgS/8Bm8daXkUV
	00Vw==
MIME-Version: 1.0
X-Received: by 10.140.93.44 with SMTP id c41mr39586895qge.106.1409553465534;
	Sun, 31 Aug 2014 23:37:45 -0700 (PDT)
Received: by 10.224.166.198 with HTTP; Sun, 31 Aug 2014 23:37:45 -0700 (PDT)
Date: Mon, 1 Sep 2014 12:07:45 +0530
Message-ID: <CAP3RZoig37MzrDZV2Bbtozc1voKj4neoLH4S8wK4Og-yZBgs5Q@mail.gmail.com>
From: jags gediya <jags.gediya@gmail.com>
To: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: hostapd and other packages with yocto for imx6sl-evk
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
X-List-Received-Date: Mon, 01 Sep 2014 06:37:49 -0000
Content-Type: text/plain; charset=UTF-8

I am adding packages on core-image-minimal according to my requirement
for imx6sl based custom board.

For that i am changing the below file.
poky/meta/recipes-core/packagegroups/packagegroup-core-boot.bb

I have made below changes,

RDEPENDS_${PN} = "\
    base-files \
    base-passwd \
    busybox \
    .
    .
    ${MACHINE_ESSENTIAL_EXTRA_RDEPENDS} \
    iperf \
    uim \
    bt-firmware \
    bluez5 \
    pulseaudio \
    wpa-supplicant \
    wireless-tools"

But i am not able to get pulseaudio in my file-system. What can be the reason?

About hostapd,

I am not able to find hostapd package bb file inside poky directory.
although hostapd is available inside meta-openembedded, but when i am
trying to add that package, i am getting the error.

How can i enable hostapd in yocto image.

I am building yocto for imx6sl-evk based custom board.

