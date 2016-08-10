Return-Path: <pidge@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED0E9E010C3; Wed, 10 Aug 2016 00:12:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [23.83.218.20 listed in list.dnswl.org]
Received: from blue.tulip.relay.mailchannels.net
	(blue.tulip.relay.mailchannels.net [23.83.218.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DD97E010BF
	for <yocto@yoctoproject.org>; Wed, 10 Aug 2016 00:12:49 -0700 (PDT)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 935301000BA;
	Wed, 10 Aug 2016 07:12:45 +0000 (UTC)
Received: from hp181.hostpapa.com (ip-10-229-2-62.us-west-2.compute.internal
	[10.229.2.62])
	by relay.mailchannels.net (Postfix) with ESMTPA id C654A101312;
	Wed, 10 Aug 2016 07:12:44 +0000 (UTC)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from hp181.hostpapa.com ([TEMPUNAVAIL]. [10.21.150.52])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.7.6); Wed, 10 Aug 2016 07:12:45 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostpapa|x-authuser|pidge@toganlabs.com
X-MailChannels-Auth-Id: hostpapa
X-MC-Loop-Signature: 1470813165223:4294526169
X-MC-Ingress-Time: 1470813165223
Received: from ip-217-103-177-37.ip.prioritytelecom.net
	([217.103.177.37]:50414 helo=[10.191.255.204])
	by hp181.hostpapa.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.87)
	(envelope-from <pidge@toganlabs.com>)
	id 1bXNgr-0030tn-VI; Wed, 10 Aug 2016 09:12:38 +0200
Message-ID: <1470813155.4144.2.camel@toganlabs.com>
From: Beth 'pidge' Flanagan <pidge@toganlabs.com>
To: Bill Randle <william.c.randle@intel.com>, yocto@yoctoproject.org
Date: Wed, 10 Aug 2016 09:12:35 +0200
In-Reply-To: <1470764047-8097-1-git-send-email-william.c.randle@intel.com>
References: <1470764047-8097-1-git-send-email-william.c.randle@intel.com>
Organization: toganlabs.com
X-Mailer: Evolution 3.18.5.2-0ubuntu3 
Mime-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AuthUser: pidge@toganlabs.com
Subject: Re: [yocto-autobuilder][PATCH] nightly-musl.conf: add world build
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
X-List-Received-Date: Wed, 10 Aug 2016 07:12:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Merged into master,

Thanks
-b

On Tue, 2016-08-09 at 10:34 -0700, Bill Randle wrote:
> Add world build for musl.
>=20
> [YOCTO #10105]
>=20
> Signed-off-by: Bill Randle <william.c.randle@intel.com>
> ---
> =C2=A0buildset-config.controller/nightly-musl.conf | 2 +-
> =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/buildset-config.controller/nightly-musl.conf b/buildset-
> config.controller/nightly-musl.conf
> index 1f6aba5..cc2aea0 100644
> --- a/buildset-config.controller/nightly-musl.conf
> +++ b/buildset-config.controller/nightly-musl.conf
> @@ -12,7 +12,7 @@ steps: [{'SetDest':{}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0'buildhistory' : False, 'distro':
> 'poky',
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0'atextappend' : '\nTCLIBC=3D"musl"\n' }},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'CreateBBLayersC=
onf': {'buildprovider' : 'yocto'}},
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'BuildImages': {'imag=
es':=C2=A0=C2=A0'core-image-minimal core-image-
> full-cmdline core-image-sato'}},
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'BuildImages': {'imag=
es':=C2=A0=C2=A0'core-image-minimal core-image-
> full-cmdline core-image-sato world'}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'DownloadErrorRe=
ports': {}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'SendErrorReport=
': {}}]
> =C2=A0

