Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BCBBE00DBB; Sun, 27 Sep 2015 13:40:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10C5EE007C9
	for <yocto@yoctoproject.org>; Sun, 27 Sep 2015 13:40:43 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 68E4FF811F0; Sun, 27 Sep 2015 14:40:41 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 23017F811F0;
	Sun, 27 Sep 2015 14:40:40 -0600 (MDT)
To: yocto@yoctoproject.org
References: <5604850F.2030108@eins-plus.de>
	<CAMKF1so1qMH=FNzoj0PzE7FN1FeGiLM=mcq-ywYfRziO4Cb-Ng@mail.gmail.com>
	<CALbNGRTRh6ezt416=z2qbBiRQnVUObesOrMWtQTgyPs3N7u8Dw@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <56085450.1010106@mlbassoc.com>
Date: Sun, 27 Sep 2015 14:40:48 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <CALbNGRTRh6ezt416=z2qbBiRQnVUObesOrMWtQTgyPs3N7u8Dw@mail.gmail.com>
Subject: Re: [meta-raspberrypi] compiling userland
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
X-List-Received-Date: Sun, 27 Sep 2015 20:40:48 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 2015-09-27 14:24, Andreas Müller wrote:
> On Fri, Sep 25, 2015 at 6:42 AM, Khem Raj <raj.khem@gmail.com> wrote:
>> Can you try the patches from
>> https://github.com/kraj/meta-raspberrypi/commits/kraj/master
>>
> Hi Khem,
>
> Because of running into same issues I've tried your branch and get
> errors as attached with current oe-core.
>
> Off-topic note: I think this layer is totally under-maintained. There
> were many patches send that were not even commented. This ends up in
> forks (e.g yours - and yes I've seen your efforts in sending patches)
> which should be avoided.

Perhaps the layer need additional maintainers?  I'm happy to volunteer,
I have multiple RaspberryPi(s) (model B) as well as a RaspberryPi-2 available
for testing.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

