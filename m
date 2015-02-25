Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3485EE00754; Wed, 25 Feb 2015 07:49:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 511B7E00546
	for <yocto@yoctoproject.org>; Wed, 25 Feb 2015 07:49:22 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP; 25 Feb 2015 07:49:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,645,1418112000"; d="scan'208";a="657060189"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
	by orsmga001.jf.intel.com with ESMTP; 25 Feb 2015 07:49:20 -0800
Received: from orsmsx159.amr.corp.intel.com (10.22.240.24) by
	ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Wed, 25 Feb 2015 07:49:19 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.135]) by
	ORSMSX159.amr.corp.intel.com ([169.254.11.5]) with mapi id
	14.03.0195.001; Wed, 25 Feb 2015 07:49:19 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Joe MacDonald <Joe_MacDonald@mentor.com>, "Robert P. J. Day"
	<rpjday@crashcourse.ca>
Thread-Topic: [yocto] kernel manual: confusing coverage of
	FILESEXTRAPATHS_prepend
Thread-Index: AQHQUNi5KtcawMaAS0ytCKsJlv9Tc50B5qkA//+cmxA=
Date: Wed, 25 Feb 2015 15:49:19 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237988EB0C37@ORSMSX101.amr.corp.intel.com>
References: <alpine.LFD.2.11.1502250351310.26693@localhost>
	<20150225134406.GH8949@mentor.com>
In-Reply-To: <20150225134406.GH8949@mentor.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: kernel manual: confusing coverage of FILESEXTRAPATHS_prepend
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
X-List-Received-Date: Wed, 25 Feb 2015 15:49:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I updated and published the change to the 1.8 version.  I took Joe's sugges=
tion.=20

Thanks,=20
Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Joe MacDonald
>Sent: Wednesday, February 25, 2015 5:44 AM
>To: Robert P. J. Day
>Cc: Yocto discussion list
>Subject: Re: [yocto] kernel manual: confusing coverage of
>FILESEXTRAPATHS_prepend
>
>[[yocto] kernel manual: confusing coverage of FILESEXTRAPATHS_prepend]
>On 15.02.25 (Wed 03:54) Robert P. J. Day wrote:
>
>>
>>   minor quibble about kernel dev manual -- section 2.2.1, "creating
>> the append file", uses the example of:
>>
>>  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>>
>> while section 2.2.3 uses:
>>
>>  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
>>
>> both sections kind of implying that that's the way to do it, without
>> making it clear that *either* way works as long as the variable
>> prepend matches up with the directory name.
>>
>>   both ways are correct, of course, but the wording is a bit
>> confusing.
>
>It's probably worth changing the latter reference to match the former.
>Both work but with any new recipes (at least in the layers I maintain) the
>preference is to use the former for clarity as well as faster lookups.
>
>-J.
>
>>
>> rday
>>
>> --
>>
>>
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>>                         http://crashcourse.ca
>>
>> Twitter:                                       http://twitter.com/rpjday
>> LinkedIn:                               http://ca.linkedin.com/in/rpjday
>>
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> =3D=3D
>--
>-Joe MacDonald.
>:wq

