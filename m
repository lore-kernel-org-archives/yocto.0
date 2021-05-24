Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
 by mx.groups.io with SMTP id smtpd.web11.22476.1621859099896123797
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 May 2021 05:25:00 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.199, mailfrom: foss@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id A2921FF805;
	Mon, 24 May 2021 12:24:47 +0000 (UTC)
Date: Mon, 24 May 2021 12:24:44 +0000
From: "Quentin Schulz" <foss@0leil.net>
To: yocto@lists.yoctoproject.org, Zoran <zoran.stojsavljevic@gmail.com>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
CC: Scott Ellis <scott@jumpnowtek.com>
Subject: Re: [yocto] ERROR: ParseError at .../bbb-yocto-gatesgarth/meta-bbb/images/console-image.bb:4: Could not include required file images/basic-dev-image.bb
In-Reply-To: <CAGAf8LzBFh2PrDYN1wyZGZ9==uAEk+BfNxUOaRGFBJsy6TniUw@mail.gmail.com>
References: <CAGAf8LzBFh2PrDYN1wyZGZ9==uAEk+BfNxUOaRGFBJsy6TniUw@mail.gmail.com>
Message-ID: <B870330F-3B69-4C5C-B077-ECCBA0460E13@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Zoran,

On May 24, 2021 8:27:58 AM UTC, Zoran <zoran=2Estojsavljevic@gmail=2Ecom> =
wrote:
>Hello again to YOCTO Folks,
>
>Here is another blunder I ran into while fixing a yocto-setup=2Esh script=
:
>https://github=2Ecom/ZoranStojsavljevic/bbb-yocto/blob/master/yocto-setup=
=2Esh
>
>While executing $  =2E =2E/yocto-setup=2Esh dunfell, everything ran smoot=
hly=2E
>
>I did the same routine with the $  =2E =2E/yocto-setup=2Esh gatesgarth, a=
nd
>approximately after:
>Parsing recipes: 9% |##########
>
>The following message pops up!
>Loading cache: 100% |
>                                                | ETA:  --:--:--
>Loaded 0 entries from dependency cache=2E
>ERROR: ParseError at
>/home/vuser/projects_yocto/bbb-yocto-gatesgarth/meta-bbb/images/console-i=
mage=2Ebb:4:
>Could not include required file images/basic-dev-image=2Ebb
>
>Summary: There was 1 WARNING message shown=2E
>Summary: There was 1 ERROR message shown, returning a non-zero exit code=
=2E
>

The layer is not included=2E Check in your bblayers=2Econf=2E see https://=
github=2Ecom/ZoranStojsavljevic/bbb-yocto/blob/a6e8e8ce491705816d02df58fa0e=
f9378b18ef83/yocto-setup=2Esh#L114 where you are missing the gatesgarth che=
ck=2E

Cheers,
Quentin


>If you peek into the following github repos:
>https://github=2Ecom/jumpnow/meta-bbb
>https://github=2Ecom/jumpnow/meta-jumpnow
>
>You'll see that in later  images/basic-dev-image=2Ebb does exist, as
>well as in the dunfell branch:
>https://github=2Ecom/jumpnow/meta-jumpnow/blob/zeus/images/basic-dev-imag=
e=2Ebb
>
>As well as in gatesgarth branch:
>https://github=2Ecom/jumpnow/meta-jumpnow/blob/gatesgarth/images/basic-de=
v-image=2Ebb
>
>What I see upon the logic, something changes in poky/ setup, while
>transitioning from dunfell to gatesgarth=2E
>
>I also have created an issue in bbb-yocto repo:
>https://github=2Ecom/ZoranStojsavljevic/bbb-yocto/issues/3
>
>I would appreciate any ideas or hints=2E=2E=2E  Maybe some changes requir=
ed
>in local=2Econf ?
>
>You can all try it yourselves, and see the same!
>
>Thank you,
>Zoran
>_______

--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E
