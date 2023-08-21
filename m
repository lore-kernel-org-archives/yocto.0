Return-Path: <holger.sebert.ext@karlstorz.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5909EE49A6
	for <webhook@archiver.kernel.org>; Mon, 21 Aug 2023 13:48:45 +0000 (UTC)
Received: from mx07-0040c702.pphosted.com (mx07-0040c702.pphosted.com [205.220.184.135])
 by mx.groups.io with SMTP id smtpd.web11.92.1692625723413823606
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Aug 2023 06:48:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@karlstorz.com header.s=S-DKIM-20210427 header.b=VNYkHDDo;
 spf=pass (domain: karlstorz.com, ip: 205.220.184.135, mailfrom: holger.sebert.ext@karlstorz.com)
Received: from pps.filterd (m0267679.ppops.net [127.0.0.1])
	by mx07-0040c702.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 37L5AM0M005875
	for <yocto@lists.yoctoproject.org>; Mon, 21 Aug 2023 13:48:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=karlstorz.com;
	 h=from:to:subject:date:message-id:content-type
	:content-transfer-encoding:mime-version; s=S-DKIM-20210427; bh=x
	SGfW2fBhKIdW/XweSZHKoxPL1vHjW1G9hV/I2r7Xa0=; b=VNYkHDDoXmmXT3g3x
	uYybV1Th6Ah40Y54qvHB1Wl7ujE23HfzjyY9eidXnBTNoII6THT46Ij/Cll8uuT2
	7Gzp4ZKNg1yF5RTK5qTuNMMgyiedZKq/KjNMuUI/CR9o+mQZ8O8M3ikdSZsmC1t8
	VNGtm5PVBpeL2Wm6tI3c+r3YdqL8vlJp/3+IxSw5xL08WLif0TSUKOodPeck1fMJ
	jxmyrE97v5O7jfkw7XypN9aGVCNTI3i8QCRanwTjZxhU+XXWcaGgdfXlJ5BCmSLq
	PqFZ2l82ZLn+n8zn05tvs5h76AObS4ARG/EzXGEXL1UPEIPR54iZ+oF/DNG8YM1a
	iBJqQ==
Received: from eur01-he1-obe.outbound.protection.outlook.com (mail-he1eur01lp2059.outbound.protection.outlook.com [104.47.0.59])
	by mx07-0040c702.pphosted.com (PPS) with ESMTPS id 3skvft1s0h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Mon, 21 Aug 2023 13:48:41 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RYy4tvQ/Mz/MecXL9DMWWCzMHyPIl5bVP1Gn7RkTKaCAaO4klBEzxZGzvOK2xo9xjGB7DDvCIJqo4EHSN11gu5If0gzzqgJmQ4mQILj+RM/zkMV3ZOGc2GyPcz0icFpNAUC1T3ugSOYVZqFDOHuLhSPmJUtwWVof8ej286RNQ9JybXDqBzdDVlAl4wiK/NzQcnUnzOIpBoC7z10Fv3mQLWZIW5gdJIQdYGNV+adoJVQknz5WBLciV/sbN73zy7PylsCKpnLR6JE90W+tvJ3x/NmbK9Jzaij5UE+4OBdVlG1Ndr8Y9PxDO7o5xqv1mlfbmGcCqTXflBRC3o+q3XBjrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xSGfW2fBhKIdW/XweSZHKoxPL1vHjW1G9hV/I2r7Xa0=;
 b=EJpdHq6GUjWsdJqrlMwSoCr7DqfmrLtrDsVZ4EThl5LhMaxDp3QqjEoxVyZUE9TkxRrQquo7Iys/SUUNKWLWZTuL9wMMZzaq3oEySnjO/E795P+5tnhc2f/SqDM5ahy7xRbGc8yyB3y5u24vHxF5/bGl/kbfzv/eZprsnSztSjroKZ14VDngMJ6cst+Floj+opXtPqknXDCkLKCeEkQ877BHSzJFRnYKFkrZSP4BZkd6sV97vpbSWbyV7juhSbqsjA2CwVJNjbz5pBYF+iD4WJ3wtpa5b+8zrL3EOJlqRYmiXVB11vvgI3bSkGD4EH6a5o9mTivTQH+7eDywAPjLbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=karlstorz.com; dmarc=pass action=none
 header.from=karlstorz.com; dkim=pass header.d=karlstorz.com; arc=none
Received: from DB6PR01MB3736.eurprd01.prod.exchangelabs.com
 (2603:10a6:6:4b::33) by AS8PR01MB7207.eurprd01.prod.exchangelabs.com
 (2603:10a6:20b:251::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6723.11; Mon, 21 Aug
 2023 13:48:39 +0000
Received: from DB6PR01MB3736.eurprd01.prod.exchangelabs.com
 ([fe80::91fe:d06c:d05e:e7fc]) by DB6PR01MB3736.eurprd01.prod.exchangelabs.com
 ([fe80::91fe:d06c:d05e:e7fc%4]) with mapi id 15.20.6723.010; Mon, 21 Aug 2023
 13:48:39 +0000
From: "Sebert, Holger.ext" <Holger.Sebert.ext@karlstorz.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Poky/Mickledore bitbake menuconfig does not work
Thread-Topic: Poky/Mickledore bitbake menuconfig does not work
Thread-Index: AQHZ1DYOodfcLqTr5kCXbZ8j8HLS6Q==
Date: Mon, 21 Aug 2023 13:48:38 +0000
Message-ID: 
 <DB6PR01MB3736481355587A417D929794A41EA@DB6PR01MB3736.eurprd01.prod.exchangelabs.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB6PR01MB3736:EE_|AS8PR01MB7207:EE_
x-ms-office365-filtering-correlation-id: 41a48e11-5940-4dce-6358-08dba24d52db
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 3yd96WGIn5/cSTznrhOZNZFkQ3pgAQWtGCraQfX7rN1LLX8jzJeFbZM9UlOth/xtCSlWgGg+vrJVwz+J2EiLA6W/dUSJ8R2Ra80+AedJR+0/YYZJrkUEzPSXWor0FqIk6OCWoeQxihF8HsANXbyjbPmojcELLT0s++LcUwiyYdSpIirKcy22hXDEx9A5poAbLyWWp6dCf7hnB/Ed5nkFKwgNcbTZe7Qq3TcBV+OYTR5FBUR4bxlGFqZvBi7tHQ1/73gT6raVidqei7672WYE7xzlNnBjv6VDK2zKkNF4MiWqXfkvxoP3o61yg0RvnmplRy9XsJdf3+KRdfQ6O0k4AwzwFMR0ysXf43j4lQhvnvJBnrXZBD1GXduvPpqdJYA+tC+RfTstlNiOgmlFEKb1X4j1noKBUmKgyIlkNZhAtfB86X6+rd9ZY0RSiiCpotIOsZ+yVhHrIa9TcqKKSXO3oKlpQaoWnq4HkOIOnmst5IZfSU8BHyXkjPFM8YLG3bdqK9l50+FLgJ03qvwIdEzwIylvJov2y3kiBsDh4lFqHPkx1pOrQhGb/ASH8chEzan8sK8wv1H8ZOgHOQ9jy51MJDRoLOkcQhUPrIDhgJnZ5EZpbxyhSXoG9Yzmky/3Ia2k
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB6PR01MB3736.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(366004)(39860400002)(376002)(136003)(396003)(451199024)(186009)(1800799009)(2906002)(38100700002)(38070700005)(6506007)(83380400001)(5660300002)(52536014)(33656002)(26005)(7696005)(86362001)(8676002)(8936002)(316002)(9686003)(66946007)(64756008)(6916009)(66446008)(66556008)(76116006)(66476007)(91956017)(478600001)(122000001)(55016003)(71200400001)(41300700001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?169/ZgCcX4TIMLTwbmsX+/wcqekw6pPnTMnyGUckgNmo0Mh7ah9dUsNmtO?=
 =?iso-8859-1?Q?YLK5fO12kAf0+CSdYi+lCs3acCv9+fzQormRIXtrZVdbKsUY8HLIorZCht?=
 =?iso-8859-1?Q?1GEpNV6SMCbxIu9d8Y2UmNdBNfMoBU3Rkq12TKKKGU1c+uYUSBwN5s96PL?=
 =?iso-8859-1?Q?KIe1g5FpSzf+3PCx+6wOHs8+gb5Uz/hr6IZ6bzoR0LTNSBPPHPGEBKFP0+?=
 =?iso-8859-1?Q?Wv5ww6T//Qu6aRwxNN1jh8kHvooyebbCBmVrIL8tNdLzKvR0D5qqhxahcd?=
 =?iso-8859-1?Q?UEZi7DTnO3ZVNRMyg+qHFB0VjyUfVokrjLg2TNUjXViChEATwTZTuYtToC?=
 =?iso-8859-1?Q?dd4J0pJ75tlhmItx8z8FxyzArjDK4qqo+5Yj12NoJ37qRJdAnXbR+B72BK?=
 =?iso-8859-1?Q?4jhrFY1Z475RaQGsh5C6Co031WHavNgv+f6qoy2lCIiWjnQWAsVbpRn2fO?=
 =?iso-8859-1?Q?IYc8nzhm3NFAuBdQPD9pgWrVoiDhXok8H6xUqn+56/U+XE7oeXnvS2Z/wx?=
 =?iso-8859-1?Q?zWfi2b2Ap1WkQgPO+iPSUC4X8Dt0adNoZgqoXkNFumULQukAet8Pv8TxNC?=
 =?iso-8859-1?Q?lArttrvKFp6GqYr0uqT3AHBnSJF60vLUHoFsEmCeuOsT2NZ16H4Zm/3f2g?=
 =?iso-8859-1?Q?/9Z+ZD7bbzjU+xkecLpFTi3Zf6qt4utQp6P6wGoQ/mW4lubfXYX/0YkvcU?=
 =?iso-8859-1?Q?UGWlK7ymn4PaF4w1VCLuusVyHCqKhJzG0FOOdggZivBxshTH6+TjPDPAxj?=
 =?iso-8859-1?Q?MKkOKA/JjI+AwLF9fDPFWbZ7wReleWPaWCl5sGJ+/ybM1QyytsXggvrV26?=
 =?iso-8859-1?Q?nLpzlN7Itaq/aHTOHkEiO1JKvWqRk8LrHm7Bmz81NN4AI82DypWvlh4ZL0?=
 =?iso-8859-1?Q?pIUoGN9BsCOt+dNiMWKY3oUvdiGqgZ38HtB24G9RKXW523qxg4jmp2keoI?=
 =?iso-8859-1?Q?qtLTDG79Fq9nWTveZ+plaxcybOg0vjO4rMRYViB2tOUXCFh5PNcjhKlOXo?=
 =?iso-8859-1?Q?rExq+yWZMSIU+zvMkjozDIAl7ZbvMU6otKzWiFPX9aiS3ObUo0rDBSPMpe?=
 =?iso-8859-1?Q?XfQc4cNjXo9KoC2PHTyEO6JcmLRrKHqIck40rTLmXq4DJ6Iw/P6MugRBzB?=
 =?iso-8859-1?Q?C8a8jGKFv9PHw5s6lsQLtSbHYK20rt0tWvrPm/v9ufOgSLiaVeKDDLoFFA?=
 =?iso-8859-1?Q?5XVXVdT3nrvtlc7UmJwcnrBZUYdLb3F4UaVkPjFG4xGIc7JnM5pYVNovW9?=
 =?iso-8859-1?Q?vyqJuyZA8o0ogrb1nGnUlufgOwYoTc0fzHMnGkGZMwYqxVX/VpQWH9Vu98?=
 =?iso-8859-1?Q?vVh8XetpoVJPgTrcT6GTHC/wdoPn+rM+ISAZOndv2hkMZ3wc8nZWSJnZX7?=
 =?iso-8859-1?Q?NsjI/7smVIIMGdetkMlc0VBAb/r8M2BWFgoy0aXBcX2P07sW2qq4JqyF6x?=
 =?iso-8859-1?Q?SGOS29N/q2bBI8FGhTBKerzd82FMBe/I8X3eO+kNK5XkYIGvC/pMQcVt/P?=
 =?iso-8859-1?Q?aDcMFivjLz+icELqruDdkxkQW9fOoN4Q1zQdVfrhHqaO/sji1bkG9309fU?=
 =?iso-8859-1?Q?pyVj50A4Fg/3L26w0em6p8SdXYHBR2uo1/QjezvklJIK0zQIAKIsw+FO7U?=
 =?iso-8859-1?Q?jIgO0Cm85eWSk0nbyD/xQ6uKvsuQ5Ge7m8VxJ5OgOXN5VjPCzv5O8c1g?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: karlstorz.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB6PR01MB3736.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 41a48e11-5940-4dce-6358-08dba24d52db
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2023 13:48:38.8733
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4a0b6f21-e6e1-4ed6-9dcf-e60e7190f648
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZE40RyOH5ybsEEVzL7Lt3WvjH15pZbJr7enzoARQa90CCHRmRiBMB9Fult6ZwlILpFTt2Ab+UeYyDzk34dVGh7adAO6MvBOVfMZm56Ii8yQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR01MB7207
X-Proofpoint-ORIG-GUID: S33udRZXwNRacZ-DBiE9auXE1y8VjA85
X-Proofpoint-GUID: S33udRZXwNRacZ-DBiE9auXE1y8VjA85
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-21_01,2023-08-18_01,2023-05-22_02
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Aug 2023 13:48:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60840

Hi,=0A=
=0A=
I am using a Yocto-Poky-Mickledore (version 4.2.1) based system.=0A=
=0A=
For configuring the kernel, I would like to use the command=0A=
=0A=
    bitbake -c menuconfig virtual/kernel=0A=
=0A=
If I do that, Bitbake opens an xterm window and runs the build steps=0A=
for Kconfig. However, after the compiler has finised, the xterm window=0A=
immediately closes and Bitbake exists as if nothing happened, i.e. it=0A=
does not show any error message or similar.=0A=
=0A=
I investigated the problem and found out that, internally, Bitbake=0A=
calls the following command for starting Kconfig:=0A=
=0A=
    make menuconfig CC=3D"ccache x86_64-system-linux-gcc ..." \=0A=
        CFLAGS=3D"..." HOSTCC=3D"ccache gcc" HOSTCCFLAGS=3D"..."=0A=
=0A=
The quotes, however, seem to get lost when starting the actual command=0A=
in the terminal. This leads to a command line like follows:=0A=
=0A=
    make menuconfig CC=3Dccache x86_64-system-linux-gcc ... \=0A=
        CFLAGS=3D... HOSTCC=3D"ccache gcc" HOSTCCFLAGS=3D"...=0A=
=0A=
which is clearly wrong.=0A=
=0A=
The following patch fixes the problem in meta/classes-recipe/cml1.bbclass:=
=0A=
=0A=
diff --git a/meta/classes-recipe/cml1.bbclass b/meta/classes-recipe/cml1.bb=
class=0A=
index a09a042c3f..d6001d6fd0 100644=0A=
--- a/meta/classes-recipe/cml1.bbclass=0A=
+++ b/meta/classes-recipe/cml1.bbclass=0A=
@@ -53,7 +53,8 @@ python do_menuconfig() {=0A=
     # ensure that environment variables are overwritten with this tasks 'd=
' values=0A=
     d.appendVar("OE_TERMINAL_EXPORTS", " PKG_CONFIG_DIR PKG_CONFIG_PATH PK=
G_CONFIG_LIBDIR PKG_CONFIG_SYSROOT_DIR")=0A=
=0A=
-    oe_terminal("sh -c \"make %s; if [ \\$? -ne 0 ]; then echo 'Command fa=
iled.'; printf 'Press any key to continue... '; read r; fi\"" % d.getVar('K=
CONFIG_CONFIG_COMMAND'),=0A=
+    make_cmd =3D "make %s" % d.getVar('KCONFIG_CONFIG_COMMAND').replace('"=
', '\\"')=0A=
+    oe_terminal("sh -c \"%s; if [ \\$? -ne 0 ]; then echo 'Command failed.=
'; printf 'Press any key to continue... '; read r; fi\"" % make_cmd,=0A=
                 d.getVar('PN') + ' Configuration', d)=0A=
=0A=
What do you think? Is my observed behavior a configuration error of my=0A=
setup or does the patch above indeed make sense?=0A=
=0A=
Best regards,=0A=
Holger=0A=

