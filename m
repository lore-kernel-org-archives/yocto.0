Return-Path: <bds@bsmucker.eu.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA829E00B68; Thu, 29 May 2014 12:45:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [216.86.168.183 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
Received: from mxout-08.mxes.net (mxout-08.mxes.net [216.86.168.183])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8ACF0E00A2F
	for <yocto@yoctoproject.org>; Thu, 29 May 2014 12:45:05 -0700 (PDT)
Received: from [192.168.0.11] (unknown [50.120.89.177])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by smtp.mxes.net (Postfix) with ESMTPSA id C54A1509B8
	for <yocto@yoctoproject.org>; Thu, 29 May 2014 15:45:04 -0400 (EDT)
Message-ID: <53878E34.8060403@bsmucker.eu.org>
Date: Thu, 29 May 2014 12:44:52 -0700
From: Brian Smucker <bds@bsmucker.eu.org>
User-Agent: Mozilla/5.0 (Windows NT 5.1;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <537F9583.50407@bsmucker.eu.org> <2317978.pEesILAVCv@koontz>
	<53876533.7080306@bsmucker.eu.org> <2207252.t1leCgR7Kn@koontz>
In-Reply-To: <2207252.t1leCgR7Kn@koontz>
Subject: Re: Yocto with Initial RamFS
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 29 May 2014 19:45:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

On 5/29/2014 12:38 PM, Søren Holm wrote:
> Torsdag den 29. maj 2014 09:49:55 skrev Brian Smucker:
>> Thanks Soren,
>>
>> My followup question is: Can I mix toolchains in this situation?
>>
>> Can I compile the initramfs binaries with the uclibc toolchain based on
>> the poky-tiny distro and the regular file system binaries with the
>> glibc-based toolchain (based on a different distro)?
>>
>> If this is possible, how would I begin to do it?
> I don't know, but I've got a simmilar need. Basically I was a very minimal
> busybox-static for the initramfs, but a "full-fledged" version for the main
> rootfs. I guess that's somehow the same thing.
>
> Maybe you have an idea on how to do that?
I don't know. I'm somewhat of a newbie here.

It seems this type of requirement should not be unusual in the embedded 
space.

Am hoping others can weigh in on this.

Thanks,

Brian

