Return-Path: <mike.looijmans@topic.nl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26A21C43334
	for <webhook@archiver.kernel.org>; Wed, 20 Jul 2022 14:42:17 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.50])
 by mx.groups.io with SMTP id smtpd.web09.54613.1658328134480478085
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Jul 2022 07:42:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topic.nl header.s=selector2 header.b=TSmrBRXv;
 spf=pass (domain: topicproducts.com, ip: 40.107.8.50,
 mailfrom: mike.looijmans@topicproducts.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=fail;
 b=Cgju9YRpE4ywEgAS3ooqcJ4qqKM7bEaFc3KSLwN6FqlKfhrW+MWb1Fv3v7z0bclvbulKKMbTHKc4p8bhhLCO9nrwlRsHJFnHEW3Y/tGL4njj5XTxzHSc70LDU45uRIUwvMfjp3QUNk2HEJ+ElZZUfch4MKS4wAvsEvcLARlI924PpptZVBVgCnaCzm9x3emp4mfQX/Q3+orEBYkwtStTXBkE/M0otLFMP01Y6IRx79iUcyc8GulETytfLe17eiOb6HzoY6mWo6ZzV2DczbMMJEf/Hbb9bsSap3Nv4amc9uqtqrkesKHR7kWbt/sP0m+6pUikQhKwlPiU5Nf9u4X3fg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AQnRFD7BhLh0Jj9S8CEsmWFEZasnZD6Yr9te/uh9lzM=;
 b=bddKOnf9e/+JMxDmpXp1EmMwi37184/klZBRFVNcmJQnkhEbPiCV5doj/4Xmg1PWBSfpVAFSPI1F5VeM6cAXKRLMludM10F42lhQR+dFYx6GAnxtuQsl6Zz/z6sDcbs+jbG3L6Jc3PSOIflvMHEgi+M69esl0CL6QU8O55KF5c1BmJ8TKUzY9xD0IG3jc5Zd5FR5GZHNwrhJlL2UDMzbjSjYXNznWy+V8b1j4EwtRIDHAHIH4XEclHiyHF4TsFnRfLW786nWml3+HbLz+a+U+LXdCGrYMw63zbhKN69h3gn9f82TYHi3eMpl3PqJAflG5qCjykUgMd/dZpNQzSAtsw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 13.93.42.39) smtp.rcpttodomain=delisys.ch smtp.mailfrom=topicproducts.com;
 dmarc=none action=none header.from=topic.nl; dkim=none (message not signed);
 arc=fail (47)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=topic.nl; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AQnRFD7BhLh0Jj9S8CEsmWFEZasnZD6Yr9te/uh9lzM=;
 b=TSmrBRXv6AF0PXkJ+5R5AeryiLhPaxfGp401MNlnV3h6gHD5MK4mQiENnypj3AM8g70w2tjqkcINIrxkYd52RvYpPXKiLAAtWADbg8FJhz+8uVHtqt0znVywb/TxbqdTV2EKAfISHvxkpjPNBNY4qDEA/Q1kdxkTFxIq4rVYdokxUoPhsZ/gq1ZWa6HTeQQTXkDIcMu5Z+mUl00Z6O1SgHwhUfykyblOeZoS3rjJAqKwBXp6G2ke4fH8prqkA63eyrOsymdoMQiVg6+OcsHIHhXnKtWJTEpZg6mPtYMDSP5jyDtjUYKiEsMVIlwLGOCTMfC9fyEcGeaS8aQKECebhw==
Received: from FR3P281CA0123.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:94::9) by
 VI1PR04MB6016.eurprd04.prod.outlook.com (2603:10a6:803:d3::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5438.23; Wed, 20 Jul 2022 14:42:10 +0000
Received: from VE1EUR01FT024.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:d10:94:cafe::cf) by FR3P281CA0123.outlook.office365.com
 (2603:10a6:d10:94::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.9 via Frontend
 Transport; Wed, 20 Jul 2022 14:42:10 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 13.93.42.39)
 smtp.mailfrom=topicproducts.com; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
 designates 13.93.42.39 as permitted sender) receiver=protection.outlook.com;
 client-ip=13.93.42.39; helo=westeu12-emailsignatures-cloud.codetwo.com; pr=C
Received: from westeu12-emailsignatures-cloud.codetwo.com (13.93.42.39) by
 VE1EUR01FT024.mail.protection.outlook.com (10.152.2.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5458.17 via Frontend Transport; Wed, 20 Jul 2022 14:42:10 +0000
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (104.47.0.56) by
 westeu12-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12)
 via SMTP; Wed, 20 Jul 2022 14:42:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nXtksoBAoRk9C1w4m6VwiJtJrRdoGqaPrKIVmH4fluqgwg1vPLzMx5mKfWM/NEsoOtSEbzBZSHIfmW/KJjRnv230ieAVgnxFvSk4GbQjqsREucR/JzzchTojF1Zvugb0OFUTXj40Kx5M0bRL5DZiCjklODeV0f+DAjp5n4fv0CNnCfTBEul9n7WpmAEn0LmVbDVT5rx67Tyck2xw0ytFRvkvGhjGv7p33bDn4FKqWg5Ly8hNQx4wl1+KkdQO8NvCikQ2vKG1r+kw6iE+bsciwm32FasCJ9RgiNWa9g3r9lUBOvorn4UnX47KEq5l1fWiqLEqeO92sROiMX/iIcIUkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jVKSnbU5znPUmx37IYyZzRlQ9+PYcJfAFhL9lU7LlQc=;
 b=fVyjzXJJH8NiAgvmq4kpVWrt0YSljSQn4nhUy/i9L5q+h5gTFfMsl2TYYc1AEZhdfgKlIXsMDA9sWmR46/Wb3Au4t8fK2AARmsCZYeYFV090HmD1ZZ4CYb0DmHhr57ixJQSPz8Va3lmj+WLjDordJnFnkqoqi/VP20BQuu5nftJYzUKGqbPyEaFjHcjpBaOaVKoLeATdmgr6EEXoBCgvjtjqcbm9U4dPJwHzpQlDOKPaK8zraroTk7p6xvD+G7jljZPzkPf4zgpGGox0ziREZcPyJ5uhLhceVIDQ3MM6ibeM1faIwMGDT4fuZdBZ0qrYuptxNabp/dt3yoQ9GgXeCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=topicproducts.com; dmarc=pass action=none header.from=topic.nl;
 dkim=pass header.d=topic.nl; arc=none
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=topic.nl;
Received: from AM6PR04MB6520.eurprd04.prod.outlook.com (2603:10a6:20b:f7::16)
 by VI1PR0402MB3791.eurprd04.prod.outlook.com (2603:10a6:803:1b::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.23; Wed, 20 Jul
 2022 14:42:04 +0000
Received: from AM6PR04MB6520.eurprd04.prod.outlook.com
 ([fe80::e57d:2712:23fc:da57]) by AM6PR04MB6520.eurprd04.prod.outlook.com
 ([fe80::e57d:2712:23fc:da57%3]) with mapi id 15.20.5438.024; Wed, 20 Jul 2022
 14:42:04 +0000
Message-ID: <6117a34e-22fc-0504-3d9b-0cf57dec9264@topic.nl>
Date: Wed, 20 Jul 2022 16:42:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [yocto] Switching between multiple DISTROs without
 "contamination"
Content-Language: en-US
To: Nicolas Jeker <n.jeker@delisys.ch>,
 Khoi Dinh Trinh <khoidinhtrinh@gmail.com>,
 Martin Weber <martin.weber@br-automation.com>
CC: yocto@lists.yoctoproject.org
References: 
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.0579b8aa-d2a5-42d7-9e61-2548c06e61ef@emailsignatures365.codetwo.com>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.0d2bd5fa-15cc-4b27-b94e-83614f9e5b38.2d9bc8b4-92c7-47b2-b9e8-ac8d32e87ee0@emailsignatures365.codetwo.com>
 <6b3d2b0146aeaf2c25e0440e7dd6aa0c17cb4a36.camel@delisys.ch>
 <8f0726b6-c7ed-83a1-6069-41bf8370b3bb@topic.nl>
 <CAMLPRYczkk+ceHD8Mnf=BMv2GJrEF_75mwLek37rccwPKZvYZQ@mail.gmail.com>
 <18cb0052f9c42bba13cbe2738b74058a4d691a00.camel@delisys.ch>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: Topic
In-Reply-To: <18cb0052f9c42bba13cbe2738b74058a4d691a00.camel@delisys.ch>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: AM0PR02CA0175.eurprd02.prod.outlook.com
 (2603:10a6:20b:28e::12) To AM6PR04MB6520.eurprd04.prod.outlook.com
 (2603:10a6:20b:f7::16)
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: c662b31f-3c7e-474e-7c11-08da6a5e06f3
X-MS-TrafficTypeDiagnostic: 
	VI1PR0402MB3791:EE_|VE1EUR01FT024:EE_|VI1PR04MB6016:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 yNnC1pmdq0+LALYDqcZjx+NFgYOgQHQAADyUk5Wl0JygIU1ltaT5rJv6EFaRuT5Ac+TRyNUi8QIsfpJbD40AxLbDlJW7rVhdKbaQtEOmGu3Z4GwaqGchg/IJGl+zMZAWHXGkG/r/mzkVuOGB2dCq3WIVZ2PRP39mD7SAhvYQPNfaE55Ci1bT3O9gMIu924QCZVTRFPI6JeuZSH+aLhVXa0Yr9SRPTJ5+kyuwnZo6sNHdM6cHT/WVuu7DXTLRo176grzYKbB1xtkyev3BKnm8s/SDAJcX72A2WTWrAB3J1a5KF+GAFIHzxiUziIcotqXvLlGxkRgX6UVlyENaAZeO7JVF87ftzKz2jl48xt1ZcImK+86D2Bj25Gr9D77Gy9TQtWSDlHCw/vsaAhomzcc+7Dnyubd8PhSiG/QvV+zKsOp1L2HIIzZeGLdR4ty6T2McCWW/OAuWQ0jDd9vmBCrlEVKzNNnKcivFCXvD9TIJarTKZdzsyYjCK293tQ7Na73wNCRcmTSTGQop0sZCjwvtnBtbxcQanxMxRnfk3WcBVFNBAv4366Jo7LtD0vicDQSB/h70puXRLWACvHbvbIFBUV7/rSPeuhW2gWqcWdkSdxHocgGuLHsurxYJ4Q+B+edDeKGG5/j2DmQmK+biB4636wzeal4gxuh4VbdRfjwHLCPp0Nldazx27JcH+znu7Z516X4+NENyB14BWrjBflHCLvuJAKF/5gxZNpVdOgO/Itvw6zgGfoCCJTjEXIGAo7O5Hl5A+H8H1CHXxfTKeZNETjckTN2OR0uwK/dq7Tfw8rGtCyEUdJ66fb2GreZZY91GP7sDoGp8ijD9GrzeZ+uwN1LqszKVHrzTTd7tYYyttFygYHzDhxnB+ps5qdKP5mCbfekPycGDtsTwcTX7uUqwfg==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB6520.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(136003)(346002)(376002)(366004)(39840400004)(396003)(110136005)(66476007)(8676002)(966005)(31686004)(4326008)(36916002)(45080400002)(66946007)(478600001)(15974865002)(36756003)(8936002)(31696002)(44832011)(6506007)(6486002)(5660300002)(66556008)(2906002)(38350700002)(316002)(52116002)(83170400001)(53546011)(26005)(41300700001)(38100700002)(6512007)(186003)(83380400001)(42882007)(2616005)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3791
X-CodeTwo-MessageID: 
 54bff845-004a-4f0a-8214-21cc742348a9.20220720144209@westeu12-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 VE1EUR01FT024.eop-EUR01.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	a5246013-ca8a-441c-10e7-08da6a5e03a7
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	zJkdwNjOcFPXMfqYm0YNhyjNPqR8OWP+eeZqG057uhrnJc8CXiSKiz+wiHGGVJWste0o+dBL+DWBp6lbt6KWwkLUoajmRVWWtK+pifaORSpqZ/QnMD5/+kYxhQZIaTbfwsXivfBKRe/MVNml1hiKWQjt0y9Hn3e9nZp3RTI3b79kkbl0+MGHJEvHGB0oruzgLot7iVknGRrzfVO0HZ3J1DtIz4Cw0cDtPTVEJFtQspYgYTfv2Dp+hCULMe2E3hhdJBOfpObNimKMofSLMO74whOQNqBjoTfp8vKXTawYE0qzA4U2AtJEEaEDmC528ZJ+1MhLX03rVMoxtN9wHQdUk2or3VmCwNvWzXr1ulZs+rFWDgkHuxvmXf9dF5ge8us9ByE07QZ9tMrYVr9wMA849qG1u3b66T5tzC3azrHyDge3fCJ+6KaiwWU3tolNjF5HVruU7SPIgg4HIJWRLK339tk1AgW5iQmNwUWyRlqqRT7PH3/cMBMnF9h4TV7kPDPiEx1qdcosKdXwOxCZYfYzhnuZW0PPrNmZZSaDK+2hLV/L/q0OGzCmUbNrVvtwY6xGPWsO0eqmpoFDcxHzMUWhg97PWCYSL8DNc2crkOUYsyOPSgsLQ4pX8Kgk4UTD+X0FXyGrQDdZObULa1nU4N05w5tDeJlgdMrg+3LJMwfEVUnxptcrWq98qgJncywiuDdyq7b9FEYQO29U2GBawRMLDfPj389w/fjogynLf7ysnkeDm2nDlNqt0X3zLQHpfOQ9pAHawUIWj2Yv96GiGS2DiQIOQLk5+016n7F17wIZxne806oslqqtlp9BbcRx8XvXFauKD8xM2TWJpxKJh6p0Tg==
X-Forefront-Antispam-Report: 
	CIP:13.93.42.39;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu12-emailsignatures-cloud.codetwo.com;PTR:westeu12-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(13230016)(4636009)(136003)(396003)(346002)(376002)(39840400004)(46966006)(36840700001)(83170400001)(36756003)(7636003)(45080400002)(82310400005)(336012)(356005)(316002)(7596003)(110136005)(70206006)(8676002)(47076005)(31686004)(4326008)(83380400001)(8936002)(2616005)(36916002)(41300700001)(2906002)(6512007)(40480700001)(70586007)(26005)(186003)(478600001)(31696002)(36860700001)(15974865002)(5660300002)(6486002)(42882007)(966005)(6506007)(53546011)(44832011)(43740500002);DIR:OUT;SFP:1101;
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jul 2022 14:42:10.0874
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 c662b31f-3c7e-474e-7c11-08da6a5e06f3
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[13.93.42.39];Helo=[westeu12-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	VE1EUR01FT024.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6016
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Jul 2022 14:42:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57601

Hi Nicolas,

I guess part of your problem is that DISTRO does not end up in any=20
package grouping, unlike MACHINE and ARCH and so.

So if OE/Yocto does The Right Thing, this means that it will have to=20
remove a bunch of packages from your feed and sysroot, and add them=20
again (from sstate-cache or by building) every time you switch DISTRO=20
(which, on a build server, would be each and every build).
Hence my advice to use a separate build directory for each, otherwise=20
Yocto will have to juggle with several packages on each and every build.=20
With accidents waiting to happen.

Hence my advice remains, you can have "my-image-dev" and even=20
"my-machine-dev" in the same build directory, but don't share=20
"my-distro-dev" that way, it's an invitation to trouble, even though It=20
Should Work In Theory...

Mike.


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
On 13-07-2022 15:32, Nicolas Jeker wrote:
> Thanks Martin and Mike for your explanations and tips.
>
> So, I've done a lot of testing today and it seems I simplified the
> example in my first email a bit too much. The example as-is works fine
> when switching DISTROs as far as I can tell. The problem only arises
> when wildcards are used.
>
> Changing my initial example like this should trigger the behaviour I've
> initially described:
>
> SRC_URI:append:mydistro-dev =3D " file://application-dbg.service"
>
> do_install {
>      # ...snip...
>      # systemd service
>      install -d ${D}${systemd_system_unitdir}
>      install -m 0644 ${WORKDIR}/*.service ${D}${systemd_system_unitdir}
> }
>
> do_install:append:mydistro-dev() {
>      # debug systemd services
>      install -d ${D}${systemd_system_unitdir}
>      install -m 0644 ${WORKDIR}/application-dbg.service
> ${D}${systemd_system_unitdir}
> }
>
> Notice the *.service in do_install.
>
>  From my testing, this is how contamination happens:
>
> 1) Build with 'DISTRO=3Dmydistro bitbake application'. All tasks for the
> recipe are run and the directories in WORKDIR are populated, including
> the "application.service" file.
> 2) Build with 'DISTRO=3Dmydistro-dev bitbake application'. do_unpack is
> rerun and places the additional "application-dbg.service" file in
> WORKDIR.
> 3) Switching back to 'mydistro' will get the recipe from sstate cache,
> which works fine.
> 4) Changing application.bb and rebuilding with 'DISTRO=3Dmydistro bitbake
> application' reruns do_install (as expected). This leads to the
> packages do_install picking up the additional "application-dbg.service"
> file left behind by the invocation in step 2).
>
> Mike, Martin: Do you remember in which cases you encountered problems
> when sharing the build directory?
>
> On Tue, 2022-07-12 at 09:15 -0700, Khoi Dinh Trinh wrote:
>> Thank you Nicolas for asking this question since I will probably run
>> into this issue soon if not for this email thread. The answers so far
>> have been very helpful but I just want to clarify a bit more on why
>> doesn't the package get rebuilt? From my understanding, Yocto should
>> rerun a task when the signature of the task changes and since
>> do_install has an override on mydistro-dev, shouldn't the content and
>> thus the signature of do_install change when switching distro and so
>> Yocto should rerun it?
> As far as I can tell, all the relevant tasks are rerun correctly when
> something is changed. Relevant tasks meaning only the tasks that are
> actually different.
>
> The specific issue I experienced is due to the WORKDIR not being
> cleaned between different task invocations and the recipe (probably
> wrongfully) relying on wildcards to gather files, see example above.
>
>> I have a lot of tasks with override not just on DISTRO but other
>> things like MACHINE or custom variables so I want to understand the
>> rebuild mechanism as best I can.
>>
> There's surely someone more knowledgeable here that could clarify the
> inner workings of this mechanism a lot better than me.
>
>> Best,
>> Khoi Trinh
>>
>> On Tue, Jul 12, 2022 at 8:05 AM Mike Looijmans
>> <mike.looijmans@topic.nl> wrote:
>>> Quick answer: Don't build multiple distros in one build directory.
>>>
> It's really a bummer that it's not reliably possible to switch between
> DISTROs inside one build directory.
>
>>> You might get away with setting TMPDIR =3D "tmp-${DISTRO}" to give
>>> each
>>> its own.
>>>
>>> But I'd rather advice to set up two separate builds and just point
>>> the
>>> downloads and sstate-cache to the same location. It'll be faster
>>> than
>>> the TMPDIR option.
>>>
>>> Or figure out how to put the difference in the IMAGE only. Then you
>>> can
>>> just build both images (in parallel, woot), which is faster, more
>>> convenient and saves on diskspace.
> As I'm currently working with something close to what you describe, I
> think I'll try to stay away from multiple DISTROs if possible and
> improve on what I'm already doing.
>
>>> What I often do is have my-application.bb generate a
>>> my-application-utils package that only gets installed in the "dev"
>>> image
>>> but not in the production one, which only installs "my-
>>> application".
> This is probably what Martin meant with his A.bb and A-xx.bb example.
> It's so far one of the best approaches I've seen, thanks.
>
>>> You could also create a "my-application-dev.bb" recipe that
>>> includes
>>> my-application.bb and just changes what it needs to be different.
>>>
>>>
>>>
>>>
>>> Met vriendelijke groet / kind regards,
>>>
>>> Mike Looijmans
>>> System Expert
>>>
>>>
>>> TOPIC Embedded Products B.V.
>>> Materiaalweg 4, 5681 RJ Best
>>> The Netherlands
>>>
>>> T: +31 (0) 499 33 69 69
>>> E: mike.looijmans@topicproducts.com
>>> W: www.topic.nl
>>>
>>> Please consider the environment before printing this e-mail
>>> On 12-07-2022 15:37, Nicolas Jeker via lists.yoctoproject.org
>>> wrote:
>>>> Hi all,
>>>>
>>>> I'm currently using an additional layer and image to
>>>> differentiate
>>>> between a release and development build (enabling NFS, SSH, root
>>>> login,
>>>> etc.). To create a development build, I manually add the layer to
>>>> bblayers.conf. This works quite well, but feels a bit clumsy to
>>>> integrate into a CI/CD pipeline.
>>>>
>>>> Per these past discussions here [1][2], I'm now trying to migrate
>>>> to
>>>> multiple DISTROs, something like "mydistro" and "mydistro-dev".
>>>>
>>>> While migrating some of the changes, I discovered that I run into
>>>> caching(?) issues. I have a recipe for an internal application
>>>> and want
>>>> to include additional systemd service files in the development
>>>> image.
>>>>
>>>> What I did was this:
>>>>
>>>> Added "application-dbg.service" to recipes-
>>>> internal/application/files
>>>>
>>>> Adapted application.bb recipe:
>>>>
>>>> SRC_URI:append:mydistro-dev =3D " file://application-dbg.service"
>>>>
>>>> do_install {
>>>>  =C2=A0 =C2=A0 =C2=A0 # ...snip...
>>>>  =C2=A0 =C2=A0 =C2=A0 # systemd service
>>>>  =C2=A0 =C2=A0 =C2=A0 install -d ${D}${systemd_system_unitdir}
>>>>  =C2=A0 =C2=A0 =C2=A0 install -m 0644 ${WORKDIR}/application.service
>>>> ${D}${systemd_system_unitdir}
>>>> }
>>>>
>>>> do_install:append:mydistro-dev() {
>>>>  =C2=A0 =C2=A0 =C2=A0 # debug systemd services
>>>>  =C2=A0 =C2=A0 =C2=A0 install -d ${D}${systemd_system_unitdir}
>>>>  =C2=A0 =C2=A0 =C2=A0 install -m 0644 ${WORKDIR}/application-dbg.servi=
ce
>>>> ${D}${systemd_system_unitdir}
>>>> }
>>>>
>>>>
>>>> When I run "DISTRO=3Dmydistro-dev bitbake application" followed by
>>>> "DISTRO=3Dmydistro bitbake application", the debug service file is
>>>> still
>>>> present in the package. This seems to be caused by the "image"
>>>> directory in the recipe WORKDIR not being cleaned between
>>>> subsequent
>>>> do_install runs. Is this expected behaviour? What's the best
>>>> solution?
>>>>
>>>> Kind regards,
>>>> Nicolas
>>>>
>>>> [1]:
>>>> https://lore.kernel.org/yocto/CAH9dsRiArf_9GgQS4hCg5=3DJ_Jk6cd3eiGaOiQ=
d788+iSLTuU+g@mail.gmail.com/
>>>> [2]:
>>>> https://lore.kernel.org/yocto/VI1PR0602MB3549F83AC93A53785DE48677D3FD9=
@VI1PR0602MB3549.eurprd06.prod.outlook.com/
>>>>
>>>>
>>>>
>>> --=20
>>> Mike Looijmans
>>>
>>>
>>>
>>>

--=20
Mike Looijmans


