Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.747.1578603757538625242
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jan 2020 13:02:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intusurgops.onmicrosoft.com header.s=selector2-intusurgops-onmicrosoft-com header.b=9Y7JBCf/;
 spf=permerror, err=parse error for token &{10 18 spf-001e7101.pphosted.com}: limit exceeded (domain: intusurg.com, ip: 140.211.169.56, mailfrom: daniel.wang@intusurg.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26364E014E0; Thu,  9 Jan 2020 13:02:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FORGED_SPF_HELO,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS
	autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [40.107.76.125 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (mail-eopbgr760125.outbound.protection.outlook.com [40.107.76.125])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F23FCE0142F
	for <yocto@yoctoproject.org>; Thu,  9 Jan 2020 13:02:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UesIagEbJ82nQwIPupE7Ax62EVfsgjLMYljx3dPx9QvTSwhb+Q9ElfZMh3SDea3mUezCSFetwVkidEYRBtpU1XvACDELjvfYZiQdQvobDEjDEiHbpb6XhKApWmUnDZfUIZmLGdHIEsq0B4WqI3slgbE4ict/WK4c1TnISQWZMjrA1a9f2w1WIS6wbrG3QC6zeyaQX1DrpGtKVJN4Y2tuucnaJ4diAln25D5hqD9XDGwm+IbGc8IVD73kJRoWD7r/kgHeckyizUfyFsYmyxJYN6UB6eLlSENnkC/nxCS4zHBuXC8yArji7hNohL6iKwVLgGu6DIqK6vbDwXrm8ZncUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P2CVymoTz/TMkNAGzMKyK6lKDIVbqMbIE4IP1cjOxVU=;
 b=Fb/I34lMvQjLpk13CRNtH1Cqgbz2upZ+CKGMBzAs93SVjeDMSw3pvnlw6L4bACQ0kbYtFJKIVI/NX6cT35pCwtWhGIbW74HWTaTm/Db6GV2z+DLdCm0uT2onBuQS7/IoWyHKi+guJKfuQqhIsWIC7YzcYzU1je+0KpsolPVsv2q1xu83wJFYUnAvodKQF0PeKBwF+UsMXy5ZvO9f72Vg75lUlmsTxkjNYj3NENtm27nEXhLhVubz4RlOmSxKhzdzuPt3tO8cucfwwLWcq34RJ+KF3OzMTz2OWhOkksBqhZeus2Cwe7S7kmPrdCw8GEAt1OYVEymO4wUcuVYOcIFZcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intusurg.com; dmarc=pass action=none header.from=intusurg.com;
 dkim=pass header.d=intusurg.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=IntusurgOps.onmicrosoft.com; s=selector2-IntusurgOps-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P2CVymoTz/TMkNAGzMKyK6lKDIVbqMbIE4IP1cjOxVU=;
 b=9Y7JBCf/5Z0wvQ+hjZkY6CyUmgGj0adWl7+x5gF+69r2pLMEjiWRUs4z/aiPo4WvEgMHjFVpbkuUJKr1t4rEb1FGeaKV7QBACL29TOtbmFgt6i0RtxBpc5uYa+v/sN+weMAmOKhYIRH2GuE0Q2I/vRJ5eiyzTpKaiIYHzqUV4HA=
Received: from CY4PR01MB2328.prod.exchangelabs.com (10.169.252.16) by
 CY4PR01MB2520.prod.exchangelabs.com (10.173.37.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.13; Thu, 9 Jan 2020 21:02:31 +0000
Received: from CY4PR01MB2328.prod.exchangelabs.com
 ([fe80::e08e:9a14:332e:580b]) by CY4PR01MB2328.prod.exchangelabs.com
 ([fe80::e08e:9a14:332e:580b%8]) with mapi id 15.20.2623.010; Thu, 9 Jan 2020
 21:02:31 +0000
From: "Daniel" <daniel.wang@intusurg.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: [meta-security][PATCH 1/3] Updates tpm2-abrmd.default and fix indentation in tpm2-abrmd-init.sh
Thread-Topic: [meta-security][PATCH 1/3] Updates tpm2-abrmd.default and fix
 indentation in  tpm2-abrmd-init.sh
Thread-Index: AQHVxy/t8PLtjbL8IUuUQnjDJBInKQ==
Date: Thu, 9 Jan 2020 21:02:31 +0000
Message-ID: 
 <CY4PR01MB232892103984E2E8641194B49A390@CY4PR01MB2328.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Daniel.Wang@intusurg.com; 
x-originating-ip: [204.27.197.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 80bcbb37-6fe1-4b48-f730-08d795473e58
x-ms-traffictypediagnostic: CY4PR01MB2520:
x-microsoft-antispam-prvs: 
 <CY4PR01MB25205484A4611E5574ED48DE9A390@CY4PR01MB2520.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 02778BF158
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10019020)(396003)(39860400002)(366004)(346002)(376002)(136003)(189003)(199004)(55016002)(316002)(9686003)(7696005)(19627405001)(186003)(71200400001)(6506007)(33656002)(81166006)(2906002)(8676002)(81156014)(6916009)(76116006)(26005)(8936002)(5660300002)(66446008)(64756008)(52536014)(66946007)(86362001)(66476007)(66556008)(478600001);DIR:OUT;SFP:1102;SCL:1;SRVR:CY4PR01MB2520;H:CY4PR01MB2328.prod.exchangelabs.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: intusurg.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 1AtXP2biNcQ19yQiylR3hZkT7lM7fvKzm0rRV29SuW63Ykp+OoJDmSr1wIgtijPCSlB1mw8WHtxSts888iL7o74xBQ201w6ykFSfpvMYrGS4qFtD6ZeteMCc03Z1sJuXnnAWBCZ9Ks9nPkvkKzooICkHahEngnB/cJDPVpSdmsAZBjfpyDafDlGZPNv0JE5M9iOGRieQ0Y54+xu2JSNkA1wDj6/v/q/SUwwUW9Wyj0RiihkOtddsTL566L42rI2HQnp+LA/76EsznnZNVvfmFPuIDwMTZ1ERha6dxUY2ZA1R0bua8haPBCHDBbOUpWKbXFCs4rNmTaORia5Rergb2sLxmXK7XvOAyQy2Qy/8X1IB7CbuOqLm558YtRUMlsjmBsSBeuTxQdphPO3yYyWctNa9xHYWt91NZcrDCOsVVt+uaGANUYrDMiUUof3MGtDw
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: intusurg.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80bcbb37-6fe1-4b48-f730-08d795473e58
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2020 21:02:31.4740
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 039caf84-d3e9-4cb9-8b4a-2c2e17a80c19
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VyVmtPvk1QHYjYU2XEmQDn42jqQPcPsI6eqLWEb8bhDnts5O0WxmZonY2x8CUatNtLiPm2XWprhLB3KU80C/yEvFOLDcBbMHflJslILTYko=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR01MB2520
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY4PR01MB232892103984E2E8641194B49A390CY4PR01MB2328prod_"

--_000_CY4PR01MB232892103984E2E8641194B49A390CY4PR01MB2328prod_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

The current version of tpm2-abrmd does not support
`--max-transient-objects` and `--fail-on-loaded-trans`.
With those arguments the start-stop-daemon in init script
will fail silently.

Also fix one line indentation to make it consistent.

Signed-off-by: Daniel Wang <daniel.wang@intusurg.com>
---
 meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd-init.sh | 2 +-
 meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd.default | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd-init.sh b/me=
ta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd-init.sh
index c8dfb7d..1b15bbb 100644
--- a/meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd-init.sh
+++ b/meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd-init.sh
@@ -45,7 +45,7 @@ case "${1}" in

  start-stop-daemon --stop --quiet --oknodo --pidfile /var/run/${NAME}.pid =
--user ${USER} --exec ${DAEMON}
  RETVAL=3D"$?"
-                echo  "$NAME."
+ echo  "$NAME."
  rm -f /var/run/${NAME}.pid
  exit $RETVAL
  ;;
diff --git a/meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd.default b/me=
ta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd.default
index 987978a..b4b3c20 100644
--- a/meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd.default
+++ b/meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd.default
@@ -1 +1 @@
-DAEMON_OPTS=3D"--tcti=3Ddevice --logger=3Dsyslog --max-connections=3D20 --=
max-transient-objects=3D20 --fail-on-loaded-trans"
+DAEMON_OPTS=3D"--tcti=3Ddevice --logger=3Dsyslog --max-connections=3D20 --=
max-transients=3D20 --flush-all"
--
2.7.4

--_000_CY4PR01MB232892103984E2E8641194B49A390CY4PR01MB2328prod_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>The current version of tpm2-abrmd does not support<br>
</span>
<div>`--max-transient-objects` and `--fail-on-loaded-trans`.<br>
</div>
<div>With those arguments the start-stop-daemon in init script<br>
</div>
<div>will fail silently.<br>
</div>
<div><br>
</div>
<div>Also fix one line indentation to make it consistent.<br>
</div>
<div><br>
</div>
<div>Signed-off-by: Daniel Wang &lt;daniel.wang@intusurg.com&gt;<br>
</div>
<div>---<br>
</div>
<div>&nbsp;meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd-init.sh | 2 &#=
43;-<br>
</div>
<div>&nbsp;meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd.default | 2 &#=
43;-<br>
</div>
<div>&nbsp;2 files changed, 2 insertions(&#43;), 2 deletions(-)<br>
</div>
<div><br>
</div>
<div>diff --git a/meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd-init.sh=
 b/meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd-init.sh<br>
</div>
<div>index c8dfb7d..1b15bbb 100644<br>
</div>
<div>--- a/meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd-init.sh<br>
</div>
<div>&#43;&#43;&#43; b/meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd-in=
it.sh<br>
</div>
<div>@@ -45,7 &#43;45,7 @@ case &quot;${1}&quot; in<br>
</div>
<div>&nbsp;<br>
</div>
<div>&nbsp; start-stop-daemon --stop --quiet --oknodo --pidfile /var/run/${=
NAME}.pid --user ${USER} --exec ${DAEMON}<br>
</div>
<div>&nbsp; RETVAL=3D&quot;$?&quot;<br>
</div>
<div>- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;echo &nbsp;&q=
uot;$NAME.&quot;<br>
</div>
<div>&#43; echo &nbsp;&quot;$NAME.&quot;<br>
</div>
<div>&nbsp; rm -f /var/run/${NAME}.pid<br>
</div>
<div>&nbsp; exit $RETVAL<br>
</div>
<div>&nbsp; ;;<br>
</div>
<div>diff --git a/meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd.default=
 b/meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd.default<br>
</div>
<div>index 987978a..b4b3c20 100644<br>
</div>
<div>--- a/meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd.default<br>
</div>
<div>&#43;&#43;&#43; b/meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd.de=
fault<br>
</div>
<div>@@ -1 &#43;1 @@<br>
</div>
<div>-DAEMON_OPTS=3D&quot;--tcti=3Ddevice --logger=3Dsyslog --max-connectio=
ns=3D20 --max-transient-objects=3D20 --fail-on-loaded-trans&quot;<br>
</div>
<div>&#43;DAEMON_OPTS=3D&quot;--tcti=3Ddevice --logger=3Dsyslog --max-conne=
ctions=3D20 --max-transients=3D20 --flush-all&quot;<br>
</div>
<div>-- <br>
</div>
<span>2.7.4</span><br>
</div>
</body>
</html>

--_000_CY4PR01MB232892103984E2E8641194B49A390CY4PR01MB2328prod_--
