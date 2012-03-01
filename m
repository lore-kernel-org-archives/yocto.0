Return-Path: <Hollis_Blanchard@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51BCFE0030B
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2012 15:01:51 -0800 (PST)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1S3F0Q-0001RP-Rh from Hollis_Blanchard@mentor.com ;
	Thu, 01 Mar 2012 15:01:50 -0800
Received: from SVR-ORW-FEM-05.mgc.mentorg.com ([147.34.97.43]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Thu, 1 Mar 2012 15:01:17 -0800
Received: from [172.30.13.52] (147.34.91.1) by svr-orw-fem-05.mgc.mentorg.com
	(147.34.97.43) with Microsoft SMTP Server id 14.1.289.1;
	Thu, 1 Mar 2012 15:01:50 -0800
Message-ID: <4F4FFFDE.4090407@mentor.com>
Date: Thu, 1 Mar 2012 15:01:50 -0800
From: Hollis Blanchard <hollis_blanchard@mentor.com>
Organization: Mentor Graphics, Embedded Systems Division
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4F4FF77D.9060607@mentor.com> <4F4FFBF7.3020208@linux.intel.com>
In-Reply-To: <4F4FFBF7.3020208@linux.intel.com>
X-OriginalArrivalTime: 01 Mar 2012 23:01:17.0406 (UTC)
	FILETIME=[358D0FE0:01CCF7FF]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] include usbinit package with usbgadget feature
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
X-List-Received-Date: Thu, 01 Mar 2012 23:01:51 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 03/01/2012 02:45 PM, Darren Hart wrote:
> On 03/01/2012 02:26 PM, Hollis Blanchard wrote:
>> The g_ether kernel module, in the kernel-module-g-ether package, allows
>> targets to use a USB connection as a network interface. However, that's
>> not useful until the module is loaded.
>>
>> The usbinit package provides the /etc/init.d/usb-gether script to load
>> the g_ether module at boot, so it should be included along with
>> kernel-module-g-ether.
> So if the g-ether kernel module is built-in to the kernel, the
> kernel-module-g-ether will not be installed (as it's RRECOMMENDS). The
> usbinit package still will be (unless for some reason it can't be built
> for the target).
>
> I assume this doesn't pose a problem?

Well, hmm, I don't know. The usb-gether script is not very intelligent, 
so I suppose that would result in yet another boot time error message. 
Perhaps testing the result of 'modinfo g_ether' in the script would be a 
good follow-up patch?

Hollis Blanchard
Mentor Graphics, Embedded Systems Division



