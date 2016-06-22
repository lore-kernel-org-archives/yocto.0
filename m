Return-Path: <pidge@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8AF2E00971; Wed, 22 Jun 2016 01:02:10 -0700 (PDT)
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
Received: from gt-egress-002.mailchannels.net
	(barb.maple.relay.mailchannels.net [23.83.214.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C58CE0084D
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 01:02:06 -0700 (PDT)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 7AC1920812;
	Wed, 22 Jun 2016 08:02:05 +0000 (UTC)
Received: from hp181.hostpapa.com
	(ip-10-215-133-244.us-west-2.compute.internal [10.215.133.244])
	by relay.mailchannels.net (Postfix) with ESMTPA id A2DC520A67;
	Wed, 22 Jun 2016 08:02:04 +0000 (UTC)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from hp181.hostpapa.com (hp181.hostpapa.com [10.132.194.146])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.6.14); Wed, 22 Jun 2016 08:02:05 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostpapa|x-authuser|pidge@toganlabs.com
X-MailChannels-Auth-Id: hostpapa
X-MC-Loop-Signature: 1466582525005:4124990249
X-MC-Ingress-Time: 1466582525004
Received: from ip-217-103-177-37.ip.prioritytelecom.net
	([217.103.177.37]:36552 helo=[10.191.255.204])
	by hp181.hostpapa.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.86_1)
	(envelope-from <pidge@toganlabs.com>)
	id 1bFd6o-001z93-Mo; Wed, 22 Jun 2016 10:02:04 +0200
Message-ID: <1466582519.3278.18.camel@toganlabs.com>
From: Beth 'pidge' Flanagan <pidge@toganlabs.com>
To: Bill Randle <william.c.randle@intel.com>, yocto@yoctoproject.org
Date: Wed, 22 Jun 2016 10:01:59 +0200
In-Reply-To: <1466519880-5600-1-git-send-email-william.c.randle@intel.com>
References: <1466519880-5600-1-git-send-email-william.c.randle@intel.com>
Organization: toganlabs.com
X-Mailer: Evolution 3.18.5.2-0ubuntu3 
Mime-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AuthUser: pidge@toganlabs.com
Subject: Re: [yocto-autobuilder][PATCHv2] nightly-world-lsb.conf: skip Publish step so artifacts don't overwrite nightly-world ones
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
X-List-Received-Date: Wed, 22 Jun 2016 08:02:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Pulled into master, thanks!

-b

On Tue, 2016-06-21 at 07:38 -0700, Bill Randle wrote:
> Signed-off-by: Bill Randle <william.c.randle@intel.com>
> ---
> v2: delete line, rather than commenting it out
>=20
> =C2=A0buildset-config.controller/nightly-world-lsb.conf | 3 +--
> =C2=A01 file changed, 1 insertion(+), 2 deletions(-)
>=20
> diff --git a/buildset-config.controller/nightly-world-lsb.conf
> b/buildset-config.controller/nightly-world-lsb.conf
> index 4c9994c..472a714 100644
> --- a/buildset-config.controller/nightly-world-lsb.conf
> +++ b/buildset-config.controller/nightly-world-lsb.conf
> @@ -21,6 +21,5 @@ steps: [{'SetDest':{}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0'distro': 'poky-lsb'}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'CreateBBLayersC=
onf': {'buildprovider' : 'yocto'}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'BuildImages': {=
'images': 'world'}},
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'SendErrorReport': {}=
},
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'PublishArtifacts': {=
'artifacts': ['ipk', 'rpm', 'deb']}}]
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'SendErrorReport': {}=
}]
> =C2=A0

