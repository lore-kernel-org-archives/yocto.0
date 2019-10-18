Return-Path: <mohammedabdul.m@infosys.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12D36E00BB5; Fri, 18 Oct 2019 07:47:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_MED autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [122.98.10.33 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 1067 seconds by postgrey-1.32 at yocto-www;
	Fri, 18 Oct 2019 07:47:31 PDT
Received: from KECGATE08.INFOSYS.COM (kecgate08.infosys.com [122.98.10.33])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B8C6E00A4C
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2019 07:47:31 -0700 (PDT)
Received: from KECGATE08.INFOSYS.COM (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 4C14D34E9E
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2019 19:58:31 +0530 (IST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=infosys.com;
	s=default; t=1571408911;
	bh=jOMon6hRY43pv4YVow1N92+KvKoe2zPqKF3MOKrfehQ=; h=From:To:Date;
	b=SvfXYNo7rG2OjYYBc33rxQ4IGW8bQrkCpOJvnAggv0HZyKH4KiDscypmY4RXZX9aE
	Kik2gDMwWBq7yr4SmoEu1lAEzinuufDoXrb10mJky6t6vuqijStv8w+dVXYx6PNZjr
	MQ98J96lw72NStcJt+wxhkl19M/BB0PNuFHKBeq8kN33Gqn0FlhHfiZtGrYHsXu0Cq
	kJf9ZG3Me8UzL7UM/pLUqxX3GTfCVbamHivhrcxrEnHb3GkWUAW+d93mYBMqEnNMwc
	0A9CaOW4+tg9Xs334DC3fI+sj6hJX86adgPtE6E27zmrZ//TClYfySmwHZ8FchpqF1
	GttFpXZBjkWZw==
Received: from KECGATE08.INFOSYS.COM (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 23A2A34EA4
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2019 19:58:31 +0530 (IST)
Received: from BLRKECHUB17.ad.infosys.com (unknown [10.66.236.42])
	by KECGATE08.INFOSYS.COM (Postfix) with ESMTP
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2019 19:58:31 +0530 (IST)
Received: from BLREXOHYB02.ad.infosys.com (10.68.8.69) by
	BLRKECHUB17.ad.infosys.com (10.66.236.42) with Microsoft SMTP Server
	(TLS) id 15.0.1395.4; Fri, 18 Oct 2019 19:59:35 +0530
Received: from BLREXOHYB04.ad.infosys.com (10.68.8.105) by
	BLREXOHYB02.ad.infosys.com (10.68.8.69) with Microsoft SMTP Server
	(TLS) id 15.0.1395.4; Fri, 18 Oct 2019 19:59:35 +0530
Received: from BLREDGE02.ad.infosys.com (122.98.10.173) by
	BLREXOHYB04.ad.infosys.com (10.68.8.105) with Microsoft SMTP Server
	(TLS) id
	15.0.1395.4 via Frontend Transport; Fri, 18 Oct 2019 19:59:35 +0530
Received: from APC01-PU1-obe.outbound.protection.outlook.com (104.47.126.50)
	by edge.infosys.com (122.98.10.173) with Microsoft SMTP Server (TLS) id
	15.0.1395.4; Fri, 18 Oct 2019 19:53:50 +0530
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=cYnPqhHD55fh7gaybOvHM7QeYg/8Z2E30PMRRsGpURquQWK/ne3ktMho075VGNZCIl/81/Aad/1V9azxuDTQ+4bGKR6veviiE3EcYW1LlSifba9WmQz6qrq0A9gR74SZldNhMB5zikonA82LcJfPg65m0DfX5X0iFiTREoJ+EYyH+pcdhP9SDuFsEOo+OdBIFhmZsBkGesvP46ETbyitD2iOjaUTFfYcts6V9240P/DwoX56p8PTvq+4LOgooknD5r+QXIgrMcdW836wujL9mbuuuESv6Uo9O4Am8fpYBwcaa7qh6uf+d0ieVCNzPVd68fq+fz3hlsBSQuG5NRTT2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=zRFhd2k0qvRmwA2CTofalhYzpIu7rDOkexO5cqTc/Gs=;
	b=UxMRKSZAhdYxG9BZw6OwZrWiWGYTMdyqMF/6CwYeSIzeAB0VI1TwkDc09mUJa0GlZXTTPXOmA6rrfQSzrGL6R+g2pBsqKVIPkpW6J4BNP1FZnClgFp+d8aLTcoWdOOfvwE/5/gHgF8dFCs8RqhjJtDN/pfxo7S/fq6SItqjn35DMrwDU74Nwh6wiR6m7rRqo6/Dm/UnNF8/xkkG+QUOSAzBPzYco/vwdAC7/dBjzYHWD4keCFoOZQRA4rxIyyyL9AUF+nEw5t3uJ9vf0sfTIlI31zIMV5rV92OGQt37eahDoVq5dX3/KwAFUVGET6PpzQi9MEdgz9ldZF0ZAmkW7hA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=infosys.com;
	dmarc=pass action=none header.from=infosys.com; 
	dkim=pass header.d=infosys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=infosystechnologies.onmicrosoft.com;
	s=selector2-infosystechnologies-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=zRFhd2k0qvRmwA2CTofalhYzpIu7rDOkexO5cqTc/Gs=;
	b=BRAfHoH0wi9mLCEGnmT2Iw3vH7Q6lcpWxnl46e7xs8vbw3q/wV4zg006aythZ+MVx8hoPaYFpZDaJGpRtySz1fLmYJCRlg6Diz8iExePEUgKbvpBVHMWzDZNOubQrCvyRYXvwr5Vd/P+tzvWJCZfoqU6jerMXj0Son8b5cHWGmE=
Received: from SG2PR02MB3052.apcprd02.prod.outlook.com (20.177.87.81) by
	SG2PR02MB3990.apcprd02.prod.outlook.com (20.178.154.202) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2347.21; Fri, 18 Oct 2019 14:29:33 +0000
Received: from SG2PR02MB3052.apcprd02.prod.outlook.com
	([fe80::d50c:66df:f584:a4aa]) by
	SG2PR02MB3052.apcprd02.prod.outlook.com
	([fe80::d50c:66df:f584:a4aa%6]) with mapi id 15.20.2347.024;
	Fri, 18 Oct 2019 14:29:33 +0000
From: Mohammed Abdul Mubeen <mohammedabdul.m@infosys.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Error while building Toolchain for IMX
Thread-Index: AdWFv6nZgf6J8SaoT5GZTUcTjBIY6g==
Date: Fri, 18 Oct 2019 14:29:33 +0000
Message-ID: <SG2PR02MB30529A5387EAF33AE2F36269F56C0@SG2PR02MB3052.apcprd02.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_be4b3411-284d-4d31-bd4f-bc13ef7f1fd6_Enabled=True;
	MSIP_Label_be4b3411-284d-4d31-bd4f-bc13ef7f1fd6_SiteId=63ce7d59-2f3e-42cd-a8cc-be764cff5eb6;
	MSIP_Label_be4b3411-284d-4d31-bd4f-bc13ef7f1fd6_Owner=mohammedabdul.m@ad.infosys.com;
	MSIP_Label_be4b3411-284d-4d31-bd4f-bc13ef7f1fd6_SetDate=2019-10-18T14:29:31.8631343Z;
	MSIP_Label_be4b3411-284d-4d31-bd4f-bc13ef7f1fd6_Name=Internal;
	MSIP_Label_be4b3411-284d-4d31-bd4f-bc13ef7f1fd6_Application=Microsoft
	Azure Information Protection;
	MSIP_Label_be4b3411-284d-4d31-bd4f-bc13ef7f1fd6_ActionId=25bd053d-3258-4ae8-bfd8-55dcd06ab305;
	MSIP_Label_be4b3411-284d-4d31-bd4f-bc13ef7f1fd6_Extended_MSFT_Method=Automatic;
	MSIP_Label_a0819fa7-4367-4500-ba88-dd630d977609_Enabled=True;
	MSIP_Label_a0819fa7-4367-4500-ba88-dd630d977609_SiteId=63ce7d59-2f3e-42cd-a8cc-be764cff5eb6;
	MSIP_Label_a0819fa7-4367-4500-ba88-dd630d977609_Owner=mohammedabdul.m@ad.infosys.com;
	MSIP_Label_a0819fa7-4367-4500-ba88-dd630d977609_SetDate=2019-10-18T14:29:31.8631343Z;
	MSIP_Label_a0819fa7-4367-4500-ba88-dd630d977609_Name=Companywide usage; 
	MSIP_Label_a0819fa7-4367-4500-ba88-dd630d977609_Application=Microsoft
	Azure Information Protection;
	MSIP_Label_a0819fa7-4367-4500-ba88-dd630d977609_ActionId=25bd053d-3258-4ae8-bfd8-55dcd06ab305;
	MSIP_Label_a0819fa7-4367-4500-ba88-dd630d977609_Parent=be4b3411-284d-4d31-bd4f-bc13ef7f1fd6;
	MSIP_Label_a0819fa7-4367-4500-ba88-dd630d977609_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=mohammedabdul.m@infosys.com; 
x-originating-ip: [14.195.236.241]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ec8c4719-12cc-4614-17da-08d753d7988f
x-ms-traffictypediagnostic: SG2PR02MB3990:
x-microsoft-antispam-prvs: <SG2PR02MB3990D2B41D0984FB504866A6F56C0@SG2PR02MB3990.apcprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01949FE337
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(4636009)(39860400002)(366004)(396003)(376002)(136003)(346002)(189003)(199004)(3846002)(102836004)(6116002)(76116006)(6306002)(6436002)(54896002)(2351001)(790700001)(2906002)(66476007)(66556008)(66446008)(64756008)(7696005)(81156014)(66946007)(6506007)(55016002)(6916009)(9326002)(486006)(81166006)(8676002)(14444005)(1730700003)(256004)(476003)(9686003)(5640700003)(8936002)(7736002)(186003)(74316002)(26005)(71190400001)(52536014)(316002)(2501003)(14454004)(66066001)(71200400001)(5660300002)(33656002)(86362001)(478600001)(99286004)(25786009);
	DIR:OUT; SFP:1102; SCL:1; SRVR:SG2PR02MB3990;
	H:SG2PR02MB3052.apcprd02.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: infosys.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OKWF7UszUUY+DDODyT8yJCUPwc4wVOMMFCIqoGQtOxdyTwJUwSmVU2T79+cGqHGa8fj5BahsDCU16e04Ti/qxBbQ4TQafJbuONDEp7vlUTbHk9KtfqTAbtQ7rzFxWMrLRleEaAQlSPQXjaGxWwMIsPT6yemPF73MU5hsuMeAo6XInRGg9RRFQJLvOEtBBKaqY7r/fAfcYxsCL9Qjl2qVIkKQXPFHb/5WwpfsendeHfnWfZ8hvl6oHFdNQu4XFSh+JH594bzwpGjkmbSpp/4iSUaW488rpIC21XfqFrOZvCyceZcIkA3r7Mdo/limYUgmwbLmAJUIXgQvGqUefizxZWsZvPO36REylT71GnTzuE3rowau8WZ+y4vhbpNZ7ulAJMzF3gDc3MGIAxWWLv8o7Uz3rlLiTNJOnht0FMoAbLM=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ec8c4719-12cc-4614-17da-08d753d7988f
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2019 14:29:33.7244 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 63ce7d59-2f3e-42cd-a8cc-be764cff5eb6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H9XevkUyylL86JkW/0VEXJqnurx8v3rbeOQ6mmVJ4ojnrk3YmQ71xVw4oeeSXS7HDBmRx50K0nXpaKzkLzlTAeyXy62m7FOcGYseJIjwc6k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR02MB3990
X-OriginatorOrg: infosys.com
X-TM-AS-GCONF: 00
X-Mailman-Approved-At: Mon, 21 Oct 2019 08:23:50 -0700
Subject: Error while building Toolchain for IMX
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
X-List-Received-Date: Fri, 18 Oct 2019 14:47:33 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SG2PR02MB30529A5387EAF33AE2F36269F56C0SG2PR02MB3052apcp_"

--_000_SG2PR02MB30529A5387EAF33AE2F36269F56C0SG2PR02MB3052apcp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Team,

I have tried building a customized toolchain for IMX based board using Yoct=
o warrior release.
I am stuck with the below error, and I am unable to understand how to get t=
o the root cause.

NOTE: Installing globbed packages...
ERROR: Error executing a python function in exec_python_func() autogenerate=
d:

The stack trace of python calls that resulted in this exception/failure was=
:
File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
     0001:
*** 0002:do_populate_sdk(d)
     0003:
File: '/home/rama/sri_clifford-1-5-jalan/meta-picodigital/sources/poky/meta=
/classes/populate_sdk_base.bbclass', lineno: 153, function: do_populate_sdk
     0149:
     0150:    populate_sdk(d)
     0151:
     0152:fakeroot python do_populate_sdk() {
*** 0153:    populate_sdk_common(d)
     0154:}
     0155:SSTATETASKS +=3D "do_populate_sdk"
     0156:SSTATE_SKIP_CREATION_task-populate-sdk =3D '1'
     0157:do_populate_sdk[cleandirs] =3D "${SDKDEPLOYDIR}"
File: '/home/rama/sri_clifford-1-5-jalan/meta-picodigital/sources/poky/meta=
/classes/populate_sdk_base.bbclass', lineno: 150, function: populate_sdk_co=
mmon
     0146:                    manifest_type=3DManifest.MANIFEST_TYPE_SDK_HO=
ST)
     0147:    create_manifest(d, manifest_dir=3Dd.getVar('SDK_DIR'),
     0148:                    manifest_type=3DManifest.MANIFEST_TYPE_SDK_TA=
RGET)
     0149:
*** 0150:    populate_sdk(d)
     0151:
     0152:fakeroot python do_populate_sdk() {
     0153:    populate_sdk_common(d)
     0154:}
File: '/home/rama/sri_clifford-1-5-jalan/meta-picodigital/sources/poky/meta=
/lib/oe/sdk.py', lineno: 417, function: populate_sdk
     0413:    env_bkp =3D os.environ.copy()
     0414:
     0415:    img_type =3D d.getVar('IMAGE_PKGTYPE')
     0416:    if img_type =3D=3D "rpm":
*** 0417:        RpmSdk(d, manifest_dir).populate()
     0418:    elif img_type =3D=3D "ipk":
     0419:        OpkgSdk(d, manifest_dir).populate()
     0420:    elif img_type =3D=3D "deb":
     0421:        DpkgSdk(d, manifest_dir).populate()
File: '/home/rama/sri_clifford-1-5-jalan/meta-picodigital/sources/poky/meta=
/lib/oe/sdk.py', lineno: 42, function: populate
     0038:    def populate(self):
     0039:        self.mkdirhier(self.sdk_output)
     0040:
     0041:        # call backend dependent implementation
*** 0042:        self._populate()
     0043:
     0044:        # Don't ship any libGL in the SDK
     0045:        self.remove(os.path.join(self.sdk_output, self.sdk_native=
_path,
     0046:                         self.d.getVar('libdir_nativesdk').strip(=
'/'),
File: '/home/rama/sri_clifford-1-5-jalan/meta-picodigital/sources/poky/meta=
/lib/oe/sdk.py', lineno: 182, function: _populate
     0178:            self.target_pm.remove_packaging_data()
     0179:
     0180:        bb.note("Installing NATIVESDK packages")
     0181:        self._populate_sysroot(self.host_pm, self.host_manifest)
*** 0182:        self.install_locales(self.host_pm)
     0183:
     0184:        self.host_pm.run_intercepts(populate_sdk=3D'host')
     0185:
     0186:        execute_pre_post_process(self.d, self.d.getVar("POPULATE_=
SDK_POST_HOST_COMMAND"))
File: '/home/rama/sri_clifford-1-5-jalan/meta-picodigital/sources/poky/meta=
/lib/oe/sdk.py', lineno: 108, function: install_locales
     0104:            # Generate a locale archive of them
     0105:            target_arch =3D self.d.getVar('SDK_ARCH')
     0106:            rootfs =3D oe.path.join(self.sdk_host_sysroot, self.s=
dk_native_path)
     0107:            localedir =3D oe.path.join(rootfs, self.d.getVar("lib=
dir_nativesdk"), "locale")
*** 0108:            generate_locale_archive(self.d, rootfs, target_arch, l=
ocaledir)
     0109:            # And now delete the binary locales
     0110:            pkgs =3D fnmatch.filter(pm.list_installed(), "natives=
dk-glibc-binary-localedata-*.utf-8")
     0111:            pm.remove(pkgs)
     0112:        else:
File: '/home/rama/sri_clifford-1-5-jalan/meta-picodigital/sources/poky/meta=
/lib/oe/package_manager.py', lineno: 134, function: generate_locale_archive
     0130:    # Need to set this so cross-localedef knows where the archive=
 is
     0131:    env =3D dict(os.environ)
     0132:    env["LOCALEARCHIVE"] =3D oe.path.join(localedir, "locale-arch=
ive")
     0133:
*** 0134:    for name in os.listdir(localedir):
     0135:        path =3D os.path.join(localedir, name)
     0136:        if os.path.isdir(path):
     0137:            cmd =3D ["cross-localedef", "--verbose"]
     0138:            cmd +=3D arch_options
Exception: FileNotFoundError: [Errno 2] No such file or directory: '/home/r=
ama/sri_clifford-1-5-jalan/meta-picodigital/build/tmp/work/imx6solopd1600_p=
rod-poky-linux-gnueabi/clifford-sdk/1.0-r0/sdk/image/opt/pico/1.0/sysroots/=
i686-picodigital-linux/usr/lib/locale'

ERROR: [Errno 2] No such file or directory: '/home/rama/sri_clifford-1-5-ja=
lan/meta-picodigital/build/tmp/work/imx6solopd1600_prod-poky-linux-gnueabi/=
clifford-sdk/1.0-r0/sdk/image/opt/pico/1.0/sysroots/i686-picodigital-linux/=
usr/lib/locale'
DEBUG: Python function do_populate_sdk finished
ERROR: Function failed: do_populate_sdk

Will be thankful if anybosy could point what I am missing here.

Thanks,
Mubeen

--_000_SG2PR02MB30529A5387EAF33AE2F36269F56C0SG2PR02MB3052apcp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi Team,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have tried building a customized toolchain for IMX=
 based board using Yocto warrior release.
<o:p></o:p></p>
<p class=3D"MsoNormal">I am stuck with the below error, and I am unable to =
understand how to get to the root cause.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">NOTE: Installing globbed packages...<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Error executing a python function in exec_pyt=
hon_func() autogenerated:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The stack trace of python calls that resulted in thi=
s exception/failure was:<o:p></o:p></p>
<p class=3D"MsoNormal">File: 'exec_python_func() autogenerated', lineno: 2,=
 function: &lt;module&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0001:<o:p></o:p></p>
<p class=3D"MsoNormal">*** 0002:do_populate_sdk(d)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0003:<o:p></o:p></p>
<p class=3D"MsoNormal">File: '/home/rama/sri_clifford-1-5-jalan/meta-picodi=
gital/sources/poky/meta/classes/populate_sdk_base.bbclass', lineno: 153, fu=
nction: do_populate_sdk<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0149:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0150:&nbsp;&nbsp;&nbsp; pop=
ulate_sdk(d)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0151:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0152:fakeroot python do_pop=
ulate_sdk() {<o:p></o:p></p>
<p class=3D"MsoNormal">*** 0153:&nbsp;&nbsp;&nbsp; populate_sdk_common(d)<o=
:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0154:}<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0155:SSTATETASKS &#43;=3D &=
quot;do_populate_sdk&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0156:SSTATE_SKIP_CREATION_t=
ask-populate-sdk =3D '1'<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0157:do_populate_sdk[cleand=
irs] =3D &quot;${SDKDEPLOYDIR}&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">File: '/home/rama/sri_clifford-1-5-jalan/meta-picodi=
gital/sources/poky/meta/classes/populate_sdk_base.bbclass', lineno: 150, fu=
nction: populate_sdk_common<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0146:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; manifest_type=3DManifest.MANIFEST_TYPE_SDK_HOST)<o:p></o:=
p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0147:&nbsp;&nbsp;&nbsp; cre=
ate_manifest(d, manifest_dir=3Dd.getVar('SDK_DIR'),<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0148:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; manifest_type=3DManifest.MANIFEST_TYPE_SDK_TARGET)<o:p></=
o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0149:<o:p></o:p></p>
<p class=3D"MsoNormal">*** 0150:&nbsp;&nbsp;&nbsp; populate_sdk(d)<o:p></o:=
p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0151:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0152:fakeroot python do_pop=
ulate_sdk() {<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0153:&nbsp;&nbsp;&nbsp; pop=
ulate_sdk_common(d)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0154:}<o:p></o:p></p>
<p class=3D"MsoNormal">File: '/home/rama/sri_clifford-1-5-jalan/meta-picodi=
gital/sources/poky/meta/lib/oe/sdk.py', lineno: 417, function: populate_sdk=
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0413:&nbsp;&nbsp;&nbsp; env=
_bkp =3D os.environ.copy()<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0414:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0415:&nbsp;&nbsp;&nbsp; img=
_type =3D d.getVar('IMAGE_PKGTYPE')<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0416:&nbsp;&nbsp;&nbsp; if =
img_type =3D=3D &quot;rpm&quot;:<o:p></o:p></p>
<p class=3D"MsoNormal">*** 0417:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
RpmSdk(d, manifest_dir).populate()<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0418:&nbsp;&nbsp;&nbsp; eli=
f img_type =3D=3D &quot;ipk&quot;:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0419:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; OpkgSdk(d, manifest_dir).populate()<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0420:&nbsp;&nbsp; &nbsp;eli=
f img_type =3D=3D &quot;deb&quot;:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0421:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; DpkgSdk(d, manifest_dir).populate()<o:p></o:p></p>
<p class=3D"MsoNormal">File: '/home/rama/sri_clifford-1-5-jalan/meta-picodi=
gital/sources/poky/meta/lib/oe/sdk.py', lineno: 42, function: populate<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0038:&nbsp;&nbsp;&nbsp; def=
 populate(self):<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0039:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; self.mkdirhier(self.sdk_output)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0040:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0041:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; # call backend dependent implementation<o:p></o:p></p>
<p class=3D"MsoNormal">*** 0042:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
self._populate()<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0043:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0044:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; # Don't ship any libGL in the SDK<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0045:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; self.remove(os.path.join(self.sdk_output, self.sdk_nat=
ive_path,<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0046:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.d.getVar('libdir_nativ=
esdk').strip('/'),<o:p></o:p></p>
<p class=3D"MsoNormal">File: '/home/rama/sri_clifford-1-5-jalan/meta-picodi=
gital/sources/poky/meta/lib/oe/sdk.py', lineno: 182, function: _populate<o:=
p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0178:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.target_pm.remove_packagin=
g_data()<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0179:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0180:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; bb.note(&quot;Installing NATIVESDK packages&quot;)<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0181:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; self._populate_sysroot(self.host_pm, self.host_manifes=
t)<o:p></o:p></p>
<p class=3D"MsoNormal">*** 0182:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
self.install_locales(self.host_pm)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0183:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0184:&nbsp;&nbsp; &nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;self.host_pm.run_intercepts(populate_sdk=3D'host')<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0185:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0186:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; execute_pre_post_process(self.d, self.d.getVar(&quot;P=
OPULATE_SDK_POST_HOST_COMMAND&quot;))<o:p></o:p></p>
<p class=3D"MsoNormal">File: '/home/rama/sri_clifford-1-5-jalan/meta-picodi=
gital/sources/poky/meta/lib/oe/sdk.py', lineno: 108, function: install_loca=
les<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0104:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Generate a locale archive of=
 them<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0105:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; target_arch =3D self.d.getVar(=
'SDK_ARCH')<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0106:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rootfs =3D oe.path.join(self.s=
dk_host_sysroot, self.sdk_native_path)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0107:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; localedir =3D oe.path.join(roo=
tfs, self.d.getVar(&quot;libdir_nativesdk&quot;), &quot;locale&quot;)<o:p><=
/o:p></p>
<p class=3D"MsoNormal">*** 0108:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; generate_locale_archive(self.d, rootfs, target_arch=
, localedir)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0109:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # And now delete the binary lo=
cales<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0110:&nbsp; &nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pkgs =3D fnmatch.filter(pm.lis=
t_installed(), &quot;nativesdk-glibc-binary-localedata-*.utf-8&quot;)<o:p><=
/o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0111:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pm.remove(pkgs)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0112:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; else:<o:p></o:p></p>
<p class=3D"MsoNormal">File: '/home/rama/sri_clifford-1-5-jalan/meta-picodi=
gital/sources/poky/meta/lib/oe/package_manager.py', lineno: 134, function: =
generate_locale_archive<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0130:&nbsp;&nbsp;&nbsp; # N=
eed to set this so cross-localedef knows where the archive is<o:p></o:p></p=
>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0131:&nbsp;&nbsp;&nbsp; env=
 =3D dict(os.environ)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0132:&nbsp;&nbsp;&nbsp; env=
[&quot;LOCALEARCHIVE&quot;] =3D oe.path.join(localedir, &quot;locale-archiv=
e&quot;)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0133:<o:p></o:p></p>
<p class=3D"MsoNormal">*** 0134:&nbsp;&nbsp;&nbsp; for name in os.listdir(l=
ocaledir):<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0135:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; path =3D os.path.join(localedir, name)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0136:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; if os.path.isdir(path):<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0137:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cmd =3D [&quot;cross-localedef=
&quot;, &quot;--verbose&quot;]<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; 0138:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cmd &#43;=3D arch_options<o:p>=
</o:p></p>
<p class=3D"MsoNormal">Exception: FileNotFoundError: [Errno 2] No such file=
 or directory: '/home/rama/sri_clifford-1-5-jalan/meta-picodigital/build/tm=
p/work/imx6solopd1600_prod-poky-linux-gnueabi/clifford-sdk/1.0-r0/sdk/image=
/opt/pico/1.0/sysroots/i686-picodigital-linux/usr/lib/locale'<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR: [Errno 2] No such file or directory: '/home/r=
ama/sri_clifford-1-5-jalan/meta-picodigital/build/tmp/work/imx6solopd1600_p=
rod-poky-linux-gnueabi/clifford-sdk/1.0-r0/sdk/image/opt/pico/1.0/sysroots/=
i686-picodigital-linux/usr/lib/locale'<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Python function do_populate_sdk finished<o:p>=
</o:p></p>
<p class=3D"MsoNormal">ERROR: Function failed: do_populate_sdk<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Will be thankful if anybosy could point what I am mi=
ssing here.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Mubeen<o:p></o:p></p>
</div>
</body>
</html>

--_000_SG2PR02MB30529A5387EAF33AE2F36269F56C0SG2PR02MB3052apcp_--
