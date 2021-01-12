Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web08.9756.1610461797424706835
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Jan 2021 06:29:58 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4DFXz61vdDz5tlC;
	Tue, 12 Jan 2021 15:29:54 +0100 (CET)
Date: Tue, 12 Jan 2021 15:29:53 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Vijay Rakesh Munganda <vijayrakeshmunganda@gmail.com>
Cc: Khem Raj <raj.khem@gmail.com>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Unable to add pre compiled library #yocto
Message-ID: <20210112142952.sqkpqbg24py4em22@qschulz>
References: <CAMKF1srUErgMnrjKfAPJr8--8jPde-W=EH23JpKsZQJuvPcdAA@mail.gmail.com>
 <A05C12BC-6AC6-468A-960C-2597E4CFB355@gmail.com>
MIME-Version: 1.0
In-Reply-To: <A05C12BC-6AC6-468A-960C-2597E4CFB355@gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi VR,

On Tue, Jan 12, 2021 at 07:57:46PM +0530, Vijay Rakesh Munganda wrote:
> Hi Raj,
>=20
> I had downloaded complete meta-clang and ran bitbake then I got an erro=
r message as layer is not compatible with dunfell version. Then I had dow=
nloaded libcxx recipe and added into the build, but do_compile doesn=E2=80=
=99t show any progress, even after two hours at shows 16%. At this point =
RAM usage is 72% and CPU is 43%. I=E2=80=99m not sure whether this is rel=
ated to memory resource or any other.=20
>=20

I told you on StackOverflow to checkout the dunfell branch of
meta-clang. Do that, and recompile again instead of cherry-picking
recipes, classes, patches and whatnot.
Once you've something that works, you can experiment with cherry-picking
if you want.

Cheers,
Quentin
