Return-Path: <mns@gomspace.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D750E00B65; Wed, 18 Apr 2018 08:16:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [40.107.4.112 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 7188 seconds by postgrey-1.32 at yocto-www;
	Wed, 18 Apr 2018 08:16:12 PDT
Received: from EUR03-DB5-obe.outbound.protection.outlook.com
	(mail-eopbgr40112.outbound.protection.outlook.com [40.107.4.112])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43620E009C9
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 08:16:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gomspace.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=M3nBK8h69+UhmugfI33qSIT8mBAUGTr9gNpyUFti7kc=;
	b=fyfBoyvcNVdnKRoRqtQL665MK/P7P0mAlVHj06GtC/AdT8oYCkP8VwfNuY9tLnOWQrP51GV4zwVVgYUVGuY0gb5wsM6R4XkHbjy/bkQgzg6c7/C3y5U/nUHbcvew8pVcksA39aNXSK7MwGRhZE594G1cPLhrQ1FMlcZDrzA7d5Q=
Received: from AM5PR0402MB2721.eurprd04.prod.outlook.com (10.175.40.143) by
	AM5PR0402MB2868.eurprd04.prod.outlook.com (10.175.41.151) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.696.13; Wed, 18 Apr 2018 12:42:00 +0000
Received: from AM5PR0402MB2721.eurprd04.prod.outlook.com
	([fe80::410b:634a:236b:73d2]) by
	AM5PR0402MB2721.eurprd04.prod.outlook.com
	([fe80::410b:634a:236b:73d2%7]) with mapi id 15.20.0696.013;
	Wed, 18 Apr 2018 12:42:00 +0000
From: Martin Siegumfeldt <mns@gomspace.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Extensible SDK and DEFAULT_PREFERENCE
Thread-Index: AQHT1xBXFULFPLKSrEmY/QtI0hWd8A==
Date: Wed, 18 Apr 2018 12:41:59 +0000
Message-ID: <AM5PR0402MB2721E721141756999BAAF315C4B60@AM5PR0402MB2721.eurprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=gomspace.com;
x-originating-ip: [85.191.189.104]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AM5PR0402MB2868;
	7:BTP3j1R94J6eShOgIxj6Gz7fJxZweFNF23AHrkCGxwCebC/ouLz6e9xQvkyw52mFvym497jcj/CxfuamLbuEYYgX3N5Se/CHhkm1DzHRwKisnyAOWczwvOZrXJUXAbq3bcmeUJmgqJYxxFZbWvobGY/awU9lrkw9ayMDTkufiRbuIINggKWe/6BWQf+KTGE8tDvxetuXt+8/OUyqZlm5ZUa2o6SsBs437Wgw6trSaFyXCI5fH7nMiPzAK9ZHK07A
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:AM5PR0402MB2868; 
x-ms-traffictypediagnostic: AM5PR0402MB2868:
x-microsoft-antispam-prvs: <AM5PR0402MB2868E8AE4AEF8CFAB7008C50C4B60@AM5PR0402MB2868.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(166708455590820);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(3231232)(944501327)(52105095)(3002001)(10201501046)(93006095)(93001095)(6041310)(20161123564045)(20161123560045)(2016111802025)(20161123562045)(20161123558120)(6072148)(6043046)(201708071742011);
	SRVR:AM5PR0402MB2868; BCL:0; PCL:0; RULEID:;
	SRVR:AM5PR0402MB2868; 
x-forefront-prvs: 06469BCC91
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(366004)(376002)(39380400002)(39840400004)(33656002)(53936002)(25786009)(3846002)(6116002)(6916009)(2900100001)(5660300001)(6436002)(8936002)(2906002)(2351001)(7736002)(8676002)(14454004)(81166006)(1730700003)(478600001)(74316002)(66066001)(305945005)(6506007)(7696005)(5250100002)(102836004)(2501003)(26005)(86362001)(59450400001)(55016002)(99286004)(5640700003)(9686003)(476003)(42262002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM5PR0402MB2868;
	H:AM5PR0402MB2721.eurprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; MLV:sfv; 
x-microsoft-antispam-message-info: wwgtqKipBrpQI896G3zszNZeqPyXAJYYoDNq8HQhObQQW6sAR27+bzaRD1t/YovJ0bEL7tn3NbZsC36X52eTwPUrTnXxMfLybkS1Z36Pky19nC9gcyO5PrGvXEpnAEsFCF8SrgVnSlo96TnZdqBsDRvYVuOV/HeyKqYvBTrWQ5rEsUghA1gaEIFUMhF85bYS
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 9b703700-9b4b-4124-8ea0-08d5a529c768
X-OriginatorOrg: gomspace.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b703700-9b4b-4124-8ea0-08d5a529c768
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2018 12:41:59.9362 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91ed1e54-6d8b-4599-84d8-65fe75fda3d1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0402MB2868
Subject: Extensible SDK and DEFAULT_PREFERENCE
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
X-List-Received-Date: Wed, 18 Apr 2018 15:16:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I am having a number of recipes residing in two versions, some (development=
 versions) being down-prioritized=A0using:

DEFAULT_PREFERENCE =3D "-1"


The source code is hosted at a private git repository, and the=A0git=A0vers=
ion is selected using 'AUTOREV'. The extensible SDK renders successfully, h=
owever the installation (by third party) fails:

Traceback (most recent call last):
=A0 File "/home/martin/gomspace_sdk/layers/poky/bitbake/lib/bb/data_smart.p=
y", line 412, in DataSmart.expandWithRefs(s=3D'dev+git${SRCPV}', varname=3D=
'PV'):
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0try:
=A0 =A0 >=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 s =3D __expand_var_regexp__.sub(va=
rparse.var_sub, s)
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0try:
=A0 File "/home/martin/gomspace_sdk/layers/poky/bitbake/lib/bb/data_smart.p=
y", line 111, in VariableParse.var_sub(match=3D<_sre.SRE_Match object; span=
=3D(7, 15), match=3D'${SRCPV}'>):
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0else:
=A0 =A0 >=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 var =3D self.d.getVarFlag(key, "_c=
ontent")
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0self.references.add(key)
=A0 File "/home/martin/gomspace_sdk/layers/poky/bitbake/lib/bb/data_smart.p=
y", line 794, in DataSmart.getVarFlag(var=3D'SRCPV', flag=3D'_content', exp=
and=3DTrue, noweakdefault=3DFalse, parsing=3DFalse):
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0cachename =3D var + "[" + flag +=
 "]"
=A0 =A0 >=A0 =A0 =A0 =A0 =A0 =A0 value =3D self.expand(value, cachename)
=A0 =A0 =A0
=A0 File "/home/martin/gomspace_sdk/layers/poky/bitbake/lib/bb/data_smart.p=
y", line 436, in DataSmart.expand(s=3D'${@bb.fetch2.get_srcrev(d)}', varnam=
e=3D'SRCPV'):
=A0 =A0 =A0 =A0 =A0def expand(self, s, varname =3D None):
=A0 =A0 >=A0 =A0 =A0 =A0 return self.expandWithRefs(s, varname).value
=A0 =A0 =A0
=A0 File "/home/martin/gomspace_sdk/layers/poky/bitbake/lib/bb/data_smart.p=
y", line 426, in DataSmart.expandWithRefs(s=3D'${@bb.fetch2.get_srcrev(d)}'=
, varname=3D'SRCPV'):
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0except Exception as exc:
=A0 =A0 >=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 raise ExpansionError(varname, s, e=
xc) from exc
=A0 =A0 =A0
bb.data_smart.ExpansionError: Failure expanding variable SRCPV, expression =
was ${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError: Fetch=
er failure: Fetch command export GIT_SSL_CAINFO=3D"/home
/martin/gomspace_sdk/buildtools/sysroots/x86_64-gomspacesdk-linux/etc/ssl/c=
erts/ca-certificates.crt"; export PATH=3D"/home/martin/gomspace_sdk/tmp/wor=
k/aarch64-gomspace-linux/libgsisl/fetcheravoidrecurse-r0
/recipe-sysroot-native/usr/bin/python-native:/home/martin/gomspace_sdk/laye=
rs/poky/scripts:/home/martin/gomspace_sdk/tmp/work/aarch64-gomspace-linux/l=
ibgsisl/fetcheravoidrecurse-r0/recipe-sysroot-native/u
sr/bin/aarch64-gomspace-linux:/home/martin/gomspace_sdk/tmp/work/aarch64-go=
mspace-linux/libgsisl/fetcheravoidrecurse-r0/recipe-sysroot/usr/bin/crosssc=
ripts:/home/martin/gomspace_sdk/tmp/work/aarch64-gomsp
ace-linux/libgsisl/fetcheravoidrecurse-r0/recipe-sysroot-native/usr/sbin:/h=
ome/martin/gomspace_sdk/tmp/work/aarch64-gomspace-linux/libgsisl/fetcheravo=
idrecurse-r0/recipe-sysroot-native/usr/bin:/home/marti
n/gomspace_sdk/tmp/work/aarch64-gomspace-linux/libgsisl/fetcheravoidrecurse=
-r0/recipe-sysroot-native/sbin:/home/martin/gomspace_sdk/tmp/work/aarch64-g=
omspace-linux/libgsisl/fetcheravoidrecurse-r0/recipe-s
ysroot-native/bin:/home/martin/gomspace_sdk/layers/poky/bitbake/bin:/home/m=
artin/gomspace_sdk/tmp/hosttools"; export HOME=3D"/home/martin"; git -c cor=
e.fsyncobjectfiles=3D0 ls-remote ssh://git@github.com/GomS
pace/libisl=A0 failed with exit code 128, output:
Host key verification failed.
fatal: Could not read from remote repository.


Please make sure you have the correct access rights
and the repository exists.

It is not the intention that third party will ever need access to the devel=
opment version, and I don't see why the version information is fetched give=
n the reduced priority.=A0Have I encountered an 'undocumented bug' or is th=
ere an alternate approach=A0to achieve this?

Thanks,
Martin=

