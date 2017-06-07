Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15E61E00B3D; Wed,  7 Jun 2017 10:17:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA0FFE00B01
	for <yocto@yoctoproject.org>; Wed,  7 Jun 2017 10:17:27 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id k15so3528822wmh.3
	for <yocto@yoctoproject.org>; Wed, 07 Jun 2017 10:17:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=sKj+7TOWWOnc+tiXKk+dxYEBOWO59IHjMRZKnnzE25I=;
	b=Uei/0FU0ptF1w/s4DSDlAnarX2sIctldN4kNuKLZp72jfK7NVuRW6rtSlfy9Zm0j6d
	E1p1aElmV8OJI+gCUNUd0135dqatHiWPp9Ckd0hz7vefb5Gn5BFqw8P/mwXiUW7L1d0l
	ZB380//dbHJw2yTOBp3dYtvkhxwMZpv4O/krPUKghkYt6LfdZq4kwkdcpl6OKhi4S9c3
	BYx2dcVT/yPpjkJtDlNGhEMucqDuZSEa4Um7ucm4aT+m2QuQ/WPu4WjAo82sI4l21nd0
	o/+CcDCBGPTXmYxVd819IfFYloK4K5zv6dvSHmdTHOHD98YQR02D3aYCtmTrPdk/3Kur
	ZafQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=sKj+7TOWWOnc+tiXKk+dxYEBOWO59IHjMRZKnnzE25I=;
	b=aQ72IVlR3ipmmn1qpM7dL6au1Hzwd9R+pYhNGTxHKwuNpXxbmEfH5azPuXR+/2jEhG
	5V6ccMQSwgiHm4+Ma8mk9brh4O8/3080gZnHPoX3Z8C0Z4XvVWJ1wiGnDz87AepZAd1+
	8k9RUO2JUh0Xxm7EWBsXotwJgZd4QXpFszSSwfv7I1JiC75rkQrMEWoiV/AY4hfJGvXj
	4f70hWKMMcO+a0K1W4Gqatvj9Re0iqCaf1LVWcRgpedIaSBpRS0zzYOdb1L/qOm2yAEL
	kD+ckdF3QY8O5ltrp9pWKj1bv84kDEjyugTKSQ26ILGuQQXQkBL0z9OgGPx/WGHpMooO
	VrfA==
X-Gm-Message-State: AODbwcAiDxQzwYphJ7/6DJb99WsN5FqSG+/WDhrb2t3koIYUHpUD4/pt
	fDzxJLKWvnRr4+pGxOQozb5yx9t+rA==
X-Received: by 10.80.143.227 with SMTP id y90mr26174010edy.131.1496855846477; 
	Wed, 07 Jun 2017 10:17:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.153.222 with HTTP; Wed, 7 Jun 2017 10:16:55 -0700 (PDT)
In-Reply-To: <873555290.245809.1496855698348@email.1and1.co.uk>
References: <165f01d2dfac$6b374940$41a5dbc0$@ln-systems.com>
	<CAMKF1srvA65ghO9g2dVW-xqfCVO=KtONaEQiEyVqgKCJ8zMLbg@mail.gmail.com>
	<873555290.245809.1496855698348@email.1and1.co.uk>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 7 Jun 2017 10:16:55 -0700
Message-ID: <CAMKF1sqFkrx-Yr3qEUxwp9_U6WvQ01wOkgUbLaCCogSZJERUkQ@mail.gmail.com>
To: Colin Helliwell <colin.helliwell@ln-systems.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Getting linker -l into a bbappend
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
X-List-Received-Date: Wed, 07 Jun 2017 17:17:29 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Jun 7, 2017 at 10:14 AM, Colin Helliwell
<colin.helliwell@ln-systems.com> wrote:
>
>> On 07 June 2017 at 18:12 Khem Raj <raj.khem@gmail.com> wrote:
>>
>> On Wed, Jun 7, 2017 at 9:37 AM, <colin.helliwell@ln-systems.com> wrote:
>>
>> > I have an autotools (C++) app which builds fine with my default recipe. But
>> > for a particular platform an additional (C) library is needed, so I have a
>> > bbappend.
>> > I can add in the additional compiler flag here, but I'm struggling to
>> > specify the additional library linkage - I think it's because the ordering
>> > on the linker command line is wrong.
>> >
>> > If I add '-lfoo' to the base Makefile.am then it builds fine (though
>> > strangely, "-lfoo" isn't anywhere in the linker command line?).
>> > But I'm trying to put this into just the 'append' rather than altering the
>> > base [non-platform-specific] Makefile.
>> >
>> > I've tried
>> >  EXTRA_OEMAKE += " LDFLAGS+="-lfoo" "
>> > and
>> >  LDFLAGS+="-lrfctrl"
>> > but these don't seem to construct the correct linkage order (functions from
>> > the library are undefined references)
>> >
>> > Is there a way to append this in the right way?
>>
>> it depends on components build systems some are more accommodating of
>> the env passed to them some are not. So in many
>> cases you have to patch the make system of the component to
>> allow it to accept changes to variables passed from bitbake env
>> from what you explain it seems you might have to look into
>> component's build system to accommodate it.
>>
>
> Thanks Khem. I *could* patch the Makefile.am, if there's no other way

the components makefiles have to accept it, bitbake can only delegate

