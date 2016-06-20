Return-Path: <pidge@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8184FE0049B; Mon, 20 Jun 2016 00:50:56 -0700 (PDT)
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
X-Greylist: delayed 500 seconds by postgrey-1.32 at yocto-www;
	Mon, 20 Jun 2016 00:50:49 PDT
Received: from gt-egress-003.mailchannels.net
	(blue.tulip.relay.mailchannels.net [23.83.218.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA007E003D9
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 00:50:48 -0700 (PDT)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 14EDC123EF9;
	Mon, 20 Jun 2016 07:42:25 +0000 (UTC)
Received: from hp181.hostpapa.com (ip-10-229-11-165.us-west-2.compute.internal
	[10.229.11.165])
	by relay.mailchannels.net (Postfix) with ESMTPA id 19888127166;
	Mon, 20 Jun 2016 07:42:24 +0000 (UTC)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from hp181.hostpapa.com (hp181.hostpapa.com [10.21.150.52])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.6.14); Mon, 20 Jun 2016 07:42:25 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostpapa|x-authuser|pidge@toganlabs.com
X-MailChannels-Auth-Id: hostpapa
X-MC-Loop-Signature: 1466408544613:2084150288
X-MC-Ingress-Time: 1466408544613
Received: from ip-217-103-177-37.ip.prioritytelecom.net
	([217.103.177.37]:58744 helo=[10.191.255.204])
	by hp181.hostpapa.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.86_1)
	(envelope-from <pidge@toganlabs.com>)
	id 1bEtqf-003Yqa-0P; Mon, 20 Jun 2016 09:42:22 +0200
Message-ID: <1466408538.2437.5.camel@toganlabs.com>
From: Beth 'pidge' Flanagan <pidge@toganlabs.com>
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>, 
	yocto@yoctoproject.org
Date: Mon, 20 Jun 2016 09:42:18 +0200
In-Reply-To: <1466179510-9651-1-git-send-email-anibal.limon@linux.intel.com>
References: <1466179510-9651-1-git-send-email-anibal.limon@linux.intel.com>
Organization: toganlabs.com
X-Mailer: Evolution 3.18.5.2-0ubuntu3 
Mime-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AuthUser: pidge@toganlabs.com
Subject: Re: [PATCH][yocto-autobuilder] autobuilder/Autobuilder.p: Add missing import of buildbot.util.
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
X-List-Received-Date: Mon, 20 Jun 2016 07:50:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2016-06-17 at 11:05 -0500, An=C3=ADbal Lim=C3=B3n wrote:
> When try to start Autobuilder fails with the next exception,
>=20
> 2016-06-07 17:06:45-0500 [-] LOADING CONFIG FILE
> 2016-06-07 17:06:45-0500 [-] error while parsing config file:
>=20
> Traceback (most recent call last):
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0File
> "/home/alimon/repos/yocto-autobuilder/lib/python2.7/site-
> packages/Twisted-12.2.0-py2.7-linux-
> x86_64.egg/twisted/internet/defer.py",
> line 551, in _runCallbacks
> ......
> ......
> ......
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0File
> "/home/alimon/repos/yocto-autobuilder/lib/python2.7/site-
> packages/autobuilder/Autobuilder.py",
> line 54, in createBuildsets
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
util.naturalSort(buildersSorted)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0exceptions.NameError: g=
lobal name 'util' is not defined
>=20
> Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.intel.com>

Pulled into master.

I'm going to have a few patches today to pull in. One from Bill Randle,
and if you have the rebase done for our bitbakeshell branch, that as
well, so we might want to consider getting production updated.

Have we run your BitbakeShell branch of the devel cluster (or any
cluster not on a single machine, which is generally where we find
issues) yet?

-b


> ---
> =C2=A0lib/python2.7/site-packages/autobuilder/Autobuilder.py | 1 +
> =C2=A01 file changed, 1 insertion(+)
>=20
> diff --git a/lib/python2.7/site-packages/autobuilder/Autobuilder.py
> b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
> index 6c3e578..23f0a74 100644
> --- a/lib/python2.7/site-packages/autobuilder/Autobuilder.py
> +++ b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
> @@ -19,6 +19,7 @@ from buildbot.schedulers.basic=C2=A0=C2=A0import
> SingleBranchScheduler
> =C2=A0from buildbot.changes import filter
> =C2=A0from buildbot.changes.pb import PBChangeSource
> =C2=A0from buildbot.changes.gitpoller import *
> +from buildbot import util
> =C2=A0from lib.ABTools import capitalize
> =C2=A0import ast
> =C2=A0import BuildSet

