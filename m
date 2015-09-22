Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C50EE00CA7; Tue, 22 Sep 2015 10:28:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C0A1E00AB5
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 10:28:01 -0700 (PDT)
Received: by iofb144 with SMTP id b144so21582520iof.1
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 10:28:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=to:cc:from:subject:message-id:date:user-agent:mime-version
	:content-type:content-transfer-encoding;
	bh=EpM4wuApVSATUHPdN1ZXVz9VOir3/A/UVtwoxsLQyEM=;
	b=bBESuu15Qh4oDWXfhKv7g0c7NrhQnlToQ3YDgwjjE9slKw/lCyccIHGFG6IPDm/Rzb
	nVDYplyxSzlFhNpi79UyYdt+76t2o7Sf1J2PAB9Uwy3dtXzOFOeDUdZMAo2St2oVRa7x
	TmFfdyQGtZIXIybmGp9IWQ/Z2axxf33AAOhZuoouAluTvaiZP+hcyN6eyiDkpKW6Jwdr
	Kf6iI7A+Fn/vfh7Whc6w+WJ7c8XFO8oq0R7xY1jPHBN5MoD9GB6zVd0XASnAyHl0MNUA
	NNAANwB55YJaqlD/USwzxLTUNq7DbsFR5oiUyqK9oxP+QllA4U+cc7+ZVi1ycZkvSYdD
	6fcw==
X-Received: by 10.107.128.145 with SMTP id k17mr37543136ioi.24.1442942880802; 
	Tue, 22 Sep 2015 10:28:00 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	qd2sm1428546igb.19.2015.09.22.10.27.59
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 22 Sep 2015 10:28:00 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <56018F9D.8060709@gmail.com>
Date: Tue, 22 Sep 2015 13:27:57 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
Cc: Enrico Butera <ebutera@users.sourceforge.net>,
	Sergey Lapin <slapin@ossfans.org>
Subject: sunxi mali binary driver
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
X-List-Received-Date: Tue, 22 Sep 2015 17:28:04 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello,

I'm trying to build an image for my cubietruck that uses the binary
accelerated mali driver (sunxi-mali) and have a couple questions.

It was my impression that the binary user-space libraries (sunxi-mali?)
only work with specific versions of the kernel.

By default the cubietruck machine definition will try to build the
upstream kernel, but by default it also sets the preferred providers of
egl, gles1, and gles2 to sunxi-mali. Wouldn't that cause problems? If I
want to use the accelerated, binary mali driver, don't I have to stick
with the sunxi kernel (3.4.90) too?

Best regards,
    Trevor

