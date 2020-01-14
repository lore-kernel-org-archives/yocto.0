Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.133])
 by mx.groups.io with SMTP id smtpd.web12.12358.1579012712204580839
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jan 2020 06:38:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@prevas.dk header.s=selector1 header.b=FQblpMfm;
 spf=pass (domain: prevas.dk, ip: 40.107.6.133, mailfrom: rasmus.villemoes@prevas.dk)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EnGCxslqVb2dHqr71xokn8NVNzKWhRKKPexlqVwJ0ciozjY+2KvPIERF+SoS0LfgpkgcazvdlHHzQkVAtrQ/3iUqW1L0pmeRp7LURSPkQGUF2+pMpypfAcJcDQATDoRfB3PPp1Evati1sKXsxtP9GGszsh4DDA17S7oVAsrkRhddIU/BH2aBIQMqPVg6coMkYBXcXM/+bIS+sCOq7e/oCfnDhemXUYnY0iGW7pG1pv81EcGTQ+HZbj18lb3Csc3XSu3zegvciCVidkMxGTKOru6Hr1Qb2pZFtRsWxD2jc3vgTjMHfSWr985FK3lM+8MePWgy15i7Q5B/LZW/jUaG0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0ELeOu9MJRzdlK2Bf1FWU6g3KvOZEhqA2OtSoYEjZAc=;
 b=PyVRGXIZSYb0wqfn1um96+/tFnMah71yINq03wnf7KaNkY3ThunBszxcD9wvA1HxR6ULG1xevSeJGghjDpF0byEzjXhPQopqdEQVXc0fiNV7aEutp1up/NSKPO9bYwMxVu3CEdzAZWoR/YlfAEUYIxvdKEQqyDPcIjQm0sTaf4F67PLe65oJa1gom/18/YlE3R2+6s3A0+8ereROzvmQHHxIYVZEIcQr4UpW8WsMNcpfmIU8AQxcgSZ9j8sGbNoJ59a08du7KSuirjjcOV5rnE3MdVJXqnB1uoIo2IY3jmeXzUeQRuCTPPI4DSvzpNKgasKXlxe4Ymf87T2laNWNtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=prevas.dk; dmarc=pass action=none header.from=prevas.dk;
 dkim=pass header.d=prevas.dk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.dk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0ELeOu9MJRzdlK2Bf1FWU6g3KvOZEhqA2OtSoYEjZAc=;
 b=FQblpMfmpCu+dxayh04l6o7dkFI4FiYlZuZqRD8IznyxM37fVCVVMjFrnAVpA48WY2dA2MsSqbcdXmIg5aIhx8jOSaxNTaGL+igZt4eXgcNSbzi6Lwy0BichIOEhg6kuTZoPlwxs9+JVQvquIbIaeXOVXOkchZxWXX5fTy4p+gI=
Received: from VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM (20.178.126.85) by
 VI1PR10MB2110.EURPRD10.PROD.OUTLOOK.COM (52.134.25.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Tue, 14 Jan 2020 14:38:29 +0000
Received: from VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::8175:5aa2:2870:766d]) by VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::8175:5aa2:2870:766d%6]) with mapi id 15.20.2623.017; Tue, 14 Jan 2020
 14:38:29 +0000
Received: from [172.16.11.50] (81.216.59.226) by HE1PR09CA0048.eurprd09.prod.outlook.com (2603:10a6:7:3c::16) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.18 via Frontend Transport; Tue, 14 Jan 2020 14:38:29 +0000
From: rasmus.villemoes@prevas.dk
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: building both musl and glibc based images for same machine
Thread-Topic: building both musl and glibc based images for same machine
Thread-Index: AQHVyuhJugOnRkNwmEqesh+b9nAXIg==
Date: Tue, 14 Jan 2020 14:38:29 +0000
Message-ID: <f0c7df31-e1b6-0b62-eb93-04f009fef5a7@prevas.dk>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR09CA0048.eurprd09.prod.outlook.com
 (2603:10a6:7:3c::16) To VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:e1::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=rasmus.villemoes@prevas.dk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [81.216.59.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7c13f74d-df20-4b5b-37b1-08d798ff6c05
x-ms-traffictypediagnostic: VI1PR10MB2110:
x-microsoft-antispam-prvs: 
 <VI1PR10MB211088DADD2B6051D475548393340@VI1PR10MB2110.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 028256169F
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10019020)(346002)(136003)(396003)(366004)(39850400004)(376002)(199004)(189003)(36756003)(81156014)(8676002)(81166006)(31696002)(16576012)(66446008)(316002)(44832011)(64756008)(66556008)(66476007)(2616005)(478600001)(86362001)(2906002)(956004)(8936002)(66946007)(31686004)(6486002)(26005)(8976002)(6916009)(52116002)(5660300002)(16526019)(4744005)(186003)(71200400001);DIR:OUT;SFP:1102;SCL:1;SRVR:VI1PR10MB2110;H:VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: prevas.dk does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 eCnPlpkM7/0sKe4VPL8i/d7hLT3xKiz6PKQSkWHsRjvU756yXqgIOJUcVAuCvUKPZP0L5FlnFQkIQ8fhNPoC20gNRiVUV7CE1pu7DkCjqq5f5e7Jx8TeTANo7v7vC2vBLk2Pb7HpGdufgrk3eKYJ42o6MbPnKBOyZ1YwpYra6o6dn54L4DU4Fq9VHYgCJzUnGS1Tp9BXQRUu3GMZOBcC7HGyYp1rMP/FxgV5DFI5RBS388HnhpT6AOlc7Es1R6QEMZ4cvlQuJIWpxz7UvijGXzYna9FXJ3ODrQAXNwWJtEEpoeIHrLgeIfX+tULZSBVGWklYLF2Qpwae3yGX6LD9U4Mjn5/ICMIMq36+BhGtoOQg18VsdqVQCZ90stENGL9aW/cJhY0k+438XpfvzXjgnP64+il4Ua7RVfrPcjqDX8quEW/7XUSpVDUd7Ztvy2nu
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c13f74d-df20-4b5b-37b1-08d798ff6c05
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2020 14:38:29.3907
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yEmc2oQfBNii9tzEBo7n0S07MaRzvIUkzxzssey0/ZRsSBSCQ+LZ+0i7DeSjILzoqvMcFc6sKTuHxCs2WfJp56Gtnp8jTjNzaZ17VGMLwGQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB2110
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <DC4071BAAECFD645871F5D4D4A9C58C6@EURPRD10.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: quoted-printable

Is there some way to build images based on both musl and glibc for the
same machine?

Say, I need an initramfs to be as small as possible, and glibc is
several MB, so I'd like to base that image (and obviously anything I
include in that) on musl. However, the real root filesystem must for
various reasons be based on glibc.

Rasmus
