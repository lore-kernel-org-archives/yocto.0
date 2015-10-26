Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54D1EE00B8F; Mon, 26 Oct 2015 02:37:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_00,SPF_HELO_SOFTFAIL,
	URIBL_JP_SURBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.7 SPF_HELO_SOFTFAIL SPF: HELO does not match SPF record
	(softfail)
	* 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL blocklist
	*      [URIs: gherzan.ro]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74713E00978
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 02:37:15 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 8CD8527E3D5;
	Mon, 26 Oct 2015 09:37:13 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 4FFdknZigUSd; Mon, 26 Oct 2015 09:36:51 +0000 (UTC)
Received: from [192.168.0.2] (cpc47-live22-2-0-cust92.17-2.cable.virginm.net
	[86.17.157.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 9EA9C27E3CF;
	Mon, 26 Oct 2015 09:36:51 +0000 (UTC)
To: Andrei Gherzan <andrei@gherzan.ro>
References: <CAK18fxHMv0LR1y58wzRZHEEmy-mwbMRHKTbqh9KR56NeEB98Cg@mail.gmail.com>
	<CAHTvVMc7DBOLGvOU7X5YuO+O6FKSEaXW0aUsBd_VHsKQrEhqcg@mail.gmail.com>
	<20151024201300.GG4459@resin>
	<F491BE1B-5731-4EBC-8484-6C291EE73C16@gmail.com>
	<20151024210633.GH4459@resin>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Message-ID: <562DF42A.6020600@dynamicdevices.co.uk>
Date: Mon, 26 Oct 2015 09:36:42 +0000
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <20151024210633.GH4459@resin>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-chip] Yocto on the 9$ computer
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
X-List-Received-Date: Mon, 26 Oct 2015 09:37:18 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 24/10/2015 22:06, Andrei Gherzan wrote:
> On Sat, Oct 24, 2015 at 09:46:41PM +0100, Alex J Lennon wrote:
>>
>>
>>
>> Sent from my iPhone
>>>> On 24 Oct 2015, at 21:13, Andrei Gherzan <andrei@gherzan.ro> wrote:
>>>>
>>>>> On Sat, Oct 24, 2015 at 09:58:42PM +0200, Nicolas Aguirre wrote:
>>>>> 2015-10-24 19:26 GMT+02:00 Andrei Gherzan <andrei@gherzan.ro>:
>>>>> Hi all,
>>>> Hi Andrei,
>>>>
>>>>> Have a C.H.I.P. 9$ computer? It works with Yocto now.
>>>>>
>>>>> http://layers.openembedded.org/layerindex/branch/master/layer/meta-chip/
>>>> Good job.
>>>> IMO it make sense to add C.H.I.P support in meta-sunxi, don't you think ?
>>>>
>>>> https://github.com/linux-sunxi/meta-sunxi
>>> Well. Temporary it is a separate layer. And this is mainly because of the
>>> overhead you need for flashing the board. So I do see a benefit in keeping it
>>> separately. We will see in time.
>>>
>>> Thanks for feedback.
>> Great work Andrei. I have a couple of CHiPs here and was trying to decide whether meta-sunxi would provide what was needed or whether we needed a custom layer.
>>
>> I've been hugely impressed with what Docker+Resin gives me for application deployment management so I'd like to look at how easy it is to take your Linux/u-boot CHiP support and deploy via Resin.
>>
>> Are you at the point you have a base OS image for CHiP with Resin support? If not I would be interested in having a look at this with you.
>>
> We definitely thought about that already. The problem is that we currently rely
> on a BTRFS partition for the docker runtime environment. This obviously won't
> work on a flash raw device. So if you want to dig into this I can give you some
> hints, otherwise we will just tackle it when we will get to it.
>
>

Are you making use of any BTRFS specific features or should be it fairly
straightforward to use JFFS2 or similar?

Presumably BTRFS will sit happily on other devices with eMMC?

Best, Alex


