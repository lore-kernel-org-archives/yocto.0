Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8AB30E00995; Thu, 11 Jun 2015 14:06:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 611F9E00982
	for <yocto@yoctoproject.org>; Thu, 11 Jun 2015 14:06:11 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 11 Jun 2015 14:06:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,597,1427785200"; d="scan'208";a="586293785"
Received: from louissmi-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.0.184])
	by orsmga003.jf.intel.com with ESMTP; 11 Jun 2015 14:06:00 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>
Date: Thu, 11 Jun 2015 22:05:59 +0100
Message-ID: <18387684.hUtqA0H8DF@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.7 (Linux/4.0.4-202.fc21.x86_64; KDE/4.14.7; x86_64; ; )
In-Reply-To: <5579F619.4080504@linux.intel.com>
References: <1433953732-29963-1-git-send-email-anibal.limon@linux.intel.com>
	<1740590.zL5b4dpnL6@peggleto-mobl.ger.corp.intel.com>
	<5579F619.4080504@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 09/11][auh] upgradehelper.py: Change policy for send emails and fix error passing
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
X-List-Received-Date: Thu, 11 Jun 2015 21:06:15 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Thursday 11 June 2015 15:56:57 An=EDbal Lim=F3n wrote:
> Hi Paul,
>=20
> Comments below,
>=20
> Kind regards,
>      alimon
>=20
> On 11/06/15 15:51, Paul Eggleton wrote:
> > On Wednesday 10 June 2015 16:28:50 An=EDbal Lim=F3n wrote:
> >> Now send emails almost in all cases this give the maintainer
> >> patches and diff to continue work also if the build isn't
> >> succesful.
> >>=20
> >> [YOCTO #7489]
> >>=20
> >> Signed-off-by: An=EDbal Lim=F3n <anibal.limon@linux.intel.com>
> >> ---
> >>=20
> >>   upgradehelper.py | 19 ++++++++++---------
> >>   1 file changed, 10 insertions(+), 9 deletions(-)
> >>=20
> >> diff --git a/upgradehelper.py b/upgradehelper.py
> >> index b1f075d..a4aa0ab 100755
> >> --- a/upgradehelper.py
> >> +++ b/upgradehelper.py
> >>=20
> >> @@ -381,8 +381,11 @@ class Updater(object):
> >>                   "Attached are the patch, license diff (if change=
) and
> >>=20
> >> bitbake log.\n\n" \ "Regards,\nThe Upgrade Helper"
> >>=20
> >> -            # don't bother maintainer with mail if the recipe is =
already
> >> up to date -            if status =3D=3D "UpgradeNotNeededError":
> >> +            if status =3D=3D "Error" or status =3D=3D "FetchError=
" or\
> >> +               status =3D=3D "UpgradeNotNeededError":
> >> +                D( "%s: Don't send email to maintainer because th=
e error
> >> was " \ +                   "%s and the information isn't useful, =
please
> >> review it." \ +                    % (self.pn, status))
> >=20
> > Obviously this is in the existing code, but I'm not hugely keen on
> > checking
> > the error name as a string - I'd much rather we checked it with isi=
nstance
> > here. That might require us to have all errors that the maintainer =
can fix
> > as subclasses of a particular class though.
>=20
> Yes i'll change the string testing for isinstance.
>=20
> > Also, do you have an idea of the types of exception that might now =
trigger
> > an email that don't inherit from our "Error" class here but are act=
ually
> > worth telling the maintainer about? I can certainly think about
> > situations where bugs in the script here could trigger a large numb=
er of
> > emails to maintainers which we probably wouldn't want.
>=20
> That's good observation i filter all the errors that don't are in the=

> class of Error,
> also i avoided Error/FetchError/UpgradeNotNeeded because when happens=
 no
> usueful info is
> generated.

Sorry I'm not quite following - you mean you did filter out exceptions =
that=20
don't inherit from Error or you will change it to do that? Unless I'm m=
issing=20
something, this patch now catches any exception of class Exception and =
passes=20
it into this function, but we only skip Error/FetchError/UpgradeNotNeed=
ed - so=20
for example a SyntaxError will get sent after this change, right? Surel=
y we=20
don't want that?

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

