Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A79AEE0070C
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 08:50:11 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 26 Jun 2012 08:50:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="170229549"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga001.fm.intel.com with ESMTP; 26 Jun 2012 08:50:07 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 26 Jun 2012 08:50:07 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.59]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.167]) with mapi id
	14.01.0355.002; Tue, 26 Jun 2012 08:50:06 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Thread-Topic: [yocto] <rant>the current yocto FAQ is pretty much
	valueless</rant>
Thread-Index: AQHNU7LRW6FhQMNbxkyJZ4HGnlsuVJcMvwjQ
Date: Tue, 26 Jun 2012 15:50:06 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A1310B@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1206260459040.8547@oneiric>
	<8AEAB326-0A04-4916-80FE-556EEFDBA8DD@dominion.thruhere.net>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A1307E@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1206261139290.5553@oneiric>
In-Reply-To: <alpine.DEB.2.02.1206261139290.5553@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: <rant>the current yocto FAQ is pretty much valueless</rant>
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 26 Jun 2012 15:50:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Great!  Thanks Robert.

-----Original Message-----
From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]=20
Sent: Tuesday, June 26, 2012 8:46 AM
To: Rifenbark, Scott M
Cc: Koen Kooi; Yocto discussion list
Subject: RE: [yocto] <rant>the current yocto FAQ is pretty much valueless</=
rant>

On Tue, 26 Jun 2012, Rifenbark, Scott M wrote:

> Thanks all - I enjoyed the rant.  The obvious point is that the FAQ
> needs attention.  A good thing to do would be if you have a question
> that you would like included in a "good" FAQ, such as the one
> mentioned by Robert about how to add a single package, put the
> question up on this list or actually submit a patch to the list.
> As this little discussion thread noted, the FAQ was initially
> created when the project launched and I think much of it revolved
> around trying to answer the general "What the hell is Yocto anyway"
> question.  I think we have moved into a "how do I do this" type of
> phase now and the FAQ should have more of those types of entries.
> That is not to say that questions about the Yocto Project in general
> should be deleted.
>
> I will put some attention on the FAQ to try and inject a bit of
> value into it.

  since the ubiquitous reaction to complaining about something is
always, "don't just whine, do something about it," i'm doing that.
i've started a personal yocto FAQ, based on questions either i've
asked myself, or colleagues or clients have asked me, and i'm posting
them here (obviously a work in progress, typed in over the last hour):

http://www.crashcourse.ca/wiki/index.php/Yocto_FAQ

  i'm collecting questions that clearly belong in a "how do i do X?"
FAQ and, even if i don't know the answer, i'm still going to add the
question to remind me to *find* the answer.

  if you want to add a question and answer (or even just a question
because you *want* to know the answer), drop me a note -- that wiki is
not world-writable and never will be.

  anyway, back to work ...

rday

--=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

