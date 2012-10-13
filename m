Return-Path: <philip@balister.org>
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 4812FE0027E
	for <yocto@yoctoproject.org>; Sat, 13 Oct 2012 08:24:44 -0700 (PDT)
Received: (qmail 17163 invoked by uid 1003); 13 Oct 2012 15:24:42 -0000
Received: from unknown (HELO ?10.66.203.220?) (philip@opensdr.com@72.254.8.186)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	13 Oct 2012 15:24:42 -0000
Message-ID: <507987B9.4020309@balister.org>
Date: Sat, 13 Oct 2012 08:24:41 -0700
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121009 Thunderbird/16.0
MIME-Version: 1.0
To: Elvis Dowson <elvis.dowson@gmail.com>
References: <A1BA209A-96E5-45BB-BA77-52FB84A5C735@gmail.com>
	<50797A91.8080205@balister.org>
	<530FA222-35A3-4E03-9245-5D9E5B8AD079@gmail.com>
In-Reply-To: <530FA222-35A3-4E03-9245-5D9E5B8AD079@gmail.com>
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
X-List-Received-Date: Sat, 13 Oct 2012 15:24:44 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/13/2012 07:48 AM, Elvis Dowson wrote:
> Hi Philip,
>
> On Oct 13, 2012, at 6:28 PM, Philip Balister <philip@balister.org> wrote:
>
>> If you are interested in a kernel built direct from the Xilinx repo look at:
>>
>> https://github.com/balister/meta-zynq
>>
>> I just pushed use changes yesterday and could use some help testing them.
>>
>> It is setup to boot from a SD card. You have to take the output of the u-boot recipe and use the Xilinx tools to combine it with the fsbl to get the required BOOT.BIN file.
>
> I'll help out and test your layer first, and let you know. It's going to take me a while to get used to this new board. I always find that I end up spending more than 2 to 3 months, just getting to know each platform to a good level, the last two ones being the Gumstix TI OMAP 3530 and the Xilinx ML507. I'm going to brace myself, its going to be a deep dive I think! :-)
>
> Adrian Alonso's meta-xilinx layer had some *.bbclass files, that invoked the Xilinx tools to create the ace image files, so perhaps that could be modified to automate the process or getting the final BOOT.BIN file.

Unfortunately I do not have the Xilinx tools installed on the machine I 
do the builds on. I'd love to post a working BOOT.BIN, but 1) I haven't 
tested this on he zc702 yet, and 2) I need to work out if I can 
distribute the binary since it includes GPL u-boot and non-GPL fsbl.

I understand it will take some time to get up to speed. I am finding the 
Xilinx workflow based around planAhead to be "challenging".

Philip

>
> Best regards,
>
> Elvis Dowson
>

