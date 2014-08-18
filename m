Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 781BEE00563; Mon, 18 Aug 2014 11:50:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f54.google.com (mail-la0-f54.google.com
	[209.85.215.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C366AE004F5
	for <yocto@yoctoproject.org>; Mon, 18 Aug 2014 11:50:14 -0700 (PDT)
Received: by mail-la0-f54.google.com with SMTP id hz20so5064586lab.27
	for <yocto@yoctoproject.org>; Mon, 18 Aug 2014 11:50:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=m4ypTeRtB/Hw8wiQ8G3qzBENatH07AqDS1r2z3SNqz0=;
	b=aOxo1wv7b1s6dv0yxnMobovxw6Dd/kxRR4jU1N6M9UQkDW3bHTvRCdQk9GuDSRCJ5f
	Kk6mzhCpTu4bwHnB/sdm7hW2c1U5dJXCCaiCxAi+x5YD0k9Vod90/HOxDC7VwV7nm6hd
	jpII4ar6MZKFPdbsGdXkKP6RYDvsByuKM1Av4o4SJTwipzxgD3iqXWMSy6FELITJuyo3
	HcaPU7ZGQ1xe+WVbqxRLiLzjgUR5JMo+aYK/RIExIvC4xXDX0shOAiHinF6UWWv+TmEB
	YRkDNUGkDigCO06winXALbuWLwpm72Hhyz07lrjbKYn30XpGt/bvSGyXyjgyL/CxeMcZ
	Iocg==
X-Received: by 10.153.4.6 with SMTP id ca6mr31590029lad.32.1408387813103;
	Mon, 18 Aug 2014 11:50:13 -0700 (PDT)
Received: from gmail.com (ygg.betafive.co.uk. [5.9.90.21])
	by mx.google.com with ESMTPSA id cl2sm6912630lbc.15.2014.08.18.11.50.11
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 18 Aug 2014 11:50:11 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
Date: Mon, 18 Aug 2014 18:50:09 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20140818185009.GA7174@gmail.com>
References: <CAMKF1sp9Z6vj1Dz96_WYiHOtYFqa-zECrNHOFgb=dBUDJN2Z_g@mail.gmail.com>
	<20140818181424.GG12992@gmail.com>
	<CAMKF1srjVfmfAWZ0mx+AfE_nR4erYtAEYt2OVhEsU+q++XKVrg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1srjVfmfAWZ0mx+AfE_nR4erYtAEYt2OVhEsU+q++XKVrg@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, musl@lists.openwall.com,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Announcing meta-musl OE/Yocto layer supporting musl C library
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
X-List-Received-Date: Mon, 18 Aug 2014 18:50:23 -0000
X-Groupsio-MsgNum: 21144
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="J/dobhs11T7y2rNN"
Content-Disposition: inline

--J/dobhs11T7y2rNN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 18, 2014 at 11:26:26AM -0700, Khem Raj wrote:
> On Mon, Aug 18, 2014 at 11:14 AM, Paul Barker <paul@paulbarker.me.uk> wro=
te:
> > On Sat, Aug 16, 2014 at 05:50:38PM -0700, Khem Raj wrote:
> >> Hello All
> >>
> >> musl <http://www.musl-libc.org/> is a newer implementation licensed
> >> under MIT licence
> >> A layer to support musl to supply your system C library as an
> >> alternative to uclibc and eglibc/glibc  is now available at
> >>
> >> https://github.com/kraj/meta-musl
> >>
> >> README describes way to get going with it.
> >>
> >> Few things to note
> >>
> >> * Supports gcc 4.9 in OE not 4.8
> >> * Current musl recipe is 1.1.4 based
> >> * You need latest master of OE-Core
> >> (106305227003761c3fc562c21bb859a5256f2b36) or          newer and
> >> bitbake
> >> * Its only able to build core-image-minimal
> >> * core-image-minimal boots on qemuarm, qemuppc, qemumips, qemux86, qem=
ux86-64
> >>
> >> I will send a request to add it to layerindex soon and then you should
> >> be able to find it using
> >> layerindex.opernembedded.org as well
> >>
> >> If you try it out on your hardware and/or have feedback I am
> >> interested. Fork it from github, file bugs
> >> send patches ....
> >>
> >> Happy hacking
> >>
> >
> > core-image-minimal works with my configuration on qemuarm. It also succ=
essfully
> > builds what will soon be released as opkg-0.2.3 and the recipe for toyb=
ox-0.4.9
> > which I've recently created.
> >
> > I tried building core-image-full-cmdline as I think that would be good =
next step
> > from core-image-minimal. I'm seeing failures in:
> >
> >   meta/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bb, do_compile
> >   meta/recipes-extended/tcp-wrappers/tcp-wrappers_7.6.bb, do_compile
> >   meta/recipes-extended/libtirpc/libtirpc_0.2.4.bb, do_compile
> >   meta/recipes-extended/iptables/iptables_1.4.21.bb, do_compile
> >   meta/recipes-connectivity/nfs-utils/libnfsidmap_0.25.bb, do_compile
> >   meta/recipes-devtools/perl/perl_5.20.0.bb, do_compile
> >   meta/recipes-extended/sysklogd/sysklogd_1.5.bb, do_compile
> >   meta/recipes-extended/ethtool/ethtool_3.14.bb, do_compile
> >   meta/recipes-extended/psmisc/psmisc_22.21.bb, do_compile
> >   meta/recipes-extended/pax/pax_3.4.bb, do_compile
> >   meta/recipes-extended/procps/procps_3.2.8.bb, do_compile
> >   meta/recipes-extended/net-tools/net-tools_1.60-25.bb, do_compile
> >   meta/recipes-extended/findutils/findutils_4.4.2.bb, do_compile
> >   meta/recipes-extended/logrotate/logrotate_3.8.7.bb, do_compile
> >   meta/recipes-extended/cronie/cronie_1.4.11.bb, do_compile
> >   meta/recipes-devtools/elfutils/elfutils_0.148.bb, do_compile
> >   meta/recipes-extended/at/at_3.1.14.bb, do_compile
> >   meta/recipes-extended/iputils/iputils_s20121221.bb, do_compile
> >   meta/recipes-extended/gzip/gzip_1.6.bb, do_compile
> >   meta/recipes-extended/sudo/sudo_1.8.10p3.bb, do_compile
> >   meta/recipes-extended/mc/mc_4.8.12.bb, do_compile
> >
> > I can share detailed logs if anyone wants them. I'll have a look and se=
e if I
> > can find some low hanging fruit amongst these which are easy to fix.
> >
>=20
>=20
> Thanks cool. Can you open a ticket on github with this information ?

Will do. Do you want just want one ticket or do you want to separate these =
into
one ticket per failing recipe or similar?

I've put the failing "log.do_compile" files into one directory which is 1.3=
MB
uncompressed or just 41kB compressed. I've posted them to:
  http://www.paulbarker.me.uk/musl-error-logs_2014-08-18/
  http://www.paulbarker.me.uk/musl-error-logs_2014-08-18/musl-error-logs_20=
14-08-18.tar.xz

Cheers,

--=20
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

--J/dobhs11T7y2rNN
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBAgAGBQJT8krhAAoJEBwoJlo7UPQDFVcIAJpzbtCui+Y4mH/I7TSfvEGE
K6XLdMjthp5ZD7SlOAe/ECogvvY8d4KBzihLWS7Sbe/u6ma7eJqvRcM9vKAMWX/P
3bbkoEg/NXEZV13DGkRI5jOrcnPgsgnd0Zoy4zKiQF+7Eu/3gjTNACsAhm48ZL+a
SGPpY6MTAuo3BL1vfvk8ZB8Eu72g3Ks0JCUhewPMt64vksqcXvT4qZAM0bCKc59p
f1rOdQDmo9AiU9orXFzRQfQrEJzxzniYYqdIW7UXmhUaHB76QwpKWfwtBhlAYxGZ
0EmZ2vSiPvJRqgbfeOjoF3C7N1PsRhlsrTqsRW2hVundI4ar3JvhBv7SL2ZKheg=
=ZiaI
-----END PGP SIGNATURE-----

--J/dobhs11T7y2rNN--
