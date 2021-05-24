Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web08.164.1621884474694059344
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 May 2021 12:27:55 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.195, mailfrom: foss@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 937A960003;
	Mon, 24 May 2021 19:27:52 +0000 (UTC)
Date: Mon, 24 May 2021 19:27:49 +0000
From: "Quentin Schulz" <foss@0leil.net>
To: yocto@lists.yoctoproject.org, Zoran <zoran.stojsavljevic@gmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
 Scott Ellis <scott@jumpnowtek.com>
Subject: Re: [yocto] ERROR: ParseError at .../bbb-yocto-gatesgarth/meta-bbb/images/console-image.bb:4: Could not include required file images/basic-dev-image.bb
In-Reply-To: <CAGAf8LyCBxcYmc9B+LjFuR4XJ2gJb27f68_4yrBcbRW4gFtnAQ@mail.gmail.com>
References: <CAGAf8LzBFh2PrDYN1wyZGZ9==uAEk+BfNxUOaRGFBJsy6TniUw@mail.gmail.com> <B870330F-3B69-4C5C-B077-ECCBA0460E13@0leil.net> <CAGAf8Lx_1NHRNrgF5ou49HSyLokJR85rRYpNdgv-hepqQzEehw@mail.gmail.com> <CAGAf8LyCBxcYmc9B+LjFuR4XJ2gJb27f68_4yrBcbRW4gFtnAQ@mail.gmail.com>
Message-ID: <637FB939-FDB2-4722-870C-3D77FB857AE3@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable



On May 24, 2021 2:13:57 PM UTC, Zoran <zoran=2Estojsavljevic@gmail=2Ecom> =
wrote:
>Or, maybe, now the DHCP is included in the releases by default?
>
>Thank you,
>Zoran
>_______
>
>On Mon, May 24, 2021 at 4:09 PM Zoran Stojsavljevic
><zoran=2Estojsavljevic@gmail=2Ecom> wrote:
>>
>> Hello Quentin,
>>
>> Thank you for finding the bug=2E It was in front of my eyes (I print al=
l
>> the layers at the end of setup, but I missed to compare bb-layers from
>> dunfell with bb-layers from gatesgarth)=2E
>>
>> I should do better=2E With regards to testing thinking=2E ;-)
>> _______
>>
>> Now, there are other bugs (I should say, new features introduced)=2E
>>
>> Loading cache: 100%
>> |######################################################################=
##########################|
>> Time: 0:00:00
>> Loaded 3533 entries from dependency cache=2E
>> Parsing recipes: 100%
>> |######################################################################=
########################|
>> Time: 0:00:00
>> Parsing of 2311 =2Ebb files complete (2309 cached, 2 parsed)=2E 3535
>> targets, 121 skipped, 1 masked, 0 errors=2E
>> NOTE: Resolving any missing task queue dependencies
>> ERROR: Nothing RPROVIDES 'dhcp-libs' (but
>> /home/vuser/projects_yocto/bbb-yocto-gatesgarth/poky/meta/recipes-core/=
images/core-image-minimal=2Ebb
>> RDEPENDS on or otherwise requires it)
>> NOTE: Runtime target 'dhcp-libs' is unbuildable, removing=2E=2E=2E
>> Missing or unbuildable dependency chain was: ['dhcp-libs']
>> ERROR: Nothing RPROVIDES 'dhcp-server' (but
>> /home/vuser/projects_yocto/bbb-yocto-gatesgarth/poky/meta/recipes-core/=
images/core-image-minimal=2Ebb
>> RDEPENDS on or otherwise requires it)
>> NOTE: Runtime target 'dhcp-server' is unbuildable, removing=2E=2E=2E
>> Missing or unbuildable dependency chain was: ['dhcp-server']
>> ERROR: Nothing RPROVIDES 'dhcp-server-config' (but
>> /home/vuser/projects_yocto/bbb-yocto-gatesgarth/poky/meta/recipes-core/=
images/core-image-minimal=2Ebb
>> RDEPENDS on or otherwise requires it)
>> NOTE: Runtime target 'dhcp-server-config' is unbuildable, removing=2E=
=2E=2E
>> Missing or unbuildable dependency chain was: ['dhcp-server-config']
>> ERROR: Nothing RPROVIDES 'dhcp-client' (but
>> /home/vuser/projects_yocto/bbb-yocto-gatesgarth/poky/meta/recipes-core/=
images/core-image-minimal=2Ebb
>> RDEPENDS on or otherwise requires it)
>> NOTE: Runtime target 'dhcp-client' is unbuildable, removing=2E=2E=2E
>> Missing or unbuildable dependency chain was: ['dhcp-client']
>> ERROR: Nothing RPROVIDES 'dhcp-relay' (but
>> /home/vuser/projects_yocto/bbb-yocto-gatesgarth/poky/meta/recipes-core/=
images/core-image-minimal=2Ebb
>> RDEPENDS on or otherwise requires it)
>> NOTE: Runtime target 'dhcp-relay' is unbuildable, removing=2E=2E=2E
>> Missing or unbuildable dependency chain was: ['dhcp-relay']
>> ERROR: Nothing RPROVIDES 'dhcp-omshell' (but
>> /home/vuser/projects_yocto/bbb-yocto-gatesgarth/poky/meta/recipes-core/=
images/core-image-minimal=2Ebb
>> RDEPENDS on or otherwise requires it)
>> NOTE: Runtime target 'dhcp-omshell' is unbuildable, removing=2E=2E=2E
>> Missing or unbuildable dependency chain was: ['dhcp-omshell']
>>
>> Seems that this line in local=2Econf got severely changed, or most
>> likely the DHCP package version/handling got changed:
>>
>> CORE_IMAGE_EXTRA_INSTALL_append =3D "openssh dhcp-libs dhcp-server
>> dhcp-server-config dhcp-client dhcp-relay dhcp-omshell cmake
>> libsocketcan nfs-utils rt-tests strace procps
>> packagegroup-core-buildessential "
>>
>> The question is: what should I include in the
>> CORE_IMAGE_EXTRA_INSTALL_append for the DHCP package for gatesgarth
>> and later releases???
>>

If I remember correctly, dhcp-server has been replaced by kea, check on th=
at side maybe=2E Read the migration notes, pretty sure the kea thing is lis=
ted there=2E

Cheers,
Quentin

>> Thank you,
>> Zoran
>> _______
>>
>> On Mon, May 24, 2021 at 2:24 PM Quentin Schulz <foss@0leil=2Enet> wrote=
:
>> >
>> > Hi Zoran,
>> >
>> > On May 24, 2021 8:27:58 AM UTC, Zoran <zoran=2Estojsavljevic@gmail=2E=
com> wrote:
>> > >Hello again to YOCTO Folks,
>> > >
>> > >Here is another blunder I ran into while fixing a yocto-setup=2Esh s=
cript:
>> > >https://github=2Ecom/ZoranStojsavljevic/bbb-yocto/blob/master/yocto-=
setup=2Esh
>> > >
>> > >While executing $  =2E =2E/yocto-setup=2Esh dunfell, everything ran =
smoothly=2E
>> > >
>> > >I did the same routine with the $  =2E =2E/yocto-setup=2Esh gatesgar=
th, and
>> > >approximately after:
>> > >Parsing recipes: 9% |##########
>> > >
>> > >The following message pops up!
>> > >Loading cache: 100% |
>> > >                                                | ETA:  --:--:--
>> > >Loaded 0 entries from dependency cache=2E
>> > >ERROR: ParseError at
>> > >/home/vuser/projects_yocto/bbb-yocto-gatesgarth/meta-bbb/images/cons=
ole-image=2Ebb:4:
>> > >Could not include required file images/basic-dev-image=2Ebb
>> > >
>> > >Summary: There was 1 WARNING message shown=2E
>> > >Summary: There was 1 ERROR message shown, returning a non-zero exit =
code=2E
>> > >
>> >
>> > The layer is not included=2E Check in your bblayers=2Econf=2E see htt=
ps://github=2Ecom/ZoranStojsavljevic/bbb-yocto/blob/a6e8e8ce491705816d02df5=
8fa0ef9378b18ef83/yocto-setup=2Esh#L114 where you are missing the gatesgart=
h check=2E
>> >
>> > Cheers,
>> > Quentin
>> >
>> >
>> > >If you peek into the following github repos:
>> > >https://github=2Ecom/jumpnow/meta-bbb
>> > >https://github=2Ecom/jumpnow/meta-jumpnow
>> > >
>> > >You'll see that in later  images/basic-dev-image=2Ebb does exist, as
>> > >well as in the dunfell branch:
>> > >https://github=2Ecom/jumpnow/meta-jumpnow/blob/zeus/images/basic-dev=
-image=2Ebb
>> > >
>> > >As well as in gatesgarth branch:
>> > >https://github=2Ecom/jumpnow/meta-jumpnow/blob/gatesgarth/images/bas=
ic-dev-image=2Ebb
>> > >
>> > >What I see upon the logic, something changes in poky/ setup, while
>> > >transitioning from dunfell to gatesgarth=2E
>> > >
>> > >I also have created an issue in bbb-yocto repo:
>> > >https://github=2Ecom/ZoranStojsavljevic/bbb-yocto/issues/3
>> > >
>> > >I would appreciate any ideas or hints=2E=2E=2E  Maybe some changes r=
equired
>> > >in local=2Econf ?
>> > >
>> > >You can all try it yourselves, and see the same!
>> > >
>> > >Thank you,
>> > >Zoran
>> > >_______
>> >
>> > --
>> > Sent from my Android device with K-9 Mail=2E Please excuse my brevity=
=2E

--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E
