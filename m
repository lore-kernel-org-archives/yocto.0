Return-Path: <darren.hart@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 95DAE4C811A9
	for <yocto@yoctoproject.org>; Tue, 19 Oct 2010 16:48:42 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 19 Oct 2010 14:48:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.57,352,1283756400"; d="scan'208";a="338057665"
Received: from unknown (HELO [10.255.12.104]) ([10.255.12.104])
	by azsmga001.ch.intel.com with ESMTP; 19 Oct 2010 14:48:41 -0700
Message-ID: <4CBE1238.7030603@intel.com>
Date: Tue, 19 Oct 2010 14:48:40 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.9) Gecko/20100922 Thunderbird/3.1.4
MIME-Version: 1.0
To: Mark Hatle <mark.hatle@windriver.com>
References: <4807CBBFD12C484EBEAB6D8DFBDCE47C267E303C06@orsmsx501.amr.corp.intel.com>
	<B27EBC40D200ED48A3F4CC2EBEABAE0B25BBC510A2@orsmsx501.amr.corp.intel.com>
	<5D5D343A-04B9-4313-AED1-AD6F48C6DAE9@windriver.com>
	<4CBE09CA.5060209@windriver.com>
In-Reply-To: <4CBE09CA.5060209@windriver.com>
X-Mailman-Approved-At: Tue, 19 Oct 2010 17:06:31 -0500
Cc: "Li, Susie" <susie.li@intel.com>, "McCombe,
	Kevin" <kevin.mccombe@windriver.com>, "Lock,
	Joshua" <joshua.lock@intel.com>, "Ta,
	Lieu" <Lieu.Ta@windriver.com>, "Anderson,
	Paul" <paul.anderson@windriver.com>, "Ashfield,
	Bruce" <bruce.ashfield@windriver.com>, "Purdie,
	Richard" <richard.purdie@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 19 Oct 2010 21:48:42 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/19/2010 02:12 PM, Mark Hatle wrote:
> On 10/19/10 4:01 PM, Alex deVries wrote:
>>
>> On 2010-10-19, at 11:40 AM, Stewart, David C wrote:
>>
>>> ** Alex will put the hardware bits together, Darren to write down the description of what needs to come together and wiki-fy it.
>>
>>
>> Yes, so what I need is something like:
>>
>> - description
>> - expected behaviour
>> - hardware used
>> - how to build and install the software
>>
>> ... for all four boards.  The sooner we have something, the sooner I can start.
>>
>> Does that make sense, Darren?
>
> Darren (or someone else can correct me.. but what I'm doing now)
>
> Board: RouterStationPro
> Purpose: NAS and boot server for other board
> Features:
>    - Contains file server for multimedia and other files
>    - Can serve files via:
>      - NFS
>      - http

http isn't needed. (the DLNA server will mount the files over NFS into 
its filesystem and Mediatomb runs it's own http server on a special port 
to server up the files to the media renderers).

>      - tftp (likely needed if the other boards need to network boot)
>      - ftp (maybe)

No need.

>    - Will act as THE authoritation DHCP server for the network of boards
>    - no DNS on the network (is it needed?)

No DNS needed, runs over multicast, and we can specify the NFS server 
with a dotted quad.

>
> Software:
>    - From the meta-demo, build the poky-image-nas with the machine target of the
> routerstationpro  (thats the goal, but there might be some custom config files
> in the end.. still working on it)

Perfect. Looks good Mark.

-- 
Darren Hart
Embedded Linux Kernel

