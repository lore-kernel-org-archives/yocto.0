Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E6C1E00C77; Wed, 30 Aug 2017 01:45:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FC73E00C14
	for <yocto@yoctoproject.org>; Wed, 30 Aug 2017 01:45:53 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	30 Aug 2017 01:45:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,448,1498546800"; d="scan'208";a="895461457"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by FMSMGA003.fm.intel.com with ESMTP; 30 Aug 2017 01:45:52 -0700
To: yahia farghaly <yahiafarghaly@gmail.com>, yocto@yoctoproject.org
References: <CABFXn3GQ4-MXfmgBVmi0OwhP0YjJb_2UHf51f_oUTGbzS_b16A@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <b5eadc98-1990-55f5-161e-89ece153bb04@linux.intel.com>
Date: Wed, 30 Aug 2017 11:42:54 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CABFXn3GQ4-MXfmgBVmi0OwhP0YjJb_2UHf51f_oUTGbzS_b16A@mail.gmail.com>
Subject: Re: error in apt-key add
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
X-List-Received-Date: Wed, 30 Aug 2017 08:45:54 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 08/29/2017 08:38 PM, yahia farghaly wrote:
> I am building a linux image using yocto which support deb package 
> manager(apt-get). I created the repo with packages and i want to 
> authorize this repo to my target machine. i followed these steps 
> <https://help.ubuntu.com/community/CreateAuthenticatedRepository> for 
> that purpose. I created the keyFile successfully for the server (host). 
> and when transfer this keyFile to my target and execute apt-key add 
> keyFile, it promotes me the error
> 
>     /usr/bin/apt-key: line 352: comm: command not found 
> 
> i use yocto pyro 17.0.1 and i built for core-image-sato plus adding the 
> recipe gnupg which exist in meta/recipes-support/gnupg
> 
> Why this error ? and possible ways to fix it ?

Signing and authenticating .deb repositories is not supported or tested 
in Yocto. Do not take Ubuntu instructions for it, they are not relevant 
and not likely to work.

You can use .deb repostories without having them signed, or you can 
switch to rpm packaging (and master branch) where signing should work. 
Or you can figure out where that error comes from and fix it and create 
a patchset, but it's up to you to do the investigation and fixing.

Alex

