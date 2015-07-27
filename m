Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96564E00A3B; Mon, 27 Jul 2015 09:17:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f182.google.com (mail-ig0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FA45E009B8
	for <yocto@yoctoproject.org>; Mon, 27 Jul 2015 09:17:23 -0700 (PDT)
Received: by igbpg9 with SMTP id pg9so83860472igb.0
	for <yocto@yoctoproject.org>; Mon, 27 Jul 2015 09:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=PzHYof7cyDvp8gnqSykE7PUNHEiVr+FPUEZD1KBvsCQ=;
	b=BOp2zCvQhLVWZkhSD1NVxSQX3VmP6Rtr8vlYZESB33OJivn5ujVOfcKc79BUhujABg
	xhY6OUT7UlNxyMx3KFbpiFH05tKdfjQ7piH/ToM3FbTkWKd/2As2uaq4bmZ1kBWTvn7y
	bEbuoov4SwgUrkgBGY3kqrjAZZIFDdxRRHAPxliXNebpiJ2O/+29pQG8Y4darTgts75l
	2FnyAnD8zqzS24CPmbMGpvJk+fHNpUbryLzs7wpMGfMDVj4VDETVWNn3EaVzU7p1kJb7
	rtzpTIqc6+WLKcmDdPd7gcRKhotGuvwJpqiOWxI6V2OskvAvqdDP8PnVU1aM0BXvfpJ4
	AvJw==
X-Received: by 10.50.60.100 with SMTP id g4mr18579047igr.41.1438013841952;
	Mon, 27 Jul 2015 09:17:21 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	b140sm12174209ioe.9.2015.07.27.09.17.20
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 27 Jul 2015 09:17:21 -0700 (PDT)
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
References: <55B5213D.9040604@gmail.com>
	<CAP71Wjz6LZ465Mjskx1gDLV5xpff=_jZiqogAJsm0=x3_o+e1w@mail.gmail.com>
	<55B61016.1030504@gmail.com>
	<CAP71WjzRBHmATtczTV=5x6YoNhXuy66c4FVnhYJjSt-5QophQw@mail.gmail.com>
	<55B62152.9080103@gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <55B6598D.6030505@gmail.com>
Date: Mon, 27 Jul 2015 12:17:17 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <55B62152.9080103@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: include all kernel modules in image
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
X-List-Received-Date: Mon, 27 Jul 2015 16:17:26 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 07/27/15 08:17, Trevor Woerner wrote:
> inherit kernel
...
> DEPENDS = "rk2918-tools-native"

...and the "DEPENDS = " needs to be a "DEPENDS +=" since the "inherit
kernel" above already sets a bunch of DEPENDS and if the "+" isn't used,
the recipe loses the DEPENDS on the cross toolchain (for example)!

