Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2C5CF4C8007E
	for <yocto@yoctoproject.org>; Sun, 13 Feb 2011 13:27:07 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1DJR5Qs028183;
	Sun, 13 Feb 2011 11:27:05 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Sun, 13 Feb 2011 11:27:04 -0800
Received: from Macintosh-5.local ([172.25.36.226]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Sun, 13 Feb 2011 11:27:04 -0800
Message-ID: <4D583088.9000805@windriver.com>
Date: Sun, 13 Feb 2011 13:27:04 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: "Ke, Liping" <liping.ke@intel.com>
References: <789F9655DD1B8F43B48D77C5D30659733294D0BE@shsmsx501.ccr.corp.intel.com>	<789F9655DD1B8F43B48D77C5D306597332C18774@shsmsx501.ccr.corp.intel.com>	<1865303E0DED764181A9D882DEF65FB68629835F3E@shsmsx502.ccr.corp.intel.com>	<4D56CCCD.6040106@windriver.com>	<C7D623A5-69C2-4318-8C2F-5792C66391BD@dominion.thruhere.net>	<4D56DCB5.2070205@mlbassoc.com>	<4D570BE2.4020900@windriver.com>	<4D572DB0.7050805@intel.com>
	<789F9655DD1B8F43B48D77C5D306597332C188B9@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <789F9655DD1B8F43B48D77C5D306597332C188B9@shsmsx501.ccr.corp.intel.com>
X-OriginalArrivalTime: 13 Feb 2011 19:27:04.0839 (UTC)
	FILETIME=[FF067970:01CBCBB3]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Garman,
	Scott A" <scott.a.garman@intel.com>
Subject: Re: Master build error caused a small typo by commit today : fetch2: unpack revision
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
X-List-Received-Date: Sun, 13 Feb 2011 19:27:07 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I verified, I'm not getting this error on a clean checkout of Poky.  So the
issue has been reverted by going back to the 'cp'

I'll work on figuring out what the issue is and resolve it.

--Mark

On 2/13/11 1:12 AM, Ke, Liping wrote:
>>>> Does not changing this "%d" to "%s" work?
>>>
>>> Yes, this is the correct fix.  Nobody has been around today to push
>> the fix into
>>> the tree however.
>>>
>>> It was a simple typo.
>>
>> I managed to catch Richard on IRC about an hour ago and he pushed a fix
>> to master.
>>
>> Scott
> 
> Hi, Scott and Mark,
> After fixing the typo, we'll meet another error relates to the tar/untar change for preserving the hard link (mark's comments). I wrote it in another letter as below.
> If we revert the patch, seems we need to rebuild from scratch, otherwise, I met other problems. Only for your info!
> 
> Thanks a lot!
> Criping
> 
> Pasted Info:
> 
> 
> After fixing this typo, I found another error when bitbake xorg-minimal-fonts, It will report
> ERROR: Function 'org-minial-fonts: LIC_FILES_CHKSUM points to invalid file: ../misc/fonts/alias' failed
> 
> I checked the folder of build/tmp/work/all-poky-linux/xorg-minimal-fonts-1_1.0-r0, fonts.alias fonts.dir Cursor.pcf.gz we not under misc subfolder as its expectation, but on the outer folder, seems the SRC_URI="file://misc" defined in the Xorg-minimal-fonts.bb does not work.
> 
> 
>>
>> --
>> Scott Garman
>> Embedded Linux Engineer - Yocto Project
>> Intel Open Source Technology Center
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


