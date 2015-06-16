Return-Path: <mar.krzeminski@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C187AE00939; Tue, 16 Jun 2015 11:16:34 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.170 listed in list.dnswl.org]
Received: from mail-lb0-f170.google.com (mail-lb0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A42ADE00496
	for <yocto@yoctoproject.org>; Tue, 16 Jun 2015 11:16:31 -0700 (PDT)
Received: by lbbti3 with SMTP id ti3so16344177lbb.1
	for <yocto@yoctoproject.org>; Tue, 16 Jun 2015 11:16:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=jCM1pMGYFR6UydKHQ3zBcesr8y+O74qjEeqS+Y/YNU4=;
	b=oB9bbqQ7e8qmsHUJPpJqXqOYAIxDUKUa9FsBKkY1vH/mLf1cFpNygcENCof/WL4pVA
	tTo/l6tam31M6wbYygsZFb06xyyrj2S6rcD5hySYWXXd2F7B6zA9yL9k/LJGWqBxZnJk
	0umJ2QuO1T5PAyVV3pkG3jwB5VQNYGhQBF/ccchpsEcXT0CStT2Eq0H68GzNZZtyBIgK
	la90iS8nK38+SBSzGvoD1Sednuf3EJHY3Ayv2GmtYSlwYWLIXIFZjKkDx9+gZuPVGxB+
	tYJgy0K3dpyWnRvAfUqScb9uCv29/ve2WnfMnMUkM9GDuyJ/TGssN+y249ulMyQ8El70
	pK1g==
X-Received: by 10.112.139.130 with SMTP id qy2mr3048924lbb.21.1434478588931;
	Tue, 16 Jun 2015 11:16:28 -0700 (PDT)
Received: from [192.168.100.35] (a91-154-88-10.elisa-laajakaista.fi.
	[91.154.88.10])
	by mx.google.com with ESMTPSA id u15sm402417lal.38.2015.06.16.11.16.27
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 16 Jun 2015 11:16:27 -0700 (PDT)
Message-ID: <558067FA.7080105@gmail.com>
Date: Tue, 16 Jun 2015 21:16:26 +0300
From: "mar.krzeminski" <mar.krzeminski@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Can not compile u-boot with meta toolchain
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
X-List-Received-Date: Tue, 16 Jun 2015 18:16:34 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I've got problem with compiling u-boot usind SDK.
I am building image for my platform, then I am running commnad bitbake 
meta-toolchain.
In result I've got:
   CC      examples/standalone/hello_world.o
   LD      examples/standalone/hello_world
arm-poky-linux-gnueabi-ld.bfd: cannot find -lgcc
make[2]: *** [examples/standalone/hello_world] Error 1
scripts/Makefile.build:421: recipe for target 'examples/standalone' failed
make[1]: *** [examples/standalone] Error 2
Makefile:1145: recipe for target 'examples' failed
make: *** [examples] Error 2

In yocto environment u-boot builds fine.
I've also tried
unset LDFLAGS
unset CFLAGS
unset CPPFLAHS
before compilation.

What might be wrong here?

Regards,
Marcin

