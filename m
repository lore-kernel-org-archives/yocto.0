Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAFE4E011AB
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2013 13:07:08 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 29 Jan 2013 13:07:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,561,1355126400"; d="scan'208";a="254426473"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by orsmga001.jf.intel.com with ESMTP; 29 Jan 2013 13:07:08 -0800
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 29 Jan 2013 13:07:08 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.209]) by
	ORSMSX153.amr.corp.intel.com ([169.254.13.17]) with mapi id
	14.01.0355.002; Tue, 29 Jan 2013 13:07:08 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Trevor Woerner <twoerner@gmail.com>
Thread-Topic: [yocto] BB_DANGLINGAPPENDS_WARNONLY
Thread-Index: Ac3+Y10iDWh9RcpZQVGAa2Yq9Rdx6QARCIGAABC7WKA=
Date: Tue, 29 Jan 2013 21:07:07 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237957D28FCF@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237957D28FAF@ORSMSX101.amr.corp.intel.com>
	<CAHUNapTgsRnFLnZ6DCGix5ZGSJ4O7Kuqo_jLmepe-F3vhe1NgA@mail.gmail.com>
In-Reply-To: <CAHUNapTgsRnFLnZ6DCGix5ZGSJ4O7Kuqo_jLmepe-F3vhe1NgA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: BB_DANGLINGAPPENDS_WARNONLY
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
X-List-Received-Date: Tue, 29 Jan 2013 21:07:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Good information... thanks!

>-----Original Message-----
>From: Trevor Woerner [mailto:twoerner@gmail.com]
>Sent: Tuesday, January 29, 2013 1:06 PM
>To: Rifenbark, Scott M
>Cc: yocto@yoctoproject.org
>Subject: Re: [yocto] BB_DANGLINGAPPENDS_WARNONLY
>
>On Tue, Jan 29, 2013 at 3:58 PM, Rifenbark, Scott M
><scott.m.rifenbark@intel.com> wrote:
>> Can anyone out there offer more information on this variable?
>Wondering whether this should be documented in the glossary.
>
>By default bitbake will throw an error if there exists a *.bbappend
>recipe for which there is no corresponding *.bb recipe.
>
>Setting BB_DANGLINGAPPENDS_WARNONLY will change this to a warning
>instead.
>
>It's usually a sign the base recipe's version has been bumped and you
>now need to update your bbappend to match or the base recipe has been
>removed.

