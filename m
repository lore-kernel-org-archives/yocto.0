Return-Path: <philip@balister.org>
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C23BFE01507
	for <yocto@yoctoproject.org>; Fri,  7 Sep 2012 04:22:50 -0700 (PDT)
Received: (qmail 12002 invoked by uid 1003); 7 Sep 2012 11:22:35 -0000
Received: from unknown (HELO ?192.168.1.105?) (philip@opensdr.com@71.171.24.25)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	7 Sep 2012 11:22:35 -0000
Message-ID: <5049D8FA.8050600@balister.org>
Date: Fri, 07 Sep 2012 07:22:34 -0400
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120828 Thunderbird/15.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <CAHUNapQUS19axgi+i=wAr0r_ogFj+UsSBpsBY_mhd+ac=5w8-g@mail.gmail.com>
	<12E1ABCF-B181-4763-88A6-5B7E51758231@gmail.com>
	<CAHUNapQs-i9hAjxz9vj5kR17CiT4y3VRZiEejjef_9ga+ZwOOg@mail.gmail.com>
	<50491060.5030300@balister.org> <50492183.7030101@windriver.com>
In-Reply-To: <50492183.7030101@windriver.com>
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
X-List-Received-Date: Fri, 07 Sep 2012 11:22:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 09/06/2012 06:19 PM, Bruce Ashfield wrote:
> On 12-09-06 5:06 PM, Philip Balister wrote:
>> On 09/06/2012 04:11 PM, Trevor Woerner wrote:
>>> Hi Elvis,
>>>
>>> Thanks so much for taking a look at my email! I've read through lots
>>> of this mailing list's history and noticed all your meta-xilinx work
>>> in the past and was hoping I could pique your interest :-)
>>>
>>> On Thu, Sep 6, 2012 at 11:19 AM, Elvis Dowson <elvis.dowson@gmail.com>
>>> wrote:
>>>> Can you please list which version of the Xilinx ISE tools you are
>>>> using? e.g. 12.4, 14.1, 14.2 ?
>>>
>>> I have 14.2 installed on my Linux machine at home.
>>>
>>>> Could you also please list the Xilinx development board that you are
>>>> using? e.g. SP601 (Spartan6) ?
>>>
>>> I have been (slowly) teaching myself VHDL and working with a Papilio
>>> board from Gadget Factory. Are you familiar with them? They have a
>>> Spartan 3E on them.
>>>
>>> http://papilio.cc/
>>>
>>>> Let me know what you ISE development tool configuration and development
>>>> board is, and I'll see if I can divert a bit from target platform,
>>>> and try to
>>>> explore getting the toolchain to build for the Microblaze processor.
>>>
>>> It is my understanding that Microblaze won't fit or work with the
>>> Spartan 3E (?). However, the guy who makes the Papilio board, Jack
>>> Gassett, is currently working on his latest board called the "Papilio
>>> Plus". The Plus is not yet out, although prototypes are available:
>>>
>>> http://forum.gadgetfactory.net/index.php?/topic/1280-papilio-plus-prototypes-available-for-8499-in-the-store/
>>>
>>>
>>>
>>> The Plus will feature a Spartan 6 LX9, which, I believe, can support
>>> the Microblaze.
>>>
>>> In a comment on the All Programmable Planet blog about a month ago,
>>> Jack bemoans how easy it used to be to get Linux up and running on a
>>> Spartan 3E devel board using what has now become PetaLinux. The
>>> problem is that PetaLinux is now a commercial product and not readily
>>> available to the DIY market:
>>>
>>> http://www.programmableplanet.com/messages.asp?piddl_msgthreadid=252509&piddl_msgid=717514#msg_717514
>>>
>>>
>>>
>>> When I noticed the meta-xilinx layer had support for the Spartan 6 LX9
>>> I was really hoping to surprise Jack by testing it out and providing
>>> instructions for creating a filesystem he could use as part of his
>>> work on the Plus. Unfortunately my attempts fell flat. I even tried
>>> using denzil-7.0.1 but encountered the same problems.
>>>
>>> Seeing how soft processors within programmable logic seems to be
>>> gaining in popularity, I thought it would be a great niche to get
>>> into. If the Yocto Project could be used to create images for the
>>> Microblaze or even the Picoblaze processors I think it would help fill
>>> a void which is quickly expanding. Also, if support could be added to
>>> meta-xilinx to support Jack's Papilio boards it would help introduce
>>> the DIY community to the Yocto Project.
>>>
>>>> I've got the following boards with me:
>>>> - Xilinx ML507 (Virtex 5 FX70T with PowerPC 440)
>>>> - Xilinx SP601 (Spartan 6)
>>>> - Xilinx Zynq (ARM Cortex A-9)
>>>
>>> Once I get more into the VHDL I'll probably end up getting a Zynq
>>> myself too; talk about combining the best of both worlds :-)
>>
>> Speaking of zynq, I have a simple BSP here for the zc702 board:
>>
>> https://github.com/balister/meta-zynq
>
> We have a namespace collision, there is also:
>
>    http://git.yoctoproject.org/cgit/cgit.cgi/meta-zynq/

Before creating the layer I checked:

http://www.openembedded.org/wiki/LayerIndex

This is where layer information is collected. If a layer is not listed 
here, yo can expect namespace collisions.

Philip

>
> Cheers,
>
> Bruce
>
>>
>> Philip
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>

