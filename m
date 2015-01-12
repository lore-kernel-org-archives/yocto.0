Return-Path: <Matthias.Heise@atlas-elektronik.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 796F0E007BA; Mon, 12 Jan 2015 05:28:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [194.156.172.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail96.atlas.de (mail96.atlas.de [194.156.172.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15DB5E003E3
	for <yocto@yoctoproject.org>; Mon, 12 Jan 2015 05:28:17 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail96.atlas.de (Postfix) with ESMTP id 1E05810152;
	Mon, 12 Jan 2015 14:28:16 +0100 (CET)
X-Virus-Scanned: amavisd-new at mail96.atlas.de
Received: from mail96.atlas.de ([127.0.0.1])
	by localhost (mail96.atlas.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YC6bNgph5zte; Mon, 12 Jan 2015 14:28:05 +0100 (CET)
Received: from mgsrv01.atlas.de (mail01.atlas.mailrelays.atlas.de
	[10.200.101.16]) by mail96.atlas.de (Postfix) with ESMTP;
	Mon, 12 Jan 2015 14:28:04 +0100 (CET)
Received: from MSSRVS3.atlas.de (mssrvs3.atlas.de [10.200.101.73])
	by mgsrv01.atlas.de (Postfix) with ESMTP id 32CF627193;
	Mon, 12 Jan 2015 14:28:04 +0100 (CET)
Received: from MSSRVS5.atlas.de
	([fe80:0000:0000:0000:cd6c:87f4:14.12.253.152]) by MSSRVS3.atlas.de
	([10.200.101.73]) with mapi; Mon, 12 Jan 2015 14:28:03 +0100
From: <Matthias.Heise@atlas-elektronik.com>
To: <anders@chargestorm.se>
Date: Mon, 12 Jan 2015 14:28:04 +0100
Thread-Topic: [yocto] can't pull any sources anymore
Thread-Index: AdAuaDl5acR3BKb4Qeeap47AsxcvyQAAkoIw
Message-ID: <4009F04F5925CD4C95FBD9BE756381FE02929D60BD@MSSRVS5.atlas.de>
References: <4009F04F5925CD4C95FBD9BE756381FE02929D60BA@MSSRVS5.atlas.de>
	<54AFFCF2.5020501@linux.intel.com>
	<4009F04F5925CD4C95FBD9BE756381FE02929D60BB@MSSRVS5.atlas.de>
	<20150112130335.GB7555@ad.chargestorm.se>
In-Reply-To: <20150112130335.GB7555@ad.chargestorm.se>
Accept-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: de-DE
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: can't pull any sources anymore
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
X-List-Received-Date: Mon, 12 Jan 2015 13:28:24 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Anders,

yes, in my git config I replace git:// with https:// I'm forced to do so as=
 git doesn't go through the company network. If I change the url in the man=
ifest.xml to=20
https://git.yoctoproject.org/git/poky/ it works on that part but I didn't f=
ind out yet how the other links should look like for https:// . So the proc=
ess breaks a little later again. I'm trying to get git cleared here but don=
't know how the chances are. Why must the urls be different for git and htt=
ps ? ... ;-)
thanks,
Mat

> -----Urspr=FCngliche Nachricht-----
> Von: Anders Darander [mailto:anders@chargestorm.se]
> Gesendet: Montag, 12. Januar 2015 14:04
> An: Heise, Matthias
> Cc: sgw@linux.intel.com; yocto@yoctoproject.org
> Betreff: Re: [yocto] can't pull any sources anymore
>=20
>=20
> * Matthias.Heise@atlas-elektronik.com <Matthias.Heise@atlas-
> elektronik.com> [150112 08:22]:
> > thanks for your reply, I'm running the "repo init" command as in many
> tutorials, this is the line :
>=20
> > repo init -u https://github.com/Freescale/fsl-community-bsp-platform
> > -b dizzy
>=20
> I've just tried to replicate your steps, and everything works OK.
>=20
> > after the init I find following in the manifest.xml :
>=20
> > <?xml version=3D"1.0" encoding=3D"UTF-8"?> <manifest>
> >   <default sync-j=3D"4" revision=3D"master"/>
> >   <remote fetch=3D"git://git.yoctoproject.org" name=3D"yocto"/>
>=20
> Look here, git://git.yoctoproject.org, which should be OK.
>=20
> ...SNIP...
> > </manifest>
>=20
>=20
>=20
> > So you can see it is git.yoctoproject.org as well as others.
>=20
> > When running repo sync which as I understand it actually pulls the sour=
ces I
> get :
>=20
>=20
>=20
> > Fetching project Documentation
>=20
> > Fetching project poky
>=20
> > Fetching project repo
>=20
> > Fetching project meta-fsl-arm-extra
>=20
> > fatal: Invalid gitfile format:
> > /home/theuser/fsl-community-
> bsp_NEWTEST/.repo/repo/.git/clone.bundle
>=20
> > fatal: The remote end hung up unexpectedly
>=20
> > Fetching projects:  12% (1/8)  Fetching project fsl-community-bsp-base
>=20
> > Fetching projects:  25% (2/8)  Fetching project meta-fsl-arm
>=20
> > Fetching projects:  37% (3/8)  Fetching project meta-openembedded
>=20
> > Fetching projects:  50% (4/8)  Fetching project meta-fsl-demos
>=20
> > error: Failed connect to git.openembedded.org:443; Connection refused
> > while accessing
> > https://git.openembedded.org/meta-openembedded/info/refs
>=20
> > fatal: HTTP request failed
>=20
> > Fetching projects:  62% (5/8)  fatal:
> https://git.yoctoproject.org/poky/info/refs not found: did you run git
> update-server-info on the server?
>=20
> Look here, https://git.yoctoproject.org/poky... See that the protocol has
> been changed from git to https. Do you have any rules set up that in your=
 git-
> configuration that rewrites URLs? The https:// URL should look like
> https://git.yoctoproject.org/git/poky/...
>=20
> When `repo sync` works for me, I'm still getting the git:// URLs.
>=20
> Cheers,
> Anders
>=20
> --
> Anders Darander
> ChargeStorm AB / eStorm AB

