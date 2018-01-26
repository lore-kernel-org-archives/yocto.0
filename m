Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D737DE00DE0; Thu, 25 Jan 2018 19:51:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C43BE00D6D
	for <yocto@yoctoproject.org>; Thu, 25 Jan 2018 19:51:32 -0800 (PST)
Received: by mail-pg0-f66.google.com with SMTP id g16so6450449pgn.7
	for <yocto@yoctoproject.org>; Thu, 25 Jan 2018 19:51:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=6w6TiTHoMu/VsKjXFViK7ooLQCH0ouaEnvzQJIeU9pk=;
	b=b7BZyFGai7IqqebnArUBXzVJYXN+QjTHP/MR6WwfFMTOIWWKog1SY1TzGvQhlDngEx
	eil46aEm0rtu+w5CbN1wFkdKmdvQ05JeIZyrgbWeyGjsM4y4URUsviUFxOFoqpe0Q1xd
	D+1EMd3SnSci/mEC95Y9HupSdxBKjZ7PD/IMP+kOfow6P+9e3KXw/n5A29jeaGhcRTzI
	OOPYSUd3TtjwQS8E6ITRcqttWTNZnkdcmpEkrbC2HB6vN0UMAgOfJr2OK3GGXjiGtZuj
	Q/ZWmzfdT82Xd1LyCIgcII1EHrq60+mGCfBYcEhPElh5TFs1mYrwlZTUe3Au8cd9kJeZ
	T3RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=6w6TiTHoMu/VsKjXFViK7ooLQCH0ouaEnvzQJIeU9pk=;
	b=e/B0iwIKco7Ga+nrtaVbQeiunE3TZXhsOw41doN+O8Qlf8eL05QcnaUBLl7qts35KC
	UtUVtuDHiFUgmsK3WWpRWOEDBvjEtHMjsHkDzVdsvQfyy0VswiWg7mSuPiK+KJZTYSnU
	vTzM2naKgrkV3GrXZJFbmrIO/oB/3jvoDe/v6cIUZZWiTEGb3q7qCJnzTXOyAamvJDw3
	JZaK8K2ElHcFkSyy3I1k0/8otJV/yMqJ+Dlq1okDujd1587/ijAwLVYYJ9Uimm/es5NV
	wLlJEyoPOMDCIdq4aVNLv+Yvg648CLi3syUKqR41yKI5dVtQ1thmacJum+q30dQowqjL
	DMFw==
X-Gm-Message-State: AKwxytdCXu+PHZK1+md5KpIsz5HxHeCf/lBo6C4Ov56kcxbEuMtRANfe
	IzBwbRsjczyqfi7oAEYGnjp9Opdw
X-Google-Smtp-Source: AH8x2267fm+OkOxxQ0ZeHhtGJyi5SntmHjek0nEk79N4HPins1bKpk3bM9rO+Y5YuAKR3HwTs/8vMQ==
X-Received: by 2002:a17:902:2c01:: with SMTP id
	m1-v6mr12849498plb.15.1516938691226; 
	Thu, 25 Jan 2018 19:51:31 -0800 (PST)
Received: from hermes.local ([2601:646:8880:466c:3012:7af4:dd04:6cda])
	by smtp.gmail.com with ESMTPSA id
	q10sm15394001pfc.140.2018.01.25.19.51.30 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 25 Jan 2018 19:51:30 -0800 (PST)
To: yocto@yoctoproject.org
References: <CAPb0b+MTepwNFB6KEybbdH9kYaox-N54=gFsuyWa9Xn+zK2MoQ@mail.gmail.com>
	<CALbNGRRGxLOPojWhFis7Ew0TOx1R_kx2_Rhp7AFJEa5GYuh=AQ@mail.gmail.com>
	<CALw8SCVP_pE=yyJcO0gULT+1J1T1E_pF0y3nQuShWi3feKBFdQ@mail.gmail.com>
	<CALbNGRTXT084ZC3cD4URao28SWTo0E-Lkr6FLjici5Pb9MppJg@mail.gmail.com>
	<CAK18fxFrW4LDvxneQv1VEcB6anirbtYgfGuWHQSzxQTC4Oo0CQ@mail.gmail.com>
	<CALbNGRR4GVLtkE+AjVwv0BRvPUnXSduibbjB9qkM9awZn+LEJw@mail.gmail.com>
	<CAK18fxF5=v4fJsRG7Kkcmu10UEeDecjJKatVw+Z5kwZ8qdn_Qg@mail.gmail.com>
	<CALbNGRRwt8c_QkPnEsTiVFssaqnUUH9inAzjXrK=Pi80t_sGmQ@mail.gmail.com>
	<CAPyrkgyJRsHEe9PrQ8nvE66D7wixfv760QaM0pbVoOreHdfbuw@mail.gmail.com>
	<CALbNGRSckHk37r9QqKXuQ3TGqA_oBPoEu4eFxDoM-5ZG9N2XWQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <e6dcc7ba-cc7e-2e98-7bcb-0fc21dc06415@gmail.com>
Date: Thu, 25 Jan 2018 19:51:29 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:58.0)
	Gecko/20100101 Thunderbird/58.0
MIME-Version: 1.0
In-Reply-To: <CALbNGRSckHk37r9QqKXuQ3TGqA_oBPoEu4eFxDoM-5ZG9N2XWQ@mail.gmail.com>
Subject: Re: [meta-raspberrypi] linux kernel rt
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
X-List-Received-Date: Fri, 26 Jan 2018 03:51:33 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 12/22/17 2:28 PM, Andreas Müller wrote:
> On Fri, Dec 22, 2017 at 7:57 PM, Paul Barker <pbarker@toganlabs.com 
> <mailto:pbarker@toganlabs.com>> wrote:
> 
>     On Fri, Dec 22, 2017 at 2:17 PM, Andreas Müller
>     <schnitzeltony@gmail.com <mailto:schnitzeltony@gmail.com>> wrote:
>     > On Fri, Dec 22, 2017 at 2:25 PM, Andrei Gherzan <andrei@gherzan.ro <mailto:andrei@gherzan.ro>> wrote:
>     >>
>     >> Hi Andreas,
>     >>
>     >> On Thu, Dec 21, 2017 at 8:59 PM, Andreas Müller <schnitzeltony@gmail.com <mailto:schnitzeltony@gmail.com>>
>     >> wrote:
>     >>>
>     >>>
>     >>> Why not simply one stable kernel with RT-patches applied if user decides
>     >>> by an option? That is what I am doing for >1 year now and meta-raspi-light
>     >>> is the one which caused me least efforts/headaches of all. And yes I know I
>     >>> made life easy here by removing userland completely and taking care for
>     >>> RPi2/3 only.
>     >>>
>     >>
>     >> I will always advocate against forks but definitely that is an option too.
>     >> What I want to understand is why maintaining it in meta-raspberrypi was
>     >> painful. Basically, the question is how do you currently maintain, rebase
>     >> etc the rt patch? I would expect it to happen in a git tree as well. Isn't
>     >> that the case?
>     >>
>     > I maintained it this way:
>     >
>     > * Set new kernel version
>     > * Check if there is an update at RT-Kernel. If so update the patch.
>     > * Rebuild the kernel. In case a patch does not apply cleanly, I use git
>     > inside of oe work-shared folder, check/align for hunks failing and insert
>     > them manually into original patch. From my experience there are usually very
>     > few hunks to touch so this is no rocket science.
>     >
>     > What do you think?
>     >
> 
>     So, my thinking was that if you're going through the effort of getting
>     the -rt patches to apply to the rpi kernel, I'd like to see that
>     available to non-OpenEmbedded users. I think a linux-raspberrypi-rt
>     kernel tree would be a useful think to make available as a standalone
>     project, which we can then pull into meta-raspberrypi as a simple
>     recipe.
> 
>     My complaint with having the entire -rt patch in the meta-raspberrypi
>     repo was that it's a huge, un-reviewable blob. Multi-thousand line
>     patches are now less painful with review happening on GitHub now
>     though - they at least don't upset my email workflow anymore :)
> 
>     Could you try handling this in git by merging the -rt kernel branch
>     (https://git.kernel.org/pub/scm/linux/kernel/git/rt/linux-stable-rt.git/log/?h=v4.9-rt
>     <https://git.kernel.org/pub/scm/linux/kernel/git/rt/linux-stable-rt.git/log/?h=v4.9-rt>)
>     into the linux-raspberrypi branch regularly instead of by applying the
>     -rt patch manually? Any merge conflicts could be handled cleanly that
>     way and it would give us something we could bisect properly in case of
>     any bugs. The resulting git repository could be published online as
>     something like 'linux-raspberrypi-rt' if this works.
> 
>     This is basically my opinion though, there is no one true Right Way
>     (TM) to do this. If you decide it's still easier for you to handle
>     this as a patch in the meta-raspberrypi layer then I'm happy to
>     support that.
> 
> Good suggestion - but:
> 
> 1. you overestimate the RT-patching process / errors caused by RT
> 2. I would like to keep RT and non-RT kernel versions in sync
> 3. I see more efforts which don't buy me anything personally
> 
> My dislike (3.) might be increased by the fact that I
> 
> * (try to) maintain >400 recipes and contribute to others more or less 
> for 'fun' and due to that I am not keen on some extra duty
> * am an old man afraid of changing bad habits :)
> 
> However: there is no time pressure on this matter and I am looking 
> forward to discuss this with you (and others) at FOSDEM. I am sure we'll 
> find a solution/compromise there.

Perhaps this discussions should be forwarded to rpi community and see if 
there is any interest in them maintaining a rt branch for rpi kernel.

Secondly, I wonder how good is upstream mainline kernel for rpi now a 
days, we could always have a mainline recipe as an option and use it as 
base for things like rt.

> 
> Andreas
> 

