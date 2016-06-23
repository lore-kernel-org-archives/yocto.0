Return-Path: <pidge@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9AE5E00CA6; Thu, 23 Jun 2016 08:44:14 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3E01E00CA1
	for <yocto@yoctoproject.org>; Thu, 23 Jun 2016 08:44:11 -0700 (PDT)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id B15871BD1AD;
	Thu, 23 Jun 2016 15:36:07 +0000 (UTC)
Received: from hp181.hostpapa.com (ip-10-229-11-165.us-west-2.compute.internal
	[10.229.11.165])
	by relay.mailchannels.net (Postfix) with ESMTPA id DC33A1BC06D;
	Thu, 23 Jun 2016 15:36:05 +0000 (UTC)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from hp181.hostpapa.com ([TEMPUNAVAIL]. [10.132.194.146])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.6.15); Thu, 23 Jun 2016 15:36:07 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostpapa|x-authuser|pidge@toganlabs.com
X-MailChannels-Auth-Id: hostpapa
X-MC-Loop-Signature: 1466696166594:2921762019
X-MC-Ingress-Time: 1466696166593
Received: from ip-217-103-177-37.ip.prioritytelecom.net
	([217.103.177.37]:39476 helo=[10.191.255.204])
	by hp181.hostpapa.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.86_1)
	(envelope-from <pidge@toganlabs.com>)
	id 1bG6fe-0046th-HN; Thu, 23 Jun 2016 17:36:00 +0200
Message-ID: <1466696154.2253.1.camel@toganlabs.com>
From: Beth 'pidge' Flanagan <pidge@toganlabs.com>
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>, 
	yocto@yoctoproject.org
Date: Thu, 23 Jun 2016 17:35:54 +0200
In-Reply-To: <576BFFDD.2090500@linux.intel.com>
References: <1466550472-1365-1-git-send-email-anibal.limon@linux.intel.com>
	<1466581487.3278.17.camel@toganlabs.com>
	<576AF245.4000400@linux.intel.com>
	<576BFFDD.2090500@linux.intel.com>
Organization: toganlabs.com
X-Mailer: Evolution 3.18.5.2-0ubuntu3 
Mime-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AuthUser: pidge@toganlabs.com
Cc: joshua.g.lock@intel.com
Subject: Re: [[yocto-autobuilder][PATCHv2] 00/15] Add support for generate bitbake/oe-selftest error reports
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
X-List-Received-Date: Thu, 23 Jun 2016 15:44:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2016-06-23 at 10:27 -0500, An=C3=ADbal Lim=C3=B3n wrote:
>=20
> On 06/22/2016 03:17 PM, An=C3=ADbal Lim=C3=B3n wrote:
> >=20
> >=20
> >=20
> > On 06/22/2016 02:44 AM, Beth 'pidge' Flanagan wrote:
> > >=20
> > > On Tue, 2016-06-21 at 18:07 -0500, An=C3=ADbal Lim=C3=B3n wrote:
> > > >=20
> > > > This v2 adds support for generate also oe-selftest reports this
> > > > is
> > > > almost
> > > > the previous version with changes requested in review [1], the
> > > > next
> > > > patches
> > > > starts from patch,
> > > >=20
> > > > 	autobuilder/lib/{ABtools,builsteps}.py: Create
> > > > save_error_report func
> > > A few comments.
> > >=20
> > > - Please rebase the last two commits. They can be merged into
> > > prior
> > > commits.=C2=A0
> > >=20
> > > Example: 0eb495d93eefa9ead8f4b1242f251f1a2288db68 should be
> > > squashed
> > > into 83b6707622128436b4ece9d4c2a89311b000c209
> > >=20
> > > We shouldn't need rename commits for a pull request that created
> > > the
> > > original thing we're renaming.
> > >=20
> > > - Please fix the title for
> > > 83b6707622128436b4ece9d4c2a89311b000c209
> > > 's/buiidsets/buildsets/'
> > I squashed the changes now at,
> >=20
> > http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/log/?h=3D
> > contrib/alimon/devel2
> >=20
> > 	alimon
> Hi,
>=20
> The Error report web needed changes are now integrated [1], if you
> ack'ed the changes we could proceed to integrate/deploy these changes
> to
> enable send Bitbake/OE-seltest errors to ERW.
>=20
> [1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7583#c14
>=20
> Cheers,
> 	alimon

Let me review them tonight and if they're ok, I'll pull them into
master.

-b


>=20
> >=20
> > >=20
> > >=20
> > >=20
> > > -b
> > >=20

