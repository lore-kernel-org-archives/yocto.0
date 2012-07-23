Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09DDDE00342
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2012 16:49:15 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 23 Jul 2012 16:48:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="126007123"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by AZSMGA002.ch.intel.com with ESMTP; 23 Jul 2012 16:48:56 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 23 Jul 2012 16:48:55 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.93]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.44]) with mapi id
	14.01.0355.002; Mon, 23 Jul 2012 16:48:55 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: =?iso-8859-1?Q?Timo_M=FCller?= <mail@timomueller.eu>
Thread-Topic: [yocto] [RFC 0/8] Integrate yocto documentation into eclipse
Thread-Index: AQHNZOWzp4jsU1ECeEGi/XdoRhnTmpc1n6MwgAHjBACAAA3VsA==
Date: Mon, 23 Jul 2012 23:48:54 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46ABA1B7@ORSMSX101.amr.corp.intel.com>
References: <cover.1342614895.git.timo.mueller@bmw-carit.de>
	<C6510F6D410BB64A8C15398EDC6B847C46AB9B61@ORSMSX101.amr.corp.intel.com>
	<500D73E4.1050409@timomueller.eu>
In-Reply-To: <500D73E4.1050409@timomueller.eu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [RFC 0/8] Integrate yocto documentation into eclipse
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
X-List-Received-Date: Mon, 23 Jul 2012 23:49:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Please see my comments...

Thanks,
Jessica

-----Original Message-----

>
> 2nd. We need to figure out the process to generate the content for
> this doc plug-in since normally the content will be finalized toward
> the end of a release.  So is there an automated way to generate the
> content that ScottR (our tech writer) can use to generate the content
> once he's done his writing.  Or he needs to inform you to create it
> and send the pull request?

I simply converted the docbook documents to eclipse help using the
eclipse stylesheet provided by docbook itself. I could either provide
the exact xslt call or generate the documentation as you proposed.

To do this in an automated way the calls could be added directly to the
documentation build system, so the eclipse help can be generated along
with the rest of the documentation output.

As the CCA-SA hasn't been approved here at my company I'm struggeling to
propose patches to the doc build system and integrate the eclipse help
generation.
I would be happy to contribute under the BSD license, if the "Code
Submissions" clause (which would be BSD license,
http://www.yoctoproject.org/about/terms-service) applies to the build
system. I've already asked about this on the mailing list. I messed up
with the subject ([yocto] Documentation question: How are the), but
until now nobody knew if the "Code Submissions" clause really applies here.

[JZ] I've checked with our release engineer and she pointed that according =
to LICENSE file under poky directory, all the file without explicitly state=
d will be defaulted to GPLv2.  Since our doc build makefile fall into this =
case, your patch needs to be GPLv2.

>
> 3rd. We have autobuilder that use our eclipse plug-in headless build
> to build the plugin and put on the download site for
> update/installating.  So have you verified the doc plug-in works with
> our existing headless build?

Yes, I have used the build.sh in the scripts folder to build the archive
and the update site and it built without errors (and can also be
installed from the generated update site).
By the way is there any way to specify that the script shall use a local
clone of the repository? I've been changing the GIT_URL in the script to
actually achieve this.

[JZ] I'm afraid not atm but patches are always welcome :-)



