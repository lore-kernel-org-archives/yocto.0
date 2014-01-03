Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B795E00803
	for <yocto@yoctoproject.org>; Fri,  3 Jan 2014 15:00:49 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 1D9A2F811E9; Fri,  3 Jan 2014 16:00:49 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 2B4CFF811DB;
	Fri,  3 Jan 2014 16:00:47 -0700 (MST)
Message-ID: <52C74126.9090605@mlbassoc.com>
Date: Fri, 03 Jan 2014 16:00:54 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CANwz6nyQW9br6znzmLWLAM52n4UpQA1pbu9JBR0ZvT8UO8NQQw@mail.gmail.com>
	<52C73E32.4030208@balister.org>
In-Reply-To: <52C73E32.4030208@balister.org>
Subject: Re: toolchain
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
X-List-Received-Date: Fri, 03 Jan 2014 23:00:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-01-03 15:48, Philip Balister wrote:
> Please post meta-xilinx questions to the meta-xilinx list.
>
> On 01/03/2014 11:46 AM, Edward Vidal wrote:
>> Hello all,
>> I am currently working with the zedboard using a rootfs generated with a
>> dylan branch of yocto (gsl, gnuplot, gnuradio, java, vlc, v4l-utils, and
>> openCV with C920 camera).  My zImage and devicetree.dtb were built with
>> yocto sdk.  My BOOT.BIN (FSBL system.bit and u-boot) were built with 14.4
>> of Xilinx Tools.  This requires dual booting a CentOS 6.4 x86_64 (Xilinx
>> Tools) and Fedora19 x86_64 (Yocto).  I have not been able to run Yocto on
>> CentOS since the need for higher version of python.
>>
>> Is it possible to generate a BOOT.BIN with the files generated with
>> Yocto?
>
> See:
>
> https://github.com/balister/meta-xilinx/tree/working-branch/recipes-bsp/u-boot
>
> Basically, I use a pre-compiled fsbl.elf. This only needs the bootgen
> command (from ISE) in the path. U-boot builds fine with the toolchain
> built in OE. (Also, you can build the fsbl with an OE toolchain last
> time I checked.
>
> Philip
>
>>
>> This requires 2 toolchains.  I was checking the difference between the 2
>> see the attached files.
>> Should the difference between the toolchains be of concern going forward?
>>
>> My Xilinx tools are node locked and I can only use on a single system.
>> Is there a method to run Yocto on CentOS6.4 x86_64?
>> Any and all help will be appreciated.

You could try installing the meta-toolchain which installs updated host
tools that Yocto can use.  Find them at
   http://downloads.yoctoproject.org/releases/yocto/yocto-1.5/toolchain/x86_64/

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

