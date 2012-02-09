Return-Path: <scott.a.garman@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D95EE004D2
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2012 18:56:35 -0800 (PST)
Received: from mail-iy0-f180.google.com ([209.85.210.180])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 08 Feb 2012 18:56:35 -0800
Received: by iabz7 with SMTP id z7so2283141iab.25
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2012 18:56:34 -0800 (PST)
Received: by 10.42.161.73 with SMTP id s9mr30204244icx.16.1328756193178;
	Wed, 08 Feb 2012 18:56:33 -0800 (PST)
Received: from [192.168.1.12] (c-76-105-137-48.hsd1.or.comcast.net.
	[76.105.137.48])
	by mx.google.com with ESMTPS id vr4sm3104423igb.1.2012.02.08.18.56.31
	(version=SSLv3 cipher=OTHER); Wed, 08 Feb 2012 18:56:32 -0800 (PST)
Message-ID: <4F3335E7.3050500@intel.com>
Date: Wed, 08 Feb 2012 18:56:39 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F322ECE.5060004@cnx-software.com> <4F32AA18.2030609@intel.com>
	<4F3328E4.4030208@cnx-software.com>
In-Reply-To: <4F3328E4.4030208@cnx-software.com>
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
X-List-Received-Date: Thu, 09 Feb 2012 02:56:36 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/08/2012 06:01 PM, cnxsoft wrote:
> On 09/02/2012 00:00, Scott Garman wrote:
>> On 02/08/2012 12:14 AM, cnxsoft wrote:
>>> Hi,
>>>
>>> I have build x86 qemu image using "bitbake -k core-image-sato" following
>>> the instructions given at
>>> http://www.yoctoproject.org/docs/1.1/yocto-project-qs/yocto-project-qs.html
>>>
>>> I'm running Ubuntu 11.10 in VirtualBox 4.1.6.
>>>
>>> When I run qemu, qemu starts apparently fine, but the qemu window stays
>>> black. So I'm suspecting that either it does not work in Virtualbox or I
>>> may have tochange some settings in qemu (e.g. -vga vmware).
>>
>> Have you installed the Virtualbox guest additions within your VM?
>>
>> Fwiw I've not run into any issues doing this with a Fedora 14 and
>> Fedora 16 VM (other than the builds themselves being dog slow). I make
>> sure to install the guest additions in all my VMs.
>>
>> Scott
>>
> Thanks Scott. Yes, I have Virtual Box guest additions installed. My host
> is running Windows XP btw. And yes it was slow...the build for
> core-image-minimal took around 36 hours...
> I found a link with a Virtual Box issue
> (https://wiki.yoctoproject.org/wiki/Build_Appliance_Design), but it seem
> related to the build itself rather than an issue while running qemu.

Hmmm...I'm not sure what to tell you. Really grasping for straws here - 
one thing you could try is to export the image and load it into VMWare 
Player and see if there is any difference. If not, that would implicate 
the guest distro (Ubuntu 11.10).

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

