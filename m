Return-Path: <chris@2net.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 582FBE00CE8; Tue, 15 Sep 2015 02:25:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.227.126.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 310 seconds by postgrey-1.32 at yocto-www;
	Tue, 15 Sep 2015 02:25:55 PDT
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07EEBE00B72
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 02:25:55 -0700 (PDT)
Received: from [192.168.159.22] ([80.43.50.149]) by mrelayeu.kundenserver.de
	(mreue004) with ESMTPSA (Nemesis) id 0MUjkW-1Z80aE03tU-00YDIs;
	Tue, 15 Sep 2015 11:20:42 +0200
References: <55F7DB62.20302@2net.co.uk>
	<22897052.oHQR6DBFiy@peggleto-mobl.ger.corp.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
From: Chris Simmonds <chris@2net.co.uk>
Organization: 2net
Message-ID: <55F7E2E7.7050609@2net.co.uk>
Date: Tue, 15 Sep 2015 10:20:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <22897052.oHQR6DBFiy@peggleto-mobl.ger.corp.intel.com>
X-Provags-ID: V03:K0:lm8ziyAuGg5qERCqVCKdvYcyi2kMKLGuTaRYSjLw+6Lc4pj5JIB
	HKA37ppX7+wwEUUSsbbJLrGuFI745ACoFwJ9f789zmH3cm5trg2RNkX9JrNztb8VQ4TloFd
	WSbYiWwMCwlrG1CmMgPe+pgLral2SGWUor15c3/yiW5oKCXXfopIDRotxJ6Wl9dXttjSAj3
	IqTE7U/WVorOrL+HdMnkw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:jTOCfwn5Is0=:xY17+Fn1Qg0dVSHcR3hg6G
	xlhFicpzZMVy9KFv5qQK0TbU46srozf0RHhu45u3Ul7e02a81ZH5vFZKXE+S9DUmQewSwNxjM
	FRLwwhQujBY9rd+T0uXt/mtdTk/bDYz6Zy5koCRABj2iZJMQGb7PYunZU70q5a9vkeGqdRHzs
	8jvZWIY1u0nrH7WU4/gfrvWNCOYcu1Xeoipt74dayc+UHZszMJe6REi33LvdbCjJgCh7vuiYW
	RU7vwxnlslaeIpgbEYKqcInsISXhJj16a38DQRo3rupvSQVpq1/qTZdq3GnLm590zBd7N4Ali
	GbzqXTB9ODKM57V0AQVF1MtR2crd2pm/W2DU0o++Vh984WgICuB31wJ5mmoiSy5KI7cFrfnXB
	izSCPMu7DuEUvs6/M5emQGmjYQUlB+RpOXMzG/C1Vyn6AP7jDH65yyOjeZ3+YupzrkcQCDfkZ
	viIWnleD+hKWnFpxVZeyb+LZO48t8Kq5Q5HKmgJA1ovkiuCnTH2wN+pgsxd75Tv+/tBpgr8eX
	PkT2g0w41E2Vu1dZ0mjeL9DbdDOQVfYrwh+l+XtQkyuAhrGwkbtGlOyRGPsJoLfRHbSbPjaSP
	/OIaDCR4lkiXBHmotydGkeQJLG/qTJZEexlTINc/DeqZD75ZnfQg2sVhi7pf3ZQMbBkK8YOZj
	a0MIjcFANfaXaunMFhpN+c09YT+IXtQCMusoHBuy8PKLcqxJp/TqKc6ULwDEqcp5LTI5y2+zq
	r4ag2Wa4igL6XSHu
Cc: yocto@yoctoproject.org
Subject: Re: gcc reports sysroot is /not/exist!
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: chris@2net.co.uk
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 15 Sep 2015 09:25:58 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 15/09/15 09:58, Paul Eggleton wrote:
> Hi Chris,
> 
> On Tuesday 15 September 2015 09:48:34 Chris Simmonds wrote:
>> I am using Yocto fido (1.8) to generate an SDK for a BeaglBone. I
>> generate the it using the command:
>>
>> $ bitbake core-image-minimal -c populate_sdk
>>
>> Having installed the resulting SDK and sourced
>> /opt/poky/1.8/environment-setup-cortexa8hf-vfp-neon-poky-linux-gnueabi
>>
>> I find that the sysroot is not set:
>>
>> $ arm-poky-linux-gnueabi-gcc -print-sysroot
>> /not/exist
>>
>> This used to work fine in 1.7 and earlier. It looks like now I have to
>> use $CC in place of arm-poky-linux-gnueabi-gcc, but that messes up many
>> Makefiles which set the compiler with something like
>>
>> CC=$(CROSS_COMPILE)gcc
>>
>> What to do? Why is gcc not configured with a sysroot any more?
> 
> AIUI this had to be done in order to have a per-architecture compiler rather 
> than a per-machine one. I believe if you use make -e then variables set in the 
> environment will take precedence over those set in the makefile, which will 
> allow the CC value set by the SDK's environment setup script to be used.
> 
> (If we haven't documented this somewhere, we definitely ought to.)
> 
> Cheers,
> Paul
> 

Well, that works as far as it goes, but it also overrides my CFLAGS,
LDFLAGS and so on, so I still have to change my Makefiles, of which
there are many.

Also, I am not convinced this is a step in the right direction. I expect
to be able to compile a simple program using:

$ gcc hello.c -o hello

But with this new cross compiler setup, this happens:

$ arm-poky-linux-gnueabi-gcc hello.c -o hello
hello.c:1:19: fatal error: stdio.h: No such file or directory
 #include <stdio.h>
                   ^
compilation terminated.


Which violates the law of least astonishment.
Chris.

