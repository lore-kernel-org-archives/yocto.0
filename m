Return-Path: <david.c.stewart@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 39C194C80FA7
	for <yocto@yoctoproject.org>; Thu, 18 Nov 2010 14:54:12 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 18 Nov 2010 12:54:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,218,1288594800"; d="scan'208";a="859118029"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga001.fm.intel.com with ESMTP; 18 Nov 2010 12:54:11 -0800
Received: from orsmsx501.amr.corp.intel.com ([10.22.226.209]) by
	orsmsx603.amr.corp.intel.com ([10.22.226.49]) with mapi;
	Thu, 18 Nov 2010 12:54:11 -0800
From: "Stewart, David C" <david.c.stewart@intel.com>
To: "Lock, Joshua" <joshua.lock@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 18 Nov 2010 12:54:11 -0800
Thread-Topic: [yocto] Documenting Poky dependencies
Thread-Index: AcuHHTshvFZ+AB6bROSjduPxh/+pIwARQ40w
Message-ID: <B27EBC40D200ED48A3F4CC2EBEABAE0B25BC73A014@orsmsx501.amr.corp.intel.com>
References: <1290083764.2487.24.camel@scimitar>
In-Reply-To: <1290083764.2487.24.camel@scimitar>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Subject: Re: Documenting Poky dependencies
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
X-List-Received-Date: Thu, 18 Nov 2010 20:54:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks for doing this!=20

Some ScottR ARs below.

>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Joshua Lock
>Sent: Thursday, November 18, 2010 4:36 AM
>
>Hi all,
>
>I've been thinking about the issue of documenting Poky's dependencies in
>the handbook.
>At the moment the handbook includes a list of required packages and then
>explicitly lists commands to install those packages on Ubuntu.
>
>What I'd like to propose is that we list the required dependencies in
>the handbook and then link to a wiki page where we can list explicit
>instructions for various distributions.
>
>This allows us to document the process for as many distributions as
>possible without cluttering the handbook. An alternative would be to add
>this to an appendix but I quite like the idea of people being able to
>edit and add to this information without having to use git.
>
>To that end I've added a page to our public wiki showing the steps I had
>to take to run Poky on Fedora and CentOS machines:
>
>https://wiki.yoctoproject.org/wiki/Poky/GettingStarted/Dependencies

Good idea. Some suggestions:

1. There seem to be no links to this page from the rest of the wiki. Should=
 add one. Scott - can you please figure out the best place?

2. Can you add something specific to the version of Poky (or Yocto) which h=
as been verified with these distros? For example, f13 and f14 have instruct=
ions for Laverne; they might change for a future rev. What is the best way =
to show this?

>Cheers,
>Joshua
>--
>Joshua Lock
>        Intel Open Source Technology Centre
>
>---------------------------------------------------------------------
>Intel Corporation (UK) Limited
>Registered No. 1134945 (England)
>Registered Office: Pipers Way, Swindon SN3 1RJ
>VAT No: 860 2173 47
>
>This e-mail and any attachments may contain confidential material for
>the sole use of the intended recipient(s). Any review or distribution
>by others is strictly prohibited. If you are not the intended
>recipient, please contact the sender and delete all copies.
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

