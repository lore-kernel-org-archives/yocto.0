Return-Path: <pidge@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CA2BE009EF; Mon, 25 Jul 2016 07:04:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [23.83.223.161 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1120 seconds by postgrey-1.32 at yocto-www;
	Mon, 25 Jul 2016 07:04:43 PDT
Received: from seahorse.cherry.relay.mailchannels.net
	(seahorse.cherry.relay.mailchannels.net [23.83.223.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D854E009E6
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 07:04:42 -0700 (PDT)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 36E6A1BD243;
	Mon, 25 Jul 2016 13:45:55 +0000 (UTC)
Received: from hp181.hostpapa.com (ip-10-229-10-199.us-west-2.compute.internal
	[10.229.10.199])
	by relay.mailchannels.net (Postfix) with ESMTPA id 42F6C1BC9A2;
	Mon, 25 Jul 2016 13:45:53 +0000 (UTC)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from hp181.hostpapa.com ([TEMPUNAVAIL]. [10.91.5.35])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.7.3); Mon, 25 Jul 2016 13:45:55 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostpapa|x-authuser|pidge@toganlabs.com
X-MailChannels-Auth-Id: hostpapa
X-MC-Loop-Signature: 1469454354685:3134376816
X-MC-Ingress-Time: 1469454354684
Received: from ip-217-103-177-37.ip.prioritytelecom.net
	([217.103.177.37]:40718 helo=[10.191.255.204])
	by hp181.hostpapa.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.86_1)
	(envelope-from <pidge@toganlabs.com>)
	id 1bRgCX-003EgQ-G6; Mon, 25 Jul 2016 15:45:48 +0200
Message-ID: <1469454342.12579.2.camel@toganlabs.com>
From: Beth 'pidge' Flanagan <pidge@toganlabs.com>
To: Bill Randle <william.c.randle@intel.com>, yocto@yoctoproject.org
Date: Mon, 25 Jul 2016 15:45:42 +0200
In-Reply-To: <1469286665-16059-1-git-send-email-william.c.randle@intel.com>
References: <1469286665-16059-1-git-send-email-william.c.randle@intel.com>
Organization: toganlabs.com
X-Mailer: Evolution 3.18.5.2-0ubuntu3 
Mime-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AuthUser: pidge@toganlabs.com
Subject: Re: [yocto-autobuilder][PATCH 0/2] Allow OPTIMIZED_GIT_CLONE to be False
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
X-List-Received-Date: Mon, 25 Jul 2016 14:04:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Merged into master

-b

On Sat, 2016-07-23 at 08:11 -0700, Bill Randle wrote:
> The autobuilder code assumes OPTIMIZED_GIT_CLONE is always set True,
> because things break if it is set to False. I had a case where it
> needed to be set False because the git trash folder was on a
> different
> file system than the build directory. This caused the CheckOutLayers
> build
> step to fail.
>=20
> In addition, I still wanted to use the git mirror even with
> OPTIMIZED_GIT_CLONE
> set False, so allow that case, too.
>=20
> [YOCTO #10010]
>=20
> Bill Randle (2):
> =C2=A0 BuildSet.py: allow using local git mirror even if
> OPTIMIZED_GIT_CLONE is False
> =C2=A0 yoctogit.py: ensure mirrordir is set before trying to use it
>=20
> =C2=A0lib/python2.7/site-packages/autobuilder/BuildSet.py=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0|=20
> 2 ++
> =C2=A0.../buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0|=20
> 7 +++++--
> =C2=A02 files changed, 7 insertions(+), 2 deletions(-)
>=20

