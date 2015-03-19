Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35A0AE0092E; Thu, 19 Mar 2015 05:50:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1BEAE008CE
	for <yocto@yoctoproject.org>; Thu, 19 Mar 2015 05:50:08 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id DAC8027E1DC;
	Thu, 19 Mar 2015 12:50:05 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id VPRgvI7OELXp; Thu, 19 Mar 2015 12:50:05 +0000 (UTC)
Received: from [192.168.1.16] (AMarseille-651-1-76-237.w109-208.abo.wanadoo.fr
	[109.208.171.237])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id EDDB727E1DB;
	Thu, 19 Mar 2015 12:50:04 +0000 (UTC)
Message-ID: <550AC598.6070801@dynamicdevices.co.uk>
Date: Thu, 19 Mar 2015 13:48:24 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Enric Balletbo i Serra <eballetbo@gmail.com>
References: <1426688582-8302-1-git-send-email-enric.balletbo@collabora.com>
In-Reply-To: <1426688582-8302-1-git-send-email-enric.balletbo@collabora.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-mono][PATCH] mono: Support to build mono without X support.
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
X-List-Received-Date: Thu, 19 Mar 2015 12:50:11 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 18/03/2015 15:23, Enric Balletbo i Serra wrote:
> Use PACKAGECONFIG to build a version of mono with or without X support in
> function of x11 DISTRO_FEATURES.
>
> Tested on qemux86 (mono using X) and imx6 board (mono without X)
>
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

Merged. Thanks Enric.

Alex


