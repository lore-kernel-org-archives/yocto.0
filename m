Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 738A2E008EC; Fri, 14 Nov 2014 02:13:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19C4BE00837
	for <yocto@yoctoproject.org>; Fri, 14 Nov 2014 02:13:30 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 14 Nov 2014 02:13:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,384,1413270000"; d="scan'208";a="631889907"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by fmsmga002.fm.intel.com with ESMTP; 14 Nov 2014 02:12:52 -0800
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.215]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.134]) with mapi id
	14.03.0195.001; Fri, 14 Nov 2014 10:11:57 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: John Unland <opensourcejohn2112@gmail.com>, Rudolf Streif
	<rudolf.streif@gmail.com>
Thread-Topic: [yocto] Hob and Toaster Languages.
Thread-Index: AQHP//NrPQPcVvGu/0K6mdW2l3StRA==
Date: Fri, 14 Nov 2014 10:11:56 +0000
Message-ID: <D08B8579.4E329%belen.barros.pena@intel.com>
References: <CAByxTR_FokGs5SHExf1o55j3UeeVWA_mugg+qdxAnYcR_=+-4A@mail.gmail.com>
	<CAEKp-aYUPN5kLcU75++zH+n-9ZQkUg8_zhG-+2buht_=DSP81A@mail.gmail.com>
	<CAByxTR_QusEg1O=UVJp9M0e2A_k6=d-drwbTnPcE55ADh72LhQ@mail.gmail.com>
	<CAByxTR-QBJe5LniJP_tTUbaXLC3ybdF1O=USwT7VrtOuk-gqpw@mail.gmail.com>
In-Reply-To: <CAByxTR-QBJe5LniJP_tTUbaXLC3ybdF1O=USwT7VrtOuk-gqpw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.5.141003
x-originating-ip: [10.237.224.33]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Hob and Toaster Languages.
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
X-List-Received-Date: Fri, 14 Nov 2014 10:13:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <570727AA40071E41995A042F8DFD2863@intel.com>
Content-Transfer-Encoding: quoted-printable

On 13/11/2014 23:49, "John Unland" <opensourcejohn2112@gmail.com> wrote:

>Almost forgot, what about the interface for Hob. I'm thinking GTK+, am
>I correct?

Yes: GTK 2.x using PyGtk (if I got this wrong, please someone correct me).

Cheers

Bel=E9n

Bel=E9n

>
>Thanks,
>John
>
>On Wed, Nov 12, 2014 at 5:36 PM, John Unland
><opensourcejohn2112@gmail.com> wrote:
>> Thank you.
>>
>> Regards,
>> John
>>
>> On Wed, Nov 12, 2014 at 5:35 PM, Rudolf Streif
>><rudolf.streif@gmail.com> wrote:
>>> Hi John,
>>>
>>> Both are written in Python. Toaster is built on the Django Python web
>>> framework (https://www.djangoproject.com/).
>>>
>>> Cheers,
>>> Rudi
>>>
>>> On Wed, Nov 12, 2014 at 1:18 PM, John Unland
>>><opensourcejohn2112@gmail.com>
>>> wrote:
>>>>
>>>> What is Hob and Toaster written in? Figured I would like to contribute
>>>> maybe a deployment tool when you have created a image (I know there is
>>>> the deployment tool for Hob but it only works for .iso and .hddimg FS)
>>>>
>>>> Thanks,
>>>> John
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>>
>>>
>>> --
>>> Rudolf J. Streif
>>>
>--=20
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto


