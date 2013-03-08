Return-Path: <dlazzari@leapfrog.com>
Received: from mx3.leapfrog.com (mx3.leapfrog.com [63.114.26.253])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2108E014CF
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 17:49:39 -0800 (PST)
Received: from NAEMCASHT02.na.leapfrog.com (unknown [10.12.2.36])
	by mx3.leapfrog.com (Postfix) with ESMTP id A467E6020
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 17:49:26 -0800 (PST)
Received: from naemmail03.na.leapfrog.com ([fe80::491e:453:9918:658c]) by
	NAEMCASHT02.na.leapfrog.com ([::1]) with mapi id 14.01.0379.000;
	Thu, 7 Mar 2013 17:49:26 -0800
From: Daniel Lazzari <dlazzari@leapfrog.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Problem with applying a patch using default -pnum
Thread-Index: Ac4bnrjSDJs55Y5DTQycFtQiP+IP2A==
Date: Fri, 8 Mar 2013 01:49:24 +0000
Message-ID: <E7A9054A5ACABE48B0E540E46E862B0FE6C81D53@NAEMMAIL03.na.leapfrog.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.100.2.5]
MIME-Version: 1.0
Subject: Re: Problem with applying a patch using default -pnum
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
X-List-Received-Date: Fri, 08 Mar 2013 01:49:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> On 2013-03-07 8:11, Jerrod Peach wrote:
> > Hans,
> >
> > Are you sure you're seeing the patch system use $WORKDIR instead of $S
> > as the root for patching?  I've had to do a lot of patching in our own
> > layers recently and I've always seen $S used as the root for the
> > patch.  Are you explicitly setting S =3D "${WORKDIR}/git"?  That's what
> > we do for our git recipes.  That's how you get the system to recognize
> > the source somewhere other than just $WORKDIR.
> >
> > As for specifying a different -pnum, you absolutely can do that like so=
:
> >
> > /SRC_URI +=3D "file://my-change.patch*;striplevel=3DX*"/
> >
> > X is the pnum that you want.  Its default value is 1.
> >
> > You may also find this page useful -- it contains all sorts of hints
> > for setting up your recipes in a Yocto-standard way:
> >
> > https://wiki.yoctoproject.org/wiki/Recipe_&_Patch_Style_Guide
> >
> > That's where I learned about striplevel and the preference for it over
> > the deprecated pnum parameter.
> >
> > Kind regards,
> >
> > Jerrod
> >
> >
> Hi Jarod. Thanks, the pointer you gave will most certainly be of great ai=
d. I will
> try the striplevel approach instead of writing my own do_patch() override=
.
> Regarding how certain I am that the root folder is ${WORKDIR} when
> patching, not at all ;) In my do_patch() function is simply did `pwd` and=
 it was
> not set to ${S} as I set it to.
> That does not mean that the built-in patch system is using ${WORKDIR}, I =
am
> aware of that.
> Things here is, even though my patch is placed in ${W} and I set ${S} to =
eg.
> ${W}/git/some/folder, why would it not work? In another package I set ${S=
}
> to ${WORKDIR}/git and it works just fine. I can not understand why settin=
g
> ${S} to something else breaks the logic?
> It's not that bitbake can not find the patch file, it definitely does tha=
t, but the
> -pnum seems to get messed up. But maybe that is the whole point of having
> the striplevel=3DX in the first place.
>=20
> Hans
>=20
>=20
> >
> >
> >
> >
> > On Thu, Mar 7, 2013 at 7:33 AM, Hans Beck?rus <hans.beckerus@gmail.com
> > <mailto:hans.beckerus@gmail.com>> wrote:
> >
> >     On Thu, Mar 7, 2013 at 1:12 PM, Hans Beck?rus
> >     <hans.beckerus@gmail.com <mailto:hans.beckerus@gmail.com>>
> wrote:
> >     > Hi. More problems ;)
> >     > I have a patch file that needs to be applied to a source tree
> >     and the
> >     > patch file is copied properly to the ${WORKDIR} directory.
> >     > So far so good. But, the problem with this source tree is that it=
 is
> >     > not built from the traditional root folder of the repo.
> >     > This means I need to change ${S} to point somewhere else. This al=
so
> >     > causes the patch system to fail!
> >     > I did an override of do_patch() in my .bb and that seems to
> >     work, but
> >     > I do not like to use overrides unless I really have to.
> >     > So basically, is there some way to tell the built-in patch system=
 to
> >     > use a different -pnum value?
> >     > If there is, I could stick with the do_patch() as provided by
> >     default.
> >     >
> >     > Hans
> >
> >     Hmm, ok a correction from my side. Forget parts of what I said ;)
> >     The patch system does not seem to use the value of ${S}, it is usin=
g
> >     ${WORKDIR} as the root for patching, this is also where the patch f=
ile
> >     is placed. The problem in my case does not seem to be that is built
> >     from a non-standard path. The reason why it fails seems to be becau=
se
> >     the actual source is not in ${WORKDIR}, it is in ${WORKDIR}/git. Th=
e
> >     patch file does include git as part of the source path for obvious
> >     reasons. What am I doing wrong? Having actual source code in
> >     ${WORKDIR}/git I assume is very common for git based downloads.
> >
> >     Hans
> >     _______________________________________________
> >     yocto mailing list
> >     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> >     https://lists.yoctoproject.org/listinfo/yocto
> >
> >

I also found another useful patch param called patchdir that sets the direc=
tory from which the patch is applied. This is useful when ${S} is set to a =
directory deeper than you want to patch from but don't want to mess with se=
tting ${S}. I needed it to apply a patch to wpa_supplicant's src directory.

Ex.
file://gpio-sysfs-power-onoff-change.patch;patchdir=3D${WORKDIR}/wpa_suppli=
cant-${PV}

Daniel Lazzari Jr.
Firmware Engineer
dlazzari@leapfrog.com

