Return-Path: <srae@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D65DE007F2; Thu, 21 Jan 2016 14:16:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	URI_HEX autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [216.31.210.63 listed in list.dnswl.org]
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0083]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Thu, 21 Jan 2016 14:16:55 PST
Received: from mail-gw2-out.broadcom.com (mail-gw2-out.broadcom.com
	[216.31.210.63])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6B53E007B5
	for <yocto@yoctoproject.org>; Thu, 21 Jan 2016 14:16:55 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.22,327,1449561600"; d="scan'208";a="86136812"
Received: from irvexchcas08.broadcom.com (HELO
	IRVEXCHCAS08.corp.ad.broadcom.com) ([10.9.208.57])
	by mail-gw2-out.broadcom.com with ESMTP; 21 Jan 2016 14:57:37 -0800
Received: from IRVEXCHSMTP1.corp.ad.broadcom.com (10.9.207.51) by
	IRVEXCHCAS08.corp.ad.broadcom.com (10.9.208.57) with Microsoft SMTP
	Server (TLS) id 14.3.235.1; Thu, 21 Jan 2016 14:15:51 -0800
Received: from mail-irva-13.broadcom.com (10.10.10.20) by
	IRVEXCHSMTP1.corp.ad.broadcom.com (10.9.207.51) with Microsoft SMTP
	Server id 14.3.235.1; Thu, 21 Jan 2016 14:15:51 -0800
Received: from [10.136.4.105] (unknown [10.136.4.105])	by
	mail-irva-13.broadcom.com (Postfix) with ESMTP id AC64540FE9;
	Thu, 21 Jan 2016 14:12:00 -0800 (PST)
Message-ID: <56A15895.3050508@broadcom.com>
Date: Thu, 21 Jan 2016 14:15:49 -0800
From: Steve Rae <srae@broadcom.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
Subject: [Hob] failed to add "packagegroup-core-full-cmdline" properly
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
X-List-Received-Date: Thu, 21 Jan 2016 22:16:56 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

- using jethro
Running Hob:
- machine = raspberrypi2
- image = core-image-sato
- edit image recipe - include: packagegroup-core-full-cmdline
Build packages: is successful (1997 packages)
Build image: fails (right at the start) with:
       Nothing RPROVIDES 'liborc-test-0.4' (but 
/home/srae/work/poky/hob/recipes/images/core-image-sato-edited-20160121-140708.bb 
RDEPENDS on or otherwise requires it)

Any ideas?
Thanks in advance, Steve

