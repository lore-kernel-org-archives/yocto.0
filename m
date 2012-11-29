Return-Path: <ramana.gollamudi@huawei.com>
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [119.145.14.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA483E00348
	for <yocto@yoctoproject.org>; Thu, 29 Nov 2012 03:10:17 -0800 (PST)
Received: from 172.24.2.119 (EHLO szxeml205-edg.china.huawei.com)
	([172.24.2.119])
	by szxrg01-dlp.huawei.com (MOS 4.3.4-GA FastPath queued)
	with ESMTP id ATS68663; Thu, 29 Nov 2012 19:10:05 +0800 (CST)
Received: from SZXEML462-HUB.china.huawei.com (10.82.67.205) by
	szxeml205-edg.china.huawei.com (172.24.2.58) with Microsoft SMTP Server
	(TLS) id 14.1.323.3; Thu, 29 Nov 2012 19:10:03 +0800
Received: from SZXEML534-MBS.china.huawei.com ([169.254.6.80]) by
	szxeml462-hub.china.huawei.com ([10.82.67.205]) with mapi id
	14.01.0323.003; Thu, 29 Nov 2012 19:09:55 +0800
From: Venkata ramana gollamudi <ramana.gollamudi@huawei.com>
To: Venkata ramana gollamudi <ramana.gollamudi@huawei.com>, Bruce Ashfield
	<bruce.ashfield@windriver.com>
Thread-Topic: [yocto] Need for offline binary configuration
Thread-Index: AQHNxzDKyeCK5q4Ul0GcItQcbcDHSpfyUU0AgAIk01D//7JrAIAJyRp5gAK/xdA=
Date: Thu, 29 Nov 2012 11:09:55 +0000
Message-ID: <36ED13F3654AE54CA763E6821D93A571104A5BBA@szxeml534-mbs.china.huawei.com>
References: <36ED13F3654AE54CA763E6821D93A5711048C834@szxeml534-mbx.china.huawei.com>
	<50ABA048.7080707@windriver.com>
	<36ED13F3654AE54CA763E6821D93A5711048CA0D@szxeml534-mbx.china.huawei.com>,
	<50AD2B96.60504@windriver.com>
	<36ED13F3654AE54CA763E6821D93A5711049B67C@szxeml534-mbx.china.huawei.com>
In-Reply-To: <36ED13F3654AE54CA763E6821D93A5711049B67C@szxeml534-mbx.china.huawei.com>
Accept-Language: en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.18.96.93]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"'dvhart@linux.intel.com'" <dvhart@linux.intel.com>,
	Sanil kumar <sanil.kumar@huawei.com>
Subject: Re: Need for offline binary configuration
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
X-List-Received-Date: Thu, 29 Nov 2012 11:10:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Added few more thoughts
Looking for possible options to implement Offline Configuration Tool requir=
ement. please check and comment on it.

Configuration flow:

a) Task do_createconfig will generate data to configure. This serves as inp=
ut for configuration UI in OCT.

b) OCT UI will read that config data(from step(a)) to show it in GUI. User =
configures using GUI inputs. Stores the user OCT configuration to OCT confi=
g file. (Note user can directly modify the OCT config file, if User is fami=
lier with it)

c) preinst, postinst, prerm, postrm, or a do_applyconfig(without bb files r=
eparse), can read OCT config file content (using a library) and apply neces=
sary changes.

Now we can look into possibility of using a specific configuration UI imple=
mentation or a generic configuration model or combination of both.

1) Using a specific configuration GUI implementation:
   do_createconfig generates the configuration information, in format like =
datafile/xml and OCT reads this config data and provides a GUI to modify or=
 configure the features.

Pros: Detailed and complex GUIs can be supported which will be user friendl=
y. Ex: User management, network management etc.
Cons: As UI is static, it has to be modified to support new configuration r=
equirements
and UI modifications are generally complex.

2) A generic configuration model
   do_createconfig generates configuration information with presentation in=
formation included (like kconfig) and OCT reads this config information and=
 provides a generic UI implementation to modify or config the data like men=
uconfig.

Pros:=20
	- Generic and dynamic UI allowing the config menus to be added from poky l=
ayers providing platform for configuration.
	- New features can add new menus configuration options. Feature/package en=
able and disable can control the configurtion menus.=20
	- So configuration is shown only if feature/package is present/selected.
Cons:=20
	- Generic method of implementing can be complex, specifically for features=
 where configuration is complex ex: User management, network configuration.
	- Custom or specific UI will be more user friendly and gives more control =
to UI designer.

3) Combination of both
Complex features requiring more UI control can implement those features usi=
ng the method(1) and also providing the plaform for generic UI implementati=
on.
OCT displays both UI configurations.
Ex: Static Image level features like User management, network config can be=
 implemented using method(1)=20
    Service configuration, file system type, hist size configure etc can be=
 implemented using method(2).

Pros: Gives control to project to select the Complex and simple UIs.
     =20
Cons: Still needs a OCT UI change if method(1) feature need to be changed.
      Drawing a line between complex and simple UI features may not very st=
raight forward.
      Adding dynamic Complex UI is not possible to be added from poky layer=
s.

Decision to provide a generic configuration model is mainly based on how mu=
ch we expect the configuration area to grow along with layers.
Image level features like user management, network management generally are=
 not dynamic features, so having a specific/custom UI implementation looks =
fine for such features.

Regards,
Ramana

