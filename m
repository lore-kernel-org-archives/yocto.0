Return-Path: <argprstest@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2AD8E00A38; Thu, 13 Jul 2017 07:31:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (argprstest[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.178 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.178 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f178.google.com (mail-qk0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D0CEE00726
	for <yocto@yoctoproject.org>; Thu, 13 Jul 2017 07:31:21 -0700 (PDT)
Received: by mail-qk0-f178.google.com with SMTP id 16so51899668qkg.2
	for <yocto@yoctoproject.org>; Thu, 13 Jul 2017 07:31:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=8wwr3qFfRaYf1RxbXESC2G2cyvDtM5/dEqlhJEKX0jI=;
	b=TUDyC/QkNyQnvoctCwS0mtcvDgYmZCerEo5/XqUt7/WRlFTDB9iJ7G0n+6EETeKjXp
	xwKa6raRPDfnVE+kxEunKx4jWDU4e/pO+IHmolAMXxVhxzyZSpiyWV7wk80O10W/4buS
	6P+tfvotpEJrwgyihx8/L3dL3UiLjhABRgBKS9j5TXbMqCgBiGwTT3rCOQf8pa2Lw5MB
	fEuu55UVJiLGgnc+30OlpkDPrOu0dqJRxW9PGfAJ8sQ9iuk2GIVbs6DyVm/qh1Rm5kR7
	qXd4cSFxvGP2ZrlBrhu0yDR3dBm2MdilWv4TxxhoUSdmYZRE0Bvazcys03/VJM9IUZXq
	ABNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=8wwr3qFfRaYf1RxbXESC2G2cyvDtM5/dEqlhJEKX0jI=;
	b=UY+HwapbCqLC8kXqaXc7qORYmgThu2QcvzHDChmMEQqxL1RolVWf1ht5sVPTjTyjhi
	oLe1UNUo/EpLcicVC/XxTxbL5VqJw3CVS0cv8xNVvt+K46FZeWcSennmV1mC8rC3smny
	3v23IBkQEzO0n43OnJkscgDCw//BtvqPohItvlbvJo1/mVlV25oRR2Mw9SnxXs7wQDRV
	V5wm03sIx+UXGLUs8cbleeFRLYaqM1chIgCamvnH2nXs1zxGgwDcsTrp0vY6L9TO696e
	pQyHSKb31F7x1RjkaJktIfmXt9LSRe6YUql02xO8agkEIqmD57tpH/8BHm8M2VHQ7E3p
	jDdA==
X-Gm-Message-State: AIVw110S55F6QY80nhO/J2DLi7fZBHnC24LMRjwwZPANDfWDkLpwZ/TI
	jANy1903c38qsRdeAbHSnC54HHSI8Z8K
X-Received: by 10.55.170.205 with SMTP id t196mr4924219qke.106.1499956279460; 
	Thu, 13 Jul 2017 07:31:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.40.97 with HTTP; Thu, 13 Jul 2017 07:31:19 -0700 (PDT)
From: test gprs <argprstest@gmail.com>
Date: Thu, 13 Jul 2017 17:31:19 +0300
Message-ID: <CANT-yaRZ3D7nQyEivJTn1C7H1ELZm5XrrZx_D+zEsH5-vfaX=A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: QTVirtualKeyboard Custom Layout Problem
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
X-List-Received-Date: Thu, 13 Jul 2017 14:31:23 -0000
Content-Type: text/plain; charset="UTF-8"

Hi.

I am using Yocto project on Rarpberry pi 3 with QT-QML 5.7. My Distro
version is 2.2 - poky.

 My project need virtual keyboard for Turkish language. QT Virtual
Keyboard has no support Turkish language so I think create my custom
layout or change using English layout files. I cant found layout files
in Yocto system but I found layout files on my computer from
"...build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/qtvirtualkeyboard"
path. I added Turkish custom keyboard layout and then builded new
Yocto image. I couldnt find custom keyboard in QT program. Then I
changed some keys in English layout files on
"qtvirtualkeyboard/5.7.0+gitAUTOINC+626e78c966-r0/git/src/virtualkeyboard/content/layouts/en_GB"
path and again buildednew Yocto images with editted English keyboard
layout files. Butnothing changed again.

What am I missing ?


Thank you

