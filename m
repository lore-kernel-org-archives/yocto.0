Return-Path: <jrswdnan22@snkmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42C37E00C54; Fri, 20 Apr 2018 03:52:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,MSGID_MULTIPLE_AT,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [62.142.5.110 listed in list.dnswl.org]
	*  1.0 MSGID_MULTIPLE_AT Message-ID contains multiple '@' characters
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 310 seconds by postgrey-1.32 at yocto-www;
	Fri, 20 Apr 2018 03:52:34 PDT
Received: from emh04.mail.saunalahti.fi (emh04.mail.saunalahti.fi
	[62.142.5.110])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1973E008A2
	for <yocto@yoctoproject.org>; Fri, 20 Apr 2018 03:52:34 -0700 (PDT)
Received: from uwe1 (85-76-108-172-nat.elisa-mobile.fi [85.76.108.172])
	by emh04.mail.saunalahti.fi (Postfix) with ESMTP id 8D37030138;
	Fri, 20 Apr 2018 13:47:22 +0300 (EEST)
From: Uwe Geuder <jrswdnan22@snkmail.com>
To: yocto@yoctoproject.org 
In-Reply-To: <CAALXFYy3uftzYmjyYaJ+-X0OAPu8XJ2C7wNBMnoYZYHkm+Gp2g@mail.gmail.com>
References: <CAALXFYy3uftzYmjyYaJ+-X0OAPu8XJ2C7wNBMnoYZYHkm+Gp2g@mail.gmail.com>
Date: Fri, 20 Apr 2018 13:47:22 +0300
Message-ID: <87k1t26tol.fsf@snkmail.com@snkmail.com>
MIME-Version: 1.0
Subject: Re: Usage of yocto on different (production vs debug) scenarios
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
X-List-Received-Date: Fri, 20 Apr 2018 10:52:36 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi!

On Fri, Apr 20, 2018 at 10:59 AM, Iv=C3=A1n Castell <icastell@nayarsystems.=
com> wrote:

> We are trying to use yocto in a continuous integration environment with
> different (production vs debug) scenarios.
>=20
> To setup a given scenario (production vs debug) we are using something li=
ke
> this:
>=20
>     $ SCENARIO=3Ddebug
>     $ MACHINE=3D<machine> DISTRO=3D<distro>-${SCENARIO} source
> ../../build-<machine>-${SCENARIO}
>     $ bitbake <image>-${SCENARIO}
>=20
> So we have different image recipes:
>=20
>     * image-production.bb
>     * image-debug.bb
>=20
> Different distros:
>=20
>     * distro-production.conf
>     * distro-debug.conf
>=20
> And different build directories:
>=20
>     * build-<machine>-production
>     * build-<machine>-debug
>=20
> To optimize space usage and compilation time, we setup a shared sstate
> cache and a shared directory for downloads. This seems a good starting
> point.

Shared download, yes.

But can you share state between distros? Isn't the purpose of distros to
use different options (variable settings) so the state would always be
different?

(Please note: This is really a follow-up question, not me knowing
better. I am just trying to fully understand these concepts)


> However, things are getting complicated, because there is no way to
> exclude some recipes easily. For example, we don't want iptables
> installed on the debug image, but dependency chains include iptables
> by default

Doesn't blacklist do what you want?=20

E.g. in your distro-production.conf

PNBLACKLIST[iptables] =3D "we don't want iptables in product"


Of course if something has a hard dependency on iptables, the something
might need blacklisting instead or too.


Regards,

Uwe Geuder
Neuro Event Labs Oy
Tampere, Finland
uwe.gexder@neuroeventlabs.com (Bot check: fix one obvious typo)




> even when declaring IMAGE_INSTALL_remove explicitly. In this case we
> decided checking _%.bbappend to decide what rules are installed on ion
> vs rules.debug).
>=20
> hod is poisoning all our recipes with that kind of
>=20
>=20
>  right way to manage this? Can you suggest a
> ay to deal with this?
>=20
>=20

