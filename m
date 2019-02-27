Return-Path: <jean-christian.derivaz@innodelec.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E186BE00D04; Wed, 27 Feb 2019 04:17:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.147.79.142 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from europa.tizoo.com (europa.tizoo.com [212.147.79.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D45CE00CEA
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 04:16:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=innodelec.ch; s=default; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Date:Message-ID:To:Subject:From:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=hPm8q8NYxGUQx0Q3XeCxDgE0BEBv1TRCHftdIOFwfTk=;
	b=Z3sXKwrK2i9zaueEo4tT4P76Z5
	5MivUVJcfkfdLv2nqeTory5PkCYnjTMi9mj1sES81M6+1yb3lAFIIrx7LKGe90it6Vdv3K2mWvhTj
	WxQe9GKsxePY0KLnzUHb4pu8SYBvg5Kx4i6Hh3ISnfZsGhEqfdYA8md5L9VMZd0LznayA2TultLMp
	fJetVS9Q7nQZA+tTOoARn2HLg/uDqUnL2BcsJ1pYuleSBummqp88AsQMDW6WMbFeBHwGQ8BaOcLHX
	wM/DkCOymBnc0O624SM6Nt7D21I39Jf3jD2MnKgkNV9LiNvxiODTj2v4AjscXqHoWU5qrY0AoadzU
	K1RQ3rPA==;
Received: from [213.221.150.139] (port=53266 helo=[10.0.33.10])
	by europa.tizoo.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.91)
	(envelope-from <jean-christian.derivaz@innodelec.ch>)
	id 1gyy8u-002DFO-LT
	for yocto@yoctoproject.org; Wed, 27 Feb 2019 13:16:57 +0100
From: Jean-Christian de Rivaz <jean-christian.derivaz@innodelec.ch>
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <63908e27-9243-16f9-aa65-e0c0d3e23af1@innodelec.ch>
Date: Wed, 27 Feb 2019 13:16:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.5
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - europa.tizoo.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - innodelec.ch
X-Get-Message-Sender-Via: europa.tizoo.com: authenticated_id:
	jean-christian.derivaz@innodelec.ch
X-Authenticated-Sender: europa.tizoo.com: jean-christian.derivaz@innodelec.ch
Subject: Removing busybox
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
X-List-Received-Date: Wed, 27 Feb 2019 12:17:02 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi all,

After reading the thread "Removing busybox completely from the generated
image" I tested to reproduce the method but this doesn't work as expected.

git clone git://git.yoctoproject.org/poky -b thud
cd poky
echo 'require conf/distro/poky.conf' > meta-poky/conf/distro/poky-ng.conf
echo 'DISTRO = "poky-ng"' >> meta-poky/conf/distro/poky-ng.conf
echo 'VIRTUAL-RUNTIME_base-utils = ""' >> meta-poky/conf/distro/poky-ng.conf
sed -i 's/^DISTRO.*/DISTRO = "poky-ng"/' conf/local.conf
bitbake core-image-minimal
runqemu core-image-minimal kvm

After login as root there still a lot of links to busybox inside /sbin/
/bin/ /usr/sbin/ and /usr/bin/ .

Can someone provides a working method ?

Best Regards,

Jean-Christian de Rivaz


