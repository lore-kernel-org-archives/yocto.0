Return-Path: <koen@dominion.thruhere.net>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A398EE004D2
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 16:58:28 -0700 (PDT)
Received: by pbbjt11 with SMTP id jt11so2950258pbb.35
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 16:58:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer
	:x-gm-message-state;
	bh=4jPn97A4xA8yZkHqNSm093ju3mR6mgVSzowKVwBEC08=;
	b=O6RjtMqKuOzFAt6WPt0j4D4iyi1UZTX8IMPik9gX0VBLb/u+a/1tFOcIN4wca0wS5Y
	zPsedYeTyOAwFG5YqlcGcv0cjnDS5Gu++Qucr1xAwe4tC9DYebETGSxIn+dPOwURS3zX
	PGk7tBhaA2CwaLe58Laifo1pnoZ3ANki1i/7rWWZRT6gkFNTCGtOPZUD3CfEPmWlYDFe
	hV4GNwheS9+zu34/ptIkvDOjCuum2GVNgznwPL7SFTQ54+rUEQXD51OYLoSGf5KRzjjI
	Dc0wcWsWurOyL016NBeNTIdfq89MebpUu2Mf1g32pIa9zLd7qR36Rc1JsXc0pwxanTyf
	SBLw==
Received: by 10.68.189.166 with SMTP id gj6mr1203875pbc.140.1333151908463;
	Fri, 30 Mar 2012 16:58:28 -0700 (PDT)
Received: from [10.61.32.129] ([69.38.219.78])
	by mx.google.com with ESMTPS id x1sm8376021pbp.50.2012.03.30.16.58.27
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 30 Mar 2012 16:58:27 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1257)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <20120330234936.GC11451@bill-the-cat>
Date: Fri, 30 Mar 2012 16:58:31 -0700
Message-Id: <18E24F27-AC18-47AE-A4D7-3ED2ECB975FD@dominion.thruhere.net>
References: <D044B647-8BCD-48B4-BABD-CE4751D023E0@dominion.thruhere.net>
	<4F7608DC.1000402@windriver.com>
	<26C6B15B-4A12-453A-A146-C884A5040178@dominion.thruhere.net>
	<4F7614FE.5000107@windriver.com> <1333141865.18082.120.camel@ted>
	<CDED78A957032E45B3239CDDA7642D15084B8EC1@ORSMSX105.amr.corp.intel.com>
	<20120330234936.GC11451@bill-the-cat>
To: Tom Rini <tom.rini@gmail.com>
X-Mailer: Apple Mail (2.1257)
X-Gm-Message-State: ALoCoQnbeyYo+PvZYIj2o/Z0bp9Wo7KQow+OK82bqSVs/06I/rNtYsPqY3XLfAZ17taNVlmg1/ZF
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Moving angstrom under the yocto banner
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
X-List-Received-Date: Fri, 30 Mar 2012 23:58:28 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 30 mrt. 2012, om 16:49 heeft Tom Rini het volgende geschreven:

> On Fri, Mar 30, 2012 at 11:06:04PM +0000, Stewart, David C wrote:
>=20
>> Finally, Dr. Kooi has stated that he doesn't see YP as an upstream. =
In fact, many=20
>> of the OSVs (like Wind River, Mentor Graphics and now ENEA - yeah!) =
absolutely
>> want to use YP as their upstream. So I'm hoping we could change the =
definition
>> of YP/Poky/Angstrom so Angstrom could us Poky as its upstream ... no? =
Too
>> hard?
>=20
> Putting on my "me, myself and I" hat and apologizing for putting words
> in a few peoples mouths, I think this speaks to the heart of the =
problem
> Koen is trying to express.

Exactly! I said that *poky* is not an upstream, nothing about YP.=20

>  On a technical level, the goal has been
> something (and I'm simplifying a bit here) to say that poky (the =
distro)
> is an implementation of policy for oe-core.  oe-core, bitbake and N
> number of other layers (meta-intel, meta-fsl-ppc, meta-ti, meta-java,
> meta-oe, meta-so-on-and-so-forth) will say that this is their metadata
> for release X.  Some of these layers (bitbake, oe-core, poky the =
distro)
> are maintained by 'Yocto Project' folks like Richard.  Others are
> maintained by community folks (Koen, Eric B.) or other companies
> (Denys).
>=20
> Now, you say "YP is an upstream".  But "Yocto Project" is an upstream
> for bitbake, and for openembedded-core and for poky (the distro) and a
> lot of other stuff.  However, meta-yocto (what got us going in this
> direction) is only an upstream for poky (the distro), and Richard has
> said it's a TODO list item to move poky (the distro) into a separate
> repository and thus make meta-yocto ONLY a conglomeration of other
> repositories.
>=20
> It's GOOD that companies want to work with upstream, and at some high
> level "Yocto Project" is where that is, in so far as bitbake,
> openembedded-core, etc, get a lot of time and energy and resources of
> "Yocto Project" people.  But these also get community resources too.
> Koen for example DOES see "Yocto Project" as an upstream in that he
> contributes to openembedded-core, etc, etc.  Angstrom also sees "Yocto
> Project" as an upstream for the same reasons.  But on a technical =
level,
> none of us would say it that way.

Exactly.  I said that *poky* is not an upstream.

> And this is where the confusion emanates from I believe.  You're =
saying
> that Angstrom (the distro) should see poky (the distro) as it's
> upstream.  If I was a runner, I could make an analogy you would say =
"but
> that's silly!" and I would say "exactly!" and we'd all be on the same
> page.  So can we pretend I did?
>=20
>> Anyway, if we can't get to this level of interoperability, then =
adding Angstrom=20
>> to the Yocto project may add too much confusion.
>=20
> If someone makes a layer and it works with meta-yocto +
> meta-SomeHWVendor and fails with meta-angstrom + openembedded-core +
> bitbake + meta-SomeHWVendor (and you can replace meta-angstrom with
> meta-arago or any other layer that provides distro policy) it's a bug,
> not a feature, and not what anyone expects to happen today.

Like meta-ti won't build with binutils newer than 2.20.x. We all agree =
that's a bug in meta-ti, not a bug in oe-core or poky (the distro).=

