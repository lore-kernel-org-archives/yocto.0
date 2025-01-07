Return-Path: <kumar.manu@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989D5E77197
	for <webhook@archiver.kernel.org>; Tue,  7 Jan 2025 16:37:29 +0000 (UTC)
Received: from HK3PR03CU002.outbound.protection.outlook.com (HK3PR03CU002.outbound.protection.outlook.com [52.101.129.66])
 by mx.groups.io with SMTP id smtpd.web11.25243.1736267845659764037
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jan 2025 08:37:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=jOahOJ7R;
 spf=pass (domain: siemens.com, ip: 52.101.129.66, mailfrom: kumar.manu@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TLjPRzBKMBphs0KekfkQJWhGQKhTELpdgpGep5vVWNGJYlMopOQTIwzyj103AgKumw/NyGhnF0/VeCFb7E62PoicI/Tu3LdtuC15xoy1KmHveu64JLGRfdq2rxqoLEkVWUXkyzNa7oNRjLw6s8mAu8Ps0qnI6cdzBeVAdNJ/isdO+ekKDU9HyHUsNEsmIfQFnNCYtbTaU0Pnok5vlBSKknSZuz+IorbJLZXrISz4dAk0N87XJxn4nhsWNSPmUiSo1LHcJM7FnHrTtH8wFkiW/htSz8c/vwzhiEC5ino0FdDPqhOBoUzb8jw2t4vkWCB0GWfjppjVVPGtKsTp0cQoUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dg+N8Ywij3SyqCzRRFzM1S/ipSJcT1WAgh00zJyDhfA=;
 b=UtLJgcn4/SRXcVjsLn+WxoWHoh3D2zawpXWclyGQurykhJb8bIWYdFpRbcbdvY80XpKjqNqGMxTGBkK1ePlWwt0FEjhAvy+2dKO01F49RHxZf/Hic2v+rdvoP/3GRA5bszi6EZcu35UNeujQMrTiNO+G65CKRFBW0l8I23vFm8PllrED/oCcnh9w0j4yA175x8sBraNSKCoi7IcJMCmZd9gRtkH5QZAhEW7q1OVnzttgHK0aZKe/6hnZw5YSwYSZP8h6dDKMkTNh+hcEIXH6A2bDsyamEFxOFLO7rNY93xjBzHSnD/vxLik035AMaaFnZThrVOLkpe0GoR0fxNQ8+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dg+N8Ywij3SyqCzRRFzM1S/ipSJcT1WAgh00zJyDhfA=;
 b=jOahOJ7RbSPZyy/DQzTyXdhAzs0WEJB8WgS2j5CDKEc5RDfyZSA2hbdF1LMMp0ikrgjl4oTpzuCF7BJrgizkN7u4/tn7iPNtwHuRxDe1mJCT7ef3BnoriDlOBHoelyBAC6lZaHDRln9kETeTqrBFIOFZSDwopEgN2JyTpJe+bH4m/PRtqVKXeqzncj6yiaSx3rMhUrkI7wR3f+lDgEI+dW/OZUhMc3u+A1lmnIUDg14aPjeNH5p0VRhHvWcIYi6Y09vOF3987DZyhWZ2EWnlW6D7ajxDFm2pBVhqNn1WMTyVHi+ip5NN0v69gHVzHvRaL6g+zRQsqXzGZI7XeccVJg==
Received: from TYZPR06MB5178.apcprd06.prod.outlook.com (2603:1096:400:1f7::12)
 by TYUPR06MB6244.apcprd06.prod.outlook.com (2603:1096:400:35c::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.9; Tue, 7 Jan
 2025 16:37:21 +0000
Received: from TYZPR06MB5178.apcprd06.prod.outlook.com
 ([fe80::f6de:c016:c33a:318]) by TYZPR06MB5178.apcprd06.prod.outlook.com
 ([fe80::f6de:c016:c33a:318%6]) with mapi id 15.20.8335.007; Tue, 7 Jan 2025
 16:37:21 +0000
From: "Kumar, Manu" <kumar.manu@siemens.com>
To: Gyorgy Sarvari <skandigraun@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: RE: [yocto] Query: Regarding lighttpd/librarries in /usr/lib not
 copying
Thread-Topic: [yocto] Query: Regarding lighttpd/librarries in /usr/lib not
 copying
Thread-Index: 
 Adtf6VoFMsgJcOJER+q6cre+/gzlBwAPQLMAAATTiOYABKyjAAAYT/rAAAgPmoAABVvkoAABVCOAAAFqN4AADN/1QA==
Date: Tue, 7 Jan 2025 16:37:20 +0000
Message-ID: 
 <TYZPR06MB5178AB7FF8792D7ABBC1A47286112@TYZPR06MB5178.apcprd06.prod.outlook.com>
References: 
 <TYZPR06MB5178D4A9A5949582BCFB9C5286102@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <b8af4304-ee4b-4903-8d4d-2d91b804e393@gmail.com>
 <SI2PR06MB517020EDA3F2E22BC5EA20B186102@SI2PR06MB5170.apcprd06.prod.outlook.com>
 <767702b3-302c-4695-96f2-7299547f2da8@gmail.com>
 <TYZPR06MB51784D93F9A0D31C8265747A86112@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <5af3a54b-8f9f-4a16-ab36-e886d23fc2c9@gmail.com>
 <TYZPR06MB5178AF5905FCB5E5C445A0AB86112@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <TYZPR06MB51783A4E0A436D1469C9120286112@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <6bd68955-44a5-4a5b-b1f8-990643cb698a@gmail.com>
In-Reply-To: <6bd68955-44a5-4a5b-b1f8-990643cb698a@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=d8ffed75-e862-48af-868c-1a63f00b598f;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-01-07T16:32:39Z;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR06MB5178:EE_|TYUPR06MB6244:EE_
x-ms-office365-filtering-correlation-id: 5f6d3804-0bde-490b-5554-08dd2f398eb6
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?JeMLrLogCRfZB6519Bt40X+ja6h0cxYEE4Gv4cv6OVBewYgs+hg6nK2/TUwY?=
 =?us-ascii?Q?DogLGe5bWYqIWWh/OKrsLjlmxH/MqrKH6tBSuHhaysc4q7xGl8hyxk2+XhnP?=
 =?us-ascii?Q?1+yPh/YlYO/4BGB4ZbVq3CfCoNjiAPatJlOaJc6CwLSUFUkqgjSo31WTcvuL?=
 =?us-ascii?Q?rnqfTkUuTrrW8ES7jDTMEtLzqEE/reTqhCIrev3sMP/4ueO6R9nmOD933Lfc?=
 =?us-ascii?Q?kK7NooE+xXeqrE5JoabIn5zKxVg2UCt+yWkVccVjMoZ0arY9F0PJzqm3oYdj?=
 =?us-ascii?Q?10Qo1mtq7qpjAnsptdsB4wZHxUsVQ9oDmfdVX5gI5GZQ5Ciljxe326RV4k6h?=
 =?us-ascii?Q?WzbrODKGxYzlX6hNK2m7LOiA+ttCK7ivEFAtnMSSk6yGcQFdbWC3INvnhh3+?=
 =?us-ascii?Q?mFfazDEz9rPuzL+e9E59Wwf0vR1X0/Y3TM1yxPZJ0hPzKfl4v7Yh4X87C0Yj?=
 =?us-ascii?Q?PTDli2Vs/zIeliVb2IdUdgaZ4so53wWEbCTVOwTjCt5B+6EfUcsXbKQJm6Fc?=
 =?us-ascii?Q?ozMZ9Lu5NKzdQtgd7/b1NNXofawfqmDDgzAIxB0sbcWiFyHqr7xXhioh0D0P?=
 =?us-ascii?Q?//K9IFNsDYz9jIdxwz8o+j5YTinxNh2HXDUVOL5JxxCY5D03scrZwAw1h6bp?=
 =?us-ascii?Q?5vawoBX89obN9K9BnHcEtrHWjTloXijlycmIY3Gl+q4U0kKpa/tuJhwG1B+K?=
 =?us-ascii?Q?BMmcDpQihJL02SO6TXZ9pIPRPBc0GhA0UCEcysKan6neSsYoErYNBSkxTPBL?=
 =?us-ascii?Q?er0tJS9LXapjLPEqwPlQPzfwWZ4fKghLiPFiu7LQpDk5JIppHxbEYA3Q5nVL?=
 =?us-ascii?Q?lJt6uVuD8y/XPBMnVqBpjbjmbhh2VOXnoWpT1cihfI1lnVETzF5i8w1n6XZ2?=
 =?us-ascii?Q?yVI2LjUE7FgtvFyMQBi7TwWnpfImGyE4MmPYqRRCkbLTCS85IqjCL/e/xc0O?=
 =?us-ascii?Q?lt4248yonqcazheElU+48kzOV5HfailyJ6pVyuVTCZJ0EybHqEmyeTPtQqDK?=
 =?us-ascii?Q?pny9XKvwp7P7jqG/trC3zNR1FmsCXx5lebCSfKMQ+JUt1Aoqr0CTSAV3zAI9?=
 =?us-ascii?Q?2T1k7zKHHuMIvD009K2axOKL+N9uNNYS+eUkNO05VidrSWJdjxJgEYvnd5XU?=
 =?us-ascii?Q?zz3LqotfixsyLNSoJ7aCMSGFyQ45hhAgn8S20fVj8zDfY+Jgyv0x3Awjyz2y?=
 =?us-ascii?Q?/pSyELEwThIbOCjCXN1nY8acu8dZ9WNCn9tiBCu/VwKrws4kDJA6sLT+OYQx?=
 =?us-ascii?Q?QdxsrpgfnQqtfmU4vu7bLowmVQJ9B/zCtQJ+BbrUf8DETLpuhp7JO5C8mi2C?=
 =?us-ascii?Q?HbGykLexYelzn7yvgcl/TjabSdbuq/ZXRcbvkYYCqYhPcqaC1SKFda+oeJ8h?=
 =?us-ascii?Q?hIUR7thzvgArgs+bvW5uFINjFNA1?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR06MB5178.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?sr788k15Q6yTUGqn8Lh/fLc49HTR35c5lyLg+EyjDJs17GOXRKrxzVEgsndw?=
 =?us-ascii?Q?qjroZA6yOM1lN2kNejbKRczGRUStkNo8+IniFA/dDfjx2du7kKsJQsp9RJw2?=
 =?us-ascii?Q?kbXW3CX1KAZPVffloFQhFTaDhxu1SRVLAaXn2jROFo7ayLNALXbJ/trgrzXZ?=
 =?us-ascii?Q?XEIXHLhZnBSpcSA6G6IaIfgF6WFs7DyTOQD5UjBUa84XvDbww9rVGGxxC+eK?=
 =?us-ascii?Q?Hz84BDPOfl3gQ0T2cfK2sKkScdQDBqz9mQq+O6WDMVkIMuweYpPgbwZ3FYsU?=
 =?us-ascii?Q?V7/WPKi4LFDnDywUsRVK+7bgn4s0VTOR6dN/jEB/8yED+6QFuaep96lpk5sf?=
 =?us-ascii?Q?V3o5JY/ZgyRmLCoeI/480tzzhLltOFqQzvyyfUWPJhxVV47qeesyiSOyFNgw?=
 =?us-ascii?Q?vHH04E26YovnzWRM54TCU1Vjfe1tvPUtIxyusv5SYD/g0mjzQOz9F49GwdpK?=
 =?us-ascii?Q?pYCOF53LkFRo4VrcuRm+xARRDiNrT6jHAru4KLoELfb3a0TErEURPck8ELk1?=
 =?us-ascii?Q?MigbMby0FNsqbq5W4PqtUJnX+IdcXZUmF85EG39s0OgYk7IpSVluOMHv3Rh4?=
 =?us-ascii?Q?WuVBdjIBBYlTwTnbwNP6zOArF6fhAu5Mglvxx0bUjpxV39fYKIsu24tq+rdf?=
 =?us-ascii?Q?4dsHEG67OV5gRBO12J9qs7cWg6crUWwZjEOhbTh/oPDeybPxRF8SJdB6OGrH?=
 =?us-ascii?Q?FZm32bSmMNIOOY0B/nFpTBZyexZXUW4wvC6sgG1lwhkgC2EzJm+GwDIQ8t4F?=
 =?us-ascii?Q?krVQmt0vDCsEGkh8dgb9pbsLuYdZ8tYjZD2sznGq35kBH9lSGbCfb1o63rUT?=
 =?us-ascii?Q?aOSz+CeCjqp1iZ2MoyClM6FJHoRG0QUb6MBwxsbeK7tsFExhnp/WEQ91ufSq?=
 =?us-ascii?Q?nI1+iBGDfJhxFGmnM7oT2PzgHxKskSdKwZqF+70RrD3E9EKGFfk5B9LPKWIR?=
 =?us-ascii?Q?rMB/EOWMZhzAUIRyajWRn8OALWFkRxJG8dYs0LsiBucmfCzfO4fCTyzGYbj1?=
 =?us-ascii?Q?6kjg9UAXdfd7Lo4qQjMgaiamwlzxF8JWef2j/yTtkMvGwRuWLD0M8hadJFN5?=
 =?us-ascii?Q?Ch2qIfl/Y8l4SJjC0XZLKyBxTJ2bSll3YOIyG1wgKHko7M2X7JwjyMwzBcNH?=
 =?us-ascii?Q?DeqXE6AaJEg4+3n/cIH0YuEgWORK01ke9WHxVy6a8Cg1i5po92nCFpN31yDk?=
 =?us-ascii?Q?aOYIbz9tY8MoNpMF6rf7Zg53YKznjg+yEtcQbMKOCj4DlKiKvjFdHXQR0QVo?=
 =?us-ascii?Q?Hwo1V42bO7HjiIQ3L0zaKZJUctoj8NE6DGkD+FRnSAIapvkGDSMmZQfK88vw?=
 =?us-ascii?Q?1s6aPsTijC0wU41+B47gTHbrf9Gd2cAmmhcFs0dpzAiPqdfdRC6m3beC5mIM?=
 =?us-ascii?Q?oWEdFNxRbXnD4icOWf4m4YeHsw5E9zc1NxmzhhzYsSMuOsfOYKGvdqVkuw7/?=
 =?us-ascii?Q?9OaP4AJpg/E+PQh7d/DcCYpJTirNoQhfsVwZSCmg6qGStoMUCSYai0PmOXDL?=
 =?us-ascii?Q?76k1Y+lE8nxNwfT3f+23OE/gQgjrGoLSMWkN3Ye9QvHpt8A+B2azlw0Ur+8r?=
 =?us-ascii?Q?E9MOKA6HuoZGp7kZfokhRvx+uik4MyqnLFuuGvCr?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR06MB5178.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f6d3804-0bde-490b-5554-08dd2f398eb6
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2025 16:37:21.0310
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3mr/QOZbD9WvkJIISGo4zqVmTCvVpkXDxcNtoO2uXqLo82pt4q+wMTVvH6troJ5FWlfv3ykAO/KiB0BDcye/3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYUPR06MB6244
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Jan 2025 16:37:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64511

I have tried to change "sources/oe-core/meta/recipes-extended/lighttpd/ligh=
ttpd_1.4.67" only last 2 lines as below,
python populate_packages:prepend () {
    lighttpd_libdir =3D d.expand('${libdir}')
    do_split_packages(d, lighttpd_libdir, r'^mod_(.*)\.so$', 'lighttpd-modu=
le-%s', 'Lighttpd module for %s', extra_depends=3D'')
}

But I am getting error as below,

NOTE: Executing Tasks
ERROR: lighttpd-1.4.67-r0 do_package: QA Issue: lighttpd: Files/directories=
 were installed but not shipped in any package:
  /usr/lib/lighttpd/mod_alias.so
  /usr/lib/lighttpd/mod_wstunnel.so
  /usr/lib/lighttpd/mod_redirect.so
  /usr/lib/lighttpd/mod_webdav.so
  /usr/lib/lighttpd/mod_evhost.so
  /usr/lib/lighttpd/mod_authn_file.so
  /usr/lib/lighttpd/mod_secdownload.so
  /usr/lib/lighttpd/mod_staticfile.so
  /usr/lib/lighttpd/mod_usertrack.so
  /usr/lib/lighttpd/mod_setenv.so
  /usr/lib/lighttpd/mod_proxy.so
  /usr/lib/lighttpd/mod_indexfile.so
  /usr/lib/lighttpd/mod_auth.so
  /usr/lib/lighttpd/mod_ajp13.so
  /usr/lib/lighttpd/mod_deflate.so
  /usr/lib/lighttpd/mod_simple_vhost.so
  /usr/lib/lighttpd/mod_scgi.so
  /usr/lib/lighttpd/mod_openssl.so
  /usr/lib/lighttpd/mod_vhostdb.so
  /usr/lib/lighttpd/mod_accesslog.so
  /usr/lib/lighttpd/mod_fastcgi.so
  /usr/lib/lighttpd/mod_ssi.so
  /usr/lib/lighttpd/mod_dirlisting.so
  /usr/lib/lighttpd/mod_status.so
  /usr/lib/lighttpd/mod_access.so
  /usr/lib/lighttpd/mod_expire.so
  /usr/lib/lighttpd/mod_userdir.so
  /usr/lib/lighttpd/mod_sockproxy.so
  /usr/lib/lighttpd/mod_evasive.so
  /usr/lib/lighttpd/mod_cgi.so
  /usr/lib/lighttpd/mod_extforward.so
  /usr/lib/lighttpd/mod_rrdtool.so
  /usr/lib/lighttpd/mod_uploadprogress.so
  /usr/lib/lighttpd/mod_rewrite.so
Please set FILES such that these items are packaged. Alternatively if they =
are unneeded, avoid installing them or delete them within do_install.
lighttpd: 34 installed and not shipped files. [installed-vs-shipped]
ERROR: lighttpd-1.4.67-r0 do_package: Fatal QA errors were found, failing t=
ask.


Can you please help me how to overriding it in a bbappend or similar as you=
 mentioned in older thread.. it helps !!!

-----Original Message-----
From: Gyorgy Sarvari <skandigraun@gmail.com>
Sent: Tuesday, January 7, 2025 3:54 PM
To: Kumar, Manu (FT D IN PAMC MI EMB FW) <kumar.manu@siemens.com>; yocto@li=
sts.yoctoproject.org
Subject: Re: [yocto] Query: Regarding lighttpd/librarries in /usr/lib not c=
opying

On 07.01.25 11:05, Kumar, Manu wrote:
> reason behind ask this question is.. in earlier tisdk all the modules wer=
e there in "/usr/lib" as when we start lightpd service(which was there in (=
/etc/init.d) it will check modules in "/usr/lib". in the latest tisdk also =
if I run "systemctl start lighttpd" looks like it is searching "/usr/lib"
>
This change comes from this[1] commit (look at the very bottom of it).
If it causing problems, you can try overriding it in a bbappend or similar.=
 Though maybe it would be more interesting to look into why your ti-sdk is =
looking for these files at the incorrect place. TI layers are usually reaso=
nably maintained, I'd expect them to follow changes in the oe-core layer...

[1]:
https://git.yoctoproject.org/poky/commit/meta/recipes-extended/lighttpd?h=
=3Dkirkstone&id=3D3755f6c4eb404b6218784ad21c3a56312c425cc2


>
> -----Original Message-----
> From: Kumar, Manu (FT D IN PAMC MI EMB FW)
> Sent: Tuesday, January 7, 2025 2:37 PM
> To: Gyorgy Sarvari <skandigraun@gmail.com>;
> yocto@lists.yoctoproject.org
> Subject: RE: [yocto] Query: Regarding lighttpd/librarries in /usr/lib
> not copying
>
> Ok , I will try and let you know !!
>
> But how can I make all the modules to be present inside "/usr/lib" instea=
d of "/usr/lib/lighttpd" ?
>
> Regards
> Manu
>
>

