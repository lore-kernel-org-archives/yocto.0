Return-Path: <marc.ferland@gmail.com>
Received: from mail-qa0-f49.google.com (mail-qa0-f49.google.com
	[209.85.216.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6491AE00294
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2013 13:16:11 -0800 (PST)
Received: by mail-qa0-f49.google.com with SMTP id o13so1812354qaj.1
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2013 13:16:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:sender:from:to:cc:subject:references:date:in-reply-to
	:message-id:user-agent:mime-version:content-type
	:content-transfer-encoding;
	bh=yTyomEJ+5H2MQIEYMjbQjohcWPIdWl4iqmCMh34P/Wo=;
	b=AZdE2m+yqTtwWdtdpWGEVkKK5FenDz6jfh0dlhEh42OtvAfumalG98psKvvNodYThe
	I/yGvi2iX8SitQAIXq8wrYZD3gGQbkeI6rHhS7hynPkvrixiWr5I4RemIaE2BefMZvyX
	RS34xQHVvHtunqMKrlsQY+f7iVDguRal6ifPitUrE+iqen0UnuWziwpze+rc967vM0cX
	A4kE1eR1fbtc1MbTXzBokXF00WvQc2AA8jr7dAxnwql4jnOJGoEKmn8Ybdme1rPUBrbZ
	CbAkQ4/WodJu4jWAPFxaxp8xzdqjMEqfN9c7JwqxEpn8zJ3gN49XdIier5KNgoRr79bN
	k4YA==
X-Received: by 10.49.132.69 with SMTP id os5mr11970853qeb.28.1359666970477;
	Thu, 31 Jan 2013 13:16:10 -0800 (PST)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPS id hn9sm5348928qab.8.2013.01.31.13.16.07
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Thu, 31 Jan 2013 13:16:09 -0800 (PST)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Thu, 31 Jan 2013 16:16:18 -0500
From: Marc Ferland <ferlandm@sonatest.com>
To: r10kindsofpeople <r10kindsofpeople@gmail.com>
References: <CAE8H0+XKiAGXzTTbLd67CqC32rYBK4iNaDTkoJyjUx8xzkBj+w@mail.gmail.com>
	<87halxb1mt.fsf@sonatest.com>
	<CAE8H0+UNaOBQp1nBuU4tRMXXcSyrtFxuPnQE+Ez4Z9atbpYXmQ@mail.gmail.com>
Date: Thu, 31 Jan 2013 16:16:18 -0500
In-Reply-To: <CAE8H0+UNaOBQp1nBuU4tRMXXcSyrtFxuPnQE+Ez4Z9atbpYXmQ@mail.gmail.com>
	(r10kindsofpeople@gmail.com's message of "Thu, 31 Jan 2013 15:58:09
	-0500")
Message-ID: <87d2wlaw9p.fsf@sonatest.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.1 (gnu/linux)
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: lmsensors-apps builds, but not in final image?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 31 Jan 2013 21:16:11 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

r10kindsofpeople <r10kindsofpeople@gmail.com> writes:

> Thanks, Marc, that's got me moving forward. =C2=A0However, it may not be
> strictly true that lmsensors-apps is empty or at least has no effect.
> =C2=A0So far, I'm up to "lmsensors lmsensors-scripts lmsensors-apps" with
> the last being needed {sufficient?} to get strict.pm, needed to do
> "sensors-detect". =C2=A0
>
You could also use the new lmsensors recipe which I updated from the old
one (the one you're using atm).

It's available here:
https://github.com/openembedded/meta-oe/blob/master/meta-oe/recipes-support=
/lm_sensors/lmsensors_3.3.2.bb

Marc

