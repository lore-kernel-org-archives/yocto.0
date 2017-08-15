Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB114E00D5E; Tue, 15 Aug 2017 05:43:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.42 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.42 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f42.google.com (mail-lf0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2431E00851
	for <yocto@yoctoproject.org>; Tue, 15 Aug 2017 05:43:48 -0700 (PDT)
Received: by mail-lf0-f42.google.com with SMTP id d17so3266114lfe.0
	for <yocto@yoctoproject.org>; Tue, 15 Aug 2017 05:43:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=chargestorm-se.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:organization
	:user-agent; bh=DDDV8D+7y5QnU/wI2rLUx/pDYQqdZuHzaEJCsqzsBk8=;
	b=c8O1Gpr7PqW1M1CPYBUEaIU0ydpIVcvppcroVuJFPMI+4sXyi3ethC4iWEq5nF9f5D
	vVvOleR0f9iM7Jc1/RrIhVcGV+sf95lVlOIMo89o6zWHAV6eml4yu6HKLdOi6U1Qm2YY
	4uyZSPvhaWQCcKh8Y+MxLznH+OZBxh+Uyy7qL7nDK5dVq+3HoZGqVlAXkhdV9+Nk1w25
	FIEstEGZElvYij94Sfg+rVN1HnB9Fd06JjkOeBzapXOmYiCvux1/Tat4V4kFkKo8NaE3
	H8edhq0Gj27ZVIGQzQKAvJltOy6qDtbyizI7RDbH/baKl9zBfsbzrzsk0DWZB2AyZ2ve
	14ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:references:mime-version:content-disposition:in-reply-to
	:organization:user-agent;
	bh=DDDV8D+7y5QnU/wI2rLUx/pDYQqdZuHzaEJCsqzsBk8=;
	b=aqTFgxM34S1sGJjv9LKj2LNRcbiYujFoFNTXLnsa+LaaR+qakjkQOhZjMmyDdAST0W
	E96MWfa9msHfOoCeBJwiZc7UUQKW3TtuKl5TBCmJWcP2Zl4nsrl489xXufcVDJoXvbHl
	chc6kFGY4gHS/RUUZrZpCiL+xb6jJwdkQs42bBddr1PnyU4JMxbSzIJ+cLBGi0W5lIXZ
	6Ai7WT9wu2xCbroxFbpw2pFd9Cc23JzLNlAsj6JK+3xosdHn8T+tnnrqOTky1UZCFu/H
	L6QcBJVeKxEW2CrijeyL+u8C48jxHsT02IQLqWdRfeLeB/Zz5izmu1A8Rjv9KrNQYEtQ
	RpjQ==
X-Gm-Message-State: AHYfb5gw0m9KlFcYmiJbNWsJuJmHxXz3PeaGOd2kRwPTU5tNbC5KoLje
	1DQGVY0pfOAP+jFB4AO2LA==
X-Received: by 10.46.19.2 with SMTP id 2mr9096319ljt.148.1502801027148;
	Tue, 15 Aug 2017 05:43:47 -0700 (PDT)
Received: from ad.chargestorm.se (h83-209-191-235.cust.se.alltele.net.
	[83.209.191.235]) by smtp.gmail.com with ESMTPSA id
	l97sm1945033lfi.95.2017.08.15.05.43.46 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 15 Aug 2017 05:43:46 -0700 (PDT)
Date: Tue, 15 Aug 2017 14:43:44 +0200
From: Anders Darander <anders@chargestorm.se>
To: yocto@yoctoproject.org
Message-ID: <20170815124344.2ogr6pkvm62nj2pg@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <a94a076e-50a3-bf78-e628-15128682128f@gmail.com>
	<CAMKF1sq9gu9fHDARcYkwH36ZBp_9OtaF_FfDHLz5CyThdvxq-A@mail.gmail.com>
	<CA+chaQdZXaBg+ykJCHH+9gcW6gmze3VL_ifHBHokj8TBhb+8NQ@mail.gmail.com>
	<c8358f28-0cec-cd19-d56e-372173b6a828@gmail.com>
MIME-Version: 1.0
In-Reply-To: <c8358f28-0cec-cd19-d56e-372173b6a828@gmail.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: NeoMutt/20170609 (1.8.3)
Subject: Re: How can I use PREFERRED_VERSION_ ?
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
X-List-Received-Date: Tue, 15 Aug 2017 12:43:49 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

* Riko <antonius.riko@gmail.com> [170815 14:36]:

> is openembedded-core layer equal to meta-openembedded layer ?

Did you read my reply to your other thread?

> this conf was working before :

> BBLAYERS ?= " \
>   /home/bianchi/poky/meta \
>   /home/bianchi/poky/meta-poky \
>   /home/bianchi/poky/meta-yocto-bsp \
>   /home/bianchi/poky/openembedded-core \

>   /home/bianchi77/poky/meta-openembedded \
This isn't a layer, remove this line.

And ensure that you all your layers are from the same release branches.

Cheers,
Anders

>   /home/bianchi77/poky/meta-openembedded/meta-oe \
>   /home/bianchi77/poky/meta-openembedded/meta-xfce \
>   /home/bianchi77/poky/meta-openembedded/meta-gnome \
>   /home/bianchi77/poky/meta-openembedded/meta-python \
>   /home/bianchi77/poky/meta-openembedded/meta-multimedia \
>   /home/bianchi77/poky/meta-openembedded/meta-networking \


> On 15/08/17 17:20, Martin Jansa wrote:
> > and you should start by not including 2 different versions of
> > openembedded-core/meta in your builds.

> > Then you won't need PREFERRED_VERSION for openssl and the issue with
> > wic.vmdk you reported elsewhere will also probably disappear.

> > On Tue, Aug 15, 2017 at 7:31 AM, Khem Raj <raj.khem@gmail.com
> > <mailto:raj.khem@gmail.com>> wrote:

> >     On Mon, Aug 14, 2017 at 7:15 PM, Riko <antonius.riko@gmail.com
> >     <mailto:antonius.riko@gmail.com>> wrote:
> >     > Dear Yocto Team Members,

> >     > How can I use PREFERRED_VERSION_ ?



> >     read through
> >     http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-PREFERRED_VERSION
> >     <http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-PREFERRED_VERSION>

> >     > ERROR: Multiple versions of openssl are due to be built

> >     (/home/bianchi/poky/openembedded-core/meta/recipes-connectivity/openssl/openssl_1.1.0f.bb
> >     <http://openssl_1.1.0f.bb>

> >     /home/bianchi/poky/meta/recipes-connectivity/openssl/openssl_1.0.2k.bb
> >     <http://openssl_1.0.2k.bb>).
> >     > Only one version of a given PN should be built in any given
> >     build. You
> >     > likely need to set PREFERRED_VERSION_openssl to select the
> >     correct version
> >     > or don't depend on multiple versions.


> >     > Regards,

> >     > Riko

> >     > --
> >     > _______________________________________________
> >     > yocto mailing list
> >     > yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> >     > https://lists.yoctoproject.org/listinfo/yocto
> >     <https://lists.yoctoproject.org/listinfo/yocto>
> >     --
> >     _______________________________________________
> >     yocto mailing list
> >     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> >     https://lists.yoctoproject.org/listinfo/yocto
> >     <https://lists.yoctoproject.org/listinfo/yocto>
-- 
Anders Darander, Senior System Architect
ChargeStorm AB / eStorm AB

