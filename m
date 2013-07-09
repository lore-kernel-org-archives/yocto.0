Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61205E00715
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2013 22:54:11 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 08 Jul 2013 22:51:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,1025,1363158000"; d="scan'208";a="342533076"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by orsmga001.jf.intel.com with ESMTP; 08 Jul 2013 22:54:11 -0700
Received: from orsmsx157.amr.corp.intel.com (10.22.240.23) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Mon, 8 Jul 2013 22:54:10 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.138]) by
	ORSMSX157.amr.corp.intel.com ([169.254.9.211]) with mapi id
	14.03.0123.003; Mon, 8 Jul 2013 22:54:10 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Stewart, David C" <david.c.stewart@intel.com>
Thread-Topic: [yocto] Documenting YP Development Environment in more detail
	- user configuration
Thread-Index: Ac5uWGop+mI2fmjhR1eciv3x50rfAQCNXcvQACJr5oAADJ05QP//tLKAgAAC5oCAAHLvgP//rhYAgAABHACAABgHAIAAA3GAgABk6gCAAJs7AP/quOag
Date: Tue, 9 Jul 2013 05:54:10 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5AD30@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5130F@ORSMSX101.amr.corp.intel.com>
	<51C8466F.8040808@balister.org>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF514AE@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1306241046210.24762@oneiric>
	<CAJTo0Lb8mXhsma_8XvWp2B68QQ9tcS6PVGj9QWqMENgeCt8h5g@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF514E7@ORSMSX101.amr.corp.intel.com>
	<51C87A0C.1050003@balister.org>
	<CAJTo0LbwiP-WR1uetxLgMxC0beO198kg-ubO_oWd85JRv4eaqg@mail.gmail.com>
	<51C88F22.6030605@balister.org>
	<CA+YB3rbnUOssFc-w5Ak-X_rVPqhJnkJ+NiWEyJDJXL61gGJ0Gg@mail.gmail.com>
	<51C8E6AC.5000704@balister.org>
	<CAJTo0LY9H0uJ0tupJy9u7cwnDMmLn5BpD=4h=kC-xi0PzXrasA@mail.gmail.com>
In-Reply-To: <CAJTo0LY9H0uJ0tupJy9u7cwnDMmLn5BpD=4h=kC-xi0PzXrasA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
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
X-List-Received-Date: Tue, 09 Jul 2013 05:54:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Here is a link to draft section on the user configuration block of the YP D=
evelopment Environment work.  Check this out and provide feedback for appro=
priate level of detail, usefulness, missing info, ect.  This draft section,=
 once we settle on it, will set the tone and level for the remaining detail=
ed sections that make up the general environment diagram. =20

http://www.yoctoproject.org/docs/1.5/ref-manual/ref-manual.html#a-closer-lo=
ok-at-the-yocto-project-development-environment

Thanks,=20
Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Burton, Ross
>Sent: Tuesday, June 25, 2013 2:55 AM
>To: Philip Balister
>Cc: yocto@yoctoproject.org
>Subject: Re: [yocto] Documenting YP Development Environment in more
>detail - user configuration
>
>On 25 June 2013 01:39, Philip Balister <philip@balister.org> wrote:
>> I totally agree we drifted way beyond the initial discussion of the
>> figure. The key thought here is understanding how Poky differs from a
>> typical use of oe-core + other layers.
>
>Is there such a thing as a "typical" use of oe-core + layers?  Poky
>uses a custom tool (combo-layer, in oe-core/scripts) to merge the
>layers into a single repo.  You could also use git submodules to make
>a single repo (such as Guacamayo), or git subtree merges, or use repo
>(gumstix), or have a script that manages the fetching of multiple
>layers (Angstrom).
>
>Ross
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

