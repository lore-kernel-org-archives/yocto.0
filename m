Return-Path: <scott.a.garman@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9642BE0059B
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2012 09:00:04 -0800 (PST)
Received: from mail-iy0-f180.google.com ([209.85.210.180])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 08 Feb 2012 09:00:04 -0800
Received: by iabz7 with SMTP id z7so1420680iab.25
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2012 09:00:03 -0800 (PST)
Received: by 10.42.157.133 with SMTP id d5mr27960596icx.46.1328720403595;
	Wed, 08 Feb 2012 09:00:03 -0800 (PST)
Received: from [192.168.1.12] (c-76-105-137-48.hsd1.or.comcast.net.
	[76.105.137.48])
	by mx.google.com with ESMTPS id ng9sm3002029igc.3.2012.02.08.09.00.01
	(version=SSLv3 cipher=OTHER); Wed, 08 Feb 2012 09:00:02 -0800 (PST)
Message-ID: <4F32AA18.2030609@intel.com>
Date: Wed, 08 Feb 2012 09:00:08 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F322ECE.5060004@cnx-software.com>
In-Reply-To: <4F322ECE.5060004@cnx-software.com>
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
X-List-Received-Date: Wed, 08 Feb 2012 17:00:04 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/08/2012 12:14 AM, cnxsoft wrote:
> Hi,
>
> I have build x86 qemu image using "bitbake -k core-image-sato" following
> the instructions given at
> http://www.yoctoproject.org/docs/1.1/yocto-project-qs/yocto-project-qs.html
> I'm running Ubuntu 11.10 in VirtualBox 4.1.6.
>
> When I run qemu, qemu starts apparently fine, but the qemu window stays
> black. So I'm suspecting that either it does not work in Virtualbox or I
> may have tochange some settings in qemu (e.g. -vga vmware).

Have you installed the Virtualbox guest additions within your VM?

Fwiw I've not run into any issues doing this with a Fedora 14 and Fedora 
16 VM (other than the builds themselves being dog slow). I make sure to 
install the guest additions in all my VMs.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

