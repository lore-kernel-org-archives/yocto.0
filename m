Return-Path: <ayoub.zaki@embexus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 065D0E00D4F; Wed,  8 Nov 2017 08:51:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE,T_FILL_THIS_FORM_SHORT
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.30.212.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
Received: from mailrelay2-3.pub.mailoutpod1-cph3.one.com
	(mailrelay2-3.pub.mailoutpod1-cph3.one.com [46.30.212.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC18AE00D4D
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 08:51:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=embexus.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type:
	content-transfer-encoding:in-reply-to:references;
	bh=k9e+iPvkqkBXuLdmebNH8HrrxdE6HIJrusq59uCSZ+U=;
	b=m6V8DCDIMzmAD2I58fa88wkWXJpAvLOw9kqbrmrpVCpq4nHYxElx/QHrWGSEttbLN3m25VflrjZtv
	Awv5N8wClz8L+MmEHY+U3FPqFKqM0rrFXi4PZZiCUI4NXQ4f2OrCQa5o1ZhPTwV67URs0jDCgZianq
	ZXUH/5L3CSYjjUfQ=
X-HalOne-Cookie: 2fffba584025f70e575947101d6d9b52c478263e
X-HalOne-ID: 071699c4-c4a5-11e7-a0f9-d0431ea8a290
Received: from [192.168.178.34] (unknown [93.184.187.27])
	by mailrelay2.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id 071699c4-c4a5-11e7-a0f9-d0431ea8a290;
	Wed, 08 Nov 2017 16:51:12 +0000 (UTC)
To: yocto@yoctoproject.org
References: <CAE0QtjPDdktSRp6JSUtc_wmxxw5J4fTmP_29PrBEZ8bGo2uBig@mail.gmail.com>
	<7b91c698b1dd25c12d10792fa298e48c@sw-optimization.com>
	<CAE0QtjMWEr78VDNzPCd=sC2Uze9FwK=r23yNUt3ZsVEDTRvrfw@mail.gmail.com>
	<CAJTo0LaapSRMFq79XrQL1RJUgG1ZJtp909y+MOoUbuUBPHN37g@mail.gmail.com>
	<CAE0QtjMF=wfkypu8Fy=3Mq-Jd8RXvH2i6wmbmATpOBobzfssvg@mail.gmail.com>
	<CAJTo0LZYLhQWPKvwwsx_r-icVC-78QnOH-idvD8ag9NrTcxwQg@mail.gmail.com>
	<CAE0QtjO__n4qCFySZ=r4vEJ_6VO=hGrRqxgwVdrzUYC0Am9QmA@mail.gmail.com>
	<CAJTo0LYWP-jNKLr949rQa5188txsBVBD=aVWetK=NmA=1jrGwg@mail.gmail.com>
	<CAE0QtjPW4m7L0FWjGQoJiz823ACPSWBp1HkRJuYq2MuersNsow@mail.gmail.com>
From: Ayoub Zaki <ayoub.zaki@embexus.com>
Message-ID: <654e397a-9af9-a215-f49e-1d139cc0f56e@embexus.com>
Date: Wed, 8 Nov 2017 17:51:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAE0QtjPW4m7L0FWjGQoJiz823ACPSWBp1HkRJuYq2MuersNsow@mail.gmail.com>
Subject: Re: Annoying "rerun to fix" bug for bitbake: task failed, but rerun can fix it.
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
X-List-Received-Date: Wed, 08 Nov 2017 16:51:16 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On 08.11.2017 17:47, Jerry Lian wrote:
> Really, only me got this problem?
>
Probably it's just you did forgot to update your system to fix known SMT 
Problems ...

>
>
>
> On Wed, Nov 8, 2017 at 11:40 AM, Burton, Ross <ross.burton@intel.com 
> <mailto:ross.burton@intel.com>> wrote:
>
>     The failure doesn't happen for anyone else. You're literally
>     saying "it breaks" but not even saying what "it" is, or how "it"
>     is breaking.
>
>     Ross
>
>     On 8 November 2017 at 16:38, Jerry Lian <jerry.lian@gmail.com
>     <mailto:jerry.lian@gmail.com>> wrote:
>
>         Isn't my problem clear: the failure pop-up randomly!
>         Do you mean the random failure also help you for debugging?
>
>
>
>
>         On Wed, Nov 8, 2017 at 11:33 AM, Burton, Ross
>         <ross.burton@intel.com <mailto:ross.burton@intel.com>> wrote:
>
>             Well next time it happens feel free to reply to this
>             thread. Otherwise you're asking us "fix my problem"
>             without saying what the problem is.
>
>             Ross
>
>             On 8 November 2017 at 16:31, Jerry Lian
>             <jerry.lian@gmail.com <mailto:jerry.lian@gmail.com>> wrote:
>
>                 So that is further tricky part:
>                 * it may fail when finishing 20%, 40% 60%, 80%
>                 * And the failure last time may not appear next time.
>                 * So it just pop-up randomly
>
>                 (By the way, I just build brand new PC with 16 threads
>                 CPU, 32G memory, and install Ubuntu 16.4.3 with ESXI-6.5)
>                 (so really confused)
>
>
>
>                 On Wed, Nov 8, 2017 at 11:24 AM, Burton, Ross
>                 <ross.burton@intel.com <mailto:ross.burton@intel.com>>
>                 wrote:
>
>                     The autobuilder does about 50 builds a night using
>                     pure poky and we don't see this, so again: what
>                     recipe and what errors?
>
>                     Ross
>
>                     On 8 November 2017 at 16:22, Jerry Lian
>                     <jerry.lian@gmail.com
>                     <mailto:jerry.lian@gmail.com>> wrote:
>
>                         I am not talking about my own layer or recipe.
>                         It happens even when I run the demo
>                         QEMU/beaglebone builds.
>                         (I just download poky, and make NO modifications)
>
>
>
>
>                         On Wed, Nov 8, 2017 at 10:56 AM, Eric Schwarz
>                         <eas@sw-optimization.com
>                         <mailto:eas@sw-optimization.com>> wrote:
>
>                             Most likely a dependency problem of the
>                             package which fails w/ exit code 1.
>                             Check the dependencies in the recipe and
>                             w/ Yocto's bitbake it self.
>
>                             Cheers
>                             Eric
>
>
>                             Am 08.11.2017 16:49, schrieb Jerry Lian:
>
>                                 I am not sure whether it is a bug or
>                                 an error: * Quite often, bitbake will
>                                 fail before finishing, with message
>                                 like: ... task failed with exit code
>                                 1... * But if you rerun bitbake, it
>                                 will continue to build. * So sometimes
>                                 I have to rerun many times for finish
>                                 one build ---- annoying! (by the way,
>                                 my CPU can run 16 threads)
>
>                                 Any idea to clear this annoying bug?
>                                 thanks.
>
>
>
>                         --
>                         _______________________________________________
>                         yocto mailing list
>                         yocto@yoctoproject.org
>                         <mailto:yocto@yoctoproject.org>
>                         https://lists.yoctoproject.org/listinfo/yocto
>                         <https://lists.yoctoproject.org/listinfo/yocto>
>
>
>
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


