Return-Path: <belen.barros.pena@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9575BE01408
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2012 01:37:37 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 14 Jun 2012 01:37:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="157470823"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by orsmga002.jf.intel.com with ESMTP; 14 Jun 2012 01:37:35 -0700
Received: from irsmsx152.ger.corp.intel.com (163.33.192.66) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 14 Jun 2012 09:37:08 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.248]) by
	IRSMSX152.ger.corp.intel.com ([169.254.6.206]) with mapi id
	14.01.0355.002; Thu, 14 Jun 2012 09:37:08 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>, "Stewart, David C"
	<david.c.stewart@intel.com>
Thread-Topic: [yocto] Web HOB planning discussion
Thread-Index: AQHNSgjhpcfZPrOQRE2JITC+C2V9Lw==
Date: Thu, 14 Jun 2012 08:37:07 +0000
Message-ID: <CBFF6082.1103F%belen.barros.pena@intel.com>
In-Reply-To: <CALZ2gZVqs1s8nhwhwh0V3gHSss75Swbcw2Lv1HaAk6z=Sksbfw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.2.2.120421
x-originating-ip: [10.252.33.230]
MIME-Version: 1.0
Cc: Jim Kosem <jim@halfman.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Konstantinos Papagiannopoulos <hello@konputer.net>
Subject: Re: Web HOB planning discussion
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
X-List-Received-Date: Thu, 14 Jun 2012 08:37:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <6E122827470B1E4C880549AAEDA841E6@intel.com>
Content-Transfer-Encoding: quoted-printable

Hi all,

Thanks for the feedback: loads of interesting stuff there. We'll keep it al=
l in mind when working on the next iteration.

If you think of anything else, please post it here.

Cheers

Belen

From: <Osier-mixon>, Jeffrey <jeffrey.osier-mixon@intel.com<mailto:jeffrey.=
osier-mixon@intel.com>>
Date: Wednesday, 13 June 2012 19:00
To: "Stewart, David C" <david.c.stewart@intel.com<mailto:david.c.stewart@in=
tel.com>>
Cc: Konstantinos Papagiannopoulos <hello@konputer.net<mailto:hello@konputer=
.net>>, "yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>" <yocto@yoct=
oproject.org<mailto:yocto@yoctoproject.org>>, Jim Kosem <jim@halfman.com<ma=
ilto:jim@halfman.com>>
Subject: Re: [yocto] Web HOB planning discussion

I agree, it is looking really interesting. Some comments below.

On Wed, Jun 13, 2012 at 10:39 AM, Stewart, David C <david.c.stewart@intel.c=
om<mailto:david.c.stewart@intel.com>> wrote:
* This could be a great way for an organization to implement a workflow pro=
cess using YP, rather than try to invent one themselves. We have gotten the=
 feedback that some larger organizations want something like this, so I'm p=
leased with that direction.

Agreed - I have fielded a few questions about this as well

* With the above in mind, a key meta-usage is installing and configuring th=
e server. For example, I could imagine an organization wanting to easily cu=
stomize the home page with their own news and design information, etc.

* I could also see the opportunity for an OSV or service provider to brand =
the interface with their own goodness and extending it with their own featu=
res so this might be another meta-usage.

* And while I'm on a roll... whenever we talk about how the administrator i=
nstalls this, we need consider how they update from a previous version, par=
ticularly if they have customized the home screen or other bits.

If branding & customization happen in CSS, the whole customization part sho=
uld be portable from one version to another (as long as no one breaks anyth=
ing structural). If we want to enable customization of functionality, thoug=
h - e.g. pre-filter package selection, restrict certain features... - I cou=
ld see that being tricky to implement in a portable way.

* Project creation and member add/remove should perhaps be an administrator=
 role and password protected?

I vote yes on user management, but why password-protect project creation?

Other thoughts:

My feeling is that both Hob and WebHob will be most useful as tools to get =
people started. At some point, anyone who is doing more esoteric work than =
the Hob allows will need to learn how to get their hands dirty with recipes=
, config files, etc. For that reason, I really like the workflow focus, as =
that translates directly to the expected workflow of the whole build system=
. I suggest a future step might be guided configuration, guided recipe (and=
 layer?) creation, and other progressive types of features that also show t=
he workflow in action the way the current Hob does.

And I totally agree that the usability work you guys have done is making a =
huge difference in design. I like it! Want more!
--
Jeff Osier-Mixon http://jefro.net/blog
Yocto Project Community Manager @Intel http://yoctoproject.org<http://yocto=
project.org/>

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


