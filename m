Received: from EUR03-DB5-obe.outbound.protection.outlook.com (EUR03-DB5-obe.outbound.protection.outlook.com [40.92.71.50])
 by mx.groups.io with SMTP id smtpd.web11.32202.1629991508577428216
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Aug 2021 08:25:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=up3ND5xb;
 spf=pass (domain: outlook.com, ip: 40.92.71.50, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XiCSiSxJtHkYI5w1FSJIKYHW7xsEWE7hAXnBHiESo1jDi84RTCD+ybYlaR3OnDdkV7NLuu7dv7STmS8s5CzOj1Na3fKpR+iuKdANULRbqo5D4iMvrjxoEBGrzzK0dpNNd/FPEepl4csAaQIjo8wzUshBaYfQCWaEhTN2t+Pra7rRnfl2gEJFHC2B46oOM5RUt1bwJDlHxrKKoeW05Wjh4nwbqVJc0V7lCayDXTurPxkCb15EuAs6EWpg+eYEXzvPYelcKCxLctwFE38PTScEFMLpDjTD5wS+qlvpPnqPl5UXge8dKeYiZ1286eXizmyzFCOCR2Gqv/D2pcZsMt8Xtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uy7JFfsPVqSB7QqH7AXNLmn5KzXyGW9gP8m/VjMDpw8=;
 b=WiN0N4B12x9vVqCPBlfLW6AigHe+pzQD4JM/IntcmT6KEfDI7W8ornk0m9LA9ZiTSgHmV9Z2JpTVuqnP8dXNmnqqH83sc0IYeFrJG/MG7VNCsX0rt7OvfSe1exahzIuFn3h1P+brBrn2eUdf3Hm3cV5oJ0+sJLUVFw1E536dpLz/9zOFQSGpA3ASRwweiVssrCpTrZGflOqo0D3OFZbbWi5NFORjbPNlnuXIbeEllIxexllhk7NaR9qAGjgDtw2DV60/Xj7xI6GtsRRNUK7OkOdGpZySuSUJnrHRWrG3vRoJApRQbvymB3E6aRfkvGjMNYuh5vDQA2S5se0rQkek0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uy7JFfsPVqSB7QqH7AXNLmn5KzXyGW9gP8m/VjMDpw8=;
 b=up3ND5xb43xg1WlhOKk3Tzeazio/I41T1+kMhJhG8DM0ogFFejdkZGOwJn5v4nK/KI1LYi2tZ3nLh+sLQwXgOTtfUsc4mOQH9SUag/zv9jkB8TFK0oNAIsvBYv8+1UCvRbAYkZae11F3u7GwUA9g/tRNSbpZ543+Z6CF8/uN8C+xCGScHIBrhIj15HuHw1IKKVxiS6cJXV7oeV0EPRpSLNfhlRfkuDehxW3F/Xe+Jpa7EljxTb6kzTXnHWlxU9KmJZYo5Dcg1Qrj9gjMymbzlRv7TS3DDzI8c/gTHx/gxu1MMkKrkcA2teiYxPGQJwoSqJ1ociuLWdgQQdd3bM5EKQ==
Received: from VE1EUR03FT023.eop-EUR03.prod.protection.outlook.com
 (2a01:111:e400:7e09::48) by
 VE1EUR03HT136.eop-EUR03.prod.protection.outlook.com (2a01:111:e400:7e09::327)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Thu, 26 Aug
 2021 15:25:06 +0000
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com
 (2a01:111:e400:7e09::47) by VE1EUR03FT023.mail.protection.outlook.com
 (2a01:111:e400:7e09::133) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.17 via Frontend
 Transport; Thu, 26 Aug 2021 15:25:05 +0000
X-IncomingTopHeaderMarker: 
 OriginalChecksum:E7587C2A5A396623936E13A55A0EBBEE63E0F1F30AF26347C9CC7D9D2194E619;UpperCasedChecksum:F1DA4B3921D27CF8E088D5F7435422ED211DD887243CE428FCE8450C34FA1F56;SizeAsReceived:8801;Count:47
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::9cf:1a5a:ea83:4a32]) by AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::9cf:1a5a:ea83:4a32%9]) with mapi id 15.20.4436.024; Thu, 26 Aug 2021
 15:25:05 +0000
Subject: Re: [yocto] Run an executable script on the yocto image
To: yasminebenghozzi6@gmail.com, yocto@lists.yoctoproject.org
References: <H0pA.1629990894815210536.GJrq@lists.yoctoproject.org>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Message-ID: 
 <AM9PR09MB46423709EE49B65D8A9A4335A8C79@AM9PR09MB4642.eurprd09.prod.outlook.com>
Date: Thu, 26 Aug 2021 17:25:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <H0pA.1629990894815210536.GJrq@lists.yoctoproject.org>
X-TMN: 
 [ulNbGawtQwvDanrheZzptRT51wFpQwm8uxJaB8yU7E+hFGTFyRUvw/dDEFxgirWoDUQFIZxsBHQ=]
X-ClientProxiedBy: AM3PR04CA0139.eurprd04.prod.outlook.com (2603:10a6:207::23)
 To AM9PR09MB4642.eurprd09.prod.outlook.com (2603:10a6:20b:284::24)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: 
 <47cfe304-096d-743c-f53c-3329b393b56a@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:8109:9a80:3b94:7c30:a29b:6f9e:1941] (2a02:8109:9a80:3b94:7c30:a29b:6f9e:1941) by AM3PR04CA0139.eurprd04.prod.outlook.com (2603:10a6:207::23) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.17 via Frontend Transport; Thu, 26 Aug 2021 15:25:05 +0000
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 47
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 2db1efbc-295e-4530-0e1f-08d968a5ae79
X-MS-TrafficTypeDiagnostic: VE1EUR03HT136:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	rqU4lHWA/pFh/CDDxyal9DHyURHhYYSX8SbWKzmn4V0dXb0fT1FSkapkYsnSkYyXOnp3kwwf1ywcQNUTMTNONm7R9Vz9zbnPgbbXtvQ+okqHCXfgcZjzFe6Gl5dJwdKcYEXB+Njek41R0Phb5TxBjAQ4cN+1Bp59OMhk/pI2VkYMjLTF48GKWSm6Yys6bejkF1cCYn/SA4zSxV9a4tSWoA1/6HjArszJfkO6ZoInGLGzm2zpgrd9Xfc/j1tvtXtUMRa+44XSy7SFjunbyZkVlFUsnuwqVxD0/OxZ+7dpNzeSzV8ICEpPIK+ZxoLLLUyy3NzrChMDBDu0FtgwthuoNw8ugDj3btw1rmzIi/WzAf7jOMV5SmMSK6YUkTCgl9XuMVR3ruf7bucfc0fYz/tU6nYBf5D3o73e3MYptHIAGsMBQPHO5EsqGG9QhtttQyTXY3CbhVDYVEUIVclg3eizwhg/+lU44qkXtC7ynfsUD/A=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	JMjoQLAnj0ZWrzdf+IgSKYZW1LnpF0tyMaxgB5149HCG0ZzOyc7iAD96rPToGSlY/2ObDzNUlAHZGmq1M/vmabZDM2UBWIkiIAFLauusClDmQt/S8vsLinFN4KX5eD1BUMMh0t14GRnGSqV6hjDg/qcwxqx7U8MMT1c4+JAfi8uG+JVq1Y2VZmgFFCudp1LsyyfHqruZUuUcC2p8FD9ZiA==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2db1efbc-295e-4530-0e1f-08d968a5ae79
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Aug 2021 15:25:05.9132
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: 
	VE1EUR03FT023.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR03HT136
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

If you're sure you only use standard python libs it's fairly easy.

make a recipe (name it how ever you like)

SCR_URI = "file://<your script>.py"

do_install() {
     install -m 0755 <your script>.py ${bindir}/<your script>.py
}

RDEPENDS:${PN} += "python3-core"

in the image

IMAGE_INSTALL += "<your recipe name>"

---

if your script needs further libraries, reference them in the recipe with

RDEPENDS:${PN} += "python3-core dependency1 dependency2 dependency3..."

Then you call the result on your device with <your script>.py from any 
console

Maybe add a "#!/usr/bin/env python3" shebang as a first line to your script

On 26.08.21 17:14, yasminebenghozzi6@gmail.com wrote:
> Hello,
> 
> Can anyone suggest how to make a python script executable on the yocto 
> image? I 've been trying with the pyinstaller but didn't work, I made it 
> executable on my laptop and transfer it to yocto image but didn't work 
> also,
> Has any one tried it before? are there other alternatives?
> 
> 
> 
> 
