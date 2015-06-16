Return-Path: <mar.krzeminski@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35F81E00939; Tue, 16 Jun 2015 11:36:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mar.krzeminski[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f44.google.com (mail-la0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FBD6E00496
	for <yocto@yoctoproject.org>; Tue, 16 Jun 2015 11:36:47 -0700 (PDT)
Received: by labko7 with SMTP id ko7so17432585lab.2
	for <yocto@yoctoproject.org>; Tue, 16 Jun 2015 11:36:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=x/zd0aiWy/MuzO05EFKR3zNmju4Q/ci/7XJ77uvdQfg=;
	b=c4Fz+DWq9p7ZCyCQNyRaBwcCSLu65IjkqThCHGgPo2bWJ7oA1zvaHd/hS7FoXiP6HZ
	cVPX+ODAzxMHPxcXJg3voer8XW8JHW4FcsedMbckOVA78V5xaJJCnn9+MhkfYgN3i843
	rNak03o9M22WiLwzBESMEwGBFxwhMB5ad0j8/5T3GzbxIuCciZea4W/m8i2fcrKxYXwi
	fcIANwQ0FJk5AeGMhH20GjgasieYblsceZmhlgjW4UT8gDlYBaeGV/Mh5sadJWvVqjA2
	twWd31S7XhjzXv30XYmQaz5KCP7f9ib16AMVw/vEENHRdH7awGX74RNJt/+6bldVcar0
	fqpQ==
X-Received: by 10.152.30.4 with SMTP id o4mr3122044lah.74.1434479806276;
	Tue, 16 Jun 2015 11:36:46 -0700 (PDT)
Received: from [192.168.100.35] (a91-154-88-10.elisa-laajakaista.fi.
	[91.154.88.10])
	by mx.google.com with ESMTPSA id g8sm413440laf.24.2015.06.16.11.36.44
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 16 Jun 2015 11:36:45 -0700 (PDT)
Message-ID: <55806CBB.8030602@gmail.com>
Date: Tue, 16 Jun 2015 21:36:43 +0300
From: "mar.krzeminski" <mar.krzeminski@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <558067FA.7080105@gmail.com>
In-Reply-To: <558067FA.7080105@gmail.com>
Subject: Re: Can not compile u-boot with meta toolchain
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
X-List-Received-Date: Tue, 16 Jun 2015 18:36:49 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

That does the trick:

make CROSS_COMPILE=arm-poky-linux-gnueabi- 
CC="arm-poky-linux-gnueabi-gcc 
--sysroot=/media/work/sdk/sysroots/armv7a-vfp-neon-poky-linux-gnueabi" all

Regards,
Marcin

W dniu 16.06.2015 o 21:16, mar.krzeminski pisze:
> Hi,
>
> I've got problem with compiling u-boot usind SDK.
> I am building image for my platform, then I am running commnad bitbake 
> meta-toolchain.
> In result I've got:
>   CC      examples/standalone/hello_world.o
>   LD      examples/standalone/hello_world
> arm-poky-linux-gnueabi-ld.bfd: cannot find -lgcc
> make[2]: *** [examples/standalone/hello_world] Error 1
> scripts/Makefile.build:421: recipe for target 'examples/standalone' 
> failed
> make[1]: *** [examples/standalone] Error 2
> Makefile:1145: recipe for target 'examples' failed
> make: *** [examples] Error 2
>
> In yocto environment u-boot builds fine.
> I've also tried
> unset LDFLAGS
> unset CFLAGS
> unset CPPFLAHS
> before compilation.
>
> What might be wrong here?
>
> Regards,
> Marcin


