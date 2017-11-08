Return-Path: <ayoub.zaki@embexus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39DE4E00D51; Wed,  8 Nov 2017 11:13:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE,T_FILL_THIS_FORM_SHORT
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.30.212.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
Received: from mailrelay1-3.pub.mailoutpod1-cph3.one.com
	(mailrelay1-3.pub.mailoutpod1-cph3.one.com [46.30.212.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 556DCE00D4D
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 11:13:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=embexus.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type:
	content-transfer-encoding:in-reply-to:references;
	bh=XNABqvz7lV9LRbwYEdfGG0EeP+scsBfyvdgCBfioiYY=;
	b=BNrb6wWOA+7LnHUgqcvH3YAHstkoMzgoAuJHUGuz6OWu97iGs6Ab7MLiFKNwJy+3Wj1QnIJG/kIoL
	5rwCpfdgdiE0KygGe/3tMUew/LEBptc+iq5371xVeWj44NCKFLnJRHFsYkHpfyfwV2LVIrH9Dw+pif
	0MdhnbNJ4IF7TGnA=
X-HalOne-Cookie: 06bc60d12655218e7ef0ced514898a1cebb68f4a
X-HalOne-ID: efbb3592-c4b8-11e7-b91f-d0431ea8a283
Received: from [10.10.40.2] (unknown [46.45.147.204])
	by mailrelay1.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id efbb3592-c4b8-11e7-b91f-d0431ea8a283;
	Wed, 08 Nov 2017 19:13:44 +0000 (UTC)
To: yocto@yoctoproject.org
References: <CAE0QtjOyjit90GBrK4i1nCNP_et=GHH=xdnurw72MS+JLfOyDg@mail.gmail.com>
	<CAE0QtjP2tnXz6Un_BsEh3zmW3zUKvUGZWRC63NJWa-jwbZoFuQ@mail.gmail.com>
From: Ayoub Zaki <ayoub.zaki@embexus.com>
Message-ID: <2bc6b037-cc7e-3a1a-fcda-a0e0dfd3b3f6@embexus.com>
Date: Wed, 8 Nov 2017 20:13:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAE0QtjP2tnXz6Un_BsEh3zmW3zUKvUGZWRC63NJWa-jwbZoFuQ@mail.gmail.com>
Subject: Re: Yocto problem for Ryzen-7 cpu
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
X-List-Received-Date: Wed, 08 Nov 2017 19:13:47 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On 08.11.2017 20:07, Jerry Lian wrote:
> (weird, yocto mails to me blocked by my gmail, treated as spam?)
>
> Anyway, just change to Ubuntu-17, run first build, succeed with no 
> failures, good sign!
> Will run more and see.
Glad to read that you solved your problem :-)

You are Welcome!

>
>
>
>
>
> On Wed, Nov 8, 2017 at 12:06 PM, Jerry Lian <jerry.lian@gmail.com 
> <mailto:jerry.lian@gmail.com>> wrote:
>
>     (my Gmail does not accept new message for same subject? so I open
>     a new thread)
>
>     So bad: I do use Ryzen-7.
>     will Ubuntu-17 or latest Debian fix the problem?
>
>
>
>
>
>

-- 
Ayoub Zaki
Embedded Systems Consultant

Vaihinger Straße 2/1
D-71634 Ludwigsburg

Tel.     : +4971415074546
Mobile   : +4917662901545
Email    : ayoub.zaki@embexus.com
Homepage : https://embexus.com
VAT No.  : DE313902634


