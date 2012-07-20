Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A13EE00282
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2012 11:14:42 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 20 Jul 2012 11:14:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="124853018"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by AZSMGA002.ch.intel.com with ESMTP; 20 Jul 2012 11:14:41 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 20 Jul 2012 11:14:36 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.231]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.44]) with mapi id
	14.01.0355.002; Fri, 20 Jul 2012 11:14:35 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Thread-Topic: [yocto] How to set environment variables inside a recipe?
Thread-Index: Ac1l2qCsXMYa5QAcTn2MUw85atNhkQAwHhiAAACFkXAADh1VAAAMkXHA
Date: Fri, 20 Jul 2012 18:14:35 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE20AD3BEC6@ORSMSX105.amr.corp.intel.com>
References: <D956029D25CF204F948EA0FB515E1EE20AD3AA4C@ORSMSX105.amr.corp.intel.com>
	<5599187.lbIDYtH909@helios>
	<D956029D25CF204F948EA0FB515E1EE20AD3BE5B@ORSMSX105.amr.corp.intel.com>
	<alpine.DEB.2.02.1207201313060.7846@oneiric>
In-Reply-To: <alpine.DEB.2.02.1207201313060.7846@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to set environment variables inside a recipe?
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
X-List-Received-Date: Fri, 20 Jul 2012 18:14:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
>Sent: Friday, July 20, 2012 10:13 AM
>To: Bodke, Kishore K
>Cc: Paul Eggleton; yocto@yoctoproject.org
>Subject: Re: [yocto] How to set environment variables inside a recipe?
>
>On Fri, 20 Jul 2012, Bodke, Kishore K wrote:
>
>>
>>
>> >-----Original Message-----
>> >From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
>> >Sent: Friday, July 20, 2012 3:14 AM
>> >To: Bodke, Kishore K
>> >Cc: yocto@yoctoproject.org
>> >Subject: Re: [yocto] How to set environment variables inside a recipe?
>> >
>> >On Thursday 19 July 2012 18:16:45 Bodke, Kishore K wrote:
>> >> The driver needs a bunch of environmental variables to be set ( speci=
fic
>to
>> >> driver only ) to build.
>> >>
>> >> Right now to move forward I am doing like below in my recipe to build=
 it.
>> >>
>> >> export  AAA =3D "${S}"
>> >> export BBB =3D "${B}"
>> >> export CCC =3D "{S}/build-system"
>> >> export DDD =3D "{S}/env-files"
>> >>
>> >> Is this right way to do?  Are there any other ways to set the environ=
ment
>> >> variables inside a recipe?
>> >
>> >This is valid; I would recommend setting them within the function thoug=
h
>(e.g.
>> >do_configure) rather than at the recipe level, assuming that works for =
your
>> >case.
>>
>> If I set outside the do_configure it builds fine.
>> But If I do inside
>> do_confiugre() {
>>  export  AAA =3D "${S}"
>>  export BBB =3D "${B}"
>>  export CCC =3D "{S}/build-system"
>>  export DDD =3D "{S}/env-files"
>> }
>>
>> run.do_configure.20832: line 78: export: `=3D': not a valid identifier
>> NOTE: task do_configure: Failed
>
>  pretty sure you can't have spaces around the "=3D".

Yes, the spaces was an issue.=20
Works fine now.

Thanks
Kishore.=09

