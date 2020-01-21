Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.11526.1579612983865835585
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jan 2020 05:23:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@agner.ch header.s=dkim header.b=R2ORK59y;
 spf=softfail (domain: agner.ch, ip: 140.211.169.56, mailfrom: stefan@agner.ch)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BC54E01449; Tue, 21 Jan 2020 05:23:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [178.209.48.109 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.kmu-office.ch (mail.kmu-office.ch [178.209.48.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD2CCE011DB
	for <yocto@yoctoproject.org>; Tue, 21 Jan 2020 05:22:59 -0800 (PST)
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 6A1065C81AE;
	Tue, 21 Jan 2020 14:22:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
	t=1579612978;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=L17Gs5IKJ7gismqtctTbWuyJqeNRtqfEF2oXL6MtXiI=;
	b=R2ORK59y+ciVxgGQMCJVdpQfQ/7hw0SV7qyNHCXAcJhVYg0CmAq/lTbPmi8uMaloF+r5jj
	LHLiBSrK+jDXKNy09pHffzyon4QtKzX0BpWVzg8dzSr50Q1+LMmzjyWshLMM9bcCzOvxSN
	yeKdVvXWcInlRkKT2bAsnMdtBxTkutM=
MIME-Version: 1.0
Date: Tue, 21 Jan 2020 14:22:58 +0100
From: "Stefan Agner" <stefan@agner.ch>
To: Paul Barker <pbarker@konsulko.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, Yocto discussion
 list <yocto@yoctoproject.org>, Stefan Agner <stefan.agner@toradex.com>
Subject: Re: [yocto] [psplash][PATCH v2] add systemd support
In-Reply-To: <CAM9ZRVtAohLCu9NA-iP=6PdGRV_QjGERKDRQJ1ji0a2AfEtWPw@mail.gmail.com>
References: <20200121100732.1441871-1-stefan@agner.ch>
 <CAM9ZRVt2P=yVkg9KgnoVYDthSStyqT3oU5ZK6HRxsQ=q_M2OvQ@mail.gmail.com>
 <7ee90ef9aaf6565d37a13290845daf00@agner.ch>
 <CAM9ZRVtAohLCu9NA-iP=6PdGRV_QjGERKDRQJ1ji0a2AfEtWPw@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.1
Message-ID: <c3c328d47141aa2676aabe78b7086a46@agner.ch>
X-Sender: stefan@agner.ch
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On 2020-01-21 11:52, Paul Barker wrote:
> On Tue, 21 Jan 2020 at 10:44, Stefan Agner <stefan@agner.ch> wrote:
>>
>> On 2020-01-21 11:24, Paul Barker wrote:
>> > On Tue, 21 Jan 2020 at 10:07, Stefan Agner <stefan@agner.ch> wrote:
>> >>
>> >> From: Stefan Agner <stefan.agner@toradex.com>
>> >>
>> >> This adds optional systemd support. When enabled, an utility called
>> >> psplash-systemd is built. This tool will connect to systemd using the
>> >> system bus to obtain progress information and communicate that to
>> >> psplash. Once full boot progress is reported by systemd psplash
>> >> psplash is closed using the quit command.
>> >>
>> >> Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
>> >
>> > Looks like your email client or mail server has made a mess of this
>> > one - it's "Content-Type: multipart/mixed" with quoted-printable
>> > encoding for the text.
>>
>> Hm, I did send it using git send-email:
>> $ git send-email --to=richard.purdie@linuxfoundation.org
>> --to=yocto@yoctoproject.org --cc=stefan@agner.ch
>> v2-0001-add-systemd-support.patch
>>
>> When I look at the email delivered to my inbox it has no "Content-Type",
>> not sure if that is a problem? I use my setup since quite a while
>> successfully on mailing lists...
> 
> Very strange. Something has changed it, I don't see an `X-Mailer:
> git-send-email` header.

That one is there in the message in my inbox:
X-Mailer: git-send-email 2.24.1

So maybe also groups.io is playing games here?

> 
> Looking at it on groups.io
> (https://lists.yoctoproject.org/g/yocto/message/48061) I can see line
> wrapping and the additional "=" sequences quoted-printable adds in.

This indeed looks strange.

So did you notice only on groups.io or also on your end?

I went a bit back and realized that my patch email used to get those two
headers:
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

But since sometime in November those seem not to be added anymore. I use
a fairly standard Postfix setup, but I do remember doing some
maintenance work back in November time frame, so maybe something broke.
Thanks for pointing out, I will have to investigate further why that is.

--
Stefan

> 
>>
>> >
>> > Could you try re-sending with `git send-email`? I'd like to test this
>> > one out myself as I've been using psplash with systemd via a bodge
>> > copied from AGL for a while now - that doesn't show proper progress
>> > though it just spins the bar around.
>>
>> Interested to see how it works on your side. Progress works quite
>> nicely, the only downside is that systemd's progress information is not
>> really linear, so usually the progress bar makes progress quite quickly
>> and starts to slow down towards the end... It is not ideal, but better
>> than nothing IMHO :-)
>>
>> I will send a psplash recipe update once this gets merged, but something
>> like this should help if you want to give it a try already:
>>
>> FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>>
>> inherit systemd
>>
>> SRC_URI += " \
>>     file://0001-add-systemd-support.patch \
>>     ${SPLASH_PATCH} \
>> "
>>
>> SYSTEMD_PACKAGES =
>> "${@bb.utils.contains('DISTRO_FEATURES','systemd','${PN}','',d)}"
>> SYSTEMD_SERVICE_${PN} +=
>> "${@bb.utils.contains('DISTRO_FEATURES','systemd','psplash-start.service','',d)}"
>>
>> PACKAGECONFIG ??= "${@bb.utils.filter('DISTRO_FEATURES', 'systemd', d)}"
>>
>> PACKAGECONFIG[systemd] = "--with-systemd,--without-systemd,systemd"
>>
>> do_install_append () {
>>         install -d ${D}${systemd_unitdir}/system
>> }
>>
>> And a unit file like this:
>>
>> [Unit]
>> Description=Starts Psplash Boot screen
>> DefaultDependencies=no
>>
>> [Service]
>> ExecStart=/usr/bin/psplash-systemd
>>
>> [Install]
>> WantedBy=sysinit.target
> 
> Thanks for that, I'll let you know when I've had chance to give it a try.
> 
> Thanks,
> Paul
