Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9028AE00931; Wed, 23 Mar 2016 03:56:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9039E00920
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2016 03:56:03 -0700 (PDT)
Received: by mail-wm0-f52.google.com with SMTP id p65so18444828wmp.0
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2016 03:56:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=/FARvSst91tgRF591BjnfZ5GXbHOUuqyqx+kbT5pIaw=;
	b=K/EqttZ4zvZtmEXNYWMyMAv1AsZGsoVAXi2QL7mwN0DTQRQv4zIaZ5jGQciKLXnyC0
	e6jAjDIywepykbNaOxb7kqhqZKwvsT+fhr5ttFSbE19q/TF0Pk1Po8tREK6LhQuPV1HC
	aYobi6w/+5m/x4gqseirhmL5Cez+6e5/HSe4xpjel06wJkJuEYsSqf1//3zGuofJj8kU
	0X6DyT4hhW62Ku6zkGMj8ZPmUtQjtqvmMgNMDCGrpw++Qv7udf/sMpLrgMqnqmKo8oT4
	cnP9N7SI3yj4tHTvegxL/moI8vVRfwMBkpBC7NXr0MV0ppUDm7nUooXbWMJRsH32vCiX
	GjaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=/FARvSst91tgRF591BjnfZ5GXbHOUuqyqx+kbT5pIaw=;
	b=k+l5OPG4I4nqlwhsNLwrplljL+DITCDzJpTrdRRCafmtXuIX8jcmGbH+L00pDFGBmC
	KX7yMsKVaMd1Y8FBBMtWyYWq4WP3PxhQZEMCYy2aud0BNZJUMWVn2PYgTgDgJjSd0Wr1
	SSD51Rl3OBF8CyD3Wjx+/k/+mf9hkCAqBc+VEKpniP0vFpKTNvCWHMhOPyJD6PROtJBp
	nZ17NbUIBcn4QlP+X1ptI8aE5jBRtxLOouQNZ0vMl0HXYFH5YZ01GVfzl4h827Oeq0mt
	UFqDXYL0mZxuBmJiFfTmvnm+mpgmdDvr/V9eAq0cl6cM8IwyZTl9He/4J4Q2Qw8mLR0D
	T9cA==
X-Gm-Message-State: AD7BkJL35UTLY17JUGP8jkXuCwCX/HTg6lYBCL7dVw5Myd/p69FKniyUqHjsbn5p2UgN/Q==
X-Received: by 10.194.216.227 with SMTP id ot3mr2851623wjc.69.1458730562635;
	Wed, 23 Mar 2016 03:56:02 -0700 (PDT)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id
	n66sm2351798wmg.20.2016.03.23.03.56.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 23 Mar 2016 03:56:01 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Wed, 23 Mar 2016 12:00:33 +0100
To: Jens Rehsack <rehsack@gmail.com>
Message-ID: <20160323110033.GB2565@jama>
References: <56F2215B.1000309@mlbassoc.com>
	<CAMKF1souitmv7XGJ-0h3mKK2R7W8ZeRakaT9UgL3jDNzQ7OioA@mail.gmail.com>
	<56F24F4E.70607@mlbassoc.com> <56F2568B.2050105@mlbassoc.com>
	<5FCE3D59-914D-413A-8027-80C0C825ADE8@gmail.com>
	<56F25D38.1020302@mlbassoc.com>
	<BB452600-8B65-4332-AF41-CF834000B14C@gmail.com>
	<D4D8BD30-C54F-4979-AA46-80F4709DBE85@gmail.com>
MIME-Version: 1.0
In-Reply-To: <D4D8BD30-C54F-4979-AA46-80F4709DBE85@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org, Gary Thomas <gary@mlbassoc.com>
Subject: Re: perl 5.22 and 32 bit targets
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
X-List-Received-Date: Wed, 23 Mar 2016 10:56:08 -0000
X-Groupsio-MsgNum: 29148
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="IiVenqGWf+H9Y6IX"
Content-Disposition: inline

--IiVenqGWf+H9Y6IX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 23, 2016 at 10:48:38AM +0100, Jens Rehsack wrote:
>=20
> > Am 23.03.2016 um 10:14 schrieb Jens Rehsack <rehsack@gmail.com>:
> >=20
> >>=20
> >> Am 23.03.2016 um 10:09 schrieb Gary Thomas <gary@mlbassoc.com>:
> >>=20
> >> On 2016-03-23 09:57, Jens Rehsack wrote:
> >>>=20
> >>>> Am 23.03.2016 um 09:40 schrieb Gary Thomas <gary@mlbassoc.com>:
> >>>>=20
> >>>> On 2016-03-23 09:09, Gary Thomas wrote:
> >>>>> On 2016-03-23 06:36, Khem Raj wrote:
> >>>>>> On Tue, Mar 22, 2016 at 9:53 PM, Gary Thomas <gary@mlbassoc.com> w=
rote:
> >>>>>>> I hope this is the correct place to discuss this problem.  It
> >>>>>>> is all about a difference in behavior between a program built
> >>>>>>> using bitbake/OE (only OE-core is needed) vs building the program
> >>>>>>> on the target hardware itself.
> >>>>>>>=20
> >>>>>>> I've been struggling with this problem since perl was upgraded
> >>>>>>> to version 5.22.  I'm working on Amanda (Advanced Maryland Archive
> >>>>>>> tool) which is written primarily in perl and uses swig interfaces
> >>>>>>> to access native C functions.  This code works great when using
> >>>>>>> the previous perl (5.20.x) but fails on all 32 bit targets with
> >>>>>>> perl 5.22
> >>>>>>>=20
> >>>>>>> The interesting thing is that if I build Amanda on my target
> >>>>>>> directly (using SDK tools), it works perfectly even with perl
> >>>>>>> 5.22, so it seems that there is some [subtle] difference between
> >>>>>>> building using bitbake/OE than when built on the self-hosted
> >>>>>>> target.  I've compared the builds and the only thing I could
> >>>>>>> find (from the output of configure) is a difference in sizeof(off=
_t)
> >>>>>>> Sadly, when I tried to adjust this in the OE build, it didn't
> >>>>>>> make any difference, but perhaps I didn't make this change
> >>>>>>> correctly or completely.
> >>>>>>=20
> >>>>>> do you have largefile support turned on ? if you do then it might
> >>>>>> be detecting it wrongly during configure since we cache it to a
> >>>>>> non-largefile case
> >>>>>>=20
> >>>>>> so try to add something like
> >>>>>>=20
> >>>>>> EXTRA_OECONF +=3D "${@bb.utils.contains('DISTRO_FEATURES', 'largef=
ile',
> >>>>>> 'ac_cv_sizeof_off_t=3D8', '', d)}"
> >>>>>>=20
> >>>>>> while building perl or the affected program and see if that helps
> >>>>>=20
> >>>>> Thanks for the idea, but that didn't help.  I also forced some CFLA=
GS
> >>>>> to match, in particular:
> >>>>>  -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=3D64
> >>>>> but this didn't make any difference either.
> >>>>>=20
> >>>>=20
> >>>> On a whim I just tried a little experiment where I took the *.o files
> >>>> from the perl subdirectory (where all the swig shims live) from a wo=
rking
> >>>> (self-hosted) build and moved them to my bitbake/OE build.  I then t=
ouched
> >>>> all the *.o and *.lo files in the perl tree to force a relink. I the=
n ran
> >>>> % bitbake amanda -C compile && bitbake core-image-base
> >>>> to my surprise, amanda works!  So the culprit lies somewhere within =
the
> >>>> swig generated glue.  I've tried comparing these files before and I =
didn't
> >>>> find anything other than cosmetic differences (mostly comments about=
 the
> >>>> name of the file processed, etc).  I've added this subtree to "resul=
ts"
> >>>> in my github layer in case someone can see what might be relevant.
> >>>>=20
> >>>> Any ideas what might be different and make this swig generated glue =
fail?
> >>>> Note that the swig interface files are rebuilt as part of the build =
process
> >>>> and both bitbake/OE and self-hosted are using the same swig version.
> >>>=20
> >>> I digged a bit through your layer (while my up2date scanner over meta=
-cpan
> >>> blocks my build chain :P) and realized that you use perl-5.20.0 as it=
 was
> >>> in poky. A "simple" downgrade would be more reasonable ... if reason =
applys
> >>> here in general :)
> >>=20
> >> In practice, I am doing that.  However, I want to understand why perl =
5.22
> >> breaks things and get it fixed.
> >=20
> > I did a diff between your 5.20 and poky's 5.22 and realize some fixes a=
pplied
> > in 5.22 regarding library path's aren't applied in your copy. Maybe swi=
g relies
> > on wrong library locations and when we know, we can fix.
> >=20
> > So it's maybe not a 5.20 vs. 5.22 problem, it's maybe a weird swig setu=
p problem.
> >=20
> >>> When you fail on cross-build and succeed in target build, try to comp=
are the
> >>> C files and includes (even swig libraries) used.
> >>>=20
> >>> It smells more like a "wrong source" than a "perl problem" (and even =
when
> >>> I never would read any python thread, the same problem would likely o=
ccur
> >>> there, too ^^).
> >>>=20
> >>> Which perl headers are used in your build? To dig down, more logs wou=
ld
> >>> be reasonable ...
> >>=20
> >> Everything comes from the same sources, same revisions, etc, as I'm us=
ing
> >> either a bitbake/OE build or the embedded (self-hosted) version from t=
he
> >> same build plus SDK tools.
> >=20
> > And your SDK does not include any host tools? Did you prove the interme=
diate
> > amanda build files (eg. generated by SWIG) for relicts from wrong sourc=
e?
> > Did you check the logs which include directories had been used?
>=20
> I give it a quick shot and got:
>=20
> ../../arm-poky-linux-gnueabi-libtool  --tag=3DCC   --mode=3Dcompile arm-p=
oky-linux-gnueabi-gcc  -march=3Darmv7-a -marm  -mthumb-interwork -mfloat-ab=
i=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a9 --sysroot=3D/homes/sno/fsl-release=
-bsp/ornithologen-kann-man-mit-voegeln-eine-freude-machen/tmp/sysroots/curi=
e -DHAVE_CONFIG_H -I. -I../../config -I../../common-src -I../../common-src =
-I../../xfer-src -I../../gnulib -I../../ndmp-src -I/homes/sno/fsl-release-b=
sp/ornithologen-kann-man-mit-voegeln-eine-freude-machen/tmp/sysroots/x86_64=
-linux/usr/lib/perl-native/perl/5.22.1/CORE   -fno-strict-aliasing -D_GNU_S=
OURCE -pthread -I/homes/sno/fsl-release-bsp/ornithologen-kann-man-mit-voege=
ln-eine-freude-machen/tmp/sysroots/curie/usr/include/glib-2.0 -I/homes/sno/=
fsl-release-bsp/ornithologen-kann-man-mit-voegeln-eine-freude-machen/tmp/sy=
sroots/curie/usr/lib/glib-2.0/include -DSWIG  -O2 -pipe -g -feliminate-unus=
ed-debug-types -fipa-pta -ftree-partial-pre -ftree-loop-distribution -ftree=
-loop-distribute-patterns -fgcse-after-reload -fgcse-sm -fgcse-las  -fno-st=
rict-aliasing  -c -o xferwrap.lo xferwrap.c
>=20
> Do you see the "-I/homes/sno/fsl-release-bsp/ornithologen-kann-man-mit-vo=
egeln-eine-freude-machen/tmp/sysroots/x86_64-linux/usr/lib/perl-native/perl=
/5.22.1/CORE" ?
>=20
> Any further blames of perl-5.22? :)

I blame birds in PATH (for everything)
http://edition.cnn.com/2016/03/04/us/bird-poop-nuclear-power-shutdown/

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--IiVenqGWf+H9Y6IX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlbyd1AACgkQN1Ujt2V2gBw59wCbBXkTOrl3RIQDePLRHf6Jpc7H
0BQAmgOZYHy2FormQnr7E5lHjQIwMWLd
=F8x4
-----END PGP SIGNATURE-----

--IiVenqGWf+H9Y6IX--
