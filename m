Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA6A8E009BC; Tue, 25 Aug 2015 19:27:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,URIBL_SBL
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.6 URIBL_SBL Contains an URL's NS IP listed in the SBL blocklist
	*      [URIs: khimov.ru]
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95D9EE00708
	for <yocto@yoctoproject.org>; Tue, 25 Aug 2015 19:27:48 -0700 (PDT)
Received: by pacti10 with SMTP id ti10so70672507pac.0
	for <yocto@yoctoproject.org>; Tue, 25 Aug 2015 19:27:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=zEl74dIfHWbrkBBTRjj0io4uw916DCU6bUUnmaiC9Hw=;
	b=nPekUUD0PVwG/HfcFwirUxDuiLwnFgFKDNmvNnXetnforFLk+zRQpV+rPdd01GDWGZ
	7scIIhnjWZs+rSBo0S30EPiJZB2ScygsB+XFxb5lalSX3aNJsl59bJfRgFsyWtH8uhk8
	zggvKIAWKWxiPnGmtT40NIIpSg7XSSyHwv8ArP2SVFGEZlvlZYYE+RLkH5zRFkgmz951
	J2VVEeNj4F5NmFWu0kpm1fAs0O50Rt+1Z8P6qFoCVVkzn0AfxFir+J5i2qzPt+R8W+sK
	0CeCdT8Td4ZnUxlv9J7ERpMwGczatpsIPEXH96s0hx8VmnVQHeKZVaXrRPeMUkFJMkKN
	Owpg==
X-Received: by 10.68.217.102 with SMTP id ox6mr64247635pbc.158.1440556067727; 
	Tue, 25 Aug 2015 19:27:47 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:b134:875b:dd8f:24f7?
	([2601:646:8601:4580:b134:875b:dd8f:24f7])
	by smtp.gmail.com with ESMTPSA id
	pt3sm22584306pbb.38.2015.08.25.19.27.46
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 25 Aug 2015 19:27:46 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Pgp-Agent: GPGMail 2.5.1
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1863425.bIu4nJALq0@bancha.hex>
Date: Tue, 25 Aug 2015 19:27:41 -0700
Message-Id: <CCB8B732-31B3-4BB0-8365-8C39EE59CC1A@gmail.com>
References: <9150AC0D-F129-4100-A3CD-D954AB76E732@gmail.com>
	<1863425.bIu4nJALq0@bancha.hex>
To: Roman Khimov <roman@khimov.ru>
X-Mailer: Apple Mail (2.2104)
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	llvmlinux@lists.linuxfoundation.org,
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>
Subject: Re: [oe] Clang cross compiler with OpenEmbedded
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
X-List-Received-Date: Wed, 26 Aug 2015 02:27:53 -0000
X-Groupsio-MsgNum: 26231
Content-Type: multipart/signed;
	boundary="Apple-Mail=_971D96F2-10DD-4485-A983-164CF6BAC184";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_971D96F2-10DD-4485-A983-164CF6BAC184
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi Roman

> On Aug 25, 2015, at 3:52 AM, Roman Khimov <roman@khimov.ru> wrote:
>=20
> =D0=92 =D0=BF=D0=B8=D1=81=D1=8C=D0=BC=D0=B5 =D0=BE=D1=82 25 =
=D0=B0=D0=B2=D0=B3=D1=83=D1=81=D1=82=D0=B0 2015 01:03:07 =
=D0=BF=D0=BE=D0=BB=D1=8C=D0=B7=D0=BE=D0=B2=D0=B0=D1=82=D0=B5=D0=BB=D1=8C =
Khem Raj =D0=BD=D0=B0=D0=BF=D0=B8=D1=81=D0=B0=D0=BB:
>> We have put together clang as system cross compiler support into
>> OpenEmbedded, here is a writeup on how to use it in your setups.
>>=20
>> http://himvis.com/using-clang-with-openembeddedyocto-project/
>=20
> Do you have any plans to support scan-build analysis?

Yes but its in back burners so patches are welcome! I do use scan-build =
with some native application
projects but thats very simple setup to have.
I think it should be easy enough to add a class to insert the static =
analysis
given we can configure clang as cross compiler,

Right now my priorities are to use subset of arches e.g. x86/arm

1. Fix compile issues for OE-Core, reach to a point where all packages =
can build we have around 40 failing in world builds
2. Start using compiler-rt and libc++ to provide compiler c/c++ runtime
3. Repeat 1 to 2 with musl
4. Repeat 1 to 3 for remaining architectures
5. Start using other tools e.g. lldb, native linker and integrated as =
system wide

So this can take a while.

>=20
> We have had one in Altell but with a gross hack (and even that based =
on OE
> classic) --- we'd built native clang and then used a special task =
between
> configure and compile stages that copied its script (run.do_scanbuild) =
into
> another one, mangled it heavily to override $CC and $CXX, and after =
that ran
> that script under scan-build (with --use-cc and --use-c++ pointing to =
the
> proper GCC toolchain), then reconfigured again for normal build.
>=20
> That worked with some exceptions and allowed us to make static =
analysis of our
> whole build, but it was kludgy and not that efficient. I guess that =
with a
> proper cross-compiling Clang toolchain things could be done way more =
easily
> right at the compile stage.


--Apple-Mail=_971D96F2-10DD-4485-A983-164CF6BAC184
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlXdJCEACgkQuwUzVZGdMxS62wCfU9KIvvmNKS2z0Ve89On0ni43
UfoAn3IbTriZQdhw98WHooV9rStDsgNu
=gdae
-----END PGP SIGNATURE-----

--Apple-Mail=_971D96F2-10DD-4485-A983-164CF6BAC184--
