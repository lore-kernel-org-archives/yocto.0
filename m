Return-Path: <david.c.stewart@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3AB604C800B3
	for <yocto@yoctoproject.org>; Mon,  6 Jun 2011 17:56:01 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 06 Jun 2011 15:56:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,328,1304319600"; 
   d="scan'208";a="9885037"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga002.jf.intel.com with ESMTP; 06 Jun 2011 15:56:00 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.226.213) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 6 Jun 2011 15:56:00 -0700
Received: from orsmsx501.amr.corp.intel.com ([10.22.226.209]) by
	orsmsx601.amr.corp.intel.com ([10.22.226.213]) with mapi;
	Mon, 6 Jun 2011 15:55:57 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: Jeremy Puhlman <jpuhlman@gmail.com>, Yocto Mailer <yocto@yoctoproject.org>
Date: Mon, 6 Jun 2011 15:55:56 -0700
Thread-Topic: [yocto] Content-tools.
Thread-Index: AcwkmQtoHHt9RzTITyOSXerBlXZBfwAA1OtA
Message-ID: <B27EBC40D200ED48A3F4CC2EBEABAE0B2603AFF095@orsmsx501.amr.corp.intel.com>
References: <4DED5469.3040903@gmail.com>
In-Reply-To: <4DED5469.3040903@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Content-tools.
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
X-List-Received-Date: Mon, 06 Jun 2011 22:56:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Jeremy Puhlman
>Sent: Monday, June 06, 2011 3:28 PM
>
>As discussed with others when I first dropped the remote-layering patch
>that I was working internally with our management to open our content
>tools, since they would likely be useful as a starting point for yocto
>layering tooling. Due to some personal tragedies I have been a bit
>side-lined, but here they are.

Jeremy - thanks very much to you and to MontaVista for contributing this co=
de to the Yocto Project!=20

And also I am very sorry about your personal tragedies.=20

>The repository for the tools are here:
>
>git://gitorious.org/content-tools/content-tools.git
>
>The wiki giving a quick run down of everything is here:
>https://gitorious.org/content-tools/pages/Home
>
>The long and the short of it is the tools provide and xml description
>layer for collections/layers, and a method of describing what we call in
>our product solutions. A solution is basically a group of
>collections/layers, configuration options and a like that you would use
>to produce any number of images or what not from a machine
>configuration. You can add multiple solutions together, and they will
>add the collections as needed.
>
>The back end mirroring and content providing components work really
>well, though all the references to collections could be swapped over to
>layers, but it is more or less at that level the name difference is
>largely meaningless. The project creation tool will need some additional
>work. I have added some changes to the tool to make it work with layers
>and sstate a bit better, but I don't think it is completely there, but
>it is more or less a reasonable start. The main thing is the setup.sh
>would need to be taught about the extra stuff in oe-init-build-env and a
>method for dealing with pseudo, which it doesn't at this point.
>
>The work their does kind of hinge on the remote layering code I provided
>before, being in your bitbake to run all the way to the end.  Though,
>integrating what ever fetchers in to the tools is also reasonable, its
>just not where we were doing it.
>
>If you like I can try to post up a example content repository up on our
>ftp server to kick around if you like. The wiki page has a run through
>from beginning to end of the tools and how set an example up.
>
>--
>Jeremy Puhlman
>Montavista Sofware, LLC.
>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

