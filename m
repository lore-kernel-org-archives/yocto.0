Return-Path: <pidge@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DE63E00D31; Fri, 29 Jul 2016 08:50:33 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1DDCE00CC9
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 08:50:31 -0700 (PDT)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 69E071261EA;
	Fri, 29 Jul 2016 15:50:28 +0000 (UTC)
Received: from hp181.hostpapa.com (ip-10-229-2-62.us-west-2.compute.internal
	[10.229.2.62])
	by relay.mailchannels.net (Postfix) with ESMTPA id 6F6FF124623;
	Fri, 29 Jul 2016 15:50:27 +0000 (UTC)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from hp181.hostpapa.com (hp181.hostpapa.com [10.21.150.52])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.7.3); Fri, 29 Jul 2016 15:50:28 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostpapa|x-authuser|pidge@toganlabs.com
X-MailChannels-Auth-Id: hostpapa
X-MC-Loop-Signature: 1469807427946:3867924103
X-MC-Ingress-Time: 1469807427945
Received: from ip-217-103-177-37.ip.prioritytelecom.net
	([217.103.177.37]:42520 helo=[10.191.255.204])
	by hp181.hostpapa.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.86_1)
	(envelope-from <pidge@toganlabs.com>)
	id 1bTA3F-0019hp-0A; Fri, 29 Jul 2016 17:50:22 +0200
Message-ID: <1469807413.3657.1.camel@toganlabs.com>
From: Beth 'pidge' Flanagan <pidge@toganlabs.com>
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>, 
	yocto@yoctoproject.org
Date: Fri, 29 Jul 2016 17:50:13 +0200
In-Reply-To: <579B7A7B.7090703@linux.intel.com>
References: <1469805026-22041-1-git-send-email-anibal.limon@linux.intel.com>
	<1469806290.3657.0.camel@toganlabs.com>
	<579B7A7B.7090703@linux.intel.com>
Organization: toganlabs.com
X-Mailer: Evolution 3.18.5.2-0ubuntu3 
Mime-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AuthUser: pidge@toganlabs.com
Cc: joshua.g.lock@intel.com, pidge@togenlabs.com
Subject: Re: [PATCH][yocto-autobuilder] lib/buildsteps.py: fix report creation in nigthly-oecore
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
X-List-Received-Date: Fri, 29 Jul 2016 15:50:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2016-07-29 at 10:47 -0500, An=C3=ADbal Lim=C3=B3n wrote:
>=20
> On 07/29/2016 10:31 AM, Beth 'pidge' Flanagan wrote:
> >=20
> > I'd put this in a try except. What happens with eclipse?
> At this time we don't support eclipse, i'll add the try except and if
> fails use "unknown_branch: unknown_revision".
>=20
> 	alimon
>=20

Ah, some of us still build for it! :D Remember, we try to not break
stuff we still support.

-b

