Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 232544C810B4
	for <yocto@yoctoproject.org>; Fri, 22 Oct 2010 12:51:22 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id o9MHpKwB003700;
	Fri, 22 Oct 2010 10:51:20 -0700 (PDT)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 22 Oct 2010 10:51:20 -0700
Received: from Macintosh-5.local ([172.25.34.19]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 22 Oct 2010 10:51:19 -0700
Message-ID: <4CC1CF15.5030601@windriver.com>
Date: Fri, 22 Oct 2010 12:51:17 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.11) Gecko/20101013 Thunderbird/3.1.5
MIME-Version: 1.0
To: "Stewart, David C" <david.c.stewart@intel.com>
References: <4CC0C619.7070201@linux.intel.com>
	<B27EBC40D200ED48A3F4CC2EBEABAE0B25BC182ED9@orsmsx501.amr.corp.intel.com>
In-Reply-To: <B27EBC40D200ED48A3F4CC2EBEABAE0B25BC182ED9@orsmsx501.amr.corp.intel.com>
X-OriginalArrivalTime: 22 Oct 2010 17:51:20.0094 (UTC)
	FILETIME=[BBCC73E0:01CB7211]
Cc: Yocto Project <yocto@yoctoproject.org>, "Rifenbark,
	Scott M" <scott.m.rifenbark@intel.com>, "Lock,
	Joshua" <joshua.lock@intel.com>
Subject: Re: "Demo Use Cases" documentation for the web page
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
X-List-Received-Date: Fri, 22 Oct 2010 17:51:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/22/10 12:35 PM, Stewart, David C wrote:
>> From: Darren Hart [mailto:dvhart@linux.intel.com]
>> Sent: Thursday, October 21, 2010 4:01 PM
>>
>>
>> Media Network Demo
>> ==================
>> We're looking to have a section on the web site for the demo that
>> explains what each use-case is and possibly how it can be replicated.
>> I'm taking the approach of describing each image. Consider the
>> following:
>
> At this point, the site map is set, and we're working with the web guys to set this up for review today and over the weekend.  I'm loath to mess with the structure at this point, and adding something like this would require more than a page, it requires references, etc.
>
> I'm inclined to add a page to the new wiki once it is set up. (Scott is working on that now). Then we could add a link to the signage and on the Resources page.
>
>> The Yocto Project launch event at ECLF 2010 featured a
>> multi-architecture Media Network Demo. All the source for this demo is
>> available in the meta-demo git repository as a layer for the poky build
>> system.
>>
>> The following images made up the demo:
>> o poky-image-nas
>> o poky-image-mediatomb
>> o poky-image-rygel
>
> "Note that the goal of these recipes was to demonstrate example functionality and the flexibility and power of Yocto. The goal was not to produce a production-ready image."
>
> What might be better here would be a little additional info with each of these. Some examples below.
>
>> poky-image-nas
>> --------------
>> The poky-image-nas image boots your device as a network attached storage
>> device. It provides a DHCP service and an NFS server. We used this image
>> to store all our media.
>
> "The filesystem called /<blah>  is exported via nfsexport<or whatever>. To make use of this for our demo setup, put your *.mp3 or *.ogg files into the /<blah>  directory. You need to make sure your system is on a network, and the TCP/IP stack is configured correctly to be visible by the other client systems."
>

/media/storage is the export location...

> (I am sure you can fix this up to make it better).
>
>> poky-image-mediatomb
>> --------------------
>> The poky-image-mediatomb image adds a UPnP content provider via the
>> mediatomb package. This image mounts the media share from the NAS and
>> makes it available to UPnP renderers.
>
> "You need to edit<this file>  to nfsmount the filesystem from the NFS server in the previous example or use a local disk or another file server."
>
>> poky-image-rygel
>> ----------------
>> The poky-image-rygel image provides gupnp tools and the rygel media
>> renderer along with the sato desktop. The renderer can be controlled
>> locally or via any control point on the network. Several devices can run
>> this image and stream media from the mediatomb device.
>
> "To activate the media renderer, type<something>  at the command line as root." You get my drift.
>
> Let's go through one more round on email with these enhancements and by then the wiki should be set up.
>
>>
>> Open Questions
>> --------------
>> o Is this more or less what we are looking for?
>> o Should we modify the mediatomb image to:
>>    o automatically mount a specific share from the NAS?
>>    o add something to the config to automatically scan the
>>      media share?
>> o The poky-image-rygel description needs to be updated as we finalize
>>    the package.
>>
>>
>>
>> --
>> Darren Hart
>> Embedded Linux Kernel


