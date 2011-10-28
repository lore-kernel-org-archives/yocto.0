Return-Path: <josh@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3717AE0140B
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 09:47:48 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 28 Oct 2011 09:47:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,419,1315206000"; d="scan'208";a="31121126"
Received: from unknown (HELO [10.255.15.141]) ([10.255.15.141])
	by AZSMGA002.ch.intel.com with ESMTP; 28 Oct 2011 09:47:47 -0700
Message-ID: <4EAADCB3.7060306@linux.intel.com>
Date: Fri, 28 Oct 2011 09:47:47 -0700
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAP7cwtu-T9LdUy78MSG+JOanSHw6UTK5D-4zFu-bVzsRp9XwwA@mail.gmail.com>
	<4EAAC008.4050406@windriver.com>
	<CAP7cwttTXcGySrqmKvv+7saHFyF0xuUczY8h5693f232RCA_Sg@mail.gmail.com>
	<4EAAD708.5030909@windriver.com>
	<CAP7cwtvD_vM8VWa5AvAhgVBTyPUSeZ1VuHrdTgzwDkQ=C49k5A@mail.gmail.com>
In-Reply-To: <CAP7cwtvD_vM8VWa5AvAhgVBTyPUSeZ1VuHrdTgzwDkQ=C49k5A@mail.gmail.com>
Subject: Re: building and using yocto 1.1
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
X-List-Received-Date: Fri, 28 Oct 2011 16:47:48 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 28/10/11 09:39, Xianghua Xiao wrote:
> I do want to point out that:
> 1.1 is 12 hours while 1.0 was 8 hours, using the same machine on the
> same network, not sure why.
> input under sato does not work, it's showing some non-English letters
> while i type.

The build time issue is known, we're doing more work (building more
things) in 1.1 - however, reducing build time is a primary goal and I
expect there to be a reduction in build time by the time 1.2 is released.

Could you file a bug for your input issue? That way it's more likely
that someone with the appropriate skill set will be made aware of it.

http://bugzilla.yoctoproject.org

Thanks,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre

