Return-Path: <pidge@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECA77E00EC8; Mon, 27 Jun 2016 05:28:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [23.83.209.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from buffalo.birch.relay.mailchannels.net
	(buffalo.birch.relay.mailchannels.net [23.83.209.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17B17E00EC7
	for <yocto@yoctoproject.org>; Mon, 27 Jun 2016 05:28:12 -0700 (PDT)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id D00B5A07DC;
	Mon, 27 Jun 2016 12:28:10 +0000 (UTC)
Received: from hp181.hostpapa.com
	(ip-10-215-133-244.us-west-2.compute.internal [10.215.133.244])
	by relay.mailchannels.net (Postfix) with ESMTPA id 1E1A8A076D;
	Mon, 27 Jun 2016 12:28:10 +0000 (UTC)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from hp181.hostpapa.com ([TEMPUNAVAIL]. [10.21.150.52])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.6.15); Mon, 27 Jun 2016 12:28:10 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostpapa|x-authuser|pidge@toganlabs.com
X-MailChannels-Auth-Id: hostpapa
X-MC-Loop-Signature: 1467030490435:4001648083
X-MC-Ingress-Time: 1467030490434
Received: from [176.252.54.16] (port=52874 helo=mion)
	by hp181.hostpapa.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.86_1)
	(envelope-from <pidge@toganlabs.com>)
	id 1bHVdx-004DIr-CZ; Mon, 27 Jun 2016 14:28:04 +0200
Message-ID: <1467030470.31845.7.camel@toganlabs.com>
From: Beth 'pidge' Flanagan <pidge@toganlabs.com>
To: Bill Randle <william.c.randle@intel.com>, yocto@yoctoproject.org
Date: Mon, 27 Jun 2016 14:27:50 +0200
In-Reply-To: <1466780752-5264-1-git-send-email-william.c.randle@intel.com>
References: <1466780752-5264-1-git-send-email-william.c.randle@intel.com>
Organization: toganlabs.com
X-Mailer: Evolution 3.18.5.2-0ubuntu3 
Mime-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AuthUser: pidge@toganlabs.com
Subject: Re: [autobuilder][PATCH] nightly-arm.conf: build Cortex-A8 toolchains
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
X-List-Received-Date: Mon, 27 Jun 2016 12:28:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Pulled into master, Thanks!

-b

On Fri, 2016-06-24 at 08:05 -0700, Bill Randle wrote:
> Since met-fsl-arm was dropped from the nightly builds, the Cortex-A8
> cross-
> compiler used for beaglebone builds is not created. Include toochain
> builds as part of nightly-arm now, so compiler is available for users
> of the beaglebone machine.
>=20
> [YOCTO #9810]
>=20
> Signed-off-by: Bill Randle <william.c.randle@intel.com>
> ---
> =C2=A0buildset-config.controller/nightly-arm.conf | 3 +++
> =C2=A01 file changed, 3 insertions(+)
>=20
> diff --git a/buildset-config.controller/nightly-arm.conf b/buildset-
> config.controller/nightly-arm.conf
> index 76244ed..32920cf 100644
> --- a/buildset-config.controller/nightly-arm.conf
> +++ b/buildset-config.controller/nightly-arm.conf
> @@ -15,7 +15,11 @@ steps: [{'SetDest':{}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'BuildImages': {=
'images': 'core-image-sato core-image-sato-
> dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'RunSanityTests'=
: {'images': 'core-image-minimal core-
> image-sato core-image-sato-sdk'}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'CreateAutoConf'=
: {'machine': 'beagleboard', 'SDKMACHINE' :
> 'i686', 'distro': 'poky'}},
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'BuildToolchainImages=
': {}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'BuildImages': {=
'images': 'core-image-sato core-image-sato-
> dev core-image-sato-sdk core-image-minimal core-image-minimal-dev
> core-image-sato-sdk-ptest'}},
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'CreateAutoConf': {'m=
achine': 'beagleboard', 'SDKMACHINE' :
> 'x86_64', 'distro': 'poky'}},
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'BuildToolchainImages=
': {}},
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'BuildImages': {'imag=
es': '-c populate_sdk_ext core-image-
> minimal'}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'CreateAutoConf'=
: {'machine': 'qemuarm', 'SDKMACHINE' :
> 'i686', 'distro': 'poky', 'buildhistory' : False}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'BuildToolchainI=
mages': {}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'RunSDKSanityTes=
ts': {'images': 'core-image-sato'}},
--=20
Beth 'pidge' Flanagan <pidge@toganlabs.com>
toganlabs.com


