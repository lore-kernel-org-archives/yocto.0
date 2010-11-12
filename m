Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 388F34C80B6B
	for <yocto@yoctoproject.org>; Thu, 11 Nov 2010 19:46:47 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oAC1kknX004583;
	Thu, 11 Nov 2010 17:46:46 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 11 Nov 2010 17:46:45 -0800
Received: from bruce-ashfields-macbook.local ([128.224.143.18]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 11 Nov 2010 17:46:45 -0800
Message-ID: <4CDC9C83.7020506@windriver.com>
Date: Thu, 11 Nov 2010 20:46:43 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <4CDC8704.9020506@linux.intel.com>
In-Reply-To: <4CDC8704.9020506@linux.intel.com>
X-OriginalArrivalTime: 12 Nov 2010 01:46:45.0872 (UTC)
	FILETIME=[76BFBF00:01CB820B]
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Recipes updates planned for 1.0
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
X-List-Received-Date: Fri, 12 Nov 2010 01:46:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10-11-11 7:15 PM, Saul Wold wrote:
>
> Distro / User Space Folks:
>
> Attached is a spread sheet that shows the recipes we plan to update for
> the 1.0 release. This list is based on the reorganization that will be
> coming into master soon and shows that there are 231 recipes that need
> updating and another 93 recipes that need some manual investigation due
> to the checkpkg task not able to determine the version.

I couldn't easily read the CSV in my email, but I scanned
for kernel elements.

I can't tell, are we updating kexec to 2.0.1 ? If so, that's
good. kexec is pretty tightly coupled to the kernel version, I'd
suggest doing it last, or not doing it at all. I'm talking
less about x86 here and more about non-x86. There are more
patches to the 2.0.x version that we can apply in this area,
but unless we have a test-per arch, it is more than likely
broken.

Other related / coupled kernel -> userspace apps appear to be
at the correct versions.

Cheers,

Bruce

>
> For the first phase, we will focus on updating as many of these that can
> be managed, many of these are dot.dot updates and should be easy. The
> focus will be on toolchain, core utilities and libraries, along with the
> graphics core (Xorg and Qt).
>
> We will continue to focus on making sure that LICENSE and
> LIC_FILES_CHKSUM metadata is correct, along with adding URI checksums.
>
> Thanks to all for working on this effort.


