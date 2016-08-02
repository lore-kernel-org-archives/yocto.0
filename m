Return-Path: <pidge@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88A76E00F4F; Mon,  1 Aug 2016 23:29:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [23.83.223.166 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from silver.cherry.relay.mailchannels.net
	(silver.cherry.relay.mailchannels.net [23.83.223.166])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBDB5E00F46
	for <yocto@yoctoproject.org>; Mon,  1 Aug 2016 23:29:03 -0700 (PDT)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 113D7100A1E;
	Tue,  2 Aug 2016 06:28:56 +0000 (UTC)
Received: from hp181.hostpapa.com (ip-10-229-10-199.us-west-2.compute.internal
	[10.229.10.199])
	by relay.mailchannels.net (Postfix) with ESMTPA id 3D624100CA7;
	Tue,  2 Aug 2016 06:28:55 +0000 (UTC)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from hp181.hostpapa.com (hp181.hostpapa.com [10.21.150.52])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.7.3); Tue, 02 Aug 2016 06:28:56 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostpapa|x-authuser|pidge@toganlabs.com
X-MailChannels-Auth-Id: hostpapa
X-MC-Loop-Signature: 1470119335764:381106210
X-MC-Ingress-Time: 1470119335763
Received: from [37.228.246.5] (port=39116 helo=[192.168.0.37])
	by hp181.hostpapa.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.86_1)
	(envelope-from <pidge@toganlabs.com>)
	id 1bUTC2-002SLG-UO; Tue, 02 Aug 2016 08:28:53 +0200
Message-ID: <1470119325.2990.0.camel@toganlabs.com>
From: Beth 'pidge' Flanagan <pidge@toganlabs.com>
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>, 
	yocto@yoctoproject.org
Date: Tue, 02 Aug 2016 07:28:45 +0100
In-Reply-To: <1469808791-17092-1-git-send-email-anibal.limon@linux.intel.com>
References: <1469808791-17092-1-git-send-email-anibal.limon@linux.intel.com>
Organization: toganlabs.com
X-Mailer: Evolution 3.18.5.2-0ubuntu3 
Mime-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AuthUser: pidge@toganlabs.com
Cc: joshua.g.lock@intel.com
Subject: Re: [PATCHv2][yocto-autobuilder] lib/buildsteps.py: fix report creation in nigthly-oecore
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
X-List-Received-Date: Tue, 02 Aug 2016 06:29:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2016-07-29 at 11:13 -0500, An=C3=ADbal Lim=C3=B3n wrote:
> nightly-oecore buildset doesn't prove got_revision property
> so when got_revision is None use got_revision_oecore instead.
>=20

pulled into master, thanks!

-b

> [YOCTO #10051]
>=20
> Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.intel.com>
> ---
> =C2=A0lib/python2.7/site-packages/autobuilder/lib/buildsteps.py | 11
> +++++++++--
> =C2=A01 file changed, 9 insertions(+), 2 deletions(-)
>=20
> diff --git a/lib/python2.7/site-
> packages/autobuilder/lib/buildsteps.py b/lib/python2.7/site-
> packages/autobuilder/lib/buildsteps.py
> index eee0c1b..f7b1921 100644
> --- a/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
> +++ b/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
> @@ -118,8 +118,15 @@ class BitbakeShellCommand(ShellCommand):
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
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0try:
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
branch =3D self.getProperty('branch')
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
revision =3D self.getProperty('got_revision')
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
if not revision:
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0revision =3D self.getProperty('got_revision_oecor=
e')
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0except:
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
branch =3D "unknown_branch"
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
revision =3D "unknown_revision"
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0report['branch_commit'=
] =3D branch + ': ' + revision
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0failure =3D {}
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0failure['package'=
] =3D "bitbake-%s" % vrs['BB_VERSION']

