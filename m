Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A560DE02BDB; Tue, 12 Jun 2018 10:57:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f65.google.com (mail-lf0-f65.google.com
	[209.85.215.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3029E012AD
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 10:57:45 -0700 (PDT)
Received: by mail-lf0-f65.google.com with SMTP id t134-v6so37397579lff.6
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 10:57:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=pxihQTsKFz+OVKJ9RZCsi9/TdCIuw3xUjyIHk32L01k=;
	b=rBEoAy4kVSsd8c0Y5pIHMK2vaascAjSsNpqhAzrP+m2gz+yQ78KrSkZVPeoJC6vMBQ
	5w4SDrSbCE4u3wo0A76uJ1hz/6wQlv0Mka52MAePIfe4gulBdaZgHePauwM/2rmykZ9W
	jWC53kjtbH5En7NIdftIGvL47WI/BLIsl49t/qbPAOx+cFtC9Fn1qAGGf670o+Bywjzx
	ZEbqCoH5eSJwoeDksLn7Z9aKdGi71z9u2qNdDzQ604bue1uqYD7jJ9HApU5mNLiIwj5f
	/HCljxGyZMUlHOCeLTFm3FzXISoCD/6qu5K7P54W1pp9X59h7JMH4w7LmUVm3QWOtA1e
	GXQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=pxihQTsKFz+OVKJ9RZCsi9/TdCIuw3xUjyIHk32L01k=;
	b=ihhv08b4J8qWRmtmKAaJUhAN7Atnk4tMzi3JnWMLanb4lJ82YIHBVTQABBY8/T+tFo
	EWHXJzSA/bJ743/URZ/iAYmfDjd8YzArITkE78GCxsQI/FKleCFYdspUE6nX36iFPXP+
	hOapbpj1zlTq2HWhMNaxkA5vlw4N3JRqThLp0Cjbw+EkkS8iSbKEmi3s/0ki/+gFhvHf
	Z666ND4GNvrB699OtKgAjVLZzHw80Qd9bDBfF9EkJU9fH9C0/W1v9MN+LIKv63ENiOkG
	Vm3kLztVmvXA7FvcHwtEXytaz+cpBqkzd/aDCHwepux0/aXEBygvlWIMTMxkLYQ4v2ph
	cjrQ==
X-Gm-Message-State: APt69E2L7B/HOcl/qMhRM7UZWnYkqaP0s/a5xp1IolN51YDLJ8AhAEHe
	6iIAUAH4mY09LHlGb6nrSaq9Ia7KPltQxA38XjA=
X-Google-Smtp-Source: ADUXVKJlCZHuMO66dCuPCo/mCr2XcfV7lddzkeMaDi+3uTRoBGfb6GqTvxZ0VSqOXiocRXfmWKlUA2qH1E+qMBdPzK4=
X-Received: by 2002:a2e:95d5:: with SMTP id y21-v6mr884325ljh.90.1528826263435;
	Tue, 12 Jun 2018 10:57:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:5105:0:0:0:0:0 with HTTP; Tue, 12 Jun 2018 10:57:42
	-0700 (PDT)
In-Reply-To: <CALw8SCU7PcJnQR=yXzdbZ5McghNUWY5+5fB6=e7O3BNunEtj-g@mail.gmail.com>
References: <CAGAf8LybGizfPXzhNyqY4BdJ2rxWiMs2n+EDuam_n6n_6XPrdg@mail.gmail.com>
	<CALw8SCU7PcJnQR=yXzdbZ5McghNUWY5+5fB6=e7O3BNunEtj-g@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Tue, 12 Jun 2018 19:57:42 +0200
Message-ID: <CAGAf8LxDM0tVdRbW2FC_XLcu3ForF4dNMwd=ak2q83LP15iEhA@mail.gmail.com>
To: Mirza Krak <mirza.krak@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: YOCTO kernel PF_CAN feature set and socketCAN layer of the shelf?
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
X-List-Received-Date: Tue, 12 Jun 2018 17:57:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Mirza,

Thank you for giving me the hand here... But now (as we speak), I need
to have a short wait for the slipping milestone, before I apply all
this what you have given to me.

All of these are very/extremely useful info, and I'll report (when
time comes) what I got out of it. At least Open Source test info,
which, my best guess, I'll keep open for anybody who has the
same/similar problems/feature sets!

Please, stay tuned!
Zoran Stojsavljevic
_______

On Tue, Jun 12, 2018 at 11:12 AM, Mirza Krak <mirza.krak@gmail.com> wrote:
> On 6 June 2018 at 11:35, Zoran Stojsavljevic
> <zoran.stojsavljevic@gmail.com> wrote:
>> Hello to YOCTO community,
>>
>> I am looking into the new CAN FD (CAN Flexible Data rate) protocol. It
>> is very similar to classical CAN.
>>
>> I am wondering the following (I'll ask very basic questions, just to
>> see if I am on the right tracks):
>> [1] Do YOCTO kernels have CAN drivers left as mandatory drivers in the
>> drivers/ tree (CAN drivers exist on kernel.org kernels)?
>> [2] If YES, are these drivers enabled by default, or I need to enable
>> them? Anybody to quickly refresh me how to manipulate make menuconfig
>> in YOCTO tree?
>
> SocketCAN is very hardware specific and you do not mention which
> hardware you are using.
>
>>
>> I also need the feature called: SocketCAN. The following questions arise=
:
>> [3] Do we have in the socket I/Fs added PF_CAN protocol family handling?
>>      https://en.wikipedia.org/wiki/SocketCAN
>> [4] Does added SocketCAN layer exist, which covers this topic? It'll
>> be layer on the top of the YOCTO-BSP layer, my best guess. Any
>> examples, using such a layer? Or any Open Source example(s) of such a
>> layer?
>
> I am not aware of any layers and I do not believe that there is any.
> SocketCAN is a Linux kernel feature and there are a set of utils to
> use SocketCAN [1] and there seems to be a recipe for can-utils in
> meta-oe [2] which should be enough to get you started.
>
> [1]. https://github.com/linux-can/can-utils
> [2]. http://layers.openembedded.org/layerindex/recipe/24252/
>
> --
> Med V=C3=A4nliga H=C3=A4lsningar / Best Regards
>
> Mirza Krak

