Return-Path: <mar.krzeminski@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97E89E009A1; Wed, 27 May 2015 10:55:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mar.krzeminski[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f43.google.com (mail-la0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31C0CE005B9
	for <yocto@yoctoproject.org>; Wed, 27 May 2015 10:55:31 -0700 (PDT)
Received: by labpy14 with SMTP id py14so1491535lab.0
	for <yocto@yoctoproject.org>; Wed, 27 May 2015 10:55:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=D3RNSOxIcweLUA0gD1QMTMR8X94GKhVjNACTpR3KwG4=;
	b=VtdM8vc+6aB0zNoxxS3H+WU5Ql7HmvMhI2FT4WE1LYIxqPLlZ1y0oxJPcolV2Yuy2I
	Dt6hJaW/ula8bcNn8LuHqWRU7tNcIn3T5WJ9Gs7BK9XqPsE/WqH/DjYphrAZYOozUfEV
	wb1sz9C2pONip7ewuXTCB6p4NtkMd798e/JiaEDFiME5xl6R7Bq38oBTvEQK4u0s0L6k
	gBaecYHN9pRFoUd8aeJwbDdbhBewzrVUc42HFc7NcEqAFkm7qevNcaiig5kK37uyZUMO
	4+urjGwaDfzHawYH9T6iLzx0ZESFf22aY5Xecl8ZWu6JSRnkszKqOnfe3Qz0OOQ+cmoQ
	pMOw==
X-Received: by 10.152.87.204 with SMTP id ba12mr29746572lab.35.1432749329596; 
	Wed, 27 May 2015 10:55:29 -0700 (PDT)
Received: from [192.168.50.14] (89-70-157-137.dynamic.chello.pl.
	[89.70.157.137])
	by mx.google.com with ESMTPSA id df8sm3992150lac.3.2015.05.27.10.55.27
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 27 May 2015 10:55:28 -0700 (PDT)
Message-ID: <5566050D.9090705@gmail.com>
Date: Wed, 27 May 2015 19:55:25 +0200
From: "mar.krzeminski" <mar.krzeminski@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Changing VIRTUAL-RUNTIME_init_manager for initramfs image
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
X-List-Received-Date: Wed, 27 May 2015 17:55:38 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I have machine and in this machine I have two images. One of this images 
is image for kernel initramfs.
In this image I want to change init manager to busybox mdev, while ine 
the other one I use udev.
I can do that by changing VIRTUAL-RUNTIME_init_manager variable.
And now is time for dummy qestion, but I am not sure, if I change this 
variable
in particular image everything will be ok? Is this a proper way to do so?

Regards,
Marcin

