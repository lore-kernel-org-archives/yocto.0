Return-Path: <eddie.cai.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD971E00935; Fri, 17 Feb 2017 00:56:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddie.cai.linux[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f193.google.com (mail-qt0-f193.google.com
	[209.85.216.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB671E00724
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2017 00:56:29 -0800 (PST)
Received: by mail-qt0-f193.google.com with SMTP id w20so5196059qtb.1
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2017 00:56:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=RPM30ba8kxDNzyvU1LIQutX9IICC79V0VbFBsjozob4=;
	b=pdLhLwea76CwJ/vX0nuH3NAPEuIWXZ8szbUQPTXVqq9O28v8g5bHiiVBFoNYkGQM/N
	8/81kzzJUzTqxQU0r8c/pa94jB47mkXqyuPIS/j41aRDwTEHRC7zcN/ncZM6bYqFE0HU
	fTQ3BGpkj5TVvkSXd1zNK5m9433R4RAsZ4MY+IY5eX5G8TvsxIbchWVy0foi//YAlCxu
	f3gAJEQqsQ/MyTujoPm0dlEKQAY93GCfLoHoFopPT5oqq+gxcmcfFZy7ObgV2hrBT6Hg
	GmL21pwlfLtk505cDz/nAiYSMZ1GxcHt2EDyQ2uPNRMgAI8wDGD70lBG7QvCnKCRBkFp
	VnGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=RPM30ba8kxDNzyvU1LIQutX9IICC79V0VbFBsjozob4=;
	b=pFqS4BI3mirN3WbuLipff0DTke/6KmWOCmQn3IYcJztmoQClk0FjYnEJim/4zpBMP+
	tQwQJh+8+wjYoeQXITH5qBWcGqy+WOH3La3xyQY8/ODNeETC3W7wn86iPQ9nTy8T130l
	4R5MngD6LAkTXjbL1UawxxqsrBRj0lsJ/6/H43jkRy+A8a0OLMEaeGfwb0tqf5QU9Tgb
	Pdmz9p07V7SEVZX4a+XFpJSbufRP6GPn361vFbM7s8b96hjHQx7K+KXV3fyqODbklEAz
	soehbm1hksBfGe0HLj6FtLnPABGFKDCZ5qUeozw0nUFAVKjZookWnZq9IFFRKsNoDVEY
	Yrtg==
X-Gm-Message-State: AMke39m9+yEmw9E8epTGRqhJqfEGJjgrpvyJMCEtxekG5ZVCgLj4NAe0V6MGFmcvxuUAW8IBB1Y+/D1YkU2IqA==
X-Received: by 10.237.60.107 with SMTP id u40mr6388146qte.77.1487321788478;
	Fri, 17 Feb 2017 00:56:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.47.68 with HTTP; Fri, 17 Feb 2017 00:56:28 -0800 (PST)
In-Reply-To: <20170217033349.GA12618@linux-uys3>
References: <1487051666-20888-1-git-send-email-eddie.cai.linux@gmail.com>
	<20170217033349.GA12618@linux-uys3>
From: Eddie Cai <eddie.cai.linux@gmail.com>
Date: Fri, 17 Feb 2017 16:56:28 +0800
Message-ID: <CAJrj+DPJ5ZC4bxMsrHYD+kY1ur28hTBnfPSd+RNKd+kpnHZxOQ@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-rockchip][morty][PATHV2 0/6] add main line kernel support
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
X-List-Received-Date: Fri, 17 Feb 2017 08:56:33 -0000
Content-Type: text/plain; charset=UTF-8

Hi Trevor

2017-02-17 11:33 GMT+08:00 Trevor Woerner <twoerner@gmail.com>:
> Hi Eddie (and the rest of the Rockchip team),
>
> First let me reiterate how happy I am to see that Rockchip is interested in
> supporting Yocto/OE builds, this is great! I hope this trend continues.
>
> Second, thank you so much for your patience while I reviewed these patches. I
> don't like my review to be only visual, I want to see the code running on my
> device(s), so reviewing is going to take a bit of time. In this case I hadn't
> flashed my firefly board in a long time, and the flashing procedure was quite
> a bit different now from what I last remember.
>
> For future reference, these patches have the string "PATH" in the subject line
> instead of "PATCH". Also, if you're creating a v2 or a v3 etc please put a
> space between "PATCH" and "v2". But I won't ask you for a "PATCH v3", I'll
> just fix these things up as I apply the patches (I hope you don't mind).
Thanks for reminding and sorry about the typo.
>
> You've put "morty" in the subject lines which to me means you're hoping these
> patches will be applied against the morty branch of meta-rockchip. Morty was
> released in October of 2016 which, at this point, is almost 5 months ago. At
> this point patches should only go against morty to fix critical issues. These
> patches look more like they're adding functionality, so I'll apply them to
> master instead. The next release is Pyro which is expected around April 2017.
I will remove branch next time i send patches.
>
> On Tue 2017-02-14 @ 01:54:20 PM, Eddie Cai wrote:
>> This patch set add main line kernel support for meta-rockchip
>>
>> Eddie Cai (6):
>>   machine: Use cortexa17hf-neon-vfpv4 as default tune for rk3288.inc
>
> As I've mentioned before, Yocto/OE is a _distribution_ builder, not just an
> image builder. As such most people in the community consider DEFAULTTUNES to
> be a DISTRO-level policy. In other words, this is not something that should be
> set by the BSP. One distro might want to use softfloat, while another wants
> hard-float. It will be easier for people who make distributions using Yocto/OE
> to use this layer when these types of things are not set at this level. Users
> are free to use these distributions (by adding their layers) or they can set a
> DEFAULTTUNE in their conf/local.conf file.
>
> I'll add a note to the README pointing this out so people can be aware of this
> configuration tweak, but I won't take this patch into the BSP. I've been able
> to build and run images where the DEFAULTTUNE is not set and they run just
> fine. Another patch (which I'll be happy to create) will need to look for this
> tune in recipes that provide things like mali support.
I found there are many meta using hardfloat. see below for example. So
i think what meta-xxx(could be rockchip, freescale, allwinner etc)
means building optimized distribution for xxx.  If people come to
meta-rockchip.  They must want to build a image/distribuition run on
rockchip platform. If not, They should go to meta-debian or other
generic meta rather than meta-rockchip.  ie. we won't expect a image
built by meta-amd can run on rockchip platform. right?
raspberrypi:
http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/conf/machine/raspberrypi2.conf?h=master
freescale:
http://git.yoctoproject.org/cgit/cgit.cgi/meta-freescale/tree/conf/machine/include/imx-base.inc
amd:
http://git.yoctoproject.org/cgit/cgit.cgi/meta-amd/tree/meta-amdfalconx86/conf/machine/include/tune-amdfalconx86.inc
allwinner:
https://github.com/linux-sunxi/meta-sunxi/blob/master/conf/machine/orange-pi-one.conf
>
>>   machine: Use SOC specific assignements
>
> The above patch is fine, but I am going to adjust the synopsis line to include
> the machine to which this patch refers. I.e. instead of:
>
>         machine: Use SOC specific assignments
>
> I'll say:
>
>         rk3288: Use SOC specific assignments
>
>>   machine: separate rk3188 inc file from rk3066
>
> The above patch is okay, but I'm going to remove the DEFAULTTUNE line.
>
>>   machine: Use SOC specific assignements
>
> Adjusted to specify machine (rk3188).
>
>>   machine: Use SOC specific assignements
>
> Adjusted to specify machine (rk3066).
>
>>   recipes-kernel: linux: Add mainline kernel
>
> If Romain is happy with this patch I will apply it.
>
> Best regards,
>         Trevor

