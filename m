Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F1BDE00ACE; Wed,  3 May 2017 05:33:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F099E00AA2
	for <yocto@yoctoproject.org>; Wed,  3 May 2017 05:33:31 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	03 May 2017 05:33:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,283,1491289200"; d="scan'208";a="1164019544"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga002.fm.intel.com with ESMTP; 03 May 2017 05:33:29 -0700
To: yocto@yoctoproject.org
References: <CALBpLHZ4h--81Q6J7c_OfX8tSaO9coSa4H4KRohjFDL42Pq=6A@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <21cc3167-c2e0-8832-15d8-abf920cbed5e@linux.intel.com>
Date: Wed, 3 May 2017 15:33:29 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CALBpLHZ4h--81Q6J7c_OfX8tSaO9coSa4H4KRohjFDL42Pq=6A@mail.gmail.com>
Subject: Re: Yocto Beginner Issues When Adding Layers / Recipes
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
X-List-Received-Date: Wed, 03 May 2017 12:33:33 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 05/03/2017 12:58 PM, windswept321 wrote:

> My bblayers.conf customisations:
>
>   /home/aaron/poky/meta-amd/common \
>   /home/aaron/poky/meta-openembedded/meta-networking \
>   /home/aaron/poky/meta-openembedded/meta-python \
>   /home/aaron/poky/meta-openembedded/meta-oe \
>
> Each of these was added to the poky directory using git clone “link”.
> Some are dependencies for meta-networking.
>
> I have added the following to my local.conf:
>
> CORE_IMAGE_EXTRA_INSTALL += "openssh ntp iptables dnsmasq hostapd”
>
> On running bitbake core-image-minimal I get the below error.
> Is there something wrong with my configuration?

What is the git branch of '/home/aaron/poky' directory itself?

Alex


