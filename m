Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECB81E00D17; Wed, 27 Feb 2019 09:58:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.45 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
	[209.85.208.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC165E00A54
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 09:58:20 -0800 (PST)
Received: by mail-ed1-f45.google.com with SMTP id g19so14696913edp.2
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 09:58:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=Og3qJvGs853iW7S1coNFFU9UIw8KujmT16org04bTb0=;
	b=aNL+VOzYl+3/VlbRKdcJ61w4BSNYVQUgLLkZpb3PRJBkXkJm0SOKritH7T73S0qumy
	oxcdRKRKV2UnePgkBWU1fho2z51zq3ZFqpG4oRqafFRe07cIdKseW7qMek/VJqRUYZMh
	9WhtIFWKEmg5ZHaLy2YauPgc+Ns0hilsgMsq0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=Og3qJvGs853iW7S1coNFFU9UIw8KujmT16org04bTb0=;
	b=cWD7etz3dfeat5m2WriiKtp6cKxOCkGxdPYn7Yczh/cI40lOXzHojJg7IjPytTlWO8
	4eI9SpDjAxpVyVYaWevDIvzo0vpQWoJaSv9w8+QxOhgZApYoBZncW4QvPfjR+rD+ezf9
	+eJ1tPUqDwV3XbpWmuxfCOGRylZ2n7SWbFh14AGz98xzDRgroeNi7gIvpdyYYGJLDA+S
	7iAjMtcHB7fIr5Un1qcAQ+JgP2avvp+BCiSydmTu3JFlRWTlnVcpdFOI7YQ3awvpRHaZ
	Y5RBLZGyis0ut5wH/Z3xu7KHauqxp3FXJILo4Im98bhJVYj6j6ym1+lJDthblDfBw6OO
	vMnA==
X-Gm-Message-State: AHQUAuahkeBTKK1LNV9pJRilueGs3ljGLWKLx7/h5dRKXNrfXlfaXf2z
	83ZP9V70hgEklBqFJLmK5Koi+Q==
X-Google-Smtp-Source: AHgI3IbpWqEjdz2xU56XjewXLcaoNw/m2oCoyEATgUL9IeRswHDlmKgc8f3umzjVkcO25Wj4rWyBtw==
X-Received: by 2002:a17:906:a12:: with SMTP id
	w18mr2460886ejf.70.1551290299612; 
	Wed, 27 Feb 2019 09:58:19 -0800 (PST)
Received: from bill-the-cat
	(cpe-2606-A000-1401-880D-344A-8475-F632-B81B.dyn6.twc.com.
	[2606:a000:1401:880d:344a:8475:f632:b81b])
	by smtp.gmail.com with ESMTPSA id
	v15sm4520968edl.40.2019.02.27.09.58.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 27 Feb 2019 09:58:18 -0800 (PST)
Date: Wed, 27 Feb 2019 12:58:14 -0500
From: Tom Rini <trini@konsulko.com>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20190227175814.GW12046@bill-the-cat>
References: <63908e27-9243-16f9-aa65-e0c0d3e23af1@innodelec.ch>
	<20190227170614.GV12046@bill-the-cat>
	<a4468f8b-7d51-75b6-d5cc-f40d11d9dc9b@windriver.com>
	<CAJTo0LbJUurHkyTz1EuOHnxkYK1MOX8MxUXzzSmPFZBqd_=qcQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0LbJUurHkyTz1EuOHnxkYK1MOX8MxUXzzSmPFZBqd_=qcQ@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Removing busybox
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
X-List-Received-Date: Wed, 27 Feb 2019 17:58:22 -0000
X-Groupsio-MsgNum: 44245
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="OtP8TOIcu2/MSuWQ"
Content-Disposition: inline

--OtP8TOIcu2/MSuWQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 27, 2019 at 05:42:03PM +0000, Burton, Ross wrote:
> On Wed, 27 Feb 2019 at 17:27, Mark Hatle <mark.hatle@windriver.com> wrote:
> > You can also blacklist busybox to ensure that it never builds, and thus=
 can't
> > show up in your target image.
> >
> > PNBLACKLIST[busybox] =3D "Don't build this"
>=20
> Sounds like someone should write a new selftest that does the required
> configuration changes as per Tom's mail, blacklists busybox, and then
> tries a core-image-sato build.  This would double as a check that we
> don't break it in the future, and a documented example of how to do it

I'm not sure we can blacklist busybox from the build at this time
(hddimg requires initramfs that requires busybox) but instead only force
remove it from the image and ensure it still builds.

--=20
Tom

--OtP8TOIcu2/MSuWQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJcds+1AAoJEIf59jXTHXZSjqIP/RGq18jzCau13hdMJjuN229W
+BM0R3AOhI1Co/rMbazTfC6R8tVbp6xnQRQijXMzFPMXIBMBxxk/q8qaaX5UYZvl
PWJA45fNfHkAl+pFG6twroVSFRwKGoaVRoyXlIjQ+x5vNaEaKpUhQILVWIgxk4+A
R+xXV5SM9fqs7bPyO1tmOWj/zu1uCEAj9d686n8KmkIk9vTJ4kcc9suV+d+55dCH
p3rpvdKCFdFxXZunUW24XIQhTHtyjq/CxvROvGXNXdy3Mx1/YtRU8E5oDGneg6e8
kgVMO7LA0pmAJ0AZ0pA0TxdYRysJKodyaz9utVh6vXwAMBpgwPhQkRkJe5WcQGNR
XC1leiuBiteivuftFZGV0iFsUYkJVBxXel+9gw9TXN7xqKtVAYr6tS6n4E06vHJE
f1yMdg37dXjths9FwPu9AcuwODi2E8GQoI5nhD7RtTJvdpTL66rSL4CYFFyM+yEQ
5Tal67198vN/Ieh+B0M8kTYWZfxQNr2ouTa6cT35eXzuB7lAQP2pVNx+UH1R7Ffy
1ylgDjisiPTgcYuLi8NTouciA2KXwHVi9uXGWB7ZcJQptt6KU7YaJVaKIUa31N48
ILNeKmy+2QVBOAnUtAjfe9Kg1cwafOUQPZcfECq4Twd6JjFwYl5ZiKeM8ADQdhcv
8UIEpaOsZ9rzWJhsppTc
=aLc2
-----END PGP SIGNATURE-----

--OtP8TOIcu2/MSuWQ--
