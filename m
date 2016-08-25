Return-Path: <pidge@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48D52E01073; Thu, 25 Aug 2016 01:52:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [23.83.218.23 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from brown.tulip.relay.mailchannels.net
	(brown.tulip.relay.mailchannels.net [23.83.218.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BBC1E0106D
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2016 01:52:29 -0700 (PDT)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 1B9981207A7;
	Thu, 25 Aug 2016 08:52:25 +0000 (UTC)
Received: from hp181.hostpapa.com (ip-10-229-2-62.us-west-2.compute.internal
	[10.229.2.62])
	by relay.mailchannels.net (Postfix) with ESMTPA id 52A861206AC;
	Thu, 25 Aug 2016 08:52:24 +0000 (UTC)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from hp181.hostpapa.com ([TEMPUNAVAIL]. [10.45.13.172])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.7.6); Thu, 25 Aug 2016 08:52:25 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostpapa|x-authuser|pidge@toganlabs.com
X-MailChannels-Auth-Id: hostpapa
X-MC-Loop-Signature: 1472115144782:3534483692
X-MC-Ingress-Time: 1472115144782
Received: from [37.228.247.236] (port=27656 helo=[192.168.0.37])
	by hp181.hostpapa.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.87)
	(envelope-from <pidge@toganlabs.com>)
	id 1bcqOX-004Are-EZ; Thu, 25 Aug 2016 10:52:18 +0200
Message-ID: <1472115135.3536.0.camel@toganlabs.com>
From: Beth 'pidge' Flanagan <pidge@toganlabs.com>
To: Bill Randle <william.c.randle@intel.com>, yocto@yoctoproject.org
Date: Thu, 25 Aug 2016 09:52:15 +0100
In-Reply-To: <1472060434-14175-1-git-send-email-william.c.randle@intel.com>
References: <1472060434-14175-1-git-send-email-william.c.randle@intel.com>
Organization: toganlabs.com
X-Mailer: Evolution 3.18.5.2-0ubuntu3 
Mime-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AuthUser: pidge@toganlabs.com
Subject: Re: [yocto-autobuilder][PATCH] nightly-wic.conf: add additional config settings for efi images
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
X-List-Received-Date: Thu, 25 Aug 2016 08:52:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2016-08-24 at 10:40 -0700, Bill Randle wrote:
> Building efi disk images now requires extra config settings, so add
> IMAGE_FSTYPES and MACHINE_FEATURES appends to the auto.conf file.
>=20
> Signed-off-by: Bill Randle <william.c.randle@intel.com>
>=20

Merged to master.

-b

> ---
> =C2=A0buildset-config.controller/nightly-wic.conf | 8 ++++----
> =C2=A01 file changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/buildset-config.controller/nightly-wic.conf b/buildset-
> config.controller/nightly-wic.conf
> index 1b91852..14e2411 100644
> --- a/buildset-config.controller/nightly-wic.conf
> +++ b/buildset-config.controller/nightly-wic.conf
> @@ -9,24 +9,24 @@ steps: [{'SetDest':{}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'RunPreamble':{}=
},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'GetDistroVersio=
n':{'distro': 'poky'}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'CreateBBLayersC=
onf':{'buildprovider':'yocto'}},
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'CreateAutoConf':{'ma=
chine':'qemux86'}},
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'CreateAutoConf':{'ma=
chine':'qemux86',
> 'atextappend':'\nIMAGE_FSTYPES +=3D " hddimg"\nMACHINE_FEATURES_append
> =3D " efi"\n'}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'BuildImages':{'=
images':'syslinux syslinux-native parted-
> native gptfdisk-native dosfstools-native mtools-native'}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'BuildImages':{'=
images':'core-image-sato'}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'CreateWicImages=
':{'wic_img_type':'directdisk',
> 'target_img':'core-image-sato'}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'CreateWicImages=
':{'wic_img_type':'directdisk-gpt',
> 'target_img':'core-image-sato'}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'CreateWicImages=
':{'wic_img_type':'mkefidisk',
> 'target_img':'core-image-sato'}},
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'CreateAutoConf':{'ma=
chine':'genericx86'}},
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'CreateAutoConf':{'ma=
chine':'genericx86',
> 'atextappend':'\nIMAGE_FSTYPES +=3D " hddimg"\nMACHINE_FEATURES_append
> =3D " efi"\n'}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'BuildImages':{'=
images':'syslinux syslinux-native parted-
> native gptfdisk-native dosfstools-native mtools-native'}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'BuildImages':{'=
images':'core-image-sato'}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'CreateWicImages=
':{'wic_img_type':'directdisk',
> 'target_img':'core-image-sato'}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'CreateWicImages=
':{'wic_img_type':'directdisk-gpt',
> 'target_img':'core-image-sato'}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'CreateWicImages=
':{'wic_img_type':'mkefidisk',
> 'target_img':'core-image-sato'}},
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'CreateAutoConf':{'ma=
chine':'qemux86-64'}},
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'CreateAutoConf':{'ma=
chine':'qemux86-64',
> 'atextappend':'\nIMAGE_FSTYPES +=3D " hddimg"\nMACHINE_FEATURES_append
> =3D " efi"\n'}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'BuildImages':{'=
images':'syslinux syslinux-native parted-
> native gptfdisk-native dosfstools-native mtools-native'}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'BuildImages':{'=
images':'core-image-sato'}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'CreateWicImages=
':{'wic_img_type':'directdisk',
> 'target_img':'core-image-sato'}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'CreateWicImages=
':{'wic_img_type':'directdisk-gpt',
> 'target_img':'core-image-sato'}},
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'CreateAutoConf':{'ma=
chine':'genericx86-64'}},
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'CreateAutoConf':{'ma=
chine':'genericx86-64',
> 'atextappend':'\nIMAGE_FSTYPES +=3D " hddimg"\nMACHINE_FEATURES_append
> =3D " efi"\n'}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'BuildImages':{'=
images':'syslinux syslinux-native parted-
> native gptfdisk-native dosfstools-native mtools-native'}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'BuildImages':{'=
images':'core-image-sato'}},
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{'CreateWicImages=
':{'wic_img_type':'directdisk',
> 'target_img':'core-image-sato'}},

