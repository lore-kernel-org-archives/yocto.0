Return-Path: <jfabernathy@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA0F5E00894; Mon, 26 Jan 2015 17:29:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jfabernathy[at]outlook.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.55.116.17 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from BLU004-OMC1S6.hotmail.com (blu004-omc1s6.hotmail.com
	[65.55.116.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63AB9E0083A
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 17:29:36 -0800 (PST)
Received: from BLU436-SMTP186 ([65.55.116.7]) by BLU004-OMC1S6.hotmail.com
	over TLS secured channel with Microsoft SMTPSVC(7.5.7601.22751);
	Mon, 26 Jan 2015 17:29:36 -0800
X-TMN: [DbZX6D95ITrGPdJmWXXweqm+6D9cNgnz]
X-Originating-Email: [jfabernathy@outlook.com]
Message-ID: <BLU436-SMTP186B04872C0CE483AF406BDAE320@phx.gbl>
MIME-Version: 1.0 (Mac OS X Mail 8.1 \(1993\))
From: James Abernathy <jfabernathy@outlook.com>
In-Reply-To: <4908306.bUS88zCuvA@peggleto-mobl5.ger.corp.intel.com>
Date: Mon, 26 Jan 2015 20:29:33 -0500
References: <BAY169-W3CF94A018FE9CEDCFDA90AE360@phx.gbl>
	<7B6FE55CD594D7478CED8A39DF3BFC0A5E73FDA7@UT40SVCWEM001.atk.com>
	<BAY169-W5745C4E1B4E3F2071FB66AAE350@phx.gbl>
	<4908306.bUS88zCuvA@peggleto-mobl5.ger.corp.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1993)
X-OriginalArrivalTime: 27 Jan 2015 01:29:34.0606 (UTC)
	FILETIME=[B4FACAE0:01D039D0]
Cc: yocto@yoctoproject.org, Gary Thomas <gary@mlbassoc.com>
Subject: Re: adding all the pieces of WiFi to core-image-minimal
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
X-List-Received-Date: Tue, 27 Jan 2015 01:29:47 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Okay,  here=E2=80=99s the answer for me.  It should never have been =
core-image-minimal.  I just view that as not core-image-sato, meaning no =
gui.

If you take standard dizzy and change machine to nuc, then bitbake =
core-image-base, you get all the wifi, wpa-supplicant that you need.

So the trivial answer was that core-image-base is the console, CLI =
version I needed to start with all along.

Thanks for all the help.

Jim A

> On Jan 26, 2015, at 6:22 PM, Paul Eggleton =
<paul.eggleton@linux.intel.com> wrote:
>=20
> On Monday 26 January 2015 16:37:37 Jim Abernathy wrote:
>>> From: Thomas.Moore2@ATK.COM
>>> To: jfabernathy@outlook.com
>>> CC: opensource@keylevel.com; yocto@yoctoproject.org; =
gary@mlbassoc.com
>>> Subject: RE: [yocto] adding all the pieces of WiFi to =
core-image-minimal
>>> Date: Mon, 26 Jan 2015 21:04:54 +0000
>>>=20
>>> For now, I'd just get everything working with the local.conf:
>>>=20
>>> DISTRO_FEATURES +=3D "wifi"
>>>=20
>>> bitbake core-image-base
>>>=20
>>> Ultimately, you may want to make a custom machine and distro config =
and
>>> incorporate all of the things you've specified in local.conf in =
those
>>> configs. For example, I have a system that's an intel-based =
single-board
>>> computer with several expansion cards. I've created a machine
>>> configuration to define the basic hardware components (features, =
drivers,
>>> etc). I've also created a custom distro because we prefer system =
over
>>> systemv and to include some other non-machine specific packages. =
Finally,
>>> I've created a custom image that includes some other extras.
>>>=20
>>> The power of local.conf is nice, but it's a little tricky =
transitioning
>>> from that to more of a BSP approach like I described above because =
most
>>> people just say to add it to your local.conf, but that's not really =
how
>>> it should be done at the end. Think global variables vs classes.
>>>=20
>>> P.S. Never edit anything in the poky folder. If you want to modify =
an
>>> existing recipe, create a new layer with a bbappend and modify away.
>>>=20
>>> Thomas
>>=20
>> I tried just adding DISTRO_FEATURES +=3D "wifi" to the local.conf and
>> bitbaking core-image-base, but I got a lot of errors:
>>=20
>> NOTE: Resolving any missing task queue dependencies
>> ERROR: Nothing PROVIDES 'glibc'
>> ERROR: glibc was skipped: missing required distro feature 'ipv4' (not =
in
>> DISTRO_FEATURES) ERROR: Required build target 'core-image-base' has =
no
>> buildable providers. Missing or unbuildable dependency chain was:
>=20
> You're getting this error because you're actually replacing the value =
with=20
> "wifi" not adding it, because the default value is actually set =
*after*=20
> local.conf is parsed using ?=3D, so having set a value in local.conf, =
it's=20
> already set and thus ?=3D has no effect. Then we get to parsing the =
glibc recipe=20
> and that immediately fails because it states that all features in=20
> DISTRO_FEATURES_LIBC are required, and you've removed those. (As a =
side note I=20
> really dislike how this latter bit has been implemented, but at least =
it=20
> breaks early rather than what used to happen where it would get up to=20=

> compiling glibc and then fail). The correct way to add to =
DISTRO_FEATURES in=20
> local.conf would be to use DISTRO_FEATURES_append =3D " ..." (and =
don't forget=20
> the leading space in the value).
>=20
> However, that said, I'd guess that if your configuration is the =
default poky or=20
> reasonably close to it, DISTRO_FEATURES already contains "wifi", so =
there=20
> shouldn't even be a need to add it; particularly as you've already =
suggested=20
> wifi was working with core-image-sato.
>=20
> Cheers,
> Paul
>=20
> --=20
>=20
> Paul Eggleton
> Intel Open Source Technology Centre


