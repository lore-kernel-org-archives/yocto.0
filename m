Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75978E0070F
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2013 06:03:04 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 21 Feb 2013 06:03:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,709,1355126400"; d="scan'208";a="288793442"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by orsmga002.jf.intel.com with ESMTP; 21 Feb 2013 06:02:49 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.110]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.124]) with mapi id
	14.01.0355.002; Thu, 21 Feb 2013 06:02:48 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Khem Raj <raj.khem@gmail.com>, Edward Vidal <vidal.develone@gmail.com>
Thread-Topic: [yocto] adt-manual.pdf
Thread-Index: AQHODzkQ0Qrs/xHNEkCy78mTZHbLLZiEWa8Q
Date: Thu, 21 Feb 2013 14:02:47 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123796F33C36A@ORSMSX101.amr.corp.intel.com>
References: <CANwz6nz5QUDFeSZR62uncFEsr-4=ehGUpn3AtZpW-4k4reX49A@mail.gmail.com>
	<20130220070508.GA23580@sakrah.homelinux.org>
In-Reply-To: <20130220070508.GA23580@sakrah.homelinux.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: adt-manual.pdf
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
X-List-Received-Date: Thu, 21 Feb 2013 14:03:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks for getting back on this.  I will check it out. =20

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Khem Raj
>Sent: Tuesday, February 19, 2013 11:05 PM
>To: Edward Vidal
>Cc: yocto@yoctoproject.org
>Subject: Re: [yocto] adt-manual.pdf
>
>On (09/01/13 16:59), Edward Vidal wrote:
>> Hello,
>> I was testing the example  4.1 Autotools-Based Projects
>> should the file "configure".in be "configure.ac"
>> this is the error that I get when I execute aclocal
>> aclocal
>> aclocal: warning: autoconf input should be named 'configure.ac', not '
>> configure.in'
>> Any help will be appreciated.
>
>yes configure.ac is right naming. Have you filed a bug for it in
>bugzilla ? if not I would suggest to file one
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

