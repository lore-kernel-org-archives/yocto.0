Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1C33E016E3
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2013 15:13:05 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 04 Nov 2013 15:09:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,635,1378882800"; d="scan'208";a="422229220"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by fmsmga001.fm.intel.com with ESMTP; 04 Nov 2013 15:13:04 -0800
Received: from orsmsx115.amr.corp.intel.com (10.22.240.11) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Mon, 4 Nov 2013 15:13:03 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.126]) by
	ORSMSX115.amr.corp.intel.com ([10.22.240.11]) with mapi id
	14.03.0123.003; Mon, 4 Nov 2013 15:13:03 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Thread-Topic: [yocto] filling in the "missing" entries in the ref manual
	variable glossary
Thread-Index: AQHO0M9USv42/0u3sEqle1qmLnm29ZoEAiUggAzjAQCABN/zoA==
Date: Mon, 4 Nov 2013 23:13:03 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F44288@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1310240832580.5411@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983F40DF2@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1311010933420.12378@oneiric>
In-Reply-To: <alpine.DEB.2.02.1311010933420.12378@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: filling in the "missing" entries in the ref manual variable glossary
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
X-List-Received-Date: Mon, 04 Nov 2013 23:13:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

This will be useful for me... thanks Robert.

Scott

>-----Original Message-----
>From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
>Sent: Friday, November 01, 2013 6:46 AM
>To: Rifenbark, Scott M
>Cc: Yocto discussion list
>Subject: RE: [yocto] filling in the "missing" entries in the ref manual va=
riable
>glossary
>
>On Thu, 24 Oct 2013, Rifenbark, Scott M wrote:
>
>> Hey Robert,
>>
>> You don't need to submit full patches and explanations for these.
>> Noting that they are missing and need documenting is perfect.  If you
>> do have time when you point out a missing variable, providing a brief
>> explanation would help.  And... reporting what is missing is extremely
>> useful.  It has been (and will continue to be) an ongoing process of
>> fully documenting variables in the reference manual.
>>
>> Thanks,
>> Scott
>
>  for better or worse, here's what i've decided to do. for my own teaching
>purposes so i can quickly refer to all the variables related to a single s=
ubject in
>front of a class, i started a wiki page which will be an OE variable gloss=
ary
>broken into sections and grouping related variables. here's the initial re=
sult for
>nothing more than variables related to u-boot:
>
>http://www.crashcourse.ca/wiki/index.php/OE_variable_glossary#U-
>Boot_variables
>
>that entire section took about 10 minutes to write and i now have what i
>*think* is a list of every OE variable related to u-boot in the following =
format:
>
> * if a variable is already documented in the ref manual, i just link to i=
t and
>leave it at that
> * if a variable isn't documented, i add it to the list but
>(obviously) without a link
>
> and since i also want to see the usage of these things, i do a quick "gre=
p" for
>each one, which showed me that nothing seems to be using the documented
>"UBOOT_TARGET" variable, but it seems that what
>*should* be documented is "UBOOT_MAKE_TARGET" instead. and also, none
>of the SPL-related variables are mentioned in the reference manual so i li=
st
>them as well. as i said, that section took all of about 10 minutes to writ=
e so it's
>not all that time-consuming.
>
> this is what i'm going to be working on over the next several days, so if=
 scott
>(or anyone else) wants to play along, that page will certainly point out w=
hat
>variables are missing from the ref manual, as well as any oddities i run a=
cross
>and someone else can submit patches for the ref manual -- there's just no
>way i have the time to create all the patches, but i can certainly at leas=
t point
>out what needs patching.
>
> thoughts?
>
>rday
>
>--
>
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>
>Twitter:                                       http://twitter.com/rpjday
>LinkedIn:                               http://ca.linkedin.com/in/rpjday
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>


