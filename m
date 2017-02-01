Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C09A6E00942; Wed,  1 Feb 2017 02:53:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [212.227.126.130 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [212.227.126.130 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64F99E008F3
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2017 02:53:20 -0800 (PST)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de (mreue002
	[212.227.15.163]) with ESMTPSA (Nemesis) id 0MHfXI-1ccAK31bxs-003OyQ
	for <yocto@yoctoproject.org>; Wed, 01 Feb 2017 11:53:19 +0100
From: <colin.helliwell@ln-systems.com>
To: <yocto@yoctoproject.org>
References: <04fb01d27c77$613d3780$23b7a680$@ln-systems.com>
	<1485946097.20333.193.camel@intel.com>
In-Reply-To: <1485946097.20333.193.camel@intel.com>
Date: Wed, 1 Feb 2017 10:53:18 -0000
Organization: LN Systems Limited
Message-ID: <053a01d27c79$662b81a0$328284e0$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQE1dKOYPhDHL2xmqFUQbCUO8wPpQAJk1Ml9onrikhA=
X-Provags-ID: V03:K0:gvDCstHeUAh09uYg1nWc6HkROCKSSGRrJn7We1yeNwJvjAeHnrS
	fY1NlGfpjEsrUbB+JcU2o75pajS1kN0y6KD2n5p8ZMavCTEp5jK0qYKd0VrHwIl98wvYPz0
	f382fCPaGFpZI5jTcLTLbGXruOL/lmilUVxD+pqRuh9+Cw47nMGtbJT/3F5g6xbQa+gTnHo
	AWiM65AixOlz4gR7Mt+/Q==
X-UI-Out-Filterresults: notjunk:1;V01:K0:cAXUzrlYZiI=:hoMniz5uAAVneqNbORxdCJ
	deTf0hjKIcJO9Z559XylcPv8Bf1NDHbY9ixfu697W2cEb2ZeZ1UnLNsR7F1TAQ/6e5vReu6Yd
	j9Gh3maxNK+i0ki6ImLybss/7hGx8CUOv1pUx2SPiUWGoBD+UHJveaYKZjCE5wgGqxSZhhryg
	U58RKXVK5eEnARaXBXwmr2aKSTUzB+8dcvvXpVV8quueEaPTRcew+95DNWsdbbaVrp7l4oHv6
	8ei218idfiDluabLI5w3QJPi2OGS5FX2LNrHsTQLnIk27nKXgDN2bHnhgaFhwAy9bmcnO1wmT
	eokUY1JTiAictEPbsJPcSiWf8+c9pDrngFNxLTkKdKe2gVAeC4F/GYMZypE0okhOJWozfyFKs
	QYofVWcpCuTnwvU012V7u17+AznOCTdbBuTU4F9M2pu6YVDYu93CHxYH++i5aydtlZFh4KIii
	ZLryBYNd//d8oA4AnVXTu+MY3FcgGXGQ38e5gTZ7Ku/nGCFB3pOfghd5SgofhZmiXqefH8EVj
	HeV/sp4CN2zCJSsTyoLF73t89gyNXt65KhfXXxXJKAwTbaXHwpFBtPbzKjz+hEBRICwcv+A51
	7hFWdSQkH7c1IV2/GKjm36Z3nnlEpk9oHF/w7XubmJSDjzzqtvuFCHXKQCtxSoPmYc4aqPLlF
	nR3wxI4A0IMF5dOo+anIKHCq3Hg166LpGNpA1sSjnQHXvFk1bcyhiBjTXPH3NVL3ZDPv6tkcf
	QgPc7fzKwHIU07Xo
Subject: Re: DEPENDS only half working
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: colin.helliwell@ln-systems.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 01 Feb 2017 10:53:27 -0000
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-gb

Fantastic - thanks. (Thought it must have been something simple!)

-----Original Message-----
From: Patrick Ohly [mailto:patrick.ohly@intel.com]=20
Sent: 01 February 2017 10:48
To: colin.helliwell@ln-systems.com
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] DEPENDS only half working

On Wed, 2017-02-01 at 10:38 +0000, colin.helliwell@ln-systems.com wrote:
> I=E2=80=99ve got an odd problem with a pair of recipes:
>=20
> App =E2=80=98bar=E2=80=99 uses =E2=80=98libfoo=E2=80=99, so =
I=E2=80=99ve set a DEPENDS in bar.bb =E2=80=93 I can see=20
> this is being half picked up, because =E2=80=98bitbake bar=E2=80=99 =
shows both builds=20
> being started. However bar isn=E2=80=99t waiting on libfoo =E2=80=93 =
bar tries to=20
> compile before libfoo has even finished configuring, let alone=20
> compiled and installed it=E2=80=99s header (foo_lib.h) into sysroot.
>=20
> I think the recipes are probably otherwise correct - if I =
=E2=80=98bitbake=20
> libfoo=E2=80=99 then =E2=80=98bitbake bar=E2=80=99 then all works.
>=20
> I=E2=80=99ve looked at some simple lib recipes within poky (e.g.
> libwebp_0.4.3.bb / webkitgtk_2.8.5.bb), and can=E2=80=99t spot =
anything=20
> wrong/missing. Not sure if libfoo should have any =
=E2=80=98install=E2=80=99 or similar=20
> sections, or any FILES_ settings, but I was [naively=E2=80=A6?] hoping =
that=20
> the inherited classes will be sorting out all that generic kinda=20
> stuff.

[...]

> DEPENDS_${PN} =3D "libfoo"
  ^^^^^^^^^^^^^
This needs to be just "DEPENDS". DEPENDS sets the dependencies for the =
compilation of the entire recipe, whereas...

> RDEPENDS_${PN} =3D "libfoo"

... RDEPENDS is for runtime dependencies specific packages and thus has =
_<package name> as suffix ($PN =3D bar in this case).

libfoo gets compiled because of this entry, but because it is a runtime =
dependency, compilation of bar doesn't wait for libfoo's completion.

--
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although I =
am an employee of Intel, the statements I make here in no way represent =
Intel's position on the issue, nor am I authorized to speak on behalf of =
Intel on this matter.





