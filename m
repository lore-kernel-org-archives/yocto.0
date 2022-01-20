Return-Path: <mike.looijmans@topic.nl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AFC5C433F5
	for <webhook@archiver.kernel.org>; Thu, 20 Jan 2022 13:47:40 +0000 (UTC)
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
 (EUR01-VE1-obe.outbound.protection.outlook.com [40.107.14.52])
 by mx.groups.io with SMTP id smtpd.web12.11773.1642686455965505826
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Jan 2022 05:47:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topic.nl header.s=selector2 header.b=heSFLscq;
 spf=pass (domain: topicproducts.com, ip: 40.107.14.52,
 mailfrom: mike.looijmans@topicproducts.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=topic.nl; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8JzgKR/1ThfMoab+56KI+VnTty15uLYlb3WzWXdQ84w=;
 b=heSFLscqWDEGk1fQAHH2rRZHjdwkUmJBjAttZx586aJOVZ9oiGOx5l5ydEobJAEuGFX/Itaa13SRBRqWip7+bKI5C2jGtwHa6tMUKeK7ZZ0RFSLhkyLpQM4ZkzTujsEu9YzGmoYPdumjV6bF6v3gwTACS9drfSeO0dvExjtWQqxaP7lz9+TiKdwAlHL8qsHY4E06Xma7PiPP6JBp1GV+tPCc9zJMGRRYCa0MNdRbDpfP7PCt8pmphfmR07PpVguGsb1x7YyZ2/h4UnSKjUR9OUB/TNN7IpcfZiZndpWZdsBm+A9P30Xx4ZCIOh9GTw3wbwwWLGBjvxiHAT55gXknuw==
Received: from DU2PR04CA0072.eurprd04.prod.outlook.com (2603:10a6:10:232::17)
 by DB9PR04MB9428.eurprd04.prod.outlook.com (2603:10a6:10:368::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.10; Thu, 20 Jan
 2022 13:47:32 +0000
Received: from DB5EUR01FT032.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:10:232:cafe::a9) by DU2PR04CA0072.outlook.office365.com
 (2603:10a6:10:232::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.10 via Frontend
 Transport; Thu, 20 Jan 2022 13:47:32 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 20.93.157.195)
 smtp.mailfrom=topicproducts.com; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
 designates 20.93.157.195 as permitted sender)
 receiver=protection.outlook.com; client-ip=20.93.157.195;
 helo=westeu11-emailsignatures-cloud.codetwo.com;
Received: from westeu11-emailsignatures-cloud.codetwo.com (20.93.157.195) by
 DB5EUR01FT032.mail.protection.outlook.com (10.152.4.250) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4909.7 via Frontend Transport; Thu, 20 Jan 2022 13:47:32 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (104.47.13.53) by
 westeu11-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12)
 via SMTP; Thu, 20 Jan 2022 13:47:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eXOye6AcfIEQvv5NOhT01VeJzUVYj04aRVvfN6jPSx+GPQBC3OL4RHGQdtlRg4zNVeZoNj2FvrFLrywWofuq9MC/OHXhVyQd50Nwl6g1qrfvhA3iOuW87eGhHQQek5ggSYsBwsyOd3p3eRgMWI9WzNBn5f2bt4tHozLpp2dPuhSI0nQ9bsFzw9gzAh5/09Z2iKHAdljP2a9LpeBXZ9aZOMMtdEzGYpwjfh5kJXc77t2Ff7ZPKmnrvQn9q9JiswARo2vWKbDlYcZheMSJG0o7mXVYoRxy7ZyAi+jw/i5vc1AadoQzDt8jjpxXO3vOCNZt2ECghHmI3VSpW2EM+1yN/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DX/DIy0KU190ioX+vawG/Yoe+KbV12KhMzTrRVmO+YY=;
 b=l/1+nP3XtO2lWVcTkK69+Geh/a6xGZZAmyBkO40ra+zClnif9M2Mc6/j2YoFxUlh5WoVkdqZxwK4o0+wUCqo+R/L3wAIHz0AUILa/k2Yn5bLDHYJOcEPF1yY+jrLH04uP2P6p/Tbzk1ibQBDNPxHx9FBvEvEVVu4OAZQ8as8+gHO2Ey3UJG9QC8iVvxT6+VoMVvw6ZDGNCocfDIFMjkOZwPvK7n1cNKPik2WuPcfDbMOLhb/Mkkj8ObGZByY0PwLPXdPAxdQHwWhUwOOAh6yTtbjZYx/Pd4uQ0S89AfjD0E5PEdSWHzrDfFoapeExSTlt96w24DXRiTKZWvfLtAhqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=topic.nl;
Received: from DB8PR04MB6523.eurprd04.prod.outlook.com (2603:10a6:10:10f::26)
 by AM5PR0402MB2833.eurprd04.prod.outlook.com (2603:10a6:203:99::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.8; Thu, 20 Jan
 2022 13:47:30 +0000
Received: from DB8PR04MB6523.eurprd04.prod.outlook.com
 ([fe80::7520:fbcd:f912:1edb]) by DB8PR04MB6523.eurprd04.prod.outlook.com
 ([fe80::7520:fbcd:f912:1edb%4]) with mapi id 15.20.4888.014; Thu, 20 Jan 2022
 13:47:30 +0000
Message-ID: <43c59fb9-554d-89ea-e1e3-0f86ba754f49@topic.nl>
Date: Thu, 20 Jan 2022 14:47:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [yocto] Installing only python .pyc files onto the image #yocto
Content-Language: en-CA
To: yocto@lists.yoctoproject.org
References: <VbzN.1642483781624340218.oKJy@lists.yoctoproject.org>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.3b026e8f-d15a-4044-8225-1f448bb392d7@emailsignatures365.codetwo.com>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.0d2bd5fa-15cc-4b27-b94e-83614f9e5b38.67dca1f0-7085-4d3c-b068-0e8b12a7659c@emailsignatures365.codetwo.com>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
In-Reply-To: <VbzN.1642483781624340218.oKJy@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: AM3PR05CA0125.eurprd05.prod.outlook.com
 (2603:10a6:207:2::27) To DB8PR04MB6523.eurprd04.prod.outlook.com
 (2603:10a6:10:10f::26)
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 8646bfca-4858-4e39-0899-08d9dc1b688f
X-MS-TrafficTypeDiagnostic: 
	AM5PR0402MB2833:EE_|DB5EUR01FT032:EE_|DB9PR04MB9428:EE_
X-Microsoft-Antispam-PRVS: 
	<DB9PR04MB9428DF2C72893724E6BCBB47965A9@DB9PR04MB9428.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 d1hrmhTxIobMFra1otl7I9CeFF2YyJSd7sDtpoVmc98hOFoQELgyEbFXDUuM1UzwX3pZ5ZqI8kr9PIml0AxCZRbYvaqLzjbFsWLsiIFhQtuRpQ0wqlRd4URfRhSdYuzRDRX+jQH42y9jabgiye2Ol1xroEjBALaxaPNAKWediKVgz1nsmpqyiEZXY0cAd+no8u54iZDlLAR5kCMEbhvGVoSKCaCqu3oK8+qtDrMPti+DktYlQixEp8ZsOhqn/vLWBDRYPAc71CyajDxe8gACbR5Fy9AQmEqGr2xVImk+poU/B9HcdFetbgXiejiAtP+tjAM5NCUt50DxZdAPTPkSQXddkc3rCEkgnHn+JNNp5Pg3KbmVxsl2CNsNDkxE/CFaCJnjI0uClhAvhm6hLR1cJFl5GLszsRqdMXYmSOXMIw3O+I/mkd0ELePdJKBKMCtMp8gJQ9hH2nqsgmwsI2HACCbNDV1C8vkcPuyF4BaJg9/kf2RALffedI4KxzjnwfDXhnAseFE7fNThu5dlZaqRTgCVJpA1hrjl3uoT1ZLSwPjLY6VLtploQZEq8NFdkHjwKUK5SEpUalayXi/WeOK28S10flyR7kXpkxkcwKNqcKi0JpZIAm/74ENwMSc5A5GruIE6L2ACJ0kVkzT8dIvIEilHsnee9XhKQtf8ggv0ydbVT2XiPGUT7+Ho5YWcp2A9nlOC7FwVF0J0uzfgRFLwxtZ52+ksBL9Wyu9bytvqQ/9tUyo85sJPzM8ts6BWUofveXx12PHacTTwNRCTkmEs9tHwDPQVkukdsF61qy1t54Y=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6523.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(376002)(396003)(366004)(346002)(39840400004)(186003)(2616005)(66476007)(66556008)(83170400001)(31696002)(36756003)(66946007)(42882007)(44832011)(5660300002)(36916002)(8936002)(53546011)(8676002)(26005)(6512007)(6506007)(6916009)(52116002)(31686004)(4744005)(38350700002)(38100700002)(508600001)(316002)(6486002)(2906002)(83380400001)(142923001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0402MB2833
X-CodeTwo-MessageID: 
 626a2c4d-b0ff-4804-a267-41b2e9449a43.20220120134731@westeu11-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB5EUR01FT032.eop-EUR01.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	2bcd2220-5d6b-4a50-58f3-08d9dc1b671f
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	TlGwfr95Q7fF1TpKZHyCb7STJavfrta3taNw4qHnb5m7AFeffo7G5Bbwhzti5/3JK4ZMFRcCFlegH41UdL0i3AzB0QxVvwig+9eSlOnURPpyApFx1FWyWIW2CcGiiyf2VNG7JrryOWexCa/2C58R5sdbbz9Y1+GPMkYMAszBLiV2OOW5ueDBsdHHpRrPVMuhAVnU+nuEes9J8uCRBjKsHI/Hc5f9q9gjgX0Cp38ZDOGBvT1CljnPRwAYKsv1z7b1bgLpYIePuQKBdfcqH7Acd79ImyYys/bPsaC7YekXQmQJdKub3sPW5s4+N6A9tWWkJ65n6GCWz8VXX4uTHUoBcfdfuUide965SX0fTDNpasx0y769lBY4mNRwmnhVaVuB0qyLFC0JITaeTF5JXQ6waB5ZIGHURwChKve/ZzR7bDh9YhbRQSglr1Ec0W0++v8Tqk8WFLUY/71Jb6zcM2fVPwghjZQBgKglD08nBzcuMgQb27oPZTAEugUZQSdmWqTVC1NnTYNq2JAonT3z7DYSslzFFGvmGj4Xh3308UWrf7H6VzHKtEqZhfHs7JCzxYeuXp+3XOuvMNZikWQe02mT3kIofp6AYcGSvDSJGhFdJB5lXfxavctl8j3RYwhKsPbAH+QFieetnmvafINi1nHD9CqBz3gbYD7EADT5sMrZOHoqKBUct9LdNsm0hxwFAeXtz46St/31VrL7YPUk+fnqOuXFAmEmtEIciwcQbf0FchaFzNax6llEuvSjh02jPCDrxzyFYeQW6q0v3cWVlI9UX07g3rYa2bvCw1N/GhAH/jBopv14WjNFqjO0lAn3YYux5atz5gzjBpS+18A8Hc2TeR4rcT6leuhZIZwpbHRsUtJhSldvZikg4j3q0QqYzyay
X-Forefront-Antispam-Report: 
	CIP:20.93.157.195;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu11-emailsignatures-cloud.codetwo.com;PTR:westeu11-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(4636009)(39840400004)(346002)(376002)(396003)(136003)(46966006)(36840700001)(83170400001)(15974865002)(47076005)(2616005)(7636003)(7596003)(6512007)(356005)(316002)(5660300002)(31686004)(70206006)(36916002)(31696002)(70586007)(6916009)(44832011)(40480700001)(2906002)(508600001)(36860700001)(42882007)(8936002)(36756003)(336012)(82310400004)(8676002)(26005)(186003)(83380400001)(6486002)(6506007)(53546011)(142923001)(43740500002);DIR:OUT;SFP:1101;
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2022 13:47:32.5755
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 8646bfca-4858-4e39-0899-08d9dc1b688f
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[20.93.157.195];Helo=[westeu11-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB5EUR01FT032.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB9428
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Jan 2022 13:47:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55931


Met vriendelijke groet / kind regards,=0A=
=0A=
Mike Looijmans=0A=
System Expert=0A=
=0A=
=0A=
TOPIC Embedded Products B.V.=0A=
Materiaalweg 4, 5681 RJ Best=0A=
The Netherlands=0A=
=0A=
T: +31 (0) 499 33 69 69=0A=
E: mike.looijmans@topicproducts.com=0A=
W: www.topic.nl=0A=
=0A=
Please consider the environment before printing this e-mail=0A=
On 18-01-2022 06:29, Sam via lists.yoctoproject.org wrote:
> Was wondering if there was a way to edit the distitils3.bbclass or a simi=
lar=20
> file to only install the python .pyc files onto a yocto image?
>=20
> I saw something about editing the distutils-common-base.bbclass online,=20
> however, it was only mentioned and not elaborated on.
>=20
> I am currently working with a setup that installs .py files, then generat=
es=20
> the .pyc files and removes the .py files. I am now looking for a method t=
hat=20
> will only install the .pyc files.
>=20
> Any help would be appreciated.

What works well in many recipes is to just move the source files into their=
=20
own packages, e.g.

PACKAGES =3D+ "${PN}-src"
FILES_${PN}-src =3D "${mypythondir}/*.py"

That removes the py files from the package, but still allows you to install=
=20
the sources to target if you need them...

If you don't want a "src" package, adding them to the "dbg" package also wo=
rks=20
okay.

