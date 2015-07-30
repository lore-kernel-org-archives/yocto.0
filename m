Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9366EE00B18; Thu, 30 Jul 2015 11:21:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [216.168.135.166 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 38C87E00A6C
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 11:20:58 -0700 (PDT)
Received: (qmail 16401 invoked by uid 1003); 30 Jul 2015 18:20:57 -0000
Received: from unknown (HELO ?192.168.11.121?)
	(philip@opensdr.com@71.171.15.180)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	30 Jul 2015 18:20:57 -0000
To: Khem Raj <raj.khem@gmail.com>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
References: <2238EDC6081C944E97E4EE915AE5CBEC5476A872@EXCHANGE-B.raylase.de>
	<81e2e36e8df04c9584ea5a9ca8afa303@googlemail.com>
	<2238EDC6081C944E97E4EE915AE5CBEC5476EED6@EXCHANGE-B.raylase.de>
	<7861693.hW9MCO2lEF@peggleto-mobl.ger.corp.intel.com>
	<CAMKF1soKnb5LR7pkiXW2=o0hjA4iVx_803yO3P=2vEc_85Y0gQ@mail.gmail.com>
From: Philip Balister <philip@balister.org>
Message-ID: <55BA6B07.3070905@balister.org>
Date: Thu, 30 Jul 2015 14:20:55 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1soKnb5LR7pkiXW2=o0hjA4iVx_803yO3P=2vEc_85Y0gQ@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Dalon Westergreen <dwesterg@gmail.com>,
	Yves Vandervennet <yvanderv@opensource.altera.com>,
	"rfi@lists.rocketboards.org" <rfi@lists.rocketboards.org>,
	"enak999@googlemail.com" <enak999@googlemail.com>
Subject: Re: Which repo for meta-altera ?
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
X-List-Received-Date: Thu, 30 Jul 2015 18:21:07 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 07/30/2015 01:02 PM, Khem Raj wrote:
> On Thu, Jul 30, 2015 at 12:50 AM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
>> (Adding Khem and Yves, the maintainers of the github repo, to CC)
>>
>> In the interests of keeping the layer index accurate, can we get some
>> clarification on which repo is the official BSP?
> 
> Please use github.com/kraj/meta-altera as mentioned in layerindex as
> well. This is the community supported BSP

What are the differences, shouldn't th ecommunity send in updates to the
vendor BSP?

Philip


> 
>>
>> Thanks,
>> Paul
>>
>> On Thursday 30 July 2015 06:52:22 Spriggs, Jim wrote:
>>> Hi Kevin,
>>>
>>> Rodger, got it this time – I had indeed missed the clue about the
>>> maintainers.
>>
>>> I should RTFM more often….
>>>
>>> Many thanks for your help and patience ☺.
>>> --
>>> jim
>>>
>>> Von: enak999@googlemail.com [mailto:enak999@googlemail.com]
>>> Gesendet: Mittwoch, 29. Juli 2015 22:37
>>> An: Dalon Westergreen <dwesterg@gmail.com>; Spriggs, Jim
>>> <J.Spriggs@raylase.de>; Alex J Lennon <ajlennon@dynamicdevices.co.uk>
>>  Cc:
>>> yocto@yoctoproject.org; rfi@lists.rocketboards.org
>>> Betreff: Re: [yocto] Which repo for meta-altera ?
>>>
>>> As you can read in the ReadMe.md Khem Raj and Yves Vandervennet are the
>>> official maintainers of
>>> github.com/altera-opensource/meta-altera<http://github.com/altera-opensourc
>>> e/meta-altera>
>>
>>> I really recommend to use
>>> github.com/altera-opensource/meta-altera<http://github.com/altera-opensourc
>>> e/meta-altera> instead of the fork from Khem Raj. But since you use the fork
>>> of one of the maintainers, it will probably be most of the time in synch
>>> with the altera-opensource repository.
>>
>>> Von: Dalon Westergreen<mailto:dwesterg@gmail.com>
>>> Gesendet: ‎Mittwoch‎, ‎29‎. ‎Juli‎ ‎2015 ‎21‎:‎54
>>> An: Spriggs, Jim<mailto:J.Spriggs@raylase.de>, Alex J
>>> Lennon<mailto:ajlennon@dynamicdevices.co.uk>, Kevin
>>> B.<mailto:enak999@googlemail.com>
>>  Cc:
>>> yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>,
>>> rfi@lists.rocketboards.org<mailto:rfi@lists.rocketboards.org>
>>> As far as I understand it Altera only maintains the one repo.
>>> On July 29, 2015 6:44:23 AM PDT, "Spriggs, Jim"
>>> <J.Spriggs@raylase.de<mailto:J.Spriggs@raylase.de>> wrote:
>>
>>> Hi Alex, Dalon, Kevin, Lists
>>>
>>> hmmm, so I guess I'm still confused (sorry).
>>>
>>> Alex recommends going via the "official" oe layers index, which currently
>>> links directly to
>>> github.com/kraj/meta-altera<http://github.com/kraj/meta-altera>.
>>
>>> Kevin and Dalon hold out for
>>> github.com/altera-opensource/meta-altera<http://github.com/altera-opensourc
>>> e/meta-altera>, and Dalon specifically says "... and repos under any user
>>> name in github are forks".
>>
>>> So is there an official ;-) dichotomy between altera and oe?
>>>
>>> Thanks for listening...
>>> --
>>> jim
>>>
>>>
>>> -----Ursprüngliche Nachricht-----
>>> Von: Alex J Lennon [mailto:ajlennon@dynamicdevices.co.uk]
>>> Gesendet: Mittwoch, 29. Juli 2015 15:10
>>> An: Spriggs, Jim <J.Spriggs@raylase.de<mailto:J.Spriggs@raylase.de>>
>>> Cc: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
>>> Betreff: Re: [yocto] Which repo for meta-altera ?
>>>
>>>
>>>
>>> On 28/07/2015 10:10, Spriggs, Jim
>>>
>>> wrote:
>>>
>>>  Hi Guys; confused noob here...
>>>
>>>  There appear to be (at least) two "official" repos for meta-altera:
>>>
>>>          github.com/kraj/meta-altera<http://github.com/kraj/meta-altera>
>>>
>>>  and
>>>
>>>
>>> git.rocketboards.org/meta-altera.git<http://git.rocketboards.org/meta-alter
>>> a.git>
>>
>>>
>>>  So how should I choose between them?
>>>
>>>  Thanks!
>>>  --
>>>  Jim
>>>
>>>  Sorry about the company sig.: I can't switch it off.
>>>
>>>
>>> fwiw I would usually start with the official index
>>>
>>> http://layers.openembedded.org/layerindex/branch/master/layers/
>>>
>>> This seems to point to github
>>>
>>> Cheers, Alex
>>>
>>>
>>> ________________________________
>>>
>>>
>>> RAYLASE AG
>>> Argelsrieder Feld 2+4
>>> 82234 Wessling
>>> Germany
>>> Tel.: +49-(0)8153/88 98-0
>>> Fax: +49-(0)8153/88 98-10
>>> http://www.raylase.de
>>>
>>> District Court Munich, HRB 131450
>>>
>>> Board: Peter von Jan (CEO)
>>>
>>> Supervisory Board: Dr. Ulrich Lohmann (Chairman)
>>>
>>>
>>> Diese E-Mail enthält vertrauliche und/oder rechtlich geschützte
>>> Informationen. Wenn Sie nicht der richtige Adressat sind oder diese E-Mail
>>> irrtümlich erhalten haben, informieren Sie bitte sofort den Absender und
>>> vernichten Sie diese Mail. Das unerlaubte Kopieren sowie die unbefugte
>>> Weitergabe dieser Mail ist nicht gestattet.
>>
>>> This e-mail may contain confidential and/or privileged information. If you
>>> are not the intended recipient (or have received this e-mail in error)
>>> please notify the sender immediately and destroy this e-mail. Any
>>> unauthorized copying, disclosure or distribution of the material in this
>>> e-mail is strictly forbidden.
>>
>>> --
>>> Sent from my Android device with K-9 Mail. Please excuse my brevity.
>>>
>>> ________________________________
>>>
>>> RAYLASE AG
>>> Argelsrieder Feld 2+4
>>> 82234 Wessling
>>> Germany
>>> Tel.: +49-(0)8153/88 98-0
>>> Fax: +49-(0)8153/88 98-10
>>> http://www.raylase.de
>>>
>>> District Court Munich, HRB 131450
>>>
>>> Board: Peter von Jan (CEO)
>>>
>>> Supervisory Board: Dr. Ulrich Lohmann (Chairman)
>>>
>>>
>>> Diese E-Mail enthält vertrauliche und/oder rechtlich geschützte
>>> Informationen. Wenn Sie nicht der richtige Adressat sind oder diese E-Mail
>>> irrtümlich erhalten haben, informieren Sie bitte sofort den Absender und
>>> vernichten Sie diese Mail. Das unerlaubte Kopieren sowie die unbefugte
>>> Weitergabe dieser Mail ist nicht gestattet.
>>
>>> This e-mail may contain confidential and/or privileged information. If you
>>> are not the intended recipient (or have received this e-mail in error)
>>> please notify the sender immediately and destroy this e-mail. Any
>>> unauthorized copying, disclosure or distribution of the material in this
>>> e-mail is strictly forbidden.
>>
>> --
>>
>> Paul Eggleton
>> Intel Open Source Technology Centre

