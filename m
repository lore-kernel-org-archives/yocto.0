Return-Path: <pidge@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35A00E00978; Mon, 25 Jul 2016 06:46:27 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D51BBE0096A
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 06:46:23 -0700 (PDT)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id E3FDF10018E;
	Mon, 25 Jul 2016 13:46:21 +0000 (UTC)
Received: from hp181.hostpapa.com (ip-10-27-139-41.us-west-2.compute.internal
	[10.27.139.41])
	by relay.mailchannels.net (Postfix) with ESMTPA id F041E101E12;
	Mon, 25 Jul 2016 13:46:20 +0000 (UTC)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from hp181.hostpapa.com ([TEMPUNAVAIL]. [10.107.128.240])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.7.3); Mon, 25 Jul 2016 13:46:21 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostpapa|x-authuser|pidge@toganlabs.com
X-MailChannels-Auth-Id: hostpapa
X-MC-Loop-Signature: 1469454381517:3478786686
X-MC-Ingress-Time: 1469454381517
Received: from ip-217-103-177-37.ip.prioritytelecom.net
	([217.103.177.37]:40726 helo=[10.191.255.204])
	by hp181.hostpapa.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.86_1)
	(envelope-from <pidge@toganlabs.com>)
	id 1bRgCz-003EoU-Re; Mon, 25 Jul 2016 15:46:15 +0200
Message-ID: <1469454371.12579.3.camel@toganlabs.com>
From: Beth 'pidge' Flanagan <pidge@toganlabs.com>
To: Bill Randle <william.c.randle@intel.com>, yocto@yoctoproject.org
Date: Mon, 25 Jul 2016 15:46:11 +0200
In-Reply-To: <1469208928-7711-1-git-send-email-william.c.randle@intel.com>
References: <1469208928-7711-1-git-send-email-william.c.randle@intel.com>
Organization: toganlabs.com
X-Mailer: Evolution 3.18.5.2-0ubuntu3 
Mime-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AuthUser: pidge@toganlabs.com
Subject: Re: [yocto-autobuilder][PATCH] nightly-wic.conf: build genericx86 wic images
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
X-List-Received-Date: Mon, 25 Jul 2016 13:46:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Merged into master


-b

On Fri, 2016-07-22 at 10:35 -0700, Bill Randle wrote:
> QA requested wic images for genericx86, as well as x86-64 so include
> config and build for them.
>=20
> [YOCTO #10006]
>=20
> Signed-off-by: Bill Randle <william.c.randle@intel.com>
> ---
> =C2=A0buildset-config.controller/nightly-wic.conf | 8 +++++++-
> =C2=A01 file changed, 7 insertions(+), 1 deletion(-)
>=20
> diff --git a/buildset-config.controller/nightly-wic.conf b/buildset-
> config.controller/nightly-wic.conf
> index 27584cb..47565ba 100644
> --- a/buildset-config.controller/nightly-wic.conf
> +++ b/buildset-config.controller/nightly-wic.conf
> @@ -9,6 +9,12 @@ steps: [{'SetDest':{}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'RunPreamble':{}=
},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'GetDistroVersio=
n':{'distro': 'poky'}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'CreateBBLayersC=
onf':{'buildprovider':'yocto'}},
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'CreateAutoConf':{'ma=
chine':'genericx86'}},
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'BuildImages':{'image=
s':'syslinux syslinux-native parted-
> native gptfdisk-native dosfstools-native mtools-native'}},
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'BuildImages':{'image=
s':'core-image-sato'}},
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'CreateWicImages':{'w=
ic_img_type':'directdisk',
> 'target_img':'core-image-sato'}},
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'CreateWicImages':{'w=
ic_img_type':'directdisk-gpt',
> 'target_img':'core-image-sato'}},
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'CreateWicImages':{'w=
ic_img_type':'mkefidisk',
> 'target_img':'core-image-sato'}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'CreateAutoConf'=
:{'machine':'qemux86-64'}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'BuildImages':{'=
images':'syslinux syslinux-native parted-
> native gptfdisk-native dosfstools-native mtools-native'}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'BuildImages':{'=
images':'core-image-sato'}},
> @@ -20,5 +26,5 @@ steps: [{'SetDest':{}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'CreateWicImages=
':{'wic_img_type':'directdisk',
> 'target_img':'core-image-sato'}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'CreateWicImages=
':{'wic_img_type':'directdisk-gpt',
> 'target_img':'core-image-sato'}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'CreateWicImages=
':{'wic_img_type':'mkefidisk',
> 'target_img':'core-image-sato'}},
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'PublishArtifacts': {=
'artifacts': ['qemux86-64',
> 'genericx86-64']}}]
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'PublishArtifacts': {=
'artifacts': ['qemux86-64',
> 'genericx86', 'genericx86-64']}}]
> =C2=A0

