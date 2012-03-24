Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2591E0044D
	for <yocto@yoctoproject.org>; Sat, 24 Mar 2012 05:54:27 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 24 Mar 2012 05:54:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="81156447"
Received: from orsmsx605.amr.corp.intel.com ([10.22.226.10])
	by AZSMGA002.ch.intel.com with ESMTP; 24 Mar 2012 05:54:26 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx605.amr.corp.intel.com (10.22.226.10) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Sat, 24 Mar 2012 05:54:26 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.154]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.128]) with mapi id
	14.01.0355.002; Sat, 24 Mar 2012 05:54:26 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Thread-Topic: [yocto] poky ref manual still confuses BB_ENV_WHITELIST and
	BB_ENV_EXTRAWHITE
Thread-Index: AQHNCEGg3E9j+73xfkuB57lCgoCnIJZ4fU+QgAEK7AD//+EdYA==
Date: Sat, 24 Mar 2012 12:54:25 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237945175DFA@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1203221134480.7169@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237945175C01@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1203240340500.17126@oneiric>
In-Reply-To: <alpine.DEB.2.02.1203240340500.17126@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: poky ref manual still confuses BB_ENV_WHITELIST and BB_ENV_EXTRAWHITE
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
X-List-Received-Date: Sat, 24 Mar 2012 12:54:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

It is worth noting and the state of the variables is being worked.  I have =
several noted that I need to document.  Understanding which ones are deprec=
ated will be good too.  Thanks for the diligence Robert.=20

Scott

-----Original Message-----
From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]=20
Sent: Saturday, March 24, 2012 1:43 AM
To: Rifenbark, Scott M
Cc: Yocto discussion list
Subject: RE: [yocto] poky ref manual still confuses BB_ENV_WHITELIST and BB=
_ENV_EXTRAWHITE

On Fri, 23 Mar 2012, Rifenbark, Scott M wrote:

> Okay - I dug into this a bit with the help of Scott Garman.  He
> uncovered a bit in the BitBake changelog.  It states the following:
>
> "By default it will now only pass certain whitelisted variables into
> the data store. If BB_PRESERVE_ENV is set bitbake will use all
> variable from the environment. If BB_ENV_WHITELIST is set, that
> whitelist will be used instead of the internal bitbake one.
> Alternatively, BB_ENV_EXTRAWHITE can be used to extend the internal
> whitelist"

  it's also worth noting that none of those variables are listed in
the variable glossary in the reference manual.  should they be?  i've
already started a list of variables missing from the glossary.

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

