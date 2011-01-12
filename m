Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 85C8B4C81069
	for <yocto@yoctoproject.org>; Wed, 12 Jan 2011 13:30:43 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 12 Jan 2011 11:30:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,313,1291622400"; d="scan'208";a="876934932"
Received: from unknown (HELO [10.255.14.15]) ([10.255.14.15])
	by fmsmga001.fm.intel.com with ESMTP; 12 Jan 2011 11:30:19 -0800
Message-ID: <4D2E0148.4010205@intel.com>
Date: Wed, 12 Jan 2011 11:30:16 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: =?UTF-8?B?Sm/Do28gSGVucmlxdWUgRnJlaXRhcw==?= <joaohf@gmail.com>
References: <AANLkTim3HcAyatj9qChj0ub5pc6wZL3pobd66ZuwHrth@mail.gmail.com>
In-Reply-To: <AANLkTim3HcAyatj9qChj0ub5pc6wZL3pobd66ZuwHrth@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: ntp client
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 12 Jan 2011 19:30:43 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 01/10/2011 01:23 PM, João Henrique Freitas wrote:
> Hi,
>
> I searched in meta/* but did not found a ntp client like.
>
> busybox have one but yocto don't compiles it, by default.
>
> I can use a busybox.append or change busybox recipe.
>
> In this cases, what is the best to do?
>
João,

If you are creating a layer, then it would be best to create a 
busybox.bbappend file that enables the options you are looking for. You 
can also add an ntp client in your layer, you just need to ensure you 
also add it to the appropriate task or image via a .bbappend file.

Sau!

> Thanks
>


