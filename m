Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52ADAE01341
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2011 10:47:14 -0700 (PDT)
Received: from webmail.embed.me.uk (localhost.localdomain [127.0.0.1])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 21D152384E
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2011 17:11:41 +0100 (BST)
MIME-Version: 1.0
Date: Thu, 20 Oct 2011 17:11:41 +0100
From: ml@communistcode.co.uk
To: <yocto@yoctoproject.org>
In-Reply-To: <4EA0488E.5080009@mlbassoc.com>
References: <4EA025EF.8020008@communistcode.co.uk>
	<4EA0488E.5080009@mlbassoc.com>
Message-ID: <eb824c620876338564cc1460f7ccb9f1@communistcode.co.uk>
X-Sender: ml@communistcode.co.uk
User-Agent: Roundcube Webmail/0.6
Subject: Re: Sysprof build error
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
X-List-Received-Date: Thu, 20 Oct 2011 17:47:21 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 7bit

On 20.10.2011 17:13, Gary Thomas wrote:
> On 2011-10-20 07:45, Jack Mitchell wrote:
>> I have been sucessfully compiling using the git master branch of 
>> poky for the past month or so. I switched branches to Edison yesterday 
>> so I would be working with the stable branch
>> instead and now I cannot compile my build.
>>
>> I am currently getting errors with sysprof, however if I clean the 
>> shared state of sysprof I then get errors with Avahi, so I then clean 
>> shared state of Avahi and it goes back to
>> sysprof errors. Anyway, my error log is as shown below:
>>
>> http://pastebin.com/j5vf6wzj
>>
>> I have tried cleaning and recompiling glib-2.0 due to this error:
>>
>> | 
>> mnt/yocto/poky/qemuarm-toolchain/tmp/sysroots/qemuarm/usr/lib/libgtk-x11-2.0.so: 
>> undefined reference to `g_datalist_get_data'
>>
>> Which I believe is glib related, however this might not be the 
>> fundamental error?
>>
>> Anyway, any help would be appreciated!
>
> Did you try a totally clean build?

I have left a full clean build to run overnight, it ran into race 
condition early on which was overcome by setting it going a second time 
and it was still running about 2/3 complete when I left work. I will 
update tomorrow.

I am building the core-image-rt-sdk with dropbear, lighttpd and php, I 
believe the race condition is something to do with the error that I 
receive at the start stating that two kernels have been defined a non-rt 
and the rt - this might be something someone wants to check on?



