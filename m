Return-Path: <pidge@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75021E0077F; Thu, 19 Jan 2017 02:54:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.232.183.70 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 600 seconds by postgrey-1.32 at yocto-www;
	Thu, 19 Jan 2017 02:53:56 PST
Received: from nov-007-i516.relay.mailchannels.net
	(nov-007-i516.relay.mailchannels.net [46.232.183.70])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4438BE006D8
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 02:53:55 -0800 (PST)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 21942101093;
	Thu, 19 Jan 2017 10:37:37 +0000 (UTC)
Received: from hp181.hostpapa.com (ip-10-220-3-24.us-west-2.compute.internal
	[10.220.3.24])
	by relay.mailchannels.net (Postfix) with ESMTPA id 47D64100673;
	Thu, 19 Jan 2017 10:37:35 +0000 (UTC)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from hp181.hostpapa.com ([TEMPUNAVAIL]. [10.30.2.41])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.7.8); Thu, 19 Jan 2017 10:37:37 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostpapa|x-authuser|pidge@toganlabs.com
X-MailChannels-Auth-Id: hostpapa
X-MC-Loop-Signature: 1484822256058:1705520382
X-MC-Ingress-Time: 1484822256058
Received: from [37.228.251.243] (port=58638 helo=[192.168.0.10])
	by hp181.hostpapa.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.87)
	(envelope-from <pidge@toganlabs.com>)
	id 1cUA5x-000tep-P6; Thu, 19 Jan 2017 11:37:30 +0100
Message-ID: <1484822246.5397.0.camel@toganlabs.com>
From: Beth 'pidge' Flanagan <pidge@toganlabs.com>
To: Joshua Lock <joshua.g.lock@linux.intel.com>, 
	=?ISO-8859-1?Q?An=EDbal_Lim=F3n?=
	<anibal.limon@linux.intel.com>, yocto@yoctoproject.org
Date: Thu, 19 Jan 2017 10:37:26 +0000
In-Reply-To: <1484763187.3137.1.camel@linux.intel.com>
References: <1484583955-23541-1-git-send-email-anibal.limon@linux.intel.com>
	<1484763187.3137.1.camel@linux.intel.com>
Organization: toganlabs.com
X-Mailer: Evolution 3.18.5.2-0ubuntu3 
Mime-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AuthUser: pidge@toganlabs.com
Cc: richard.purdie@intel.com
Subject: Re: [[PATCH][yocto-autobuilder] 1/2] buildsteps/CreateAutoConf.py: Add support for specify MACHINE by build prop
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: pidge@toganlabs.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 19 Jan 2017 10:54:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2017-01-18 at 18:13 +0000, Joshua Lock wrote:
> On Mon, 2017-01-16 at 10:25 -0600, An=C3=ADbal Lim=C3=B3n wrote:
> >=20
> > Sometimes is a good idea to could specify a machine to build via a
> > build
> > property.
> Why's that? I can guess but the commit log should really tell me what
> the motivation for the change is.

I agree. Please submit a v2 with a bit better of a commit log.

-b

>=20
> >=20
> >=20
> > Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.intel.com>
> > ---
> > =C2=A0.../site-
> > packages/autobuilder/buildsteps/CreateAutoConf.py=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0| 6
> > +++++-
> > =C2=A01 file changed, 5 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/lib/python2.7/site-
> > packages/autobuilder/buildsteps/CreateAutoConf.py
> > b/lib/python2.7/site-
> > packages/autobuilder/buildsteps/CreateAutoConf.py
> > index 021f542..7915dd5 100644
> > --- a/lib/python2.7/site-
> > packages/autobuilder/buildsteps/CreateAutoConf.py
> > +++ b/lib/python2.7/site-
> > packages/autobuilder/buildsteps/CreateAutoConf.py
> > @@ -174,7 +174,11 @@ class CreateAutoConf(ShellCommand):
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0fout =3D fout + =
'baselib =3D \\042${@d.getVar(\\04
> > 7B
> > ASE_LIB_tune-\\047 + (d.getVar(\\047DEFAULTTUNE\\047, True) or
> > \\047INVALID\\047), True) or \\047lib\\047}\\042 \n'
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0if self.distro =3D=3D "poky-rt":
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0fout =3D fout +
> > 'PREFERRED_PROVIDER_virtual/kernel=3D"linux-yocto-rt" \n'
> > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0machine=3Dself.machine
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0machine=3Dself.getProperty('custom_machine')
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0if machine:
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0self.machine =3D machine
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0else:
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0machine =3D self.machine
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0if layerversion is not None and int(layerversion) > 1:
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if self.machine =3D=3D "atom-pc":
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0machine =3D self=
.machine.replace("atom-pc",
> > "genericx86")

