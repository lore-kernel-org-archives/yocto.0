Received: from EUR01-VE1-obe.outbound.protection.outlook.com (EUR01-VE1-obe.outbound.protection.outlook.com [40.92.66.44])
 by mx.groups.io with SMTP id smtpd.web10.9729.1606417775660179454
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Nov 2020 11:09:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=ZFSNMnMH;
 spf=pass (domain: outlook.com, ip: 40.92.66.44, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EaZgXsM7zjsKcJ5ORvYzeNNCEwLSpZzAKQiEwAlcQak2W6JEZC4ajFq4iIAa54xhf7m5gnbP444zePkWCsYbpH7Jir3YAJuRdhaELmXbOZJ06afw4DLStjo4v2jIPcE7bAGElhcJuJaTBa4LdechjtGu4V/lfPvuUzfJUNSRmSzqOdeLVSMAUpuwq9D0m3hlsW+kJ5Y61yHP0HYqSZt5NGpFhVX9/n1vC8iwQXpWY7NgV+puPloqexQIrqcjBsgzZgjpHe4Snfd6ixcNB6pnj/QeCVea3sRanrY/xDOw2hriT5pBsqZKQ74YtKEJXmWai5RjkxTQBtHDrlljfTdSIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q9wDCIldS58IHZJGNrIExUlqtO+PL7MnvapRV0OA5Tk=;
 b=i3ejJT2C95w7to9TzRB88QsuYiiQnLjqhZ/n+dMlhOgsD7Eb+2Nw+IbuR64zr21MdXJGrpnfQPRVXl38VP8Ua47qay+tzZoebZshuyggVQCP/LbIxXGwaeGprUwItbYEQXD36da+R0NJ1ABU84l/mF4zjVbn4ZfuuCxrR+IqXpdHgJDYU487V3Abqeubl54ozCjosUxlkDcr2ow83KmgyqGgQyBydFcK0kNg04K2dtblk9mpLJOBL/AcRS/SrBHxNlxRFkGb3sbJAOAeH+V50azzXeeL7uuJgk5lrms4r/T3xyfC5KFfccfgi/RorC9vRU5f7jbivUkDkX7NDwYY3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q9wDCIldS58IHZJGNrIExUlqtO+PL7MnvapRV0OA5Tk=;
 b=ZFSNMnMHVsvgWEMZPkrX2J3/fyLHTxZ7b8e09maScfXg7jgSRmoYgu/tCSj72HKUjpd9wFqWCeyr41i9DMnWAPtBGZZLuLhqfr7WzLAVYluKTpJ24JlUPICiLRI5/NELRiuvL2iqNpjuDJ54z0WspMjC5KdXwkuEPiFe00iq9/5Ek9g4mHqQjnKjWoEAHDvUfDoG10SzIzZzc3JJZSOHk3wIJIzEDpIccycddAXWBgrASEvo6JwtVGGAATXv22j8AVEv1/cHYTGkOE4xIO+aZKt1Jez1pKOnnd0u0anGxzvDRqdTo4MQVpSgJAoA5csC5irXotjNaf/b0lJKiF/iVg==
Received: from DB5EUR01FT044.eop-EUR01.prod.protection.outlook.com
 (2a01:111:e400:7e1a::4f) by
 DB5EUR01HT092.eop-EUR01.prod.protection.outlook.com (2a01:111:e400:7e1a::308)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.23; Thu, 26 Nov
 2020 19:09:33 +0000
Received: from AM9PR09MB4739.eurprd09.prod.outlook.com
 (2a01:111:e400:7e1a::4b) by DB5EUR01FT044.mail.protection.outlook.com
 (2a01:111:e400:7e1a::182) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.23 via Frontend
 Transport; Thu, 26 Nov 2020 19:09:33 +0000
X-IncomingTopHeaderMarker: 
 OriginalChecksum:9917DA6BFB986E2FC81395C7D57CD6CA5EC4F397978DB28D3E5272184DC8CD2C;UpperCasedChecksum:3ED314D598F9BC0783B98B95596A59A88B1D6B9883F48E76B00E19FB8150C54D;SizeAsReceived:8618;Count:47
Received: from AM9PR09MB4739.eurprd09.prod.outlook.com
 ([fe80::b58c:71c0:5d82:ffdb]) by AM9PR09MB4739.eurprd09.prod.outlook.com
 ([fe80::b58c:71c0:5d82:ffdb%4]) with mapi id 15.20.3589.032; Thu, 26 Nov 2020
 19:09:33 +0000
Subject: Re: [yocto] How to Add Packages to Python3
To: yocto@lists.yoctoproject.org
References: <8cWI.1606389733369446164.PImb@lists.yoctoproject.org>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Message-ID: 
 <AM9PR09MB4739FD6AC4EB12C1BADF14EFA8F90@AM9PR09MB4739.eurprd09.prod.outlook.com>
Date: Thu, 26 Nov 2020 20:09:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <8cWI.1606389733369446164.PImb@lists.yoctoproject.org>
X-TMN: [uH8FcCBi2yOELSPZubw1ucfslBFFCGF1]
X-ClientProxiedBy: AM7PR03CA0021.eurprd03.prod.outlook.com
 (2603:10a6:20b:130::31) To AM9PR09MB4739.eurprd09.prod.outlook.com
 (2603:10a6:20b:282::12)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: 
 <195d7caf-b92f-20d4-9a95-d52b80484dc6@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.23] (87.141.92.39) by AM7PR03CA0021.eurprd03.prod.outlook.com (2603:10a6:20b:130::31) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.20 via Frontend Transport; Thu, 26 Nov 2020 19:09:32 +0000
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 47
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 8b16a0a7-364e-4bc3-31f3-08d8923eced0
X-MS-TrafficTypeDiagnostic: DB5EUR01HT092:
X-MS-Exchange-MinimumUrlDomainAge: yoctoproject.org#3731
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	6oHyLqByeOKen+R+IGOLQNe1QS1lvHsz9gHXaFi2+EDmr2lkaFQhxgAkB2mM/0yBcUuIdTds5TMWRINaTpMvJQplU+DeMJtdUgt+SgTMCfldmWRX6uQtcFdWLC2TiYEOhbLhBPosmGgVQEQqAq2x3QwLGoQkPX6NM+EwLf9txYjLEszvKC0uxn6sTpAYBtAJEbseHKWoUT9tO4xA1TbpN1F9D8Nbnt+6ZSsKGm2a1msOUSfoLwHqEAXEo8XpBd8I
X-MS-Exchange-AntiSpam-MessageData: 
	OlOzxnUUCGzMYY/8cj9niD/nw8cEmKTWrdulMTb9ym4vo2SLoH1XACpy5eMYh4KIt1Qc7eqx3fODqzwYV/6Q19S76MQJjjnU5IydSg+0cUZpl5KPJkm0VA2ZQAj7Vg/n2Ov5kU5EV1OBWyt+E/PZRQ==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b16a0a7-364e-4bc3-31f3-08d8923eced0
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2020 19:09:33.1091
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: 
	DB5EUR01FT044.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR01HT092
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Just add RDEPENDS_${PN] += "python3-json" to the recipe that creates the 
package, that contains the mentioned python script.

Alternatively add IMAGE_INSTALL += "python3-json" to the image the 
script is in.

As this is a core module (shipped by python3) the mapping is purely 
based on the python3-manifest.json

On 26.11.20 12:22, vijayrakeshmunganda@gmail.com wrote:
> Hi,
> 
> I had installed a python file into the rootfs and when I tried to run, 
> it throws an error as "ModuleNotFoundError: No module named 'json'". I 
> tried to find bb file for jsonlib, but I couldn't find at 
> https://layers.openembedded.org/layerindex/branch/master/recipes/?q=python+json. 
> Also some sources suggest to add packages via python3-manifest.json. 
> Kindly please help me in this regard.
> 
> Thanks,
> VR
> 
> 
> 
> 
