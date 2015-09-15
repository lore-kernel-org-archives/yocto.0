Return-Path: <chris@2net.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28D1DE00CFB; Tue, 15 Sep 2015 01:53:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.227.17.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 303 seconds by postgrey-1.32 at yocto-www;
	Tue, 15 Sep 2015 01:53:38 PDT
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0115E00B72
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 01:53:38 -0700 (PDT)
Received: from [192.168.159.22] ([80.43.50.149]) by mrelayeu.kundenserver.de
	(mreue104) with ESMTPSA (Nemesis) id 0Lh5vD-1YnKbN2dD5-00oTnl for
	<yocto@yoctoproject.org>; Tue, 15 Sep 2015 10:48:34 +0200
To: yocto@yoctoproject.org
From: Chris Simmonds <chris@2net.co.uk>
Organization: 2net
Message-ID: <55F7DB62.20302@2net.co.uk>
Date: Tue, 15 Sep 2015 09:48:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
X-Provags-ID: V03:K0:77K5/FCt/RbOykUBdT73VF5LqUUUHwaGRxSAGsXgUhImaCS3sli
	gjkjGEDal2AdL4TsxoMm3DTr9qoGNVJO2uveSwvlCouZ1Tu+hixIPHXJMi1ZKFDtWU6FUdr
	5J2ef4f5whxVrOh9bFrM2jeULPFKaDmshC/C9Ib5/QVlXYmxAUY+9fBTbWV54W0uh3rQhlo
	pBrkL8uG5l04dTlNNYWbw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:pMsJfdvwS4g=:+CcSJap3h2+alPbQt/stwx
	cxW/CEKfK7A2vcEv9MmIgfQIwBgVpXoo4HEgymgQMLdamcBSFUAywGV3kfiRQqmae83z4j+kP
	cSvwK3JrhrtiE7hxtFtoNqF1gi4tRbYUhdMkv3SXeXwJCusl7wIVkso94C9sQsHm8Rq5fwnhG
	o6q0Xm1hm8yXrAIWgTvEGNY935IBG3Upu2qaDjVxPRplmzGMqe78oTrw2EGyrOu+XhjR0B1QB
	PGRO56xCXBy/gBzgt8z7F+7ZVtYsklOW9e2eIeW4Y+pjCQrQYVLNxNUJ+6c0HnE67O03Anylr
	bLnlLJQ2eszTztaKjpn5sieNAs2oT1ZZ6S3fsIy7XgIfK5J323/RHDya6Ods0p8/GttjJX2ih
	p55jSOVIhvAXqs08+RmaG4MmwGE9Ug8pNSznm701x79KZ8WCjvvpRWc8IZtmZlfnAbx5wvZPx
	89JHqGPTgadZjA+3D66PE5YunJZtqRrHo05gytyLtPmOkqp3I0vdiC7JyAxFLzKYVxGczrOcD
	ive/05+eblgXKql6h1jS1QFdmgai9JmPBG/ImgYsVb2DKsS82MWuywfJIwj3Ak4+gO7F2Oq3K
	TPzGTb4PBhLf7FILgKsiAMRnim5BebpQgb5zYm8jeTlCEI1tLbSUCIqlzGSGQTGjXxaMVw/mW
	ge3Fx1QwQTBf0L8yWsHKDV9ejViN8NYtH2TPLAahFZQ3wIvxrKmBSrpZ2zyxBaH7OgTSrGpho
	DuXWngMSrkPqoX6N
Subject: gcc reports sysroot is /not/exist!
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
X-List-Received-Date: Tue, 15 Sep 2015 08:53:41 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

I am using Yocto fido (1.8) to generate an SDK for a BeaglBone. I
generate the it using the command:

$ bitbake core-image-minimal -c populate_sdk

Having installed the resulting SDK and sourced
/opt/poky/1.8/environment-setup-cortexa8hf-vfp-neon-poky-linux-gnueabi

I find that the sysroot is not set:

$ arm-poky-linux-gnueabi-gcc -print-sysroot
/not/exist

This used to work fine in 1.7 and earlier. It looks like now I have to
use $CC in place of arm-poky-linux-gnueabi-gcc, but that messes up many
Makefiles which set the compiler with something like

CC=$(CROSS_COMPILE)gcc

What to do? Why is gcc not configured with a sysroot any more?

Chris Simmonds.

