Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4085AE00942; Wed, 18 Apr 2018 23:47:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA9A4E00756
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 23:47:06 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w3J6l4pq010821
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 18 Apr 2018 23:47:04 -0700 (PDT)
Received: from localhost.corp.ad.wrs.com (128.224.163.240) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.361.1; Wed, 18 Apr 2018 23:47:04 -0700
To: "Burton, Ross" <ross.burton@intel.com>
References: <cover.1524049072.git.liezhi.yang@windriver.com>
	<CAJTo0LaXjmRt1fo3+-6_6X7mxJ7E8_itdRGYygGEqAT5NcASQg@mail.gmail.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <2d7c0a0d-4d78-3610-e6b3-a7d14ef4efda@windriver.com>
Date: Thu, 19 Apr 2018 14:49:02 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LaXjmRt1fo3+-6_6X7mxJ7E8_itdRGYygGEqAT5NcASQg@mail.gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: [PATCH 0/4][layerindex-web] bug fix and performance improve
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
X-List-Received-Date: Thu, 19 Apr 2018 06:47:07 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit


Hi Ross,

On 04/18/2018 07:12 PM, Burton, Ross wrote:
> On 18 April 2018 at 12:04, Robert Yang <liezhi.yang@windriver.com> wrote:
>>    fixup! update: don't stop on unsatisfied layer dependencies
> 
> Pretty sure this isn't what you intended.

Thanks, but this is intended, I used:

$ git commit --fixup=8dd24abf99578e3d2572062ca04dbeac4321b2ea

While the 8dd24abf99578e3d2572062ca04dbeac4321b2ea is made by Paul,
I use this way to specify what it fixes, I can update the subject line
if this is not acceptable.

// Robert

> 
> Ross
> 

