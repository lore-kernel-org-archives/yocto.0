Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C8EDE00D15; Wed, 27 Feb 2019 10:54:26 -0800 (PST)
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
	*      [209.85.208.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
	[209.85.208.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCD92E00D13
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 10:54:25 -0800 (PST)
Received: by mail-ed1-f67.google.com with SMTP id 10so14812875eds.7
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 10:54:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=Jxzh4khseoYM4ozgEwT1rRtD55X45BCXZiUJRIS4D6k=;
	b=IUaXOEJ1yxgHN5LkMCB+Fg79iA4J3awpKk/0e37CaNl0SlfUwT1H+0V5z8zJPFiTjX
	GrcXK5omzxiCOhuP0xVtO5XH+Ndo15dCRiw1565Dbn21DwVnE1+zruhvyCQnc0mEJCKw
	gKsndJObpHsycEP6bQM8jVkZzGbXcOLxdS1IU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=Jxzh4khseoYM4ozgEwT1rRtD55X45BCXZiUJRIS4D6k=;
	b=JzI0lQFuob4F8a0Jo59FKDgOIGVmxuBFhB39s304/kBRtN2P2FZgv2BnkX4SYjjEn8
	AJu2Zl4pPfFlj1QEOlrrzjekyM0DtSS/c7TcT+nw83iF35DVTAVjYFwoo/l3NXBxGLWo
	U84KKDcw0OXD8yGKhQ2qTFU8dRVQW8XALjleNUC2n7hgggu0X6ww4HdNJXLK4EGi8KDH
	Lp7hHqUqyoDrOaE5v+DfYTY4pAhlbYzsk+oC3uwbAo+iJYCi7nU/UTfOFBrjKKNeXlwb
	aerM9f5z4h9o/AqMPUvbkN3/vXYyPKBNNZopQMJ/YIdSihZNtFP8RGitObs1lPeeL6BW
	rOOA==
X-Gm-Message-State: AHQUAub8lkKDeEveZJp268tYEJTsK/EtRug0tV7Ce9WaGCtJtsdgmeD3
	ugk4DGz1jFZwX+kCmxNHORqTBw==
X-Google-Smtp-Source: AHgI3IbnOSDeRXQBdsQ86cHToHWUkdUrtfineHc1Arg49r9ISRaZ0dVOjx3S0LeUZp1JpAwP5kaqxA==
X-Received: by 2002:aa7:d396:: with SMTP id x22mr3519096edq.182.1551293664785; 
	Wed, 27 Feb 2019 10:54:24 -0800 (PST)
Received: from bill-the-cat
	(cpe-2606-A000-1401-880D-344A-8475-F632-B81B.dyn6.twc.com.
	[2606:a000:1401:880d:344a:8475:f632:b81b])
	by smtp.gmail.com with ESMTPSA id
	k26sm1271494edd.16.2019.02.27.10.54.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 27 Feb 2019 10:54:23 -0800 (PST)
Date: Wed, 27 Feb 2019 13:54:19 -0500
From: Tom Rini <trini@konsulko.com>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20190227185419.GC12046@bill-the-cat>
References: <63908e27-9243-16f9-aa65-e0c0d3e23af1@innodelec.ch>
	<20190227170614.GV12046@bill-the-cat>
	<a4468f8b-7d51-75b6-d5cc-f40d11d9dc9b@windriver.com>
	<CAJTo0LbJUurHkyTz1EuOHnxkYK1MOX8MxUXzzSmPFZBqd_=qcQ@mail.gmail.com>
	<20190227175814.GW12046@bill-the-cat>
	<CAJTo0Lboemkg2+rxxBqgj7K1LLQGEioDqsJUQx1AtCzMgrGHrg@mail.gmail.com>
	<20190227184542.GB12046@bill-the-cat>
	<CAJTo0LbveDoW=oinew3FKZW80r1Xe0kuq5vJ6E1fb-EL0nyKfQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0LbveDoW=oinew3FKZW80r1Xe0kuq5vJ6E1fb-EL0nyKfQ@mail.gmail.com>
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
X-List-Received-Date: Wed, 27 Feb 2019 18:54:26 -0000
X-Groupsio-MsgNum: 44250
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="O2izrSG9ltmUPm45"
Content-Disposition: inline

--O2izrSG9ltmUPm45
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 27, 2019 at 06:47:52PM +0000, Burton, Ross wrote:
> On Wed, 27 Feb 2019 at 18:45, Tom Rini <trini@konsulko.com> wrote:
> > OK, so I've kicked things a bit harder again, and here's what I see as
> > the (small) rub.
> > $ git grep hddimg meta/conf/
> > meta/conf/machine/include/x86-base.inc:IMAGE_FSTYPES ?=3D "hddimg"
> >
> > So yes, we can do a test with qemux86/qemux86-64 and documenting this in
> > local.conf.sample is good (and a packagegroup that gives more 1:1
> > functionality is on my TODO list somewhere).  But it's also true that
> > we'll get people with "I can't remove busybox and I tried what it says"
> > posts since blindly pulling in hddimg gives at least:
> > ERROR: Nothing RPROVIDES 'busybox-mdev' (but
> > /home/trini/work/OE/oe-core/meta/recipes-core/initrdscripts/initramfs-f=
ramework_1.0.bb
> > RDEPENDS on or otherwise requires it)
> >
> > That's the point I want to make, after throwing out a quick test build
> > dir.
>=20
> Sure, so the instructions include "don't use hddimg" until we've a way
> of not using busybox in the initramfs.

Yes, I think including a comment about making it clear initramfs' still
need busybox should be enough of a crumb to help users out.  As a
separate thread maybe we should talk about dumping initramfs' from the
default x86 inc file, but that is indeed separate.

--=20
Tom

--O2izrSG9ltmUPm45
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJcdtzbAAoJEIf59jXTHXZSfoUQAKArwdRVlWIhXdoW3h971Is1
9AqvDpzk8CKztV5Swy6WMGwe790pGSMOh2FMtilMnfemybZFerZxIaPmCmzKo3VX
Dcc1vIMcyelW9UKTfKMXJa+f/Xgz6qbeNtQbaC1Q1pUAcMlYtjJ2UshZzOS+NwPq
GR332L9O+54AsCuStqd3scsP/do+KHWkE6x/1jTF1DrHECSbC8LzZIvfohYly2wD
NVp1mbZLTgjqUAF2FTe+5+QHvkkMsE9ihmaXzudZw5KEydygvSGOeyoOo38SEHDO
6ctYd6Xt30aKh6gzj5gCoRjWMNJ3i+un6ZF4XSzE95S4jHVQaJcWNlM75qduJPdr
gPI9d5p54594NUvaLLGILmk4jjcUtX13MRIBVyaExiKQvzYMJm7xbltNYoY/RdZm
3Hfzjbk4NB11yQgkKOc8Obvjj0b9AB30DqOec8WyJVo9hDSqPZyXv3D5iW5KBGhi
L7SQikUloAmLxKvrkZdshJNu8fUo/vhDmXyMvF13yJk2NN0iSD/DZv5L5ukZEI+I
HPaf4EB6B0RP27gQwPdSgYsbK7KzkDw2JtOq89tUax+30fMykYTXF7mdo4LCcDTC
SMdGrKBIZTPmEZAEEvo3Zu3UuR2R/by5nzeSc9r3FMqPB3YbgaG9tyMQVB63jYxT
EYmxvLWsxA2GXc6t6sKg
=V44B
-----END PGP SIGNATURE-----

--O2izrSG9ltmUPm45--
