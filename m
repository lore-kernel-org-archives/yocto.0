Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41675E007A0; Fri, 31 Oct 2014 10:44:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 194F1E00749
	for <yocto@yoctoproject.org>; Fri, 31 Oct 2014 10:44:03 -0700 (PDT)
Received: by mail-ie0-f169.google.com with SMTP id tr6so1798072ieb.0
	for <yocto@yoctoproject.org>; Fri, 31 Oct 2014 10:44:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=em9hSIk9TNCVbsFeeyIy3OkLawHCCBcUucnXy93Yglc=;
	b=oYobQkX3qahioKqECnIAwMbAWiKapBtaEEgm3JD4jie43XZ8QnuJ9abE+alWEBhU3l
	HR8fwU/6S8vGlPKdPKYnDkK2A0Mq8Ve2ruWw4ciSWmIkRhYwHTSRja8q64CbsKyijsaS
	DIVIkn927BZi7j2vNCXLcJB2kX6CTVFoQ1YPLmKVwH5HQr+W8KGcS8ukntUvCod0f+sQ
	2RlwnZxcG0WcRxTN0vEfHt/9EUbRFcMRsbwsf95HTOjDdQ/oZS60t7rcWwrYaB+Xwtvr
	eyJ/SG9K76SraOkdNx2rzgLzvI8RtGSdeW1uXkFOvfXn4cFn3Pkzocc/0jkeZcC8J+YY
	FKWA==
X-Received: by 10.43.2.4 with SMTP id ns4mr9751014icb.13.1414777442956;
	Fri, 31 Oct 2014 10:44:02 -0700 (PDT)
Received: from [192.168.0.50]
	(CPE0026f3330aca-CM0026f3330ac6.cpe.net.cable.rogers.com.
	[99.231.92.7])
	by mx.google.com with ESMTPSA id xb4sm5859234igc.11.2014.10.31.10.44.01
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 31 Oct 2014 10:44:02 -0700 (PDT)
Message-ID: <5453CA61.5090902@gmail.com>
Date: Fri, 31 Oct 2014 13:44:01 -0400
From: nick <xerofoify@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Angstrom Build Failing
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
X-List-Received-Date: Fri, 31 Oct 2014 17:44:10 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Greetings,
I am getting a failing build after cloning the angstrom build scripts. My build log is pasted below.
Cheers Nick 
nick@nick-System-Product-Name:/media/nick/Build_Drive/setup-scripts$ MACHINE=beaglebone ./oebb.sh update
Processing bitbake: Current branch 1.20 is up to date.
Processing meta-angstrom: Current branch angstrom-v2013.12-yocto1.5 is up to date.
Processing meta-openembedded: Current branch angstrom-staging-yocto1.5 is up to date.
Processing meta-beagleboard: Current branch dora is up to date.
Processing meta-ti: Current branch angstrom-staging-yocto1.5 is up to date.
Processing meta-ettus: Fixed to revision 5a6a642f6707dc42a5210dbbf01d2bdfd869d4b0, skipping update
Processing meta-fsl-arm: Current branch angstrom-staging-yocto1.5 is up to date.
Processing meta-fsl-arm-extra: Current branch dora is up to date.
Processing meta-nslu2: Fixed to revision bdcb4297ddb22f4eecddd4d8436cf9b6c6111922, skipping update
Processing meta-smartphone: Fixed to revision 537d0c2ab41284012e1ba79716b085a861a6812a, skipping update
Processing meta-intel: Current branch dora is up to date.
Processing meta-xilinx: Fixed to revision 21c3cd3f058d736742ebc23a7a954f23456fbea5, skipping update
Processing meta-openpandora: Fixed to revision 53ad3e60e4ed4fc7b946a2130da4bb9a8671341c, skipping update
Processing meta-raspberrypi: Current branch dora is up to date.
Processing meta-atmel: Current branch angstromv2013.12-staging is up to date.
Processing meta-handheld: Fixed to revision 5b5e68a93aae1016f5ac1d057a721b2dbf30b8d8, skipping update
Processing meta-opie: Fixed to revision b241408b31c2ffd941b8b38bd385136ef675a703, skipping update
Processing meta-java: Current branch dora is up to date.
Processing meta-browser: Fixed to revision fc3969f63bda343c38c40a23f746c560c4735f3e, skipping update
Processing meta-mono: Fixed to revision ac286b1682e6bcc486ceb30ef90a936949bbfeab, skipping update
layer repository name: meta-kde
layer uri: git://gitorious.org/openembedded-core-layers/meta-kde.git
layer branch/revision: master/f45abfd4d87b0132a2565499392d2d49f465d847

Layer checkout missing at /media/nick/Build_Drive/setup-scripts/sources/meta-kde, creating one
Cloning into '/media/nick/Build_Drive/setup-scripts/sources/meta-kde'...
fatal: protocol error: expected sha/ref, got '
----------------------------------------------
Cannot find repository /openembedded-core-layers/meta-kde.git
----------------------------------------------'
/media/nick/Build_Drive/setup-scripts/scripts/layerman: line 19: cd: /media/nick/Build_Drive/setup-scripts/sources/meta-kde: No such file or directory
fatal: Could not parse object 'f45abfd4d87b0132a2565499392d2d49f465d847'.
Layers present in repository:
find: `/media/nick/Build_Drive/setup-scripts/sources/meta-kde': No such file or directory

Processing meta-kde: /media/nick/Build_Drive/setup-scripts/scripts/layerman: line 79: cd: /media/nick/Build_Drive/setup-scripts/sources/meta-kde: No such file or directory
Processing meta-linaro: Current branch dora is up to date.
Processing meta-minnow: Current branch dora is up to date.
Processing meta-sunxi: Fixed to revision f1e777d5526ea7c7a4f3a828b21d26c2c0650b83, skipping update
Processing meta-qt5: Current branch dora is up to date.
Processing meta-ros: Fixed to revision 64c8b5edb221263e7fac7c03629c730ade422dff, skipping update
Processing meta-uav: Fixed to revision 6f663cc32532ae66dd6c06d3d79c0f3578975a6c, skipping update
Processing meta-dominion: Current branch master is up to date.
Processing meta-exynos: Fixed to revision ac21b106ce5c4c928f62e8f72ebeac9b02d113e2, skipping update
Processing meta-telephony: Fixed to revision f71f5ea031d96a5a84bde4531974542ae49f8bee, skipping update
Processing meta-qt5: Current branch dora is up to date.
Processing openembedded-core: Current branch angstrom-staging-yocto1.5 is up to date.

