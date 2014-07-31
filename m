Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 816BCE00547; Wed, 30 Jul 2014 23:39:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7158E0043F
	for <yocto@yoctoproject.org>; Wed, 30 Jul 2014 23:39:52 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 30 Jul 2014 23:39:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,770,1400050800"; d="scan'208";a="551681589"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
	by orsmga001.jf.intel.com with ESMTP; 30 Jul 2014 23:39:39 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.229]) by
	ORSMSX110.amr.corp.intel.com ([169.254.3.162]) with mapi id
	14.03.0123.003; Wed, 30 Jul 2014 23:39:38 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, Paul Eggleton
	<paul.eggleton@linux.intel.com>, =?iso-8859-1?Q?Tiemo_Kr=FCger?=
	<tk@mycable.de>
Thread-Topic: [yocto] Yocto Project Manual
Thread-Index: Ac+rF64qlTV3hp8rRhG+a6Og6A35tAAPs5AAAA2yudAAPx2JoA==
Date: Thu, 31 Jul 2014 06:39:38 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983FD15E2@ORSMSX101.amr.corp.intel.com>
References: <2064433273.102074.1406627065552.JavaMail.zimbra@mycable.de>
	<1367058546.102085.1406627402694.JavaMail.zimbra@mycable.de>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983FC7C6B@ORSMSX106.amr.corp.intel.com>
	<2822765.ysjF7qWtfi@peggleto-mobl5.ger.corp.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983FC8CA6@ORSMSX106.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237983FC8CA6@ORSMSX106.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Project Manual
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
X-List-Received-Date: Thu, 31 Jul 2014 06:39:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,=20

I have modified this paragraph a bit to deal with the best way to get these=
 checksums.  See http://www.yoctoproject.org/docs/1.7/dev-manual/dev-manual=
.html#new-recipe-fetching-code.  If there are further concerns just let me =
know and I can address them.

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Rifenbark, Scott M
>Sent: Tuesday, July 29, 2014 4:25 AM
>To: Paul Eggleton; Tiemo Kr=FCger
>Cc: yocto@yoctoproject.org
>Subject: Re: [yocto] Yocto Project Manual
>
>Paul,
>
>This sounds reasonable.  I will modify based on that practice.
>
>Thanks,
>Scott
>
>>-----Original Message-----
>>From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
>>Sent: Tuesday, July 29, 2014 3:57 AM
>>To: Rifenbark, Scott M; Tiemo Kr=FCger
>>Cc: yocto@yoctoproject.org
>>Subject: Re: [yocto] Yocto Project Manual
>>
>>On Tuesday 29 July 2014 10:27:23 Rifenbark, Scott M wrote:
>>> Thanks for noting this and contacting me.  I am reposting to the
>>> yocto@yoctoproject.org group for additional input.  I will get
>>> modifications into the manual.
>>>
>>> Best,
>>> Scott
>>>
>>>
>>> >-----Original Message-----
>>> >From: Tiemo Kr=FCger [mailto:tk@mycable.de]
>>> >Sent: Tuesday, July 29, 2014 2:50 AM
>>> >To: Rifenbark, Scott M
>>> >Subject: Yocto Project Manual
>>> >
>>> >Hello Scott,
>>> >
>>> >I just read a little bit in this doc:
>>> >
>>> >http://www.yoctoproject.org/docs/1.6/dev-manual/dev-manual.html#new-
>>> >>
>>> >>recipe-writing-a-new-recipe
>>> >
>>> >and since your eMail is mentioned on top I contact you regarding the
>>> >below paragraph in chapter 5.3.5
>>> >
>>> >"To find these checksums, you can comment the statements out and
>>> >then attempt to build the software. The build will produce an error
>>> >for each missing checksum and as part of the error message provide
>>> >the correct checksum string. Once you have the correct checksums,
>>> >simply copy them into your recipe for a subsequent build."
>>> >
>>> >We here really think this is the wrong way to create the checksums
>>> >for a recipe since downloading them and then creating the checksum
>>> >doesn't protect you against man in the middle attacks.
>>
>>From that point onwards it does, but not on the initial build when
>>creating the recipe, you are correct. If the upstream website does
>>provide checksums or GPG signatures (and quite a lot don't) then you
>>should use those to verify the source that was fetched.
>>
>>> >The text should be modified
>>> >that the checksums must at least be checked against the checksums
>>> >provided by the original website even if this is still not
>>> >completely safe. And simple command line tools like md5sum and
>>> >sha256sum shall be
>>mentioned.
>>
>>I think the simplest thing is to just add a note which says that you
>>should verify what was fetched against whatever signatures are provided
>>by the upstream (if any). You can still use the build-fail method we
>>currently describe as well so that you get the exact lines you need to
>>put in the recipe rather than having to type those out each time.
>>
>>Cheers,
>>Paul
>>
>>--
>>
>>Paul Eggleton
>>Intel Open Source Technology Centre
>--
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

