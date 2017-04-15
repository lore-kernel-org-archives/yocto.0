Return-Path: <sadlife1990@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CD3CE00B45; Sat, 15 Apr 2017 07:30:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sadlife1990[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.47 listed in list.dnswl.org]
Received: from mail-vk0-f47.google.com (mail-vk0-f47.google.com
	[209.85.213.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EBE0E0092B;
	Sat, 15 Apr 2017 07:30:16 -0700 (PDT)
Received: by mail-vk0-f47.google.com with SMTP id r69so47382047vke.2;
	Sat, 15 Apr 2017 07:30:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Xo9eZog1vMo70aWLCnYFyT5b0DTiAZ7H5kDzhLhfpXI=;
	b=WCE0WyOrncyEo70SSwpgRIqZRqV04Pjz+zgf4D9eUtJTo9zseKgBzJXXiFkyuZsVN7
	JxnwGfHAbVe2B8yrJIm1CmHeuq81X7C8Rgr/iaH4+jtUSVC/d6yaY5pWUhUZeOP6jIlv
	dIzgyQLDq48ZQl6LDAY65Ln/9n4I9/SzsyAIbuFnbdjVZ+olCwpoQvl887C08fl8tJPz
	J4la4oTlkj1xT3kB8fucxiN6ugFOFNp7eRo2ksAxxjQO1sRnfUcXhmex9IrynGFYqOA+
	nJZrz6hCGSEBic7pKfNQuq02ndvLQz9F1O/Lkgrjp7P/gwtft+R4Dj6JvVbos49s5mmr
	uiqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Xo9eZog1vMo70aWLCnYFyT5b0DTiAZ7H5kDzhLhfpXI=;
	b=C2IIEbT5YjmFz+1v/CjnBcIbVucKYreF1eRAEWKkYoalM1FHUGSTEV9RwLUb+KAX3j
	eqPr8Q+EM922+lvZ2w2joNQHFJCdl8B2zNBu2FmaA8CohO+xKi2mYUO1JT3a1LTWQ4fS
	ApLz90aKt7Z0dtn4jO748QMCTB3dRA4sLjsO8ZKQE4Fqp9lKDIH1K4Cuogi4DMIWGfWn
	flsxkS9Utb5YZrcNbcNX4w/2TBKJ2ab36PP5PS1vhDjaLww7H+DLBv6MGkRA7U5IRo97
	pKk5ggIRql7GsTeaOrejV1KYehQO0OQKERRX7523bXMxoZwHvTWifOOiqAusU41WLyKU
	wp+g==
X-Gm-Message-State: AN3rC/7IY+3XySs1O9Zh4w37CyUehDSo+Tn85J0AkpKv14uRwA+rHLHY
	e0SjvaMdDMXavPdMkf7OMgRw7RveFzhn
X-Received: by 10.31.124.138 with SMTP id x132mr4404387vkc.120.1492266615797; 
	Sat, 15 Apr 2017 07:30:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.32.105 with HTTP; Sat, 15 Apr 2017 07:30:15 -0700 (PDT)
From: Life Life <sadlife1990@gmail.com>
Date: Sat, 15 Apr 2017 17:30:15 +0300
Message-ID: <CAAHuHfzNTY8yC0FJyU6SN1sEmgEsU1XMEJLEBvmaJQTYXvBUXA@mail.gmail.com>
To: yocto-owner@yoctoproject.org, yocto@yoctoproject.org
Subject: yocto mail list send.
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
X-List-Received-Date: Sat, 15 Apr 2017 14:30:20 -0000
Content-Type: text/plain; charset=UTF-8

Hi Sir,

I can not send mail "yocto@yoctoproject.org" though I have a valid
membership. Please check and help me.

Thanks.

