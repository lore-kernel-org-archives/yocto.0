Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2BE18E00994; Thu, 18 Oct 2018 12:30:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F375E00971
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 12:30:16 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 Oct 2018 12:30:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.54,397,1534834800"; d="scan'208";a="83728218"
Received: from pvaidehi-mobl1.gar.corp.intel.com (HELO localhost.localdomain)
	([10.255.133.25])
	by orsmga006.jf.intel.com with ESMTP; 18 Oct 2018 12:30:10 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org, Aaron_Wright@selinc.com
Date: Fri, 19 Oct 2018 08:30:07 +1300
Message-ID: <2196576.1fsnYOVap6@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <57ADD8B0-DA93-4895-95E5-FD13C6597D89@gmail.com>
References: <OF38E74854.80860B87-ON88258329.0081F4B2-8825832A.0060D044@selinc.com>
	<57ADD8B0-DA93-4895-95E5-FD13C6597D89@gmail.com>
MIME-Version: 1.0
Subject: Re: Working on Dependent Recipes in eSDK
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
X-List-Received-Date: Thu, 18 Oct 2018 19:30:17 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

I think we would *like* this to be possible, from what I can tell I think t=
he=20
issue is that the copies of the library in the sysroots of other dependent=
=20
recipes aren't being updated. The eSDK (and devtool) were originally writte=
n=20
when there weren't recipe-specific sysroots, and this stuff was a bit simpl=
er.

Moving back to the full build system won't automatically fix this, though i=
t=20
does make workarounds possible - you'd need to rebuild the dependent recipe=
s=20
to get their sysroots updated.

Cheers,
Paul

On Friday, 19 October 2018 7:30:17 AM NZDT Alexander Kanavin wrote:
> I don=E2=80=99t think esdk is designed for this kind of =E2=80=98full sta=
ck=E2=80=99 development.
> You can go back to working directly with yocto layers, and skip the esdk
> altogether. Devtool will work exactly same (minus the sdk specific
> commands).
>=20
> Alex
>=20
> > On 18 Oct 2018, at 19.37, Aaron_Wright@selinc.com wrote:
> >=20
> > My team recently started using the eSDK for day-to-day development.=20
> > Previously, they were using the bitbake command to build, which works, =
but=20
> > has overhead. Yesterday three different people came up to me a question=
=20
> > about workflow with the eSDK, and they all had to do with dependent=20
> > recipes in the eSDK.
> >=20
> > For example, a developer would sit down to make something new that reli=
es=20
> > on a library provided by a recipe in the eSDK. So they "devtool=20
> > sdk-install needed-library", and get to work. While working, they=20
> > discover, I need to add something to this library I depend on so that i=
t=20
> > does what I want in the way I want. So they "devtool modify=20
> > needed-library" and change the source of that library to do what they=20
> > want, and build that library using its build system (CMake or Autotools=
).=20
> > Then they return to working on the new something and find that none of=
=20
> > their changes to the library they depend on are available.=20
> >=20
> > At this point, they are lost. They just start trying things to make it=
=20
> > work, like "devtool build needed-library", which successfully completes=
,=20
> > but doesn't help. Some people also try to use the build system of the=20
> > library they modified to install it into the machine sysroot of the eSD=
K=20
> > with a command like, "make install=20
> > DESTDIR=3D<ESDK_PATH>/tmp/sysroots/<MACHINE>", and that actually does h=
elp.=20
> > They can now use the changes they made to the library in the new someth=
ing=20
> > they are working on. However, when they use the "devtool sdk-install"=20
> > command again, their changes to the needed library that they installed=
=20
> > into the machine sysroot are reverted.
> >=20
> > So--what is the workflow they are supposed to use?=20
> >=20
> > Pushing the changes to the library upstream, updating the recipe, and=20
> > waiting for a new eSDK is not practical given that the developers may h=
ave=20
> > to iterate on the changes to the library quite a bit before they get it=
=20
> > just right for their new something.
> >=20
> > Is there a way to update the eSDK sysroots with recipes that are in the=
=20
> > workspace? Could "devtool build" also update the eSDK sysroots? Or is=20
> > there a different way to get this done?
>=20


=2D-=20

Paul Eggleton
Intel Open Source Technology Centre



