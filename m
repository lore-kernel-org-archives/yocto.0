Return-Path: <ramana.gollamudi@huawei.com>
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [119.145.14.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D33C7E014D5
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2013 05:17:55 -0700 (PDT)
Received: from 172.24.2.119 (EHLO szxeml211-edg.china.huawei.com)
	([172.24.2.119])
	by szxrg02-dlp.huawei.com (MOS 4.3.4-GA FastPath queued)
	with ESMTP id AZH61557; Fri, 29 Mar 2013 20:17:50 +0800 (CST)
Received: from SZXEML411-HUB.china.huawei.com (10.82.67.138) by
	szxeml211-edg.china.huawei.com (172.24.2.182) with Microsoft SMTP
	Server (TLS) id 14.1.323.7; Fri, 29 Mar 2013 20:17:24 +0800
Received: from SZXEML534-MBX.china.huawei.com ([169.254.2.19]) by
	szxeml411-hub.china.huawei.com ([::1]) with mapi id 14.01.0323.007;
	Fri, 29 Mar 2013 20:17:14 +0800
From: Venkata ramana gollamudi <ramana.gollamudi@huawei.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Post build configuration
Thread-Index: AQHOLHdFinuR+srJIEKeumW3gSD4aw==
Date: Fri, 29 Mar 2013 12:17:12 +0000
Message-ID: <36ED13F3654AE54CA763E6821D93A571104C91C9@szxeml534-mbx.china.huawei.com>
Accept-Language: en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.18.96.93]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
Cc: Sanil kumar <sanil.kumar@huawei.com>
Subject: RFC: Post build configuration
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
X-List-Received-Date: Fri, 29 Mar 2013 12:17:56 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_36ED13F3654AE54CA763E6821D93A571104C91C9szxeml534mbxchi_"

--_000_36ED13F3654AE54CA763E6821D93A571104C91C9szxeml534mbxchi_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

This is in reference to my previous post regarding post build configuration=
, with few points re-iterating to set the ground.
 https://lists.yoctoproject.org/pipermail/yocto/2012-November/012867.html



"Post build" configuration and need for configuration platform/model:



    There have been several discussions regarding need for image format, fi=
le system and disk configuration, network, users addition etc. Most are of =
these features are configurable in other distributions like opensuse, fedor=
a during the image installation on the target. Considering the Embedded Lin=
ux distribution scenario, these features can be configured offline and the =
generated image can be directly deployed on the target.



Example configuration options that can be supported include
    Configure the users/passwords
    Configure the network
    Configure the host name
    Select the services to be started by default
    Security related configuration
    Configure image formats ramfs/ext3/... paritions,disk management etc
    Serial port configuration
    etc..

Also a userscenario include
    Offline Binary Configuration, which allows a binary image customization=
 before making a final target image. This case will be more evident in larg=
er companies, where platform teams, product teams, application teams are di=
stributed and Linux build from source will be owned and lab tested by a sin=
gle team, like platform team. Other teams just configure to use it for prod=
uct variants from same platform build.



As configuration needs and options vary based on packages/features selected=
 during for the distribution, so there is a need for a configuration platfo=
rm/model

1) which allows new configuration options can be added easily and each pack=
age/distribution knows how it can be configured, so that selection of packa=
ge or feature will expose those configuration options to the user.

2) Tools like HOB and Webhob also need a clean configuration interface to c=
onfigure the image.
3) This can be extended to support Generic configuration UI like kernel men=
uconfig.





Considering the above Post build configuration in mind, I like to put forwa=
rd a model (high level flow) detailing

1. How the configuration functions/logic are maintained in poky?

2. How is configuration functions shipped along with image?

3. How configuration functions are used by configuration tool(s) to apply t=
hem over binary image, based on user configuration inputs?



1. How the configuration functions/logic are maintained in poky?

---------------------------------------------------------------------------=
--------



    Various configuration functions supporting the distribution configurati=
on needs are maintained in current poky layers.
    a) Configuration functions include Image level and package level config=
uration functions. Where package level configuration functions kept along w=
ith package recipe(say pkgname_version.cfg).
    b) Package level configuration functions can override the image level c=
onfiguration functions.
        Example: Useradd logic need to be different, if busybox is selected=
 or if pwdutils package is selected.
    c) Each layer can override configuration functions, just like bb files.
    d) Menu Definition Information contains the metadata about configuratio=
n functions and their parameters allowing it to represent it in Generic UI,=
 is also kept along with configuration functions. Menu definition Informati=
on can be represented in Menu Definition Language (MDL, say xml based).



2. How is configuration functions shipped along with image?

---------------------------------------------------------------------------=
--

   Configuration Library (ConfigLib) is created from configuration function=
s and MDL (from step1) during the package build time. ConfigLib is based on=
 build time packages and features selected. This configuration Library is a=
dded to package feed.



3. How configuration functions are used by configuration tool(s) to apply t=
hem over binary image, based on user input/need?

---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
-------------

   New tool can be created or existing tool(s) can be extended to support P=
ost build package selection, image generation and configuration. Its functi=
onality includes

    a) Selection of packages from package feed.
    b) Install the selected packages to relocatable rootfs.
    c) Copy configuration functions corresponding to selected packages from=
 ConfigLib to SelectedConfigLib.
    d) User can configure the image by
        - Manually modifying offline configuration file (oct.conf)
        - Using a generic configuration UI which generates offline configur=
ation file (oct.conf)
    e) Tool reads the offline configuration file(oct.conf) and maps the use=
r configuration inputs to configuration functions in SelectedConfigLib.
       It applies the configuration options on the extracted rootfs by exec=
uting respective configuration functions.

We are in the process of initial design and prototyping this model, soon it=
 will be shared. Looking forward this feature as part of yocto1.5.



Note: This RFC specifically discuss about "post build binary configuration"=
, but not pre-build or build level configurations.


Regards,

Ramana

--_000_36ED13F3654AE54CA763E6821D93A571104C91C9szxeml534mbxchi_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style id=3D"owaParaStyle">P {
	MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px
}
</style>
</head>
<body fPStyle=3D"1" ocsi=3D"0">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">
<p>This is in reference to my previous post regarding post build configurat=
ion, with few points re-iterating to set the ground.<br>
&nbsp;<a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2012-Novemb=
er/012867.html">https://lists.yoctoproject.org/pipermail/yocto/2012-Novembe=
r/012867.html</a></p>
<p>&nbsp;</p>
<p>&quot;Post build&quot; configuration and need for configuration platform=
/model:</p>
<p>&nbsp;</p>
<p>&nbsp;&nbsp;&nbsp; There have been several discussions regarding need fo=
r image format, file system and disk configuration, network, users addition=
 etc. Most are of these features are configurable in other distributions li=
ke opensuse, fedora during the image installation
 on the target. Considering the Embedded Linux distribution scenario, these=
 features can be configured offline and the generated image can be directly=
 deployed on the target.</p>
<p>&nbsp;</p>
<p>Example configuration options that can be supported include<br>
&nbsp;&nbsp;&nbsp; Configure the users/passwords<br>
&nbsp;&nbsp;&nbsp; Configure the network<br>
&nbsp;&nbsp;&nbsp; Configure the host name<br>
&nbsp;&nbsp;&nbsp; Select the services to be started by default<br>
&nbsp;&nbsp;&nbsp; Security related configuration<br>
&nbsp;&nbsp;&nbsp; Configure image formats ramfs/ext3/... paritions,disk ma=
nagement etc<br>
&nbsp;&nbsp;&nbsp; Serial port configuration<br>
&nbsp;&nbsp;&nbsp; etc..</p>
<p><br>
Also a userscenario include<br>
&nbsp;&nbsp;&nbsp; Offline Binary Configuration, which allows a binary imag=
e customization before making a final target image. This case will be more =
evident in larger companies, where platform teams, product teams, applicati=
on teams are distributed and Linux build from source
 will be owned and lab tested by a single team, like platform team. Other t=
eams just configure to use it for product variants from same platform build=
.</p>
<p>&nbsp;</p>
<p>As configuration needs and options vary based on packages/features selec=
ted during for the distribution, so there is a need for a configuration pla=
tform/model</p>
<p>1)&nbsp;which allows new configuration options can be added easily and e=
ach package/distribution knows how it can be configured, so that selection =
of package or feature will expose those configuration options to the user.<=
/p>
<p>2)&nbsp;Tools like HOB and Webhob also need a clean configuration interf=
ace to configure the image.
<br>
3) This can be extended to support Generic configuration UI like kernel men=
uconfig.</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>Considering the above Post build configuration in mind, I like to put fo=
rward a model (high level flow) detailing&nbsp;</p>
<p>1.&nbsp;How the configuration functions/logic are maintained in poky?</p=
>
<p>2.&nbsp;How is configuration functions shipped along with image?</p>
<p>3.&nbsp;How configuration functions are used&nbsp;by configuration tool(=
s) to apply them over binary image, based on user configuration inputs?</p>
<p>&nbsp;</p>
<p>1.&nbsp;How the configuration functions/logic are maintained in poky?</p=
>
<p>------------------------------------------------------------------------=
-----------</p>
<p>&nbsp;</p>
<p>&nbsp;&nbsp;&nbsp; Various configuration functions&nbsp;supporting the d=
istribution configuration needs&nbsp;are maintained in current poky layers.=
<br>
&nbsp;&nbsp;&nbsp; a) Configuration functions include Image level and packa=
ge level configuration functions. Where package level configuration functio=
ns kept along with package recipe(say pkgname_version.cfg).
<br>
&nbsp;&nbsp;&nbsp; b) Package level configuration functions can override th=
e image level configuration functions.
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Example: Useradd logic need to b=
e different, if busybox is selected or if pwdutils package is selected.<br>
&nbsp;&nbsp;&nbsp; c) Each layer can override configuration functions, just=
 like bb files.<br>
&nbsp;&nbsp;&nbsp; d) Menu Definition Information contains the metadata abo=
ut configuration functions and their parameters allowing it to represent it=
 in Generic UI, is also kept along with configuration functions. Menu defin=
ition Information can be represented in Menu Definition
 Language (MDL, say xml based). </p>
<p>&nbsp;</p>
<p>2.&nbsp;How is configuration functions shipped along with image?</p>
<p>------------------------------------------------------------------------=
-----</p>
<p>&nbsp;&nbsp; Configuration Library (ConfigLib) is created from configura=
tion functions and MDL (from step1) during the package build time.&nbsp;Con=
figLib is based on build time packages and features selected. This configur=
ation Library is added to package feed.</p>
<p>&nbsp;</p>
<p>3.&nbsp;How configuration functions are used&nbsp;by configuration tool(=
s) to apply them over binary image, based on user input/need?</p>
<p>------------------------------------------------------------------------=
---------------------------------------------------------------------------=
----------------</p>
<p>&nbsp;&nbsp;&nbsp;New tool can be created&nbsp;or existing tool(s) can b=
e&nbsp;extended&nbsp;to support Post build package selection, image generat=
ion and configuration. Its functionality includes</p>
<p>&nbsp;&nbsp;&nbsp; a) Selection of packages from package feed.<br>
&nbsp;&nbsp;&nbsp; b) Install the selected packages to relocatable rootfs.<=
br>
&nbsp;&nbsp;&nbsp; c) Copy configuration functions corresponding to selecte=
d packages from ConfigLib to SelectedConfigLib.<br>
&nbsp;&nbsp;&nbsp; d) User can configure the image&nbsp;by&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Manually modifying offline con=
figuration file (oct.conf)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Using a generic configuration =
UI which generates offline configuration file (oct.conf)<br>
&nbsp;&nbsp;&nbsp; e) Tool reads the offline configuration file(oct.conf) a=
nd maps the user configuration&nbsp;inputs to configuration functions in Se=
lectedConfigLib.<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; It applies the configuration options o=
n the extracted rootfs by executing respective configuration functions.</p>
<p><br>
We are in the process of initial design and prototyping this model, soon it=
 will be shared. Looking forward this feature as part of yocto1.5.</p>
<p>&nbsp;</p>
<p>Note: This RFC specifically discuss about &quot;post build binary config=
uration&quot;, but&nbsp;not pre-build or build level configurations.</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;<br>
Regards,</p>
<p>Ramana</p>
</div>
</body>
</html>

--_000_36ED13F3654AE54CA763E6821D93A571104C91C9szxeml534mbxchi_--
