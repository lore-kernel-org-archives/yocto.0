Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57B51E00777
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2012 07:44:31 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 10 Dec 2012 07:44:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,252,1355126400"; d="scan'208";a="231717454"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by orsmga001.jf.intel.com with ESMTP; 10 Dec 2012 07:44:30 -0800
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Mon, 10 Dec 2012 07:44:30 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX153.amr.corp.intel.com ([169.254.13.66]) with mapi id
	14.01.0355.002; Mon, 10 Dec 2012 07:44:27 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] slight clarification for yocto docs web page?
Thread-Index: AQHN1stJtahOldQzukWjE8FZQ7qsRZgR6uzwgACzs4D//44pYA==
Date: Mon, 10 Dec 2012 15:44:29 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946ACBCBC@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1212100636190.6810@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946ACBC2B@ORSMSX101.amr.corp.intel.com>
	<2792023.dZkdIqr4D5@helios>
In-Reply-To: <2792023.dZkdIqr4D5@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: slight clarification for yocto docs web page?
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
X-List-Received-Date: Mon, 10 Dec 2012 15:44:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Okay - I will put this on my TODO list

Thanks for the input.

Scott

>-----Original Message-----
>From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
>Sent: Monday, December 10, 2012 6:32 AM
>To: Rifenbark, Scott M
>Cc: yocto@yoctoproject.org
>Subject: Re: [yocto] slight clarification for yocto docs web page?
>
>On Monday 10 December 2012 11:52:56 Rifenbark, Scott M wrote:
>> Robert,
>>
>> This "poky" term in the link is because back when the manual was first
>set
>> up I used "poky-ref-manual" as the manuals folder.  The easiest fix
>would
>> be set up a symlink from a more appropriately named link.  A fix that
>has a
>> lot more ripples would be to rename the directory to something like
>> "ref-manual."
>
>My suggestion would be to do both - rename it and then symlink from the
>old
>name to the new one.
>
>Cheers,
>Paul
>
>--
>
>Paul Eggleton
>Intel Open Source Technology Centre

