Return-Path: <Vincent.Riera@imgtec.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55518E00848; Mon, 15 Sep 2014 04:15:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailapp01.imgtec.com (mailapp01.imgtec.com [195.59.15.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C146BE00746
	for <yocto@yoctoproject.org>; Mon, 15 Sep 2014 04:15:11 -0700 (PDT)
Received: from KLMAIL01.kl.imgtec.org (unknown [192.168.5.35])
	by Websense Email Security Gateway with ESMTPS id 513A5F80D577F;
	Mon, 15 Sep 2014 12:15:06 +0100 (IST)
Received: from LEMAIL01.le.imgtec.org (192.168.152.62) by
	KLMAIL01.kl.imgtec.org (192.168.5.35) with Microsoft SMTP Server (TLS)
	id 14.3.195.1; Mon, 15 Sep 2014 12:15:08 +0100
Received: from [192.168.154.104] (192.168.154.104) by LEMAIL01.le.imgtec.org
	(192.168.152.62) with Microsoft SMTP Server (TLS) id 14.3.195.1;
	Mon, 15 Sep 2014 12:15:07 +0100
Message-ID: <5416CA3B.5030609@imgtec.com>
Date: Mon, 15 Sep 2014 12:15:07 +0100
From: Vicente Olivert Riera <Vincent.Riera@imgtec.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.8.0
MIME-Version: 1.0
To: Andrea Adami <andrea.adami@gmail.com>
References: <1410539753-24011-1-git-send-email-Vincent.Riera@imgtec.com>
	<CAAQYJAuZrQ5H6yWeuzx=oW-7D-McyAAgn3Ltsij-yCNH4kS-Gg@mail.gmail.com>
In-Reply-To: <CAAQYJAuZrQ5H6yWeuzx=oW-7D-McyAAgn3Ltsij-yCNH4kS-Gg@mail.gmail.com>
X-Originating-IP: [192.168.154.104]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/2] Add support for MIPS32r2 and CI20 to Yocto
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
X-List-Received-Date: Mon, 15 Sep 2014 11:15:15 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 09/15/2014 07:54 AM, Andrea Adami wrote:
> On Fri, Sep 12, 2014 at 6:35 PM, Vicente Olivert Riera
> <Vincent.Riera@imgtec.com> wrote:
>> Add support for the MIPS Creator CI20 machine. That board has a MIPS32r2
>> architecture so we also add support for that.
>>
>> Vicente Olivert Riera (2):
>>    Add support for MIPS32r2
>>    Add MIPS Creator CI20 machine
>>
>>   meta-yocto-bsp/conf/machine/ci20.conf       |   10 ++++++++++
>>   meta/conf/machine/include/tune-mips32r2.inc |   25 +++++++++++++++++++++++++
>>   2 files changed, 35 insertions(+), 0 deletions(-)
>>   create mode 100644 meta-yocto-bsp/conf/machine/ci20.conf
>>   create mode 100644 meta/conf/machine/include/tune-mips32r2.inc
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> Hi Vicente,
>
> there is already some support for mips32r2 (see
> include/tune-mips32r2.inc) in oe-core master.
> It looks like your patch is extending it so please rebase and resend
> the patch to openembedded-core@lists.openembedded.org for review.
>
> Thanks
>
> Andrea
>

Yeah, I have noticed there is support for mips32r2 hard-float in Yocto's 
master branch. I was cloning the Daisy branch.

mips32r2 hard-float is all I need, so by now I'm not going to make any 
change to that file.

Thanks.

-- 
Vincent

