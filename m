Return-Path: <samuli.piippo@qt.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2528E00C7F; Fri, 16 Nov 2018 01:06:08 -0800 (PST)
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
	*      [40.107.2.94 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 54302 seconds by postgrey-1.32 at yocto-www;
	Fri, 16 Nov 2018 01:06:06 PST
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
	(mail-eopbgr20094.outbound.protection.outlook.com [40.107.2.94])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67B18E00C6D
	for <yocto@yoctoproject.org>; Fri, 16 Nov 2018 01:06:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=qtcompany.onmicrosoft.com; s=selector1-qt-io;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=yXJDkIFd/2SChmYOMl6w1ZqJeV5UxbDr7YhYW1nLF7A=;
	b=iCvr+osIwg4QJUlHBRhBfKyvrpJ439OU03BaP+FRs40gchZaZeQs2kJgbVfG0g/zp6kesPHL8dBOukD1tDQj81Zyf3zcb9/N5jRpLnrR0LiHVfiKPjXmygvuUMKT6UAyJJiaGoLRMh04daIkijyEjanKEbohkhM4hXs3JqLNaJ8=
Received: from HE1PR0201MB2265.eurprd02.prod.outlook.com (10.168.145.136) by
	HE1PR0201MB2473.eurprd02.prod.outlook.com (10.168.147.9) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1339.21; Fri, 16 Nov 2018 06:33:27 +0000
Received: from HE1PR0201MB2265.eurprd02.prod.outlook.com
	([fe80::e588:a17c:cfbc:83f9]) by
	HE1PR0201MB2265.eurprd02.prod.outlook.com
	([fe80::e588:a17c:cfbc:83f9%6]) with mapi id 15.20.1294.045;
	Fri, 16 Nov 2018 06:33:27 +0000
From: Samuli Piippo <samuli.piippo@qt.io>
To: Joshua Watt <jpewhacker@gmail.com>
Thread-Topic: [yocto] [meta-mingw][PATCH 2/2] cmake: add support for building
	nativesdk-cmake
Thread-Index: AQHUfMWken6OBg9SkkewDdqOLrusF6VRwWQAgAAqs0E=
Date: Fri, 16 Nov 2018 06:33:26 +0000
Message-ID: <HE1PR0201MB226527D27E394E02AD43585BE9DD0@HE1PR0201MB2265.eurprd02.prod.outlook.com>
References: <20181115092658.29152-1-samuli.piippo@qt.io>
	<20181115092658.29152-2-samuli.piippo@qt.io>,
	<CAJdd5GawDQsC9nfKxqEUWEMWoDw8ZbrMy-3xdF17=C_Z=Hk5Sw@mail.gmail.com>
In-Reply-To: <CAJdd5GawDQsC9nfKxqEUWEMWoDw8ZbrMy-3xdF17=C_Z=Hk5Sw@mail.gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=samuli.piippo@qt.io; 
x-originating-ip: [188.67.59.38]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HE1PR0201MB2473;
	6:SeKpjK2I5cXb/FYg2yO5yOfWW0Y2gyaWBXIRl4YovJfi2tyi8/1+00+j8a72/i6aOs5gkm1QVCNcvznipfL7iUy2k5+ZNX3Cjut2mVgl1o3KmMsxLWn3QOL6ieFYwMEF/ELirxiSYBFTfvvVwErOCawtadXgONp3r/xIeJu6wN+7cJ8bXxz7BP9ptzuuYkAkfdZSJQMFEhnevgVlzqzyTrzlAcsS6J281zWtQHs0ktx+WzzTlaE4lJT1vqw/CTOrXnkFeJxMbcO2A1RbLc2oAZsYRjtJdrhvLYpJskK3Jp/gV6D6GdTyzlwa9YqyiMX6L3vk1ZV6TBoRANBYcECHvhyF/C1yeinffAYlbaCEEiZTF05aJzAf9eIn2I0SH6bsvGJGpE3iQvP22j7zqJ1mosj2ExEmns6Lq//2SuXoZizj80+M3vwzZA8XwZ6EDjVLw59cceI/2prR3lz8r0alyA==;
	5:nxbZv5L43HnbHSOxcudAFV5EoKUFgKft/1VpgAHMeQAcB1g5/0Q70sE/BIvB9pgdLXKb1hErHQ+57hMKJQ7nyvpi/HgksyQA7C3Dl9GqP/E70rmsUw4pOfoXUkpRgngt8+Nsti8UHS+sWc1Wu6mbu5G5j7ftQBgAACiCuN0sdyw=;
	7:IyUMJfI/vwaEpBP9rkVM6LkQDkNcHq6AevPyZ/2ze0/J8v9uzARLsjeUCwjYoZEnORykjBhnfeqC2CkfUjVmlL2qe4JykJjGwXabXyjy4PLbZckfnnZDAIuoWeAJW9qzv1YaEtiFoMMnG1uZ6nvo6g==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 89a4221d-e011-4e65-25f6-08d64b8d6a94
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390098)(7020095)(4652040)(8989299)(5600074)(711020)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7153060)(7193020);
	SRVR:HE1PR0201MB2473; 
x-ms-traffictypediagnostic: HE1PR0201MB2473:
x-microsoft-antispam-prvs: <HE1PR0201MB2473818ABA36C8EFBBFFDF2AE9DD0@HE1PR0201MB2473.eurprd02.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(3002001)(10201501046)(3231415)(944501410)(52105112)(93006095)(93001095)(148016)(149066)(150057)(6041310)(20161123558120)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123562045)(20161123560045)(20161123564045)(201708071742011)(7699051)(76991095);
	SRVR:HE1PR0201MB2473; BCL:0; PCL:0; RULEID:;
	SRVR:HE1PR0201MB2473; 
x-forefront-prvs: 0858FF8026
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(366004)(396003)(39850400004)(376002)(136003)(346002)(189003)(199004)(236005)(6916009)(68736007)(256004)(33656002)(4326008)(6436002)(6606003)(7696005)(26005)(44832011)(53546011)(11346002)(102836004)(6506007)(9686003)(2900100001)(446003)(54896002)(6306002)(97736004)(6116002)(229853002)(3846002)(5660300001)(81166006)(81156014)(8676002)(186003)(25786009)(478600001)(8936002)(76176011)(55016002)(99286004)(2906002)(476003)(7736002)(53936002)(74316002)(1015004)(486006)(74482002)(966005)(14454004)(6246003)(66066001)(575784001)(39060400002)(1411001)(71190400001)(71200400001)(106356001)(606006)(316002)(105586002)(86362001)(19627405001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1PR0201MB2473;
	H:HE1PR0201MB2265.eurprd02.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: qt.io does not designate permitted
	sender hosts)
x-microsoft-antispam-message-info: vuAAif4nYVF9lpV3tRChpsfZcgJEQiBePcQWj4Yb62PpuJLUvKpqXu1QhmkhT7kOLHzvCPLlI6cm9phRPClJ8v818dpZh4Qj59h9uqXfxzcaSTy8fiHI8ZCUrNIK72bLIEYzjCOMxm8i7ycVup6gyLD+2sQj42epzIMSGcOoi6EGUWF6Qulc4Sl6IdxJgPEVibit+rK86C84csTP4yjmIcGEv2GIYp2Ryz70WsFT+jFE7YjYlRMQtNblJk/8lTqLi0RE3tO+63PXCcqcZfVnQod9XeBOThPNShRT9/ntbLoVVRFBoBhu5x8Ee9C5PcfNoh3FPh7ZBOJFUBYV0F6pLUZiJKr4v/labAJp31fXyao=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: qt.io
X-MS-Exchange-CrossTenant-Network-Message-Id: 89a4221d-e011-4e65-25f6-08d64b8d6a94
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Nov 2018 06:33:26.9132 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 20d0b167-794d-448a-9d01-aaeccc1124ac
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0201MB2473
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-mingw][PATCH 2/2] cmake: add support for building nativesdk-cmake
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
X-List-Received-Date: Fri, 16 Nov 2018 09:06:09 -0000
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_HE1PR0201MB226527D27E394E02AD43585BE9DD0HE1PR0201MB2265_"

--_000_HE1PR0201MB226527D27E394E02AD43585BE9DD0HE1PR0201MB2265_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I've been testing cmake with Qt Creator integration which explicitly uses -=
G "MinGW Makefiles", while cmake defaults to NMake Makefiles. I'm not sure =
if it's possible to set generator in the toolchain file.


________________________________
From: Joshua Watt <jpewhacker@gmail.com>
Sent: 16 November 2018 05:35:50
To: Samuli Piippo
Cc: Yocto list discussion
Subject: Re: [yocto] [meta-mingw][PATCH 2/2] cmake: add support for buildin=
g nativesdk-cmake

On Thu, Nov 15, 2018 at 7:22 PM Samuli Piippo <samuli.piippo@qt.io> wrote:
>
> Build nativesdk-cmake and dependency libs without without openssl.
>
> Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
> ---
>  .../nativesdk-packagegroup-sdk-host.bbappend              | 1 +
>  recipes-devtools/cmake/cmake_%.bbappend                   | 8 ++++++++
>  recipes-extended/libarchive/libarchive_%.bbappend         | 1 +
>  recipes-support/curl/curl_%.bbappend                      | 2 ++
>  4 files changed, 12 insertions(+)
>  create mode 100644 recipes-devtools/cmake/cmake_%.bbappend
>  create mode 100644 recipes-extended/libarchive/libarchive_%.bbappend
>  create mode 100644 recipes-support/curl/curl_%.bbappend
>
> diff --git a/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.b=
bappend b/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappe=
nd
> index ad69b13..9544ffb 100644
> --- a/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend
> +++ b/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend
> @@ -2,4 +2,5 @@ RDEPENDS_${PN}_mingw32 =3D "\
>      nativesdk-pkgconfig \
>      nativesdk-libtool \
>      nativesdk-qemu \
> +    nativesdk-cmake \

Have you been successful at getting cmake to work properly in MinGW?
I've been working on automated tests for the SDK, and for kicks I
pulled in your changes and tried to write a test for cmake (heavily
borrowed from the cmake/assimp test in oe-core). When I ran the test,
I got the following:

--- snip ---

-- Building for: NMake Makefiles
-- The C compiler identification is GNU 8.2.0
CMake Error at Z:/projects/poky/build/tmp/work/qemux86-poky-linux/core-imag=
e-minimal/1.0-r0/testimage-sdk/CMakeTest-zljaq7x7/build/CMakeFiles/3.12.2/C=
MakeCCompiler.cmake:2
(set):
  Syntax error in cmake code at

    Z:/projects/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1=
.0-r0/testimage-sdk/CMakeTest-zljaq7x7/build/CMakeFiles/3.12.2/CMakeCCompil=
er.cmake:2

  when parsing string

      -m32 -march=3Di586
--sysroot=3DZ:\projects\poky\build\tmp\work\QEMU~ELC\CORE~B5D\1~~~~N25.0-R\=
TEST~Y0Z\\sysroots\i586-poky-linux

  Invalid escape sequence \p
Call Stack (most recent call first):
  CMakeLists.txt:38 (PROJECT)

--- snip ---

It looks like cmake doesn't like the Windows style slashes in CFLAGS.

You can see my test branch at jpew/oeqa in meta-mingw-contrib... it's
still in progress so it might be a bit of work if you want to try it
yourself.

>      "
> diff --git a/recipes-devtools/cmake/cmake_%.bbappend b/recipes-devtools/c=
make/cmake_%.bbappend
> new file mode 100644
> index 0000000..f76cd82
> --- /dev/null
> +++ b/recipes-devtools/cmake/cmake_%.bbappend
> @@ -0,0 +1,8 @@
> +DEPENDS_remove_mingw32 =3D "ncurses"
> +
> +cmake_do_generate_toolchain_file_append_mingw32() {
> +    cat >> ${WORKDIR}/toolchain.cmake <<EOF
> +set( CMAKE_SYSTEM_NAME Windows )
> +EOF
> +}
> +
> diff --git a/recipes-extended/libarchive/libarchive_%.bbappend b/recipes-=
extended/libarchive/libarchive_%.bbappend
> new file mode 100644
> index 0000000..a411b40
> --- /dev/null
> +++ b/recipes-extended/libarchive/libarchive_%.bbappend
> @@ -0,0 +1 @@
> +EXTRA_OECONF_append_mingw32 =3D " --without-cng"
> diff --git a/recipes-support/curl/curl_%.bbappend b/recipes-support/curl/=
curl_%.bbappend
> new file mode 100644
> index 0000000..7865b46
> --- /dev/null
> +++ b/recipes-support/curl/curl_%.bbappend
> @@ -0,0 +1,2 @@
> +PACKAGECONFIG_remove_class-nativesdk_mingw32 =3D "ssl"
> +RRECOMMENDS_lib${BPN}_remove_mingw32 =3D "ca-certificates"
> --
> 2.17.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
yocto Info Page<https://lists.yoctoproject.org/listinfo/yocto>
lists.yoctoproject.org
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.=
 Subscribe before posting to bypass moderation. To see the collection of pr=
ior postings to the list, visit the yocto Archives.. Using yocto




--_000_HE1PR0201MB226527D27E394E02AD43585BE9DD0HE1PR0201MB2265_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, EmojiFont, &q=
uot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &q=
uot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
<p style=3D"margin-top:0; margin-bottom:0">I've been testing cmake with Qt&=
nbsp;Creator integration which explicitly uses -G &quot;<span>MinGW Makefil=
es&quot;, while cmake defaults to NMake Makefiles. I'm not sure if it's pos=
sible to set generator in the toolchain file.</span></p>
<p style=3D"margin-top:0; margin-bottom:0"><span><br>
</span></p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Joshua Watt &lt;jpewh=
acker@gmail.com&gt;<br>
<b>Sent:</b> 16 November 2018 05:35:50<br>
<b>To:</b> Samuli Piippo<br>
<b>Cc:</b> Yocto list discussion<br>
<b>Subject:</b> Re: [yocto] [meta-mingw][PATCH 2/2] cmake: add support for =
building nativesdk-cmake</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">On Thu, Nov 15, 2018 at 7:22 PM Samuli Piippo &lt;=
samuli.piippo@qt.io&gt; wrote:<br>
&gt;<br>
&gt; Build nativesdk-cmake and dependency libs without without openssl.<br>
&gt;<br>
&gt; Signed-off-by: Samuli Piippo &lt;samuli.piippo@qt.io&gt;<br>
&gt; ---<br>
&gt;&nbsp; .../nativesdk-packagegroup-sdk-host.bbappend&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | 1 &#43;<br>
&gt;&nbsp; recipes-devtools/cmake/cmake_%.bbappend&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; | 8 &#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;<br>
&gt;&nbsp; recipes-extended/libarchive/libarchive_%.bbappend&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | 1 &#43;<br>
&gt;&nbsp; recipes-support/curl/curl_%.bbappend&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; | 2 &#43;&#43;<br>
&gt;&nbsp; 4 files changed, 12 insertions(&#43;)<br>
&gt;&nbsp; create mode 100644 recipes-devtools/cmake/cmake_%.bbappend<br>
&gt;&nbsp; create mode 100644 recipes-extended/libarchive/libarchive_%.bbap=
pend<br>
&gt;&nbsp; create mode 100644 recipes-support/curl/curl_%.bbappend<br>
&gt;<br>
&gt; diff --git a/recipes-core/packagegroups/nativesdk-packagegroup-sdk-hos=
t.bbappend b/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bba=
ppend<br>
&gt; index ad69b13..9544ffb 100644<br>
&gt; --- a/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbapp=
end<br>
&gt; &#43;&#43;&#43; b/recipes-core/packagegroups/nativesdk-packagegroup-sd=
k-host.bbappend<br>
&gt; @@ -2,4 &#43;2,5 @@ RDEPENDS_${PN}_mingw32 =3D &quot;\<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; nativesdk-pkgconfig \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; nativesdk-libtool \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; nativesdk-qemu \<br>
&gt; &#43;&nbsp;&nbsp;&nbsp; nativesdk-cmake \<br>
<br>
Have you been successful at getting cmake to work properly in MinGW?<br>
I've been working on automated tests for the SDK, and for kicks I<br>
pulled in your changes and tried to write a test for cmake (heavily<br>
borrowed from the cmake/assimp test in oe-core). When I ran the test,<br>
I got the following:<br>
<br>
--- snip ---<br>
<br>
-- Building for: NMake Makefiles<br>
-- The C compiler identification is GNU 8.2.0<br>
CMake Error at Z:/projects/poky/build/tmp/work/qemux86-poky-linux/core-imag=
e-minimal/1.0-r0/testimage-sdk/CMakeTest-zljaq7x7/build/CMakeFiles/3.12.2/C=
MakeCCompiler.cmake:2<br>
(set):<br>
&nbsp; Syntax error in cmake code at<br>
<br>
&nbsp;&nbsp;&nbsp; Z:/projects/poky/build/tmp/work/qemux86-poky-linux/core-=
image-minimal/1.0-r0/testimage-sdk/CMakeTest-zljaq7x7/build/CMakeFiles/3.12=
.2/CMakeCCompiler.cmake:2<br>
<br>
&nbsp; when parsing string<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -m32 -march=3Di586<br>
--sysroot=3DZ:\projects\poky\build\tmp\work\QEMU~ELC\CORE~B5D\1~~~~N25.0-R\=
TEST~Y0Z\\sysroots\i586-poky-linux<br>
<br>
&nbsp; Invalid escape sequence \p<br>
Call Stack (most recent call first):<br>
&nbsp; CMakeLists.txt:38 (PROJECT)<br>
<br>
--- snip ---<br>
<br>
It looks like cmake doesn't like the Windows style slashes in CFLAGS.<br>
<br>
You can see my test branch at jpew/oeqa in meta-mingw-contrib... it's<br>
still in progress so it might be a bit of work if you want to try it<br>
yourself.<br>
<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;<br>
&gt; diff --git a/recipes-devtools/cmake/cmake_%.bbappend b/recipes-devtool=
s/cmake/cmake_%.bbappend<br>
&gt; new file mode 100644<br>
&gt; index 0000000..f76cd82<br>
&gt; --- /dev/null<br>
&gt; &#43;&#43;&#43; b/recipes-devtools/cmake/cmake_%.bbappend<br>
&gt; @@ -0,0 &#43;1,8 @@<br>
&gt; &#43;DEPENDS_remove_mingw32 =3D &quot;ncurses&quot;<br>
&gt; &#43;<br>
&gt; &#43;cmake_do_generate_toolchain_file_append_mingw32() {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp; cat &gt;&gt; ${WORKDIR}/toolchain.cmake &lt;&l=
t;EOF<br>
&gt; &#43;set( CMAKE_SYSTEM_NAME Windows )<br>
&gt; &#43;EOF<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt; diff --git a/recipes-extended/libarchive/libarchive_%.bbappend b/recip=
es-extended/libarchive/libarchive_%.bbappend<br>
&gt; new file mode 100644<br>
&gt; index 0000000..a411b40<br>
&gt; --- /dev/null<br>
&gt; &#43;&#43;&#43; b/recipes-extended/libarchive/libarchive_%.bbappend<br=
>
&gt; @@ -0,0 &#43;1 @@<br>
&gt; &#43;EXTRA_OECONF_append_mingw32 =3D &quot; --without-cng&quot;<br>
&gt; diff --git a/recipes-support/curl/curl_%.bbappend b/recipes-support/cu=
rl/curl_%.bbappend<br>
&gt; new file mode 100644<br>
&gt; index 0000000..7865b46<br>
&gt; --- /dev/null<br>
&gt; &#43;&#43;&#43; b/recipes-support/curl/curl_%.bbappend<br>
&gt; @@ -0,0 &#43;1,2 @@<br>
&gt; &#43;PACKAGECONFIG_remove_class-nativesdk_mingw32 =3D &quot;ssl&quot;<=
br>
&gt; &#43;RRECOMMENDS_lib${BPN}_remove_mingw32 =3D &quot;ca-certificates&qu=
ot;<br>
&gt; --<br>
&gt; 2.17.1<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; yocto@yoctoproject.org<br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" id=3D"LPlnk9=
8956" class=3D"OWAAutoLink" previewremoved=3D"true">
https://lists.yoctoproject.org/listinfo/yocto</a>
<div id=3D"LPBorder_GT_15423491240070.2354233722957071" style=3D"margin-bot=
tom: 20px; overflow: auto; width: 100%; text-indent: 0px;">
<table id=3D"LPContainer_15423491240050.9019769904137116" role=3D"presentat=
ion" cellspacing=3D"0" style=3D"width: 90%; background-color: rgb(255, 255,=
 255); position: relative; overflow: auto; padding-top: 20px; padding-botto=
m: 20px; margin-top: 20px; border-top: 1px dotted rgb(200, 200, 200); borde=
r-bottom: 1px dotted rgb(200, 200, 200);">
<tbody>
<tr valign=3D"top" style=3D"border-spacing: 0px;">
<td id=3D"TextCell_15423491240060.6552528997888396" colspan=3D"2" style=3D"=
vertical-align: top; position: relative; padding: 0px; display: table-cell;=
">
<div id=3D"LPRemovePreviewContainer_15423491240060.4063729828392795"></div>
<div id=3D"LPTitle_15423491240060.4978357256082786" style=3D"top: 0px; colo=
r: rgb(66, 205, 83); font-weight: 400; font-size: 21px; font-family: wf_seg=
oe-ui_light, &quot;Segoe UI Light&quot;, &quot;Segoe WP Light&quot;, &quot;=
Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif; line-heigh=
t: 21px;">
<a id=3D"LPUrlAnchor_15423491240060.397776801442713" href=3D"https://lists.=
yoctoproject.org/listinfo/yocto" target=3D"_blank" style=3D"text-decoration=
: none;">yocto Info Page</a></div>
<div id=3D"LPMetadata_15423491240060.32289360814623747" style=3D"margin: 10=
px 0px 16px; color: rgb(102, 102, 102); font-weight: 400; font-family: wf_s=
egoe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, =
sans-serif; font-size: 14px; line-height: 14px;">
lists.yoctoproject.org</div>
<div id=3D"LPDescription_15423491240070.18548421292485706" style=3D"display=
: block; color: rgb(102, 102, 102); font-weight: 400; font-family: wf_segoe=
-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans=
-serif; font-size: 14px; line-height: 20px; max-height: 100px; overflow: hi=
dden;">
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.=
 Subscribe before posting to bypass moderation. To see the collection of pr=
ior postings to the list, visit
 the yocto Archives.. Using yocto</div>
</td>
</tr>
</tbody>
</table>
</div>
<br>
<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_HE1PR0201MB226527D27E394E02AD43585BE9DD0HE1PR0201MB2265_--
