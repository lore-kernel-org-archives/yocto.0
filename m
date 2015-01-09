Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EE61E00828; Fri,  9 Jan 2015 09:34:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E408EE0070B
	for <yocto@yoctoproject.org>; Fri,  9 Jan 2015 09:34:30 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 09 Jan 2015 09:31:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,691,1406617200"; d="scan'208";a="510001627"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.3.186])
	by orsmga003.jf.intel.com with ESMTP; 09 Jan 2015 09:28:35 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Fri, 09 Jan 2015 17:34:26 +0000
Message-ID: <1504189.z9eEVMXmIC@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.7-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <alpine.LFD.2.11.1501091212080.30702@localhost>
References: <alpine.LFD.2.11.1501091212080.30702@localhost>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Scott Rifenbark <srifenbark@gmail.com>
Subject: Re: admittedly simple questions about DISTRO_PN_ALIAS
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
X-List-Received-Date: Fri, 09 Jan 2015 17:34:34 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Robert,

On Friday 09 January 2015 12:19:32 Robert P. J. Day wrote:
> reading dev manual here:
>=20
> http://www.yoctoproject.org/docs/1.7/dev-manual/dev-manual.html#using=
poky-co
> nfiguring-DISTRO_PN_ALIAS
>=20
> and first silly question -- what is the *purpose* of that variable? a=
s
> in, what effect will it have on the eventual image? what difference
> will it make that, say, in fedora, a recipe would produce a package
> with a slightly different name? that section doesn't really explain
> that, as far as i can tell.
>=20
>   next, i can see the collection of those settings in the file
> meta-yocto/conf/distro/include/distro_alias.inc, which has some odd
> lines. for example:
>=20
> DISTRO_PN_ALIAS_pn-blktool =3D "Debian=3Dblktool Mandriva=3Dblktool"
>=20
> what's the value of defining an alleged alias that simply has the sam=
e
> name? what is happening here?
>=20
>   oh, and there's this amusing example:
>=20
> DISTRO_PN_ALIAS_pn-bjam =3D "OpenSuSE=3Dboost-jam Debina=3Dbjam"
>                                               ^^^^^^
>=20
> but since the recipe name is the *same*, i'm guessing that doesn't
> cause a problem.
>=20
>   finally, the dev manual doesn't explain the meaning of lines like:
>=20
> DISTRO_PN_ALIAS_pn-adt-installer =3D "Intel"
> DISTRO_PN_ALIAS_pn-alsa-state =3D "OE-Core"
> DISTRO_PN_ALIAS_pn-bdwgc =3D "OSPDT"
>=20
>   in short, i can appreciate the *concept* of what might be happening=

> in that short section, while still having no idea what value it has o=
r
> how a developer might use it.

I'm not entirely sure how that section came to be written on its own, b=
ecause=20
it isn't at all useful and should probably be removed to save people=20=

confusion. DISTRO_PN_ALIAS is related to the mostly undocumented=20
distrodata.bbclass that is supposed to help with managing recipe update=
s; I=20
think the idea was to make a comparison with packages available in main=
stream=20
Linux distros but what it actually does for you in practice based on th=
e code=20
I can find doesn't seem to be very much.=20

FYI, the reason distrodata has remained mostly undocumented is that we'=
ve had=20
a plan to try to refactor and improve it for several years now, but it =
hasn't=20
been as high a priority as we would have liked. There has been some ren=
ewed=20
activity lately however - An=EDbal Lim=F3n is working on the Recipe Rep=
orting=20
Service to replace what is up at packages.yoctoproject.org, and it shou=
ld make=20
it easier for people whose job it is to maintain recipes to track the c=
urrent=20
status with respect to upstream releases. It's being built on top of th=
e=20
OpenEmbedded Layer Index application.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

