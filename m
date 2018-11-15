Return-Path: <samuli.piippo@qt.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54C0BE00A1A; Thu, 15 Nov 2018 12:53:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.13.107 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 3574 seconds by postgrey-1.32 at yocto-www;
	Thu, 15 Nov 2018 12:53:20 PST
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
	(mail-eopbgr130107.outbound.protection.outlook.com [40.107.13.107])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C415E008D7
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 12:53:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=qtcompany.onmicrosoft.com; s=selector1-qt-io;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=b2EypkTgDSm7fyNKmSMEM6y1Ka905fiywt1CxnNIIaI=;
	b=O0074jbKl9IHwmgGKMTlI6bpXlQcRNzMYzRf4/rL6NsI9S08eN06bsEPRwMIcVf6gTy5M8g1JlRme0g57q+VNSXycofyf887LMexkGMNxQ+4310XYs/sy+8OtQacJeV3k9zpN24hLszL85JCgbD8i00KXl+0LFXtAvsjIwvaDSQ=
Received: from HE1PR0201MB2265.eurprd02.prod.outlook.com (10.168.145.136) by
	HE1PR0201MB2348.eurprd02.prod.outlook.com (10.168.146.14) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1339.20; Thu, 15 Nov 2018 20:38:12 +0000
Received: from HE1PR0201MB2265.eurprd02.prod.outlook.com
	([fe80::e588:a17c:cfbc:83f9]) by
	HE1PR0201MB2265.eurprd02.prod.outlook.com
	([fe80::e588:a17c:cfbc:83f9%6]) with mapi id 15.20.1294.045;
	Thu, 15 Nov 2018 20:38:12 +0000
From: Samuli Piippo <samuli.piippo@qt.io>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] [meta-mingw][PATCH 1/2] winpthreads: use posix threads
	library from mingw64
Thread-Index: AQHUfMWfo4EEInMzi0ud1wCRvP7GTqVRFa8AgAAC9AmAAABXgIAAA3ndgAAv4Gk=
Date: Thu, 15 Nov 2018 20:38:11 +0000
Message-ID: <HE1PR0201MB226542A18CD6A1995564214DE9DC0@HE1PR0201MB2265.eurprd02.prod.outlook.com>
References: <20181115092658.29152-1-samuli.piippo@qt.io>
	<CAJTo0LY9YSb_cJPyoxz6cFpZfPovi5c5e0wz54c_5ndki3jxxw@mail.gmail.com>
	<5F6B28BC-D434-4D91-97FF-A972C004FF6F@qt.io>,
	<CAJTo0LZ_Ekm1zRpKuJt5SFknqBAmtLcGma8nHiKvGd4wVjCM4Q@mail.gmail.com>,
	<3B171D8E-F6CA-4A23-A4B6-9232541E58B9@qt.io>
In-Reply-To: <3B171D8E-F6CA-4A23-A4B6-9232541E58B9@qt.io>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [188.67.59.38]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HE1PR0201MB2348;
	6:5KTMecQQpk7KrjVzLtkH4ZbtJ2uCf794dTNntb501SHB2ifHfOoPeTSpa5eYJGWAozvL76sVgXnyi4UBGZLpExqQfSi4BO3jQ0FUF1A8h7//qnmyxnIQ7tcaer4eMS+BOTNoA9TijCAtmg/6qNDuO4vThkr6LOQaU2QOLnRVjRYo9nX83GfBPSeSDDVygYlm9Ha8XBFN47OMsaj4Io62L6usxrV/8+DCOlq0uCqX8XxSereE7R3Q2Lt0WmW7Y7Hl+pPlHFnIXFFngpqMyTSr0YxyoJ9A8y+fN+anw7Im71DLTqmG1PSIwP6sshz5C4r9rn5hJTrnMt45libGuLNMMyYZZDPpzOrsgDMxvNyjxjDMYUL8lHSa1hnIre4VEb7H1Iv1s56i1iA9fF54nSwhDZ9bYfXOLixW1ORVAk4xxjo2MDvlUDrFsbcbsRBDplb60g9I0FB0ChmLpy6iOGDsdQ==;
	5:UT+Twv/kn7oI+GXT9pnlIcS04pLiIHiPvD89IlOkB4npcOJ9/ru5N9yjHUuOu6VBcfy+iqGiP/jLCmrG2Se4gNKqAILZnrxsvdZ+fON84n2ZaCCkfEPCyF1KHJRj5q+sHbTisW8TzHliAAKjp1m/f9MWmohPOewukFOSK9zxmrM=;
	7:YeksXlkBxPj1QVgMmVlWP27LJYfl/P4dt9EL7oaDFE9KBcHezArGdIUiKLEzfT7Gcd6jrwN9fvKqoeu/PjUFo6utbPFa6IEw/jboJUO+R1eEJZ5L7a6dZat+IwGy+Ge4iGBkbShrmcafSCH+gp7pWA==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 63957579-e1ab-4ad3-1021-08d64b3a42d7
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390098)(7020095)(4652040)(8989299)(5600074)(711020)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7153060)(7193020);
	SRVR:HE1PR0201MB2348; 
x-ms-traffictypediagnostic: HE1PR0201MB2348:
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=samuli.piippo@qt.io; 
x-microsoft-antispam-prvs: <HE1PR0201MB2348F82DC7ABCB09EADDFFCCE9DC0@HE1PR0201MB2348.eurprd02.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(3231415)(944501410)(4982022)(52105112)(10201501046)(93006095)(93001095)(3002001)(148016)(149066)(150057)(6041310)(20161123564045)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(20161123558120)(201708071742011)(7699051)(76991095);
	SRVR:HE1PR0201MB2348; BCL:0; PCL:0; RULEID:;
	SRVR:HE1PR0201MB2348; 
x-forefront-prvs: 08572BD77F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(376002)(346002)(366004)(136003)(396003)(39850400004)(189003)(199004)(1015004)(229853002)(54896002)(6436002)(6306002)(19627405001)(25786009)(71190400001)(71200400001)(14454004)(74482002)(74316002)(966005)(9686003)(55016002)(236005)(44832011)(14444005)(606006)(99286004)(105586002)(2906002)(68736007)(256004)(478600001)(106356001)(86362001)(575784001)(186003)(8936002)(33656002)(316002)(102836004)(26005)(5660300001)(93886005)(3846002)(6116002)(7696005)(97736004)(53546011)(6506007)(6916009)(53376002)(8676002)(6606003)(6246003)(81156014)(81166006)(7736002)(2900100001)(4326008)(53936002)(11346002)(446003)(486006)(476003)(66066001)(76176011);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1PR0201MB2348;
	H:HE1PR0201MB2265.eurprd02.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: qt.io does not designate permitted
	sender hosts)
x-microsoft-antispam-message-info: OPWwskho7kpXbSeOd9yP9EdaMCVRAbEqn4c7sxS1YHGIIHjp+C8kgSdDBGvNwc93mENdyRTC1aGtNmqnkNNl/YMe/mUY1QwvRus+VHwGLWoZxDhHlnAvSgcAASBDWvbvWn4SxdLBgg/AI1eRI8h4zYATtTx8WqnKkeRCqdFUtYegR2AZMQHs2LU7Dl172U6a9I3z/Ozakr2VOYxGIVfl6ZL6mBPvSrLsBZdAM0d0YdNg1SRVPDZFAUCpgXUdMoGSNoaI7YFzyrKb7hLUmmmPPcHX9nx3KNwd7yAyHhncykek1I8mvn47GnRR+1psfvkoujA0XZY5HIIgNa7eowHUE1msKTqIWSuGtl1/Tl0A3Lw=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: qt.io
X-MS-Exchange-CrossTenant-Network-Message-Id: 63957579-e1ab-4ad3-1021-08d64b3a42d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2018 20:38:11.9674 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 20d0b167-794d-448a-9d01-aaeccc1124ac
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0201MB2348
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [meta-mingw][PATCH 1/2] winpthreads: use posix threads library from mingw64
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
X-List-Received-Date: Thu, 15 Nov 2018 20:53:24 -0000
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_HE1PR0201MB226542A18CD6A1995564214DE9DC0HE1PR0201MB2265_"

--_000_HE1PR0201MB226542A18CD6A1995564214DE9DC0HE1PR0201MB2265_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

I don't have access to the contrib git repo, so pushed them here instead: h=
ttps://github.com/sapiippo/meta-mingw/

________________________________
From: Samuli Piippo
Sent: 15 November 2018 19:45:29
To: Burton, Ross
Cc: Yocto-mailing-list
Subject: Re: [yocto] [meta-mingw][PATCH 1/2] winpthreads: use posix threads=
 library from mingw64

Sure, it=92ll take me couple of hours though.
Let=92s see if the missing emails appear meanwhile.

> On 15 Nov 2018, at 19.33, Burton, Ross <ross.burton@intel.com> wrote:
>
> Weird.
>
> Can you push them to a git repo?
>
> Ross
>> On Thu, 15 Nov 2018 at 17:32, Samuli Piippo <samuli.piippo@qt.io> wrote:
>>
>>
>> 2/2 is also unrelated, there should 3 patches from me, sent at the same =
time. Don=92t know where they got stuck.
>>
>>> On 15 Nov 2018, at 19.21, Burton, Ross <ross.burton@intel.com> wrote:
>>>
>>> I see 1/2 but no 2/2, presumably this missing patch is the PIE one?
>>>
>>> Ross
>>>> On Thu, 15 Nov 2018 at 16:04, Samuli Piippo <samuli.piippo@qt.io> wrot=
e:
>>>>
>>>> Use the winpthreads library available in the mingw64 and
>>>> change the thread model from win32 to posix to get access
>>>> to c++11 features.
>>>>
>>>> Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
>>>> ---
>>>> conf/machine-sdk/include/mingw32-common.inc   |  2 -
>>>> recipes-core/gettext/gettext_0.19.%.bbappend  |  5 +-
>>>> recipes-devtools/gcc/gcc-runtime_%.bbappend   |  2 +-
>>>> recipes-devtools/gcc/libgcc_%.bbappend        |  2 +
>>>> .../nativesdk-mingw-w64-headers_5.0.3.bb      |  5 ++
>>>> .../nativesdk-mingw-w64-winpthreads_5.0.3.bb  | 31 ++++++++++++
>>>> .../pthreads-win32/pthreads-win32_2.9.1.bb    | 47 -------------------
>>>> 7 files changed, 40 insertions(+), 54 deletions(-)
>>>> create mode 100644 recipes-devtools/mingw-w64/nativesdk-mingw-w64-winp=
threads_5.0.3.bb
>>>> delete mode 100644 recipes-devtools/pthreads-win32/pthreads-win32_2.9.=
1.bb
>>>>
>>>> diff --git a/conf/machine-sdk/include/mingw32-common.inc b/conf/machin=
e-sdk/include/mingw32-common.inc
>>>> index cd56380..733d092 100644
>>>> --- a/conf/machine-sdk/include/mingw32-common.inc
>>>> +++ b/conf/machine-sdk/include/mingw32-common.inc
>>>> @@ -1,8 +1,6 @@
>>>> SDK_OS =3D "mingw32"
>>>> NATIVESDKLIBC =3D "libc-mingw"
>>>>
>>>> -GCCTHREADS_mingw32 =3D "win32"
>>>> -
>>>> PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-for-gcc_mingw32=
 =3D "nativesdk-mingw-w64-runtime"
>>>> PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-initial_mingw32=
 =3D "nativesdk-mingw-w64-runtime"
>>>> PREFERRED_PROVIDER_virtual/nativesdk-libc =3D "nativesdk-mingw-w64-run=
time"
>>>> diff --git a/recipes-core/gettext/gettext_0.19.%.bbappend b/recipes-co=
re/gettext/gettext_0.19.%.bbappend
>>>> index b26b734..21749f3 100644
>>>> --- a/recipes-core/gettext/gettext_0.19.%.bbappend
>>>> +++ b/recipes-core/gettext/gettext_0.19.%.bbappend
>>>> @@ -1,7 +1,4 @@
>>>> -DEPENDS_append_mingw32 =3D " pthreads-win32"
>>>> -LDFLAGS_prepend_mingw32 =3D " -lpthread "
>>>> -
>>>> -EXTRA_OECONF_append_mingw32 =3D " --enable-threads=3Dwindows --enable=
-static"
>>>> +EXTRA_OECONF_append_mingw32 =3D " --enable-static"
>>>>
>>>> FILESEXTRAPATHS_prepend_mingw32 :=3D "${THISDIR}/${BPN}:"
>>>> SRC_URI_append_mingw32 =3D " \
>>>> diff --git a/recipes-devtools/gcc/gcc-runtime_%.bbappend b/recipes-dev=
tools/gcc/gcc-runtime_%.bbappend
>>>> index 1641cb9..f14edf1 100644
>>>> --- a/recipes-devtools/gcc/gcc-runtime_%.bbappend
>>>> +++ b/recipes-devtools/gcc/gcc-runtime_%.bbappend
>>>> @@ -11,4 +11,4 @@ RUNTIMETARGET_remove_mingw32 =3D "libitm"
>>>> # mingw builds
>>>> RUNTIMETARGET_remove_mingw32 =3D "libmpx"
>>>>
>>>> -DEPENDS_append_mingw32 =3D " pthreads-win32"
>>>> +DEPENDS_append_mingw32 =3D " nativesdk-mingw-w64-winpthreads"
>>>> diff --git a/recipes-devtools/gcc/libgcc_%.bbappend b/recipes-devtools=
/gcc/libgcc_%.bbappend
>>>> index 2a95d02..f542cfc 100644
>>>> --- a/recipes-devtools/gcc/libgcc_%.bbappend
>>>> +++ b/recipes-devtools/gcc/libgcc_%.bbappend
>>>> @@ -1,3 +1,5 @@
>>>> +DEPENDS_append_mingw32 =3D " nativesdk-mingw-w64-winpthreads"
>>>> +
>>>> FILES_${PN}_append_mingw32 =3D " ${bindir}/libgcc*.dll"
>>>> FILES_${PN}-dev_append_mingw32 =3D " ${base_libdir}/libgcc*.a"
>>>>
>>>> diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_5.=
0.3.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_5.0.3.bb
>>>> index e129c32..009e5af 100644
>>>> --- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_5.0.3.bb
>>>> +++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_5.0.3.bb
>>>> @@ -31,4 +31,9 @@ do_compile() {
>>>>       :
>>>> }
>>>>
>>>> +do_install_append() {
>>>> +    # install correct pthread headers
>>>> +    install -m 0644 -t ${D}${includedir} ${S}/../mingw-w64-libraries/=
winpthreads/include/*.h
>>>> +}
>>>> +
>>>> FILES_${PN} +=3D "${exec_prefix}/${TARGET_SYS}"
>>>> diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthread=
s_5.0.3.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_5.0=
.3.bb
>>>> new file mode 100644
>>>> index 0000000..1308760
>>>> --- /dev/null
>>>> +++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_5.0.3=
.bb
>>>> @@ -0,0 +1,31 @@
>>>> +DESCRIPTION =3D "Winpthreads runtime libraries from MinGW-w64 project=
"
>>>> +LICENSE =3D "ZPL-2.1"
>>>> +LIC_FILES_CHKSUM =3D "file://../../COPYING;md5=3Dbb936f0e04d8f1e19ad5=
45100cee9654"
>>>> +
>>>> +COMPATIBLE_HOST =3D ".*-mingw.*"
>>>> +
>>>> +SRC_URI =3D "${SOURCEFORGE_MIRROR}/project/mingw-w64/mingw-w64/mingw-=
w64-release/mingw-w64-v${PV}.tar.bz2"
>>>> +SRC_URI[md5sum] =3D "5524c20312560cc8683b7d8ee292cb8c"
>>>> +SRC_URI[sha256sum] =3D "2a601db99ef579b9be69c775218ad956a24a09d7dabc9=
ff6c5bd60da9ccc9cb4"
>>>> +
>>>> +S =3D "${WORKDIR}/mingw-w64-v${PV}/mingw-w64-libraries/winpthreads"
>>>> +B =3D "${WORKDIR}/build-${TARGET_SYS}"
>>>> +
>>>> +inherit autotools nativesdk
>>>> +
>>>> +INHIBIT_DEFAULT_DEPS =3D "1"
>>>> +DEPENDS =3D "nativesdk-mingw-w64-runtime virtual/${TARGET_PREFIX}gcc-=
initial"
>>>> +
>>>> +do_configure() {
>>>> +    oe_runconf
>>>> +}
>>>> +
>>>> +STAGINGCC =3D "gcc-cross-initial-${TARGET_ARCH}"
>>>> +STAGINGCC_class-nativesdk =3D "gcc-crosssdk-initial-${SDK_SYS}"
>>>> +TOOLCHAIN_OPTIONS =3D " --sysroot=3D${STAGING_DIR_TARGET}"
>>>> +PATH_prepend =3D "${STAGING_BINDIR_TOOLCHAIN}.${STAGINGCC}:"
>>>> +
>>>> +do_install_append() {
>>>> +    # headers are already installed by mingw-w64-headers
>>>> +    rm -rf ${D}${includedir}
>>>> +}
>>>> diff --git a/recipes-devtools/pthreads-win32/pthreads-win32_2.9.1.bb b=
/recipes-devtools/pthreads-win32/pthreads-win32_2.9.1.bb
>>>> deleted file mode 100644
>>>> index e4a0f80..0000000
>>>> --- a/recipes-devtools/pthreads-win32/pthreads-win32_2.9.1.bb
>>>> +++ /dev/null
>>>> @@ -1,47 +0,0 @@
>>>> -DESCRIPTION =3D "A Win32 implementation of the POSIX standard threads=
 API"
>>>> -HOMEPAGE =3D "http://www.sourceware.org/pthreads-win32"
>>>> -LICENSE =3D "LGPLv2.1"
>>>> -LIC_FILES_CHKSUM =3D "file://COPYING.LIB;md5=3D7fbc338309ac38fefcd64b=
04bb903e34"
>>>> -
>>>> -BBCLASSEXTEND =3D "nativesdk"
>>>> -
>>>> -COMPATIBLE_HOST =3D ".*-mingw.*"
>>>> -
>>>> -## Replace dots with dashes
>>>> -PVdash =3D "2-9-1"
>>>> -
>>>> -## cvs -d :pserver:anonymous@sourceware.org:/cvs/pthreads-win32 check=
out pthreads
>>>> -SRC_URI =3D "ftp://sourceware.org/pub/pthreads-win32/pthreads-w32-${P=
Vdash}-release.tar.gz"
>>>> -SRC_URI[md5sum] =3D "36ba827d6aa0fa9f9ae740a35626e2e3"
>>>> -SRC_URI[sha256sum] =3D "e6aca7aea8de33d9c8580bcb3a0ea3ec0a7ace4ba3f4e=
263ac7c7b66bc95fb4d"
>>>> -
>>>> -## Reference: http://sourceware.org/ml/pthreads-win32/2009/msg00030/w=
64sup.patch
>>>> -#SRC_URI +=3D "file://w64sup.patch"
>>>> -
>>>> -S =3D "${WORKDIR}/pthreads-w32-${PVdash}-release"
>>>> -
>>>> -INHIBIT_DEFAULT_DEPS =3D "1"
>>>> -DEPENDS =3D "virtual/${SDK_PREFIX}gcc libgcc virtual/libc"
>>>> -
>>>> -do_configure_prepend() {
>>>> -    ## First reset all permissions because all are executable
>>>> -    find . -type f -exec chmod 644 {} \;
>>>> -    ## Make a copy of config.h
>>>> -    cp config.h pthreads_win32_config.h
>>>> -}
>>>> -
>>>> -do_compile() {
>>>> -    make -f GNUmakefile CROSS=3D${SDK_PREFIX} CC=3D"${CC}" RC=3D"${WI=
NDRES}" clean GC
>>>> -}
>>>> -
>>>> -do_install() {
>>>> -    install -d -m 0755 ${D}${bindir}
>>>> -    install -d -m 0755 ${D}${includedir}
>>>> -    install -d -m 0755 ${D}${libdir}
>>>> -
>>>> -    install -m 0644 ${S}/pthread.h ${S}/sched.h ${S}/semaphore.h ${D}=
${includedir}/
>>>> -
>>>> -    install -m 0644 ${S}/libpthreadGC2.a ${D}${libdir}/libpthread.dll=
.a
>>>> -    install -m 0644 ${S}/pthreadGC2.dll ${D}${bindir}/libpthread-2.dl=
l
>>>> -    install -m 0644 ${S}/pthreadGC2.dll ${D}${bindir}/pthreadGC2.dll
>>>> -}
>>>> --
>>>> 2.17.1
>>>>
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto

--_000_HE1PR0201MB226542A18CD6A1995564214DE9DC0HE1PR0201MB2265_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">I don't have access to the contri=
b git repo, so pushed them here instead:&nbsp;<a href=3D"https://github.com=
/sapiippo/meta-mingw/" class=3D"OWAAutoLink" id=3D"LPlnk981272" previewremo=
ved=3D"true">https://github.com/sapiippo/meta-mingw/</a></p>
<br>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Samuli Piippo<br>
<b>Sent:</b> 15 November 2018 19:45:29<br>
<b>To:</b> Burton, Ross<br>
<b>Cc:</b> Yocto-mailing-list<br>
<b>Subject:</b> Re: [yocto] [meta-mingw][PATCH 1/2] winpthreads: use posix =
threads library from mingw64</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Sure, it=92ll take me couple of hours though.<br>
Let=92s see if the missing emails appear meanwhile.<br>
<br>
&gt; On 15 Nov 2018, at 19.33, Burton, Ross &lt;ross.burton@intel.com&gt; w=
rote:<br>
&gt; <br>
&gt; Weird.<br>
&gt; <br>
&gt; Can you push them to a git repo?<br>
&gt; <br>
&gt; Ross<br>
&gt;&gt; On Thu, 15 Nov 2018 at 17:32, Samuli Piippo &lt;samuli.piippo@qt.i=
o&gt; wrote:<br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; 2/2 is also unrelated, there should 3 patches from me, sent at the=
 same time. Don=92t know where they got stuck.<br>
&gt;&gt; <br>
&gt;&gt;&gt; On 15 Nov 2018, at 19.21, Burton, Ross &lt;ross.burton@intel.c=
om&gt; wrote:<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; I see 1/2 but no 2/2, presumably this missing patch is the PIE=
 one?<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; Ross<br>
&gt;&gt;&gt;&gt; On Thu, 15 Nov 2018 at 16:04, Samuli Piippo &lt;samuli.pii=
ppo@qt.io&gt; wrote:<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; Use the winpthreads library available in the mingw64 and<b=
r>
&gt;&gt;&gt;&gt; change the thread model from win32 to posix to get access<=
br>
&gt;&gt;&gt;&gt; to c&#43;&#43;11 features.<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; Signed-off-by: Samuli Piippo &lt;samuli.piippo@qt.io&gt;<b=
r>
&gt;&gt;&gt;&gt; ---<br>
&gt;&gt;&gt;&gt; conf/machine-sdk/include/mingw32-common.inc&nbsp;&nbsp; |&=
nbsp; 2 -<br>
&gt;&gt;&gt;&gt; recipes-core/gettext/gettext_0.19.%.bbappend&nbsp; |&nbsp;=
 5 &#43;-<br>
&gt;&gt;&gt;&gt; recipes-devtools/gcc/gcc-runtime_%.bbappend&nbsp;&nbsp; |&=
nbsp; 2 &#43;-<br>
&gt;&gt;&gt;&gt; recipes-devtools/gcc/libgcc_%.bbappend&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; |&nbsp; 2 &#43;<br>
&gt;&gt;&gt;&gt; .../nativesdk-mingw-w64-headers_5.0.3.bb&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; |&nbsp; 5 &#43;&#43;<br>
&gt;&gt;&gt;&gt; .../nativesdk-mingw-w64-winpthreads_5.0.3.bb&nbsp; | 31 &#=
43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;<br>
&gt;&gt;&gt;&gt; .../pthreads-win32/pthreads-win32_2.9.1.bb&nbsp;&nbsp;&nbs=
p; | 47 -------------------<br>
&gt;&gt;&gt;&gt; 7 files changed, 40 insertions(&#43;), 54 deletions(-)<br>
&gt;&gt;&gt;&gt; create mode 100644 recipes-devtools/mingw-w64/nativesdk-mi=
ngw-w64-winpthreads_5.0.3.bb<br>
&gt;&gt;&gt;&gt; delete mode 100644 recipes-devtools/pthreads-win32/pthread=
s-win32_2.9.1.bb<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; diff --git a/conf/machine-sdk/include/mingw32-common.inc b=
/conf/machine-sdk/include/mingw32-common.inc<br>
&gt;&gt;&gt;&gt; index cd56380..733d092 100644<br>
&gt;&gt;&gt;&gt; --- a/conf/machine-sdk/include/mingw32-common.inc<br>
&gt;&gt;&gt;&gt; &#43;&#43;&#43; b/conf/machine-sdk/include/mingw32-common.=
inc<br>
&gt;&gt;&gt;&gt; @@ -1,8 &#43;1,6 @@<br>
&gt;&gt;&gt;&gt; SDK_OS =3D &quot;mingw32&quot;<br>
&gt;&gt;&gt;&gt; NATIVESDKLIBC =3D &quot;libc-mingw&quot;<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; -GCCTHREADS_mingw32 =3D &quot;win32&quot;<br>
&gt;&gt;&gt;&gt; -<br>
&gt;&gt;&gt;&gt; PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-for=
-gcc_mingw32 =3D &quot;nativesdk-mingw-w64-runtime&quot;<br>
&gt;&gt;&gt;&gt; PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-ini=
tial_mingw32 =3D &quot;nativesdk-mingw-w64-runtime&quot;<br>
&gt;&gt;&gt;&gt; PREFERRED_PROVIDER_virtual/nativesdk-libc =3D &quot;native=
sdk-mingw-w64-runtime&quot;<br>
&gt;&gt;&gt;&gt; diff --git a/recipes-core/gettext/gettext_0.19.%.bbappend =
b/recipes-core/gettext/gettext_0.19.%.bbappend<br>
&gt;&gt;&gt;&gt; index b26b734..21749f3 100644<br>
&gt;&gt;&gt;&gt; --- a/recipes-core/gettext/gettext_0.19.%.bbappend<br>
&gt;&gt;&gt;&gt; &#43;&#43;&#43; b/recipes-core/gettext/gettext_0.19.%.bbap=
pend<br>
&gt;&gt;&gt;&gt; @@ -1,7 &#43;1,4 @@<br>
&gt;&gt;&gt;&gt; -DEPENDS_append_mingw32 =3D &quot; pthreads-win32&quot;<br=
>
&gt;&gt;&gt;&gt; -LDFLAGS_prepend_mingw32 =3D &quot; -lpthread &quot;<br>
&gt;&gt;&gt;&gt; -<br>
&gt;&gt;&gt;&gt; -EXTRA_OECONF_append_mingw32 =3D &quot; --enable-threads=
=3Dwindows --enable-static&quot;<br>
&gt;&gt;&gt;&gt; &#43;EXTRA_OECONF_append_mingw32 =3D &quot; --enable-stati=
c&quot;<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; FILESEXTRAPATHS_prepend_mingw32 :=3D &quot;${THISDIR}/${BP=
N}:&quot;<br>
&gt;&gt;&gt;&gt; SRC_URI_append_mingw32 =3D &quot; \<br>
&gt;&gt;&gt;&gt; diff --git a/recipes-devtools/gcc/gcc-runtime_%.bbappend b=
/recipes-devtools/gcc/gcc-runtime_%.bbappend<br>
&gt;&gt;&gt;&gt; index 1641cb9..f14edf1 100644<br>
&gt;&gt;&gt;&gt; --- a/recipes-devtools/gcc/gcc-runtime_%.bbappend<br>
&gt;&gt;&gt;&gt; &#43;&#43;&#43; b/recipes-devtools/gcc/gcc-runtime_%.bbapp=
end<br>
&gt;&gt;&gt;&gt; @@ -11,4 &#43;11,4 @@ RUNTIMETARGET_remove_mingw32 =3D &qu=
ot;libitm&quot;<br>
&gt;&gt;&gt;&gt; # mingw builds<br>
&gt;&gt;&gt;&gt; RUNTIMETARGET_remove_mingw32 =3D &quot;libmpx&quot;<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; -DEPENDS_append_mingw32 =3D &quot; pthreads-win32&quot;<br=
>
&gt;&gt;&gt;&gt; &#43;DEPENDS_append_mingw32 =3D &quot; nativesdk-mingw-w64=
-winpthreads&quot;<br>
&gt;&gt;&gt;&gt; diff --git a/recipes-devtools/gcc/libgcc_%.bbappend b/reci=
pes-devtools/gcc/libgcc_%.bbappend<br>
&gt;&gt;&gt;&gt; index 2a95d02..f542cfc 100644<br>
&gt;&gt;&gt;&gt; --- a/recipes-devtools/gcc/libgcc_%.bbappend<br>
&gt;&gt;&gt;&gt; &#43;&#43;&#43; b/recipes-devtools/gcc/libgcc_%.bbappend<b=
r>
&gt;&gt;&gt;&gt; @@ -1,3 &#43;1,5 @@<br>
&gt;&gt;&gt;&gt; &#43;DEPENDS_append_mingw32 =3D &quot; nativesdk-mingw-w64=
-winpthreads&quot;<br>
&gt;&gt;&gt;&gt; &#43;<br>
&gt;&gt;&gt;&gt; FILES_${PN}_append_mingw32 =3D &quot; ${bindir}/libgcc*.dl=
l&quot;<br>
&gt;&gt;&gt;&gt; FILES_${PN}-dev_append_mingw32 =3D &quot; ${base_libdir}/l=
ibgcc*.a&quot;<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w6=
4-headers_5.0.3.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers=
_5.0.3.bb<br>
&gt;&gt;&gt;&gt; index e129c32..009e5af 100644<br>
&gt;&gt;&gt;&gt; --- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-heade=
rs_5.0.3.bb<br>
&gt;&gt;&gt;&gt; &#43;&#43;&#43; b/recipes-devtools/mingw-w64/nativesdk-min=
gw-w64-headers_5.0.3.bb<br>
&gt;&gt;&gt;&gt; @@ -31,4 &#43;31,9 @@ do_compile() {<br>
&gt;&gt;&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<br>
&gt;&gt;&gt;&gt; }<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; &#43;do_install_append() {<br>
&gt;&gt;&gt;&gt; &#43;&nbsp;&nbsp;&nbsp; # install correct pthread headers<=
br>
&gt;&gt;&gt;&gt; &#43;&nbsp;&nbsp;&nbsp; install -m 0644 -t ${D}${includedi=
r} ${S}/../mingw-w64-libraries/winpthreads/include/*.h<br>
&gt;&gt;&gt;&gt; &#43;}<br>
&gt;&gt;&gt;&gt; &#43;<br>
&gt;&gt;&gt;&gt; FILES_${PN} &#43;=3D &quot;${exec_prefix}/${TARGET_SYS}&qu=
ot;<br>
&gt;&gt;&gt;&gt; diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w6=
4-winpthreads_5.0.3.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-win=
pthreads_5.0.3.bb<br>
&gt;&gt;&gt;&gt; new file mode 100644<br>
&gt;&gt;&gt;&gt; index 0000000..1308760<br>
&gt;&gt;&gt;&gt; --- /dev/null<br>
&gt;&gt;&gt;&gt; &#43;&#43;&#43; b/recipes-devtools/mingw-w64/nativesdk-min=
gw-w64-winpthreads_5.0.3.bb<br>
&gt;&gt;&gt;&gt; @@ -0,0 &#43;1,31 @@<br>
&gt;&gt;&gt;&gt; &#43;DESCRIPTION =3D &quot;Winpthreads runtime libraries f=
rom MinGW-w64 project&quot;<br>
&gt;&gt;&gt;&gt; &#43;LICENSE =3D &quot;ZPL-2.1&quot;<br>
&gt;&gt;&gt;&gt; &#43;LIC_FILES_CHKSUM =3D &quot;<a href=3D"file://../../CO=
PYING;md5=3Dbb936f0e04d8f1e19ad545100cee9654">file://../../COPYING;md5=3Dbb=
936f0e04d8f1e19ad545100cee9654</a>&quot;<br>
&gt;&gt;&gt;&gt; &#43;<br>
&gt;&gt;&gt;&gt; &#43;COMPATIBLE_HOST =3D &quot;.*-mingw.*&quot;<br>
&gt;&gt;&gt;&gt; &#43;<br>
&gt;&gt;&gt;&gt; &#43;SRC_URI =3D &quot;${SOURCEFORGE_MIRROR}/project/mingw=
-w64/mingw-w64/mingw-w64-release/mingw-w64-v${PV}.tar.bz2&quot;<br>
&gt;&gt;&gt;&gt; &#43;SRC_URI[md5sum] =3D &quot;5524c20312560cc8683b7d8ee29=
2cb8c&quot;<br>
&gt;&gt;&gt;&gt; &#43;SRC_URI[sha256sum] =3D &quot;2a601db99ef579b9be69c775=
218ad956a24a09d7dabc9ff6c5bd60da9ccc9cb4&quot;<br>
&gt;&gt;&gt;&gt; &#43;<br>
&gt;&gt;&gt;&gt; &#43;S =3D &quot;${WORKDIR}/mingw-w64-v${PV}/mingw-w64-lib=
raries/winpthreads&quot;<br>
&gt;&gt;&gt;&gt; &#43;B =3D &quot;${WORKDIR}/build-${TARGET_SYS}&quot;<br>
&gt;&gt;&gt;&gt; &#43;<br>
&gt;&gt;&gt;&gt; &#43;inherit autotools nativesdk<br>
&gt;&gt;&gt;&gt; &#43;<br>
&gt;&gt;&gt;&gt; &#43;INHIBIT_DEFAULT_DEPS =3D &quot;1&quot;<br>
&gt;&gt;&gt;&gt; &#43;DEPENDS =3D &quot;nativesdk-mingw-w64-runtime virtual=
/${TARGET_PREFIX}gcc-initial&quot;<br>
&gt;&gt;&gt;&gt; &#43;<br>
&gt;&gt;&gt;&gt; &#43;do_configure() {<br>
&gt;&gt;&gt;&gt; &#43;&nbsp;&nbsp;&nbsp; oe_runconf<br>
&gt;&gt;&gt;&gt; &#43;}<br>
&gt;&gt;&gt;&gt; &#43;<br>
&gt;&gt;&gt;&gt; &#43;STAGINGCC =3D &quot;gcc-cross-initial-${TARGET_ARCH}&=
quot;<br>
&gt;&gt;&gt;&gt; &#43;STAGINGCC_class-nativesdk =3D &quot;gcc-crosssdk-init=
ial-${SDK_SYS}&quot;<br>
&gt;&gt;&gt;&gt; &#43;TOOLCHAIN_OPTIONS =3D &quot; --sysroot=3D${STAGING_DI=
R_TARGET}&quot;<br>
&gt;&gt;&gt;&gt; &#43;PATH_prepend =3D &quot;${STAGING_BINDIR_TOOLCHAIN}.${=
STAGINGCC}:&quot;<br>
&gt;&gt;&gt;&gt; &#43;<br>
&gt;&gt;&gt;&gt; &#43;do_install_append() {<br>
&gt;&gt;&gt;&gt; &#43;&nbsp;&nbsp;&nbsp; # headers are already installed by=
 mingw-w64-headers<br>
&gt;&gt;&gt;&gt; &#43;&nbsp;&nbsp;&nbsp; rm -rf ${D}${includedir}<br>
&gt;&gt;&gt;&gt; &#43;}<br>
&gt;&gt;&gt;&gt; diff --git a/recipes-devtools/pthreads-win32/pthreads-win3=
2_2.9.1.bb b/recipes-devtools/pthreads-win32/pthreads-win32_2.9.1.bb<br>
&gt;&gt;&gt;&gt; deleted file mode 100644<br>
&gt;&gt;&gt;&gt; index e4a0f80..0000000<br>
&gt;&gt;&gt;&gt; --- a/recipes-devtools/pthreads-win32/pthreads-win32_2.9.1=
.bb<br>
&gt;&gt;&gt;&gt; &#43;&#43;&#43; /dev/null<br>
&gt;&gt;&gt;&gt; @@ -1,47 &#43;0,0 @@<br>
&gt;&gt;&gt;&gt; -DESCRIPTION =3D &quot;A Win32 implementation of the POSIX=
 standard threads API&quot;<br>
&gt;&gt;&gt;&gt; -HOMEPAGE =3D &quot;<a href=3D"http://www.sourceware.org/p=
threads-win32">http://www.sourceware.org/pthreads-win32</a>&quot;<br>
&gt;&gt;&gt;&gt; -LICENSE =3D &quot;LGPLv2.1&quot;<br>
&gt;&gt;&gt;&gt; -LIC_FILES_CHKSUM =3D &quot;<a href=3D"file://COPYING.LIB;=
md5=3D7fbc338309ac38fefcd64b04bb903e34">file://COPYING.LIB;md5=3D7fbc338309=
ac38fefcd64b04bb903e34</a>&quot;<br>
&gt;&gt;&gt;&gt; -<br>
&gt;&gt;&gt;&gt; -BBCLASSEXTEND =3D &quot;nativesdk&quot;<br>
&gt;&gt;&gt;&gt; -<br>
&gt;&gt;&gt;&gt; -COMPATIBLE_HOST =3D &quot;.*-mingw.*&quot;<br>
&gt;&gt;&gt;&gt; -<br>
&gt;&gt;&gt;&gt; -## Replace dots with dashes<br>
&gt;&gt;&gt;&gt; -PVdash =3D &quot;2-9-1&quot;<br>
&gt;&gt;&gt;&gt; -<br>
&gt;&gt;&gt;&gt; -## cvs -d :pserver:anonymous@sourceware.org:/cvs/pthreads=
-win32 checkout pthreads<br>
&gt;&gt;&gt;&gt; -SRC_URI =3D &quot;<a href=3D"ftp://sourceware.org/pub/pth=
reads-win32/pthreads-w32-${PVdash}-release.tar.gz">ftp://sourceware.org/pub=
/pthreads-win32/pthreads-w32-${PVdash}-release.tar.gz</a>&quot;<br>
&gt;&gt;&gt;&gt; -SRC_URI[md5sum] =3D &quot;36ba827d6aa0fa9f9ae740a35626e2e=
3&quot;<br>
&gt;&gt;&gt;&gt; -SRC_URI[sha256sum] =3D &quot;e6aca7aea8de33d9c8580bcb3a0e=
a3ec0a7ace4ba3f4e263ac7c7b66bc95fb4d&quot;<br>
&gt;&gt;&gt;&gt; -<br>
&gt;&gt;&gt;&gt; -## Reference: <a href=3D"http://sourceware.org/ml/pthread=
s-win32/2009/msg00030/w64sup.patch">
http://sourceware.org/ml/pthreads-win32/2009/msg00030/w64sup.patch</a><br>
&gt;&gt;&gt;&gt; -#SRC_URI &#43;=3D &quot;<a href=3D"file://w64sup.patch">f=
ile://w64sup.patch</a>&quot;<br>
&gt;&gt;&gt;&gt; -<br>
&gt;&gt;&gt;&gt; -S =3D &quot;${WORKDIR}/pthreads-w32-${PVdash}-release&quo=
t;<br>
&gt;&gt;&gt;&gt; -<br>
&gt;&gt;&gt;&gt; -INHIBIT_DEFAULT_DEPS =3D &quot;1&quot;<br>
&gt;&gt;&gt;&gt; -DEPENDS =3D &quot;virtual/${SDK_PREFIX}gcc libgcc virtual=
/libc&quot;<br>
&gt;&gt;&gt;&gt; -<br>
&gt;&gt;&gt;&gt; -do_configure_prepend() {<br>
&gt;&gt;&gt;&gt; -&nbsp;&nbsp;&nbsp; ## First reset all permissions because=
 all are executable<br>
&gt;&gt;&gt;&gt; -&nbsp;&nbsp;&nbsp; find . -type f -exec chmod 644 {} \;<b=
r>
&gt;&gt;&gt;&gt; -&nbsp;&nbsp;&nbsp; ## Make a copy of config.h<br>
&gt;&gt;&gt;&gt; -&nbsp;&nbsp;&nbsp; cp config.h pthreads_win32_config.h<br=
>
&gt;&gt;&gt;&gt; -}<br>
&gt;&gt;&gt;&gt; -<br>
&gt;&gt;&gt;&gt; -do_compile() {<br>
&gt;&gt;&gt;&gt; -&nbsp;&nbsp;&nbsp; make -f GNUmakefile CROSS=3D${SDK_PREF=
IX} CC=3D&quot;${CC}&quot; RC=3D&quot;${WINDRES}&quot; clean GC<br>
&gt;&gt;&gt;&gt; -}<br>
&gt;&gt;&gt;&gt; -<br>
&gt;&gt;&gt;&gt; -do_install() {<br>
&gt;&gt;&gt;&gt; -&nbsp;&nbsp;&nbsp; install -d -m 0755 ${D}${bindir}<br>
&gt;&gt;&gt;&gt; -&nbsp;&nbsp;&nbsp; install -d -m 0755 ${D}${includedir}<b=
r>
&gt;&gt;&gt;&gt; -&nbsp;&nbsp;&nbsp; install -d -m 0755 ${D}${libdir}<br>
&gt;&gt;&gt;&gt; -<br>
&gt;&gt;&gt;&gt; -&nbsp;&nbsp;&nbsp; install -m 0644 ${S}/pthread.h ${S}/sc=
hed.h ${S}/semaphore.h ${D}${includedir}/<br>
&gt;&gt;&gt;&gt; -<br>
&gt;&gt;&gt;&gt; -&nbsp;&nbsp;&nbsp; install -m 0644 ${S}/libpthreadGC2.a $=
{D}${libdir}/libpthread.dll.a<br>
&gt;&gt;&gt;&gt; -&nbsp;&nbsp;&nbsp; install -m 0644 ${S}/pthreadGC2.dll ${=
D}${bindir}/libpthread-2.dll<br>
&gt;&gt;&gt;&gt; -&nbsp;&nbsp;&nbsp; install -m 0644 ${S}/pthreadGC2.dll ${=
D}${bindir}/pthreadGC2.dll<br>
&gt;&gt;&gt;&gt; -}<br>
&gt;&gt;&gt;&gt; --<br>
&gt;&gt;&gt;&gt; 2.17.1<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; --<br>
&gt;&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt;&gt; yocto mailing list<br>
&gt;&gt;&gt;&gt; yocto@yoctoproject.org<br>
&gt;&gt;&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">=
https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div>
</span></font></div>
</body>
</html>

--_000_HE1PR0201MB226542A18CD6A1995564214DE9DC0HE1PR0201MB2265_--
