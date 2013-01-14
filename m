Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00249E00740
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2013 06:52:47 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 14 Jan 2013 06:52:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,468,1355126400"; d="scan'208";a="243577415"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by azsmga001.ch.intel.com with ESMTP; 14 Jan 2013 06:52:47 -0800
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.1.421.2; Mon, 14 Jan 2013 06:52:47 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.209]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.4]) with mapi id
	14.01.0355.002; Mon, 14 Jan 2013 06:52:46 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Thread-Topic: SRCPV description
Thread-Index: Ac3yZs+nKWhPkX2ZQdqv7/VG//MDcA==
Date: Mon, 14 Jan 2013 14:52:46 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237957D23083@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: SRCPV description
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
X-List-Received-Date: Mon, 14 Jan 2013 14:52:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,=20

I need a description of the SRCPV variable for the YP reference glossary.  =
I have been told that it is generated and not assigned and that it is used =
to define PV values that include the source revisions from an RCS.  By defa=
ult it is set to the following in the conf/bitbake.conf file:

SRCPV =3D "${@bb.fetch2.get_srcrev(d)}"

Can anyone provide more information on this variable? =20

Thanks,=20
Scott



Scott Rifenbark
Intel Corporation
Yocto Project Documentation
503.712.2702
503.341.0418 (cell)


