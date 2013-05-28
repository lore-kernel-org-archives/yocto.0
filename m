Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8ECBE01466
	for <yocto@yoctoproject.org>; Mon, 27 May 2013 22:30:47 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 27 May 2013 22:30:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,756,1363158000"; d="scan'208";a="344308801"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by fmsmga002.fm.intel.com with ESMTP; 27 May 2013 22:30:27 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.64]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.5]) with mapi id
	14.03.0123.003; Mon, 27 May 2013 22:30:26 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Trevor Woerner <twoerner@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: doc nit
Thread-Index: AQHOWvhDNLvWrrayiUGeAZP6QgDI6JkaEscA
Date: Tue, 28 May 2013 05:30:26 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF460F6@ORSMSX101.amr.corp.intel.com>
References: <CAHUNapRLhMrO9Tt0QRPH703fQ7FdDiax30Ow8EzooiKH1o=Y2Q@mail.gmail.com>
In-Reply-To: <CAHUNapRLhMrO9Tt0QRPH703fQ7FdDiax30Ow8EzooiKH1o=Y2Q@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: doc nit
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
X-List-Received-Date: Tue, 28 May 2013 05:30:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I think I will just remove that from the master branch.  It really is just =
an "aside" statement and is not necessary. =20

Scott

>-----Original Message-----
>From: Trevor Woerner [mailto:twoerner@gmail.com]
>Sent: Monday, May 27, 2013 9:36 AM
>To: yocto@yoctoproject.org; Rifenbark, Scott M
>Subject: doc nit
>
>Hi,
>
>The Yocto Project Development Manual, section 3.2.2 (Source Control
>Management (SCM)) states that:
>
>"Git is a distributed system that is easy to
>backup (each checkout is a backup in itself)"
>
>I'm not 100% sure a "checkout" would be considered a backup. I think
>most people would say that a "clone" is more like a backup than a
>"checkout". No?
>
>Best regards,
>    Trevor

