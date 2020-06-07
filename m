Received: from FRA01-MR2-obe.outbound.protection.outlook.com (FRA01-MR2-obe.outbound.protection.outlook.com [40.107.9.78])
 by mx.groups.io with SMTP id smtpd.web12.8114.1591539026244574424
 for <yocto@lists.yoctoproject.org>;
 Sun, 07 Jun 2020 07:10:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@actia.fr header.s=selector1 header.b=AESnGZ40;
 spf=pass (domain: actia.fr, ip: 40.107.9.78, mailfrom: nicolas.adell@actia.fr)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NG03l+N+pLa8chjhpctzdSxqTcJItF5tdULY9bqZVJZegvUimTVWBtt7cs8oSqUty5gC2kCN3FIsu5P0354M09hUDeWOZWSCWXCWw/1DxCjsXXVY0zzGesMLQwMZjLcMgXGe5+3lSD4BRv1IENi+ZYAet6jQi38UNPxVCr6Gh5pYUtUv4Y1t0XKHcaWpArVGHY0Z8Ky9LT3p+rJ1Wj9ZrkvCdYyV11EMKFednYPCR67ybRju6lKOM5RqHXwx30Xh6QIqNRXzRCkvYjTKWdD5D4G932g/bmIf7n+RdJq7Kma+EbBtMepbjDaQKm+KPwnQ5ItAyiKRp0tMAwfq8ZKQ1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xu3EEzPK/zP7CApQBTGgffP75wL7l/5gBpjZhbw+ByI=;
 b=T+QAYBPZ3WkEVPjpdrjwuwxf3GAfoPowfEghBCf068mKl21EScoP/KYgD14LF6NF5rYtwSRMOLyCVdFdU+CDMc9V8XPpsiRmdze0GW97YdN/tz9gP0o9+CBGtsrJSq3D/ywuIMdx7Ky67UR5giaJPJGIMrUu9tUdLwfSRvgCB8VIB+NcMxdGnL2avojvHl9psTqOOXc2AJNs2jhoZYQOW9YXD7VETnAVR+dpNOPw3O0vR6GkkHUj+7gu0aU/on57ey/uTo4OmaBt2EVcRjCOViSi/48TRTsCl4ZDoByCX2tGleuDI8dzec0kr2JM0KfoKmNawbjZO4xyOzA24u1maQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=actia.fr; dmarc=pass action=none header.from=actia.fr;
 dkim=pass header.d=actia.fr; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=actia.fr; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xu3EEzPK/zP7CApQBTGgffP75wL7l/5gBpjZhbw+ByI=;
 b=AESnGZ40SSV4knXg29aRnsrNucCh0sSqv+de5/kh8vJQ5fNeXAiif1BVCuuecJSIKZEgucxLh2apQuZp/CBw+NxSPW3HCFjV5tmum0pVW8cG45VJYz1Dw/ysBY+ooY7pYsj3A3VW6pfAWXP6IPvMx5rI2Ju8xa3AlIPRxbnyJKc=
Received: from PR2P264MB0238.FRAP264.PROD.OUTLOOK.COM (2603:10a6:101:7::19) by
 PR2P264MB0175.FRAP264.PROD.OUTLOOK.COM (2603:10a6:101:6::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3066.20; Sun, 7 Jun 2020 14:10:24 +0000
Received: from PR2P264MB0238.FRAP264.PROD.OUTLOOK.COM
 ([fe80::f183:29f7:bdd9:3210]) by PR2P264MB0238.FRAP264.PROD.OUTLOOK.COM
 ([fe80::f183:29f7:bdd9:3210%6]) with mapi id 15.20.3066.023; Sun, 7 Jun 2020
 14:10:24 +0000
From: "Nicolas Adell" <nicolas.adell@actia.fr>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [yocto] How to deploy in DEPLOYDIR from Python task
Thread-Topic: [yocto] How to deploy in DEPLOYDIR from Python task
Thread-Index: AQHWPNTCWi7oh1jBOE2lfz4ow81MEg==
Date: Sun, 7 Jun 2020 14:10:24 +0000
Message-ID: 
 <PR2P264MB0238EF2FA09B1754DB0B6BA385840@PR2P264MB0238.FRAP264.PROD.OUTLOOK.COM>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=actia.fr;
x-originating-ip: [212.194.216.84]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 111223d4-e8a0-4471-7397-08d80aec857e
x-ms-traffictypediagnostic: PR2P264MB0175:
x-microsoft-antispam-prvs: 
 <PR2P264MB017558CBF480C94861F2969385840@PR2P264MB0175.FRAP264.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 04270EF89C
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 SchVpfsb5suC6rXYIbSlWgUsWbLfzt3D3Bj2Ieln6/IhDo51ReHOCRSz12b5ZEfYT0zL/MckgzE0e0i/et8tUaR6qgcovPSZ6kpZv7eDg797Oc5CEtvzhifxQ9IFB5Wo64jinlUgH8nThGUhyp+OMphMgn6Y9pZIVi/p5QJnSUb4gYiTLOEb27OpqTnkRq8kzl/xxiyeTqEay0Rz1Nqm2Hpcs7ww2O0Dj98UQbRxecb932RzmLulz5Ubsw5PbXmmd/YprIsgNWzcWuirOdOR4/P4U5P+vifChDcpHkGEGArXdpm646Tslmxb5zOvoC3X790fMXFbU7ZYwwk43UXVYQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR2P264MB0238.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFTY:;SFS:(346002)(376002)(396003)(39840400004)(366004)(136003)(26005)(5660300002)(186003)(4744005)(8676002)(71200400001)(2906002)(8936002)(6916009)(316002)(6506007)(33656002)(66556008)(76116006)(66946007)(64756008)(55016002)(9686003)(66446008)(66476007)(86362001)(478600001)(7696005)(52536014);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 o7b88Mc6eS7x8yYNUgnf8atoc9RNEc7oIjUpw3otvnFP97cfZh8WzfpWvvP5G5TAxlU53aa4tR8rvaDGIDBafvP8fdoF2nKrkXTzlFSim9R63uhoD35Mqg7onMY52jhPom8Cql2PhFXbxO8HCMrYOfxwCn1Dv7g9HrylHkDF9f6BAA/xg/Ot5eYg3ADVpsSfnaRHmyQCIsivj5yOXXcALpjL70Ck88vQgKHBHRSja+qxw3CZWzG4DqvY1I0uQ+7IjKqbT9srIC4whrvfV93zvPnlrC3SpHiKsK9125Zj1chBPnly1QmdnkM0bYXWHidOBKvVGfqQ8Hco2WBOhDaxRnF6bjWTf77E12BU6UjM+ZUu2eFjvElacdFAZdlDfcRLwOEFtXutXm5gHzhghhxhglAcrEUXPvVzl4G0oopHSXwcq9y7unqm3gAhH0mJrdAA2lNvbCiQTnPe+yQ3wfyphgOKzfjNAvGO3P/L9GhBzE/krGEAO2qdHFLKCBos5ggm
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: actia.fr
X-MS-Exchange-CrossTenant-Network-Message-Id: 111223d4-e8a0-4471-7397-08d80aec857e
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2020 14:10:24.0102
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 86314f06-03e8-4460-82f3-a44f992a19c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VJ0/G0AUCB7TlPHjuV+5DVyEjuI89kO2qXMygc+o7WrFbXhmOYAogFaRyJeCjtF9S+Av2WH8BQvevf7ldSvfvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR2P264MB0175
Content-Language: fr-FR
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Because all tasks provided by a custom bbclass are written in Python, I wou=
ld like to stick that logic adding a deployment task.=0A=
However, all examples I found in poky layer are Shell script based, and are=
 comparable to the following example:=0A=
=0A=
    do_deploy_custom_image() {=0A=
        install -d ${DEPLOYDIR}=0A=
        install -m 644 ${B}/${IMAGE} ${DEPLOYDIR}/${IMAGE}=0A=
    }=0A=
=0A=
Is there a proper way to do the expected thing from a Python based task ?=
=0A=
=0A=
I imagine something like=0A=
=0A=
    python do_deploy_custom_image() {=0A=
        ddir =3D d.getVar('DEPLOYDIR')=0A=
        ...=0A=
    }=0A=
    do_deploy_custom_image[dirs] =3D "${DEPLOYDIR} ${B}"=0A=
    addtask deploy_custom_image after do_install before do_deploy=0A=
=0A=
Thanks=0A=
=0A=
=0A=
