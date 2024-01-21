Return-Path: <holger.sebert.ext@karlstorz.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2ADE0C47422
	for <webhook@archiver.kernel.org>; Sun, 21 Jan 2024 18:57:55 +0000 (UTC)
Received: from mx07-0040c702.pphosted.com (mx07-0040c702.pphosted.com [205.220.184.135])
 by mx.groups.io with SMTP id smtpd.web11.54138.1705863470900262920
 for <yocto@lists.yoctoproject.org>;
 Sun, 21 Jan 2024 10:57:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@karlstorz.com header.s=S-DKIM-20210427 header.b=gI3Yk8Tr;
 spf=pass (domain: karlstorz.com, ip: 205.220.184.135, mailfrom: holger.sebert.ext@karlstorz.com)
Received: from pps.filterd (m0267679.ppops.net [127.0.0.1])
	by mx07-0040c702.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 40LIqXXt026391
	for <yocto@lists.yoctoproject.org>; Sun, 21 Jan 2024 18:57:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=karlstorz.com;
	 h=from:to:subject:date:message-id:content-type
	:content-transfer-encoding:mime-version; s=S-DKIM-20210427; bh=4
	u9qS5nBCOfG22ilbA20xMQ8p1b09l5Gjin40b4v9k8=; b=gI3Yk8TrHPO1Vosnn
	KTIdTitHpeZfE5Sr2H9ao7Hd8or8A8+sHoq/jO6SqvLxIXs6/tTwFpVVoRM9F5VY
	HUiICRpDkSwTmuGgcJe+sG3TcajrSaToIxVE3m8soq1ptLLF1jgTt0IdJ2xBB9gF
	WYJfmDSPsw3IrHMPIu4iI0LwjqyWk5NdlihWsCeTzdyBXe2/dFHQG6iEdSfxQxQI
	/jPWPGWltCM2N3YqEfXZRTAFI4xi4uNgZFXdyduJYhelQISitq1YHUZoKH/xoEDh
	aKawa3Muyn4WyPj9gZeUstTwXwAgbe4oW7XQGSIWIZLdbKnzdZ55V4RqqBoseods
	68wDA==
Received: from eur03-dba-obe.outbound.protection.outlook.com (mail-dbaeur03lp2169.outbound.protection.outlook.com [104.47.51.169])
	by mx07-0040c702.pphosted.com (PPS) with ESMTPS id 3vr4a1384w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Sun, 21 Jan 2024 18:57:48 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YzYb/RWLoT7sISVQ1HnHvIvNL5QZlI1BSeIlxW0RWtT6tEDSK30oF0p0uXOqV6B9F+HxznTif548s4SuXljhBHTVSsDMEmS4C9BKgkCe9roGZchTwCfQ9Op/l9dUicNnueUzu8aCcewFFvooYf5TUnJCGeONGQOsYBXDm3O1GJTa07vNZ3TjyUtBqjxhwzAZeEPJJGfBMzNg/u1TnLBkWQQPHunGMOUCxPzQKYDHCiuttXUdShqLOjdAgmyjiw1TcEQrJuJW5coJ4yZchAP6aD/w7oBu57ZA3gFf8ZKgO45DUFd1NXF5xULB/4yB0ZzUSINgQvlc65h3hBnDF6DZKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4u9qS5nBCOfG22ilbA20xMQ8p1b09l5Gjin40b4v9k8=;
 b=koNpk1kJIINkVLPNvrX+yo4uS6VYgs4i1KT3uDnM9a90UR942lR4JzGqCG4yNYZXR1Uz5/oBmX8X/CI8saOS30oc6rxVYFM25OQJdbqGLEqo/XqVKyl5lIayFwdxrSt5gTD7kIkqaXlkaelcfzgj8fMRBVHazhG/9pMPnq0BvXYoR697EZJS0bPVuNUpGbhOYsqjiD7yszr9yPYJo8ghnV780F/BhMvmmKPj4xKD7z0gDKcT2TCTlNyxRyag4s4iHYYaDLE9z++Ibst6CUcM1+QNE/2/N/oQ5UIjlGO+6qqfrWNwcKeegZ8WRqUwqvO7ypVCt6zZZR+P58e51zQCcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=karlstorz.com; dmarc=pass action=none
 header.from=karlstorz.com; dkim=pass header.d=karlstorz.com; arc=none
Received: from DU2PR01MB8717.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:2f8::19) by PA4PR01MB9922.eurprd01.prod.exchangelabs.com
 (2603:10a6:102:267::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.30; Sun, 21 Jan
 2024 18:57:45 +0000
Received: from DU2PR01MB8717.eurprd01.prod.exchangelabs.com
 ([fe80::c1b4:fc12:b79:3081]) by DU2PR01MB8717.eurprd01.prod.exchangelabs.com
 ([fe80::c1b4:fc12:b79:3081%3]) with mapi id 15.20.7202.028; Sun, 21 Jan 2024
 18:57:45 +0000
From: "Sebert, Holger.ext" <Holger.Sebert.ext@karlstorz.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Remove Python dependency from target package only
Thread-Topic: Remove Python dependency from target package only
Thread-Index: AQHaTJuZ6a4M9U6Bbke+ReAINArD8w==
Date: Sun, 21 Jan 2024 18:57:45 +0000
Message-ID: 
 <DU2PR01MB871782D4F3B6384568F20F99A4762@DU2PR01MB8717.eurprd01.prod.exchangelabs.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DU2PR01MB8717:EE_|PA4PR01MB9922:EE_
x-ms-office365-filtering-correlation-id: fc14cb6a-f864-4b88-3b69-08dc1ab2da90
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 +wXGxXz+TzaZPgOP5KI4is5zTjq9a+e6Pr2W5rwSLOJtR1BFmJAfiwXO5/RxNNGyTUi0z9WAGNs9wgjP/AdoK/SQztccpe5TcLCD1B4cuubRLrEvMK+zrxHas6zdz4TbCVBN3l+vYp1BKQGKgslEJKjvDxClhZxVKqu/Eb+TTulmJB+ivwg0AWoc3IrwoYSie44AVwYDo0BR9J/TkQhnhfRwKvJPJhD2Ik5DIEJLMcdF5aWD6RYKhimdfcQ/1LB4jV+FaH1StSWfL0exNU4FkPWY/rBcL8J8tIOkSRs8X9GURP4g+Gym6wf3qhLHEXxsh+XLUk9eZlk9d6AQKqLPKk+zYHfkmyrNIkdy++kFHxowXCsWPdVR+Im9CpklOnwrnD11ZV+axA/8opKzhRumLTsWKOPDF8QK8vE0wMpO12NEv7jlv+yWdRhv+gCxk+i308zRCaqYwb37x5lSMlg+sXGMEVihCofP8zzhvpQeq+7j2QKsSmhsb2NTXXh0uevZRqlCIUVXXbRSWTIo+UstjThn+jcDgIUL2r+tdQmjk42CJ2FE64sl9x7YLTNyX8ayIQ9RgEqPejWF3k6ypNkAImrfjxPihtDWkRCkzlCWOekKxtrr46NKGn0qkk2QWEdxoRV4CaN9sfS5ccr1CsnHOjbn0Mh3bLE3wW1iDtHzA2g=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR01MB8717.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(396003)(366004)(376002)(136003)(39840400004)(230922051799003)(230173577357003)(230273577357003)(64100799003)(451199024)(186009)(1800799012)(55016003)(7696005)(6506007)(71200400001)(9686003)(26005)(38100700002)(122000001)(86362001)(33656002)(38070700009)(41300700001)(52536014)(66556008)(83380400001)(5660300002)(2906002)(66446008)(66476007)(8676002)(8936002)(91956017)(478600001)(76116006)(64756008)(6916009)(316002)(66946007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?3CrWKMA6bEchbe4rK3RuEmcgDC6Y1a98c4mic7WOmyfdXFsMgJrMPo9MHA?=
 =?iso-8859-1?Q?EUCW12uCwi6RVPcXxC8pDRQ/IS7c1khneX6oIwnNTwBtBb/4znW43NOMEp?=
 =?iso-8859-1?Q?tHdoVGNLKqTL5BCJh1H5VURlbC90ZPgZdvum5HyI151+slXuuD5DXmF6Aj?=
 =?iso-8859-1?Q?jyuuW4Vy3PTSgwWEOUw2xO2uMhIpbZKLso+4lSAnmrgqhYgC2b4Y7T1d5l?=
 =?iso-8859-1?Q?brhu74OccwW7lxb7RETE5YqnX9HWwCSI49kV+zuWGJzCStnd/zsRcncdPm?=
 =?iso-8859-1?Q?x5wm90lUn0PFCAxixIqNWs3mrPuQMi7CyE4uQNeIarPbOeFI8x+/6pJ2og?=
 =?iso-8859-1?Q?7Uw0c2SrXljSmIt263kJtyFFNvGvw8WpnDclpwqekBTaAt4pgyeSWEpqjK?=
 =?iso-8859-1?Q?/09hev/ODR2GFTP+aJNkpTxYryEIymfdG6Drxo0AHpRMo4uRN1ZkftOXkM?=
 =?iso-8859-1?Q?fiBV0RbFrrWjKn0kZzra7HLaIhORGN3GJ5lIgzaHqn9qR59BRhThoICaW/?=
 =?iso-8859-1?Q?iGHe0kLsz1qX3m/1v0E+neH7G7f8mklvWrQLc1cx/Q2fO0ZhGN/0XlBdSw?=
 =?iso-8859-1?Q?ppkxqN6vtCTvqugMh0796Xhpl1DOEGiTDM2+94qNFstrf3352V4CqJJGHl?=
 =?iso-8859-1?Q?wCvHCVGJFPXkGfOsGEuABHqUBeaQqYKksnYBTFONTyHtFedLLVYZSpAucc?=
 =?iso-8859-1?Q?YNAmz+fbIhPqVAUSyhqAxvobLCO/K5KGMOZnkvwYr4aNfsVGl/bXL7DCoH?=
 =?iso-8859-1?Q?uumYoO3Q0IbQuOC59mBPBR1+Z6ZUKZ0bfAlD4v697xBCsapek6onpTSwMe?=
 =?iso-8859-1?Q?CGushpofNnemo98PFLtRiKSTW5hpgU9AGsWs2yQOebZGExA6XrEAKczjJr?=
 =?iso-8859-1?Q?YyvLuLeKN/hyE8ZGOsIu7hqokrRBgZvMR7+Rzc3WURpFYxz7LANQHlfNd+?=
 =?iso-8859-1?Q?6ufNNAX48WvkVyLt11w2czXNs6CfDoaQSueHqAAieiEsuWUw38OiXsmN/A?=
 =?iso-8859-1?Q?Pt4RTzEbZtB3Gw54ro7M7iWg6zNVpIBIc4PhFUKoIOzM2fxbBlHni0ZNPH?=
 =?iso-8859-1?Q?zNLA9MnqR4FmOV8B+lNVdvo8wbxb62/QuHcsFUf202g/pM/8ubQWk0QZ2R?=
 =?iso-8859-1?Q?vAElFPgww0uexpxDZNfr/44t9isqfjh1RVmhgQFsdOEkMAML9Rbrc5CUP5?=
 =?iso-8859-1?Q?tNdrl48NhJjJB/Cy5EUwAGxVlFcxvMN8qJzsmCC5TBIBqyKHIzfTNyoya8?=
 =?iso-8859-1?Q?4CcL/x0NuodViZOv3boQNMwpjpkYWW+ZPQwzBKZ8SOs/pBLFKJXh+0JJhp?=
 =?iso-8859-1?Q?ZSuCpb0hFwUww9kvoSyNv48EIkCS+3oJlYqde5iewhiV8JHOg5UGx20o2i?=
 =?iso-8859-1?Q?rX2+4Le4GnS3VLdJY2AEkF3u6Ah/Ydw4LJYYdSbowfW84S7HNx+HOVkjky?=
 =?iso-8859-1?Q?iWXryhsQCb+Kaj1xLJe76sFDrlSxmYWLcakxZdvgkO27/2jDh3d7eDtPuE?=
 =?iso-8859-1?Q?iCeSSM4BZyfHyjd3qsivdRzUeb/4Eh/4NDkWEZ83mREN+f63Tqo6RxIKzR?=
 =?iso-8859-1?Q?3qR9uSnB8dMkUqeyIIAOLJ6Bma0pu4Mngj9kciL45iU1wbDX7bs2fy+V0w?=
 =?iso-8859-1?Q?3XumrfdGbQUEv6OtuasgLMi3649vZP8H+ADAVpjiUpf11KK+m2pZ7kjw?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: karlstorz.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DU2PR01MB8717.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc14cb6a-f864-4b88-3b69-08dc1ab2da90
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2024 18:57:45.3005
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4a0b6f21-e6e1-4ed6-9dcf-e60e7190f648
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4Y4HDIJBL+lFrjTQrTZmzm8KGziFZ1VFqHsaN8yQKDYoaMrZtivdbiamje91flbATG4rWq8lPyzOj8+L+hw25JRWYm0dybNeUEmNIrdjPVU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR01MB9922
X-Proofpoint-ORIG-GUID: hS7bkGeltDTbJnoZwvdzBCJt4QUDSkqF
X-Proofpoint-GUID: hS7bkGeltDTbJnoZwvdzBCJt4QUDSkqF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-21_02,2024-01-19_02,2023-05-22_02
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 21 Jan 2024 18:57:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62214

Hi,=0A=
=0A=
I am trying to remove the Python dependency in libxml2 for the target.=0A=
For the libxml2-native package it shall still be available, however.=0A=
=0A=
I have put this into my local.conf:=0A=
=0A=
    PACKAGECONFIG:remove:pn-libxml2 =3D "python"=0A=
=0A=
When I build core-image-full-cmdline I get the following error from=0A=
the libxml2-native package:=0A=
=0A=
| configure: error: Package requirements (python-3.8) were not met:=0A=
|=0A=
| No package 'python-3.8' found=0A=
|=0A=
| Consider adjusting the PKG_CONFIG_PATH environment variable if you=0A=
| installed software in a non-standard prefix.=0A=
|=0A=
| Alternatively, you may set the environment variables PYTHON_CFLAGS=0A=
| and PYTHON_LIBS to avoid the need to call pkg-config.=0A=
| See the pkg-config man page for more details.=0A=
| NOTE: The following config.log files may provide further information.=0A=
| NOTE: /home/hosebert.ext/data/poky-python-getvar/build/tmp/work/x86_64-li=
nux/libxml2-native/2.11.5/build/config.log=0A=
| ERROR: configure failed=0A=
| WARNING: /home/hosebert.ext/data/poky-python-getvar/build/tmp/work/x86_64=
-linux/libxml2-native/2.11.5/temp/run.do_configure.453112:287 exit 1 from '=
exit 1'=0A=
| WARNING: Backtrace (BB generated script):=0A=
|       #1: bbfatal_log, /home/hosebert.ext/data/poky-python-getvar/build/t=
mp/work/x86_64-linux/libxml2-native/2.11.5/temp/run.do_configure.453112, li=
ne 287=0A=
|       #2: oe_runconf, /home/hosebert.ext/data/poky-python-getvar/build/tm=
p/work/x86_64-linux/libxml2-native/2.11.5/temp/run.do_configure.453112, lin=
e 263=0A=
|       #3: autotools_do_configure, /home/hosebert.ext/data/poky-python-get=
var/build/tmp/work/x86_64-linux/libxml2-native/2.11.5/temp/run.do_configure=
.453112, line 233=0A=
|       #4: do_configure, /home/hosebert.ext/data/poky-python-getvar/build/=
tmp/work/x86_64-linux/libxml2-native/2.11.5/temp/run.do_configure.453112, l=
ine 153=0A=
|       #5: main, /home/hosebert.ext/data/poky-python-getvar/build/tmp/work=
/x86_64-linux/libxml2-native/2.11.5/temp/run.do_configure.453112, line 291=
=0A=
ERROR: Task (virtual:native:/home/hosebert.ext/data/poky-python-getvar/meta=
/recipes-core/libxml/libxml2_2.11.5.bb:do_configure) failed with exit code =
'1'=0A=
=0A=
So it seems libxml2-native cannot find Python anymore!=0A=
=0A=
When investigating the problem, I found the following using=0A=
bitbake-getvar:=0A=
=0A=
$ bitbake-getvar -r libxml2-native PYTHON=0A=
#=0A=
# $PYTHON=0A=
#   set /home/hosebert.ext/data/poky-python-getvar/meta/conf/bitbake.conf:5=
75=0A=
#     "${@sys.executable}"=0A=
PYTHON=3D"/usr/bin/python3"=0A=
=0A=
So libxml2-native is trying to use my host's Python installation and=0A=
not the one in build/tmp/work/x86_64-linux/libxml2-native/2.11.5/recipe-sys=
root-native/usr/bin/python3-native/python3=0A=
as it should be?=0A=
=0A=
On a pristine Poky system bitbake-getvar gives the following:=0A=
=0A=
$ bitbake-getvar -r libxml2-native PYTHON=0A=
#=0A=
# $PYTHON [3 operations]=0A=
#   set /home/hosebert.ext/data/poky-python-getvar/meta/conf/bitbake.conf:5=
75=0A=
#     "${@sys.executable}"=0A=
#   set /home/hosebert.ext/data/poky-python-getvar/meta/classes-recipe/pyth=
on3native.bbclass:9=0A=
#     "${STAGING_BINDIR_NATIVE}/python3-native/python3"=0A=
#   exported ast.py:52 [eval]=0A=
#     [export] "1"=0A=
# pre-expansion value:=0A=
#   "${STAGING_BINDIR_NATIVE}/python3-native/python3"=0A=
export PYTHON=3D"/home/hosebert.ext/data/poky-python-getvar/build/tmp/work/=
x86_64-linux/libxml2-native/2.11.5/recipe-sysroot-native/usr/bin/python3-na=
tive/python3"=0A=
=0A=
So, what is the proper way of removing Python from a target package?=0A=
=0A=
Best,=0A=
Holger=0A=

