Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43908E013B2
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 12:25:04 -0700 (PDT)
Received: by lboi15 with SMTP id i15so1008088lbo.35
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 12:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=pHIuFh5qZY/WJGr18/26Daw9Wv41WMBUSsI2d64lww4=;
	b=kYNqxH7LlADKZvoHGnygwyprJ7HxUpC7nZJGj62u23QepPoUTbrL44KgyaYfZLxNj8
	k5yO//nNgqxIz81dm/JzmcYwvq5stuUgP4I0QnyU0BySExMPdb/p4GRuOrLEadQgEtWx
	KQpBvuYrvJi55K7b1eYDRPoWUsnGbj84CZcNc028pIexyL/+oHNZJ+gy4piYiiSZY6AD
	5McZbB99PrcEkTBhBRxz5SJHwpZk8lPefz3iUnW6nM0d9iFsU1yuGJtkoxPqqaKpmayw
	nw7W/wgiewnXtDxjcbL7jHztlFs5iqCxZVg6I4MY60suiPUvWjBFfFzg13yE7bmLPBLm
	gGUg==
Received: by 10.112.83.229 with SMTP id t5mr9805144lby.8.1345663503166; Wed,
	22 Aug 2012 12:25:03 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.19.2 with HTTP; Wed, 22 Aug 2012 12:24:43 -0700 (PDT)
In-Reply-To: <CAHUNapRLsCWvefm1+Sc0QT2OhVJ-e0fa3iF7zL2H2qFQLR+AUA@mail.gmail.com>
References: <CAHUNapSmuzJaUkE2fz27-6MDWGg5TAUug9sBxPWEqneM2OO1WA@mail.gmail.com>
	<CA+YB3raTP8ROCvuidyH8zoupo4_qO1a+oWZ_Noakm3Kx5suRag@mail.gmail.com>
	<CAHUNapRLsCWvefm1+Sc0QT2OhVJ-e0fa3iF7zL2H2qFQLR+AUA@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 22 Aug 2012 12:24:43 -0700
X-Google-Sender-Auth: Jhbw_2C0ruD0Rh4O-3Hy92M4u1I
Message-ID: <CABcZAN=Dktdoq00_uHAvG7Wy2UgQhZS0KbZOeCK-s=7B+RbwWA@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: of recipes and packages
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
X-List-Received-Date: Wed, 22 Aug 2012 19:25:04 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Aug 22, 2012 at 12:23 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> On Wed, Aug 22, 2012 at 1:15 PM, Jeff Osier-Mixon <jefro@jefro.net> wrote:
>> In this case, bitbake is looking for the expiration dates on your
>> ingredients - the version of the package that each recipe builds.
>
> But your wording would seem to imply _a_ recipe builds _a_ package.
> But a recipe doesn't build a package, a recipe potentially builds lots
> of packages. For example the "net-snmp" recipe builds the following
> packages: "net-snmp-dbg net-snmp-doc net-snmp-dev net-snmp-staticdev
> net-snmp-static net-snmp-libs net-snmp-mibs net-snmp-server
> net-snmp-client"
>
> "bitbake -s" doesn't list "net-snmp-dbg net-snmp-doc net-snmp-dev..."
> it lists "net-snmp". Therefore couldn't the wording of the bitbake
> help be improved to say:
>
> -s, --show-versions   show current and preferred versions of all __recipes__
>
> instead of:


It could, and should, be changed in that way, yes.
-- 
Christopher Larson

