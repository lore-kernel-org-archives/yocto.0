Return-Path: <david.c.stewart@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5849E005B3
	for <yocto@yoctoproject.org>; Tue,  9 Jul 2013 06:51:33 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 09 Jul 2013 06:51:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,1028,1363158000"; d="scan'208";a="265890549"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Jul 2013 06:51:07 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
	ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 9 Jul 2013 06:51:06 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.217]) by
	ORSMSX154.amr.corp.intel.com ([169.254.11.138]) with mapi id
	14.03.0123.003; Tue, 9 Jul 2013 06:51:07 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Thread-Topic: [yocto] Documenting YP Development Environment in more detail
	- user configuration
Thread-Index: Ac5uWGop+mI2fmjhR1eciv3x50rfAQCNXcvQACJr5oAADJ05QP//tLKAgAAC5oCAAHLvgP//rhYAgAABHACAABgHAIAAA3GAgABk6gCAAJs7AP/quOaggCsUbwA=
Date: Tue, 9 Jul 2013 13:51:06 +0000
Message-ID: <CE016295.3C663%david.c.stewart@intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5AD30@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.3.5.130515
x-originating-ip: [10.254.113.51]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Documenting YP Development Environment in more detail - user configuration
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
X-List-Received-Date: Tue, 09 Jul 2013 13:51:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <D1EE4BB0AF27C248923342CDF7A3EAE0@intel.com>
Content-Transfer-Encoding: quoted-printable



On 7/8/13 10:54 PM, "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
wrote:

>Here is a link to draft section on the user configuration block of the YP
>Development Environment work.  Check this out and provide feedback for
>appropriate level of detail, usefulness, missing info, ect.  This draft
>section, once we settle on it, will set the tone and level for the
>remaining detailed sections that make up the general environment diagram.
>=20
>
>http://www.yoctoproject.org/docs/1.5/ref-manual/ref-manual.html#a-closer-l
>ook-at-the-yocto-project-development-environment

I think it will look really good.

Would it make sense to adopt some kind of notation for when a directory is
a "source" vs "destination" type directory? For example, in the diagram
you have there, maybe color the source and destination directory boxes
differently or use hashed lines vs solid? Not sure it will be clear or
confusing once you get into more examples.

Also, it's a nit, but I think oe-init-build-env only creates the Build
Directory if it doesn't already exist.

>
>Thanks,=20
>Scott
>
>>-----Original Message-----
>>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>bounces@yoctoproject.org] On Behalf Of Burton, Ross
>>Sent: Tuesday, June 25, 2013 2:55 AM
>>To: Philip Balister
>>Cc: yocto@yoctoproject.org
>>Subject: Re: [yocto] Documenting YP Development Environment in more
>>detail - user configuration
>>
>>On 25 June 2013 01:39, Philip Balister <philip@balister.org> wrote:
>>> I totally agree we drifted way beyond the initial discussion of the
>>> figure. The key thought here is understanding how Poky differs from a
>>> typical use of oe-core + other layers.
>>
>>Is there such a thing as a "typical" use of oe-core + layers?  Poky
>>uses a custom tool (combo-layer, in oe-core/scripts) to merge the
>>layers into a single repo.  You could also use git submodules to make
>>a single repo (such as Guacamayo), or git subtree merges, or use repo
>>(gumstix), or have a script that manages the fetching of multiple
>>layers (Angstrom).
>>
>>Ross
>>_______________________________________________
>>yocto mailing list
>>yocto@yoctoproject.org
>>https://lists.yoctoproject.org/listinfo/yocto


