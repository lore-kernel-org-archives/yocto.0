Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 550D0E00E91; Thu, 18 Jan 2018 01:11:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F231BE00DC3
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 01:11:10 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 Jan 2018 01:11:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,376,1511856000"; d="scan'208";a="20720891"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by FMSMGA003.fm.intel.com with ESMTP; 18 Jan 2018 01:11:09 -0800
To: Andrea Galbusera <gizero@gmail.com>,
	Mathias Rudnik <rudnik.mathias@googlemail.com>
References: <FBE5527A-743B-468F-9CEA-FC1732314AFE@googlemail.com>
	<CAC+thW1kL2F2LKxpnLMTd-YfWZV8KNzDSqpF8q2KdOBENBjt4g@mail.gmail.com>
	<CAC+thW0xBGsXZz-GJQU5f-LbVtUVWmzt5ReUwZr-SG4gvw-eVA@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <20d47e1b-c33b-d7f6-1b9e-f7a6f1e779a0@linux.intel.com>
Date: Thu, 18 Jan 2018 11:05:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAC+thW0xBGsXZz-GJQU5f-LbVtUVWmzt5ReUwZr-SG4gvw-eVA@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Error do_compile libepoxy
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
X-List-Received-Date: Thu, 18 Jan 2018 09:11:11 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 01/18/2018 10:58 AM, Andrea Galbusera wrote:
> 
> Looks like my first guess was not that bad. Reverting below commit,
> which switched to meson build system brought my build back to green.
> Also CC-ing the patch author who might suggest further investigations.
> 
>      libepoxy: convert to meson build
> 

There's probably a missing header include - carefully compare do_compile 
logs in both cases and see how they differ for the failing file. Also 
inspect the file for any conditional define macros and see if they're 
enabled or not in both cases.


Alex

