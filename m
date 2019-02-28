Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D13A8E0091D; Thu, 28 Feb 2019 10:43:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.41 listed in list.dnswl.org]
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
	[209.85.208.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6295DE00901
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2019 10:43:43 -0800 (PST)
Received: by mail-ed1-f41.google.com with SMTP id p27so17868251edc.6
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2019 10:43:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=fuzDa3zFU1/ztWc8W3LULUugtgfQ2W4zAqfFep48S5A=;
	b=DRVcrDmcPGQ/AciOWIwmPh80wgf6vMkkoHA1xkgxK0Ezx4QsAZ4XTLHehr6G0Lqiq9
	w6d69aarlfg1mFYNv1SAbzJ6N5K2j9JyAk9oyizxUqVvG5luzmx/pX3rX+X5FjaG5EDG
	gd8zx4KGijpMbER2HL3NJSYO1cHAlAZxe8UIc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=fuzDa3zFU1/ztWc8W3LULUugtgfQ2W4zAqfFep48S5A=;
	b=INN5IeiB12QXklC/qkZfKE4Dm3RvQq+GW+xsTf50p8DzPeVKNpoxcSB8IQs8shR2Mz
	B2KLk3/sgPpHJRo15u1cdMloXmLzPauQWWz+jww/hkXQcGPaDBCaMUOeaGsH59CX5Ebw
	EO7AXTYgFdMuBaG3NsTKFq4fdOGVVBfeE5yRpXKr59LyHNqZ67IjEs8fxucR9bwo5ZCA
	OuWsuO754B55o2tglsXk+e1kmDn93nZDrUGlQAZR80UFWCEcWs0LlQUVHH9TP0c9SWoZ
	RooiW0Qe02YHl8GSpon6gudYeiHly02bUXtbtzAbwndpE/zT/JiGfPTQqKQ+Iw5mwJDo
	cBZg==
X-Gm-Message-State: APjAAAXU6bRaM8QHKCzqJ0Nc5404FP3qUqGtOc1nuEGTYEJUkIDxiQYM
	hc5j8F95H02C9l1dF7VwxaAf5A==
X-Google-Smtp-Source: APXvYqyF+mYITTjUN4gdd1d7ipk4YT4aXHQYoqliG0+tYd/PvuwC1m7Bam6aLdds4BIImAQb3eckGQ==
X-Received: by 2002:a50:a48f:: with SMTP id w15mr834366edb.91.1551379422311;
	Thu, 28 Feb 2019 10:43:42 -0800 (PST)
Received: from bill-the-cat
	(cpe-2606-A000-1401-880D-2107-66A9-E76-5125.dyn6.twc.com.
	[2606:a000:1401:880d:2107:66a9:e76:5125])
	by smtp.gmail.com with ESMTPSA id
	g31sm5356214edb.45.2019.02.28.10.43.39
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 28 Feb 2019 10:43:40 -0800 (PST)
Date: Thu, 28 Feb 2019 13:43:36 -0500
From: Tom Rini <trini@konsulko.com>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20190228184336.GP12046@bill-the-cat>
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
X-List-Received-Date: Thu, 28 Feb 2019 18:43:44 -0000
X-Groupsio-MsgNum: 44286
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="+IojnoBMdP/qo3gc"
Content-Disposition: inline

--+IojnoBMdP/qo3gc
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

Can you point me at a test that just does a 'bitbake -g' or similar
check-don't-build type test and I'll go off and add this to my series
that adds packagegroup-core-base-utils?  Thanks!

--=20
Tom

--+IojnoBMdP/qo3gc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJceCvXAAoJEIf59jXTHXZST4UP/RA9TlP0qAdg5l0UYyZKv8t5
L9PbL0vsttJmfGMXmNOo/A5p9MMr8QV7h+4AJFDtPB0JflICc2WKD1UwCGznBMrv
+CLAhIxBs5HeS5WWFkf7FaxpuxrmdsP3SMcgR0WO3czHcBqFaMdWnjW++se/xVU4
G2AhyYPB4c7uLi5eKdby+qViDzRu8KnOsniD92aUba2mnSTcZyON2eqU9FpedzHx
07MZmqUVjfkop5PxJarp309CUL9eKoHxhd+2ekyulTGdCIl4bEoz0oKMEym5rODP
Gxh5q+ewY6PfuEYbp+swJO1+Z9a9PPJj6hHgHjI/q7DylKLIVEnLhc7CJkn8pY7G
7yEPjW7IRrJKgep4OTQsMXm1wuZNsfqzXDGGLf/+5zebbLxdv/8401X2EDo7lIzG
UZ6v18vTW+49wrKTSZu/6U/TTuCYqgRpE0Ap8kPM4LbBaRK0/ADt3+uOBx1Aiwk5
UvteXM4R5xUVEMOaqi62YW9F+VqX3HKZUClVPRUp2pW8QfHp2fekIyKITA6/8+Ku
OvICKio9qYiV0OjglWYIlsmNn0MRLKv7V8Qjy/IRr+Fn+NP/4LkOQ9RRncLlEZHb
diWVRoWjRl1J2HHYwkE8nAfZhc5pE6yLGe8a+ZoBd09vUE3ISF0wNDY8zfJ4H81Z
pIkjvgRrEwqs5l6BvIGH
=Og53
-----END PGP SIGNATURE-----

--+IojnoBMdP/qo3gc--
