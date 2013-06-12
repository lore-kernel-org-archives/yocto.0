Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB778E01409
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 12:53:57 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 12 Jun 2013 12:53:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,854,1363158000"; d="scan'208";a="352449481"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by orsmga002.jf.intel.com with ESMTP; 12 Jun 2013 12:53:56 -0700
Received: from orsmsx110.amr.corp.intel.com (10.22.240.8) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 12 Jun 2013 12:53:56 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.64]) by
	ORSMSX110.amr.corp.intel.com ([169.254.3.227]) with mapi id
	14.03.0123.003; Wed, 12 Jun 2013 12:53:56 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>, 'Paul Eggleton'
	<paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Need clarification on some terms
Thread-Index: Ac5nZF8Wp+c4KMD8R1u/T9DvP2C7/QAQLC/AAABb1pA=
Date: Wed, 12 Jun 2013 19:53:55 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF48DEF@ORSMSX101.amr.corp.intel.com>
References: <0A7B481F47BD4848A701598AE9CDD6DA@PAULD><bc6dfda22fdcefeb7de188e29b2ad887.squirrel@mail.cubic.org>
	<1875741.cStO1T6C1g@helios> <58DC6CADE1A5492E9E712C310E6C9019@PAULD>
In-Reply-To: <58DC6CADE1A5492E9E712C310E6C9019@PAULD>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Need clarification on some terms
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
X-List-Received-Date: Wed, 12 Jun 2013 19:53:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I need this clarified as well.  I am taking some "guesses" here and hoping =
for input.

Scott

>-----Original Message-----
>From: Paul D. DeRocco [mailto:pderocco@ix.netcom.com]
>Sent: Wednesday, June 12, 2013 12:51 PM
>To: 'Paul Eggleton'; Rifenbark, Scott M
>Cc: yocto@yoctoproject.org
>Subject: RE: [yocto] Need clarification on some terms
>
>> From: Paul Eggleton
>>
>> gcc-cross-intermediate is gone as of 1.3; as I understand it
>> current versions
>> of glibc can be compiled using gcc-cross-initial so the
>> intermediate step is
>> no longer required. We should remove mention of this from the
>> documentation
>> (other than in the migration section that is).
>
>Okay, so now there are two stages to each cross-compilation, so there's
>gcc-cross-initial producing gcc-cross, and also gcc-crosssdk-initial
>producing gcc-crosssdk. But is the difference between those two pairs
>that
>the first pair ultimately produces a cross-compiler that runs on the
>host,
>and the second pair ultimately produces a native compiler that runs on
>the
>target? From what I can gather about the various references to "SDK", it
>sounds like it's supposed to be a set of native tools that runs on the
>target and produces output for the target. If that's true, then the new
>descriptions are still wrong. Shouldn't gcc-cross be described as a
>"cross"
>package rather than a "native", and shouldn't gcc-crosssdk be described
>as a
>"native" binary that runs on the target? Or am I still fundamentally
>misinterpreting these things?
>
>For now, I really just need to know if I'm interested in the SDK, since
>I
>have no intention of ever running compilations on my target system.
>
>--
>
>Ciao,               Paul D. DeRocco
>Paul                mailto:pderocco@ix.netcom.com


