Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0E4384C80BD7
	for <yocto@yoctoproject.org>; Tue, 26 Oct 2010 23:25:07 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 26 Oct 2010 21:25:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,244,1286175600"; d="scan'208";a="671254883"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga001.jf.intel.com with ESMTP; 26 Oct 2010 21:25:06 -0700
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 27 Oct 2010 12:25:05 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 27 Oct 2010 12:25:05 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 27 Oct 2010 12:25:04 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 27 Oct 2010 12:24:57 +0800
Thread-Topic: [PATCH] package.bbclass: make sure 'sysroots' created before
	lockfile
Thread-Index: Act1jumrBRdUe1LsQoa29g9xAUffPA==
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D0B8DFD19@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-hashedpuzzle: dTs= tzY= AF2u AKen Al0d AzLE Cghr Ck33 DPA4 EJZ7 FOmc
	GLQG IJ3g IROx IoAw
	IreG; 1; eQBvAGMAdABvAEAAeQBvAGMAdABvAHAAcgBvAGoAZQBjAHQALgBvAHIAZwA=;
	Sosha1_v1; 7; {C4CF5468-B944-4832-BF1E-5C18AEE28BBE};
	awBlAHYAaQBuAC4AdABpAGEAbgBAAGkAbgB0AGUAbAAuAGMAbwBtAA==; Wed,
	27 Oct 2010 04:24:58 GMT;
	WwBQAEEAVABDAEgAXQAgAHAAYQBjAGsAYQBnAGUALgBiAGIAYwBsAGEAcwBzADoAIABtAGEAawBlACAAcwB1AHIAZQAgACcAcwB5AHMAcgBvAG8AdABzACcAIABjAHIAZQBhAHQAZQBkACAAYgBlAGYAbwByAGUAIABsAG8AYwBrAGYAaQBsAGUA
x-cr-puzzleid: {C4CF5468-B944-4832-BF1E-5C18AEE28BBE}
acceptlanguage: en-US
MIME-Version: 1.0
Subject: [PATCH] package.bbclass: make sure 'sysroots' created before lockfile
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 27 Oct 2010 04:25:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

 meta/classes/package.bbclass |    1 +
 1 file changed, 1 insertion(+)

commit 2cd6d6d7957cf46114c8b25ed13e6f8030cd9c06
Author: Kevin Tian <kevin.tian@intel.com>
Date:   Tue Oct 26 15:54:43 2010 +0800

    package.bbclass: make sure 'sysroots' created before lockfile

    package sstate requires a lock under sysroots/, which however may not b=
e
    created when sstate_setscene functions are executed and then causes fai=
lures.
    here we make sure 'sysroots' created before do_package_setscene is exec=
uted.

    Signed-off-by: Kevin Tian <kevin.tian@intel.com>
Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dtk/master

Thanks
Kevin

