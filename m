Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.9748.1579603481832114123
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jan 2020 02:44:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@agner.ch header.s=dkim header.b=xkoDMDGg;
 spf=softfail (domain: agner.ch, ip: 140.211.169.56, mailfrom: stefan@agner.ch)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0427E01309; Tue, 21 Jan 2020 02:44:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [178.209.48.109 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.kmu-office.ch (mail.kmu-office.ch [178.209.48.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68F8FE01309
	for <yocto@yoctoproject.org>; Tue, 21 Jan 2020 02:44:38 -0800 (PST)
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 240BC5C8134;
	Tue, 21 Jan 2020 11:44:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
	t=1579603477;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Q4hSZ2mQYPBjuU8IK/VpW0/Wz5a8bGAT42UwDTv8TCs=;
	b=xkoDMDGgy1RW5rlTi1jumptiyHWT9xuqWJ6DfmWiVZgtieAoTsLkdANfrPVIUjapwnXuH8
	ClQZ/6DilQ8S7hXl220SpbKzYKPPPlpETtyXTknlk0upHdBhaQTEqX0V+372GQhH4bh3m3
	IND/+1E1YKzc0L03RYWkTITGjpawjig=
MIME-Version: 1.0
Date: Tue, 21 Jan 2020 11:44:37 +0100
From: "Stefan Agner" <stefan@agner.ch>
To: Paul Barker <pbarker@konsulko.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, Yocto discussion
 list <yocto@yoctoproject.org>, Stefan Agner <stefan.agner@toradex.com>
Subject: Re: [yocto] [psplash][PATCH v2] add systemd support
In-Reply-To: <CAM9ZRVt2P=yVkg9KgnoVYDthSStyqT3oU5ZK6HRxsQ=q_M2OvQ@mail.gmail.com>
References: <20200121100732.1441871-1-stefan@agner.ch>
 <CAM9ZRVt2P=yVkg9KgnoVYDthSStyqT3oU5ZK6HRxsQ=q_M2OvQ@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.1
Message-ID: <7ee90ef9aaf6565d37a13290845daf00@agner.ch>
X-Sender: stefan@agner.ch
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On 2020-01-21 11:24, Paul Barker wrote:
> On Tue, 21 Jan 2020 at 10:07, Stefan Agner <stefan@agner.ch> wrote:
>>
>> From: Stefan Agner <stefan.agner@toradex.com>
>>
>> This adds optional systemd support. When enabled, an utility called
>> psplash-systemd is built. This tool will connect to systemd using the
>> system bus to obtain progress information and communicate that to
>> psplash. Once full boot progress is reported by systemd psplash
>> psplash is closed using the quit command.
>>
>> Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
> 
> Looks like your email client or mail server has made a mess of this
> one - it's "Content-Type: multipart/mixed" with quoted-printable
> encoding for the text.

Hm, I did send it using git send-email:
$ git send-email --to=richard.purdie@linuxfoundation.org
--to=yocto@yoctoproject.org --cc=stefan@agner.ch
v2-0001-add-systemd-support.patch 

When I look at the email delivered to my inbox it has no "Content-Type",
not sure if that is a problem? I use my setup since quite a while
successfully on mailing lists...

> 
> Could you try re-sending with `git send-email`? I'd like to test this
> one out myself as I've been using psplash with systemd via a bodge
> copied from AGL for a while now - that doesn't show proper progress
> though it just spins the bar around.

Interested to see how it works on your side. Progress works quite
nicely, the only downside is that systemd's progress information is not
really linear, so usually the progress bar makes progress quite quickly
and starts to slow down towards the end... It is not ideal, but better
than nothing IMHO :-)

I will send a psplash recipe update once this gets merged, but something
like this should help if you want to give it a try already:

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

inherit systemd

SRC_URI += " \
    file://0001-add-systemd-support.patch \
    ${SPLASH_PATCH} \
"

SYSTEMD_PACKAGES =
"${@bb.utils.contains('DISTRO_FEATURES','systemd','${PN}','',d)}"
SYSTEMD_SERVICE_${PN} +=
"${@bb.utils.contains('DISTRO_FEATURES','systemd','psplash-start.service','',d)}"

PACKAGECONFIG ??= "${@bb.utils.filter('DISTRO_FEATURES', 'systemd', d)}"

PACKAGECONFIG[systemd] = "--with-systemd,--without-systemd,systemd"

do_install_append () {
        install -d ${D}${systemd_unitdir}/system
}

And a unit file like this:

[Unit]
Description=Starts Psplash Boot screen
DefaultDependencies=no

[Service]
ExecStart=/usr/bin/psplash-systemd

[Install]
WantedBy=sysinit.target

--
Stefan
