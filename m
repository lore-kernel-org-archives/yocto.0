Return-Path: <kevin.thierry@open.eurogiciel.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9343BE007DC; Mon,  4 Aug 2014 00:44:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6C44E007D3
	for <yocto@yoctoproject.org>; Mon,  4 Aug 2014 00:44:36 -0700 (PDT)
Received: by mail-wi0-f172.google.com with SMTP id n3so4470954wiv.11
	for <yocto@yoctoproject.org>; Mon, 04 Aug 2014 00:44:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=open.eurogiciel.org; s=google;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=I4/k9UUMjHFfyHl9vuhdDxC+5QErZORrOqB3rPJvvfQ=;
	b=RTS+NlAo13e8ytpL/OAq9ugcNIJG9d/ffPK6L6Ke42ij50WVMLPF0Rz+nKnjlezoTC
	uYMQlEZcCG+Hum4pbts1N0InRnonYrXRmisNCE564pbNDYpff/5iqZ9YIIfot9Gt/Dmd
	/Bh/ibjLyKfenhhudVoGvZCz/qEfvqG4k8pbs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=I4/k9UUMjHFfyHl9vuhdDxC+5QErZORrOqB3rPJvvfQ=;
	b=HOKgyzAwXNxoBCzJWnvEv7ZS0uTwbJ3rn4vr3sSfXYl/Ic34Jci97CxM90INoK+nTa
	a9v+s65qpw7Yg3/0rTZSiR3/viQ6HnEp1r9tUAVGDYnKDGEujtcrZBeoGUqqvqjz7ta0
	1I3QX4joOdIfiZYEu2WIVk/VQBGB6aE4AxrkcUm99FCvS2xtqBpNZZeSXHg19tYlayP2
	ug35qtCuyIZVWorTO9DVvoHG6ekUtr0TX6BlglN6DI5Js+IhguWmVfAnf9JG9GeAL02N
	+5B8MnFcKOiQEcbb4RIHiNA7+BFVgVqSyWhB2jespfvZnOCBVBnpXgJZt/eTxe1xRZKw
	RPpA==
X-Gm-Message-State: ALoCoQm4UZmFiZohYndQ7VakbOmh5wOIen6nC0i35hnw82R5k/loBHzMfwub3zIrlRfMuiyFGgXv
X-Received: by 10.180.84.66 with SMTP id w2mr5329147wiy.27.1407138272259;
	Mon, 04 Aug 2014 00:44:32 -0700 (PDT)
Received: from [10.19.3.25] ([46.18.96.46]) by mx.google.com with ESMTPSA id
	ej10sm38050844wib.12.2014.08.04.00.44.31 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 04 Aug 2014 00:44:31 -0700 (PDT)
Message-ID: <53DF3BD2.6000601@open.eurogiciel.org>
Date: Mon, 04 Aug 2014 09:52:50 +0200
From: =?ISO-8859-1?Q?K=E9vin_THIERRY?=
 <kevin.thierry@open.eurogiciel.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>, 
	ronan <ronan.lemartret@open.eurogiciel.org>
References: <53DA58C9.50705@open.eurogiciel.org>
	<53DB6430.8090608@dynamicdevices.co.uk>
	<53DB660B.6040700@open.eurogiciel.org>
	<53DB66D8.3060500@dynamicdevices.co.uk>
	<53DBA085.7010705@dynamicdevices.co.uk>
	<53DBA665.7080002@open.eurogiciel.org>
	<53DBB20B.8020307@dynamicdevices.co.uk>
	<53DBB576.2000905@open.eurogiciel.org>
	<53DBB48B.2050907@dynamicdevices.co.uk>
	<53DBC21B.7080209@dynamicdevices.co.uk>
	<53DD053A.9060902@dynamicdevices.co.uk>
In-Reply-To: <53DD053A.9060902@dynamicdevices.co.uk>
Cc: yocto@yoctoproject.org, general@lists.tizen.org
Subject: Re: [Tizen General] Build Tizen with yocto work-flow
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
X-List-Received-Date: Mon, 04 Aug 2014 07:44:39 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit


On 02/08/2014 17:35, Alex J Lennon wrote:
> On 01/08/2014 17:36, Alex J Lennon wrote:
>> On 01/08/2014 16:38, Alex J Lennon wrote:
>>>> I don't know either but I think it's best to be compliant with both
>>>> bash and dash, I will try to correct those issues in order to be
>>>> dash-compliant. Thanks a lot for the feedback ;)
>>> No problem Kévin. I'm glad you feel it is of some use. I'm getting other
>>> recipes failing now with bash. What I'll probably do is let it run to
>>> completion with bitbake -k and collate the failures.
>>>
>>> Hopefully that'll be some useful feedback in terms of a build on Ubuntu
>>>
>>> Cheers,
>>>
>>> Alex
>>>
> Kévin,
>
> I made some progress with a USB installation of Yocto Tizen and a VirtualBox disk.
That's good news ! Did you have to make some changes in meta-tizen ? If 
so, could you send us your patches so we can integrate them ? Thanks !
>
> Both a Samsung laptop running from USB and a VirtualBox machine boot, but after mounting the root filesystem they go extremely slowly.
>
> They get to "failed to get machine ID" and then it's taking a minute or two before new output appears. Then screen goes black and I don't appear to get any further.
>
> e.g. https://www.dropbox.com/sc/ckc84doykfnyvwp/AAAA7s_wocGh1PNUJ3tfIMBLa?n=17361870
>
>
We already encountered this issue in the past unfortunately we don't 
know what causes that. We didn't get this issue recently so we are 
unable to reproduce it. I'm wondering if it could be linked too the use 
of a USB (we are not using USB anymore to test the images since it's not 
very convenient). I will put an image on a USB stick and see how it goes.

If you have more ideas about what could cause this issue we would be 
glad to know them.

Kevin

