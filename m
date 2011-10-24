Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE0B8E0137B
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2011 02:28:26 -0700 (PDT)
Received: from [192.168.0.69] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id C94B621FC1
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2011 08:45:47 +0100 (BST)
Message-ID: <4EA52FBE.1070209@communistcode.co.uk>
Date: Mon, 24 Oct 2011 10:28:30 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
CC: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <4EA025EF.8020008@communistcode.co.uk>
	<CAMKF1spiM4Hrz=GWBK=MF3JHhKkLy55vX8HKsu3cFdo7+P9d7A@mail.gmail.com>
In-Reply-To: <CAMKF1spiM4Hrz=GWBK=MF3JHhKkLy55vX8HKsu3cFdo7+P9d7A@mail.gmail.com>
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
X-List-Received-Date: Mon, 24 Oct 2011 09:28:30 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 20/10/2011 22:10, Khem Raj wrote:
> On Thu, Oct 20, 2011 at 6:45 AM, Jack Mitchell<ml@communistcode.co.uk>  wrote:
>> I have tried cleaning and recompiling glib-2.0 due to this error:
>>
>> |
>> mnt/yocto/poky/qemuarm-toolchain/tmp/sysroots/qemuarm/usr/lib/libgtk-x11-2.0.so:
>> undefined reference to `g_datalist_get_data'
>>
>> Which I believe is glib related, however this might not be the fundamental
>> error?
>>
> This means you need to rebuild glib-2.0 along with libgtk-x11
> bitbake -ccleansstate glib-2.0
> bitbake sysprof

This was my first point of call, which didn't fix it. I re-build with a 
fresh build directory and it built fine.

