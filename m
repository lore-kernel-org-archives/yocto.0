Return-Path: <cnxsoft@cnx-software.com>
Received: from mail-tul01m020-f176.google.com (mail-tul01m020-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A83BE004D2
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2012 18:01:23 -0800 (PST)
Received: by obbwd18 with SMTP id wd18so2367706obb.35
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2012 18:01:22 -0800 (PST)
Received: by 10.182.11.71 with SMTP id o7mr28158630obb.58.1328752882795;
	Wed, 08 Feb 2012 18:01:22 -0800 (PST)
Received: from [192.168.0.103] (118.172.58.119.adsl.dynamic.totbb.net.
	[118.172.58.119])
	by mx.google.com with ESMTPS id i5sm1162165obc.9.2012.02.08.18.01.20
	(version=SSLv3 cipher=OTHER); Wed, 08 Feb 2012 18:01:22 -0800 (PST)
Message-ID: <4F3328E4.4030208@cnx-software.com>
Date: Thu, 09 Feb 2012 09:01:08 +0700
From: cnxsoft <cnxsoft@cnx-software.com>
User-Agent: Mozilla/5.0 (Windows NT 5.1; rv:7.0) Gecko/20110922 Thunderbird/7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F322ECE.5060004@cnx-software.com> <4F32AA18.2030609@intel.com>
In-Reply-To: <4F32AA18.2030609@intel.com>
Subject: Re: Yocto in Virtualbox
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
X-List-Received-Date: Thu, 09 Feb 2012 02:01:23 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 09/02/2012 00:00, Scott Garman wrote:
> On 02/08/2012 12:14 AM, cnxsoft wrote:
>> Hi,
>>
>> I have build x86 qemu image using "bitbake -k core-image-sato" following
>> the instructions given at
>> http://www.yoctoproject.org/docs/1.1/yocto-project-qs/yocto-project-qs.html 
>>
>> I'm running Ubuntu 11.10 in VirtualBox 4.1.6.
>>
>> When I run qemu, qemu starts apparently fine, but the qemu window stays
>> black. So I'm suspecting that either it does not work in Virtualbox or I
>> may have tochange some settings in qemu (e.g. -vga vmware).
>
> Have you installed the Virtualbox guest additions within your VM?
>
> Fwiw I've not run into any issues doing this with a Fedora 14 and 
> Fedora 16 VM (other than the builds themselves being dog slow). I make 
> sure to install the guest additions in all my VMs.
>
> Scott
>
Thanks Scott.  Yes, I have Virtual Box guest additions installed. My 
host is running Windows XP btw. And yes it was slow...the build for 
core-image-minimal took around 36 hours...
I found a link with a Virtual Box issue 
(https://wiki.yoctoproject.org/wiki/Build_Appliance_Design), but it seem 
related to the build itself rather than an issue while running qemu.



