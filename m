Return-Path: <pidge@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B0B2E00D03; Wed, 12 Oct 2016 08:30:17 -0700 (PDT)
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
X-Greylist: delayed 16349 seconds by postgrey-1.32 at yocto-www;
	Wed, 12 Oct 2016 08:30:12 PDT
Received: from brown.birch.relay.mailchannels.net
	(brown.birch.relay.mailchannels.net [23.83.209.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF2D2E00CFE
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2016 08:30:12 -0700 (PDT)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 54495A30B7;
	Wed, 12 Oct 2016 15:22:13 +0000 (UTC)
Received: from hp181.hostpapa.com (ip-10-229-10-199.us-west-2.compute.internal
	[10.229.10.199])
	by relay.mailchannels.net (Postfix) with ESMTPA id 8B525A10F6;
	Wed, 12 Oct 2016 15:22:11 +0000 (UTC)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from hp181.hostpapa.com (hp181.hostpapa.com [10.104.207.55])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.7.8); Wed, 12 Oct 2016 15:22:13 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostpapa|x-authuser|pidge@toganlabs.com
X-MailChannels-Auth-Id: hostpapa
X-MC-Loop-Signature: 1476285732221:1758782185
X-MC-Ingress-Time: 1476285732219
Received: from [94.186.205.99] (port=33274 helo=[10.200.101.105])
	by hp181.hostpapa.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.87)
	(envelope-from <pidge@toganlabs.com>)
	id 1buLMA-003p8f-8s; Wed, 12 Oct 2016 17:22:11 +0200
Message-ID: <1476285726.7502.8.camel@toganlabs.com>
From: Beth 'pidge' Flanagan <pidge@toganlabs.com>
To: Bill Randle <bill.randle@gmail.com>, gmane@reliableembeddedsystems.com
Date: Wed, 12 Oct 2016 17:22:06 +0200
In-Reply-To: <CA+n--H93EbhOgt5++CAuWqpdDncQwB-rifjKztRYcmNLqTzp+g@mail.gmail.com>
References: <35ab47fa82f7707f84e445919ddbbef5@reliableembeddedsystems.com>
	<CA+n--H93EbhOgt5++CAuWqpdDncQwB-rifjKztRYcmNLqTzp+g@mail.gmail.com>
Organization: toganlabs.com
X-Mailer: Evolution 3.18.5.2-0ubuntu3 
Mime-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AuthUser: pidge@toganlabs.com
Cc: joshua.g.lock@intel.com, yocto@yoctoproject.org,
	robert.berger@reliableembeddedsystems.com
Subject: Re: [yocto-autobuilder][PATCH] PublishArtifacts.py: deal only with built toolchains, cp also md5 and manifests
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
X-List-Received-Date: Wed, 12 Oct 2016 15:30:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2016-10-12 at 07:28 -0700, Bill Randle wrote:
> Hi Robert,
>=20
> Then "normal" method to send patches is via direct insertion into the
> email, rather than an attachment (see git-send-email). Also, it is
> missing a commit comment as the first text in the patch file.
> Otherwise, it looks good to me now.
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0-Bill

I'm going to pull this but please, in the future, follow the above.

-b



>=20
> 2016-10-09 23:44 GMT-07:00=C2=A0=C2=A0<gmane@reliableembeddedsystems.co=
m>:
> >=20
> >=20

