Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 042F2E00B48; Tue, 28 Nov 2017 10:18:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f181.google.com (mail-ot0-f181.google.com
	[74.125.82.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9627E00AD7
	for <yocto@yoctoproject.org>; Tue, 28 Nov 2017 10:18:17 -0800 (PST)
Received: by mail-ot0-f181.google.com with SMTP id y10so680947otg.10
	for <yocto@yoctoproject.org>; Tue, 28 Nov 2017 10:18:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=uJgRbJd7nClpEcuE7s9N6+yAPplXWbJfSdqlg9Z4z3A=;
	b=R91R7orfr2E2Vchw4qK1/9y+yKHeYcreKWLU2eHb2mCz7VkTuNu2kVA5pjnAbHabfj
	DolUCeiIZqyPn/6J6qaubo4cEIPCQMAirDwy+t1kn2OIgcZF9Da9/x5dhYi2rujXws1L
	NhbtkmfwWntDsX9t/w2EQlbJPXPCDslJ3PokXXNbAcCbL26ewhc1SVu/eR6Fja0qQswB
	kvFMU+AO4j05ZFyx4UzcFUTodAZvbfsgnzVgYsskmOFBxpa3ay/jN4wiZ2flsZUS8+Ed
	5CBUPAdFRBhRowydWfXxOdYKomTeISYs+9yX9PzQTsZeKFx8nPKQp25+hnAdpPBQLR/P
	/h/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=uJgRbJd7nClpEcuE7s9N6+yAPplXWbJfSdqlg9Z4z3A=;
	b=BtYooSsgtsV7r6G+jPczZwdffAR6PmCUF733UGbJURJVyS4+oUGAA9dbdHTy1Vtyyg
	kdl2polK0MXPKqvEcM4eMLDb+HzrW7Tj0HcIALAlrAyDw54zbiVxCcbPoFM1VM7P5i9I
	fng/bHY+PU7DbJQtU+uPYB72BLvpUNk04s4OGKZuR0ktNsM04nFyK5EBrnK3sOriKLkb
	r84X+6M1Pcu0sViWkU+uCoZTpeEZfBD5R9/AxsYskBGQmZ7YeYqadTFSA1I2Je36Bx7B
	9BsvKTDPTKmxfXT+2B6PIrg+PlTikPLS9OZshB45nZ+G7kikXNBdjmJdnfBh/Gp+VgfS
	OZkA==
X-Gm-Message-State: AJaThX5h6f3NhICVBcLl5lx90xO4KGYFzPjncZ0dDvU+KA84omi3x41K
	cIl66cLfK8m4NsWn5tEenkHVOu4HyjvpyJr+KyDwnQ==
X-Google-Smtp-Source: AGs4zMZsBEsn9KgPFNWNF16tznxAhanApaY3tRi3jlLBZYte+Rxl9e9DkjxRzSdyoLMAOC4ZDITMTjcT73UcinC+5Fw=
X-Received: by 10.157.11.67 with SMTP id p3mr37264otd.43.1511893096820; Tue,
	28 Nov 2017 10:18:16 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.42.194 with HTTP; Tue, 28 Nov 2017 10:18:16 -0800 (PST)
In-Reply-To: <CAE0QtjPT5dnRYa+tcHPCi+K=Ej0aNOuaTYXufzpEch-452P26A@mail.gmail.com>
References: <CAE0QtjN1jE1ci2J1cMC8sQ2Pw70AOTc5bP8rQsrN2fBRpbhGxw@mail.gmail.com>
	<CAOT_U5YEjzDEo=AUBdmkaQ0eLeV98YDuqrpxtOHCoZJqr1bvrQ@mail.gmail.com>
	<CAE0QtjPT5dnRYa+tcHPCi+K=Ej0aNOuaTYXufzpEch-452P26A@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Tue, 28 Nov 2017 19:18:16 +0100
Message-ID: <CAOT_U5bW-F3b8JjfVru8evSF0M3SMEz7ZsVUqrpk-qijZoLS8g@mail.gmail.com>
To: Jerry Lian <jerry.lian@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: How to add support for "usb WIFI dongle"?
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
X-List-Received-Date: Tue, 28 Nov 2017 18:18:20 -0000
Content-Type: text/plain; charset="UTF-8"

I can't confirm, but it just might be that "ipw2x00" is actually a firmware.
(Haven't seen a firware specified explicetly in the menu config before).

Ref: https://wiki.debian.org/brcm80211

I recently had a question that might share some light on the firmware
- driver relation:
 (given that it really is firmware you check in the menuconfig)

https://electronics.stackexchange.com/questions/342118/design-decision-for-dynamic-firmware-loading


On Tue, Nov 28, 2017 at 4:00 PM, Jerry Lian <jerry.lian@gmail.com> wrote:
> Thanks Alan, I follow your instruction and it works eventually!
>
> But I got another question:
>
> I am using official Raspberry-PI WIFI dongle (BCM43143)
> I configure kernel so that driver "brcm80211" is enabled, however, WIFI is
> not working.
> Then I add driver "ipw2x00", then WIFI works.
> So my question, why do we need both "ipw2x00" and "brcm80211" for official
> Raspberry-PI WIFI dongle?
> (Sometimes the WIFI dongle works if I add drivers: "brcm80211, iwlwifi,
> rt2x00", without "ipw2x00", so I am really confused!)
>
> Thanks!
>
>
>
>
>
>
>
> On Tue, Nov 21, 2017 at 12:04 PM, Alan Martinovic
> <alan.martinovic@senic.com> wrote:
>>
>> Some hints on where to start at:
>>
>> > What should I do to add support for "usb WIFI dongle"
>>
>> Am guessing the dongle works with Raspbian or id gets detected
>> once you plug it into a desktop Linux machine.
>> Once you do that type:
>>
>>     dmesg
>>
>> And it will list the kernel modules related to your dongle.
>> You can use those buzzwords to google for what does
>> enabling the dongle actually translates to in terms of kernel config.
>>
>> After that (depending what linux you're using) figure out how to
>> run menuconfig. It might be something like:
>>
>>     bitbake your-kernel-package-name -c menuconfig
>>
>> and try checking out the boxes that you found out
>> might be relevant to your wifi dongle.
>> Save it, build the image, and see if it got you somewhere.
>>
>>
>>
>>
>>
>>
>>
>> On Tue, Nov 21, 2017 at 5:32 PM, Jerry Lian <jerry.lian@gmail.com> wrote:
>> > I am confused on adding support for "usb WIFI dongle":
>> > * My boards do NOT have WIFI capability, so I will add a "usb WIFI
>> > dongle".
>> >   (I have two boards: Raspberri-PI-2, SIMATIC IOT-2020)
>> > * Suppose we start from "core-image-sato"
>> > * What should I do to add support for "usb WIFI dongle"
>> > * After we build/boot the image, how can we verify and bring the WIFI
>> > up?
>> >
>> > Thanks!
>> > Jerry
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>
>

