Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64B71E007EA; Tue, 29 Jul 2014 04:25:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F14CE007E4
	for <yocto@yoctoproject.org>; Tue, 29 Jul 2014 04:25:16 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 29 Jul 2014 04:19:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,756,1400050800"; d="scan'208";a="550625686"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by orsmga001.jf.intel.com with ESMTP; 29 Jul 2014 04:25:16 -0700
Received: from orsmsx111.amr.corp.intel.com (10.22.240.12) by
	ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 29 Jul 2014 04:25:15 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.245]) by
	ORSMSX111.amr.corp.intel.com ([169.254.11.231]) with mapi id
	14.03.0123.003; Tue, 29 Jul 2014 04:25:15 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>,
	=?iso-8859-1?Q?Tiemo_Kr=FCger?= <tk@mycable.de>
Thread-Topic: [yocto] Yocto Project Manual
Thread-Index: Ac+rF64qlTV3hp8rRhG+a6Og6A35tAAPs5AAAA2yudA=
Date: Tue, 29 Jul 2014 11:25:14 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983FC8CA6@ORSMSX106.amr.corp.intel.com>
References: <2064433273.102074.1406627065552.JavaMail.zimbra@mycable.de>
	<1367058546.102085.1406627402694.JavaMail.zimbra@mycable.de>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983FC7C6B@ORSMSX106.amr.corp.intel.com>
	<2822765.ysjF7qWtfi@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <2822765.ysjF7qWtfi@peggleto-mobl5.ger.corp.intel.com>
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
X-List-Received-Date: Tue, 29 Jul 2014 11:25:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Paul,

This sounds reasonable.  I will modify based on that practice.=20

Thanks,=20
Scott

>-----Original Message-----
>From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
>Sent: Tuesday, July 29, 2014 3:57 AM
>To: Rifenbark, Scott M; Tiemo Kr=FCger
>Cc: yocto@yoctoproject.org
>Subject: Re: [yocto] Yocto Project Manual
>
>On Tuesday 29 July 2014 10:27:23 Rifenbark, Scott M wrote:
>> Thanks for noting this and contacting me.  I am reposting to the
>> yocto@yoctoproject.org group for additional input.  I will get
>> modifications into the manual.
>>
>> Best,
>> Scott
>>
>>
>> >-----Original Message-----
>> >From: Tiemo Kr=FCger [mailto:tk@mycable.de]
>> >Sent: Tuesday, July 29, 2014 2:50 AM
>> >To: Rifenbark, Scott M
>> >Subject: Yocto Project Manual
>> >
>> >Hello Scott,
>> >
>> >I just read a little bit in this doc:
>> >
>> >http://www.yoctoproject.org/docs/1.6/dev-manual/dev-manual.html#new->
>> >>recipe-writing-a-new-recipe
>> >
>> >and since your eMail is mentioned on top I contact you regarding the
>> >below paragraph in chapter 5.3.5
>> >
>> >"To find these checksums, you can comment the statements out and then
>> >attempt to build the software. The build will produce an error for
>> >each missing checksum and as part of the error message provide the
>> >correct checksum string. Once you have the correct checksums, simply
>> >copy them into your recipe for a subsequent build."
>> >
>> >We here really think this is the wrong way to create the checksums
>> >for a recipe since downloading them and then creating the checksum
>> >doesn't protect you against man in the middle attacks.
>
From that point onwards it does, but not on the initial build when creatin=
g the
>recipe, you are correct. If the upstream website does provide checksums or=
 GPG
>signatures (and quite a lot don't) then you should use those to verify the=
 source
>that was fetched.
>
>> >The text should be modified
>> >that the checksums must at least be checked against the checksums
>> >provided by the original website even if this is still not completely
>> >safe. And simple command line tools like md5sum and sha256sum shall be
>mentioned.
>
>I think the simplest thing is to just add a note which says that you shoul=
d verify
>what was fetched against whatever signatures are provided by the upstream =
(if
>any). You can still use the build-fail method we currently describe as wel=
l so that
>you get the exact lines you need to put in the recipe rather than having t=
o type
>those out each time.
>
>Cheers,
>Paul
>
>--
>
>Paul Eggleton
>Intel Open Source Technology Centre

