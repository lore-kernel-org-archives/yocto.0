Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id C53844C80FA8
	for <yocto@yoctoproject.org>; Wed, 24 Nov 2010 18:53:56 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oAP0rth0013542;
	Wed, 24 Nov 2010 16:53:55 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 24 Nov 2010 16:53:54 -0800
Received: from Macintosh-5.local ([172.25.36.227]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 24 Nov 2010 16:53:55 -0800
Message-ID: <4CEDB3A1.1020505@windriver.com>
Date: Wed, 24 Nov 2010 18:53:53 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
References: <AANLkTinQv_Lb-jnngPTpKV9evSSRzQUfN9JEA0RjZbvT@mail.gmail.com>	<4CED6ED4.8020609@windriver.com>	<AANLkTimueKS2Vay1h4tM9ENFogONmuNZrET5waqG+7YM@mail.gmail.com>	<4CED75A2.6060907@windriver.com>
	<AANLkTinGX58oee599rpH8V=+tnYVG8LCU03OoDBkSDDd@mail.gmail.com>
In-Reply-To: <AANLkTinGX58oee599rpH8V=+tnYVG8LCU03OoDBkSDDd@mail.gmail.com>
X-OriginalArrivalTime: 25 Nov 2010 00:53:55.0359 (UTC)
	FILETIME=[3C589AF0:01CB8C3B]
Cc: yocto@yoctoproject.org
Subject: Re: poky-image-minimal-1.0-r0:Unable to find package rpm!
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
X-List-Received-Date: Thu, 25 Nov 2010 00:53:57 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 11/24/10 4:05 PM, Frans Meulenbroeks wrote:
> 2010/11/24 Mark Hatle <mark.hatle@windriver.com>:
> 
>> The files in question would be tmp/deploy/rpm/mips/rpm-5.1.10-r7.mips.rpm (or
>> similar)
>>
>> That should exist..  If it doesn't something went wrong with the build of the
>> package.
>>
>> If it does, look in the directory (that has the RPM package) for a directory
>> called "solvedb".  Assuming that exists.. then the solver should be setup/loaded
>> and the package should be available.
>>
>> But the actual failure is rpm unable to find a package called "rpm" within the
>> resolver databases that are being consulted.
>>
>> The other thing to look at is the tmp/deploy/rpm  .. there is a solvedb.conf and
>> solvedb.macro
>>
>> Both of those should list out the solvers that it consults.  If the directory
>> that the rpm package is in, is not in that list.. then something went wrong
>> during that setup.
>>
>> --Mark
> 
> Thanks, that was a good help.
> There was no solvedb dir.
> My machine.conf file was missing
> PACKAGE_EXTRA_ARCHS = "armv4 armv4t armv5te"
> (maybe the omission of this var could be considered as an error).
> 
> But that almost immediately brought me to the next issue:
> rpm and zypper install fine, but I get an eglibc error
> | error: Failed dependencies:
> | 	eglibc >= 2.12 is needed by sysvinit-2.88dsf-r1.armv5te

If the ARCHs were wrong, then the dependencies wouldn't have been re-written
properly during the build.  This is something I don't like about the way OE/Poky
do things.. (dynamically re-write dependencies) but I'm not sure of a way to
resolve it.

You need to either completely rebuild -- or find a way to clear all of the
stamps for the packaging.. (once the packaging is re-done the dependencies will
be corrected)

--Mark

> and I do not see an eglibc package (but I do have
> eglibc-pic-2.12-r12.armv5te.rpm as well as quite a lot of subpackages,
> 
> eg.
> manifest:/home/frans/poky/poky/build/tmp/deploy/rpm/armv5te/eglibc-gconv-hp-greek8-2.12-r12.armv5te.rpm
> manifest:/home/frans/poky/poky/build/tmp/deploy/rpm/armv5te/eglibc-binary-localedata-es-pa.iso-8859-1-2.12-r12.armv5te.rpm
> manifest:/home/frans/poky/poky/build/tmp/deploy/rpm/armv5te/eglibc-localedata-iso14651-t1-pinyin-2.12-r12.armv5te.rpm
> manifest:/home/frans/poky/poky/build/tmp/deploy/rpm/armv5te/eglibc-charmap-viscii-2.12-r12.armv5te.rpm
> manifest:/home/frans/poky/poky/build/tmp/deploy/rpm/armv5te/eglibc-localedata-gl-es-2.12-r12.armv5te.rpm
> manifest:/home/frans/poky/poky/build/tmp/deploy/rpm/armv5te/eglibc-gconv-ibm1124-2.12-r12.armv5te.rpm
> manifest:/home/frans/poky/poky/build/tmp/deploy/rpm/armv5te/eglibc-binary-localedata-or-in-2.12-r12.armv5te.rpm
> manifest:/home/frans/poky/poky/build/tmp/deploy/rpm/armv5te/eglibc-gconv-ecma-cyrillic-2.12-r12.armv5te.rpm
> manifest:/home/frans/poky/poky/build/tmp/deploy/rpm/armv5te/eglibc-localedata-cv-ru-2.12-r12.armv5te.rpm
> manifest:/home/frans/poky/poky/build/tmp/deploy/rpm/armv5te/eglibc-binary-localedata-id-id.iso-8859-1-2.12-r12.armv5te.rpm
> manifest:/home/frans/poky/poky/build/tmp/deploy/rpm/armv5te/eglibc-localedata-lt-lt-2.12-r12.armv5te.rpm
> 
> Guess it'll be tomorrow before I get to that.
> 
> Frans


