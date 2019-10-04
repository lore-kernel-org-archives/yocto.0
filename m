Return-Path: <jean-marie.lemetayer@savoirfairelinux.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37CE2E00DAE; Fri,  4 Oct 2019 05:37:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [208.88.110.44 listed in list.dnswl.org]
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com
	[208.88.110.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04ACCE00DA8
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2019 05:37:15 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 5B70F9C0261;
	Fri,  4 Oct 2019 08:37:14 -0400 (EDT)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new,
	port 10032)
	with ESMTP id 6sUAomEomXNc; Fri,  4 Oct 2019 08:37:13 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 4443E9C02B2;
	Fri,  4 Oct 2019 08:37:13 -0400 (EDT)
X-Virus-Scanned: amavisd-new at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new,
	port 10026)
	with ESMTP id JLyO7e5a6faC; Fri,  4 Oct 2019 08:37:13 -0400 (EDT)
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com
	[192.168.48.237])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 1D9F79C0261;
	Fri,  4 Oct 2019 08:37:13 -0400 (EDT)
Date: Fri, 4 Oct 2019 08:37:13 -0400 (EDT)
From: Jean-marie Lemetayer <jean-marie.lemetayer@savoirfairelinux.com>
To: Stefan Herbrechtsmeier <stefan@herbrechtsmeier.net>
Message-ID: <967547077.8619660.1570192633081.JavaMail.zimbra@savoirfairelinux.com>
In-Reply-To: <51c5973e-2c1a-f212-f963-9a2b321f480d@herbrechtsmeier.net>
References: <1078346093.8578188.1570117048745.JavaMail.zimbra@savoirfairelinux.com>
	<51c5973e-2c1a-f212-f963-9a2b321f480d@herbrechtsmeier.net>
MIME-Version: 1.0
X-Mailer: Zimbra 8.8.11_GA_3737 (ZimbraWebClient - GC77 (Linux)/8.8.11_GA_3737)
Thread-Topic: duplicate code
Thread-Index: YQSVZra2gKlF2OuSDalXKINYhSVzVg==
Cc: Yocto-mailing-list <yocto@yoctoproject.org>,
	Savoir-faire Linux Rennes <rennes@savoirfairelinux.com>
Subject: Re: [npm] duplicate code
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
X-List-Received-Date: Fri, 04 Oct 2019 12:37:18 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Stefan,

I have recently worked on a yocto project using npm and I have seen some is=
sues. I have solved a few but only for bitbake:
https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3Deecba41822e86b=
69ebdb9cbc8fbfd512ad9a47d7
https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3Da34d0d539e5fdf=
341541fb628652d22289e80512
https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3De90cd2ed61b93e=
e7e290e7e592f1f0242ab5c281
https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3Da35abe31dc2391=
6fd06afdb3a5e22a81ef3df579

As I have more time now, I wanted to continue my work by fixing devtool / r=
ecipetool.

I have also checked the bugzilla for issues that I could fix / that should =
be tested again:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10515
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10760
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11028
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11029
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12534
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13415

I ended up with this todo list:
 - merge the duplicate code between bitbake and recipetool
 - fix the npm package name handling in recipetool
 - fix the npm package version handling in recipetool
 - fix the lockdown.json file generation in recipetool
 - create an example nodejs application to test all these cases
 - update the wiki using this example application:
   https://wiki.yoctoproject.org/wiki/TipsAndTricks/NPM

Finally, in my recent project, we were using angular (https://angular.io) f=
or the front-end. I have planned to add the work done to support angular ap=
plications in yocto (angular.bbclass) and update recipetool to handle them.

Your work sounds very interesting. The good point is that npm-shrinkwrap.js=
on and lockdown.json files (which have generation issues btw) will no longe=
r be required. But projects using npm can have a lot of dependencies (e.g. =
the angular example app have 1053 dependencies). Is recipetool will be hand=
ling the whole recipes creation in one time ?

Is it possible to see your work ? A public fork would be nice. I would glad=
ly help you / test your work / add my fixes if needed.

Best regards,
Jean-Marie Lemetayer

----- Mail original -----
De: "Stefan Herbrechtsmeier" <stefan@herbrechtsmeier.net>
=C3=80: "Yocto-mailing-list" <yocto@yoctoproject.org>
Envoy=C3=A9: Vendredi 4 Octobre 2019 08:53:10
Objet: Re: [yocto] [npm] duplicate code

Hi Jean-Marie,

what work do you plan to do on npm and recipetool?

I have start to rework the complete npm integration to synchronize it=20
with other languages like python. I replace the bitbake npm fetch with=20
the wget fetcher and download the npm tgz files direct. The idea is to=20
handle every package as a separate recipe and move the package=20
dependencies into the recipes. Therefore I parse the package.json and=20
the npm server json to create a recipe.

Regards
   Stefan


Am 03.10.19 um 17:37 schrieb Jean-marie Lemetayer:
> Hi all,
>=20
> I am planning to do some work on npm and recipetool.
>=20
> I have seen that there is some duplicate code between bitbake/lib/bb/fetc=
h2/npm.py and scripts/lib/recipetool/create_npm.py but there is some incons=
istencies.
>=20
> Here is an example, the _parse_view() function which I patched recently h=
as differ:
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/bitbake/lib/bb/fetch=
2/npm.py#n157
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/scripts/lib/recipeto=
ol/create_npm.py#n244
>=20
> I think merging this "npm utility functions" is a good idea. But where ?
>=20
> I think about creating a new file: bitbake/lib/bb/npm_utils.py
>=20
> Or maybe use the existing bitbake/lib/bb/utils.py ?
>=20
> What do you think ?
>=20
>=20
> Jean-Marie LEMETAYER
> Enthusiast embedded systems engineer
> Savoir-faire Linux
>=20

--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

