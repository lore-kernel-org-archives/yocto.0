Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAC2AE0149A
	for <yocto@yoctoproject.org>; Wed, 15 May 2013 21:07:20 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 15 May 2013 21:07:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,681,1363158000"; d="scan'208";a="314410429"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by orsmga001.jf.intel.com with ESMTP; 15 May 2013 21:07:20 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.57]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.61]) with mapi id
	14.01.0355.002; Wed, 15 May 2013 21:07:19 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: building the BitBake manual
Thread-Index: Ac5R6trk75lK0LEeQdumZwDDy2QJUA==
Date: Thu, 16 May 2013 04:07:19 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF393A2@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: building the BitBake manual
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
X-List-Received-Date: Thu, 16 May 2013 04:07:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

When running "make" on the BB docs, my Ubuntu system was missing two packag=
es: dblatex, xmlto.  Currently, the "Required Packages for the Host Develop=
ment System" section in the YP Reference Manual does not list these package=
s as part of the "Documentation" packages.  I am thinking we should add the=
se in for Ubuntu.  Can anyone tell me what the packages would be for Fedora=
, OpenSUSE, and CentOS?  Are they named the same?

Thanks,=20
Scott

Scott Rifenbark
Intel Corporation
Yocto Project Documentation
503.712.2702
503.341.0418 (cell)


