Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe002.messaging.microsoft.com [216.32.181.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C71FBE01371
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2012 17:48:55 -0700 (PDT)
Received: from mail212-ch1-R.bigfish.com (10.43.68.240) by
	CH1EHSOBE011.bigfish.com (10.43.70.61) with Microsoft SMTP Server id
	14.1.225.23; Tue, 25 Sep 2012 00:48:55 +0000
Received: from mail212-ch1 (localhost [127.0.0.1])	by
	mail212-ch1-R.bigfish.com (Postfix) with ESMTP id 01526300193;
	Tue, 25 Sep 2012 00:48:55 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -1
X-BigFish: VS-1(zz98dI9371I1432Id6f1izz1202h1d1ah1d2ahzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hd25hf0ah107ah10d2h1288h12a5h12a9h12bdh137ah13b6hbe9i1155h)
Received: from mail212-ch1 (localhost.localdomain [127.0.0.1]) by mail212-ch1
	(MessageSwitch) id 1348534133508857_373;
	Tue, 25 Sep 2012 00:48:53 +0000 (UTC)
Received: from CH1EHSMHS026.bigfish.com (snatpool2.int.messaging.microsoft.com
	[10.43.68.233])	by mail212-ch1.bigfish.com (Postfix) with ESMTP id
	72FA7E0076;	Tue, 25 Sep 2012 00:48:53 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS026.bigfish.com
	(10.43.70.26) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Tue, 25 Sep 2012 00:48:53 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.124]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.02.0309.003; Mon, 24 Sep 2012 19:48:52 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
Thread-Topic: [yocto] do_package_write_rpm failed.
Thread-Index: AQHNmreIDSFbhZlw9EaZAncIj4XW+w==
Date: Tue, 25 Sep 2012 00:48:52 +0000
Message-ID: <70CC66F5C30A414DADDA6973E4CA391A6A3DB1@039-SN1MPN1-001.039d.mgd.msft.net>
References: <D956029D25CF204F948EA0FB515E1EE2264BB139@ORSMSX106.amr.corp.intel.com>
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE2264BB139@ORSMSX106.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: do_package_write_rpm failed.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 25 Sep 2012 00:48:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <66CEF3D862EADF458A02236D84534059@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 24, 2012 at 6:44 PM, Bodke, Kishore K
<kishore.k.bodke@intel.com> wrote:
> Hi,
>
>
>
> I have a modified version of zlib package and trying to build and I get
> error while doing the packaging.
>
> Any idea what this error is?
>
>
>
> ERROR: Logfile of failure stored in:
> /usr/local/src/shumway/sep12/build-shumway2/tmp/work/x86_64-poky-linux/zl=
ib-qat-1.2.7-r9/temp/log.do_package_write_rpm.5284
>
> Log data follows:
>
> | DEBUG: Executing python function sstate_task_prefunc
>
> | DEBUG: Python function sstate_task_prefunc finished
>
> | DEBUG: Executing python function do_package_write_rpm
>
> | DEBUG: Executing python function read_subpackage_metadata
>
> | DEBUG: Python function read_subpackage_metadata finished
>
> | DEBUG: Executing python function do_package_rpm
>
> | DEBUG: Executing python function write_specfile
>
> | NOTE: Creating RPM package for zlib-qat
>
> | NOTE: Creating RPM package for zlib-qat
>
> | NOTE: Creating RPM package for zlib-qat-dev
>
> | NOTE: Creating RPM package for zlib-qat-dbg
>
> | NOTE: Creating RPM package for zlib-qat-staticdev
>
> | NOTE: Creating RPM package for zlib-qat-doc
>
> | DEBUG: Python function write_specfile finished
>
> | DEBUG: Executing shell function BUILDSPEC
>
> | Building target platforms: x86_64-poky-linux
>
> | Processing files: zlib-qat-1.2.7-r9.x86_64
>
> | Finding  Provides:
> /usr/local/src/shumway/sep12/build-shumway2/tmp/work/x86_64-poky-linux/zl=
ib-qat-1.2.7-r9/zlib-qat.provides
>
> | Finding  Requires:
> /usr/local/src/shumway/sep12/build-shumway2/tmp/work/x86_64-poky-linux/zl=
ib-qat-1.2.7-r9/zlib-qat.requires
>
> | Provides: libz.so.1(ZLIB_1.2.0.2)(64bit) libz.so.1(ZLIB_1.2.2.4)(64bit)
> libz.so.1(ZLIB_1.2.0)(64bit) libz.so.1(ZLIB_1.2.5.1)(64bit)
> libz.so.1(ZLIB_1.2.2.3)(64bit) libz.so.1(ZLIB_1.2.3.4)(64bit)
> libz.so.1(ZLIB_1.2.7)(64bit) libz.so.1(ZLIB_1.2.2)(64bit)
> libz.so.1(ZLIB_1.2.3.3)(64bit) libz.so.1(ZLIB_1.2.5.2)(64bit)
> libz.so.1(ZLIB_1.2.3.5)(64bit) libz.so.1(ZLIB_1.2.0.8)(64bit)
> libz.so.1()(64bit)
>
> | Requires: rtld(GNU_HASH) libc.so.6(GLIBC_2.14)(64bit)
> libcrypto.so.1.0.0()(64bit) libpthread.so.0(GLIBC_2.2.5)(64bit)
> libpthread.so.0(GLIBC_2.3.4)(64bit) libc.so.6()(64bit)
> libc.so.6(GLIBC_2.2.5)(64bit) libc.so.6(GLIBC_2.3.4)(64bit)
> libpthread.so.0(GLIBC_2.3.2)(64bit) libdl.so.2()(64bit)
> librt.so.1(GLIBC_2.2.5)(64bit) libpthread.so.0()(64bit)
> libcrypto.so.1.0.0(OPENSSL_1.0.0)(64bit) librt.so.1()(64bit)
> libc.so.6(GLIBC_2.3.2)(64bit)
>
> | Provides: libz.so.1(ZLIB_1.2.0.2)(64bit) libz.so.1(ZLIB_1.2.2.4)(64bit)
> libz.so.1(ZLIB_1.2.0)(64bit) libz.so.1(ZLIB_1.2.5.1)(64bit)
> libz.so.1(ZLIB_1.2.2.3)(64bit) libz.so.1(ZLIB_1.2.3.4)(64bit)
> libz.so.1(ZLIB_1.2.7)(64bit) libz.so.1(ZLIB_1.2.2)(64bit)
> libz.so.1(ZLIB_1.2.3.3)(64bit) libz.so.1(ZLIB_1.2.5.2)(64bit)
> libz.so.1(ZLIB_1.2.3.5)(64bit) libz.so.1(ZLIB_1.2.0.8)(64bit)
> libz.so.1()(64bit)
>
> | Requires: rtld(GNU_HASH) libc.so.6(GLIBC_2.14)(64bit)
> libcrypto.so.1.0.0()(64bit) libpthread.so.0(GLIBC_2.2.5)(64bit)
> libpthread.so.0(GLIBC_2.3.4)(64bit) libc.so.6()(64bit)
> libc.so.6(GLIBC_2.2.5)(64bit) libc.so.6(GLIBC_2.3.4)(64bit)
> libpthread.so.0(GLIBC_2.3.2)(64bit) libdl.so.2()(64bit)
> librt.so.1(GLIBC_2.2.5)(64bit) libpthread.so.0()(64bit)
> libcrypto.so.1.0.0(OPENSSL_1.0.0)(64bit) librt.so.1()(64bit)
> libc.so.6(GLIBC_2.3.2)(64bit)
>
> | Processing files: zlib-qat-dev-1.2.7-r9.x86_64
>
> | Finding  Provides:
> /usr/local/src/shumway/sep12/build-shumway2/tmp/work/x86_64-poky-linux/zl=
ib-qat-1.2.7-r9/zlib-qat.provides
>
> | error: line 164: Illegal char '-' in EVR:
>
> |
>
> | error: Failed to find Provides:
>
> |
>
> |
>
> | RPM build errors:
>
> |     line 164: Illegal char '-' in EVR:

I've found RPM does not like - in it's variable names. Did you add a
'-' anywhere? Maybe in your arch or package name? What did you change
in the recipe?

-M


> |
>
> |     Failed to find Provides:
>
> | DEBUG: Python function do_package_rpm finished
>
> | DEBUG: Python function do_package_write_rpm finished
>
> | ERROR: Function failed: BUILDSPEC (see
> /usr/local/src/shumway/sep12/build-shumway2/tmp/work/x86_64-poky-linux/zl=
ib-qat-1.2.7-r9/temp/log.do_package_write_rpm.5284
> for further information)
>
> ERROR: Task 11
> (/usr/local/src/shumway/sep12/meta-intel/meta-crystalforest/recipes-quick=
assist/intel-zlib-qat/zlib-qat_1.2.7.bb,
> do_package_write_rpm) failed with exit code '1'
>
> NOTE: Tasks Summary: Attempted 944 tasks of which 934 didn't need to be
> rerun and 1 failed.
>
> Summary: 1 task failed:
>
>
> /usr/local/src/shumway/sep12/meta-intel/meta-crystalforest/recipes-quicka=
ssist/intel-zlib-qat/zlib-qat_1.2.7.bb,
> do_package_write_rpm
>
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
>
>
> Thanks
>
> Kishore.
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=


