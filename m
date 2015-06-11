Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23F55E0098D; Thu, 11 Jun 2015 13:51:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96ACEE00974
	for <yocto@yoctoproject.org>; Thu, 11 Jun 2015 13:51:11 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 11 Jun 2015 13:51:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,597,1427785200"; d="scan'208";a="745179493"
Received: from louissmi-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.0.184])
	by orsmga002.jf.intel.com with ESMTP; 11 Jun 2015 13:51:09 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>
Date: Thu, 11 Jun 2015 21:51:08 +0100
Message-ID: <1740590.zL5b4dpnL6@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.7 (Linux/4.0.4-202.fc21.x86_64; KDE/4.14.7; x86_64; ; )
In-Reply-To: <1433953732-29963-10-git-send-email-anibal.limon@linux.intel.com>
References: <1433953732-29963-1-git-send-email-anibal.limon@linux.intel.com>
	<1433953732-29963-10-git-send-email-anibal.limon@linux.intel.com>
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
X-List-Received-Date: Thu, 11 Jun 2015 20:51:17 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Wednesday 10 June 2015 16:28:50 An=EDbal Lim=F3n wrote:
> Now send emails almost in all cases this give the maintainer
> patches and diff to continue work also if the build isn't
> succesful.
>
> [YOCTO #7489]
>=20
> Signed-off-by: An=EDbal Lim=F3n <anibal.limon@linux.intel.com>
> ---
>  upgradehelper.py | 19 ++++++++++---------
>  1 file changed, 10 insertions(+), 9 deletions(-)
>=20
> diff --git a/upgradehelper.py b/upgradehelper.py
> index b1f075d..a4aa0ab 100755
> --- a/upgradehelper.py
> +++ b/upgradehelper.py
> @@ -381,8 +381,11 @@ class Updater(object):
>                  "Attached are the patch, license diff (if change) an=
d
> bitbake log.\n\n" \ "Regards,\nThe Upgrade Helper"
>=20
> -            # don't bother maintainer with mail if the recipe is alr=
eady up
> to date -            if status =3D=3D "UpgradeNotNeededError":
> +            if status =3D=3D "Error" or status =3D=3D "FetchError" o=
r\
> +               status =3D=3D "UpgradeNotNeededError":
> +                D( "%s: Don't send email to maintainer because the e=
rror
> was " \ +                   "%s and the information isn't useful, ple=
ase
> review it." \ +                    % (self.pn, status))

Obviously this is in the existing code, but I'm not hugely keen on chec=
king=20
the error name as a string - I'd much rather we checked it with isinsta=
nce=20
here. That might require us to have all errors that the maintainer can =
fix as=20
subclasses of a particular class though.

Also, do you have an idea of the types of exception that might now trig=
ger an=20
email that don't inherit from our "Error" class here but are actually w=
orth=20
telling the maintainer about? I can certainly think about situations wh=
ere=20
bugs in the script here could trigger a large number of emails to maint=
ainers=20
which we probably wouldn't want.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

