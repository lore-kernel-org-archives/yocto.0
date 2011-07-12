Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id A128F4C800A9
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2011 21:55:47 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 11 Jul 2011 19:55:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,517,1304319600"; d="scan'208";a="26759092"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga002.fm.intel.com with ESMTP; 11 Jul 2011 19:55:46 -0700
Received: from pgsmsx151.gar.corp.intel.com (172.30.236.41) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 12 Jul 2011 10:55:45 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX151.gar.corp.intel.com (172.30.236.41) with Microsoft SMTP Server
	(TLS) id 14.1.289.1; Tue, 12 Jul 2011 10:55:44 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Tue, 12 Jul 2011 10:55:42 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: "Richard Purdie (richard.purdie@linuxfoundation.org)"
	<richard.purdie@linuxfoundation.org>
Date: Tue, 12 Jul 2011 10:55:41 +0800
Thread-Topic: PACKAGES_DYNAMIC handling in multilib
Thread-Index: AcxAPhW/BiV9JHW8S4CTE13r53bUnQ==
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A12D6D05EAE@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: PACKAGES_DYNAMIC handling in multilib
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
X-List-Received-Date: Tue, 12 Jul 2011 02:55:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Richard,

Recently I am doing some work related with multilib.

In current code logic, I see packages that defined in "PACKAGES" variable w=
ill be automatically tagged with libxx-PN.

However there seems no logic to handle the PACKAGES_DYNAMIC case. Is it mis=
sed?

Besides, there is runtime package split code, for example in perl recipe, t=
here are perl-module-* packages split by the following code.

python populate_packages_prepend () {
        libdir =3D bb.data.expand('${libdir}/perl/${PV}', d)
        do_split_packages(d, libdir, 'auto/(Encode/.[^/]*)/.*', 'perl-modul=
e-%s', 'perl module %s', recursive=3DTrue, allow_dirs=3DFalse, match_path=
=3DTrue, prepend=3DFalse)
        do_split_packages(d, libdir, 'auto/([^/]*)/.*', 'perl-module-%s', '=
perl module %s', recursive=3DTrue, allow_dirs=3DFalse, match_path=3DTrue, p=
repend=3DFalse)
        do_split_packages(d, libdir, 'Module/([^\/]*).*', 'perl-module-%s',=
 'perl module %s', recursive=3DTrue, allow_dirs=3DFalse, match_path=3DTrue,=
 prepend=3DFalse)
        do_split_packages(d, libdir, '(^(?!(CPAN\/|CPANPLUS\/|Module\/|unic=
ore\/|auto\/)[^\/]).*)\.(pm|pl|e2x)', 'perl-module-%s', 'perl module %s', r=
ecursive=3DTrue, allow_dirs=3DFalse, match_path=3DTrue, prepend=3DFalse)
}

To support lib32-perl/lib64-perl and other similar recipes, I think we may =
have to specifically handle such pieces of code in current poky.=20

Do you have suggestions on the above?

Thanks,
Dongxiao=20


