Return-Path: <kishore.k.bodke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E34BEE0027E
	for <yocto@yoctoproject.org>; Tue, 25 Sep 2012 10:00:31 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 Sep 2012 10:00:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,484,1344236400"; d="scan'208";a="197519357"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by orsmga001.jf.intel.com with ESMTP; 25 Sep 2012 10:00:29 -0700
Received: from orsmsx107.amr.corp.intel.com (10.22.225.80) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 25 Sep 2012 10:00:27 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.116]) by
	ORSMSX107.amr.corp.intel.com ([169.254.10.146]) with mapi id
	14.01.0355.002; Tue, 25 Sep 2012 10:00:27 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Thread-Topic: [yocto] do_package_write_rpm failed.
Thread-Index: Ac2arcm1mGkamg2XTEO5Yp+BDalMDwARGr0AABIuzYA=
Date: Tue, 25 Sep 2012 17:00:26 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE2264CD906@ORSMSX105.amr.corp.intel.com>
References: <D956029D25CF204F948EA0FB515E1EE2264BB139@ORSMSX106.amr.corp.intel.com>
	<70CC66F5C30A414DADDA6973E4CA391A6A3DB1@039-SN1MPN1-001.039d.mgd.msft.net>
In-Reply-To: <70CC66F5C30A414DADDA6973E4CA391A6A3DB1@039-SN1MPN1-001.039d.mgd.msft.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: do_package_write_rpm failed.
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
X-List-Received-Date: Tue, 25 Sep 2012 17:00:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: McClintock Matthew-B29882 [mailto:B29882@freescale.com]
>Sent: Monday, September 24, 2012 5:49 PM
>To: Bodke, Kishore K
>Cc: yocto@yoctoproject.org
>Subject: Re: [yocto] do_package_write_rpm failed.
>
>On Mon, Sep 24, 2012 at 6:44 PM, Bodke, Kishore K
><kishore.k.bodke@intel.com> wrote:
>> Hi,
>>
>>
>>
>> I have a modified version of zlib package and trying to build and I get
>> error while doing the packaging.
>>
>> Any idea what this error is?
>>
>>
>>
>> ERROR: Logfile of failure stored in:
>> /usr/local/src/shumway/sep12/build-shumway2/tmp/work/x86_64-poky-
>linux/zlib-qat-1.2.7-r9/temp/log.do_package_write_rpm.5284
>>
>> Log data follows:
>>
>> | DEBUG: Executing python function sstate_task_prefunc
>>
>> | DEBUG: Python function sstate_task_prefunc finished
>>
>> | DEBUG: Executing python function do_package_write_rpm
>>
>> | DEBUG: Executing python function read_subpackage_metadata
>>
>> | DEBUG: Python function read_subpackage_metadata finished
>>
>> | DEBUG: Executing python function do_package_rpm
>>
>> | DEBUG: Executing python function write_specfile
>>
>> | NOTE: Creating RPM package for zlib-qat
>>
>> | NOTE: Creating RPM package for zlib-qat
>>
>> | NOTE: Creating RPM package for zlib-qat-dev
>>
>> | NOTE: Creating RPM package for zlib-qat-dbg
>>
>> | NOTE: Creating RPM package for zlib-qat-staticdev
>>
>> | NOTE: Creating RPM package for zlib-qat-doc
>>
>> | DEBUG: Python function write_specfile finished
>>
>> | DEBUG: Executing shell function BUILDSPEC
>>
>> | Building target platforms: x86_64-poky-linux
>>
>> | Processing files: zlib-qat-1.2.7-r9.x86_64
>>
>> | Finding  Provides:
>> /usr/local/src/shumway/sep12/build-shumway2/tmp/work/x86_64-poky-
>linux/zlib-qat-1.2.7-r9/zlib-qat.provides
>>
>> | Finding  Requires:
>> /usr/local/src/shumway/sep12/build-shumway2/tmp/work/x86_64-poky-
>linux/zlib-qat-1.2.7-r9/zlib-qat.requires
>>
>> | Provides: libz.so.1(ZLIB_1.2.0.2)(64bit) libz.so.1(ZLIB_1.2.2.4)(64bit=
)
>> libz.so.1(ZLIB_1.2.0)(64bit) libz.so.1(ZLIB_1.2.5.1)(64bit)
>> libz.so.1(ZLIB_1.2.2.3)(64bit) libz.so.1(ZLIB_1.2.3.4)(64bit)
>> libz.so.1(ZLIB_1.2.7)(64bit) libz.so.1(ZLIB_1.2.2)(64bit)
>> libz.so.1(ZLIB_1.2.3.3)(64bit) libz.so.1(ZLIB_1.2.5.2)(64bit)
>> libz.so.1(ZLIB_1.2.3.5)(64bit) libz.so.1(ZLIB_1.2.0.8)(64bit)
>> libz.so.1()(64bit)
>>
>> | Requires: rtld(GNU_HASH) libc.so.6(GLIBC_2.14)(64bit)
>> libcrypto.so.1.0.0()(64bit) libpthread.so.0(GLIBC_2.2.5)(64bit)
>> libpthread.so.0(GLIBC_2.3.4)(64bit) libc.so.6()(64bit)
>> libc.so.6(GLIBC_2.2.5)(64bit) libc.so.6(GLIBC_2.3.4)(64bit)
>> libpthread.so.0(GLIBC_2.3.2)(64bit) libdl.so.2()(64bit)
>> librt.so.1(GLIBC_2.2.5)(64bit) libpthread.so.0()(64bit)
>> libcrypto.so.1.0.0(OPENSSL_1.0.0)(64bit) librt.so.1()(64bit)
>> libc.so.6(GLIBC_2.3.2)(64bit)
>>
>> | Provides: libz.so.1(ZLIB_1.2.0.2)(64bit) libz.so.1(ZLIB_1.2.2.4)(64bit=
)
>> libz.so.1(ZLIB_1.2.0)(64bit) libz.so.1(ZLIB_1.2.5.1)(64bit)
>> libz.so.1(ZLIB_1.2.2.3)(64bit) libz.so.1(ZLIB_1.2.3.4)(64bit)
>> libz.so.1(ZLIB_1.2.7)(64bit) libz.so.1(ZLIB_1.2.2)(64bit)
>> libz.so.1(ZLIB_1.2.3.3)(64bit) libz.so.1(ZLIB_1.2.5.2)(64bit)
>> libz.so.1(ZLIB_1.2.3.5)(64bit) libz.so.1(ZLIB_1.2.0.8)(64bit)
>> libz.so.1()(64bit)
>>
>> | Requires: rtld(GNU_HASH) libc.so.6(GLIBC_2.14)(64bit)
>> libcrypto.so.1.0.0()(64bit) libpthread.so.0(GLIBC_2.2.5)(64bit)
>> libpthread.so.0(GLIBC_2.3.4)(64bit) libc.so.6()(64bit)
>> libc.so.6(GLIBC_2.2.5)(64bit) libc.so.6(GLIBC_2.3.4)(64bit)
>> libpthread.so.0(GLIBC_2.3.2)(64bit) libdl.so.2()(64bit)
>> librt.so.1(GLIBC_2.2.5)(64bit) libpthread.so.0()(64bit)
>> libcrypto.so.1.0.0(OPENSSL_1.0.0)(64bit) librt.so.1()(64bit)
>> libc.so.6(GLIBC_2.3.2)(64bit)
>>
>> | Processing files: zlib-qat-dev-1.2.7-r9.x86_64
>>
>> | Finding  Provides:
>> /usr/local/src/shumway/sep12/build-shumway2/tmp/work/x86_64-poky-
>linux/zlib-qat-1.2.7-r9/zlib-qat.provides
>>
>> | error: line 164: Illegal char '-' in EVR:
>>
>> |
>>
>> | error: Failed to find Provides:
>>
>> |
>>
>> |
>>
>> | RPM build errors:
>>
>> |     line 164: Illegal char '-' in EVR:
>
>I've found RPM does not like - in it's variable names. Did you add a
>'-' anywhere? Maybe in your arch or package name? What did you change
>in the recipe?
>

I have added my patches and renamed the zlib recipe as  zlib-qat/zlib-qat_1=
.2.7.bb=20
I tried removing '-' in the name of the recipe (zlibqat/zlibqat_1.2.7.bb), =
but it didn't=20
made any difference.

Thanks
Kishore.

>-M
>
>
>> |
>>
>> |     Failed to find Provides:
>>
>> | DEBUG: Python function do_package_rpm finished
>>
>> | DEBUG: Python function do_package_write_rpm finished
>>
>> | ERROR: Function failed: BUILDSPEC (see
>> /usr/local/src/shumway/sep12/build-shumway2/tmp/work/x86_64-poky-
>linux/zlib-qat-1.2.7-r9/temp/log.do_package_write_rpm.5284
>> for further information)
>>
>> ERROR: Task 11
>> (/usr/local/src/shumway/sep12/meta-intel/meta-crystalforest/recipes-
>quickassist/intel-zlib-qat/zlib-qat_1.2.7.bb,
>> do_package_write_rpm) failed with exit code '1'
>>
>> NOTE: Tasks Summary: Attempted 944 tasks of which 934 didn't need to be
>> rerun and 1 failed.
>>
>> Summary: 1 task failed:
>>
>>
>> /usr/local/src/shumway/sep12/meta-intel/meta-crystalforest/recipes-
>quickassist/intel-zlib-qat/zlib-qat_1.2.7.bb,
>> do_package_write_rpm
>>
>> Summary: There was 1 ERROR message shown, returning a non-zero exit
>code.
>>
>>
>>
>> Thanks
>>
>> Kishore.
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>

