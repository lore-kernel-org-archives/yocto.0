Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 73BC64C80815
	for <yocto@yoctoproject.org>; Tue, 19 Oct 2010 16:12:48 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id o9JLCk8R019830;
	Tue, 19 Oct 2010 14:12:46 -0700 (PDT)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 19 Oct 2010 14:12:46 -0700
Received: from Macintosh-5.local ([172.25.36.230]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 19 Oct 2010 14:12:45 -0700
Message-ID: <4CBE09CA.5060209@windriver.com>
Date: Tue, 19 Oct 2010 16:12:42 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.9) Gecko/20100915 Thunderbird/3.1.4
MIME-Version: 1.0
To: Alex deVries <Alex.deVries@windriver.com>
References: <4807CBBFD12C484EBEAB6D8DFBDCE47C267E303C06@orsmsx501.amr.corp.intel.com>
	<B27EBC40D200ED48A3F4CC2EBEABAE0B25BBC510A2@orsmsx501.amr.corp.intel.com>
	<5D5D343A-04B9-4313-AED1-AD6F48C6DAE9@windriver.com>
In-Reply-To: <5D5D343A-04B9-4313-AED1-AD6F48C6DAE9@windriver.com>
X-OriginalArrivalTime: 19 Oct 2010 21:12:45.0790 (UTC)
	FILETIME=[60320FE0:01CB6FD2]
X-Mailman-Approved-At: Tue, 19 Oct 2010 16:39:29 -0500
Cc: "Purdie, Richard" <richard.purdie@intel.com>, "Li,
	Susie" <susie.li@intel.com>, "Lock,
	Joshua" <joshua.lock@intel.com>, "McCombe,
	Kevin" <kevin.mccombe@windriver.com>, "Ta,
	Lieu" <Lieu.Ta@windriver.com>, "Anderson,
	Paul" <paul.anderson@windriver.com>, "Ashfield,
	Bruce" <bruce.ashfield@windriver.com>, "Hart,
	Darren" <darren.hart@intel.com>, yocto@yoctoproject.org
Subject: Re: Yocto Linux Project Sync notes
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 19 Oct 2010 21:12:48 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/19/10 4:01 PM, Alex deVries wrote:
>
> On 2010-10-19, at 11:40 AM, Stewart, David C wrote:
>
>> ** Alex will put the hardware bits together, Darren to write down the description of what needs to come together and wiki-fy it.
>
>
> Yes, so what I need is something like:
>
> - description
> - expected behaviour
> - hardware used
> - how to build and install the software
>
> ... for all four boards.  The sooner we have something, the sooner I can start.
>
> Does that make sense, Darren?

Darren (or someone else can correct me.. but what I'm doing now)

Board: RouterStationPro
Purpose: NAS and boot server for other board
Features:
  - Contains file server for multimedia and other files
  - Can serve files via:
    - NFS
    - http
    - tftp (likely needed if the other boards need to network boot)
    - ftp (maybe)
  - Will act as THE authoritation DHCP server for the network of boards
  - no DNS on the network (is it needed?)

Software:
  - From the meta-demo, build the poky-image-nas with the machine target of the 
routerstationpro  (thats the goal, but there might be some custom config files 
in the end.. still working on it)

> - A
>
>


