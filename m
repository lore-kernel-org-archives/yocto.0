Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC654E00E3D; Mon, 22 Jan 2018 13:12:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.0.105 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 4020 seconds by postgrey-1.32 at yocto-www;
	Mon, 22 Jan 2018 13:12:51 PST
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
	(mail-he1eur01on0105.outbound.protection.outlook.com [104.47.0.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02274E0085E
	for <yocto@yoctoproject.org>; Mon, 22 Jan 2018 13:12:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Enea.onmicrosoft.com; 
	s=selector1-enea-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=ia22HJrtlxa4UHDYPSNacWAFB4P4jAHvJnIJknOZtTY=;
	b=qCeAGetzZjvjWGBPuAszBuBgry7O+j1JTjZf7ZfB5+u/AYop2gbADMGQoogcAHm0qNy9PjS6t5EthWihtMM2VSjXm5WDCnDIvspOhI7inomVZS/pDUuhjzJw/j9aUBLS9RzoQV1ZlJsGCMgmsdgxDDN/wYb7vPW4J17IFdV4Oe4=
Received: from AM5PR0701MB1780.eurprd07.prod.outlook.com (10.167.215.151) by
	AM5PR0701MB2561.eurprd07.prod.outlook.com (10.173.92.17) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.407.1; Mon, 22 Jan 2018 13:38:56 +0000
Received: from AM5PR0701MB1780.eurprd07.prod.outlook.com
	([fe80::c1b4:b5ac:e04b:e25d]) by
	AM5PR0701MB1780.eurprd07.prod.outlook.com
	([fe80::c1b4:b5ac:e04b:e25d%14]) with mapi id 15.20.0444.008;
	Mon, 22 Jan 2018 13:38:56 +0000
From: Adrian Dudau <Adrian.Dudau@enea.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: dev-pkgs not installed in Extensible SDK
Thread-Index: AQHTk4Q/qY0BArszm0iDB3PSXUL34Q==
Date: Mon, 22 Jan 2018 13:38:56 +0000
Message-ID: <AM5PR0701MB1780C91D8E1E33DFD61A9730E4EC0@AM5PR0701MB1780.eurprd07.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Adrian.Dudau@enea.com; 
x-originating-ip: [192.36.1.252]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AM5PR0701MB2561;
	7:WPbT07zVZ86mQDdcGrfm7fkclY6W0YUjn+q34ypCnYxDarEOBfYZmPUr3wBlFL4s3UHlHLo3LWI3M4lTlQXHedt8cjZ/95ef32Vq9I662qoWay+41OuF0THPHut1pHFR75u0EzPL6xSBl+4aX7sKUE6gDkA6bHHK5KV1zfEJPrsBMJHVxcI9RJfh1elA+miswrLp4OoJ7ejZ2R8eBD3Xhef96jMuzEsi5XGsRstp8QV1OSoWV7KjMZeJRcnZ0DF+;
	20:BJ/npusglJci8DooasMYmE44IgbR4kadi5Q67sxVXh0X270pECogDkUIStELKaSHvg7uEDYSOwCi5+vE9e/yk3hQ0N/XSAbaM2PRU6BiB3sCzQZa45cOd4krZQa/SF6uT7u18Kg4StBC9HRumyNwcL1hFqpr/GKrfEmd4U6uY0k=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: fe6e2f1a-e78b-4cf8-1306-08d5619d7c20
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(4534125)(4602075)(4627221)(201703031133081)(201702281549075)(5600026)(4604075)(3008032)(2017052603307)(7153060)(7193020);
	SRVR:AM5PR0701MB2561; 
x-ms-traffictypediagnostic: AM5PR0701MB2561:
x-microsoft-antispam-prvs: <AM5PR0701MB2561750A82DFB20EF2F11D4BE4EC0@AM5PR0701MB2561.eurprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(278428928389397);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040501)(2401047)(8121501046)(5005006)(3002001)(93006095)(93001095)(10201501046)(3231023)(2400081)(944501161)(6041288)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(20161123564045)(20161123558120)(6072148)(201708071742011);
	SRVR:AM5PR0701MB2561; BCL:0; PCL:0;
	RULEID:(100000803101)(100110400095); SRVR:AM5PR0701MB2561; 
x-forefront-prvs: 0560A2214D
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39380400002)(366004)(396003)(346002)(376002)(39840400004)(199004)(189003)(68736007)(3280700002)(97736004)(81156014)(99286004)(53936002)(6506007)(316002)(8676002)(551544002)(7696005)(6916009)(3660700001)(5250100002)(9686003)(5660300001)(81166006)(8936002)(66066001)(26005)(102836004)(7736002)(105586002)(2906002)(86362001)(478600001)(33656002)(25786009)(55016002)(6116002)(106356001)(3846002)(74316002)(6436002)(305945005)(2900100001)(14454004)(72206003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM5PR0701MB2561;
	H:AM5PR0701MB1780.eurprd07.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: enea.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: crkR6x66kEYMVvN9lT1xBTSOxrr3kVw5I1E2Xrn6mrzBxmB7vpvh81D9Zf6/yo/+rwzZVGFjfC6WSTtrMScqJg==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: enea.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe6e2f1a-e78b-4cf8-1306-08d5619d7c20
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2018 13:38:56.2404 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8cdaed89-c47e-40b8-90b5-f28ad2c3fdca
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0701MB2561
Subject: dev-pkgs not installed in Extensible SDK
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
X-List-Received-Date: Mon, 22 Jan 2018 21:12:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Adding dev-pkgs to SDKIMAGE_FEATURES I expected that the -dev packages woul=
d be installed in the sysroot in the eSDK, but it seems that is valid only =
for the standard SDK.

I have my own image that inherits core-image with various additions. In the=
 standard SDK, the debug folder under rpi_standard/sysroots/aarch64-enea-li=
nux/usr/src/debug shows like this:
acl          expat        less           libtirpc            make          =
   rpcbind
atk          file         libaio         libtool             mingetty      =
   rpm
attr         findutils    libarchive     libunistring        mpfr          =
   rsync
babeltrace   fontconfig   libassuan      liburcu             ncurses       =
   shadow
base-passwd  freetype     libcap         libx11              nettle        =
   shared-mime-info
bash         fuse         libcheck       libxau              nfs-utils     =
   slang
bc           gcc-runtime  libcomps       libxcb              nspr          =
   sqlite3
blktrace     gdbm         libdnf         libxcomposite       nss           =
   strace
busybox      gdk-pixbuf   libevent       libxcursor          openssh       =
   systemd
bzip2        gettext      libffi         libxdamage          openssl       =
   systemtap
cairo        glib-2.0     libgcc         libxdmcp            pango         =
   tcf-agent
ccache       glibc        libgpg-error   libxext             patch         =
   tcl
coreutils    gmp          libidn         libxfixes           pciutils      =
   tcp-wrappers
curl         gnutls       libjpeg-turbo  libxft              perl          =
   trace-cmd
db           gpgme        libmpc         libxml2             pixman        =
   util-linux
dbus         gtk+         libnfsidmap    libxml-parser-perl  pkgconfig     =
   xz
dhcp         harfbuzz     libnl          libxrandr           popt          =
   zlib
diffstat     json-c       libpcre        libxrender          powertop
diffutils    kbd          libpng         lttng-tools         python3
e2fsprogs    kmod         librepo        lttng-ust           python3-pygpgm=
e
elfutils     latencytop   libsolv        m4                  readline


In the extensible SDK, I only have this under rpi/sysroots/aarch64-enea-lin=
ux/usr/src/debug:
bash  bc  glibc  ncurses


I tried building both SDKs based on a vanilla core-image-minimal, and the s=
tandard SDK has the sources installed as expected, but the ext SDK has no d=
ebug folder containing sources. I tried=20

I tried looking into the populate_sdk* classes, but the code there is very =
hard to understand at a first view. So I guess question is: Is this intende=
d by design or is it a bug? If intended, what is the development worklfow f=
or a user wanting to remote debug applications using shared libraries?=20

Best regards,
--Adrian

