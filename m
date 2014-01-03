Return-Path: <philip@balister.org>
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 8BE7CE00803
	for <yocto@yoctoproject.org>; Fri,  3 Jan 2014 14:48:20 -0800 (PST)
Received: (qmail 14841 invoked by uid 1003); 3 Jan 2014 22:48:19 -0000
Received: from unknown (HELO ?192.168.1.122?)
	(philip@opensdr.com@71.171.44.145)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	3 Jan 2014 22:48:19 -0000
Message-ID: <52C73E32.4030208@balister.org>
Date: Fri, 03 Jan 2014 17:48:18 -0500
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130625 Thunderbird/17.0.7
MIME-Version: 1.0
To: Edward Vidal <vidal.develone@gmail.com>
References: <CANwz6nyQW9br6znzmLWLAM52n4UpQA1pbu9JBR0ZvT8UO8NQQw@mail.gmail.com>
In-Reply-To: <CANwz6nyQW9br6znzmLWLAM52n4UpQA1pbu9JBR0ZvT8UO8NQQw@mail.gmail.com>
X-Enigmail-Version: 1.6
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 03 Jan 2014 22:48:21 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Please post meta-xilinx questions to the meta-xilinx list.

On 01/03/2014 11:46 AM, Edward Vidal wrote:
> Hello all,
> I am currently working with the zedboard using a rootfs generated with a
> dylan branch of yocto (gsl, gnuplot, gnuradio, java, vlc, v4l-utils, and
> openCV with C920 camera).  My zImage and devicetree.dtb were built with
> yocto sdk.  My BOOT.BIN (FSBL system.bit and u-boot) were built with 14.4
> of Xilinx Tools.  This requires dual booting a CentOS 6.4 x86_64 (Xilinx
> Tools) and Fedora19 x86_64 (Yocto).  I have not been able to run Yocto on
> CentOS since the need for higher version of python.
> 
> Is it possible to generate a BOOT.BIN with the files generated with
> Yocto?

See:

https://github.com/balister/meta-xilinx/tree/working-branch/recipes-bsp/u-boot

Basically, I use a pre-compiled fsbl.elf. This only needs the bootgen
command (from ISE) in the path. U-boot builds fine with the toolchain
built in OE. (Also, you can build the fsbl with an OE toolchain last
time I checked.

Philip

> 
> This requires 2 toolchains.  I was checking the difference between the 2
> see the attached files.
> Should the difference between the toolchains be of concern going forward?
> 
> My Xilinx tools are node locked and I can only use on a single system.
> Is there a method to run Yocto on CentOS6.4 x86_64?
> Any and all help will be appreciated.
> 
> Thanks
> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> 

