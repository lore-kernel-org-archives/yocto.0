Return-Path: <aseilis@ciena.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04265E00C09; Thu, 31 Aug 2017 08:27:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.34.82 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 4641 seconds by postgrey-1.32 at yocto-www;
	Thu, 31 Aug 2017 08:27:41 PDT
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0082.outbound.protection.outlook.com [104.47.34.82])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22437E00C01
	for <yocto@yoctoproject.org>; Thu, 31 Aug 2017 08:27:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cienacorp.onmicrosoft.com; s=selector1-ciena-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=OYRVi+ioy/htwkCwxxZsKJ08swBcl6MU6XDgo3lr0Go=;
	b=ZGOMYLnmEVK/kFhuQhMb9SzhyTbLXh/oCWSafgwzBAzvlDd5HxurxQBeWAi+WBg8om6r2dWYkavcN10eQVVIuHK3C7IMhvAheMkHLJJA766EWuQiqjsjP3UFnYB6FaNWvmJ6guBjEDWs13f9ak86oFT/QMg1oec8hMZPaWxf8QM=
Received: from SN4PR0401MB3599.namprd04.prod.outlook.com (10.167.133.30) by
	SN4PR0401MB3694.namprd04.prod.outlook.com (10.167.139.160) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.1.1385.9;
	Thu, 31 Aug 2017 13:54:59 +0000
Received: from SN4PR0401MB3599.namprd04.prod.outlook.com
	([fe80::6d50:f54b:d3c2:d500]) by
	SN4PR0401MB3599.namprd04.prod.outlook.com
	([fe80::6d50:f54b:d3c2:d500%13]) with mapi id 15.01.1385.015;
	Thu, 31 Aug 2017 13:54:59 +0000
From: "Seilis, Aaron" <aseilis@ciena.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Building Custom Python 3 Packages
Thread-Index: AQHTIl5g106SEXDve0SpqAo3eY73Gg==
Date: Thu, 31 Aug 2017 13:54:59 +0000
Message-ID: <SN4PR0401MB3599F4AAECE68D38EDEF8C4CBD9D0@SN4PR0401MB3599.namprd04.prod.outlook.com>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=aseilis@ciena.com; 
x-originating-ip: [66.48.12.177]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; SN4PR0401MB3694;
	6:ymE87jCNOteRtZiL/qHWSe9PHUR+gKaiynV5UgS7yQH4yFV/cBSSuFduK+lmuq3ZkykS/i6H/ZmCVU9q96eZBoD5mDpqQMW2iFcHdlu+c4VmvYk4efzU9/UY6NZK+PF232EWT9Pvh+hC/39gu/bA8nLYRE9TDDU/PiEY7ljcQNYef4FGE1F/w8A8Hw78W3l5o/l9q3Z53Q8Za7Kl8nHdVwSHfl/yiZ6td78M+JTx7HmnQF0xYHT3wMf0aAlt4sT+uDpfrtNhkC4E0rM7k1ahIpgPR7na66vXOtiptz9B06FtbtLMFlHa4osH04Hc7wPqDSKG+XJV2XG672bV1R3zOg==;
	5:2SMTjugnYYhjGklx+R0aq3idTYOPk5qDECVNM/ZVIWaGHJWert0lPFKWXOY/7M7cyb/a15QNFuBSzNBLbeb2R/ChSJFq5OrAYo3rkavjVNvBMgFbLxuPDJtqip8Pb3r+DR9cNjE5c5MgGYDAZl2pQg==;
	24:R1uIO6KYvhBSRzasrD+IhoOcq4GgIn6YXL066OMsGIUTGYv8WTQYv92xs3XSZ0EsDqsDlC64XepwNsDnenX9JhpIhQiDV+P3seX/eBGuhsQ=;
	7:GR9Rh+H/z2VnBZ8jOCT3MLvFSD32q84GpAVghQezt0azPHcbjMr5MjqkQTEjCgGhCGdH120AfrGcuE4KHlUPYacaxo5sxeM2IiZYwC8XvhHTneIEn/wbrrg/23+iryteBEv/2JudXL9Z2f/TtMQiO/VXRF9OgCwL8fOeT6GYFieM83CpI4ntHSSiW7ez8lNMKDMeuAqyvAtGGibwiMP7by3oXhZzt3pC2wA7lpHZ1p0=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 6e9ad50a-36ca-4331-1682-08d4f077deea
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(2017030254152)(300000503095)(300135400095)(2017052603199)(201703131423075)(201703031133081)(201702281549075)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:SN4PR0401MB3694; 
x-ms-traffictypediagnostic: SN4PR0401MB3694:
x-exchange-antispam-report-test: UriScan:(48706222282353)(5213294742642);
x-microsoft-antispam-prvs: <SN4PR0401MB369406038DA197C1AFC5DC6DBD9D0@SN4PR0401MB3694.namprd04.prod.outlook.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(8121501046)(5005006)(100000703101)(100105400095)(3002001)(10201501046)(93006095)(93001095)(6041248)(20161123555025)(20161123558100)(20161123560025)(20161123562025)(20161123564025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:SN4PR0401MB3694; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:SN4PR0401MB3694; 
x-forefront-prvs: 04163EF38A
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(189002)(199003)(6436002)(8936002)(6506006)(189998001)(97736004)(2351001)(86362001)(5250100002)(2501003)(105586002)(101416001)(8676002)(1730700003)(81156014)(81166006)(33656002)(66066001)(3846002)(6116002)(102836003)(106356001)(478600001)(5640700003)(3660700001)(110136004)(3280700002)(7696004)(14454004)(2906002)(9686003)(99286003)(55016002)(53936002)(50986999)(68736007)(6916009)(54356999)(74316002)(7736002)(305945005)(25786009)(5660300001)(2900100001)(19627235001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:SN4PR0401MB3694;
	H:SN4PR0401MB3599.namprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: ciena.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: ciena.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Aug 2017 13:54:59.6333 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 457a2b01-0019-42ba-a449-45f99e96b60a
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR0401MB3694
Subject: Building Custom Python 3 Packages
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
X-List-Received-Date: Thu, 31 Aug 2017 15:27:44 -0000
Content-Language: en-CA
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm building a couple of custom Python 3 scripts+modules as part of the -na=
tive tools required to build a number of my embedded components. I'm having=
 difficulties getting my recipe to build when I've run `devtool modify` but=
 the build works fine in a regular build. The Python tools are stored in va=
rious Git repositories and use the typical setuptools infrastructure.

My recipe is roughly as follows:

> inherit setuptools3
>
> SUMMARY =3D "My tool"
> DESCRIPTION =3D "Description"
>
> SECTION =3D "devel/scripts"
> LICENSE =3D "CLOSED"
>
> SRC_URI =3D "my-URL"
> SRCREV =3D "git hash"
>
> S =3D "${WORKDIR}/git/"
> BBCLASSEXTEND =3D "native"

This builds fine when running Bitbake normally; the tool is built and can b=
e used to build other components. However, when I run `devtool modify`, the=
 ${S} variable gets set to my alternate source location but the ${B} variab=
le remains under ${WORKDIR}. This causes the build to fail with the error:

> ERROR: mytool-native-1.3.5-r0 do_install: python3 setup.py install execut=
ion failed.
> ERROR: mytool-native-1.3.5-r0 do_install: Function failed: do_install (lo=
g file is located at /.../build/tmp/work/x86_64-linux/mytool-native/1.3.5-r=
0/temp/log.do_install.39172)
> ERROR: Logfile of failure stored in: /.../build/tmp/work/x86_64-linux/myt=
ool-native/1.3.5-r0/temp/log.do_install.39172
> Log data follows:
> | DEBUG: Executing shell function do_install
> | /.../build/tmp/sysroots/x86_64-linux/usr/bin/python3-native/python3: ca=
n't open file 'setup.py': [Errno 2] No such file or directory
> | ERROR: python3 setup.py install execution failed.
> ERROR: Function failed: do_install (log file is located at /.../build/tmp=
/work/x86_64-linux/mytool-native/1.3.5-r0/temp/log.do_install.39172)
> ERROR: Task 0 (virtual:native:/.../sources/meta-myproject/recipes-tools/m=
ytool/mytool_1.3.5.bb, do_install) failed with exit code '1'

Looking at the build recipes for Python, shows that the do_compile() step f=
or Python modules (with setuptools3) is:

>distutils3_do_compile() {
>        if [ x86_64-linux !=3D aarch64-WaveserverOS-linux ]; then
>                SYS=3Dwcs
>        else
>                SYS=3Daarch64-WaveserverOS-linux
>        fi
>        STAGING_INCDIR=3D/localdata/projects/waveserver/build/tmp/sysroots=
/wcs/usr/include \
>        STAGING_LIBDIR=3D/localdata/projects/waveserver/build/tmp/sysroots=
/wcs/usr/lib \
>        BUILD_SYS=3Dx86_64-linux HOST_SYS=3D${SYS} \
>        /localdata/projects/waveserver/build/tmp/sysroots/x86_64-linux/usr=
/bin/python3-native/python3 setup.py \
>        build  || \
>        bbfatal_log "python3 setup.py build_ext execution failed."
>}

This clearly indicates that the issue is that the build is looking for setu=
p.py in the ${B} location, but it is only present in the ${S} location when=
 `devtool modify` has been run. I have tried setting ${B} to ${S} explicitl=
y in the recipe, but this doesn't result in ${B} being changed when I run `=
bitbake -e mytool`. I could always copy ${S} to ${B} in the recipe, but tha=
t seems a bit hack-ish.

Did I miss something or is there another way that Python builds are intende=
d to work?

Thanks,
Aaron=

