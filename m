Return-Path: <jean-marie.lemetayer@savoirfairelinux.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A0DDE009D4; Mon,  7 Oct 2019 05:16:30 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B280FE007A2
	for <yocto@yoctoproject.org>; Mon,  7 Oct 2019 05:16:28 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 7C09D9C01F2;
	Mon,  7 Oct 2019 08:16:27 -0400 (EDT)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new,
	port 10032)
	with ESMTP id IYI5b5ierokC; Mon,  7 Oct 2019 08:16:26 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 75EA19C01F8;
	Mon,  7 Oct 2019 08:16:26 -0400 (EDT)
X-Virus-Scanned: amavisd-new at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new,
	port 10026)
	with ESMTP id 7dP_ccWTBakD; Mon,  7 Oct 2019 08:16:26 -0400 (EDT)
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com
	[192.168.48.237])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 504279C01F2;
	Mon,  7 Oct 2019 08:16:26 -0400 (EDT)
Date: Mon, 7 Oct 2019 08:16:25 -0400 (EDT)
From: Jean-marie Lemetayer <jean-marie.lemetayer@savoirfairelinux.com>
To: Stefan Herbrechtsmeier <stefan@herbrechtsmeier.net>
Message-ID: <302244287.8695117.1570450585150.JavaMail.zimbra@savoirfairelinux.com>
In-Reply-To: <3faffc0c-a573-0b8b-5915-2619262e7b6e@herbrechtsmeier.net>
References: <1078346093.8578188.1570117048745.JavaMail.zimbra@savoirfairelinux.com>
	<51c5973e-2c1a-f212-f963-9a2b321f480d@herbrechtsmeier.net>
	<967547077.8619660.1570192633081.JavaMail.zimbra@savoirfairelinux.com>
	<3faffc0c-a573-0b8b-5915-2619262e7b6e@herbrechtsmeier.net>
MIME-Version: 1.0
X-Mailer: Zimbra 8.8.11_GA_3737 (ZimbraWebClient - GC77 (Linux)/8.8.11_GA_3737)
Thread-Topic: duplicate code
Thread-Index: hJRjta2wHfIsIyqEx8zmmuFzSjrFKA==
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
X-List-Received-Date: Mon, 07 Oct 2019 12:16:30 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Stefan,

I thought about your idea of using Yocto to manage NPM package dependencies=
 and I ran into an issue. NPM projects can have multiple dependencies on a =
single package, and sometimes with multiple versions. NPM will manage this =
by creating sub 'node_modules' tree.

Here is an example with a newly created angular application. The app depend=
s on 3 different version of 'ansi-regex'. NPM will install the packages thi=
s way:
node_modules/ansi-regex @ 2.1.1
node_modules/cliui/node_modules/ansi-regex @ 3.0.0
node_modules/inquirer/node_modules/ansi-regex @ 4.1.0
node_modules/string-width/node_modules/ansi-regex @ 3.0.0
node_modules/@angular/compiler-cli/node_modules/ansi-regex @ 4.1.0

How can you handle that with Yocto ? I am not sure but I think it is not po=
ssible.

For that reason I think I will base my developments on the master branch.

----- Mail original -----
> De: "Stefan Herbrechtsmeier" <stefan@herbrechtsmeier.net>
> =C3=80: "Jean-marie Lemetayer" <jean-marie.lemetayer@savoirfairelinux.com=
>
> Cc: "Yocto-mailing-list" <yocto@yoctoproject.org>, "Savoir-faire Linux Re=
nnes" <rennes@savoirfairelinux.com>
> Envoy=C3=A9: Vendredi 4 Octobre 2019 16:55:47
> Objet: Re: [yocto] [npm] duplicate code

> Hi Jean-Marie,
>=20
> Am 04.10.19 um 14:37 schrieb Jean-marie Lemetayer:
>> > I have recently worked on a yocto project using npm and I have seen so=
me issues.
>> > I have solved a few but only for bitbake:
>> https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3Deecba41822e=
86b69ebdb9cbc8fbfd512ad9a47d7
>> https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3Da34d0d539e5=
fdf341541fb628652d22289e80512
>> https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3De90cd2ed61b=
93ee7e290e7e592f1f0242ab5c281
>> https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3Da35abe31dc2=
3916fd06afdb3a5e22a81ef3df579
>>=20
>> As I have more time now, I wanted to continue my work by fixing devtool =
/
>> recipetool.
>>=20
>> I have also checked the bugzilla for issues that I could fix / that shou=
ld be
>> tested again:
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10515
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10760
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11028
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11029
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12534
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13415
>>=20
>> I ended up with this todo list:
>> =C2=A0 - merge the duplicate code between bitbake and recipetool
>> =C2=A0 - fix the npm package name handling in recipetool
>> =C2=A0 - fix the npm package version handling in recipetool
>> =C2=A0 - fix the lockdown.json file generation in recipetool
>> =C2=A0 - create an example nodejs application to test all these cases
>> =C2=A0 - update the wiki using this example application:
>> =C2=A0 =C2=A0 https://wiki.yoctoproject.org/wiki/TipsAndTricks/NPM
>>=20
>> Finally, in my recent project, we were using angular (https://angular.io=
) for
>> the front-end. I have planned to add the work done to support angular
>> applications in yocto (angular.bbclass) and update recipetool to handle =
them.
>=20
> Do you want to build an angular application? In this case you have to
> produce a machine (independent) package via a native npm build because
> you need to run the angular compiler on the build machine.

Yes, I have an 'angular-cli_x.y.z.bb' and an 'angular.bbclass' which depend=
s on 'angular-cli-native'. I have planned to upstream this work.

>=20
>>=20
>> Your work sounds very interesting. The good point is that npm-shrinkwrap=
.json
>> and lockdown.json files (which have generation issues btw) will no longe=
r be
>> required. But projects using npm can have a lot of dependencies (e.g. th=
e
>> angular example app have 1053 dependencies).
>=20
> A lot of dependencies are the problem at the moment. But many
> dependencies are not update frequently and my current solution assume
> that I can always use the latest version per major release version
>=20
>> Is recipetool will be handling the whole recipes creation in one time ?
>=20
> That's the problem at the moment. I don't manage to build multiple
> recipes from one recipetool run. Therefore I have a two stage approach.
> I use recipetool to build exact one recipe. A second script generates a
> list of all dependencies and call recipetool per package if the recipe
> doesn't already exist. This works but the run time is very high.
>=20
>> Is it possible to see your work ? A public fork would be nice. I would g=
ladly
>> help you / test your work / add my fixes if needed.
>=20
> I only have a unfinished Proof of Concept. If you like I could clean it
> up a bit and post it on github as a separate layer.

Like I said at the start of this email, I will not base my dev on yours. Bu=
t I am still interested by seeing your work.

Best regards,
Jean-Marie

