Return-Path: <pidge@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20216E00E8E; Mon, 13 Jun 2016 08:53:06 -0700 (PDT)
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
X-Greylist: delayed 24436 seconds by postgrey-1.32 at yocto-www;
	Mon, 13 Jun 2016 08:53:03 PDT
Received: from gt-egress-002.mailchannels.net
	(barb.maple.relay.mailchannels.net [23.83.214.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83D00E00E88
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2016 08:53:02 -0700 (PDT)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 711EE62A77;
	Mon, 13 Jun 2016 15:53:00 +0000 (UTC)
Received: from hp181.hostpapa.com
	(ip-10-123-105-117.us-west-2.compute.internal [10.123.105.117])
	by relay.mailchannels.net (Postfix) with ESMTPA id C00E46308B;
	Mon, 13 Jun 2016 15:52:58 +0000 (UTC)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from hp181.hostpapa.com (hp181.hostpapa.com [10.25.19.46])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.6.14); Mon, 13 Jun 2016 15:53:00 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostpapa|x-authuser|pidge@toganlabs.com
X-MailChannels-Auth-Id: hostpapa
X-MC-Loop-Signature: 1465833179972:95519700
X-MC-Ingress-Time: 1465833179972
Received: from ip-217-103-177-37.ip.prioritytelecom.net
	([217.103.177.37]:43642 helo=[10.191.255.204])
	by hp181.hostpapa.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.86_1)
	(envelope-from <pidge@toganlabs.com>)
	id 1bCUAa-003Hfo-Kg; Mon, 13 Jun 2016 17:52:58 +0200
Message-ID: <1465833171.25504.1.camel@toganlabs.com>
From: Beth 'pidge' Flanagan <pidge@toganlabs.com>
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>, 
	"Randle, William C" <william.c.randle@intel.com>, "Lock, Joshua G"
	<joshua.g.lock@intel.com>, "michael@yoctoproject.org"
	<halstead@yoctoproject.org>
Date: Mon, 13 Jun 2016 16:52:51 +0100
In-Reply-To: <575ECC93.9000600@linux.intel.com>
References: <5759DE3F.9040002@linux.intel.com>
	<1465807715.4615.14.camel@toganlabs.com>
	<575ECC93.9000600@linux.intel.com>
Organization: toganlabs.com
X-Mailer: Evolution 3.18.5.2-0ubuntu3 
Mime-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AuthUser: pidge@toganlabs.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-autobuilder] [RFC] Add support for generate bitbake error reports
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
X-List-Received-Date: Mon, 13 Jun 2016 15:53:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2016-06-13 at 10:09 -0500, An=C3=ADbal Lim=C3=B3n wrote:
>=20
> On 06/13/2016 03:48 AM, Beth 'pidge' Flanagan wrote:
> >=20
> > On Thu, 2016-06-09 at 16:23 -0500, An=C3=ADbal Lim=C3=B3n wrote:
> > >=20
> > > Hi folks,
> > >=20
> > > Currently we support to send error reports to
> > > errors.yoctoproject.org
> > > about failing tasks on bitbake using SendErrorReport buildstep
> > > but we
> > > have a lack of bitbake related errors like exceptions.
> > >=20
> > > A bug exist to implement this support into Error report web [1],
> > > i'm
> > > working on it but for generate bitbake error reports there's a
> > > need
> > > of
> > > some process monitoring the bitbake output in this case the Yocto
> > > Autobuilder.
> > >=20
> > > This email is for review my current implementation for generate
> > > bitbake
> > > error reports in the Autobuilder [2] next i'll try to explain how
> > > it
> > > works.
> > >=20
> > > I aadded a BitbakeShellCommand [3] class for use in the
> > > buildsteps
> > > that
> > > executes bitbake the main objective of this class is to have
> > > common
> > > operations to be made in bitbake commands like create error
> > > reports
> > > if
> > > fails.
> > >=20
> > > For create error reports this class add an stdio observer to look
> > > at
> > > bitbake output and if bitbake fails review the bitbake output for
> > > identify if the failure is an non-related task error [4]. If the
> > > observer found bitbake error creates an Error report with the
> > > information in the master controller.
> > >=20
> > > In order to send the bitbake error to Error report web the
> > > controller
> > > transfer the report to the worker using a new DownloadDirectory
> > > implementation that i made [5], the SendErrorReport buildstep
> > > works
> > > on
> > > the worker side so it's easy to transfer the reports from master
> > > to
> > > worker instead of send it by master.
> > >=20
> > > Finally to complete with the job of have the bitbake errors
> > > reports
> > > the
> > > Error report web changes need=C2=A0=C2=A0(i'm working on it) to be
> > > integrated
> > > first in order to don't break anything.
> > >=20
> > > Please review it and provide me feedback.
> > >=20
> >=20
> > 1. fix the commit message to ea1d5b35bc77bad5d2
> > 2. in same, why are you removing buildset-config.controller/poky-
> > tiny.conf? I believe this is still supported (and even if it isn't
> > in
> > master, we maintain backwards compatibility)
> Thanks for notice the removal of poky-tiny it wasn't my intention, i
> did
> an script to update the buildsets and seems that don't work well.
> I'll
> fix the last commit message ea1d5b35bc77bad5d2 and also include the
> poky-tiny buildset.
>=20

Great, if you can get this onto a dev cluster (halstead should have
info here on connection), I'd be interested in seeing what a nightly
and a nightly-arm do.

-b

> >=20
> >=20
> >=20
> > As a whole, I like what is being done here. I would like this put
> > on
> > the devel cluster before bringing it into production, just to smoke
> > test this, both with nightly builds and single builds. I can't see
> > anything that would obviously blow up though.
> >=20
> > cheers,
> >=20
> >=20
> > -b
> >=20

