Return-Path: <john.klug@multitech.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CDDAC4332F
	for <webhook@archiver.kernel.org>; Thu,  3 Nov 2022 23:03:36 +0000 (UTC)
Received: from mail2.multitech.com (mail2.multitech.com [65.126.90.11])
 by mx.groups.io with SMTP id smtpd.web11.5179.1667516609642525121
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Nov 2022 16:03:30 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@multitechsystems.onmicrosoft.com header.s=selector1-multitechsystems-onmicrosoft-com header.b=UYSGNd8L;
 spf=pass (domain: multitech.com, ip: 65.126.90.11, mailfrom: john.klug@multitech.com)
Received: from mail2.multitech.com (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id DE067586948_36448C0B
	for <yocto@lists.yoctoproject.org>; Thu,  3 Nov 2022 23:03:28 +0000 (GMT)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2170.outbound.protection.outlook.com [104.47.55.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "mail.protection.outlook.com", Issuer "DigiCert Cloud Services CA-1" (verified OK))
	by mail2.multitech.com (Sophos Email Appliance) with ESMTPS id 5EFCE586931_36448C0F
	for <yocto@lists.yoctoproject.org>; Thu,  3 Nov 2022 23:03:28 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gi7iJt3JST6vTq3eGnXix/cwlsBhgg43t1kIMTGe/M4upfzBH0EGqZuMlktXRnAOyXYv58gIRXrKafS/aOiA6Hh4QUVa/uMZ605PfHQLbJ9YwU9u8SLTI3s60T+TVDLuUaz0Kax52VuxOYSHtfuCp0CsKSOCjFnYf0UF3o9av5JCyzH+AcRcEnONrOV/RNsqb05QzCxNzHTcWsppHQb52yWZZperMFuzpoeKi0h/eYaxN3f3RH4AZbJ/3Pr4uhXtW6asCDo3q9QzenO59bJY8FGahgJpjTOhHGD0k0eIkWMFL4rwY6hfem91QMBCLJWw8RF33yaLHt/foSM9uNGSBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IdUCtk9Hnd0wV3LesG5R1E5VMIX6/yGWXDPwVVrRINM=;
 b=A69718rJ6JUeS6eA21Uhl4ERU3Au6MwQUPX+ttY+e8ZsY7QbEUXwDkMfmbnA1SxTxBq+d/WJYWww7wRTvuqsUGj96wyB0FjelTFiPFWsF+ZDB9ZGIamksy667jB3yBOp7xZ5GU5PXX5bhhD2fbdgQONg7zW0q1pfY/mxG99BdSOFo5zE5YVBvHo6qxUWOvZ7Cvab/9YfGCGCh2xDmbb6eWLy7ehcCViptiOIjhfoh/P7hSYm/cVyt3w8tnAOHV6T+p5nnHMEyndIdqvGdFf+p2v23JQm6WAviSYwEEabUe8P3skYPKodqW9Mz5x7PTWgH2723/FwwlR7B2Xt7jF5FQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=multitech.com; dmarc=pass action=none
 header.from=multitech.com; dkim=pass header.d=multitech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=multitechsystems.onmicrosoft.com;
 s=selector1-multitechsystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IdUCtk9Hnd0wV3LesG5R1E5VMIX6/yGWXDPwVVrRINM=;
 b=UYSGNd8LRO1NyZG3kH7KSH9tDWvOSjLFACoAA48huRk6WpavlZJGQaKWjLMci1B1Ci+AnmO39MYf4zWGrQFdr1wKShHOrrGoUJkYdWgqrutLXH43SuC+vS0d1p1ribwFP3tBGYujTAaYV7EceD4/kweWz5pZHJFZf5mx7qO8ls0=
Received: from DM8PR13MB5111.namprd13.prod.outlook.com (2603:10b6:8:10::21) by
 PH7PR13MB5620.namprd13.prod.outlook.com (2603:10b6:510:13a::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5791.22; Thu, 3 Nov 2022 23:03:21 +0000
Received: from DM8PR13MB5111.namprd13.prod.outlook.com
 ([fe80::159b:bb02:ef3f:ff0e]) by DM8PR13MB5111.namprd13.prod.outlook.com
 ([fe80::159b:bb02:ef3f:ff0e%6]) with mapi id 15.20.5791.020; Thu, 3 Nov 2022
 23:03:21 +0000
From: John Klug <John.Klug@multitech.com>
To: "\"yocto@lists.yoctoproject.org\"" <yocto@lists.yoctoproject.org>
Subject: Python3 project without setup.py
Thread-Topic: Python3 project without setup.py
Thread-Index: AQHY79dxWbrwGSF0NEiFYKRZUioPAQ==
Date: Thu, 3 Nov 2022 23:03:21 +0000
Message-ID: 
 <DM8PR13MB5111D68232CC40829F86E9E6FE389@DM8PR13MB5111.namprd13.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=multitech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR13MB5111:EE_|PH7PR13MB5620:EE_
x-ms-office365-filtering-correlation-id: 6b54275f-36cf-44a2-847d-08dabdef9a6a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 WsS14o0J9ktcsB9ELoGqcM1wxeLgG5OgWu6EQaFu7r9Lk7Z8nh5/jrrOHJkuZBvPxD5fq1R7kzRkTNDIZ3NdfndRx8UK4xAtnIt5SMPVioIeJEFiOILtlSjJLrW1KIGzBk8EZKPKDiSFOZjNhqjnprPXKbKAKoXWAC4zaNM3oPVkLrfGOod9kzZRDrKCto9fwTAYBS1ecYTEYUH5cZ94JjzfOxUfpViIGoJFdAbXLVf84DOfC3LkljKsdYj7cKK8zPiXwyfQjWQuSskHyCmeggrCFFS3XYPXQEhrV855cqwgMeav9CsYqb4l6587KvFzPjeeXbuENHeHtSbBFdJaXvTnBIEPx7nGKpIZ9cvGpysdKbNdPq5d0X/Yge33HcvoWvFQLlQa+OLI6Bl0bWbdAwOeWZ1W0E6AfPmgP7sjIQl3T+0loYJFSR4yvO0PlCImkFP76ztUWKkf6kQW1Q5XRoAsoFXS1DRw8wOElF23j8eAtaSH5snI0mso77av+V7gH+I85tBUdLSdauibUCbod2vkIhf3578vdpflxGS8UfySY4Zl1DeZDh8bK2+PG1yBhSDbDwpsTXZ9BRRJ3l2VPzmwDT59AhW3hf6PplaR817Gi1AKgSQHlb8QVSbSiSbmk/efvaj4LYOs9YUmmw2IwfAXaMHDeoT96e/oEPiY0W2sF138sIIUoj2UJLdXwTe0kJsqkgvy8av3IOCbey+ZmscFVYvYBjHs3Lr9MfhwG2sQj5WAD6A55MzJKT14o4CgvWX2yO4Z9gSSGtLUPEJTpuwprzX/PcEZZTV3riajE3X/9GfB2/KKoP77+Cy19Zxi
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR13MB5111.namprd13.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(346002)(136003)(376002)(39850400004)(396003)(366004)(451199015)(9686003)(5660300002)(4744005)(41300700001)(8936002)(478600001)(26005)(186003)(966005)(52536014)(55016003)(66556008)(8676002)(71200400001)(66476007)(64756008)(66446008)(76116006)(66946007)(2906002)(7696005)(33656002)(122000001)(6506007)(38100700002)(316002)(38070700005)(6916009)(86362001)(491001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?meWx9o2BaZDvlg79OdBJbiSeYGk/Tw0a38hM84njp+xhybr+87n7aRCBVI?=
 =?iso-8859-1?Q?mGmmXmq7g0lWkOefUHIzshUXS7CpqJ/bK7bJDzm0IUrFZWenwSKjUocQpH?=
 =?iso-8859-1?Q?w8rSnGnHrYxu+o+vshroD8VX3IiRgwzzBOp+bR6PENGdo/iSI7SpK7NRUM?=
 =?iso-8859-1?Q?jKs8LnRMuSojoQgYriuDRs0XdQNKcHw5p/e2jf+Nxao/DlOFGWFmpS09Sj?=
 =?iso-8859-1?Q?Ac6FJmk55u/qSNEg9zQsLmtbxkS8912JTcjH2skGyKUunP1Z7f4J9tkoKV?=
 =?iso-8859-1?Q?FdvDa/vaO1JNWWow4SlQmbEXxJ/qolel/d6qwFFL5LlJ4G5X4a2RQA/2I+?=
 =?iso-8859-1?Q?A4eiBD+ZHJG/dBpR98cuI/5bics4H6s9W2u/RUYnwdiBXUtu/lm7h1QmqY?=
 =?iso-8859-1?Q?y4rIWCtOWQWTWYJ5NvZp63c2H3gyRu4dVZOie6j0vGYQn8pndO6B7SNVyP?=
 =?iso-8859-1?Q?2UF1jSZ4TrDfdINzMgv/BBDk+lPItsKizgRoYY8BtQkheOfNuirKiJ9Rxa?=
 =?iso-8859-1?Q?NZo/DJWFftYlvuVauier91HKTZPtLWiF1z5Yr2RVdqluMLJbrSgAVw+Yam?=
 =?iso-8859-1?Q?X7t8WT3SoW2ERRFwS+KhRTc4PzX8Ep6fqbuo9I6Izaw8dQcpWXhOU7mgvQ?=
 =?iso-8859-1?Q?v1bcPXMedcQtpjbjx1JHHdW97eU6yGp8BbHgU2NZMPTE6QhybNIsW+J0XB?=
 =?iso-8859-1?Q?9FoJkcfLamy0OX5MyBtsdveCXwX6G4kVtaMnTaimpPnhEhWx0vIAAkOyMg?=
 =?iso-8859-1?Q?p3+OfGF8ygrpA6//ebqYFzhUnKWioIrEQFYMl+gaHIU1Q3ftWQlvPuY3Dt?=
 =?iso-8859-1?Q?+qx0SqWeM1KEU4QC0puaxkgneP3HVsL1lx5AB8qDGHq4DU0aUWrwZNfrig?=
 =?iso-8859-1?Q?h4YP9iKRtdENdZwWDhG5c/7ohII59e2Ox6Aj+tjUwOuSHkFK96qnDs/2+J?=
 =?iso-8859-1?Q?L8Tx15iHO3SIyVljzDKSjD7mHBM5ks4IKtS/S/kbAbEZvVytvSUarX0tCg?=
 =?iso-8859-1?Q?/GurG+Bjj3aclgcoWWmVm3B5TO1FhxxMnyzFRwaEDlF888yw4ZDqKNLpx9?=
 =?iso-8859-1?Q?QYDPM+Qi17WSnTNCzKzntZzlOoWjlHO0ln5Ya499IhFbkWFUdPKOvE0Pre?=
 =?iso-8859-1?Q?fmzXMNqE+GEWfhuXTEkE83C9C1lrL9l14RAI+rCL+vINkiFBw0VNydHV4u?=
 =?iso-8859-1?Q?qTr54MBVMNCykdOOp/OVp0lhre5xVYJHDP6pziAd6xJqUqkdy2Nm6T88b1?=
 =?iso-8859-1?Q?K8uehyEO3/qWJ0fDqFdUWlqYvGfcxaPt5XZpngyWxC9gjXetPcOF+p0dkl?=
 =?iso-8859-1?Q?IurCMOQRL990eFppfdANJxoGF7cJTdbTSIqyPzG6dacJLBn81DeRbXVILC?=
 =?iso-8859-1?Q?gsIeM2Zd4YB2gFxZDHUH5W/C5r1BSRor+qAEccmzXXEGkh5uChqegrKQji?=
 =?iso-8859-1?Q?UcXaWI/SzrlNkLO2YbjW2Uv2u7l/aHvLoMSzkgNuD/icEUNIE6L7xANlZN?=
 =?iso-8859-1?Q?Mo5DF5Ahi3P9qdYwJZqcfcyuzlCiIccOjKvxhQByOatFMtSfsx2mjj6U6a?=
 =?iso-8859-1?Q?wTAwOY41GXRsDUYiGVBQhEwOFuZQslWSwSD1SFe1HReAM8n88S5Ndr6ujq?=
 =?iso-8859-1?Q?2ooo9bNnBp/sw=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: multitech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR13MB5111.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b54275f-36cf-44a2-847d-08dabdef9a6a
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2022 23:03:21.1695
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f802e804-804f-4d1e-b625-870b4d57fd00
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A/ni4/hJmbscLU54hdVRSPckrlO70cHt8G6utpdKV5OkH/DKWXStnnMsovay+P/1WwW7+446WFJlyD4eMqeptQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR13MB5620
X-SASI-RCODE: 200
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Nov 2022 23:03:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58482

I am using Dunfell.=0A=
=0A=
What should I do in a recipe if a python project has no setup.py?=0A=
=0A=
Specifically:=0A=
https://github.com/pyhys/minimalmodbus=A0=A0 =0A=
=0A=
I tried adding a trivial setup.py:=0A=
=0A=
>from setuptools import setup=0A=
>if __name__ =3D=3D '__main__':=0A=
>=A0 =A0 setup()=0A=
=0A=
This results in the recipe failing while trying to "import serial" from the=
 python code in the project:=0A=
=0A=
Log data follows:=0A=
| DEBUG: Executing shell function do_compile=0A=
| Traceback (most recent call last):=0A=
| =A0 File "setup.py", line 4, in <module>=0A=
| =A0 =A0 setup()=0A=
=0A=
=A0=A0 ...=0A=
=0A=
| =A0 File "/home/jklug/mlinux/build/tmp/work/arm926ejste-mlinux-linux-gnue=
abi/python3-minimalmodbus/2.0.1-r0/git/minimalmodbus.py", line 38, in <modu=
le>=0A=
| =A0 =A0 import serial=0A=
| ModuleNotFoundError: No module named 'serial'=0A=
=0A=
=0A=
=0A=
John Klug=

