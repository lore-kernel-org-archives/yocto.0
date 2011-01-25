Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id C76BC4C806DA
	for <yocto@yoctoproject.org>; Tue, 25 Jan 2011 13:31:13 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0PJVCM7002168;
	Tue, 25 Jan 2011 11:31:12 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 25 Jan 2011 11:31:12 -0800
Received: from Macintosh-5.local ([172.25.36.227]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 25 Jan 2011 11:31:12 -0800
Message-ID: <4D3F24FF.8050400@windriver.com>
Date: Tue, 25 Jan 2011 13:31:11 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: "Lorenzati, Marcelo" <marcelo.lorenzati@intel.com>
References: <FE028D69955796489B510CE43DBBE8030118C8B7E8@rrsmsx503.amr.corp.intel.com>
In-Reply-To: <FE028D69955796489B510CE43DBBE8030118C8B7E8@rrsmsx503.amr.corp.intel.com>
X-OriginalArrivalTime: 25 Jan 2011 19:31:12.0343 (UTC)
	FILETIME=[6CB35670:01CBBCC6]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ulibc instead of glibc
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
X-List-Received-Date: Tue, 25 Jan 2011 19:31:14 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

On 1/25/11 12:36 PM, Lorenzati, Marcelo wrote:
> Hi all,
> 
>                 I wanted to know if it’s feasible to build Yocto with ulibc
> instead of glibc and if someone have tried.
> 
> In a really constrained system could be the difference between selecting RT
> Linux or another real time OS.
> 

So far uclibc has not been a goal of the Yocto project.  With the minimum size
of flash parts these days, the configurability of eglibc and the mklibs library
optimizer... the use-case for uclibc is quickly going away.

(eglibc configuration is not yet implemented in Yocto.  Mklibs is currently
being implemented.)

We have built (at Wind River) eglibc filesystems, single application systems, in
foot prints of less then 2 MB of disk space required.  As far as I know,
currently the smallest flash parts you can get for new designs are in the 4 MB
range, and quickly those are being replaced by 16 MB (and larger) parts...

eglibc also has the advantage (over uclibc) of better support for a wide range
of existing Open Source projects.

With that all said, yes it should be feasible to add uclibc to Yocto... but it's
not already there as far as I know.

--Mark

> 
> Regards
> 
>  
> 
> cid:image001.gif@01CB4310.9C4582D0
> 
> 	
> 
> *Marcelo Lorenzati**
> *Argentina Software Development Center
> 
> Software and Services Group
> Phone: +54 351 5358761
> marcelo.lorenzati@intel.com <mailto:marcelo.lorenzati@intel.com>
> 
>  
> 
>  
> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


