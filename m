Return-Path: <pidge@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 345ECE00971; Wed, 22 Jun 2016 00:45:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [23.83.209.23 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 89454 seconds by postgrey-1.32 at yocto-www;
	Wed, 22 Jun 2016 00:45:01 PDT
Received: from gt-egress-001.mailchannels.net
	(brown.birch.relay.mailchannels.net [23.83.209.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0874E0084D
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 00:45:01 -0700 (PDT)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id BA77812018E;
	Wed, 22 Jun 2016 07:44:54 +0000 (UTC)
Received: from hp181.hostpapa.com (ip-10-42-131-234.us-west-2.compute.internal
	[10.42.131.234])
	by relay.mailchannels.net (Postfix) with ESMTPA id C3D2312029D;
	Wed, 22 Jun 2016 07:44:53 +0000 (UTC)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from hp181.hostpapa.com (hp181.hostpapa.com [10.132.194.146])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.6.14); Wed, 22 Jun 2016 07:44:54 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostpapa|x-authuser|pidge@toganlabs.com
X-MailChannels-Auth-Id: hostpapa
X-MC-Loop-Signature: 1466581494413:666832679
X-MC-Ingress-Time: 1466581494413
Received: from ip-217-103-177-37.ip.prioritytelecom.net
	([217.103.177.37]:35970 helo=[10.191.255.204])
	by hp181.hostpapa.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.86_1)
	(envelope-from <pidge@toganlabs.com>)
	id 1bFcqA-001iCC-L0; Wed, 22 Jun 2016 09:44:53 +0200
Message-ID: <1466581487.3278.17.camel@toganlabs.com>
From: Beth 'pidge' Flanagan <pidge@toganlabs.com>
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>, 
	yocto@yoctoproject.org
Date: Wed, 22 Jun 2016 09:44:47 +0200
In-Reply-To: <1466550472-1365-1-git-send-email-anibal.limon@linux.intel.com>
References: <1466550472-1365-1-git-send-email-anibal.limon@linux.intel.com>
Organization: toganlabs.com
X-Mailer: Evolution 3.18.5.2-0ubuntu3 
Mime-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AuthUser: pidge@toganlabs.com
Cc: joshua.g.lock@intel.com
Subject: Re: [[yocto-autobuilder][PATCHv2] 00/15] Add support for generate bitbake/oe-selftest error reports
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
X-List-Received-Date: Wed, 22 Jun 2016 07:45:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2016-06-21 at 18:07 -0500, An=C3=ADbal Lim=C3=B3n wrote:
> This v2 adds support for generate also oe-selftest reports this is
> almost
> the previous version with changes requested in review [1], the next
> patches
> starts from patch,
>=20
> 	autobuilder/lib/{ABtools,builsteps}.py: Create
> save_error_report func

A few comments.

- Please rebase the last two commits. They can be merged into prior
commits.=C2=A0

Example:=C2=A00eb495d93eefa9ead8f4b1242f251f1a2288db68 should be squashed
into=C2=A083b6707622128436b4ece9d4c2a89311b000c209

We shouldn't need rename commits for a pull request that created the
original thing we're renaming.

- Please fix the title for=C2=A083b6707622128436b4ece9d4c2a89311b000c209
's/buiidsets/buildsets/'


-b

--=20
Beth 'pidge' Flanagan <pidge@toganlabs.com>
toganlabs.com

>=20
> Also the changes could be reviewed at [2].
>=20
> [1] https://lists.yoctoproject.org/pipermail/yocto/2016-June/030515.h
> tml
> [2] http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/log/?
> h=3Dcontrib/alimon/devel
>=20
> An=C3=ADbal Lim=C3=B3n (15):
> =C2=A0 lib/buildsteps.py: Add BitbakeShellCommand class
> =C2=A0 lib/buildsteps.py: Add BitbakeLogLineObserver for
> =C2=A0=C2=A0=C2=A0=C2=A0BitbakeShellCommands.
> =C2=A0 lib/buildsteps: BitbakeShellCommand add support for create error
> =C2=A0=C2=A0=C2=A0=C2=A0reports
> =C2=A0 lib/ABTools: Add functions for get errordir path in controller a=
nd
> =C2=A0=C2=A0=C2=A0=C2=A0worker
> =C2=A0 buildbot: Add support for DirectoryDownload transfer step
> =C2=A0 autobuilder/buildsteps: Add DownloadBitbakeErrorReports step
> =C2=A0 buiidsets: Add DownloadBitbakeErrorReport step
> =C2=A0 lib/buildsteps.py: BitbakeShellCommand add support for error_typ=
e
> =C2=A0 autobuilder/lib/buildsteps.py: BitbakeShellCommand update error
> report
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0types.
> =C2=A0 autobuilder/lib/{ABtools,builsteps}.py: Create save_error_report
> func
> =C2=A0 autobuilder/lib/ABTools.py: Add get_lsb_distro function
> =C2=A0 buildsteps/RunOeSelftest.py: Add support for create/save error
> reports
> =C2=A0 nightly-oe-selftest.conf: Add steps for Download and Send error
> =C2=A0=C2=A0=C2=A0=C2=A0report.
> =C2=A0 autobuilder/buildsteps: Rename DownloadBitbakeErrorReports to
> =C2=A0=C2=A0=C2=A0=C2=A0DownloadErrorReports
> =C2=A0 buildset-config: Update references from DownloadBitbakeErrorRepo=
rts
> to
> =C2=A0=C2=A0=C2=A0=C2=A0DownloadErrorReports
>=20
> =C2=A0buildset-config.controller/build-appliance.conf=C2=A0=C2=A0=C2=A0=
=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.controller/buildtools.conf=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.controller/nightly-arm-lsb.conf=C2=A0=C2=A0=C2=A0=
=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.controller/nightly-arm.conf=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.controller/nightly-arm64.conf=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0.../nightly-deb-non-deb.conf=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.controller/nightly-deb.conf=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.controller/nightly-ipk.conf=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.controller/nightly-mips-lsb.conf=C2=A0=C2=A0=C2=A0=
|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.controller/nightly-mips.conf=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.controller/nightly-mips64.conf=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.controller/nightly-multilib.conf=C2=A0=C2=A0=C2=A0=
|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.controller/nightly-musl.conf=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.controller/nightly-no-x11.conf=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.controller/nightly-non-gpl3.conf=C2=A0=C2=A0=C2=A0=
|=C2=A0=C2=A0=C2=A01 +
> =C2=A0.../nightly-oe-selftest.conf=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A05 +-
> =C2=A0buildset-config.controller/nightly-oecore.conf=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.controller/nightly-ppc-lsb.conf=C2=A0=C2=A0=C2=A0=
=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.controller/nightly-ppc.conf=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.controller/nightly-qa-extras.conf=C2=A0=C2=A0|=C2=
=A0=C2=A0=C2=A01 +
> =C2=A0.../nightly-qa-logrotate.conf=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.controller/nightly-qa-pam.conf=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0.../nightly-qa-skeleton.conf=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.controller/nightly-qa-systemd.conf |=C2=A0=C2=A0=C2=
=A01 +
> =C2=A0.../nightly-qa-targetbuilds.conf=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0.../nightly-rpm-non-rpm.conf=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.controller/nightly-rpm.conf=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.controller/nightly-uclibc.conf=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.controller/nightly-world-lsb.conf=C2=A0=C2=A0|=C2=
=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.controller/nightly-world.conf=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.controller/nightly-x32.conf=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.controller/nightly-x86-64-lsb.conf |=C2=A0=C2=A0=C2=
=A01 +
> =C2=A0buildset-config.controller/nightly-x86-64.conf=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.controller/nightly-x86-lsb.conf=C2=A0=C2=A0=C2=A0=
=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.controller/nightly-x86.conf=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.controller/nightly.conf=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.controller/poky-tiny.conf=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.examples/awesomefirmware.conf=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.freescale/nightly-fsl-arm-lsb.conf |=C2=A0=C2=A0=C2=
=A01 +
> =C2=A0buildset-config.freescale/nightly-fsl-arm.conf=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.freescale/nightly-fsl-ppc-lsb.conf |=C2=A0=C2=A0=C2=
=A01 +
> =C2=A0buildset-config.freescale/nightly-fsl-ppc.conf=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.iot-devkit/iot-devkit.conf=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.kernel/kernel-arm-lsb.conf=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.kernel/kernel-arm.conf=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.kernel/kernel-arm64.conf=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.kernel/kernel-mips-lsb.conf=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.kernel/kernel-mips.conf=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.kernel/kernel-ppc-lsb.conf=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.kernel/kernel-ppc.conf=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.kernel/kernel-x86-64-lsb.conf=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.kernel/kernel-x86-64.conf=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.kernel/kernel-x86-lsb.conf=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.kernel/kernel-x86.conf=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.kernel/nightly-kernel.conf=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.tizen/nightly-tizen-ivi.conf=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.tizen/nightly-tizen.conf=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A01 +
> =C2=A0buildset-config.tizen/nightly.conf=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0|=C2=
=A0=C2=A0=C2=A01 +
> =C2=A0.../autobuilder/buildsteps/BuildImages.py=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A07 +-
> =C2=A0.../autobuilder/buildsteps/BuildToolchainImages.py |=C2=A0=C2=A0=C2=
=A07 +-
> =C2=A0.../autobuilder/buildsteps/DownloadErrorReports.py |=C2=A0=C2=A04=
2 +++++++++
> =C2=A0.../autobuilder/buildsteps/GetBitbakeVersion.py=C2=A0=C2=A0=C2=A0=
=C2=A0|=C2=A0=C2=A0=C2=A06 +-
> =C2=A0.../autobuilder/buildsteps/RunESDKSanityTests.py=C2=A0=C2=A0=C2=A0=
|=C2=A0=C2=A0=C2=A06 +-
> =C2=A0.../autobuilder/buildsteps/RunOeSelftest.py=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A046 +++++++++
> =C2=A0.../autobuilder/buildsteps/RunSDKSanityTests.py=C2=A0=C2=A0=C2=A0=
=C2=A0|=C2=A0=C2=A0=C2=A06 +-
> =C2=A0.../autobuilder/buildsteps/RunSanityTests.py=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A06 +-
> =C2=A0.../autobuilder/buildsteps/SendErrorReport.py=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0|=C2=A0=C2=A016 ++--
> =C2=A0.../site-packages/autobuilder/lib/ABTools.py=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A059
> ++++++++++++
> =C2=A0.../site-packages/autobuilder/lib/buildsteps.py=C2=A0=C2=A0=C2=A0=
=C2=A0| 104
> +++++++++++++++++++++
> =C2=A0.../buildbot/steps/transfer.py=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0|=C2=A0=C2=A086
> ++++++++++++++++-
> =C2=A0.../buildslave/commands/registry.py=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=
=C2=A0=C2=A01 +
> =C2=A0.../buildslave/commands/transfer.py=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=
=C2=A079
> ++++++++++++++++
> =C2=A072 files changed, 509 insertions(+), 24 deletions(-)
> =C2=A0create mode 100644 lib/python2.7/site-
> packages/autobuilder/buildsteps/DownloadErrorReports.py
>=20



