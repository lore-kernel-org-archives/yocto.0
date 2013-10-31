Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB4FBE0173E
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 07:21:18 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 31 Oct 2013 07:21:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="315267289"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
	by AZSMGA002.ch.intel.com with ESMTP; 31 Oct 2013 07:21:17 -0700
Received: from orsmsx114.amr.corp.intel.com (10.22.240.10) by
	ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 31 Oct 2013 07:21:16 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.126]) by
	ORSMSX114.amr.corp.intel.com ([10.22.240.10]) with mapi id
	14.03.0123.003; Thu, 31 Oct 2013 07:21:16 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Maxin B. John" <maxin.john@enea.com>
Thread-Topic: [yocto] [PATCH] adt-manual: Added note for static binary build.
Thread-Index: AQHO1kI/munCKSuIRUurNIWD0wurhpoO26XA
Date: Thu, 31 Oct 2013 14:21:16 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F4376C@ORSMSX101.amr.corp.intel.com>
References: <1382347275-39633-1-git-send-email-maxin.john@enea.com>
	<20131031140508.GA23080@sestofb10.enea.se>
In-Reply-To: <20131031140508.GA23080@sestofb10.enea.se>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] adt-manual: Added note for static binary build.
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
X-List-Received-Date: Thu, 31 Oct 2013 14:21:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Where are the insertions for this patch?

>-----Original Message-----
>From: Maxin B. John [mailto:maxin.john@enea.com]
>Sent: Thursday, October 31, 2013 7:05 AM
>To: Rifenbark, Scott M
>Cc: yocto@yoctoproject.org
>Subject: Re: [yocto] [PATCH] adt-manual: Added note for static binary buil=
d.
>
>On Mon, Oct 21, 2013 at 11:21 AM, <maxin.john@enea.com> wrote:
>>    From: "Maxin B. John" <maxin.john@enea.com>
>>
>>    Fixes [YOCTO #5347]
>>
>>    SDK created using the "-c populate_sdk" will not support static
>>    binary build without proper staticdev library packages. I have
>>    added a note to inform the user about this limitation.
>>
>>    Signed-off-by: Maxin B. John <maxin.john@enea.com>
>>    ---
>>     documentation/adt-manual/adt-prepare.xml |    6 ++++++
>>     1 file changed, 6 insertions(+)
>>
>>    diff --git a/documentation/adt-manual/adt-prepare.xml
>>b/documentation/adt-manual/adt-prepare.xml
>>    index 3c50cf9..3333cc4 100644
>>    --- a/documentation/adt-manual/adt-prepare.xml
>>    +++ b/documentation/adt-manual/adt-prepare.xml
>>    @@ -573,6 +573,12 @@
>>              When the BitBake command completes, the toolchain
>>installer will be in
>>              <filename>tmp/deploy/sdk</filename> in the Build
>>Directory.
>>          </para>
>
>ping.
>


