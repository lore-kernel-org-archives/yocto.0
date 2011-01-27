Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id A277E4C811AA
	for <yocto@yoctoproject.org>; Thu, 27 Jan 2011 09:22:44 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0RFMZF0029853;
	Thu, 27 Jan 2011 07:22:35 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 27 Jan 2011 07:22:35 -0800
Received: from Macintosh-5.local ([172.25.36.227]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 27 Jan 2011 07:22:34 -0800
Message-ID: <4D418DBA.4000208@windriver.com>
Date: Thu, 27 Jan 2011 09:22:34 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: Aleksandr Koltsoff <aleksandr.koltsoff@ebts.fi>
References: <AANLkTikG322KfbJ-ZEKXFbsOLkzLE3Kdp4L-096ODvxd@mail.gmail.com>	<46CAF87B-6605-4026-88C3-47258B9FDDB7@keylevel.com>
	<4D41747D.6060708@ebts.fi>
In-Reply-To: <4D41747D.6060708@ebts.fi>
X-OriginalArrivalTime: 27 Jan 2011 15:22:34.0936 (UTC)
	FILETIME=[060F2B80:01CBBE36]
Cc: yocto@yoctoproject.org
Subject: Re: rootfs image size
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
X-List-Received-Date: Thu, 27 Jan 2011 15:22:44 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 1/27/11 7:34 AM, Aleksandr Koltsoff wrote:
> Chris Tapp wrote:
>> I've built poky-image-minimal for atom-pc using the 0.9 Poky release.
>>
>> This gives me an ext3 rootfs of over 80MB, which doesn't sound minimal
>> to me ;-)
>>
>> Can I reduce the size of the image, or is it expected to be this size?
> 
> Hi there,
> 
> The rpm packaging version does has some issues (half-statically built
> binaries, full SAT-solver which might be an overkill for a minimal
> image, etc).

Many of these items are resolved in the mhatle/rpm5 branch that is part of
poky-contrib.  I'm trying to get the work finished for inclusion in the next day
or so.

But for a minimal image, RPM likely is too big of a hammer for the filesystem
design you want and IPK is likely more useful to you.

The place where I see RPM being needed is in medium size to larger (CGL) style
systems.  Also places where a sat solver is necessary for field upgrades... even
though thats not quite working yet.

--Mark

> I got much better results by switching to PACKAGE_CLASSES ?=
> "package_ipk" in local.conf.
> 
> This will not be an RPM based system, but the image size will be
> significantly smaller (especially if you're trying to reduce minimal).
> 
> Also, some fixes (post 0.9) should drop the rpm size requirement a bit,
> if you want to try git/master.
> 
> regards,
> 
> ak.


