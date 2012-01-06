Return-Path: <shane.wang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAD6BE0030C
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2012 21:28:19 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 05 Jan 2012 21:28:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="95069314"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga002.jf.intel.com with ESMTP; 05 Jan 2012 21:28:18 -0800
Received: from pgsmsx102.gar.corp.intel.com (10.221.44.80) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 6 Jan 2012 13:28:03 +0800
Received: from shsmsx101.ccr.corp.intel.com (10.239.4.153) by
	PGSMSX102.gar.corp.intel.com (10.221.44.80) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Fri, 6 Jan 2012 13:28:02 +0800
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.199]) by
	SHSMSX101.ccr.corp.intel.com ([169.254.1.38]) with mapi id
	14.01.0355.002; Fri, 6 Jan 2012 13:28:01 +0800
From: "Wang, Shane" <shane.wang@intel.com>
To: Trevor Woerner <twoerner@gmail.com>, "omxil-devel@lists.sourceforge.net"
	<omxil-devel@lists.sourceforge.net>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 1/2] Fix Makefiles
Thread-Index: AQHMy810E+M/6lkYKU6nt0SX/RITcpX+z+rA
Date: Fri, 6 Jan 2012 05:28:00 +0000
Message-ID: <3AB6CE7F274E534CAFD089D127A8A1FC018428@SHSMSX102.ccr.corp.intel.com>
References: <3AB6CE7F274E534CAFD089D127A8A1FC011724@SHSMSX102.ccr.corp.intel.com>
	<20120104052839.GJ31275@sakrah.homelinux.org>
	<CAHUNapS6kZg6oPftEsmtNcKzhhDqDotCh0JWVnvPMawuSD_msw@mail.gmail.com>
In-Reply-To: <CAHUNapS6kZg6oPftEsmtNcKzhhDqDotCh0JWVnvPMawuSD_msw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Re: [PATCH 1/2] Fix Makefiles
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
X-List-Received-Date: Fri, 06 Jan 2012 05:28:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

But when I run " make install DESTDIR=3D/alternate/directory", only doc wil=
l go into /alternate/directory/alternate/directory.
I assume my command is not wrong per the INSTALL readme.

--
Shane

Trevor Woerner wrote on=A02012-01-06:

> On Wed, Jan 4, 2012 at 12:28 AM, Khem Raj <raj.khem@gmail.com> wrote:
>> On (28/12/11 14:54), Wang, Shane wrote:
>>> This patch is to remove DESTDIR in docdir.
>>> Otherwise, when users install by running `make install
> DESTDIR=3D/alternate/directory' specified in the file INSTALL, the doc wi=
ll go
> into /alternate/directory/alternate/directory, which is not expected.
>>=20
>> DESTDIR is supposed to relocate the install dir why is this wrong ?
>=20
> Agree. Additionally, "make distcheck" will generally fail if there is
> no DESTDIR.



