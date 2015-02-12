Return-Path: <maxin@maxinbjohn.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2F54E0089B; Thu, 12 Feb 2015 06:56:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52A38E007CF
	for <yocto@yoctoproject.org>; Thu, 12 Feb 2015 06:55:59 -0800 (PST)
Received: by mail-ig0-f177.google.com with SMTP id z20so4097316igj.4
	for <yocto@yoctoproject.org>; Thu, 12 Feb 2015 06:55:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=Cjz46L4r64jOFAP9fLli/LOHeU/RMj8HLpxkzzI6WYk=;
	b=hHH/pQFap/ZkEtLfY+PZ7EkgFyQcy6Y8p7KJp3wJJVCvoG2PKUKbp+UaeIMWX+/4uE
	EtKue7SQQRPvlidFMoS2LHgSdjc+bpRlUaKj3kWOnY2vJ18sGbGSrB1zL+nZOShf66sw
	3XO3r5KagowHIDvvsbqq+Aqj5YK47ymtRJoEAdZPc6MDd2sgH3swQOnhiQAt4Ows2kOs
	eGyDf+ZJkJcEROlc2ebsy97xgdyu9QjgtCo24DX+mqx6NK72yrbjR2nm5FpW7xGjTNMR
	8Z+suFpkrWvcwtMTplr+lvTajbBK9Xlo1rLR8nT9k7HZ9oJ1JuEZm8ibeKOc/X+irJaN
	RNDg==
X-Gm-Message-State: ALoCoQkYMqnw2ENDHU8qLy+hFE3slq2xqnlyVB/rCaNQehnlTrzUSQV4LHA/65vh6J08V+abj65g
MIME-Version: 1.0
X-Received: by 10.42.170.200 with SMTP id g8mr8823875icz.5.1423752958989; Thu,
	12 Feb 2015 06:55:58 -0800 (PST)
Received: by 10.36.57.206 with HTTP; Thu, 12 Feb 2015 06:55:58 -0800 (PST)
X-Originating-IP: [192.36.1.252]
In-Reply-To: <CAJTo0LYRUUC6ErtyC2E6kB70bnVQVoeVro9ajwBZ52-NNgTUBQ@mail.gmail.com>
References: <1423669983.23617.78.camel@tycho.nsa.gov>
	<6445648.XiRzhvmYHl@peggleto-mobl5.ger.corp.intel.com>
	<20150211213954.GI30457@mentor.com>
	<CAJTo0LYRUUC6ErtyC2E6kB70bnVQVoeVro9ajwBZ52-NNgTUBQ@mail.gmail.com>
Date: Thu, 12 Feb 2015 15:55:58 +0100
Message-ID: <CAFicg87Y=4UmvCpRwYKP6SoOZtnCiVOJB_Uq-JhM1b6Qb8xZFw@mail.gmail.com>
From: Maxin John <maxin@maxinbjohn.info>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	OE-devel <openembedded-devel@lists.openembedded.org>
Subject: Re: [oe] meta-selinux
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
X-List-Received-Date: Thu, 12 Feb 2015 14:56:02 -0000
Content-Type: text/plain; charset=UTF-8

Hi Ross,

On Thu, Feb 12, 2015 at 12:19 PM, Burton, Ross <ross.burton@intel.com> wrote:
>
> On 11 February 2015 at 21:39, Joe MacDonald <Joe_MacDonald@mentor.com>
> wrote:
>>
>> > What's more likely happening I suspect is that you are on a newer
>> > branch/revision of OE-Core/Poky than the meta-selinux maintainers have
>> > tested.
>> > I can't speak to the maintenance schedule for meta-selinux but maybe
>> > others
>> > with knowledge there can chime in.
>>
>> Our master tends to lag behind oe-core's master for a few reasons, but
>> none of them are really insurmountable.  Certainly the intent is that
>> meta-selinux/master will build successfully with oe-core/master at any
>> given time.
>
>
> The yocto-autobuilder software is in git and I heartily recommend it (or
> similar, if you've a buildbot allergy) for anyone maintaining layers.  Just
> the simple act of running a build every night to verify that the layer works
> with the latest master branch (and stable branches for bonus points) means
> that problems like stale bbappends are rapidly found and resolved.  For even
> more bonus points, also do builds against master-next if that branch exists
> so you can get notification of changes that are in review.

While I don't have anything against the autobuilder, the images built with
meta-selinux like "core-image-selinux" had a "labeling" phase which requires
it to boot - twice
Once for labeling and later for booting like any other normal image.

Do anyone care to share a way around this "difficulty" in automatically testing
selinux or am I wrong here ?

> Ross

Best Regards,
Maxin

