Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 681ABE00303
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2012 14:17:29 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q05MHSZt017505
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 5 Jan 2012 14:17:28 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.228) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 5 Jan 2012 14:17:27 -0800
Message-ID: <4F062177.3010706@windriver.com>
Date: Thu, 5 Jan 2012 16:17:27 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:8.0) Gecko/20111105 Thunderbird/8.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CADzUK1KR-tyiabskATGp1pH_yUN_AgiBA+EUv9mtsjuXfnB5uw@mail.gmail.com>
In-Reply-To: <CADzUK1KR-tyiabskATGp1pH_yUN_AgiBA+EUv9mtsjuXfnB5uw@mail.gmail.com>
Subject: Re: Trying to compile mono on target for machine crownbay
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
X-List-Received-Date: Thu, 05 Jan 2012 22:17:29 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 1/5/12 3:52 PM, autif khan wrote:
> I bitbaked core-image-sato-sdk, copied it to the target disk and tried
> to build mono natively on the target machine and I got the following
> error:
>
> libtool: link: cannot find the library `=/usr/lib/libglib-2.0.la' or
> unhandled argument `=/usr/lib/libglib-2.0.la'

The version of libtool you are currently using is damaged in some way.  I 
suspect the program is falling back and trying to use either a local version or 
the host-system version.

The libtool located within the OE/Poky environment understands that when a "=" 
is predicating a path, it means locate the item within the sysroot at the 
following path.  Since the error indicates it doesn't understand that concept, 
it appears that that version of libtool is broken.

Normally the autotools class will deal with this situation for you.  Simply 
inheriting autotools class usually does it.

--Mark

> the filesystem does have a /usr/lib/libglib-2.0.la and it seems to be valid
>
> I am not sure why there is a leading '=' in the path. Needless to say
> - mono builds fine on ubuntu, so it is unlikely (not impossible) to be
> a mono build issue.
>
> Has anyone seen anything like this with mono or some other piece of software?
>
> Thanks
>
> Autif
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


