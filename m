Received: from smtp-pc10.blackberry.com (smtp-pc10.blackberry.com [74.82.81.42])
 by mx.groups.io with SMTP id smtpd.web11.5628.1632408362752935629
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 07:46:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@blackberry.com header.s=corp19 header.b=Tpi4+KRL;
 spf=pass (domain: blackberry.com, ip: 74.82.81.42, mailfrom: lijchen@blackberry.com)
Received: from pps.filterd (mhs400cnc.rim.net [127.0.0.1])
	by mhs400cnc.rim.net (8.16.0.43/8.16.0.43) with SMTP id 18NEc6qe183432;
	Thu, 23 Sep 2021 10:45:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=blackberry.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 mime-version; s=corp19; bh=hsvaBifktvxkw1UvvBDTrZxURv3Tolsq3M3CdjV0hqk=;
 b=Tpi4+KRL92QbcAp+jFamv1+HoxUwM5VtKszd0V60aCffok1/+kCGEOLa/+LMizqUvXAK
 f7OoL2dNyf+TO//IVDjum4QxqIXCwds3Pz8qD2RT1559IEdvIXoR5ELKoteIaX3xlpmN
 AOp75svBkKWcae98ecvPGLlVk3QN3PvDILjXxWoM2HEhDc2pFBxTmY5p58ElZr8zAnNg
 oBVQxKv6YtwJ+87a0lNiQU7n5VUh9Jiw2VsMQHZHo1D2hyVZPyOGhgjQN6ZigAnZybbH
 VOUDwqlwqSbhnJuH6S65MPxqSx96m9+vxScIxnb89oYtmchpnA/9mftr2mZkrFaBVx8s sg== 
Received: from xch214cnc.rim.net (xch214cnc.rim.net [10.3.27.119])
	by mhs400cnc.rim.net with ESMTP id 3b7q5wux3k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 23 Sep 2021 10:45:57 -0400
Received: from XCH211YKF.rim.net (10.12.114.211) by XCH214CNC.rim.net
 (10.3.27.119) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.14; Thu, 23 Sep
 2021 10:45:57 -0400
Received: from XCH211YKF.rim.net ([fe80::dca:23f8:c2c0:7180]) by
 XCH211YKF.rim.net ([fe80::dca:23f8:c2c0:7180%5]) with mapi id 15.01.2308.014;
 Thu, 23 Sep 2021 10:45:57 -0400
From: "Lijun Chen" <lijchen@blackberry.com>
To: Federico Pellegrin <fede@evolware.org>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] googletest shared library
Thread-Topic: [yocto] googletest shared library
Thread-Index: AQHXrvNmR2vvZSsL30OJxestQkC5W6uuznCAgAARxluAASeUKIAAaj2A///jB82AAUnfsIAAVIyA///AtJk=
Date: Thu, 23 Sep 2021 14:45:57 +0000
Message-ID: <6be47b6387624c2686df9b5bdab5d1e1@blackberry.com>
References: <3925c5329d6f46f78c5921fe7965662b@blackberry.com>
 <AS8PR09MB4645D63449C60FC6463045E7A8A19@AS8PR09MB4645.eurprd09.prod.outlook.com>
 <16A6EE364B338B15.22723@lists.yoctoproject.org>
 <15166f538f2144adabe2299deb3b2a3c@blackberry.com>
 <4440837f-5f69-28c4-7d8b-57653935790c@gmail.com>
 <16A735F63BB00E6A.1967@lists.yoctoproject.org>
 <1b84a7a456b54acaae9d98efc5731549@blackberry.com>,<CAM6O0Zgs5Fir2k8m+tTVG_OVVe6oq=uRvCEegxzA6x-AvgwSJw@mail.gmail.com>
In-Reply-To: <CAM6O0Zgs5Fir2k8m+tTVG_OVVe6oq=uRvCEegxzA6x-AvgwSJw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [100.64.197.219]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-09-23_04:2021-09-23,2021-09-23 signatures=0
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_6be47b6387624c2686df9b5bdab5d1e1blackberrycom_"

--_000_6be47b6387624c2686df9b5bdab5d1e1blackberrycom_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

I tried INSANE_SKIP_${PN} +=3D "dev-elf" and "dev-so", still got the QA err=
or:

ERROR: googletest-1.10.0-r0 do_package_qa: QA Issue: -dev package googletes=
t-dev contains non-symlink .so '/usr/lib/libgmock.so'
-dev package googletest-dev contains non-symlink .so '/usr/lib/libgtest_mai=
n.so'
-dev package googletest-dev contains non-symlink .so '/usr/lib/libgmock_mai=
n.so'
-dev package googletest-dev contains non-symlink .so '/usr/lib/libgtest.so'=
 [dev-elf]
ERROR: googletest-1.10.0-r0 do_package_qa: QA run found fatal errors. Pleas=
e consider fixing them.
ERROR: Logfile of failure stored in: /home/lijchen/hdd/ivdp/yocto/imx8/imx-=
yocto-bsp-Hardknott/build-imx8qmmek/tmp/work/cortexa72-cortexa53-crypto-pok=
y-linux/googletest/1.10.0-r0/temp/log.do_package_qa.24701
ERROR: Task (/home/lijchen/hdd/ivdp/yocto/imx8/imx-yocto-bsp-Hardknott/sour=
ces/meta-openembedded/meta-oe/recipes-test/googletest/googletest_git.bb:do_=
package_qa) failed with exit code '1'

I also tried adding " -DCMAKE_INSTALL_PREFIX=3D/usr/local" to EXTRA_OEMAKE,=
 and got the following error:

ERROR: googletest-1.10.0-r0 do_package: QA Issue: googletest: Files/directo=
ries were installed but not shipped in any package:
  /usr/local/include
  /usr/local/lib/libgmock.so
  /usr/local/lib/libgtest_main.so
  /usr/local/lib/libgmock_main.so
  /usr/local/lib/libgtest.so
  /usr/local/lib/cmake
  /usr/local/lib/pkgconfig
  /usr/local/lib/cmake/GTest
  /usr/local/lib/cmake/GTest/GTestTargets.cmake
  /usr/local/lib/cmake/GTest/GTestConfigVersion.cmake
  /usr/local/lib/cmake/GTest/GTestConfig.cmake
  /usr/local/lib/cmake/GTest/GTestTargets-noconfig.cmake
  /usr/local/lib/pkgconfig/gtest_main.pc
  /usr/local/lib/pkgconfig/gtest.pc
  /usr/local/lib/pkgconfig/gmock_main.pc
  /usr/local/lib/pkgconfig/gmock.pc
  /usr/local/include/gtest
  /usr/local/include/gmock
  /usr/local/include/gtest/gtest_prod.h
  /usr/local/include/gtest/gtest-test-part.h
  /usr/local/include/gtest/gtest_pred_impl.h
  /usr/local/include/gtest/gtest-matchers.h
  /usr/local/include/gtest/gtest-printers.h
  /usr/local/include/gtest/gtest.h
  /usr/local/include/gtest/gtest-param-test.h
  /usr/local/include/gtest/gtest-death-test.h
  /usr/local/include/gtest/gtest-typed-test.h
  /usr/local/include/gtest/gtest-message.h
  /usr/local/include/gtest/gtest-spi.h
  /usr/local/include/gtest/internal
  /usr/local/include/gtest/internal/gtest-death-test-internal.h
  /usr/local/include/gtest/internal/gtest-filepath.h
  /usr/local/include/gtest/internal/gtest-param-util.h
  /usr/local/include/gtest/internal/gtest-string.h
  /usr/local/include/gtest/internal/gtest-type-util.h
  /usr/local/include/gtest/internal/gtest-internal.h
  /usr/local/include/gtest/internal/gtest-type-util.h.pump
  /usr/local/include/gtest/internal/gtest-port-arch.h
  /usr/local/include/gtest/internal/gtest-port.h
  /usr/local/include/gtest/internal/custom
  /usr/local/include/gtest/internal/custom/gtest-printers.h
  /usr/local/include/gtest/internal/custom/gtest.h
  /usr/local/include/gtest/internal/custom/README.md
  /usr/local/include/gtest/internal/custom/gtest-port.h
  /usr/local/include/gmock/gmock-function-mocker.h
  /usr/local/include/gmock/gmock-generated-function-mockers.h
  /usr/local/include/gmock/gmock-generated-actions.h.pump
  /usr/local/include/gmock/gmock-matchers.h
  /usr/local/include/gmock/gmock-generated-matchers.h
  /usr/local/include/gmock/gmock-more-matchers.h
  /usr/local/include/gmock/gmock.h
  /usr/local/include/gmock/gmock-generated-actions.h
  /usr/local/include/gmock/gmock-nice-strict.h
  /usr/local/include/gmock/gmock-spec-builders.h
  /usr/local/include/gmock/gmock-more-actions.h
  /usr/local/include/gmock/gmock-generated-function-mockers.h.pump
  /usr/local/include/gmock/gmock-cardinalities.h
  /usr/local/include/gmock/gmock-actions.h
  /usr/local/include/gmock/gmock-generated-matchers.h.pump
  /usr/local/include/gmock/internal
  /usr/local/include/gmock/internal/gmock-port.h
  /usr/local/include/gmock/internal/gmock-pp.h
  /usr/local/include/gmock/internal/gmock-internal-utils.h
  /usr/local/include/gmock/internal/custom
  /usr/local/include/gmock/internal/custom/gmock-port.h
  /usr/local/include/gmock/internal/custom/gmock-generated-actions.h.pump
  /usr/local/include/gmock/internal/custom/gmock-matchers.h
  /usr/local/include/gmock/internal/custom/gmock-generated-actions.h
  /usr/local/include/gmock/internal/custom/README.md
Please set FILES such that these items are packaged. Alternatively if they =
are unneeded, avoid installing them or delete them within do_install.
googletest: 69 installed and not shipped files. [installed-vs-shipped]
ERROR: googletest-1.10.0-r0 do_package: Fatal QA errors found, failing task=
.



________________________________
From: Federico Pellegrin <fede@evolware.org>
Sent: Thursday, September 23, 2021 10:27:39 AM
To: Lijun Chen
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] googletest shared library


Hi,
To skip the QA you can use:

INSANE_SKIP_${PN} +=3D "dev-elf"

(or any QA part you'd like to skip, ie. dev-elf or dev-so ...)

Cheers,
Federico



Il giorno gio 23 set 2021 alle ore 15:33 Lijun Chen <lijchen@blackberry.com=
<mailto:lijchen@blackberry.com>> ha scritto:

Hi,


If I switch to the default setting of the googletest recipe, the header fil=
es are included in the SDK image. However, the libgtest libraries are stati=
c.

Looks FILES_SOLIBSDEV =3D "" disables googletest-dev to be included in the =
SDK.


Is there a way to change the library to dynamic and keep the header files? =
i.e. just add EXTRA_OECMAKE =3D "-DBUILD_SHARED_LIBS=3DON " but skip the do=
_package_qa part to avoid the QA issue due to un-versioned library?


Thanks,

Lijun


________________________________
From: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <yo=
cto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>> on behalf =
of Lijun Chen <lijchen@blackberry.com<mailto:lijchen@blackberry.com>>
Sent: Wednesday, September 22, 2021 1:45 PM
To: Khem Raj; yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.=
org>
Subject: Re: [yocto] googletest shared library


Tried adding googletest to TOOLCHAIN_TARGET_TASK. The gtest .h files are st=
ill not showing up.

Thanks,

________________________________
From: Khem Raj <raj.khem@gmail.com<mailto:raj.khem@gmail.com>>
Sent: Wednesday, September 22, 2021 11:28:05 AM
To: Lijun Chen; yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoprojec=
t.org>
Subject: Re: [yocto] googletest shared library

The .h files will be in dev pkg in this case googletest-dev
what happens if you add googletest to TOOLCHAIN_TARGET_TASK

On 9/22/21 6:18 AM, Lijun Chen wrote:
> Hi,
>
>
> Now I included googletest to the IMAGE_INSTALL in my image file, and
> built both board image and SDK image. I can see libgtest.so is available
> in both images. However, gtest/gtest.h is a not present in SDK. How do I
> add the header files to the SDK image? Looks the following lines affect
> that?
>
> SOLIBS =3D ".so"
> FILES_SOLIBSDEV =3D ""
>
> Thanks,
> Lijun
>
> ------------------------------------------------------------------------
> *From:* yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>=
 <yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>> on
> behalf of Lijun Chen <lijchen@blackberry.com<mailto:lijchen@blackberry.co=
m>>
> *Sent:* Tuesday, September 21, 2021 3:50 PM
> *To:* Konrad Weihmann; yocto@lists.yoctoproject.org<mailto:yocto@lists.yo=
ctoproject.org>
> *Subject:* Re: [yocto] googletest shared library
>
> Thanks Konrad. That worked.
>
> ------------------------------------------------------------------------
> *From:* Konrad Weihmann <kweihmann@outlook.com<mailto:kweihmann@outlook.c=
om>>
> *Sent:* Tuesday, September 21, 2021 10:26:19 AM
> *To:* Lijun Chen; yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctopr=
oject.org>
> *Subject:* Re: [yocto] googletest shared library
>
> On 21.09.21 16:18, Lijun Chen wrote:
>> Hi,
>>
>> I would like to include libgtest.so into my Yocto image. I added
>> googletest to IMAGE_INSTALL and added the following line to
>> sources/meta-openembedded/meta-oe/recipes-test/googletest/googletest_git=
.bb<https://urldefense.com/v3/__http://googletest_git.bb__;!!COg3wY07Hnb7!7=
O_HT4lxGD2NMUNxv3WxuozghHtiiLg6jEedfRQlWFKmZAkTPU49ug2kIHlR9kH4xg$>:
>>
>> EXTRA_OECMAKE =3D "-DBUILD_SHARED_LIBS=3DON "
>>
>>
>> The shared libraries were built successfully. However, there are errors
>> in do_package_qc as following:
>>
>>
>> ERROR: googletest-1.10.0-r0 do_package_qa: QA Issue: -dev package
>> googletest-dev contains non-symlink .so '/usr/lib/libgmock.so'
>> -dev package googletest-dev contains non-symlink .so
>> '/usr/lib/libgtest_main.so'
>> -dev package googletest-dev contains non-symlink .so
>> '/usr/lib/libgmock_main.so'
>> -dev package googletest-dev contains non-symlink .so
>> '/usr/lib/libgtest.so' [dev-elf]
>> ERROR: googletest-1.10.0-r0 do_package_qa: QA run found fatal errors.
>> Please consider fixing them.
>
> https://urldefense.com/v3/__http://git.yoctoproject.org/cgit/cgit.cgi/pok=
y/tree/meta/recipes-graphics/spir/spirv-tools_2021.2.bb*n34__;Iw!!COg3wY07H=
nb7!4NI6d6tXUoxCQFleF-343dfbdFGnkZnqrYRVg3nYTCBoGJTY9-K0NANM4iMsNNleww$
> <https://urldefense.com/v3/__http://git.yoctoproject.org/cgit/cgit.cgi/po=
ky/tree/meta/recipes-graphics/spir/spirv-tools_2021.2.bb*n34__;Iw!!COg3wY07=
Hnb7!4NI6d6tXUoxCQFleF-343dfbdFGnkZnqrYRVg3nYTCBoGJTY9-K0NANM4iMsNNleww$>
>
> (and the next lines) might give you a hint what to do in this case.
> Although one could also consider that's something that needs to be fixed
> in the installation script of googletest, as versioned libraries are the
> expected default
>
>>
>>
>> Any idea to fix this?
>>
>>
>> Thanks,
>>
>> Lijun
>>
>>
>> ------------------------------------------------------------------------
>> This transmission (including any attachments) may contain confidential
>> information, privileged material (including material protected by the
>> solicitor-client or other applicable privileges), or constitute
>> non-public information. Any use of this information by anyone other than
>> the intended recipient is prohibited. If you have received this
>> transmission in error, please immediately reply to the sender and delete
>> this information from your system. Use, dissemination, distribution, or
>> reproduction of this transmission by unintended recipients is not
>> authorized and may be unlawful.
>>
>>
>>
>>
> ------------------------------------------------------------------------
> This transmission (including any attachments) may contain confidential
> information, privileged material (including material protected by the
> solicitor-client or other applicable privileges), or constitute
> non-public information. Any use of this information by anyone other than
> the intended recipient is prohibited. If you have received this
> transmission in error, please immediately reply to the sender and delete
> this information from your system. Use, dissemination, distribution, or
> reproduction of this transmission by unintended recipients is not
> authorized and may be unlawful.
> ------------------------------------------------------------------------
> This transmission (including any attachments) may contain confidential
> information, privileged material (including material protected by the
> solicitor-client or other applicable privileges), or constitute
> non-public information. Any use of this information by anyone other than
> the intended recipient is prohibited. If you have received this
> transmission in error, please immediately reply to the sender and delete
> this information from your system. Use, dissemination, distribution, or
> reproduction of this transmission by unintended recipients is not
> authorized and may be unlawful.
>
>
>
>
________________________________
This transmission (including any attachments) may contain confidential info=
rmation, privileged material (including material protected by the solicitor=
-client or other applicable privileges), or constitute non-public informati=
on. Any use of this information by anyone other than the intended recipient=
 is prohibited. If you have received this transmission in error, please imm=
ediately reply to the sender and delete this information from your system. =
Use, dissemination, distribution, or reproduction of this transmission by u=
nintended recipients is not authorized and may be unlawful.
________________________________
This transmission (including any attachments) may contain confidential info=
rmation, privileged material (including material protected by the solicitor=
-client or other applicable privileges), or constitute non-public informati=
on. Any use of this information by anyone other than the intended recipient=
 is prohibited. If you have received this transmission in error, please imm=
ediately reply to the sender and delete this information from your system. =
Use, dissemination, distribution, or reproduction of this transmission by u=
nintended recipients is not authorized and may be unlawful.



----------------------------------------------------------------------
This transmission (including any attachments) may contain confidential info=
rmation, privileged material (including material protected by the solicitor=
-client or other applicable privileges), or constitute non-public informati=
on. Any use of this information by anyone other than the intended recipient=
 is prohibited. If you have received this transmission in error, please imm=
ediately reply to the sender and delete this information from your system. =
Use, dissemination, distribution, or reproduction of this transmission by u=
nintended recipients is not authorized and may be unlawful.

--_000_6be47b6387624c2686df9b5bdab5d1e1blackberrycom_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="iso-8859-1"

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
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, &quot;EmojiFo=
nt&quot;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoCo=
lorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymb=
ols;">
<p>I tried <span>INSANE_SKIP_${PN} &#43;=3D &quot;dev-elf&quot; and &quot;d=
ev-so&quot;, still got the QA error:</span></p>
<p><span></p>
<div>ERROR: googletest-1.10.0-r0 do_package_qa: QA Issue: -dev package goog=
letest-dev contains non-symlink .so '/usr/lib/libgmock.so'<br>
-dev package googletest-dev contains non-symlink .so '/usr/lib/libgtest_mai=
n.so'<br>
-dev package googletest-dev contains non-symlink .so '/usr/lib/libgmock_mai=
n.so'<br>
-dev package googletest-dev contains non-symlink .so '/usr/lib/libgtest.so'=
 [dev-elf]<br>
ERROR: googletest-1.10.0-r0 do_package_qa: QA run found fatal errors. Pleas=
e consider fixing them.<br>
ERROR: Logfile of failure stored in: /home/lijchen/hdd/ivdp/yocto/imx8/imx-=
yocto-bsp-Hardknott/build-imx8qmmek/tmp/work/cortexa72-cortexa53-crypto-pok=
y-linux/googletest/1.10.0-r0/temp/log.do_package_qa.24701<br>
ERROR: Task (/home/lijchen/hdd/ivdp/yocto/imx8/imx-yocto-bsp-Hardknott/sour=
ces/meta-openembedded/meta-oe/recipes-test/googletest/googletest_git.bb:do_=
package_qa) failed with exit code '1'<br>
<br>
</div>
I also tried adding <span>&quot; -DCMAKE_INSTALL_PREFIX=3D/usr/local&quot;<=
/span> to <span>EXTRA_OEMAKE</span>, and got the following error:</span>
<p></p>
<p><span></p>
<div>ERROR: googletest-1.10.0-r0 do_package: QA Issue: googletest: Files/di=
rectories were installed but not shipped in any package:<br>
&nbsp; /usr/local/include<br>
&nbsp; /usr/local/lib/libgmock.so<br>
&nbsp; /usr/local/lib/libgtest_main.so<br>
&nbsp; /usr/local/lib/libgmock_main.so<br>
&nbsp; /usr/local/lib/libgtest.so<br>
&nbsp; /usr/local/lib/cmake<br>
&nbsp; /usr/local/lib/pkgconfig<br>
&nbsp; /usr/local/lib/cmake/GTest<br>
&nbsp; /usr/local/lib/cmake/GTest/GTestTargets.cmake<br>
&nbsp; /usr/local/lib/cmake/GTest/GTestConfigVersion.cmake<br>
&nbsp; /usr/local/lib/cmake/GTest/GTestConfig.cmake<br>
&nbsp; /usr/local/lib/cmake/GTest/GTestTargets-noconfig.cmake<br>
&nbsp; /usr/local/lib/pkgconfig/gtest_main.pc<br>
&nbsp; /usr/local/lib/pkgconfig/gtest.pc<br>
&nbsp; /usr/local/lib/pkgconfig/gmock_main.pc<br>
&nbsp; /usr/local/lib/pkgconfig/gmock.pc<br>
&nbsp; /usr/local/include/gtest<br>
&nbsp; /usr/local/include/gmock<br>
&nbsp; /usr/local/include/gtest/gtest_prod.h<br>
&nbsp; /usr/local/include/gtest/gtest-test-part.h<br>
&nbsp; /usr/local/include/gtest/gtest_pred_impl.h<br>
&nbsp; /usr/local/include/gtest/gtest-matchers.h<br>
&nbsp; /usr/local/include/gtest/gtest-printers.h<br>
&nbsp; /usr/local/include/gtest/gtest.h<br>
&nbsp; /usr/local/include/gtest/gtest-param-test.h<br>
&nbsp; /usr/local/include/gtest/gtest-death-test.h<br>
&nbsp; /usr/local/include/gtest/gtest-typed-test.h<br>
&nbsp; /usr/local/include/gtest/gtest-message.h<br>
&nbsp; /usr/local/include/gtest/gtest-spi.h<br>
&nbsp; /usr/local/include/gtest/internal<br>
&nbsp; /usr/local/include/gtest/internal/gtest-death-test-internal.h<br>
&nbsp; /usr/local/include/gtest/internal/gtest-filepath.h<br>
&nbsp; /usr/local/include/gtest/internal/gtest-param-util.h<br>
&nbsp; /usr/local/include/gtest/internal/gtest-string.h<br>
&nbsp; /usr/local/include/gtest/internal/gtest-type-util.h<br>
&nbsp; /usr/local/include/gtest/internal/gtest-internal.h<br>
&nbsp; /usr/local/include/gtest/internal/gtest-type-util.h.pump<br>
&nbsp; /usr/local/include/gtest/internal/gtest-port-arch.h<br>
&nbsp; /usr/local/include/gtest/internal/gtest-port.h<br>
&nbsp; /usr/local/include/gtest/internal/custom<br>
&nbsp; /usr/local/include/gtest/internal/custom/gtest-printers.h<br>
&nbsp; /usr/local/include/gtest/internal/custom/gtest.h<br>
&nbsp; /usr/local/include/gtest/internal/custom/README.md<br>
&nbsp; /usr/local/include/gtest/internal/custom/gtest-port.h<br>
&nbsp; /usr/local/include/gmock/gmock-function-mocker.h<br>
&nbsp; /usr/local/include/gmock/gmock-generated-function-mockers.h<br>
&nbsp; /usr/local/include/gmock/gmock-generated-actions.h.pump<br>
&nbsp; /usr/local/include/gmock/gmock-matchers.h<br>
&nbsp; /usr/local/include/gmock/gmock-generated-matchers.h<br>
&nbsp; /usr/local/include/gmock/gmock-more-matchers.h<br>
&nbsp; /usr/local/include/gmock/gmock.h<br>
&nbsp; /usr/local/include/gmock/gmock-generated-actions.h<br>
&nbsp; /usr/local/include/gmock/gmock-nice-strict.h<br>
&nbsp; /usr/local/include/gmock/gmock-spec-builders.h<br>
&nbsp; /usr/local/include/gmock/gmock-more-actions.h<br>
&nbsp; /usr/local/include/gmock/gmock-generated-function-mockers.h.pump<br>
&nbsp; /usr/local/include/gmock/gmock-cardinalities.h<br>
&nbsp; /usr/local/include/gmock/gmock-actions.h<br>
&nbsp; /usr/local/include/gmock/gmock-generated-matchers.h.pump<br>
&nbsp; /usr/local/include/gmock/internal<br>
&nbsp; /usr/local/include/gmock/internal/gmock-port.h<br>
&nbsp; /usr/local/include/gmock/internal/gmock-pp.h<br>
&nbsp; /usr/local/include/gmock/internal/gmock-internal-utils.h<br>
&nbsp; /usr/local/include/gmock/internal/custom<br>
&nbsp; /usr/local/include/gmock/internal/custom/gmock-port.h<br>
&nbsp; /usr/local/include/gmock/internal/custom/gmock-generated-actions.h.p=
ump<br>
&nbsp; /usr/local/include/gmock/internal/custom/gmock-matchers.h<br>
&nbsp; /usr/local/include/gmock/internal/custom/gmock-generated-actions.h<b=
r>
&nbsp; /usr/local/include/gmock/internal/custom/README.md<br>
Please set FILES such that these items are packaged. Alternatively if they =
are unneeded, avoid installing them or delete them within do_install.<br>
googletest: 69 installed and not shipped files. [installed-vs-shipped]<br>
ERROR: googletest-1.10.0-r0 do_package: Fatal QA errors found, failing task=
.</div>
<br>
</span>
<p></p>
<p><span></span><br>
</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Federico Pellegrin =
&lt;fede@evolware.org&gt;<br>
<b>Sent:</b> Thursday, September 23, 2021 10:27:39 AM<br>
<b>To:</b> Lijun Chen<br>
<b>Cc:</b> yocto@lists.yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] googletest shared library</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div><br>
</div>
<div>Hi,</div>
<div>To skip the QA you can use:</div>
<div><br>
</div>
<div>INSANE_SKIP_${PN} &#43;=3D &quot;dev-elf&quot;</div>
<div><br>
</div>
<div>(or any QA part you'd like to skip, ie. dev-elf or dev-so ...)</div>
<div><br>
</div>
<div>Cheers,</div>
<div>Federico</div>
<div><br>
</div>
<div><br>
</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">Il giorno gio 23 set 2021 alle ore 15=
:33 Lijun Chen &lt;<a href=3D"mailto:lijchen@blackberry.com">lijchen@blackb=
erry.com</a>&gt; ha scritto:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; border=
-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"gmail-m_8376641144616927063divtagdefaultwrapper" dir=3D"ltr" sty=
le=3D"font-size:12pt; color:rgb(0,0,0); font-family:Calibri,Helvetica,sans-=
serif,&quot;EmojiFont&quot;,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Em=
oji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&qu=
ot;,EmojiSymbols">
<p>Hi,</p>
<p><br>
</p>
<p>If I switch to the default setting of the googletest recipe, the header =
files are included in the SDK image. However, the libgtest libraries are st=
atic.</p>
<p>Looks <font size=3D"2"><span style=3D"font-size:10pt">FILES_SOLIBSDEV =
=3D &quot;&quot;</span></font> disables googletest-dev to be included in th=
e SDK.</p>
<p><br>
</p>
<p><span>Is there a way to change the library to dynamic and keep the heade=
r files? i.e. just add
<font size=3D"2"><span style=3D"font-size:10pt">EXTRA_OECMAKE =3D &quot;-DB=
UILD_SHARED_LIBS=3DON &quot;</span></font> but skip the
<font size=3D"2"><span style=3D"font-size:10pt">do_package_qa</span></font>=
 part to avoid the QA issue due to un-versioned library?</span></p>
<p><span><br>
</span></p>
<p><span>Thanks,</span></p>
<p><span>Lijun</span><br>
</p>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block; width:98%">
<div id=3D"gmail-m_8376641144616927063divRplyFwdMsg" dir=3D"ltr"><font styl=
e=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>From=
:</b>
<a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lis=
ts.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org"=
 target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt; on behalf of Lijun =
Chen &lt;<a href=3D"mailto:lijchen@blackberry.com" target=3D"_blank">lijche=
n@blackberry.com</a>&gt;<br>
<b>Sent:</b> Wednesday, September 22, 2021 1:45 PM<br>
<b>To:</b> Khem Raj; <a href=3D"mailto:yocto@lists.yoctoproject.org" target=
=3D"_blank">
yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] googletest shared library</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div id=3D"gmail-m_8376641144616927063x_divtagdefaultwrapper" dir=3D"ltr" s=
tyle=3D"font-size:12pt; color:rgb(0,0,0); font-family:Calibri,Helvetica,san=
s-serif,&quot;EmojiFont&quot;,&quot;Apple Color Emoji&quot;,&quot;Segoe UI =
Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&=
quot;,EmojiSymbols">
<p>Tried adding googletest to <font size=3D"2"><span style=3D"font-size:10p=
t">TOOLCHAIN_TARGET_TASK</span></font>. The gtest .h files are still not sh=
owing up.</p>
<p>Thanks,<br>
</p>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"gmail-m_8376641144616927063x_divRplyFwdMsg" dir=3D"ltr"><font st=
yle=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>Fr=
om:</b> Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank=
">raj.khem@gmail.com</a>&gt;<br>
<b>Sent:</b> Wednesday, September 22, 2021 11:28:05 AM<br>
<b>To:</b> Lijun Chen; <a href=3D"mailto:yocto@lists.yoctoproject.org" targ=
et=3D"_blank">
yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] googletest shared library</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt">
<div>The .h files will be in dev pkg in this case googletest-dev<br>
what happens if you add googletest to TOOLCHAIN_TARGET_TASK<br>
<br>
On 9/22/21 6:18 AM, Lijun Chen wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; <br>
&gt; Now I included googletest to the IMAGE_INSTALL in my image file, and <=
br>
&gt; built both board image and SDK image. I can see libgtest.so is availab=
le <br>
&gt; in both images. However, gtest/gtest.h is a not present in SDK. How do=
 I <br>
&gt; add the header files to the SDK image? Looks the following lines affec=
t <br>
&gt; that?<br>
&gt; <br>
&gt; SOLIBS =3D &quot;.so&quot;<br>
&gt; FILES_SOLIBSDEV =3D &quot;&quot;<br>
&gt; <br>
&gt; Thanks,<br>
&gt; Lijun<br>
&gt; <br>
&gt; ----------------------------------------------------------------------=
--<br>
&gt; *From:* <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_bla=
nk">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoct=
oproject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt; on
<br>
&gt; behalf of Lijun Chen &lt;<a href=3D"mailto:lijchen@blackberry.com" tar=
get=3D"_blank">lijchen@blackberry.com</a>&gt;<br>
&gt; *Sent:* Tuesday, September 21, 2021 3:50 PM<br>
&gt; *To:* Konrad Weihmann; <a href=3D"mailto:yocto@lists.yoctoproject.org"=
 target=3D"_blank">
yocto@lists.yoctoproject.org</a><br>
&gt; *Subject:* Re: [yocto] googletest shared library<br>
&gt; <br>
&gt; Thanks Konrad. That worked.<br>
&gt; <br>
&gt; ----------------------------------------------------------------------=
--<br>
&gt; *From:* Konrad Weihmann &lt;<a href=3D"mailto:kweihmann@outlook.com" t=
arget=3D"_blank">kweihmann@outlook.com</a>&gt;<br>
&gt; *Sent:* Tuesday, September 21, 2021 10:26:19 AM<br>
&gt; *To:* Lijun Chen; <a href=3D"mailto:yocto@lists.yoctoproject.org" targ=
et=3D"_blank">
yocto@lists.yoctoproject.org</a><br>
&gt; *Subject:* Re: [yocto] googletest shared library<br>
&gt; <br>
&gt; On 21.09.21 16:18, Lijun Chen wrote:<br>
&gt;&gt; Hi,<br>
&gt;&gt; <br>
&gt;&gt; I would like to include libgtest.so into my Yocto image. I added <=
br>
&gt;&gt; googletest to IMAGE_INSTALL and added the following line to <br>
&gt;&gt; sources/meta-openembedded/meta-oe/recipes-test/googletest/<a href=
=3D"https://urldefense.com/v3/__http://googletest_git.bb__;!!COg3wY07Hnb7!7=
O_HT4lxGD2NMUNxv3WxuozghHtiiLg6jEedfRQlWFKmZAkTPU49ug2kIHlR9kH4xg$" target=
=3D"_blank">googletest_git.bb</a>:<br>
&gt;&gt; <br>
&gt;&gt; EXTRA_OECMAKE =3D &quot;-DBUILD_SHARED_LIBS=3DON &quot;<br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; The shared libraries were built successfully. However, there are e=
rrors <br>
&gt;&gt; in do_package_qc as following:<br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; ERROR: googletest-1.10.0-r0 do_package_qa: QA Issue: -dev package =
<br>
&gt;&gt; googletest-dev contains non-symlink .so '/usr/lib/libgmock.so'<br>
&gt;&gt; -dev package googletest-dev contains non-symlink .so <br>
&gt;&gt; '/usr/lib/libgtest_main.so'<br>
&gt;&gt; -dev package googletest-dev contains non-symlink .so <br>
&gt;&gt; '/usr/lib/libgmock_main.so'<br>
&gt;&gt; -dev package googletest-dev contains non-symlink .so <br>
&gt;&gt; '/usr/lib/libgtest.so' [dev-elf]<br>
&gt;&gt; ERROR: googletest-1.10.0-r0 do_package_qa: QA run found fatal erro=
rs. <br>
&gt;&gt; Please consider fixing them.<br>
&gt; <br>
&gt; <a href=3D"https://urldefense.com/v3/__http://git.yoctoproject.org/cgi=
t/cgit.cgi/poky/tree/meta/recipes-graphics/spir/spirv-tools_2021.2.bb*n34__=
;Iw!!COg3wY07Hnb7!4NI6d6tXUoxCQFleF-343dfbdFGnkZnqrYRVg3nYTCBoGJTY9-K0NANM4=
iMsNNleww$" target=3D"_blank">
https://urldefense.com/v3/__http://git.yoctoproject.org/cgit/cgit.cgi/poky/=
tree/meta/recipes-graphics/spir/spirv-tools_2021.2.bb*n34__;Iw!!COg3wY07Hnb=
7!4NI6d6tXUoxCQFleF-343dfbdFGnkZnqrYRVg3nYTCBoGJTY9-K0NANM4iMsNNleww$</a>
<br>
&gt; &lt;<a href=3D"https://urldefense.com/v3/__http://git.yoctoproject.org=
/cgit/cgit.cgi/poky/tree/meta/recipes-graphics/spir/spirv-tools_2021.2.bb*n=
34__;Iw!!COg3wY07Hnb7!4NI6d6tXUoxCQFleF-343dfbdFGnkZnqrYRVg3nYTCBoGJTY9-K0N=
ANM4iMsNNleww$" target=3D"_blank">https://urldefense.com/v3/__http://git.yo=
ctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-graphics/spir/spirv-too=
ls_2021.2.bb*n34__;Iw!!COg3wY07Hnb7!4NI6d6tXUoxCQFleF-343dfbdFGnkZnqrYRVg3n=
YTCBoGJTY9-K0NANM4iMsNNleww$</a>&gt;
<br>
&gt; <br>
&gt; (and the next lines) might give you a hint what to do in this case.<br=
>
&gt; Although one could also consider that's something that needs to be fix=
ed<br>
&gt; in the installation script of googletest, as versioned libraries are t=
he<br>
&gt; expected default<br>
&gt; <br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; Any idea to fix this?<br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; Thanks,<br>
&gt;&gt; <br>
&gt;&gt; Lijun<br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; ------------------------------------------------------------------=
------<br>
&gt;&gt; This transmission (including any attachments) may contain confiden=
tial <br>
&gt;&gt; information, privileged material (including material protected by =
the <br>
&gt;&gt; solicitor-client or other applicable privileges), or constitute <b=
r>
&gt;&gt; non-public information. Any use of this information by anyone othe=
r than <br>
&gt;&gt; the intended recipient is prohibited. If you have received this <b=
r>
&gt;&gt; transmission in error, please immediately reply to the sender and =
delete <br>
&gt;&gt; this information from your system. Use, dissemination, distributio=
n, or <br>
&gt;&gt; reproduction of this transmission by unintended recipients is not =
<br>
&gt;&gt; authorized and may be unlawful.<br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt; ----------------------------------------------------------------------=
--<br>
&gt; This transmission (including any attachments) may contain confidential=
 <br>
&gt; information, privileged material (including material protected by the =
<br>
&gt; solicitor-client or other applicable privileges), or constitute <br>
&gt; non-public information. Any use of this information by anyone other th=
an <br>
&gt; the intended recipient is prohibited. If you have received this <br>
&gt; transmission in error, please immediately reply to the sender and dele=
te <br>
&gt; this information from your system. Use, dissemination, distribution, o=
r <br>
&gt; reproduction of this transmission by unintended recipients is not <br>
&gt; authorized and may be unlawful.<br>
&gt; ----------------------------------------------------------------------=
--<br>
&gt; This transmission (including any attachments) may contain confidential=
 <br>
&gt; information, privileged material (including material protected by the =
<br>
&gt; solicitor-client or other applicable privileges), or constitute <br>
&gt; non-public information. Any use of this information by anyone other th=
an <br>
&gt; the intended recipient is prohibited. If you have received this <br>
&gt; transmission in error, please immediately reply to the sender and dele=
te <br>
&gt; this information from your system. Use, dissemination, distribution, o=
r <br>
&gt; reproduction of this transmission by unintended recipients is not <br>
&gt; authorized and may be unlawful.<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
</div>
</span></font>
<hr>
This transmission (including any attachments) may contain confidential info=
rmation, privileged material (including material protected by the solicitor=
-client or other applicable privileges), or constitute non-public informati=
on. Any use of this information
 by anyone other than the intended recipient is prohibited. If you have rec=
eived this transmission in error, please immediately reply to the sender an=
d delete this information from your system. Use, dissemination, distributio=
n, or reproduction of this transmission
 by unintended recipients is not authorized and may be unlawful.<br>
</div>
</div>
</div>
<hr>
This transmission (including any attachments) may contain confidential info=
rmation, privileged material (including material protected by the solicitor=
-client or other applicable privileges), or constitute non-public informati=
on. Any use of this information
 by anyone other than the intended recipient is prohibited. If you have rec=
eived this transmission in error, please immediately reply to the sender an=
d delete this information from your system. Use, dissemination, distributio=
n, or reproduction of this transmission
 by unintended recipients is not authorized and may be unlawful.<br>
</div>
<br>
<br>
<br>
</blockquote>
</div>
</div>
</div>

<HR>This transmission (including any attachments) may contain confidential =
information, privileged material (including material protected by the solic=
itor-client or other applicable privileges), or constitute non-public infor=
mation. Any use of this information by anyone other than the intended recip=
ient is prohibited. If you have received this transmission in error, please=
 immediately reply to the sender and delete this information from your syst=
em. Use, dissemination, distribution, or reproduction of this transmission =
by unintended recipients is not authorized and may be unlawful.<BR>
</body>
</html>

--_000_6be47b6387624c2686df9b5bdab5d1e1blackberrycom_--
