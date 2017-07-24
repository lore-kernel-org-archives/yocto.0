Return-Path: <jack.mitchell@eumx.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10BC8E00BF3; Mon, 24 Jul 2017 02:17:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [91.82.101.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1819 seconds by postgrey-1.32 at yocto-www;
	Mon, 24 Jul 2017 02:17:00 PDT
Received: from owm.eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0F4BE00A9C
	for <yocto@yoctoproject.org>; Mon, 24 Jul 2017 02:17:00 -0700 (PDT)
To: yocto@yoctoproject.org
References: <20170722224032.1963-1-twoerner@gmail.com>
	<20170722234550.GB26163@bill-the-cat>
	<CAHUNapQaKUVuHkehG2L-rCA0xh-fhZaqa9qBO4C2w5FtiVzyog@mail.gmail.com>
From: Jack Mitchell <ml@embed.me.uk>
Message-ID: <33bba87d-ce40-417a-31ab-f8432248aa1b@eumx.net>
Date: Mon, 24 Jul 2017 09:46:38 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CAHUNapQaKUVuHkehG2L-rCA0xh-fhZaqa9qBO4C2w5FtiVzyog@mail.gmail.com>
Subject: Re: [PATCH] u-boot-rockchip: update require path
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
X-List-Received-Date: Mon, 24 Jul 2017 09:17:04 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

On 23/07/2017 02:41, Trevor Woerner wrote:
> Hey Tom,
>
> On Sat, Jul 22, 2017 at 7:45 PM, Tom Rini <trini@konsulko.com> wrote:
>> On Sat, Jul 22, 2017 at 06:40:32PM -0400, Trevor Woerner wrote:
>>
>>> The oe-core recipe was updated (2017.05 -> 2017.07), this recipe needed to
>>> be updated to suit. However, this u-boot (from rockchip) is still at version
>>> 2017.05.
>>>
>>> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
>> Not an objection, but, what's missing to move to just using upstream
>> u-boot?
> Excellent question! I was just thinking the same thing myself as I was
> preparing this patch :-)
>
> This patch is a maintenance patch that will allow builds to succeed,
> but I admit it isn't ideal.
>
> At this point I'm hoping
> http://lists.openembedded.org/pipermail/openembedded-core/2017-July/139974.html
> goes in so I can make 2 sets of recipes: one for rockchip components
> and one for upstream. At that point I'll evaluate all the upstream
> things and all the rockchip things to make sure they work on the
> boards I have. At that point I can clean all this up.
>
> Hopefully I'll also be able to add the tinker board rk3288 and the firefly 3399.

I have a small layer I use for booting mainline components on the 
tinker, so i can confirm that works with current upstream.

https://github.com/jackmitch/meta-tinker



