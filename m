Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 315AAE00942; Fri, 20 Apr 2018 05:02:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f176.google.com (mail-ot0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB814E00756
	for <yocto@yoctoproject.org>; Fri, 20 Apr 2018 05:02:16 -0700 (PDT)
Received: by mail-ot0-f176.google.com with SMTP id g7-v6so70993otj.11
	for <yocto@yoctoproject.org>; Fri, 20 Apr 2018 05:02:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=ITZhXCA/2AHJ2jMSSsGh669IutugmoMCJ17rmVMFKgM=;
	b=sdjSwY19Bb5ahV+UEz98ZWDgSNGADGeShkdKtZdtxVmPA6joshel6oGObGhHCGUJwB
	dZsq9zMlJTtnqNGGBUWO7EEAhnpFtS70ob90LS8i33vXKSyp504tNlR+0pWS00lQVhIe
	WtiNCUEwy8vA8y69v7rDmyb7578xgInkbnIpzMGEhE6iUw1eERI3WzZj7Kr4JEnncvQ2
	J+PPLFg/I1uYkOjkYotjLiBsTqWWYjkTnXLz0cryiaQ7FwxCNFq4Dtjidy+/ggSn6Cjn
	6MuSDWLPZmCRwjkYB9Ww6kbrefGiQcsdx+1iiKJjMKYoCVVY8kw8rTctl9j48WYduXLe
	xEEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=ITZhXCA/2AHJ2jMSSsGh669IutugmoMCJ17rmVMFKgM=;
	b=M1Az3HHYSEXKX9S8AVOoOkaMaM8zuDiY8XHnleuYzp1C1vU1NkPLzh8F92YobKQ/LO
	BwBu6RVqccf10i+6Zq7MEdWNCgCNw/6XISSCFZ1a5wVFEF4zHwIdqj85/wPhCz71mska
	ATV+d91QjpLqPVhcR63XFvp0B/2i5e6QJQaqo22bB8soubnLNOGYRUdA/lKefZJGTU0r
	gLe9tK7mVUQjBh9MkVJkEuM4j2IoJJfYfZMwJt2cI4koXvteIlsiLfwHOhRh7oEVK0sA
	xOyHh+2A/x8WMpMNau8mYKo2HrxFe1RCYSnm2eUWgKcnqusHhUR1z+/bHdrviM6gSF/e
	Kp1Q==
X-Gm-Message-State: ALQs6tBySpPkU3wO6xj0uXGYuuu7ECZnHH5UScgwempRtXRtst6mEhLH
	bAHHhKSvlETmU9aC97GluXALpdbfJCEvXRX3bJ4w3BsV
X-Google-Smtp-Source: AIpwx49bBDYT9vSo9u+D6uLP0UZJuYm9JOlnxMMID0cjbOX2xECYpRwsdO5vL4XOWo8ev0l5mC6+zFjqYdqSgGUjM0s=
X-Received: by 2002:a9d:5320:: with SMTP id
	g32-v6mr3594560oth.293.1524225735479; 
	Fri, 20 Apr 2018 05:02:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.201.26.137 with HTTP; Fri, 20 Apr 2018 05:02:14 -0700 (PDT)
In-Reply-To: <5ad9c69c.1a72630a.6af4.6e06SMTPIN_ADDED_BROKEN@mx.google.com>
References: <CAALXFYy3uftzYmjyYaJ+-X0OAPu8XJ2C7wNBMnoYZYHkm+Gp2g@mail.gmail.com>
	<5ad9c69c.1a72630a.6af4.6e06SMTPIN_ADDED_BROKEN@mx.google.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Fri, 20 Apr 2018 14:02:14 +0200
Message-ID: <CAOT_U5aCpu-WLU+=pPoJdG=ed2n0Y_-NyjLReVARfm_quecY6w@mail.gmail.com>
To: Uwe Geuder <jrswdnan22@snkmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Usage of yocto on different (production vs debug) scenarios
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
X-List-Received-Date: Fri, 20 Apr 2018 12:02:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
had a similar question recently (search How did you separate release
and development builds?)

We have the split like this for now
The release build would be something like:

- has all the functions for production
- attack surface is limited (no ssh, only the required apps)
- config files set with real endpoints (logging or crash servers etc.)

But that's not an image you can really develop on given all the constrains.
So there is also a need for a development image:

- inherits the functions available on production image + debug tools
- developer continence over security (debuggers, ssh access etc.)
- configs set not to depend on payed cloud services

Both are built as a same distro, but are different images.

So far it works ok.
However still haven't experienced the need to have different
configurations for the same recipe, that would probably complicate things.


On Fri, Apr 20, 2018 at 12:47 PM, Uwe Geuder <jrswdnan22@snkmail.com> wrote=
:
> Hi!
>
> On Fri, Apr 20, 2018 at 10:59 AM, Iv=C3=A1n Castell <icastell@nayarsystem=
s.com> wrote:
>
>> We are trying to use yocto in a continuous integration environment with
>> different (production vs debug) scenarios.
>>
>> To setup a given scenario (production vs debug) we are using something l=
ike
>> this:
>>
>>     $ SCENARIO=3Ddebug
>>     $ MACHINE=3D<machine> DISTRO=3D<distro>-${SCENARIO} source
>> ../../build-<machine>-${SCENARIO}
>>     $ bitbake <image>-${SCENARIO}
>>
>> So we have different image recipes:
>>
>>     * image-production.bb
>>     * image-debug.bb
>>
>> Different distros:
>>
>>     * distro-production.conf
>>     * distro-debug.conf
>>
>> And different build directories:
>>
>>     * build-<machine>-production
>>     * build-<machine>-debug
>>
>> To optimize space usage and compilation time, we setup a shared sstate
>> cache and a shared directory for downloads. This seems a good starting
>> point.
>
> Shared download, yes.
>
> But can you share state between distros? Isn't the purpose of distros to
> use different options (variable settings) so the state would always be
> different?
>
> (Please note: This is really a follow-up question, not me knowing
> better. I am just trying to fully understand these concepts)
>
>
>> However, things are getting complicated, because there is no way to
>> exclude some recipes easily. For example, we don't want iptables
>> installed on the debug image, but dependency chains include iptables
>> by default
>
> Doesn't blacklist do what you want?
>
> E.g. in your distro-production.conf
>
> PNBLACKLIST[iptables] =3D "we don't want iptables in product"
>
>
> Of course if something has a hard dependency on iptables, the something
> might need blacklisting instead or too.
>
>
> Regards,
>
> Uwe Geuder
> Neuro Event Labs Oy
> Tampere, Finland
> uwe.gexder@neuroeventlabs.com (Bot check: fix one obvious typo)
>
>
>
>
>> even when declaring IMAGE_INSTALL_remove explicitly. In this case we
>> decided checking _%.bbappend to decide what rules are installed on ion
>> vs rules.debug).
>>
>> hod is poisoning all our recipes with that kind of
>>
>>
>>  right way to manage this? Can you suggest a
>> ay to deal with this?
>>
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

