Return-Path: <sveinse@seldal.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BBEFE00CF5; Fri, 22 Sep 2017 12:23:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [194.63.252.55 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.domeneshop.no (smtp.domeneshop.no [194.63.252.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AC5FE00B53
	for <yocto@yoctoproject.org>; Fri, 22 Sep 2017 12:23:46 -0700 (PDT)
Received: from [2a01:79d:7376:8270:1041:68bf:d6ea:d6bc] (port=46586)
	by smtp.domeneshop.no with esmtpsa
	(TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
	(envelope-from <sveinse@seldal.com>) id 1dvTY8-0006Bk-UU
	for yocto@yoctoproject.org; Fri, 22 Sep 2017 21:23:44 +0200
To: yocto@yoctoproject.org
From: Svein Seldal <sveinse@seldal.com>
Message-ID: <a99fae10-eac4-ed8b-a17d-bee1dc797fa5@seldal.com>
Date: Fri, 22 Sep 2017 21:23:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
Subject: Workdir of qmake5 recipes in Pyro
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
X-List-Received-Date: Fri, 22 Sep 2017 19:23:47 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi

I have a qt5 recipe which is built for a imx6 system with 
MACHINE=lm_cm-poky-linux-gnueabi). The recipe sp.bb contains:

     include qmake5
     # PACKAGE_ARCH = "${MACHINE_ARCH}"

When I build this on Krogoth I find the build for my recipe under:

    tmp/work/cortexa9hf-neon-poky-linux-gnueabi/sp/

I notice that qtbase is found under:

    tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/qtbase/

When I've changed Poky to Pyro, I noticed that my recipe is now build in:

    tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/sp/

but I haven't made any changes to my recipe. All of my other non-qt 
recipes still place their build output in the other directory.

Why does this change happen? Am I missing something, e.g. a PACKAGE_ARCH 
statement?


Best regards,
Svein

