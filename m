Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF008E00E02; Wed,  6 Jul 2016 12:15:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.80.206.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp685.redcondor.net (smtp685.redcondor.net [208.80.206.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C2C4E00DFE
	for <yocto@yoctoproject.org>; Wed,  6 Jul 2016 12:15:40 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp685.redcondor.net ({20c8e40f-6b6c-4c9e-abff-1640ea7bf404})
	via TCP (outbound) with ESMTPS id 20160706191536806_0685;
	Wed, 06 Jul 2016 12:15:36 -0700
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [99.240.204.5] (port=53448 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1bKsK0-0004cO-Pf; Wed, 06 Jul 2016 15:17:20 -0400
Date: Wed, 6 Jul 2016 15:14:37 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Chris Hallinan <challinan@gmail.com>
In-Reply-To: <CAME0jBQXFY7hvuZZ2Db3M_7kku7=0-b_UU6W9CBY17TVpym50w@mail.gmail.com>
Message-ID: <alpine.LFD.2.20.1607061508290.3259@localhost.localdomain>
References: <alpine.LFD.2.20.1607061409100.2101@localhost.localdomain>
	<CAME0jBQXFY7hvuZZ2Db3M_7kku7=0-b_UU6W9CBY17TVpym50w@mail.gmail.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
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
X-List-Received-Date: Wed, 06 Jul 2016 19:15:44 -0000
Content-Type: text/plain; charset=US-ASCII

On Wed, 6 Jul 2016, Chris Hallinan wrote:

> Hi Robert,
> That's not old, that's ancient in dog^HU-Boot years - LOL!
>
> It's been quite a while since I looked at a PPC U-Boot, but at a
> minimum, you will need to link U-Boot to a RAM'able address.  By
> default, I'm sure the recipe links it for the NOR addresses.  When
> it boots from NOR it immediately relocates itself to a RAM address
> from NOR, if memory serves.  Notice it's crashing right away, on the
> second instruction.

  i came to that conclusion ... i looked at the u-boot.srec file that
was generated and, sure enough:

S00E0000752D626F6F742E73726563C0
S315FE00000042424242424242420606060606060606AC
S315FE00001000000000000000000000000000000000DC
S315FE000020A0A0A0A0A0A0A0A06060606060606060CC
... snip ...

so definitely linked for flashing to beginning of NOR flash at
0xFE000000. so i suspect i could just flash it and reset and it would
work just fine. and never mind, i found the answer i was after:

http://www.denx.de/wiki/view/DULG/CanUBootBeConfiguredSuchThatItCanBeStartedInRAM

i was hoodwinked into thinking it would be easy because i found this
page:

https://blackfin.uclinux.org/doku.php?id=bootloaders:u-boot:tftp_loading_files

of course, that page is for the blackfin, precisely one of the
platforms the denx page says it *can* work for. grrrrrrrrr.

  so, before i commit myself to this, who's the PPC/MPC8315E-RDB
expert on this list who can confirm a stock u-boot should flash to NOR
and just plain run?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================



