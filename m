Received: from EUR02-AM5-obe.outbound.protection.outlook.com (EUR02-AM5-obe.outbound.protection.outlook.com [40.92.67.28])
 by mx.groups.io with SMTP id smtpd.web08.82971.1629460758276290581
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Aug 2021 04:59:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=M1uAMozF;
 spf=pass (domain: outlook.com, ip: 40.92.67.28, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IRrO0BgO8LrRrC1f0WwQrp0AePqOEivacAj0kSgQfmXeAZIknlJSGsknpDYnRfFeReYioDrkC7C+QCZNiSVm0/Zi8nj1a5mzNq323aW0gwO0I120OpmH8SwITaQxOXdjyrX4PsOIWz3i3I6B0C5PllqA8+kqjvnUnv2i30i7G97lWQTKGDansmQut6FRyR8U8AFv+TVFOM8MdKTROd2hFaFH3N5eUZ2/aaFAuy9L2SI250Zhw85sw2J6Lrx6vhCXUsGeVz9ZYTd+fRUYYomt/X//ZaB72hbdpuMNfr3x1aYqkGnjlCQhOzJgUEkaIHRXNDccZFTX+s5MIaWUrKi5VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GIEcIc5q5TK/4UbU9WuPVev0sJGj/9c4uwVajP1S6ZI=;
 b=N/FxyYR78sW43KPfI0AHz3sBdqsk+YnyfPT8EeNCMXTCGX5trm0WE4TljC/3mNUQFI9jJJU8zL2xC2W8mcaIU4wUKP9dqwc71TDvPPyBbvNNMXZN4noGXUZyslvRd1GU859ToUBUZrGR7k92RpAlKEPFR3Fnv8GqnMOyR1qlnVLTF5aamD0hPUShB17iBsYpkqVnGGK/DGh3TcYMI2lhIxYFJvH4NaPDkMV6i/EEw4kEbPJsyo1WfRGaEbBW+8e6wOC3dNo4WUFFgozah3jRF+RSx/n7KSxzHTWE3Diviy92CpdYpdIVsmy9euDl4qqbdwRvgPdbbuX6DqOf7tEOdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GIEcIc5q5TK/4UbU9WuPVev0sJGj/9c4uwVajP1S6ZI=;
 b=M1uAMozF7DF86sT8cmMGjoJwggFcthddKxNlZs2H6hsY0sYz6r6ClnWXa6Rt4O/7wyqoYEMkFPwYq6yaUP/HOLD2VUCkTTLE54kGhC2+9WEBNDa37VlrJeIy7Zm92WGDD8unB0t9SFN398CW42AhR/w8X0XqsdkVQ9RxdmBT8EC3+D+qAoTYsK6JJ8w+LBCmKdeQ/3yDBN3G5nU7CC29XkBWxLkvNUwOa6isWDjn2jbNS70yxnb0H8JO8GHbpVKgKlhkly/v26giaSJRf63uoUx8pnta8J6OvKH4XoE1yyTEoqhWbPT5TCs/qpoeiTQm0bnzNzJxEleG0aGbqy13ow==
Received: from AM5EUR02FT054.eop-EUR02.prod.protection.outlook.com
 (2a01:111:e400:7e1c::50) by
 AM5EUR02HT148.eop-EUR02.prod.protection.outlook.com (2a01:111:e400:7e1c::408)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Fri, 20 Aug
 2021 11:59:16 +0000
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com
 (2a01:111:e400:7e1c::47) by AM5EUR02FT054.mail.protection.outlook.com
 (2a01:111:e400:7e1c::200) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19 via Frontend
 Transport; Fri, 20 Aug 2021 11:59:15 +0000
X-IncomingTopHeaderMarker: 
 OriginalChecksum:A665458D65CB10505EFC5653147D4A59059430C8D2F7A592AE72E6441192779D;UpperCasedChecksum:C5C02012C911343971B444D6ECDFFD2175620251E4E8CA885114809A66A1AEDA;SizeAsReceived:8792;Count:47
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::e4c0:3ddf:e023:da7a]) by AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::e4c0:3ddf:e023:da7a%4]) with mapi id 15.20.4436.021; Fri, 20 Aug 2021
 11:59:15 +0000
Subject: Re: [yocto] Pyinstaller recipe #yocto
To: yasminebenghozzi6@gmail.com, yocto@lists.yoctoproject.org
References: <olvn.1629460633987616304.woNy@lists.yoctoproject.org>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Message-ID: 
 <AM9PR09MB46422258FD7A6E50122BF6A6A8C19@AM9PR09MB4642.eurprd09.prod.outlook.com>
Date: Fri, 20 Aug 2021 13:59:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <olvn.1629460633987616304.woNy@lists.yoctoproject.org>
X-TMN: 
 [vKwdvnFrIfU/0AkM2MR190zx+DONDGhRcevKf+loEmT93BTXqr55mQJtxTL/JGGHGwod4FxR8VU=]
X-ClientProxiedBy: AM4PR0202CA0005.eurprd02.prod.outlook.com
 (2603:10a6:200:89::15) To AM9PR09MB4642.eurprd09.prod.outlook.com
 (2603:10a6:20b:284::24)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: 
 <44cd5b3e-f214-8936-7515-06b49974e1e5@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:8109:9a80:3b94:7c30:a29b:6f9e:1941] (2a02:8109:9a80:3b94:7c30:a29b:6f9e:1941) by AM4PR0202CA0005.eurprd02.prod.outlook.com (2603:10a6:200:89::15) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19 via Frontend Transport; Fri, 20 Aug 2021 11:59:15 +0000
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 47
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 59b14614-9842-4a96-9ee4-08d963d1eed6
X-MS-TrafficTypeDiagnostic: AM5EUR02HT148:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	QhilrU2WmK42R/tULgo8tEhouzyW+pjTmtsgMIcSbDEbfcCOdRsi25OFbFRw+ZNB1iwuL62eEb7bu5Fq0Buh1J67I3uTBcitwBTlNE2vdoy5rolJ+k04GiL1pPEPEQaZLlxj79sfn+hhIDzo6KCUV5hCNAsDfCvYcuz1otM6beeGapUxJSWpzYy+cIBb7tw/RlYBGDYB1K9i9WKrJCX3/jQ4ufpYZ1VCztApCU/G9hIySu/n4cn/2lYYVAeDVY2YlMj1xwfYsgYaj6+9X5jctqWwxqusALIETWsPOcjzk04iy9VSHcbxKyJHXYdIl+yFy7O+JlGDSED5kciM0V0+s0mWQiv8kNBJbcsTj9ud2drATBQhZUC85499iqGpKkuJ9e44RaKHMlx3J+BX4WQP6yo+WEQm4pny54TDq9qv3WGJYEhropnBaxrnwftaYwbONSVqRjthknK6Xtb59bBj+565iuz42khOw6/LFt7H4ZA=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	HYb6Y5/1EJfgti1GXRPLwbw9/OynTVVam813y8Mvp1+lsyK3pSdWPnvMXFmIPCHZ/08WXxSXNWi0dkR4xKrxQoOLzMkA8e3TBc3XREjGLvJzEDV6CDEAIlKOPbu6RyLz0imgmUBaBQz8y3vNpdyZA/vByW82m3npSJLxRusi8fKsZqk7USpaAzR9O0Xq4cjAwUQZ0q0MbbcGqlHdGjWdzA==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59b14614-9842-4a96-9ee4-08d963d1eed6
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2021 11:59:15.9597
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: 
	AM5EUR02FT054.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5EUR02HT148
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

The file in called COPYING.txt in this archive [1] not LICENSE

[1]https://files.pythonhosted.org/packages/a9/d9/9fdfb0ac2354d059e466d562689dbe53a23c4062019da2057f0eaed635e0/pyinstaller-4.5.1.tar.gz

On 20.08.21 13:57, yasminebenghozzi6@gmail.com wrote:
> Hello,
> 
> So I've been trying to build a pyinstaller recipe, which is this one , 
> but I got those errors.
> 
> 
> 
> 
