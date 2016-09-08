Return-Path: <pidge@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57C17E00D8A; Thu,  8 Sep 2016 05:15:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [23.83.214.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from barb.maple.relay.mailchannels.net
	(barb.maple.relay.mailchannels.net [23.83.214.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E78BCE00CF1
	for <yocto@yoctoproject.org>; Thu,  8 Sep 2016 05:15:53 -0700 (PDT)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 02A61E1B52;
	Thu,  8 Sep 2016 12:07:48 +0000 (UTC)
Received: from hp181.hostpapa.com (ip-10-120-4-226.us-west-2.compute.internal
	[10.120.4.226])
	by relay.mailchannels.net (Postfix) with ESMTPA id 9F7A7E188E;
	Thu,  8 Sep 2016 12:07:45 +0000 (UTC)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from hp181.hostpapa.com (hp181.hostpapa.com [10.107.128.240])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.7.8); Thu, 08 Sep 2016 12:07:47 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostpapa|x-authuser|pidge@toganlabs.com
X-MailChannels-Auth-Id: hostpapa
X-MC-Loop-Signature: 1473336466063:748052914
X-MC-Ingress-Time: 1473336466063
Received: from ip-217-103-177-37.ip.prioritytelecom.net
	([217.103.177.37]:39112 helo=[10.191.255.204])
	by hp181.hostpapa.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.87)
	(envelope-from <pidge@toganlabs.com>)
	id 1bhy7G-001TQP-Uq; Thu, 08 Sep 2016 14:07:45 +0200
Message-ID: <1473336456.16529.0.camel@toganlabs.com>
From: Beth 'pidge' Flanagan <pidge@toganlabs.com>
To: Joshua Lock <joshua.g.lock@intel.com>, yocto@yoctoproject.org
Date: Thu, 08 Sep 2016 14:07:36 +0200
In-Reply-To: <cover.1473261757.git.joshua.g.lock@intel.com>
References: <cover.1473261757.git.joshua.g.lock@intel.com>
Organization: toganlabs.com
X-Mailer: Evolution 3.18.5.2-0ubuntu3 
Mime-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AuthUser: pidge@toganlabs.com
Subject: Re: [yocto autobuilder][PATCH 0/3] Fix buildlogger
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
X-List-Received-Date: Thu, 08 Sep 2016 12:15:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

merged into master. Thanks!

-b

On Wed, 2016-09-07 at 16:33 +0100, Joshua Lock wrote:
> Since build 999 we haven't seen any builds logged to the BuildLogs
> wiki page,
> that turns out to be because the JSON dicts keys are strings and thus
> the sort
> order isn't as expected, i.e. 999 > 1001.
>=20
> This series tidies up the buildlogger some and includes a fix for
> this issue by
> converting the keys of the dicts to a list of ints and sorting that
> to determine
> the most recent build.
>=20
> The following changes since commit
> ba01fe19440a91091fe15544ecc2809a79f19401:
>=20
> =C2=A0 nightly-qa-systemd.conf: Add create_eventlog property (2016-08-3=
1
> 21:22:11 +0100)
>=20
> are available in the git repository at:
>=20
> =C2=A0 git://git.yoctoproject.org/yocto-autobuilder joshuagl/buildlogge=
r
> =C2=A0 http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder/log/?h=3D=
joshu
> agl/buildlogger
>=20
> Joshua Lock (3):
> =C2=A0 buildlogger: remove old, incomplete, comment
> =C2=A0 buildlogger: don't hardcode YP AB in generated URL
> =C2=A0 buildlogger: fix sorting of recent builds
>=20
> =C2=A0bin/buildlogger=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0| 23 +++++++++++++----------
> =C2=A0etc/buildlogger.conf.example |=C2=A0=C2=A01 +
> =C2=A02 files changed, 14 insertions(+), 10 deletions(-)
>=20

