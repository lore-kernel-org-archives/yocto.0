Return-Path: <belen.barros.pena@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D47ECE00BBF
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 03:26:30 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 Apr 2014 03:26:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,833,1389772800"; d="scan'208";a="518241536"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by fmsmga002.fm.intel.com with ESMTP; 10 Apr 2014 03:26:08 -0700
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.58]) by
	IRSMSX102.ger.corp.intel.com ([169.254.2.45]) with mapi id
	14.03.0123.003; Thu, 10 Apr 2014 11:25:44 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "Damian, Alexandru" <alexandru.damian@intel.com>
Thread-Topic: [yocto] Dogfooding and usability testing Toaster
Thread-Index: AQHPVKc6eXHQXb8KaEeNB1LjtfLwIg==
Date: Thu, 10 Apr 2014 10:25:43 +0000
Message-ID: <CF6C2F0B.42091%belen.barros.pena@intel.com>
References: <CF6AE2C6.41DF5%belen.barros.pena@intel.com>
	<CA+gsK-qsb+UVcKsuE_NMAw_dVD-LkdkgOwayBHLPdM3QPPt2Bw@mail.gmail.com>
	<CABcZAN=yHZOkzXZf0tkVSumV370y9HLAp2H3rcDtO2dV8F5WHA@mail.gmail.com>
	<1545986.M2ZRmN0uFt@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <1545986.M2ZRmN0uFt@peggleto-mobl5.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.3.9.131030
x-originating-ip: [10.237.224.34]
MIME-Version: 1.0
Cc: Chris Larson <clarson@kergoth.com>
Subject: Re: Dogfooding and usability testing Toaster
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
X-List-Received-Date: Thu, 10 Apr 2014 10:26:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <F7EA4A7C2458C84FA92B2D2242CC4488@intel.com>
Content-Transfer-Encoding: quoted-printable

On 10/04/2014 11:14, "Paul Eggleton" <paul.eggleton@linux.intel.com> wrote:

>On Wednesday 09 April 2014 16:39:38 Chris Larson wrote:
>> On Wed, Apr 9, 2014 at 4:33 PM, Rudolf Streif
><rudolf.streif@linux.com>wrote:
>> > That is exciting. I just ran with it and started a build with toaster
>>in
>> >=20
>> > the background. A couple of observations from the get-go:
>> >    - South 0.8.4 is also needed in addition to Django. The Toaster
>>Wiki
>> >    [1] does not say that but the Contribute to Toaster page [2] does.
>> >    - You need to run 'sudo pip install ...' for Django and South
>> >    otherwise the installation fails with 'permission denied' for
>> >    /usr/lib/python2.7

Thanks for this. We'll make sure to update the wiki.


>> >    - Clicking on "Show me the manual" in the Toaster UI directs to [3]
>> >    which requires a log in

Ah, yes: the manual is not ready yet, so its web page is not published.
That's why you are being asked to log in. It should be ready by release
time.

>> >    - Is it possible to relocate/rename the toaster.sqlite database via
>> >    configuration setting? If so, could I use the same database for
>> >    different
>> >    build environments?

I believe you can, although Alex Damien is the one who can explain the
details. The information here:

https://wiki.yoctoproject.org/wiki/Toaster#Setting_up_a_Toaster_Instance_on
_a_Remote_Host

might also answer some questions.

>>=20
>> Side note: you can use pip install --user ... rather than sudo pip, to
>> install it to your user site-packages directory under ~/.local, which
>>won't
>> impact the rest of the system.
>
>I'd like to see this documented using virtualenv [1] to install the
>additional=20
>packages - it's so much cleaner than any other solution.

Good point. I'll look into getting that going.

Bel=E9n

>
>Cheers,
>Paul
>
>[1] For those who aren't familiar with virtualenv:
>http://simononsoftware.com/virtualenv-tutorial/
>
>--=20
>
>Paul Eggleton
>Intel Open Source Technology Centre
>--=20
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto


