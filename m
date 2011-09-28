Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D577AE01224
	for <yocto@yoctoproject.org>; Wed, 28 Sep 2011 05:42:59 -0700 (PDT)
Received: from [192.168.0.57] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 1EF9222D78
	for <yocto@yoctoproject.org>; Wed, 28 Sep 2011 12:50:29 +0100 (BST)
Message-ID: <4E831651.5030802@communistcode.co.uk>
Date: Wed, 28 Sep 2011 13:42:57 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:7.0) Gecko/20110922 Thunderbird/7.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <4E8191BC.9030207@communistcode.co.uk>
	<4E81BBFF.7040400@communistcode.co.uk>
	<C6510F6D410BB64A8C15398EDC6B847C16E848CE@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C16E848CE@ORSMSX101.amr.corp.intel.com>
Subject: Re: QEMU nfs kernel panic
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
X-List-Received-Date: Wed, 28 Sep 2011 12:43:03 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 27/09/2011 16:07, Zhang, Jessica wrote:
> Hi Jack,
>
> The minimal-dev image doesn't contain tcf-agent which is needed for any remote interaction.  So can you build core-image-sato-sdk image and use it to boot up qemu, then your problem will be solved.
>
> Thanks,
> Jessica
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Jack Mitchell
> Sent: Tuesday, September 27, 2011 5:05 AM
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] QEMU nfs kernel panic
>
> On 27/09/2011 10:05, Jack Mitchell wrote:
>> I am using the stock sysroot and arm kernel zImage downloaded from the
>> yocto site. When I try to boot QEMU all is well until it tries to
>> mount the nfs root filesystem. It can't find it and the kernel panics,
>> I have set --debug all on in the runqemu-export-rootfs script but it
>> throws no further errors. Does anyone have any idea why it would do
>> this, is it possible that there is something wrong with the nfs
>> implementation in the kernel and the module is not loaded correctly,
>> or is it more likely that the nfs share isn't mounted on my machine
>> and the kernel cannot find it.
>>
>> Screenshot of kernel panic: http://imgur.com/UbPTT
>>
>> The only thing that jumps out at me is in the kernel boot up the
>> rootfs doesn't have a value as can be seen in the screenshot, but I
>> don't know if this is normal or not?
>>
>> Cheers,
>> Jack.
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> Ok, I managed to fix it. I needed to load the tun module to get it
> working. Maybe this should be added as a check in runqemu?
>
> I am now having issues with connecting to the live image, I recieve a
> connection refused message when I try to upload the file to the virtual
> machine, I have just the stick minimal-dev image so no additional
> passwords set.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


Thank you Jessica, that solved my problem of being unable to connect to 
the virtual machine.

Regards,
Jack.

