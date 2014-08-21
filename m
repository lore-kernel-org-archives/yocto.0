Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 229DEE00807; Thu, 21 Aug 2014 01:17:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9779EE004F5
	for <yocto@yoctoproject.org>; Thu, 21 Aug 2014 01:17:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type;
	bh=kYFTQwjvKNSma29FN/bEtbw0HCPzLLq7zO+jStbGp54=; 
	b=o9yiFNZh6dAcw56XHZx3LijOM1gbCCKLE80dnXF3UYnrNP+iYVvumoC/sQfrz+Bq8zfkV6WywdbpWUkuQHg6QSjFLkZAAMFtsCHM7ReoHruORWKlJSDjH491wN/GHLYJw6IJ2g9Gt/qDpbs344FXyPYbuLEHWi3/R+R0lH9UtuE=;
Received: from [109.224.171.0] (port=14575
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.82)
	(envelope-from <opensource@keylevel.com>)
	id 1XKNYL-001Fa9-Cv; Thu, 21 Aug 2014 09:17:03 +0100
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CADkTA4PKUNKFkWrz-BEud-mvNTVLUykLq_M-AMvJJWXOaxZZaA@mail.gmail.com>
Date: Thu, 21 Aug 2014 09:17:02 +0100
Message-Id: <79C4CC9D-34AA-485F-B7A7-F35FD86A3CE3@keylevel.com>
References: <4EAABF91-29AE-4B7D-9FEE-07C87F37197D@keylevel.com>
	<53F40306.2080500@windriver.com>
	<728404FF-F7F0-4371-AF09-D8C73ABA784C@keylevel.com>
	<CADkTA4PKUNKFkWrz-BEud-mvNTVLUykLq_M-AMvJJWXOaxZZaA@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
X-Mailer: Apple Mail (2.1878.6)
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Kernel driver for Turbosight TBS6285 DVB card
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
X-List-Received-Date: Thu, 21 Aug 2014 08:17:23 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On 21 Aug 2014, at 05:08, Bruce Ashfield <bruce.ashfield@gmail.com> =
wrote:

> On Wed, Aug 20, 2014 at 4:11 PM, Chris Tapp <opensource@keylevel.com> =
wrote:
>> Hi Bruce,
>>=20
>> Thanks for the feedback.
>>=20
>> On 20 Aug 2014, at 03:08, Bruce Ashfield =
<bruce.ashfield@windriver.com> wrote:
>>=20
>>> On 2014-08-19, 5:26 PM, Chris Tapp wrote:
>>>> I need to include the kernel driver for the Turbosight TBS6285 DVB =
card in an image.
>>>>=20
>>>> The official bundle at =
http://www.tbsdtv.com/download/document/common/tbs-linux-drivers_v140707.z=
ip includes the drivers and a load of other "stuff" (e.g. a full V4L =
build).
>>>>=20
>>>> LinuxTV.org have the drivers extracted into a .tar.bz2 at (e.g.) =
http://linuxtv.org/downloads/drivers/linux-media-LATEST.tar.bz2, so I =
plan to use this as the download source.
>>=20
>> This bit is wrong - I need to use the .tar.bz within the .zip.
>>=20
>>>>=20
>>>> So far I have a recipe which downloads from this URL and extracts =
the files into the work area and ${WORKAREA}/drivers/media includes a =
Makefile and Kconfig.
>>>>=20
>>>> I've looked at the Yocto documentation, but this doesn't seem to be =
a good match for the "Out of tree" kernel module case.
>>>=20
>>> Hmm. At a glance, I'd say that it does sound like a typical out of
>>> tree module build.
>>=20
>> Ah, ok - to my (untrained) eye the use-case looked completely =
different based on the example.
>>=20
>>> Did you try adopting the meta-skeleton hello-mod recipe and point it
>>> at that source directory ?
>>=20
>> I have now (with the above change). However, it looks as if something =
within the build is referencing the host file system when building.
>>=20
>> I'm building for ValleyIsland 32-bit:
>>=20
>>  1) If I configure the drivers for 32-bit there is a linker error =
complaining that elf 32 and elf 64 aren't compatible (host is 64 bit);
>=20
> Hmm. The target arch should be used for this build. Are you enabling a
> multi lib config
> as well ?

Not that I know of ;-)

The build uses a .version file to specify the kernel. The top makefile =
creates this using 'uname -r' by default. I can run 'make dir DIR=3D"..." =
in do_configure() to specify the path to the yocto kernel files, which =
seems to fix this (after modifying another makefile, which prepends =
"../" to the DIR path).

>  2) Everything appears to build if I target 64-bit, but the installer =
tries to modify /lib/modules/3.2.0-67/..., which is also part of the =
host.
>=20
> Do the Makefile's that come in that archive (I haven't gone to look)
> have a custom
> install rule ? If so, that's likely the problem. If the kernel's build
> system is triggered
> (i.e. the makefile follows the conventions), everything will be
> installed to the proper
> location.

The installer uses DESTDIR to select the installation path - I've not =
worked out how this gets set yet or how I can set it from within my =
recipe.

Is there a trick I can use to get the kernel's build system to manage =
things?

>=20
> Bruce
>=20
>>=20
>> Looks like I need a patch ;-) Any pointers to where I should be =
looking would be appreciated as this isn't my normal area...
>>=20
>> --
>>=20
>> Chris Tapp
>> opensource@keylevel.com
>> www.keylevel.com
>>=20
>>=20
>>=20
>>=20
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20
>=20
> --=20
> "Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end"

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com





