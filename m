Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id A82BB4C80053
	for <yocto@yoctoproject.org>; Fri, 11 Feb 2011 21:23:34 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1C3NOMW018125;
	Fri, 11 Feb 2011 19:23:24 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 11 Feb 2011 19:23:23 -0800
Received: from bruce-ashfields-macbook.local ([128.224.143.11]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 11 Feb 2011 19:23:23 -0800
Message-ID: <4D55FD29.7010102@windriver.com>
Date: Fri, 11 Feb 2011 22:23:21 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.14) Gecko/20110207 Thunderbird/3.1.8
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <6F14423B-D0BC-40AA-99BC-55719A73B51A@keylevel.com>
In-Reply-To: <6F14423B-D0BC-40AA-99BC-55719A73B51A@keylevel.com>
X-OriginalArrivalTime: 12 Feb 2011 03:23:23.0656 (UTC)
	FILETIME=[34806080:01CBCA64]
Cc: yocto@yoctoproject.org
Subject: Re: Kernel configuration using 'menuconfig'
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
X-List-Received-Date: Sat, 12 Feb 2011 03:23:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11-02-11 5:59 PM, Chris Tapp wrote:
> I'm trying to use 'menuconfig' to add a driver to the kernel.
>
> I've been following the instructions I found at
> http://groups.google.com/group/beagleboard/browse_thread/thread/7ebbfd2948579be0
> that were posted by Frans Meulenbroeks. However, when I run
>
> bitbake -c menuconfig virtual/kernel
>
> I get
>
> | Failed to parse arguments: Cannot open display:
> | ERROR: Function 'do_menuconfig' failed (see ...
>
> Any ideas? Only thing I can think is this is something to do with
> ncurses...

It is this ?

http://bugzilla.pokylinux.org/show_bug.cgi?id=598

Bruce

>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


