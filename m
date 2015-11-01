Return-Path: <dherechaitanya@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7474CE00B9D; Sun,  1 Nov 2015 05:42:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dherechaitanya[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f45.google.com (mail-lf0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D412EE009D7
	for <yocto@yoctoproject.org>; Sun,  1 Nov 2015 05:41:57 -0800 (PST)
Received: by lffz202 with SMTP id z202so51929399lff.3
	for <yocto@yoctoproject.org>; Sun, 01 Nov 2015 05:41:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=woevc9A3o8XSp+bI7mjzashNWuHVJRE4ianwPU4YDpo=;
	b=guy3hyk+fTux5ZUZuj9w287Nac04t2Jq2f8Mgk/C7DVN/4rYW/HLzZztfPJ9R71Kpe
	L9ciHoUpLs8Efne/Fn0y5Gw25tsAQ2Oob/9XddhvU1Ix+94ErzOLuJ0INFTaajsX/R0L
	kiCeI2EDiNW4h6WXQV6XpY1SKKqxXfnSBFtXqSsZxwH1gHiGngJB6hSGqlX1vxCKhKKm
	luKDvh18hTNGdPANRvWBE8hHJ3+pOP0Mnnyvvup5d3y5qBixQSA5XAFFw9J1r3kmRzZN
	yKFv6Juq5gDFp5+nTp9JY32YRRshbeBWn6NMKEb9uvqp7vyqduJoaN2p0Rk8fMtZzWDk
	9S7g==
MIME-Version: 1.0
X-Received: by 10.25.138.68 with SMTP id m65mr5228260lfd.101.1446385315286;
	Sun, 01 Nov 2015 05:41:55 -0800 (PST)
Received: by 10.25.39.20 with HTTP; Sun, 1 Nov 2015 05:41:55 -0800 (PST)
Date: Sun, 1 Nov 2015 19:11:55 +0530
Message-ID: <CAG=op9dOD9-phw9V+ceuvLhDxuPYQJPmNUJrrneC9_ywS+f5aw@mail.gmail.com>
From: Chaitanya Dhere <dherechaitanya@gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-raspberrypi] Missing config.txt in rpi-basic-image.bb
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
X-List-Received-Date: Sun, 01 Nov 2015 13:42:00 -0000
Content-Type: text/plain; charset=UTF-8

Hello all,
              I am working on rpi-basic-image. After flashing this
image, raspberry pi 2 boots up fine. But I'm unable to locate
config.txt under /boot directory. I want to put :

dtparam=i2c1=on

in that file so as to work on a sensor based on i2c1 bus.
Currently I'm unable to locate i2c-1 device. i2c-dev and i2c-bcm2708
modules are already loaded.

Kindly let me know how to enable it.

Thanks,
Chaitanya

