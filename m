Return-Path: <philip@balister.org>
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id CC81DE006B9
	for <yocto@yoctoproject.org>; Sat, 13 Oct 2012 07:28:40 -0700 (PDT)
Received: (qmail 749 invoked by uid 1003); 13 Oct 2012 14:28:35 -0000
Received: from unknown (HELO ?10.66.203.220?) (philip@opensdr.com@72.254.8.186)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	13 Oct 2012 14:28:35 -0000
Message-ID: <50797A91.8080205@balister.org>
Date: Sat, 13 Oct 2012 07:28:33 -0700
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121009 Thunderbird/16.0
MIME-Version: 1.0
To: Elvis Dowson <elvis.dowson@gmail.com>
References: <A1BA209A-96E5-45BB-BA77-52FB84A5C735@gmail.com>
In-Reply-To: <A1BA209A-96E5-45BB-BA77-52FB84A5C735@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Any updates to meta-zynq in the pipeline?
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
X-List-Received-Date: Sat, 13 Oct 2012 14:28:41 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/13/2012 07:16 AM, Elvis Dowson wrote:
> Hi Bruce,
>                    I'm about to start with my Xilinx ZC702 development board, and I was wondering if there are any updates planned to the meta-zynq repository?
>
> In an earlier thread, you had mentioned that a whole bunch of updates were pending to the meta-zynq layer:

If you are interested in a kernel built direct from the Xilinx repo look at:

https://github.com/balister/meta-zynq

I just pushed use changes yesterday and could use some help testing them.

It is setup to boot from a SD card. You have to take the output of the 
u-boot recipe and use the Xilinx tools to combine it with the fsbl to 
get the required BOOT.BIN file.

Philip


>
> Re: [yocto] meta-zynq, was Re: any success with spartan6-lx9mb?
>
> Best regards,
>
> Elvis Dowson
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

