Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C5F7E00BF4; Thu, 10 Sep 2015 18:37:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49695E00BB6
	for <yocto@yoctoproject.org>; Thu, 10 Sep 2015 18:37:19 -0700 (PDT)
Received: by iofb144 with SMTP id b144so82601657iof.1
	for <yocto@yoctoproject.org>; Thu, 10 Sep 2015 18:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=TCqxvAu3IkZZdIb2vHjvLpseKSbiLzS5E2gMEk6o/SE=;
	b=WQFy3Jkwo3jB2XVqOVz4Ysb5hlLuEcaNxIwd7h0IBacW0StXcRQiLySHPOnQGXYquG
	G1cCdOW6c0sGtq8f8zKO+EnS+yJ9oZcjR9Ao8pTR/5tXuXKGRlpEUnj5A9w3jBpIEUnM
	vIIzgZG2VXMvpchN6pK0UuPxrCLSpcAtHUE9B6YPv2C32oCAwturF3NQxa6DgKFSoOR6
	4ifVeu1BiJKNBv8ZDl8DXr1yIkZFyCwAtLJ3+Zl/Vi4N5KSWLJa02E6+ku8QXv7i9r5H
	HsTvuOIX7V5WuSoEQzqv1x0qPA0fPiU4cY+vEDsMevr7bURtQOKNQ66tO/vNtBi6trT7
	TTsw==
X-Received: by 10.107.47.87 with SMTP id j84mr64534927ioo.168.1441935438979;
	Thu, 10 Sep 2015 18:37:18 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	gb7sm5503176igd.20.2015.09.10.18.37.18 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 10 Sep 2015 18:37:18 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <55ECF934.80902@gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <55F2304B.6070601@gmail.com>
Date: Thu, 10 Sep 2015 21:37:15 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <55ECF934.80902@gmail.com>
Subject: Re: [meta-raspberrypi] du giving non-integer result?
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
X-List-Received-Date: Fri, 11 Sep 2015 01:37:23 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

From the feedback, it looks like I'm the only one seeing this issue.
That's okay, but I'll update this issue with new information in case
it's useful to others. Today I also had some other strangeness with the
"make sd card image" portion of a build, this time for cubietruck
(meta-sunxi):


    ERROR: Error: The image creation script
    '/z/tmp/build/tmp/work/cubietruck-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/create_image.sunxi-sdimg'
    returned 1:
    0+0 records in
    0+0 records out
    0 bytes (0 B) copied, 3.0606e-05 s, 0.0 kB/s
    expr: non-integer argument
    WARNING:
    /z/tmp/build/tmp/work/cubietruck-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/create_image.sunxi-sdimg:1
    exit 1 from
      parted -s
    /z/tmp/build/tmp/deploy/images/cubietruck/core-image-minimal-cubietruck-20150910182624.rootfs.sunxi-sdimg
    unit KiB mkpart primary ext2 $(expr ${BOOT_SPACE_ALIGNED} \+ 2048)
    $(expr ${BOOT_SPACE_ALIGNED} \+ 2048 \+ 10240.0)



Not only am I getting the floating point again, but it looks like
"BOOT_SPACE_ALIGNED" isn't getting expanded!

The frustrating part is that simply rerunning "bitbake
core-image-minimal" fixes the problem. The second time it completes
without error.

