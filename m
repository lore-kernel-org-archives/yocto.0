Return-Path: <pidge@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE770E00855; Tue, 19 Jul 2016 08:47:49 -0700 (PDT)
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
Received: from brown.birch.relay.mailchannels.net
	(brown.birch.relay.mailchannels.net [23.83.209.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69BE3E007DA
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2016 08:47:45 -0700 (PDT)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id AD0BBA133C;
	Tue, 19 Jul 2016 15:42:34 +0000 (UTC)
Received: from hp181.hostpapa.com (ip-10-229-10-199.us-west-2.compute.internal
	[10.229.10.199])
	by relay.mailchannels.net (Postfix) with ESMTPA id DE766A0504;
	Tue, 19 Jul 2016 15:42:32 +0000 (UTC)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from hp181.hostpapa.com (hp181.hostpapa.com [10.92.147.53])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.7.1); Tue, 19 Jul 2016 15:42:34 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostpapa|x-authuser|pidge@toganlabs.com
X-MailChannels-Auth-Id: hostpapa
X-MC-Loop-Signature: 1468942954236:3556107083
X-MC-Ingress-Time: 1468942954236
Received: from ip-217-103-177-37.ip.prioritytelecom.net
	([217.103.177.37]:46312 helo=[10.191.255.204])
	by hp181.hostpapa.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.86_1)
	(envelope-from <pidge@toganlabs.com>)
	id 1bPXAE-001XBv-Kn; Tue, 19 Jul 2016 17:42:32 +0200
Message-ID: <1468942946.22262.7.camel@toganlabs.com>
From: Beth 'pidge' Flanagan <pidge@toganlabs.com>
To: Bill Randle <william.c.randle@intel.com>, yocto@yoctoproject.org
Date: Tue, 19 Jul 2016 17:42:26 +0200
In-Reply-To: <1468515952-12949-1-git-send-email-william.c.randle@intel.com>
References: <1468515952-12949-1-git-send-email-william.c.randle@intel.com>
Organization: toganlabs.com
X-Mailer: Evolution 3.18.5.2-0ubuntu3 
Mime-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AuthUser: pidge@toganlabs.com
Subject: Re: [yocto-autobuilder][PATCH 0/4] autobuilder: make toaster eventlog creation optional
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
X-List-Received-Date: Tue, 19 Jul 2016 15:47:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Merged into master.

-b

On Thu, 2016-07-14 at 10:05 -0700, Bill Randle wrote:
> Currently, a toaster eventlog is generated for most all machine
> specific
> images (e.g., nightly-arm, nightly-x86, etc.) and placed in the top-
> level
> build directory. Having it in the top level dir causes inotify
> overflow in
> bitbake, due to the large number of changes to the file.
>=20
> This set of patches (1) make generation of the eventlog optional, by
> having a user selection in the Forced Build web pages, (2) places the
> eventlog in build/tmp/log, instead of build and (3) adds a timestamp
> to
> the eventlog filename since multiple event logs can be generated
> during
> a multi-image buildset and otherwise only the last one would
> otherwise
> be saved.
>=20
> [YOCTO #9884]
>=20
> Bill Randle (4):
> =C2=A0 remote_kick.py: add default entry for new 'create_eventlog'
> property
> =C2=A0 BuildImages.py: build toaster eventlog only when requested
> =C2=A0 UploadToasterEventlog.py: handle multiple eventlog files
> =C2=A0 buildset-config.controller: add new 'create_eventlog' forced bui=
ld
> =C2=A0=C2=A0=C2=A0=C2=A0property
>=20
> =C2=A0bin/remote_kick.py=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
|=C2=A0=C2=A01 +
> =C2=A0buildset-config.controller/nightly-arm-lsb.conf=C2=A0=C2=A0=C2=A0=
=C2=A0|=C2=A0=C2=A04 ++++
> =C2=A0buildset-config.controller/nightly-arm.conf=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A04 ++++
> =C2=A0buildset-config.controller/nightly-arm64.conf=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0|=C2=A0=C2=A04 ++++
> =C2=A0buildset-config.controller/nightly-mips-lsb.conf=C2=A0=C2=A0=C2=A0=
|=C2=A0=C2=A04 ++++
> =C2=A0buildset-config.controller/nightly-mips.conf=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A04 ++++
> =C2=A0buildset-config.controller/nightly-mips64.conf=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0|=C2=A0=C2=A04 ++++
> =C2=A0buildset-config.controller/nightly-no-x11.conf=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0|=C2=A0=C2=A04 ++++
> =C2=A0buildset-config.controller/nightly-ppc-lsb.conf=C2=A0=C2=A0=C2=A0=
=C2=A0|=C2=A0=C2=A04 ++++
> =C2=A0buildset-config.controller/nightly-ppc.conf=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A04 ++++
> =C2=A0buildset-config.controller/nightly-x32.conf=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A04 ++++
> =C2=A0buildset-config.controller/nightly-x86-64-lsb.conf |=C2=A0=C2=A04=
 ++++
> =C2=A0buildset-config.controller/nightly-x86-64.conf=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0|=C2=A0=C2=A04 ++++
> =C2=A0buildset-config.controller/nightly-x86-lsb.conf=C2=A0=C2=A0=C2=A0=
=C2=A0|=C2=A0=C2=A04 ++++
> =C2=A0buildset-config.controller/nightly-x86.conf=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A04 ++++
> =C2=A0buildset-config.controller/nightly.conf=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A07 ++++++-
> =C2=A0.../autobuilder/buildsteps/BuildImages.py=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0| 24
> +++++++++++++++++-----
> =C2=A0.../buildsteps/UploadToasterEventlog.py=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0| 16 +++++++++++-
> ----
> =C2=A018 files changed, 93 insertions(+), 11 deletions(-)
>=20
--=20
Beth 'pidge' Flanagan <pidge@toganlabs.com>
toganlabs.com


