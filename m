Return-Path: <scott.a.garman@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3623D4C80FD4
	for <yocto@yoctoproject.org>; Fri, 12 Nov 2010 12:52:45 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 12 Nov 2010 10:52:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,188,1288594800"; d="scan'208";a="856943122"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by fmsmga001.fm.intel.com with ESMTP; 12 Nov 2010 10:52:44 -0800
Received: from [10.255.13.72] (10.255.13.72) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Fri, 12 Nov 2010 11:52:44 -0700
Message-ID: <4CDD8CFB.4030606@intel.com>
Date: Fri, 12 Nov 2010 10:52:43 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <AANLkTi=77Owty-Qf1J8-GeNv17ZBjE98YNYGxuH4-_ek@mail.gmail.com>	<B08D4353009C0E4FB5FE1A4D0041EBC4B20453@orsmsx001.amr.corp.intel.com>	<AANLkTik1hgwSfbLxndtJq93KW0Q312V4i8hCXEn6PTDo@mail.gmail.com>	<B08D4353009C0E4FB5FE1A4D0041EBC4B20774@orsmsx001.amr.corp.intel.com>
	<AANLkTikP1bEu+QqHTEh9zYcO3K2ie5+dq_f3fq+=LK-H@mail.gmail.com>
In-Reply-To: <AANLkTikP1bEu+QqHTEh9zYcO3K2ie5+dq_f3fq+=LK-H@mail.gmail.com>
Subject: Re: Problem in running poky-qemu
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
X-List-Received-Date: Fri, 12 Nov 2010 18:52:45 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/12/2010 03:31 AM, sachin kumar wrote:
> Hi:
>
> i am sorry, again i am getting same message.

Sachin,

Please also see my reply to this thread. Try adding both "qemuppc" and 
"ext3" to the list of options you're passing to poky-qemu. I was able to 
reproduce your problem and workaround it by adding those two options.

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

