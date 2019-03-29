Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7983EE00D26; Fri, 29 Mar 2019 02:59:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
	[209.85.167.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12C7BE00D1B
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 02:59:25 -0700 (PDT)
Received: by mail-oi1-f172.google.com with SMTP id v7so1178264oie.8
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 02:59:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=J6NrOiwlKpqg4w6K1e+lQ8FxY8Q5yFQOBKqkbvuu1nQ=;
	b=Vj2WJm7/9A74J4Dfx5RIUxJXN3fGrYBpBDAdRplzR6NqwjNx/XcGAVxUb3PrjpTtgs
	dXCzKkpCzXwdeEDh3XUvsQcrMw0iLtOEyema+Act5JtknhOWsgHwcXpK/TACWlOijQs9
	N+l8pMRKtq+9GQ7Ajp9x56aB+emrKN7g5ToaS9SafKb04mbbarZATFRChIS5yzqer69q
	Mc9YnV0Ve63L+WCBWN9oY30PGZRr5wT1HA/FI03g0hJz7LrU06FLnCe7ZtXv6um35qRR
	cavTNWC05lpLrmTECffXVwX2dqd53Vra1vNrHCUZjveJUx0MvhHfeC6RmnFXI7sro8iC
	fttw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=J6NrOiwlKpqg4w6K1e+lQ8FxY8Q5yFQOBKqkbvuu1nQ=;
	b=dvvYA3wzeJ69h+7gX5sW/wK8rmcJ06dVTVBTPl30HHHDj5WD0s+2vPE9JBcLrAW9T4
	al60gtpR9gAflMIiA3LgkSKIyyKuN2FZolDLI2KVHvLpmEgZLT9020/PjvEOFaJENYrn
	LarlIUxMxN9fGvObDVCWX3FYhoYCBvIHq0QaRxE0Yt7H0el0OKLvQAiQWNdGzXPNZuOO
	foJAVHmX36CLSs31bjI5/AUbyz+qA1sNfUuJVLRN/J8YRVm3n5sRA+2BsCLVMGWNEaNt
	Knu75SHz7xK93xtfd2Yr2yEFz+9H8T8Bq3TxWsWg85QrfSpsOhHoq15No6C1kJP2bnCS
	83Bw==
X-Gm-Message-State: APjAAAVyh3uO79C5znKlGDl4H+yADDvSI/n6c8aLVHtZ4izWLTFgILl5
	cqjyC3di3bs/Qin6z5ATRx+M8cXM9xO1j/a4lD8=
X-Google-Smtp-Source: APXvYqx2bNAc5c1mVqRr5o2YhQ/ulffpVWMbJfDBcktsSeMJRrvmzhAznidQA9IcrMqyvCD6v0+I2wjghLp9bsz6zSI=
X-Received: by 2002:aca:ac94:: with SMTP id v142mr2996299oie.135.1553853565465;
	Fri, 29 Mar 2019 02:59:25 -0700 (PDT)
MIME-Version: 1.0
References: <CACKFPN0H50ax69a33VOs6wymGz7SoFi1_atBM2WNh3f9MV6=kQ@mail.gmail.com>
	<CANNYZj_VMX8FdBhMCwvq_hMYNa3n_Ng-kMacAo4Eg1ug+VuPcQ@mail.gmail.com>
	<CANNYZj9vrTD_+ZAmpEU28TQ8-MwQ-aD6qAGpX_wSALpq6gpj+A@mail.gmail.com>
	<CACKFPN3_mGg4fgCkOn_KWA3trR66WKay9148F5grke5DC7sJtA@mail.gmail.com>
In-Reply-To: <CACKFPN3_mGg4fgCkOn_KWA3trR66WKay9148F5grke5DC7sJtA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 29 Mar 2019 10:59:14 +0100
Message-ID: <CANNYZj_Q+9R_D2t7c4kARM8WbBD7FwrN2Ka_7NXc5kLFfq9j5A@mail.gmail.com>
To: Dimitris Tassopoulos <dimtass@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Image introspection
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
X-List-Received-Date: Fri, 29 Mar 2019 09:59:26 -0000
Content-Type: text/plain; charset="UTF-8"

DISTRO_FEATURES_DEFAULT is set using ?= :

DISTRO_FEATURES_DEFAULT ?= "acl alsa argp bluetooth ext2 ipv4 ipv6
irda largefile pcmcia usbgadget usbhost wifi xattr nfs zeroconf pci 3g
nfc x11"

So you can override it by setting it using =, which is also a chance
to trim other unnecessary features.

Alex

On Fri, 29 Mar 2019 at 10:50, Dimitris Tassopoulos <dimtass@gmail.com> wrote:
>
> Hi Alexander,
>
> in this case the 3g is added by default from the poky distro in
> the DISTRO_FEATURES_DEFAULT var in:
> meta/conf/distro/include/default-distrovars.inc
>
> And because the poky distro is the base distro for the image
> this is inherited. Therefore it needs to be removed with the
> DISTRO_FEATURES_remove unless there is another way,
> which I'm not aware to easily remove/adjust without having
> to create a new distro.
>
> Regards,
> Dimitris
>
> On Fri, Mar 29, 2019 at 10:38 AM Alexander Kanavin <alex.kanavin@gmail.com> wrote:
>>
>> You can do that using
>>
>> bitbake -e <image> and looking for how DISTRO_FEATURES is formed in
>> the output of the command.
>>
>> Alex
>>
>> On Fri, 29 Mar 2019 at 10:37, Alexander Kanavin <alex.kanavin@gmail.com> wrote:
>> >
>> > On Fri, 29 Mar 2019 at 09:51, Dimitris Tassopoulos <dimtass@gmail.com> wrote:
>> >
>> > > To do that, add this to your build/conf/local.conf file
>> > >
>> > >> DISTRO_FEATURES_remove = " 3g"
>> >
>> > This works around the issue after the fact. It's better to track down
>> > where 3g is added in the first place, and adjust that.
>> >
>> > Alex

