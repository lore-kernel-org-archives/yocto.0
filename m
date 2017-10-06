Return-Path: <richard_allen@keysight.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BA5FE00CA2; Fri,  6 Oct 2017 09:15:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.40.107 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 7227 seconds by postgrey-1.32 at yocto-www;
	Fri, 06 Oct 2017 09:15:23 PDT
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-co1nam03on0107.outbound.protection.outlook.com [104.47.40.107])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B8BFE00C35
	for <yocto@yoctoproject.org>; Fri,  6 Oct 2017 09:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=keysighttech.onmicrosoft.com; s=selector1-keysight-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=oj7sXTnniERgyCm8CUkKUxwWoiTF4Li6UMtgnkGI1Tw=;
	b=uMbOCZ0EhrM9PIlmcDkJ0WXTZoh183DDdfGSEdQsjpoxwhzuEhl01HUNr+DEmyNU9xSldndAvyhajc7kcX+2TXF9UXvFoeLaHhc8v5NPB5k5NWwTMAeCv5WXl7/kTabdTpsBi5Y3qPBfp1b5kI/phBJ/VyXfmrlPA+24LWKCgQk=
Received: from BY1PR17MB0120.namprd17.prod.outlook.com (10.161.97.144) by
	BY1PR17MB0119.namprd17.prod.outlook.com (10.161.97.143) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.77.7; Fri, 6 Oct 2017 13:40:58 +0000
Received: from BY1PR17MB0120.namprd17.prod.outlook.com
	([fe80::b900:a916:c67f:6871]) by
	BY1PR17MB0120.namprd17.prod.outlook.com
	([fe80::b900:a916:c67f:6871%15]) with mapi id 15.20.0077.019;
	Fri, 6 Oct 2017 13:40:58 +0000
From: <richard_allen@keysight.com>
To: <yocto@yoctoproject.org>
Thread-Topic: read-only-rootfs causes systemd-tmpfiles-setup.service failure (
	symlink(../run/lock, /var/lock) failed: Read-only file system)
Thread-Index: AdM+p9w+fxAOzQ72S7OviBTAOqJF6g==
Date: Fri, 6 Oct 2017 13:40:58 +0000
Message-ID: <BY1PR17MB012060F2B72863B46932C421F1710@BY1PR17MB0120.namprd17.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=richard_allen@keysight.com; 
x-originating-ip: [206.49.107.132]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BY1PR17MB0119;
	6:h+0Ael5ZOn3gHhfYXgs8i2jDYkXQ/VE+cdL9pwXr0WgLWc68JotJqBAp8MuVx9XPAFrhqE2Ojcq4JU7gNHxt6zwDyfwysgO19TKyJEG/MLey+tFCKdhigRtPX77lVYVUPQLQ8e39dbpST1UkutrMCLXRmTDeTNP5kltM72qLIp8NjBA+vrGPlbszFOjHGRp1JcGJRXE44HJKEGp1FHenb3/zrNyZ6EqsBSYIurqlzBVQKFof6fl1tk8a6broQXvVcrfubyloydFVRivGoAmzAaTwcWmeyNtdB/YT5tBdlYwyAoOiVinmuMQ50OZAH0gJPzw8z/FQAIuHjWQiwPNf2g==;
	5:ydyVftsFvPO8plzyOURkxyXH+CSk34LbI6EHn2dqEJamHqRbvWRhipOV/GOcupMlXEEh/H2QHipAarOkU5aTQwCom57nQSs+efGayZsccJ1HXgNyJbEtXfgVCJaC+yIJt6Yn5rY/eXHNNCQkkT+3KQ==;
	24:SopfQfx1jyjcRPSvQpR78uMafSJSMDbSd2upRmke3TQB2JelWeN0BBrkogDFD78aTScHOxuPawEABYurWOp1IX5utdGQqA32oDbZxQHcpj8=;
	7:yZ6hNfiLXyO3B0QyJCmwTCJuYbtv7h6G2KC2J2IR7O0hbmakCDKpcQxMf8FnaqfXS7ywqbFRQm4m9HMJQq3R4FSKMQDwKaxy4gp3MVA7YFWRpWZsH68dy3QyEbz9TvAKt/ce1mseSPEQRlWlZCD0r3vtZvLoHM1CJ6JJrGDwcbYbOhGaDui3ksAlYxuL2ayFqtJ3U0XG3T1zoXKSz6cyPB7E+zc/FRzhUfnaH3lvnYM=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: ae8a14b6-0f67-4d49-e397-08d50cbfe060
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254152)(2017052603199)(201703131423075)(201703031133081)(201702281549075);
	SRVR:BY1PR17MB0119; 
x-ms-traffictypediagnostic: BY1PR17MB0119:
x-exchange-antispam-report-test: UriScan:;
x-microsoft-antispam-prvs: <BY1PR17MB0119AD1DD616E968665C1F6CF1710@BY1PR17MB0119.namprd17.prod.outlook.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(5005006)(8121501046)(93006095)(93001095)(10201501046)(3002001)(100000703101)(100105400095)(6041248)(20161123558100)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123564025)(20161123560025)(20161123555025)(20161123562025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:BY1PR17MB0119; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:BY1PR17MB0119; 
x-forefront-prvs: 0452022BE1
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(346002)(376002)(189002)(199003)(377424004)(6436002)(50986999)(54356999)(14454004)(53936002)(25786009)(3280700002)(6506006)(2906002)(7736002)(101416001)(102836003)(3846002)(6116002)(8676002)(1730700003)(7696004)(6916009)(81166006)(81156014)(5660300001)(74316002)(2351001)(305945005)(3660700001)(230783001)(9686003)(55016002)(99286003)(66066001)(8936002)(68736007)(33656002)(5640700003)(105586002)(106356001)(2501003)(86362001)(5250100002)(2900100001)(97736004)(478600001)(316002)(189998001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BY1PR17MB0119;
	H:BY1PR17MB0120.namprd17.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: keysight.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: keysight.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Oct 2017 13:40:58.3026 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 63545f27-3232-4d74-a44d-cdd457063402
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR17MB0119
Subject: read-only-rootfs causes systemd-tmpfiles-setup.service failure ( symlink(../run/lock, /var/lock) failed: Read-only file system)
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
X-List-Received-Date: Fri, 06 Oct 2017 16:15:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

I am build an image with read-only-rootfs
When enabled, during startup I get a=20

[FAILED] Failed to start Create Volatile Files and Directories.
See 'systemctl status systemd-tmpfiles-setup.service' for details.



=1B$B!|=1B(B systemd-tmpfiles-setup.service - Create Volatile Files and Dir=
ectories
   Loaded: loaded (/lib/systemd/system/systemd-tmpfiles-setup.service; stat=
ic; vendor pre
set: enabled)
   Active: failed (Result: exit-code) since Fri 2017-09-01 19:16:27 UTC; 3m=
in 52s ago
     Docs: man:tmpfiles.d(5)
           man:systemd-tmpfiles(8)
  Process: 945 ExecStart=3D/bin/systemd-tmpfiles --create --remove --boot -=
-exclude-prefix=3D
/dev (code=3Dexited, status=3D1/FAILURE)
 Main PID: 945 (code=3Dexited, status=3D1/FAILURE)

Sep 01 19:16:27 dso systemd[1]: Starting Create Volatile Files and Director=
ies...
Sep 01 19:16:27 dso systemd-tmpfiles[945]: symlink(../run/lock, /var/lock) =
failed: Read-only file system
Sep 01 19:16:27 dso systemd-tmpfiles[945]: "/var/tmp" already exists and is=
 not a directory.
Sep 01 19:16:27 dso systemd-tmpfiles[945]: "/var/log" already exists and is=
 not a directory.
Sep 01 19:16:27 dso systemd[1]: systemd-tmpfiles-setup.service: Main proces=
s exited, code=3Dexited, status=3D1/FAILURE
Sep 01 19:16:27 dso systemd[1]: Failed to start Create Volatile Files and D=
irectories.
Sep 01 19:16:27 dso systemd[1]: systemd-tmpfiles-setup.service: Unit entere=
d failed state.
Sep 01 19:16:27 dso systemd[1]: systemd-tmpfiles-setup.service: Failed with=
 result 'exit-code'.


Not clear if I should be worried about this.
If so, what should be done?
Thanks


Richard C. Allen
Keysight Technologies
richard_allen@Keysight.com



