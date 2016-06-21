Return-Path: <pidge@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DCE6AE00708; Tue, 21 Jun 2016 00:02:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_WEB autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [23.83.214.10 listed in list.dnswl.org]
	*  0.8 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable web server
	*      [213.46.252.136 listed in dnsbl.sorbs.net]
Received: from gt-egress-002.mailchannels.net
	(barb.maple.relay.mailchannels.net [23.83.214.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9542BE004F1
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2016 00:02:09 -0700 (PDT)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 9F982A09A5;
	Tue, 21 Jun 2016 06:54:03 +0000 (UTC)
Received: from hp181.hostpapa.com
	(ip-10-123-105-117.us-west-2.compute.internal [10.123.105.117])
	by relay.mailchannels.net (Postfix) with ESMTPA id B644FA01D1;
	Tue, 21 Jun 2016 06:54:02 +0000 (UTC)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from hp181.hostpapa.com (hp181.hostpapa.com [10.135.9.54])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.6.14); Tue, 21 Jun 2016 06:54:03 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostpapa|x-authuser|pidge@toganlabs.com
X-MailChannels-Auth-Id: hostpapa
X-MC-Loop-Signature: 1466492043074:2604434401
X-MC-Ingress-Time: 1466492043073
Received: from [213.46.252.136] (port=58104 helo=[192.168.227.30])
	by hp181.hostpapa.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.86_1)
	(envelope-from <pidge@toganlabs.com>)
	id 1bFFZQ-001mYR-2M; Tue, 21 Jun 2016 08:54:01 +0200
Message-ID: <1466492027.2196.0.camel@toganlabs.com>
From: Beth 'pidge' Flanagan <pidge@toganlabs.com>
To: Bill Randle <william.c.randle@intel.com>, yocto@yoctoproject.org
Date: Tue, 21 Jun 2016 08:53:47 +0200
In-Reply-To: <1466434811-32660-1-git-send-email-william.c.randle@intel.com>
References: <1466434811-32660-1-git-send-email-william.c.randle@intel.com>
Organization: toganlabs.com
X-Mailer: Evolution 3.18.5.2-0ubuntu3 
Mime-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AuthUser: pidge@toganlabs.com
Subject: Re: [yocto-autobuilder][PATCH] nightly-world-lsb.conf: skip Publish step so artifacts don't overwrite nightly-world ones
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
X-List-Received-Date: Tue, 21 Jun 2016 07:02:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2016-06-20 at 08:00 -0700, Bill Randle wrote:
> Signed-off-by: Bill Randle <william.c.randle@intel.com>
> ---
> =C2=A0buildset-config.controller/nightly-world-lsb.conf | 5 +++--
> =C2=A01 file changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/buildset-config.controller/nightly-world-lsb.conf
> b/buildset-config.controller/nightly-world-lsb.conf
> index 4c9994c..f755920 100644
> --- a/buildset-config.controller/nightly-world-lsb.conf
> +++ b/buildset-config.controller/nightly-world-lsb.conf
> @@ -21,6 +21,7 @@ steps: [{'SetDest':{}},
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
> +# skip Publish step so artifacts don't overwrite nightly-world ones
> +#=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'PublishArtifacts': =
{'artifacts': ['ipk', 'rpm', 'deb']}}]
> =C2=A0

It would be best here to just remove the lines rather than comment them
out. Please resubmit with the lines removed.

> --=C2=A0
> 2.5.5
>=20


--=20
Beth 'pidge' Flanagan <pidge@toganlabs.com>
toganlabs.com


