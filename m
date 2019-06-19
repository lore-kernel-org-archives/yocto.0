Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1AD8E00DA7; Wed, 19 Jun 2019 03:30:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.43 listed in list.dnswl.org]
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
	[209.85.166.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B2FDE00DA7
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2019 03:30:15 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id r185so30992075iod.6
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2019 03:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=DO4ALT1ZgRYOcXKQ3RPOsBydReszf4tg18ykO4oKgBQ=;
	b=TvBP7E3+2rcTr44xIZKUJNHgdEdujBmuZTTjn+rtm7o+OuPtMd1SROmSf6QsRGSPNO
	k6fIoRRwEAgimmS67SMIcqfxG0GB1KJxk5Kg7H9/8+2K8k2InrP90c1mTCQqC9qsdX18
	PLy7JOzNtRjrLZqte1x9/oc3slN6RX0QP/tSb421JWZtTEXnYrEhaZz7a4VBpYzC3w1q
	3v1En/8PYEtaveAAyamj5FTL/T5fjVxTbHpRJoLhFM5jgZ3UM7nIS9hqYayYotc4aqiD
	AZp6oArWGYnjQ9vOUGZG4/Xm8svwxw134wVo+wwVgypcu2Ue2PWs4hbMZoevdNEV9bfz
	HQFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=DO4ALT1ZgRYOcXKQ3RPOsBydReszf4tg18ykO4oKgBQ=;
	b=QeftQJKZLYo5HK2UFjMJnx486t9hRlhv8kqTF22e7WnrcN1oKj95q8VyzusHRjTfIi
	ydVIaXZ+7CCyv5+z5cRxYGnpCMZfh5jk5yxXxQuIBRneZXfEhgPPPo4Ab5/+yF54QUMw
	UCUQ2EeqoHswi0V8IGNAdoGtQVj6Fy8hFjKNIgVQndafzTgCh5s4yzo3IpJwpsmljfPs
	9V25c25rgk/ZsKiK5wqZcJP5ViPOJOXhubtxQY+VkPHmtFkgTSdMyYkUXX4NE+JM8quN
	pc+7kdvZ8PIcKEvsnqXZ96QnnuSUbMCRwCb/xbIbQMZh32ntzsWxdCreWnsmOKZbkl3Y
	zmUA==
X-Gm-Message-State: APjAAAUrD5vkXzrB1E95C4nUHSrreq60czGQVn49yiO7zfZIOiiI6o9e
	U3UbD3oVnZiex8JONN6fsRuXlaVNzxjXkdi3H1jUZ67R
X-Google-Smtp-Source: APXvYqz7qG3bFuPK8MvX2TtTSkxdmbyfhvHcXxhbvorwEa01KJX+Sgoyy5Os5gCbD0uboSnrFjoSMtcH+XhMkC/NkUA=
X-Received: by 2002:a6b:3b03:: with SMTP id i3mr11391583ioa.302.1560940214526; 
	Wed, 19 Jun 2019 03:30:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:8a3d:0:0:0:0:0 with HTTP; Wed, 19 Jun 2019 03:30:13
	-0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Wed, 19 Jun 2019 20:30:13 +1000
Message-ID: <CAA=hcWTUNXhFLYtUnTuUoEOHz3c5wSpe7cE-zw8TKC8SK++wsA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: UBOOT_CONFIG for i.MX 6ULZ NAND
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
X-List-Received-Date: Wed, 19 Jun 2019 10:30:15 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I am using i.MX 6ULZ processor (MCIMX6Z0DVM09AB) with internal NAND
flash, will it be sufficient to config UBOOT_CONFIG = "nand" in
local.conf for downloading Linux kernel image to NAND and boot from
NAND?

Does it need to configure UBOOT_CONFIG["mfgtool] for using imx mfgtool uuu?

Thank you.

Kind regards,

- jupiter

