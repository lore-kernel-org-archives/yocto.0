Return-Path: <pidge@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85265E00D31; Fri, 29 Jul 2016 08:39:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [23.83.218.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 466 seconds by postgrey-1.32 at yocto-www;
	Fri, 29 Jul 2016 08:39:37 PDT
Received: from blue.tulip.relay.mailchannels.net
	(blue.tulip.relay.mailchannels.net [23.83.218.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4F41E00CC9
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 08:39:36 -0700 (PDT)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 5B4DD1BD403;
	Fri, 29 Jul 2016 15:31:43 +0000 (UTC)
Received: from hp181.hostpapa.com (ip-10-220-3-24.us-west-2.compute.internal
	[10.220.3.24])
	by relay.mailchannels.net (Postfix) with ESMTPA id 256841BD44C;
	Fri, 29 Jul 2016 15:31:42 +0000 (UTC)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from hp181.hostpapa.com (hp181.hostpapa.com [10.107.128.240])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.7.3); Fri, 29 Jul 2016 15:31:43 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostpapa|x-authuser|pidge@toganlabs.com
X-MailChannels-Auth-Id: hostpapa
X-MC-Loop-Signature: 1469806302954:3958438155
X-MC-Ingress-Time: 1469806302954
Received: from ip-217-103-177-37.ip.prioritytelecom.net
	([217.103.177.37]:41760 helo=[10.191.255.204])
	by hp181.hostpapa.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.86_1)
	(envelope-from <pidge@toganlabs.com>)
	id 1bT9l8-000tf4-9Q; Fri, 29 Jul 2016 17:31:37 +0200
Message-ID: <1469806290.3657.0.camel@toganlabs.com>
From: Beth 'pidge' Flanagan <pidge@toganlabs.com>
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>, 
	yocto@yoctoproject.org
Date: Fri, 29 Jul 2016 17:31:30 +0200
In-Reply-To: <1469805026-22041-1-git-send-email-anibal.limon@linux.intel.com>
References: <1469805026-22041-1-git-send-email-anibal.limon@linux.intel.com>
Organization: toganlabs.com
X-Mailer: Evolution 3.18.5.2-0ubuntu3 
Mime-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AuthUser: pidge@toganlabs.com
Cc: joshua.g.lock@intel.com, pidge@togenlabs.com
Subject: Re: [PATCH][yocto-autobuilder] lib/buildsteps.py: fix report creation in nigthly-oecore
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
X-List-Received-Date: Fri, 29 Jul 2016 15:39:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2016-07-29 at 10:10 -0500, An=C3=ADbal Lim=C3=B3n wrote:
> nightly-oecore buildset doesn't prove got_revision property
> so when got_revision is None use got_revision_oecore instead.
>=20
> [YOCTO #10051]
>=20
> Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.intel.com>
> ---
> =C2=A0lib/python2.7/site-packages/autobuilder/lib/buildsteps.py | 7 +++=
++-
> -
> =C2=A01 file changed, 5 insertions(+), 2 deletions(-)
>=20
> diff --git a/lib/python2.7/site-
> packages/autobuilder/lib/buildsteps.py b/lib/python2.7/site-
> packages/autobuilder/lib/buildsteps.py
> index eee0c1b..37ac8b0 100644
> --- a/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
> +++ b/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
> @@ -118,8 +118,11 @@ class BitbakeShellCommand(ShellCommand):
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0report['target_sy=
s'] =3D vrs['TARGET_SYS']
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0report['component=
'] =3D 'bitbake'
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0report['branch_commit'=
] =3D self.getProperty('branch') + ': '
> + \
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0self.getProperty('got_revision')
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0branch =3D self.getPro=
perty('branch')
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0revision =3D self.getP=
roperty('got_revision')
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if not revision:
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
revision =3D self.getProperty('got_revision_oecore')
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0report['branch_commit'=
] =3D branch + ': ' + revision
>=20

I'd put this in a try except. What happens with eclipse?

-b

> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0failure =3D {}
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0failure['package'=
] =3D "bitbake-%s" % vrs['BB_VERSION']
> --=C2=A0
> 2.1.4
>=20

