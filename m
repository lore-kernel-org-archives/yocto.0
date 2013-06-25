Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2EF4E01549
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 05:43:32 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 25 Jun 2013 05:43:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,936,1363158000"; d="scan'208";a="359240734"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by orsmga002.jf.intel.com with ESMTP; 25 Jun 2013 05:43:32 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.181]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.117]) with mapi id
	14.03.0123.003; Tue, 25 Jun 2013 05:43:32 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Thread-Topic: [yocto] Layer input
Thread-Index: Ac5xoIa8qgTrlOjLRMKaa4xXGNNS/AAO4jyAAA6ftoA=
Date: Tue, 25 Jun 2013 12:43:31 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF51891@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5182B@ORSMSX101.amr.corp.intel.com>
	<51C99019.1080506@windriver.com>
In-Reply-To: <51C99019.1080506@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: Layer input
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
X-List-Received-Date: Tue, 25 Jun 2013 12:43:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks Bruce.  I will implement that.

>-----Original Message-----
>From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>Sent: Tuesday, June 25, 2013 5:42 AM
>To: Rifenbark, Scott M
>Cc: yocto@yoctoproject.org; Paul Eggleton
>Subject: Re: [yocto] Layer input
>
>On 13-06-25 08:35 AM, Rifenbark, Scott M wrote:
>> Hi,
>>
>> This next illustration attempting to dive deeper in the YP Development
>Process takes the remaining left-side input from that figure in the
>Quick Start (metadata, Machine, and Policy).  Note that when the
>original figure was created that appears in the QS, the layer stuff had
>not yet been established.  This figure I am attaching is rough.  I am
>unsure as to the contents of these layers.  Right now it is detailed but
>with generic names.  The idea is that individual layers are preferred to
>do things such as provide software, configure policy, and configure
>machines.  I am including some notes at the bottom of the figure that
>would not be part of the figure but might help to get across what I am
>trying to accomplish here.
>>
>> Any suggestions and feedback is really appreciated.
>
>I realize you are documenting the Yocto reference builds, so the
>explicit reference to linux-yocto*.bbappend makes sense (and I obviously
>like it), but a quick tweak might be to just use <name>.bbappend or
><name>.bb (since not all BSP layers must bbappend a kernel, they may
>have something very custom) for the kernel recipe reference.
>
>You've already used that notation in the distro layer for the kernel-
>headers, so it logically flows.
>
>Cheers,
>
>Bruce
>
>>
>> Thanks,
>> Scott
>>
>> Scott Rifenbark
>> Intel Corporation
>> Yocto Project Documentation
>> 503.712.2702
>> 503.341.0418 (cell)
>>
>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>


