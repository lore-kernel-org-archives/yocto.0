Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59FD9E01507
	for <yocto@yoctoproject.org>; Fri,  7 Sep 2012 05:28:00 -0700 (PDT)
Received: by lagr15 with SMTP id r15so2117119lag.35
	for <yocto@yoctoproject.org>; Fri, 07 Sep 2012 05:27:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=CE/sM4GXS3Bm/j4uto1Asb5jmWowmDMoh51/aqkDSVA=;
	b=UKwR+LblBrXaOs1FOD1WO5wTTx9H1VSrXbosZD+kVE9I7n/TNTv6KZnjGkNEExEx6F
	wq6/XFd0Gq/5Ii8G5fGemlWjDs6FbTorLsr85hEScJfcvmPO2BDDfd0yyE491hksL4Wb
	evomXqEymyC0ZnXFSxt6HJf31ZmaFXghGd+nRnjbBvzee4YLTO0e8ckzRhDoZZ7CpSbz
	FC/N0Jk9BBaxx1ASg0IzrVdML5vYwHRwI5u2ErD50LUnFlDzM4DPReGz57R7G1rnLz7T
	wNYv2QeICH/luA8AImDmIgIuNdqJ3ML1aWdW/uCk0E+OCSa28eWROj20i1GXkOeRzpIe
	auXw==
MIME-Version: 1.0
Received: by 10.152.46.203 with SMTP id x11mr5091108lam.46.1347020878686; Fri,
	07 Sep 2012 05:27:58 -0700 (PDT)
Received: by 10.114.68.20 with HTTP; Fri, 7 Sep 2012 05:27:58 -0700 (PDT)
In-Reply-To: <5049D8FA.8050600@balister.org>
References: <CAHUNapQUS19axgi+i=wAr0r_ogFj+UsSBpsBY_mhd+ac=5w8-g@mail.gmail.com>
	<12E1ABCF-B181-4763-88A6-5B7E51758231@gmail.com>
	<CAHUNapQs-i9hAjxz9vj5kR17CiT4y3VRZiEejjef_9ga+ZwOOg@mail.gmail.com>
	<50491060.5030300@balister.org> <50492183.7030101@windriver.com>
	<5049D8FA.8050600@balister.org>
Date: Fri, 7 Sep 2012 08:27:58 -0400
Message-ID: <CADkTA4OCi8KF_QOALu1LTyT1it6ozvM3jD6Z6bmoFedT+HaWMQ@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Philip Balister <philip@balister.org>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: any success with spartan6-lx9mb?
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
X-List-Received-Date: Fri, 07 Sep 2012 12:28:00 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Sep 7, 2012 at 7:22 AM, Philip Balister <philip@balister.org> wrote:
> On 09/06/2012 06:19 PM, Bruce Ashfield wrote:
>>
>> On 12-09-06 5:06 PM, Philip Balister wrote:
>>>
>>> On 09/06/2012 04:11 PM, Trevor Woerner wrote:
>>>>
>>>> Hi Elvis,
>>>>
>>>> Thanks so much for taking a look at my email! I've read through lots
>>>> of this mailing list's history and noticed all your meta-xilinx work
>>>> in the past and was hoping I could pique your interest :-)
>>>>
>>>> On Thu, Sep 6, 2012 at 11:19 AM, Elvis Dowson <elvis.dowson@gmail.com>
>>>> wrote:
>>>>>
>>>>> Can you please list which version of the Xilinx ISE tools you are
>>>>> using? e.g. 12.4, 14.1, 14.2 ?
>>>>
>>>>
>>>> I have 14.2 installed on my Linux machine at home.
>>>>
>>>>> Could you also please list the Xilinx development board that you are
>>>>> using? e.g. SP601 (Spartan6) ?
>>>>
>>>>
>>>> I have been (slowly) teaching myself VHDL and working with a Papilio
>>>> board from Gadget Factory. Are you familiar with them? They have a
>>>> Spartan 3E on them.
>>>>
>>>> http://papilio.cc/
>>>>
>>>>> Let me know what you ISE development tool configuration and development
>>>>> board is, and I'll see if I can divert a bit from target platform,
>>>>> and try to
>>>>> explore getting the toolchain to build for the Microblaze processor.
>>>>
>>>>
>>>> It is my understanding that Microblaze won't fit or work with the
>>>> Spartan 3E (?). However, the guy who makes the Papilio board, Jack
>>>> Gassett, is currently working on his latest board called the "Papilio
>>>> Plus". The Plus is not yet out, although prototypes are available:
>>>>
>>>>
>>>> http://forum.gadgetfactory.net/index.php?/topic/1280-papilio-plus-prototypes-available-for-8499-in-the-store/
>>>>
>>>>
>>>>
>>>> The Plus will feature a Spartan 6 LX9, which, I believe, can support
>>>> the Microblaze.
>>>>
>>>> In a comment on the All Programmable Planet blog about a month ago,
>>>> Jack bemoans how easy it used to be to get Linux up and running on a
>>>> Spartan 3E devel board using what has now become PetaLinux. The
>>>> problem is that PetaLinux is now a commercial product and not readily
>>>> available to the DIY market:
>>>>
>>>>
>>>> http://www.programmableplanet.com/messages.asp?piddl_msgthreadid=252509&piddl_msgid=717514#msg_717514
>>>>
>>>>
>>>>
>>>> When I noticed the meta-xilinx layer had support for the Spartan 6 LX9
>>>> I was really hoping to surprise Jack by testing it out and providing
>>>> instructions for creating a filesystem he could use as part of his
>>>> work on the Plus. Unfortunately my attempts fell flat. I even tried
>>>> using denzil-7.0.1 but encountered the same problems.
>>>>
>>>> Seeing how soft processors within programmable logic seems to be
>>>> gaining in popularity, I thought it would be a great niche to get
>>>> into. If the Yocto Project could be used to create images for the
>>>> Microblaze or even the Picoblaze processors I think it would help fill
>>>> a void which is quickly expanding. Also, if support could be added to
>>>> meta-xilinx to support Jack's Papilio boards it would help introduce
>>>> the DIY community to the Yocto Project.
>>>>
>>>>> I've got the following boards with me:
>>>>> - Xilinx ML507 (Virtex 5 FX70T with PowerPC 440)
>>>>> - Xilinx SP601 (Spartan 6)
>>>>> - Xilinx Zynq (ARM Cortex A-9)
>>>>
>>>>
>>>> Once I get more into the VHDL I'll probably end up getting a Zynq
>>>> myself too; talk about combining the best of both worlds :-)
>>>
>>>
>>> Speaking of zynq, I have a simple BSP here for the zc702 board:
>>>
>>> https://github.com/balister/meta-zynq
>>
>>
>> We have a namespace collision, there is also:
>>
>>    http://git.yoctoproject.org/cgit/cgit.cgi/meta-zynq/
>
>
> Before creating the layer I checked:
>
> http://www.openembedded.org/wiki/LayerIndex
>
> This is where layer information is collected. If a layer is not listed here,
> yo can expect namespace collisions.

Sure, I don't argue with that, but I wasn't the original owner of the layer so
I can't say why it was or wasn't put into the wiki .. I'm not really concerned
about the minor oversight. They layer I pointed to was done under contract
by xilinx themselves, and contributed to be maintained as a yocto BSP, so
the layers name is not something that I control or can change.

Other similar layers can use the same name if they want, I was pointing it
out for reference, since I've had the same thing pointed out to me in
the past ;)

Cheers,

Bruce

>
> Philip
>
>
>>
>> Cheers,
>>
>> Bruce
>>
>>>
>>> Philip
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

