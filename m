Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFCC4E00B23; Thu, 30 Jul 2015 10:02:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 401B1E00AE9
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 10:02:33 -0700 (PDT)
Received: by iodd187 with SMTP id d187so59959025iod.2
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 10:02:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=bHz6cK8EjiBFRnCf1NnXQqU25MJXVlClqWeP7I7ZADI=;
	b=QAEuVp+k7A7R5DzmvtpdzzLelNl3mk8EBOVNEIMDVQQ3cEAYCc5HJQKm0wmcMb2Mom
	fsZyOX1UHWtOOU/RLJOkQ80r2gz02frUMyDccQteGU/hAvvelCOYdfQJsuDyKRXNdVU0
	NjJpyEboPcqcuWjtUdQy3MqX0srdiDnSCPfX0oP3U686SQ1hnQRUrtfHFbIhag3+AsaA
	ZFAPcj5NB80XncjXK/7wkVdZAXWAyWeQcMeYHKooXcxo59ITFJC+3gNSBfq61dEd3AzS
	ZSrudiDO6/1deIMDghlYyWIlnpNaHA90PZrnz7ZxLNFRgsVWLoQvN741THxl3dMpAXEe
	ausw==
X-Received: by 10.107.4.6 with SMTP id 6mr11781912ioe.49.1438275753251; Thu,
	30 Jul 2015 10:02:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.38.79 with HTTP; Thu, 30 Jul 2015 10:02:03 -0700 (PDT)
In-Reply-To: <7861693.hW9MCO2lEF@peggleto-mobl.ger.corp.intel.com>
References: <2238EDC6081C944E97E4EE915AE5CBEC5476A872@EXCHANGE-B.raylase.de>
	<81e2e36e8df04c9584ea5a9ca8afa303@googlemail.com>
	<2238EDC6081C944E97E4EE915AE5CBEC5476EED6@EXCHANGE-B.raylase.de>
	<7861693.hW9MCO2lEF@peggleto-mobl.ger.corp.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 30 Jul 2015 09:02:03 -0800
Message-ID: <CAMKF1soKnb5LR7pkiXW2=o0hjA4iVx_803yO3P=2vEc_85Y0gQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Yves Vandervennet <yvanderv@opensource.altera.com>,
	"rfi@lists.rocketboards.org" <rfi@lists.rocketboards.org>,
	Dalon Westergreen <dwesterg@gmail.com>,
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
X-List-Received-Date: Thu, 30 Jul 2015 17:02:37 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 30, 2015 at 12:50 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> (Adding Khem and Yves, the maintainers of the github repo, to CC)
>
> In the interests of keeping the layer index accurate, can we get some
> clarification on which repo is the official BSP?

Please use github.com/kraj/meta-altera as mentioned in layerindex as
well. This is the community supported BSP

>
> Thanks,
> Paul
>
> On Thursday 30 July 2015 06:52:22 Spriggs, Jim wrote:
>> Hi Kevin,
>>
>> Rodger, got it this time =E2=80=93 I had indeed missed the clue about th=
e
>> maintainers.
>
>> I should RTFM more often=E2=80=A6.
>>
>> Many thanks for your help and patience =E2=98=BA.
>> --
>> jim
>>
>> Von: enak999@googlemail.com [mailto:enak999@googlemail.com]
>> Gesendet: Mittwoch, 29. Juli 2015 22:37
>> An: Dalon Westergreen <dwesterg@gmail.com>; Spriggs, Jim
>> <J.Spriggs@raylase.de>; Alex J Lennon <ajlennon@dynamicdevices.co.uk>
>  Cc:
>> yocto@yoctoproject.org; rfi@lists.rocketboards.org
>> Betreff: Re: [yocto] Which repo for meta-altera ?
>>
>> As you can read in the ReadMe.md Khem Raj and Yves Vandervennet are the
>> official maintainers of
>> github.com/altera-opensource/meta-altera<http://github.com/altera-openso=
urc
>> e/meta-altera>
>
>> I really recommend to use
>> github.com/altera-opensource/meta-altera<http://github.com/altera-openso=
urc
>> e/meta-altera> instead of the fork from Khem Raj. But since you use the =
fork
>> of one of the maintainers, it will probably be most of the time in synch
>> with the altera-opensource repository.
>
>> Von: Dalon Westergreen<mailto:dwesterg@gmail.com>
>> Gesendet: =E2=80=8EMittwoch=E2=80=8E, =E2=80=8E29=E2=80=8E. =E2=80=8EJul=
i=E2=80=8E =E2=80=8E2015 =E2=80=8E21=E2=80=8E:=E2=80=8E54
>> An: Spriggs, Jim<mailto:J.Spriggs@raylase.de>, Alex J
>> Lennon<mailto:ajlennon@dynamicdevices.co.uk>, Kevin
>> B.<mailto:enak999@googlemail.com>
>  Cc:
>> yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>,
>> rfi@lists.rocketboards.org<mailto:rfi@lists.rocketboards.org>
>> As far as I understand it Altera only maintains the one repo.
>> On July 29, 2015 6:44:23 AM PDT, "Spriggs, Jim"
>> <J.Spriggs@raylase.de<mailto:J.Spriggs@raylase.de>> wrote:
>
>> Hi Alex, Dalon, Kevin, Lists
>>
>> hmmm, so I guess I'm still confused (sorry).
>>
>> Alex recommends going via the "official" oe layers index, which currentl=
y
>> links directly to
>> github.com/kraj/meta-altera<http://github.com/kraj/meta-altera>.
>
>> Kevin and Dalon hold out for
>> github.com/altera-opensource/meta-altera<http://github.com/altera-openso=
urc
>> e/meta-altera>, and Dalon specifically says "... and repos under any use=
r
>> name in github are forks".
>
>> So is there an official ;-) dichotomy between altera and oe?
>>
>> Thanks for listening...
>> --
>> jim
>>
>>
>> -----Urspr=C3=BCngliche Nachricht-----
>> Von: Alex J Lennon [mailto:ajlennon@dynamicdevices.co.uk]
>> Gesendet: Mittwoch, 29. Juli 2015 15:10
>> An: Spriggs, Jim <J.Spriggs@raylase.de<mailto:J.Spriggs@raylase.de>>
>> Cc: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
>> Betreff: Re: [yocto] Which repo for meta-altera ?
>>
>>
>>
>> On 28/07/2015 10:10, Spriggs, Jim
>>
>> wrote:
>>
>>  Hi Guys; confused noob here...
>>
>>  There appear to be (at least) two "official" repos for meta-altera:
>>
>>          github.com/kraj/meta-altera<http://github.com/kraj/meta-altera>
>>
>>  and
>>
>>
>> git.rocketboards.org/meta-altera.git<http://git.rocketboards.org/meta-al=
ter
>> a.git>
>
>>
>>  So how should I choose between them?
>>
>>  Thanks!
>>  --
>>  Jim
>>
>>  Sorry about the company sig.: I can't switch it off.
>>
>>
>> fwiw I would usually start with the official index
>>
>> http://layers.openembedded.org/layerindex/branch/master/layers/
>>
>> This seems to point to github
>>
>> Cheers, Alex
>>
>>
>> ________________________________
>>
>>
>> RAYLASE AG
>> Argelsrieder Feld 2+4
>> 82234 Wessling
>> Germany
>> Tel.: +49-(0)8153/88 98-0
>> Fax: +49-(0)8153/88 98-10
>> http://www.raylase.de
>>
>> District Court Munich, HRB 131450
>>
>> Board: Peter von Jan (CEO)
>>
>> Supervisory Board: Dr. Ulrich Lohmann (Chairman)
>>
>>
>> Diese E-Mail enth=C3=A4lt vertrauliche und/oder rechtlich gesch=C3=BCtzt=
e
>> Informationen. Wenn Sie nicht der richtige Adressat sind oder diese E-Ma=
il
>> irrt=C3=BCmlich erhalten haben, informieren Sie bitte sofort den Absende=
r und
>> vernichten Sie diese Mail. Das unerlaubte Kopieren sowie die unbefugte
>> Weitergabe dieser Mail ist nicht gestattet.
>
>> This e-mail may contain confidential and/or privileged information. If y=
ou
>> are not the intended recipient (or have received this e-mail in error)
>> please notify the sender immediately and destroy this e-mail. Any
>> unauthorized copying, disclosure or distribution of the material in this
>> e-mail is strictly forbidden.
>
>> --
>> Sent from my Android device with K-9 Mail. Please excuse my brevity.
>>
>> ________________________________
>>
>> RAYLASE AG
>> Argelsrieder Feld 2+4
>> 82234 Wessling
>> Germany
>> Tel.: +49-(0)8153/88 98-0
>> Fax: +49-(0)8153/88 98-10
>> http://www.raylase.de
>>
>> District Court Munich, HRB 131450
>>
>> Board: Peter von Jan (CEO)
>>
>> Supervisory Board: Dr. Ulrich Lohmann (Chairman)
>>
>>
>> Diese E-Mail enth=C3=A4lt vertrauliche und/oder rechtlich gesch=C3=BCtzt=
e
>> Informationen. Wenn Sie nicht der richtige Adressat sind oder diese E-Ma=
il
>> irrt=C3=BCmlich erhalten haben, informieren Sie bitte sofort den Absende=
r und
>> vernichten Sie diese Mail. Das unerlaubte Kopieren sowie die unbefugte
>> Weitergabe dieser Mail ist nicht gestattet.
>
>> This e-mail may contain confidential and/or privileged information. If y=
ou
>> are not the intended recipient (or have received this e-mail in error)
>> please notify the sender immediately and destroy this e-mail. Any
>> unauthorized copying, disclosure or distribution of the material in this
>> e-mail is strictly forbidden.
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

