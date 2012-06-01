Return-Path: <jfabernathy@gmail.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4173E01443
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2012 13:31:32 -0700 (PDT)
Received: by vbjk17 with SMTP id k17so2019402vbj.35
	for <yocto@yoctoproject.org>; Fri, 01 Jun 2012 13:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=N8LMcHR5yUcqNSYV3IOaFHtvTGpYhF9RmyrZ9nU/0NY=;
	b=r+M+dYKL/7G7/bDpsj+/4d6hOEW7QnT2Sn6BqXnoU2l5mgAblgLdTGyrzcyNMO5bxM
	Lq+sqHR8R+YJtsgNNaI7tMfAOkWh64PwVMKUxml7wOm6jpoOYKH/L3+UEdLjB4K++0vB
	11kQF4+0nGjUPLub9rVKjoidS7Y8F7zo3VTBQvmMgbzhIvNHkgjdg2RIhxHqktq+ldaE
	lvQ0DcLmNOmSAF3eIL+apmpDG5slVe9NdlTg+0bA/qyqZqy5byKxog5kEUSV5nyykH3G
	H7nTrmynWhnewlkvWzPpAf6C9XXA9dVXUae/uF+GpDMTYhkMcsyM4ZsV55daq0czndOn
	hx/w==
Received: by 10.220.107.198 with SMTP id c6mr4017652vcp.54.1338582691908;
	Fri, 01 Jun 2012 13:31:31 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-55.dhcp.embarqhsd.net. [184.4.33.55])
	by mx.google.com with ESMTPS id
	by2sm4664830vdb.22.2012.06.01.13.31.31 (version=SSLv3 cipher=OTHER);
	Fri, 01 Jun 2012 13:31:31 -0700 (PDT)
Message-ID: <4FC926A6.2070902@gmail.com>
Date: Fri, 01 Jun 2012 16:31:34 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4FC79837.2070309@gmail.com> <4FC7B4E3.1010401@linux.intel.com>
	<4FC7BE80.4060700@gmail.com> <4FC7C965.1020809@linux.intel.com>
	<4FC8E39D.3010702@gmail.com> <4FC8F564.90704@linux.intel.com>
	<4FC8FE53.4030508@gmail.com> <4FC8FF90.20403@linux.intel.com>
	<4FC90183.2080107@gmail.com> <4FC9021D.1050706@linux.intel.com>
	<4FC91488.9080106@gmail.com> <4FC91FE0.9040909@linux.intel.com>
	<4FC92118.1060606@gmail.com> <4FC921B3.8060904@linux.intel.com>
In-Reply-To: <4FC921B3.8060904@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-cedartrail - serial console
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
X-List-Received-Date: Fri, 01 Jun 2012 20:31:33 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/01/2012 04:10 PM, Darren Hart wrote:
>
> On 06/01/2012 01:07 PM, jfabernathy wrote:
>> On 06/01/2012 04:02 PM, Darren Hart wrote:
>>>>> What is the boot error?
>>>>>
>>>> SYSLINUX 4.03 2010-10-22 CHS Load error- Boot error
>>>>
>>>> Jim A
>>> OK, I suggest following the instructions for creating a USBZIP format in
>>> README.hardware. If that fails, this merits a bug. Regardless, as rework
>>> the images for 1.3, we should be able to avoid the many many boot errors
>>> like this that people have been reporting and we've been working around.
>>>
>> I'll test the USBZIP method, but that has a many steps as the How Do I-
>> hard drive method.  I think we need a script like ddimage for USBZIP method.
>>
> Attached. I've passed this out to a few people. Would people like to see
> this in scripts/contrib?
>
I think the script is great and should be in the contrib directory.  One 
question about it.  on the instructions to remove and reinsert the usb 
key, mine automounts on reinsertion.  Is that going to create a 
problem?? What the script created booted, but it seemed odd that the 
automount happened, and the script seems to mount in the /tmp dir.

