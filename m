Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1118E00AB6; Wed, 19 Apr 2017 04:29:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f65.google.com (mail-it0-f65.google.com
	[209.85.214.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05799E00A4C
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 04:29:00 -0700 (PDT)
Received: by mail-it0-f65.google.com with SMTP id a140so2009423ita.3
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 04:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=34gHB50FHgAmqCsa8IPIE2torz9BsbT6A9O9raE11RA=;
	b=imyNT+wFXuPW/OxIqTtXWSOZqaskFuNFs0hBVE3d/KWbsCw+81H+7DRAqaGEypKx0L
	C9g8Lwm5w2Co0fWMU7JguuJ9SReV7mC8vLawZN1CbuUgIAbCkJPb9Z/X2j/GV3VABROc
	p3MSFvtWz4AqMAp6vCUdrq2gmQylXDvOlnbP315Bz0wa78Lxq5Zk3ObeKYbirbpD/XkX
	REDBnSkLbJzYkJJRuA9WKGsIzRj9kSPXp42582cjAGPiGTn6ndd/5+daKoZJJz2wLzyq
	tUOzYgidH7vTJohwvYCxjB4uPV31p0qZiNFKho51ib9VFyJxk6f0MbxMyVXzDDxY+0PL
	79PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=34gHB50FHgAmqCsa8IPIE2torz9BsbT6A9O9raE11RA=;
	b=ap/p02IAUcb6/A4crFgQndOtZJx2Ps+8uWmbC5GEFjVWG3HwI9hhZhR9FHTiEOJ+4m
	F60K40R09Pwtw1b95xKI0+YRnAechX7zjlqw+Z+OVt1lqiehgri2Eb7bomIqfbXPJ4Xl
	qKkIQwbYNFrR9ndcj0M31+x1yOMXs69hhopFQAk3G3+3ANA3a4Jhx+kpzBotLvfyUq7r
	cGufSGRgq52wFpxx3E5G5R7eEg1Fc1vgPO1waRtkzRja8F4xHOdUcQw+a92y8IVLG6Kg
	M95wWnf+sp0gRIKGoKqAmIn+GlYBcB7ddut9G48HR13X1oTqcR5o9a+9f0Mv0hpVQfKO
	rNeA==
X-Gm-Message-State: AN3rC/4Nw+T1SkV5DF7gU5D6rmaYyikZYQy9kw6E4GdCOlbkBGrsMK+K
	g2x8/PEH6RLIU1SG0p9U3H84Jtl8vg==
X-Received: by 10.36.173.19 with SMTP id c19mr2429779itf.76.1492601339619;
	Wed, 19 Apr 2017 04:28:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.27.207 with HTTP; Wed, 19 Apr 2017 04:28:19 -0700 (PDT)
X-Originating-IP: [86.158.8.191]
In-Reply-To: <CALbNGRR-AGWLmGiZGbYi4RqqMTUnDz=YJgoeak6qVX8FTzR6wA@mail.gmail.com>
References: <CAK18fxEy4Gnns4q+MrXJj==hr0CRSJK3xB=sh-yCFRUsaG7PeQ@mail.gmail.com>
	<CALbNGRR-AGWLmGiZGbYi4RqqMTUnDz=YJgoeak6qVX8FTzR6wA@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 19 Apr 2017 12:28:19 +0100
Message-ID: <CAK18fxGOjHtj1gEQAd2+snrp6tM=h1Rg7CTwwdEja_bAVZ3EFw@mail.gmail.com>
To: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Unified serial console device option
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
X-List-Received-Date: Wed, 19 Apr 2017 11:29:03 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 19, 2017 at 12:26 PM, Andreas M=C3=BCller
<schnitzeltony@googlemail.com> wrote:
> On Wed, Apr 19, 2017 at 1:00 PM, Andrei Gherzan <andrei@gherzan.ro> wrote=
:
>> Hello all,
>>
>> I'm trying to have the ability for user to use serial0 as serial port
>> on the header and serial1 (when available) for Bluetooth. In this way
>> rpi2 and rpi3 (32b) will have the same configuration. The story goes
>> identical for rpi0 and rpi0-wifi.
>>
>> Now, what I was planning to do is:
>> 1. create udev rules to generate the the symlinks accordingly to dt alia=
ses.
>> 2. add the above package (with the rules) as a machine recommends
>> (MACHINE_ESSENTIAL_*).
>> 3. and then change all the SERIAL_CONSOLE =3D 'serial0 115200'
>>
>> This works great with one exception: system parses the console
>> argument in cmdline and spawns through a generator a new getty
>> instance on that device. Adding systemd-serialgetty package will make
>> system have two getty services on the same device (serial0 and for
>> example AMA0) which is obviously unusable and wrong. Sysvinit works
>> ok.
>>
>> Then I thought to make this completely optional:
>> 1. create udev rules to generate the the symlinks accordingly to dt alia=
ses.
>> 2. make SERIAL_CONSOLE configurable (default assignments)
>> 3. a user wanting to take advantage of the udev rules will have to add
>> the rpi udev rules to the image and modify in his/her local.conf
>> SERIAL_CONSOLE
>>
>> Currently we have a cascade setup for our machine configuration: ex
>> rpi3 includes rpi2 and tweaks some things. We do this to avoid some
>> duplication (even though the gain is really minimal - 2-3 lines).
>> Anyway it is something after all.
>>
>> This again looks fine but because we have machine which include other
>> machine conf, I endded up having a problem when I want to overwrite
>> both definitions: see rpi3 which includes rpi2 (defines a
>> SERIAL_CONSOLE) than overwrites SERIAL_CONSOLE.
>>
>> What do you guys think as a way forward? One way would be to make the
>> boards definitions be stand alone and use default assignments which I
>> think it would fix everything and make the mechanism completely
>> optional.
>>
>> BTW: This would unlock the ability to create a raspberrypi-all machine
>> that would work on any raspberry board (armv6 + wifi firmware + etc).
>>
> I would prefer standalone configurations as I found the including
> approach confusing several times and I am not interested in
> raspberrypi-all personally (quite the oposite: different Pi machines
> is a yocto test case for me)

I've seen people requesting it and this approach would unblock them.


--
Andrei Gherzan

