Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA736E01560
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 05:27:17 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 12 Jun 2013 05:25:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,851,1363158000"; d="scan'208";a="352234970"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by orsmga002.jf.intel.com with ESMTP; 12 Jun 2013 05:27:17 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.64]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.62]) with mapi id
	14.03.0123.003; Wed, 12 Jun 2013 05:27:16 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Need clarification on some terms
Thread-Index: Ac5nIlkRp+c4KMD8R1u/T9DvP2C7/QAdpzoAAAGA5oAADbclwA==
Date: Wed, 12 Jun 2013 12:27:16 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF48C11@ORSMSX101.amr.corp.intel.com>
References: <0A7B481F47BD4848A701598AE9CDD6DA@PAULD>
	<bc6dfda22fdcefeb7de188e29b2ad887.squirrel@mail.cubic.org>
	<1875741.cStO1T6C1g@helios>
In-Reply-To: <1875741.cStO1T6C1g@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
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
X-List-Received-Date: Wed, 12 Jun 2013 12:27:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

This begs the question for gcc-crosssdk-intermediate...  Is that gone as we=
ll?

>-----Original Message-----
>From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
>Sent: Wednesday, June 12, 2013 5:00 AM
>To: yocto@yoctoproject.org
>Cc: Rifenbark, Scott M
>Subject: Re: [yocto] Need clarification on some terms
>
>On Wednesday 12 June 2013 04:16:30 michael@cubic.org wrote:
>> Paul D. DeRocco wrote on Tuesday, June 11, 2013 at 9:07 PM:
>> > "Following is a list of toolchain recipes..." This is followed by
>> > gcc-cross-initial, gcc-cross-intermediate, gcc-cross. All three of
>these
>> > things say that the toolchain runs on the host and is used to build
>> > software
>> > for the target. So why are there three of them? What are the
>differences
>> > among them?
>>
>> The gcc must be build multiple times when you bootstrap it.
>> For building the gcc you need to build the libc and therefor you need
>to
>> build the linux kernel headers and therefor you need the gcc. Oops.
>>
>> Thats why you first build a gcc only with c support and no libc first.
>> Use that to generate the kernel headers, then build the initial libc
>and
>> then another gcc with libc support and all the frontends you need
>> (c,c++,java,fortran,..). Why there is the gcc-cross-intermediate I am
>not
>> shure, but there will be a reason and another one can clarify that.
>
>gcc-cross-intermediate is gone as of 1.3; as I understand it current
>versions
>of glibc can be compiled using gcc-cross-initial so the intermediate
>step is
>no longer required. We should remove mention of this from the
>documentation
>(other than in the migration section that is).
>
>Cheers,
>Paul
>
>--
>
>Paul Eggleton
>Intel Open Source Technology Centre

