Return-Path: <wmills@ti.com>
Received: from comal.ext.ti.com (comal.ext.ti.com [198.47.26.152])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C87FDE00283
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2012 10:04:32 -0700 (PDT)
Received: from dlelxv30.itg.ti.com ([172.17.2.17])
	by comal.ext.ti.com (8.13.7/8.13.7) with ESMTP id q6VH4T1M022222;
	Tue, 31 Jul 2012 12:04:29 -0500
Received: from DFLE72.ent.ti.com (dfle72.ent.ti.com [128.247.5.109])
	by dlelxv30.itg.ti.com (8.13.8/8.13.8) with ESMTP id q6VH4TTp017577;
	Tue, 31 Jul 2012 12:04:29 -0500
Received: from dlelxv22.itg.ti.com (172.17.1.197) by dfle72.ent.ti.com
	(128.247.5.109) with Microsoft SMTP Server id 14.1.323.3;
	Tue, 31 Jul 2012 12:04:29 -0500
Received: from gtwmills.gt.design.ti.com (gtwmills.gt.design.ti.com
	[158.218.102.52])	by dlelxv22.itg.ti.com (8.13.8/8.13.8) with ESMTP id
	q6VH4S4S021984;	Tue, 31 Jul 2012 12:04:28 -0500
Message-ID: <5018101C.6020604@ti.com>
Date: Tue, 31 Jul 2012 13:04:28 -0400
From: William Mills <wmills@ti.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.27) Gecko/20120216 Thunderbird/3.1.19
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <alpine.DEB.2.02.1207310639500.15163@oneiric>
	<3380776.1Rc0Bx5NFy@helios>
In-Reply-To: <3380776.1Rc0Bx5NFy@helios>
Cc: yocto@yoctoproject.org
Subject: Re: what's the state of building for a (OMAP4460)	pandaboard ES?
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
X-List-Received-Date: Tue, 31 Jul 2012 17:04:33 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit


On 07/31/2012 11:06 AM, Paul Eggleton wrote:
> On Tuesday 31 July 2012 06:43:17 Robert P. J. Day wrote:
>>    i notice that the current meta-ti layer has a pandaboard.conf file
>> that refers specifically to the OMAP 4430 -- the original panda.
>> this weekend, i'd like to build, say, a core-image-minimal for my ES.
>> is there a writeup anywhere that documents what issues i might run
>> into regarding the panda versus the panda ES?  thanks.
>
> I'm not sure but I think you probably need to direct this question to the
> meta-ti mailing list.
>
> https://lists.yoctoproject.org/listinfo/meta-ti
>

I did see this question, I just don't have an answer.  We are seeing if 
we can get a part time maintainer for panda lined up.  Right now it is 
just something a few volunteers did a few months ago.  There are no 
product level plans for panda and Yocto.

I hope to get panda on the list of platforms for nightly (or at least 
weekly) builds.  That way the status will be visible.


