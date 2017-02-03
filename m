Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 438DCE009BA; Fri,  3 Feb 2017 01:41:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.42 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8C32E009A5
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2017 01:41:05 -0800 (PST)
Received: by mail-wm0-f42.google.com with SMTP id 196so13051089wmm.1
	for <yocto@yoctoproject.org>; Fri, 03 Feb 2017 01:41:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=41DxapBspZqcwkMB4LPVL9BeSuHSxapNP4yYcByqB7Q=;
	b=PqkM2BBM4BlKwlxtVWhdhLTaCiy5+7Lu2ohVcRpxGeaS7n4pC7ekKLAckHbj1P9FJX
	/CxqasA5rAXkKGz78DmQj8VNbaJCE1xyBSAwF+E05gbyyEVunu5cRhfSoB+rzSnqy0OE
	V4mvoZQCtA0dYJ1HPLWBuEHXSISFUeeg6gDle53kNFG/zyFUw/zntBj8H0p9SjkmGo4h
	URB807dsI/T9hCAdaG61tNZKw+xXvm+5fnVC6VO58sDgGlIoR+1VOnCJ8frHiN0PDAHx
	mtuuegnhFBNtJrEofhv4AVUMYUZY0Srdbf7mU+9KOtyuw2UxoXAp3U1iekk4lfwsHx27
	2HvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=41DxapBspZqcwkMB4LPVL9BeSuHSxapNP4yYcByqB7Q=;
	b=e5wEViLRtjuj2kVDmF8QucZE2HJOLII8nab9gaFlB32yRr1biAOVwmtfakBb1nbljk
	jxUTyrxoRfwI13TdykO6lbI5PiKIbyilUolMaLEdxneZL7KBt6Dv/KAF8fn7gK2pjyRE
	c0s7ImjoMcAHzeKplD3PfUDCf35vFf74ykKiheSQo+NYTGU6ZFY+2dH1L8jyoPs3B7zf
	Q4VTCkeIRJ0yyri0fgI3ceLQSQFKqkD2uzis3rinVqpgoxlynHQJZYEm+001qi529xTk
	fiVJi07ntyQ8p+5QYA/nh8w4V2IKdA2kNGpG7B34k9uOd5GiJgh1nGPqeGJquFGRr/W5
	hU1A==
X-Gm-Message-State: AIkVDXL2MYLhOM95iX6CQPDOMrAzRMh9mfoLNJB0kaCBBVQZs38gakzUFhmpkWAJq1zHbQ==
X-Received: by 10.223.129.163 with SMTP id 32mr11116119wra.140.1486114864421; 
	Fri, 03 Feb 2017 01:41:04 -0800 (PST)
Received: from [192.168.2.176] (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114])
	by smtp.gmail.com with ESMTPSA id g75sm2088982wme.5.2017.02.03.01.41.03
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 03 Feb 2017 01:41:03 -0800 (PST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Piotr Lewicki <piotr.lewicki@elfin.de>
Message-ID: <b65a1f16-da6d-bab6-80ca-b1bbd3dda166@elfin.de>
Date: Fri, 3 Feb 2017 10:41:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
Subject: [bitbake][question] Is metadata-revs file content correct?
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
X-List-Received-Date: Fri, 03 Feb 2017 09:41:12 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi all,

Recently I wanted to use buildhistory a bit more, but I've noticed that 
content of metadata-revs file is a bit strange.

I thought that it should be like "${LAYER_NAME} = ${LAYER_REVISION}" but 
I get a lots of blank spaces and then "= ${LAYER_REVISION}".


Can you tell me whether it is desired behaviour and if it is still 
possible to restore the exact image using buildhistory with such a 
metadata-revs?

Below examples of "metadata-revs" and my "bblayers.conf".


Thanks,

Piotr


Example of my metadata-revs file:

meta              = master:b76161a9a890481e8418a34b3250fc2debcb566f
meta-poky         = master:b76161a9a890481e8418a34b3250fc2debcb566f
meta-yocto-bsp    = master:b76161a9a890481e8418a34b3250fc2debcb566f
meta-raspberrypi  = master:68634deeed2a930a15eedd02e6b1de7d1e014d3b
                   = master:5ecbf9bab404af0de7d0f058d1620f40dae0d2d8
                   = master:5ecbf9bab404af0de7d0f058d1620f40dae0d2d8
                   = master:5ecbf9bab404af0de7d0f058d1620f40dae0d2d8
                   = master:5ecbf9bab404af0de7d0f058d1620f40dae0d2d8
                   = master:5ecbf9bab404af0de7d0f058d1620f40dae0d2d8
                   = master:5ecbf9bab404af0de7d0f058d1620f40dae0d2d8
                   = master:c0ba8ab590ba4e17a2a04925cf48915233d4f493


Example of my bblayers.conf:

# POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bblayers.conf
# changes incompatibly
POKY_BBLAYERS_CONF_VERSION = "2"

BBPATH = "${TOPDIR}"
BBFILES ?= ""

LAYERS_DIR = "${TOPDIR}/../layers"

BBLAYERS ?= " \
   ${LAYERS_DIR}/poky/meta \
   ${LAYERS_DIR}/poky/meta-poky \
   ${LAYERS_DIR}/poky/meta-yocto-bsp \
   \
   ${LAYERS_DIR}/meta-raspberrypi \
   ${LAYERS_DIR}/meta-openembedded/meta-oe/ \
   ${LAYERS_DIR}/meta-openembedded/meta-multimedia/ \
   ${LAYERS_DIR}/meta-openembedded/meta-networking/ \
   ${LAYERS_DIR}/meta-openembedded/meta-python/ \
   ${LAYERS_DIR}/meta-openembedded/meta-webserver/ \
   ${LAYERS_DIR}/meta-openembedded/meta-initramfs/ \
   ${LAYERS_DIR}/meta-qt5/ \
   "


