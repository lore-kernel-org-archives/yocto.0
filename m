Return-Path: <cshore@thecshore.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5992EE00B47; Tue, 30 May 2017 16:36:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_20,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [108.166.43.86 listed in list.dnswl.org]
	* -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.0572]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 455 seconds by postgrey-1.32 at yocto-www;
	Tue, 30 May 2017 16:36:43 PDT
Received: from smtp86.ord1c.emailsrvr.com (smtp86.ord1c.emailsrvr.com
	[108.166.43.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 274C1E00B31
	for <yocto@yoctoproject.org>; Tue, 30 May 2017 16:36:43 -0700 (PDT)
Received: from smtp11.relay.ord1c.emailsrvr.com (localhost [127.0.0.1])
	by smtp11.relay.ord1c.emailsrvr.com (SMTP Server) with ESMTP id
	59624A0226
	for <yocto@yoctoproject.org>; Tue, 30 May 2017 19:29:08 -0400 (EDT)
Received: from smtp118.ord1d.emailsrvr.com (relay.ord1c.rsapps.net
	[172.28.255.120])
	by smtp11.relay.ord1c.emailsrvr.com (SMTP Server) with ESMTPS id
	556C3A0150
	for <yocto@yoctoproject.org>; Tue, 30 May 2017 19:29:08 -0400 (EDT)
Received: from smtp7.relay.ord1d.emailsrvr.com (localhost [127.0.0.1])
	by smtp7.relay.ord1d.emailsrvr.com (SMTP Server) with ESMTP id
	6C9FEC0056; Tue, 30 May 2017 19:29:07 -0400 (EDT)
X-Auth-ID: cshore@thecshore.com
Received: by smtp7.relay.ord1d.emailsrvr.com (Authenticated sender:
	cshore-AT-thecshore.com) with ESMTPSA id 1B6B0C0052; 
	Tue, 30 May 2017 19:29:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=thecshore.com;
	s=20170504; t=1496186947;
	bh=IrDqmdDSgy2OnEPrEwXRExbL2IOizRU3+o7yDrIxorM=;
	h=Subject:From:To:Date:From;
	b=AKkXYzlW4WMZ3OqmPSnHR2IP9w1gYN68Y83GqzufyHVSdQDYXP7rKFWhknQztC9mk
	5J5y2hX+dUt37HsbC0t/n30HrMtXvBVtOQo1X9nA36TvW17pjow9SvGQkROonY1i8q
	05BqikHIMftfGI0jBU27RZ3McbvHlck1nuB2awsA=
X-Sender-Id: cshore@thecshore.com
Received: from danielu.thecshore.com (23-233-102-175.cpe.pppoe.ca
	[23.233.102.175]) (using TLSv1.2 with cipher AES256-GCM-SHA384)
	by 0.0.0.0:465 (trex/5.7.12); Tue, 30 May 2017 19:29:07 -0400
Message-ID: <1496186936.26139.1.camel@thecshore.com>
From: Daniel Dickinson <cshore@thecshore.com>
To: "Jolley, Stephen K" <stephen.k.jolley@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Date: Tue, 30 May 2017 19:28:56 -0400
In-Reply-To: <9ADD3FDE8B189B4AA2F8A3C711F8155E8EE144D2@fmsmsx111.amr.corp.intel.com>
References: <9ADD3FDE8B189B4AA2F8A3C711F8155E8EE144D2@fmsmsx111.amr.corp.intel.com>
X-Mailer: Evolution 3.22.6-1ubuntu1 
Mime-Version: 1.0
X-Mailman-Approved-At: Sat, 10 Jun 2017 06:58:52 -0700
Subject: =?UTF-8?B?UmU6IFlvY3RvIFByb2plY3QgU3RhdHVzIFdXMjLigJkxNw==?=
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 30 May 2017 23:36:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Stephen,

I haven't been participating much (created some layers, but since this
is a spare time thing for me, and 'because: life' I've not had chance
to do much with them (also haven't noticed any comments about them, so
probably not really interesting to anyone else), but for the below:

> =C2=B7=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Patches are flowing into=
 master but rate limited due to team
> travel/vacation. We=E2=80=99re continuing to see patch quality issues whi=
ch
> is limiting the flow.

Would it help to have a tiered system (and lists) for patches with
folks starting on the lower tier where someone from the upper tier
reviews and works with the lower tier to get the patches right, while
patches from upper tier contributors that tend to be good, get peer
review, but are a) given more immediate attention (in recognition of
the fact that the patch is likely already good to go, or a good thing
to discuss), and lower tier patches are a lower priority for getting
into tree, because they're more likely to break things (obviously with
committers moving between tiers based on history; a lower tier can
prove themselves and an upper tier can have issues that lead to needing
to deprioritize them (but why should be explained, even if it involves
uncomfortable conflict, rather than just a silent suppression).

Regards,

Daniel

>=20
> [If anyone has suggestions for other information you=E2=80=99d like to se=
e on
> this weekly status update, let us know!]
> =C2=A0
> Thanks,
>=20

