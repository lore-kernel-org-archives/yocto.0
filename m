Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3C56E00CAA; Fri,  1 Sep 2017 05:54:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72435E00C8B
	for <yocto@yoctoproject.org>; Fri,  1 Sep 2017 05:54:29 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	01 Sep 2017 05:54:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,458,1498546800"; d="scan'208";a="896210363"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by FMSMGA003.fm.intel.com with ESMTP; 01 Sep 2017 05:54:28 -0700
To: yocto@yoctoproject.org, yahia farghaly <yahiafarghaly@gmail.com>
References: <CABFXn3Err-9RR=1mc0UpU-FzpzOWr6dYEyyvc1vd4hcCqn1Kdw@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <e0df598e-6381-4011-fea7-201412bc4add@linux.intel.com>
Date: Fri, 1 Sep 2017 15:51:32 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CABFXn3Err-9RR=1mc0UpU-FzpzOWr6dYEyyvc1vd4hcCqn1Kdw@mail.gmail.com>
Subject: Re: apt-key not found
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
X-List-Received-Date: Fri, 01 Sep 2017 12:54:30 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 09/01/2017 06:17 AM, yahia farghaly wrote:

> So, what the right way to do this ?

You should study how signing RPM/IPK package feeds is done in Yocto, and 
modify the code in the same way. Start from

meta/recipes-core/meta/signing-keys.bb
meta/classes/sign_package_feed.bbclass
meta/lib/oe/package_manager.py (RpmIndexer/OpkgIndexer classes)

Then modify DpkgIndexer class to use apt-key to do the signing in a 
similar way. It even has a stub:

         if self.d.getVar('PACKAGE_FEED_SIGN') == '1':
             raise NotImplementedError('Package feed signing not 
implementd for dpkg')


Alex

