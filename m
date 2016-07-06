Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9E03E00E08; Wed,  6 Jul 2016 12:37:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A171FE00DFF
	for <yocto@yoctoproject.org>; Wed,  6 Jul 2016 12:37:16 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u66Jb6ZU025975
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 6 Jul 2016 12:37:06 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Wed, 6 Jul 2016 12:37:05 -0700
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Chris Hallinan
	<challinan@gmail.com>
References: <alpine.LFD.2.20.1607061409100.2101@localhost.localdomain>
	<CAME0jBQXFY7hvuZZ2Db3M_7kku7=0-b_UU6W9CBY17TVpym50w@mail.gmail.com>
	<alpine.LFD.2.20.1607061508290.3259@localhost.localdomain>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <577D5DE0.5010706@windriver.com>
Date: Wed, 6 Jul 2016 15:37:04 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.20.1607061508290.3259@localhost.localdomain>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: how to tftp download a newer u-boot into RAM and simply execute it?
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
X-List-Received-Date: Wed, 06 Jul 2016 19:37:21 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-07-06 03:14 PM, Robert P. J. Day wrote:
> On Wed, 6 Jul 2016, Chris Hallinan wrote:
>
>> Hi Robert,
>> That's not old, that's ancient in dog^HU-Boot years - LOL!
>>
>> It's been quite a while since I looked at a PPC U-Boot, but at a
>> minimum, you will need to link U-Boot to a RAM'able address.  By
>> default, I'm sure the recipe links it for the NOR addresses.  When
>> it boots from NOR it immediately relocates itself to a RAM address
>> from NOR, if memory serves.  Notice it's crashing right away, on the
>> second instruction.
>
>    i came to that conclusion ... i looked at the u-boot.srec file that
> was generated and, sure enough:
>
> S00E0000752D626F6F742E73726563C0
> S315FE00000042424242424242420606060606060606AC
> S315FE00001000000000000000000000000000000000DC
> S315FE000020A0A0A0A0A0A0A0A06060606060606060CC
> ... snip ...
>
> so definitely linked for flashing to beginning of NOR flash at
> 0xFE000000. so i suspect i could just flash it and reset and it would
> work just fine. and never mind, i found the answer i was after:
>
> http://www.denx.de/wiki/view/DULG/CanUBootBeConfiguredSuchThatItCanBeStartedInRAM
>
> i was hoodwinked into thinking it would be easy because i found this
> page:
>
> https://blackfin.uclinux.org/doku.php?id=bootloaders:u-boot:tftp_loading_files
>
> of course, that page is for the blackfin, precisely one of the
> platforms the denx page says it *can* work for. grrrrrrrrr.
>
>    so, before i commit myself to this, who's the PPC/MPC8315E-RDB
> expert on this list who can confirm a stock u-boot should flash to NOR
> and just plain run?

Kevin Hao @ Wind has been looking after the reference build for us, so
he is the best bet to know.

Bruce

>
> rday
>


