Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id B0BA24C80B6B
	for <yocto@yoctoproject.org>; Wed, 24 Nov 2010 04:40:35 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 24 Nov 2010 02:40:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,247,1288594800"; d="scan'208";a="860912148"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 24 Nov 2010 02:40:34 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 24 Nov 2010 18:40:33 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 24 Nov 2010 18:40:33 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 24 Nov 2010 18:40:31 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Wed, 24 Nov 2010 18:40:29 +0800
Thread-Topic: [oe] BitBake parallel parsing testing
Thread-Index: AcuLGvF4+cDAdn+RR+y4fATuISnk3wAmCx7gAAQzlaA=
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D3E152B7E@shsmsx502.ccr.corp.intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A302EA40F@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A302EA40F@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>
Subject: Re: [oe] BitBake parallel parsing testing
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
X-List-Received-Date: Wed, 24 Nov 2010 10:40:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Richard, is this the same task you list in 1.0 plan? It looks that we can l=
everage it. :-)

Thanks
Kevin

>From: Xu, Dongxiao
>Sent: Wednesday, November 24, 2010 4:45 PM
>
>FYI, bitbake parallel parsing is enabled, which can greatly reduce the fil=
e parsing time.
>There are some data test result in OE's following mails.
>
>Bitbake 1.10: 3m2.185s
>parallel-parsing (BB_NUM_PARSE_THREADS=3Dnum_cpu): 1m48.232s parallel-pars=
ing
>(BB_NUM_PARSE_THREADS=3D2*num_cpu): 1m1.869s
>
>Thanks,
>Dongxiao
>
>Chris Larson wrote:
>> Greetings all,
>> This is a request for further testers for the parallel parsing branch
>> of bitbake, as well as for review of the code. =A0I'm fairly certain
>> that the last real issue with it was resolved yesterday, and I
>> haven't gotten any reports of problems from those testing it since
>> last week, so I'm opening it up to more public testing, so we can be
>> absolutely certain that we can merge it to master in the near future
>> without risking problems.
>>
>> For code review:
>> Either follow the below steps, then git log master..parallel-parsing
>> or git diff master..parallel-parsing, or use the web interface at
>> https://github.com/kergoth/bitbake/commits/parallel-parsing.
>>
>> For testing from scratch:
>>
>> git clone git://github.com/kergoth/bitbake cd bitbake git checkout -b
>> parallel-parsing origin/parallel-parsing
>>
>> From an existing bitbake repository:
>>
>> git remote add kergoth git://github.com/kergoth/bitbake git remote
>> update git checkout -b parallel-parsing kergoth/parallel-parsing
>>
>> Thanks for your time, and do let me know what you think, either of
>> the code, performance in general, or the new progress bar (shows an
>> ETA), or anything else :)
>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

