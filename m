Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB5C5E00994; Wed, 28 Mar 2018 04:30:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A072E00529
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 04:30:27 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	28 Mar 2018 04:30:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,371,1517904000"; d="scan'208";a="186701224"
Received: from anmitta2-mobl1.gar.corp.intel.com (HELO [10.255.163.203])
	([10.255.163.203])
	by orsmga004.jf.intel.com with ESMTP; 28 Mar 2018 04:30:25 -0700
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>,
	Yocto Project <yocto@yoctoproject.org>
References: <CAGAf8Lyfz2oZ9EgWmZ1km4qQn-Kdaqh_1q+jvfv1anR-HLZXiw@mail.gmail.com>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <c35b19d8-7e06-57bb-12ad-3a78a6293794@intel.com>
Date: Wed, 28 Mar 2018 19:30:22 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CAGAf8Lyfz2oZ9EgWmZ1km4qQn-Kdaqh_1q+jvfv1anR-HLZXiw@mail.gmail.com>
Subject: Re: ssh-copy-id is part of which package?
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
X-List-Received-Date: Wed, 28 Mar 2018 11:30:28 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Zoran,

On 03/28/2018 07:18 PM, Zoran Stojsavljevic wrote:
> Hello to all,
> 
> Seems, that command:
> IMAGE_INSTALL_append = " openssh"
> 
> Does install ssh, sshd, but not a ssh-copy-id?!
> 
> Strange... ssh-copy-id should be part of the openssh!?
> 
> http://lists.openembedded.org/pipermail/openembedded-commits/2015-January/170233.html
> 
> root@beaglebone:/root# which ssh-copy-id
> root@beaglebone:/root# which ssh
> /usr/bin/ssh
> root@beaglebone:/root# which sshd
> /usr/sbin/sshd
> root@beaglebone:/root#

You can try:

oe-pkgdata-util find-path "/*ssh-copy-id"

which gives me:

openssh-misc: /usr/bin/ssh-copy-id

