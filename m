Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F945E006B5
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2011 19:42:11 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 01 Dec 2011 19:42:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,281,1320652800"; d="scan'208";a="97741081"
Received: from unknown (HELO [10.255.15.144]) ([10.255.15.144])
	by fmsmga002.fm.intel.com with ESMTP; 01 Dec 2011 19:42:10 -0800
Message-ID: <4ED84912.2000906@linux.intel.com>
Date: Thu, 01 Dec 2011 19:42:10 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CA+5N1gw_Tn0uPj_-YHpj4_3bRm+nFJiemNkp=VjOiHT6_V_bfA@mail.gmail.com>
	<CA+5N1gzpSU1vj5HkUUPisj9_wWUrmg_ReunPmmxj_ER8AgvoJQ@mail.gmail.com>
In-Reply-To: <CA+5N1gzpSU1vj5HkUUPisj9_wWUrmg_ReunPmmxj_ER8AgvoJQ@mail.gmail.com>
Subject: Re: building the examples from "meta-demo"
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
X-List-Received-Date: Fri, 02 Dec 2011 03:42:11 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 01/12/11 19:30, David Smoot wrote:
> On Thu, Dec 1, 2011 at 8:18 PM, David Smoot <davidsmoot@gmail.com> wrote:
> <snip background>
>>
>> Obviously I have missed a step to tell poky how to find that image but
>> so far I have not been able to google the answer to my mistake.
>>
>> Thanks in advance for any answers and thanks for such a cool tool.
>>
>> David Smoot
> 
> I think I solved my original question but ran into another problem:
> 
> In my build directory, I edited conf/bblayer.conf to add the path to
> the "meta-demo" folder to the BBLAYERS variable.
> 
> That got me further but it appears now that the meta-demo recipes
> reference things I do not have in my poky tree.  I am guessing that
> the demo was coded for the yocto 1.0 release and is broken by the
> yocto 1.1 structure.
> 
> I got an error "ERROR: Could not include required file
> recipes-core/images/core-image-live.inc".  I did not need a live image
> for what I was working on so I simply removed the -live recipes and
> that got me past that error but to a new error:
> ERROR: No recipes available for:
> /opt/yocto/poky/meta-demo/recipes-kernel/linux/linux-wrs_git.bbappend
> /opt/yocto/poky/meta-demo/recipes-kernel/linux/linux-yocto_git.bbappend"
> 
> So two questions:
> Is my assumption about 1.0 vs 1.1 appear to be correct or is there
> another source of error (I am very new at Yocto)?

This is correct.

> Has anyone ported the upnp demo apps to 1.1 yet?

Not that I'm aware of, it is on my to do list though.

Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre

