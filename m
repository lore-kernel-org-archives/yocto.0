Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63ED7E00E8B; Thu, 19 May 2016 08:26:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DF6AE00E90
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 08:26:17 -0700 (PDT)
Received: by mail-wm0-f49.google.com with SMTP id r12so85732247wme.0
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 08:26:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=5KE+9bCdv1UBRK/6dIwrirD8oammWsaNH8f8Ep9SQzg=;
	b=JQVHg3XdaddaP1IqbtL30IZLa9jHAfOqeINpC0AxNSV2FcFGW+hG/UVredncQdJuo4
	6Ts+kcnCQHAP13ew11lI8JysrRfJ9R4SMNwAJtJXPZnu1xiYUzmP9PipsXeYMIe1jaWH
	oTqPHjdrmM8lfcFKNLRlAtVJPunlvynkFh87zAj2Mh8W/d0O0lUkpldY5hoPNYvKSgd8
	9t+U/KdM/4ag1Wdjqj5nQXLGS5YCKBCUXfYk478DXHT7stj++FFz0F6S7PFRcF9NEDC0
	UHECMnoZ7FtLSA3v56spWmBT4VSePNgxJ9aQDSwiy//iHfvXcAhLx6uXcp4ungXqdWOh
	SGUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=5KE+9bCdv1UBRK/6dIwrirD8oammWsaNH8f8Ep9SQzg=;
	b=DK8Tgm+hX4tC26ZDGVJM34mnt5XEPJG2gjCcWgFIcqA8ywDW1fwRyCUirEWexm+4i9
	xeasYvRFakTR6yEvlfw6QD8qyR6CvaJIkukF504fsXwuZht+ahbMbSHBD7JphzvS5XXM
	BmIR8XVWKb/z1+LB64uE7lDehvKKLobeL1M5pdVwSuFbDEIJhQYmQRCkt32kepVHKc+Q
	EfNZarl3u6m7PIDJPAxP6bV7k995TdlS1OYpN+4kibTqetPpQWqB4klIE5jGk8iLHpMo
	hZQzPQ8NOn477ck3istb9U2V650tibpiMfJAKlGNtsNgaORCSU8OV2MsZ6D6C5Koocfm
	3Z1g==
X-Gm-Message-State: AOPr4FXhKRTvhNjkLCyMoTR4yolY3B+FwYQl47pY2/tcLShBeBstAZTupgakN01FvGpxeg==
X-Received: by 10.194.58.110 with SMTP id p14mr15427092wjq.2.1463671576894;
	Thu, 19 May 2016 08:26:16 -0700 (PDT)
Received: from [192.168.2.170] (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114]) by smtp.gmail.com with ESMTPSA id
	b15sm35774357wmd.1.2016.05.19.08.26.15
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 19 May 2016 08:26:16 -0700 (PDT)
To: Andrei Gherzan <andrei@gherzan.ro>
References: <573DAE5A.6000707@elfin.de> <20160519143914.GA3601@resin.home>
From: "piotr.lewicki" <piotr.lewicki@elfin.de>
Message-ID: <573DDB17.5050007@elfin.de>
Date: Thu, 19 May 2016 17:26:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.7.2
MIME-Version: 1.0
In-Reply-To: <20160519143914.GA3601@resin.home>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][Question] How to build an hwup image for raspberrypi3
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
X-List-Received-Date: Thu, 19 May 2016 15:26:27 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 19.05.2016 16:39, Andrei Gherzan wrote:
> On Thu, May 19, 2016 at 02:15:22PM +0200, piotr.lewicki wrote:
>> Hello,
>> I'm trying to build a Yocto image for raspberrypi3.
>> I'm using only two layers:
>> - poky (krogoth: rev eff84a76acea1a0842194106a66684511f409842)
>> - meta-raspberrypi (master: rev 9912d38e97671704822d1aa05312a0439cb650d3)
>>
>> I have built it by cloning both layers from git (and changing poky branch),
>> then I sourced poky (source poky/oe-init-build-env), added meta-raspberrypi
>> layer in conf/bblayers.conf and in conf/local.conf changed MACHINE to
>> raspberrypi3.
>>
> I just tested the same revisions as you mentioned and the board boot for
> me. How do you test the board? Over serial?
>
> If you are using serial I suspecte you are not setting the serial
> console. if you are using tty1 (hdmi) you need to add the specific
> console argument to cmdline.
I'm using hdmi. Where can I find those console arguments?
>
>> Then I have built "rpi-hwup-image" using bitbake and dd'd it to an SD card.
>>
>> Unfortunately rpi-hwup-image does not work on raspberry pi 3.
>> Boot screen halts when 4 raspberry logos show up and that's it.
>>
>> On the other hand I have tried the same SD card with raspberry pi 2 and it
>> booted up (!?).
>>
>> Can you tell me if there is still support for meta-raspberrypi layer?
>> I found that this layer does not follow Yocto project naming convention for
>> branches (I think that the latest is "jethro", but nothing newer besides
>> "master").
>> Does this mean that there is no stable and up-to-date branch apart from
>> master?
>>
> What do you mean rpi is not following the yocto project naming
> convention? It does miss a branch for the last yocto release but there
> are already for the old ones.
Maybe I explained that wrong, but I've noticed that it's missing krogoth 
branch.
I think that if something like this occurs users are a little bit 
confused and have to choose between old branch (potentially outdated) 
and a master branch (potentially unstable).
>
>> Has anybody built a raspberrypi3 image?
>> Could you tell me which layers and which branches should I use?
>>
>>
>> Thanks,
>> Piotr Lewicki
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> --
> Andrei Gherzan
__

BR,
Piotr Lewicki

