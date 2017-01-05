Return-Path: <richard_allen@keysight.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38799E003E4; Thu,  5 Jan 2017 06:27:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.25.5.36 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from cos-us-iron02k.cos.keysight.com
	(cos-us-iron02k.cos.keysight.com [192.25.5.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAEF2E003DB
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2017 06:27:48 -0800 (PST)
X-IPAS-Result: =?us-ascii?q?A2CIAQCEV25YfRUYjJxdGwEBAQMBAQEJAQEBgnFHAQEBAQG?=
	=?us-ascii?q?CCgeNUHKTVpBVhFKCCYYiAoIFFAECAQEBAQEBARMBARYwMIRoAQEBAQIBLUwFB?=
	=?us-ascii?q?wQCAQgRBAEBAQodBzIUCQgBAQQOBQiIYAixfYolAQEBAQEBAQEBAQEBAQEBAQE?=
	=?us-ascii?q?BAQEBHYsmhEiDM4IxBYhqh2uKO6IdSJF+Hzc2gQaGa3MBh1gBgQwBAQE?=
X-IronPort-AV: E=Sophos;i="5.33,321,1477980000"; d="scan'208,217";a="43933130"
Received: from wcosexch02k.cos.is.keysight.com (HELO 2k10hubs.keysight.com)
	([156.140.24.21]) by cos-us-iron02k.cos.keysight.com with
	ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Jan 2017 07:27:46 -0700
Received: from wcosexch01k.cos.is.keysight.com ([169.254.3.33]) by
	wcosexch02k.cos.is.keysight.com ([169.254.2.150]) with mapi id
	14.03.0279.002; Thu, 5 Jan 2017 07:27:39 -0700
From: <richard_allen@keysight.com>
To: <stephano.cetola@linux.intel.com>
Thread-Topic: [yocto] morty populate_sdk_ext fails for recipes inherit
	bin_package
Thread-Index: AdJmrdhZ9pbqzvy0R9qZ/7zxjaZvSQAd+EaAAA4nawA=
Date: Thu, 5 Jan 2017 14:27:39 +0000
Message-ID: <BC774F321B0EF24DBF41FE7457B2B7862D17D8A9@wcosexch01k.cos.is.keysight.com>
References: <BC774F321B0EF24DBF41FE7457B2B7862D17D5A2@wcosexch01k.cos.is.keysight.com>
	<20170105003127.GA87812@daswan-mobl5.amr.corp.intel.com>
In-Reply-To: <20170105003127.GA87812@daswan-mobl5.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [156.140.13.71]
x-tm-as-product-ver: SMEX-12.0.0.1220-8.000.1202-22804.007
x-tm-as-result: No--16.023300-8.000000-31
x-tm-as-matchedid: 144069-150567-701625-704425-702876-702609-700359-139704-7
	01708-709584-702113-707654-701005-705388-703283-701232-704568-862883-711109
	-711664-139504-704496-188199-701407-702118-711740-705861-700978-709755-1390
	06-700648-701960-106660-700075-187067-703788-702358-863828-701053-707451-70
	2169-704034-701016-701465-704605-701339-704504-188019-700634-706817-148004-
	148036-42000-42003
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: morty populate_sdk_ext fails for recipes inherit bin_package
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
X-List-Received-Date: Thu, 05 Jan 2017 14:27:51 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BC774F321B0EF24DBF41FE7457B2B7862D17D8A9wcosexch01kcosi_"

--_000_BC774F321B0EF24DBF41FE7457B2B7862D17D8A9wcosexch01kcosi_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi
1) I had just successfully built an image with all the recipes ( hals, hals=
-doc)  [and yes, there these are non-empty]
2) I had then successfully built image with -c populate_sdk
3) The bitbake image -c populate_sdk_ext is what is failing
[ The above works with Krogoth, only on Morty am I getting the errors durin=
g populate_sdk_ext

May be the recipe is wrong for Morty? ( I have several other recipes, same =
thing, same structure)

inherit bin_package

SUMMARY =3D "HALs "
DESCRIPTION =3D "HALs"

LICENSE =3D "CLOSED"
LIC_FILES_CHKSUM =3D ""

# this can be overridden in local.conf
HALS_TARBALL_URI ?=3D "file:///opt/packages/${PN}-${PV}-arm.tar.gz"

SRC_URI =3D "${HALS_TARBALL_URI}"

# the tar has a root directory , which has the files under
HALS_TAR_ROOT_DIR_NAME ?=3D "${PN}-${PV}-arm"

#make the source directory start in this directory
S =3D "${WORKDIR}/${HALS_TAR_ROOT_DIR_NAME}"

#runtime depends
RDEPENDS_${PN} =3D " libgcc \
                         libstdc++ \
                         dtc \
                           "
DEPENDS_${PN} =3D " gtest"

#bring in all to build toolchain
DEPENDS_${PN}-dev +=3D " ${PN}-doc ${PN}-tests ${PN}-samples"

PACKAGES =3D+ "${PN}-tests ${PN}-samples "

FILES_${PN}-staticdev +=3D "  ${libdir}/*/*.a"
FILES_${PN}-dev           +=3D "${includedir} ""
FILES_${PN}-samples   +=3D "${bindir}/*"
FILES_${PN}-tests     +=3D "${bindir}/*[tT]est"
FILES_${PN}-doc       +=3D "${prefix}/src/doc"


# this stops an QA issue

INSANE_SKIP_hals +=3D "dev-so"
BBCLASSEXTEND =3D "native nativesdk"


-----Original Message-----
From: Stephano Cetola [mailto:stephano.cetola@linux.intel.com]
Sent: Wednesday, January 04, 2017 4:31 PM
To: ALLEN,RICHARD (K-SantaClara,ex1) <richard_allen@keysight.com>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] morty populate_sdk_ext fails for recipes inherit bin_p=
ackage

On 01/04, richard_allen@keysight.com<mailto:richard_allen@keysight.com> wro=
te:
> I am getting errors with morty and -c populate_sdk_ext when I have
> recipes which inherit bin_package These recipes work fine with Krogoth
> and it's populate_sdk_ext
>
> Note: package is not empty, Use to install package on running system.
>
> No idea how to proceed on fixing this (or if this is an morty issue
> with populate_sdk_ext (-c populate_sdk works fine)

Are you able to bitbake the image without "-c populate_sdk_ext"?

I am currently working on some bin_package related features, and I am able =
to build my image (with a bin_package recipe) as well as well as populate t=
he eSDK and SDK.

> If I use ipk for package managment
>
> NOTE: Executing RunQueue Tasks
> ERROR: uninative-tarball-1.0-r0 do_populate_sdk: Unable to install packag=
es. Command '/home/rcallen/proto/morty/tmp/sysroots/x86_64-linux/usr/bin/op=
kg --volatile-cache -f /home/rcallen/proto/morty/tmp/work/x86_64-nativesdk-=
linux/uninative-tarball/1.0-r0/opkg.conf -t /home/rcallen/proto/morty/tmp/w=
ork/x86_64-nativesdk-linux/uninative-tarball/1.0-r0/temp/ipktemp/ -o /home/=
rcallen/proto/morty/tmp/work/x86_64-nativesdk-linux/uninative-tarball/1.0-r=
0/sdk/image/opt/tlo/2.2/sysroots/none  --force_postinstall --prefer-arch-to=
-version   install hals hals-doc' returned 255:

Looks like it can't find hals or hals-doc. Are you sure these are built? Th=
e error you are seeing (Couldn't find anything to satisfy) is from the abov=
e command: opkg [...] install hals hals-doc.

The RPM error is the same. It is telling you that the package-feeds don't c=
ontain anything called "hals".

> Collected errors:
>  * opkg_prepare_url_for_install: Couldn't find anything to satisfy 'hals'=
.
>  * rm_r: Failed to open dir /home/rcallen/proto/morty/tmp/work/x86_64-nat=
ivesdk-linux/uninative-tarball/1.0-r0/temp/ipktemp//opkg-BL2Z8g: No such fi=
le or directory.
>


--_000_BC774F321B0EF24DBF41FE7457B2B7862D17D8A9wcosexch01kcosi_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from rtf -->
<style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left:=
 #800000 2px solid; } --></style>
</head>
<body>
<font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">
<div>Hi </div>
<div>1) I had just successfully built an image with all the recipes ( hals,=
 hals-doc)&nbsp; [and yes, there these are non-empty]</div>
<div>2) I had then successfully built image with -c populate_sdk</div>
<div>3) The bitbake image -c populate_sdk_ext is what is failing</div>
<div>[ The above works with Krogoth, only on Morty am I getting the errors =
during populate_sdk_ext</div>
<div>&nbsp;</div>
<div>May be the recipe is wrong for Morty? ( I have several other recipes, =
same thing, same structure)</div>
<div>&nbsp;</div>
<div><font face=3D"Courier New">inherit bin_package</font></div>
<div><font face=3D"Courier New">&nbsp;</font></div>
<div><font face=3D"Courier New">SUMMARY =3D &quot;HALs &quot;</font></div>
<div><font face=3D"Courier New">DESCRIPTION =3D &quot;HALs&quot;</font></di=
v>
<div><font face=3D"Courier New">&nbsp;</font></div>
<div><font face=3D"Courier New">LICENSE =3D &quot;CLOSED&quot;</font></div>
<div><font face=3D"Courier New">LIC_FILES_CHKSUM =3D &quot;&quot;</font></d=
iv>
<div><font face=3D"Courier New">&nbsp;</font></div>
<div><font face=3D"Courier New"># this can be overridden in local.conf</fon=
t></div>
<div><font face=3D"Courier New">HALS_TARBALL_URI ?=3D &quot;<a href=3D"file=
:///opt/packages/${PN}-${PV}-arm.tar.gz">file:///opt/packages/${PN}-${PV}-a=
rm.tar.gz</a>&quot;</font></div>
<div><font face=3D"Courier New">&nbsp;</font></div>
<div><font face=3D"Courier New">SRC_URI =3D &quot;${HALS_TARBALL_URI}&quot;=
</font></div>
<div>&nbsp;</div>
<div><font face=3D"Courier New"># the tar has a root directory , which has =
the files under</font></div>
<div><font face=3D"Courier New">HALS_TAR_ROOT_DIR_NAME ?=3D &quot;${PN}-${P=
V}-arm&quot;</font></div>
<div><font face=3D"Courier New">&nbsp;</font></div>
<div><font face=3D"Courier New">#make the source directory start in this di=
rectory</font></div>
<div><font face=3D"Courier New">S =3D &quot;${WORKDIR}/${HALS_TAR_ROOT_DIR_=
NAME}&quot;</font></div>
<div><font face=3D"Courier New">&nbsp;</font></div>
<div><font face=3D"Courier New">#runtime depends</font></div>
<div><font face=3D"Courier New">RDEPENDS_${PN} =3D &quot; libgcc \</font></=
div>
<div><font face=3D"Courier New">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; libstdc&#43;&#43; \</font></div>
<div><font face=3D"Courier New">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; dtc \&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font></div>
<div><font face=3D"Courier New">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &quot;</font></div>
<div><font face=3D"Courier New">DEPENDS_${PN} =3D &quot; gtest&quot;</font>=
</div>
<div>&nbsp;</div>
<div><font face=3D"Courier New">#bring in all to build toolchain</font></di=
v>
<div><font face=3D"Courier New">DEPENDS_${PN}-dev &#43;=3D &quot; ${PN}-doc=
 ${PN}-tests ${PN}-samples&quot;</font></div>
<div>&nbsp;</div>
<div><font face=3D"Courier New">PACKAGES =3D&#43; &quot;${PN}-tests ${PN}-s=
amples &quot;</font></div>
<div>&nbsp;</div>
<div><font face=3D"Courier New">FILES_${PN}-staticdev &#43;=3D &quot;&nbsp;=
 ${libdir}/*/*.a&quot; </font></div>
<div><font face=3D"Courier New">FILES_${PN}-dev&nbsp;&nbsp;&nbsp; &#43;=3D =
&quot;${includedir} &quot;&quot; </font></div>
<div><font face=3D"Courier New">FILES_${PN}-samples&nbsp;&nbsp; &#43;=3D &q=
uot;${bindir}/*&quot; </font></div>
<div><font face=3D"Courier New">FILES_${PN}-tests&nbsp;&nbsp;&nbsp;&nbsp; &=
#43;=3D &quot;${bindir}/*[tT]est&quot;</font></div>
<div><font face=3D"Courier New">FILES_${PN}-doc&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; &#43;=3D &quot;${prefix}/src/doc&quot; </font></div>
<div><font face=3D"Courier New">&nbsp;</font></div>
<div><font face=3D"Courier New">&nbsp;</font></div>
<div><font face=3D"Courier New"># this stops an QA issue </font></div>
<div><font face=3D"Courier New">&nbsp;</font></div>
<div><font face=3D"Courier New">INSANE_SKIP_hals &#43;=3D &quot;dev-so&quot=
;</font></div>
<div><font face=3D"Courier New">BBCLASSEXTEND =3D &quot;native nativesdk&qu=
ot;</font></div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>-----Original Message-----<br>

From: Stephano Cetola [<a href=3D"mailto:stephano.cetola@linux.intel.com">m=
ailto:stephano.cetola@linux.intel.com</a>]
<br>

Sent: Wednesday, January 04, 2017 4:31 PM<br>

To: ALLEN,RICHARD (K-SantaClara,ex1) &lt;richard_allen@keysight.com&gt;<br>

Cc: yocto@yoctoproject.org<br>

Subject: Re: [yocto] morty populate_sdk_ext fails for recipes inherit bin_p=
ackage</div>
<div>&nbsp;</div>
<div>On 01/04, <a href=3D"mailto:richard_allen@keysight.com">richard_allen@=
keysight.com</a> wrote:</div>
<div>&gt; I am getting errors with morty and -c populate_sdk_ext when I hav=
e </div>
<div>&gt; recipes which inherit bin_package These recipes work fine with Kr=
ogoth </div>
<div>&gt; and it's populate_sdk_ext</div>
<div>&gt; </div>
<div>&gt; Note: package is not empty, Use to install package on running sys=
tem.</div>
<div>&gt; </div>
<div>&gt; No idea how to proceed on fixing this (or if this is an morty iss=
ue </div>
<div>&gt; with populate_sdk_ext (-c populate_sdk works fine)</div>
<div>&nbsp;</div>
<div>Are you able to bitbake the image without &quot;-c populate_sdk_ext&qu=
ot;?</div>
<div>&nbsp;</div>
<div>I am currently working on some bin_package related features, and I am =
able to build my image (with a bin_package recipe) as well as well as popul=
ate the eSDK and SDK.</div>
<div>&nbsp;</div>
<div>&gt; If I use ipk for package managment</div>
<div>&gt; </div>
<div>&gt; NOTE: Executing RunQueue Tasks</div>
<div>&gt; ERROR: uninative-tarball-1.0-r0 do_populate_sdk: Unable to instal=
l packages. Command '/home/rcallen/proto/morty/tmp/sysroots/x86_64-linux/us=
r/bin/opkg --volatile-cache -f /home/rcallen/proto/morty/tmp/work/x86_64-na=
tivesdk-linux/uninative-tarball/1.0-r0/opkg.conf
-t /home/rcallen/proto/morty/tmp/work/x86_64-nativesdk-linux/uninative-tarb=
all/1.0-r0/temp/ipktemp/ -o /home/rcallen/proto/morty/tmp/work/x86_64-nativ=
esdk-linux/uninative-tarball/1.0-r0/sdk/image/opt/tlo/2.2/sysroots/none&nbs=
p; --force_postinstall --prefer-arch-to-version&nbsp;&nbsp;
install hals hals-doc' returned 255:</div>
<div>&nbsp;</div>
<div>Looks like it can't find hals or hals-doc. Are you sure these are buil=
t? The error you are seeing (Couldn't find anything to satisfy) is from the=
 above command: opkg [...] install hals hals-doc.</div>
<div>&nbsp;</div>
<div>The RPM error is the same. It is telling you that the package-feeds do=
n't contain anything called &quot;hals&quot;.</div>
<div>&nbsp;</div>
<div>&gt; Collected errors:</div>
<div>&gt;&nbsp; * opkg_prepare_url_for_install: Couldn't find anything to s=
atisfy 'hals'.</div>
<div>&gt;&nbsp; * rm_r: Failed to open dir /home/rcallen/proto/morty/tmp/wo=
rk/x86_64-nativesdk-linux/uninative-tarball/1.0-r0/temp/ipktemp//opkg-BL2Z8=
g: No such file or directory.</div>
<div>&gt; </div>
<div>&nbsp;</div>
</span></font>
</body>
</html>

--_000_BC774F321B0EF24DBF41FE7457B2B7862D17D8A9wcosexch01kcosi_--
