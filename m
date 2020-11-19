Received: from NAM11-CO1-obe.outbound.protection.outlook.com (NAM11-CO1-obe.outbound.protection.outlook.com [40.107.220.86])
 by mx.groups.io with SMTP id smtpd.web11.2456.1605745821765191539
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Nov 2020 16:30:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=c00dM2S5;
 spf=pass (domain: windriver.com, ip: 40.107.220.86, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TGa2dtFjxkkaYH3fAQ2iywT+6UqjAN34bGlvXTt4xAcIe7OWolG+o8eQDuqIPuM/DowOi48a/xZtv84YZJvi8DkWyKqXx9IBJuOyrqMlH5jF785w6huaOTIQzO2bcCLayzVu+kenV1B4XXidqnjpKFAfFJ9xaPXR6TZEvQcez7qyHyhePX9si7ncZ/D5lvlFiN6BIiyywgZ25VW7EBkCFXcKDe9bFfttMci5HhaIDM6c5fjbThIPJPzsPjgYfFoir8Z25lAe+0EgWgfsQgvVn9Ls9QWRYSyT+0qaUPBXVVevtvwKU8z+RGv/A87GNgQkbdU5RthZsMoRqFdbLajdEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P+sge/cwwT4fFqQMqxSRUN44VB0VssdDPyPN+ecX8CM=;
 b=bd8BmUNMiO5SNwJugA6N5ApUAJt2411q7yUVnpCyX2QXrSXv80Cb1qvCvI8vi2ZoVsKk6f4uRASTiN/lkAuXtcwGBUo9eYihtgMExZAQKDP5+9pfyYAaNGdaKA5m+9jCRzEkTbYQ13H8erie4DS0ON8CRQzbRB9aKmfRvbZJb7NYKrYYIAuXqN/19IAcdhynKpSv2qQtLHTQuSpfUvVhiIfysrgujBlNMav+MqwaNu/V+ztmqSlc0zn00Sjj3or2Gt0W+tkUQLSHHWmSEe6/LTCSyF4y6QUUcSe9IroGjj5LFaHmD+Mr9DcqwD37dHGjCfvjtjmNSkRX/gJ9X4nUEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P+sge/cwwT4fFqQMqxSRUN44VB0VssdDPyPN+ecX8CM=;
 b=c00dM2S5yV7EXQaVSQ29KNKbhUitNstpWlZ2K2Vh9E086ce+b9kG51rwToS/br/YDA0eCu4WG+DRlIE2AvF+NNneB7y1ot80rctvgSQSsT+LvdV7Vu6TjE0/G/4LsJEf3kClV8ilAm7OOl94W1qWpzp3GUcu9vTwlXIAKfbESUI=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BN6PR1101MB2276.namprd11.prod.outlook.com
 (2603:10b6:405:4e::18) by BN8PR11MB3810.namprd11.prod.outlook.com
 (2603:10b6:408:8f::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.21; Thu, 19 Nov
 2020 00:30:19 +0000
Received: from BN6PR1101MB2276.namprd11.prod.outlook.com
 ([fe80::217f:7bd0:c2de:ca36]) by BN6PR1101MB2276.namprd11.prod.outlook.com
 ([fe80::217f:7bd0:c2de:ca36%3]) with mapi id 15.20.3564.032; Thu, 19 Nov 2020
 00:30:19 +0000
Subject: Re: [yocto] #yocto
To: steven.monsees@baesystems.com,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <MADEUP.16489C3168A7B111.27344@lists.yoctoproject.org>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <4a1f6e6d-dcbc-044c-7ff3-22d4a7b1b667@windriver.com>
Date: Wed, 18 Nov 2020 19:30:14 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <MADEUP.16489C3168A7B111.27344@lists.yoctoproject.org>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BYAPR07CA0072.namprd07.prod.outlook.com
 (2603:10b6:a03:60::49) To BN6PR1101MB2276.namprd11.prod.outlook.com
 (2603:10b6:405:4e::18)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BYAPR07CA0072.namprd07.prod.outlook.com (2603:10b6:a03:60::49) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.20 via Frontend Transport; Thu, 19 Nov 2020 00:30:18 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 07642ef6-441e-40f9-f400-08d88c224aea
X-MS-TrafficTypeDiagnostic: BN8PR11MB3810:
X-Microsoft-Antispam-PRVS: 
	<BN8PR11MB3810BD122FF17DE8B0A33D06F8E00@BN8PR11MB3810.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	v0ow1hPyIVmdn7YJWBM8U3Tmzjdbp3VVIxJN8i0KpoGpUq9uNWFGNGRh2cVBDyzdfXMlmp4ezOrpDks3gnqop8AiuDdakva1onFlNej7VTaLDEHAC/czUT4O0Zut5gRyBo0zZgbWPiB3WBjKeUoNCxNtcIcafRxYuc80kbH8+gDaw43fkpg08yR+5Dd8hijbosLHvuTvkT31DwLBAAeJUHNFRd614i/porx6lW0OT9wqlDb5QhkYmf9uM2Y8vULWV3ZvD5LPgUSOjpApSBP0n1FgJe89eSteKS9x8MZ/x8c1MErTCeaKAk/+3zJi9UCjhi6e0VWNJCWkQDzLvcZqWhaTi2LT83HIkaGms+PjF6QR4oEYW6oeAFgyV6PGnLk1O2L/Y8lmZAunt9QJ0qgE7A04EEqlfE+/b6sDUeUB+zm///hGQvdPWLZ1IdrTtqyUFsy/uwqMll5fOjd/bKNKiQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN6PR1101MB2276.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(346002)(39850400004)(366004)(396003)(376002)(4001150100001)(966005)(6486002)(478600001)(16526019)(26005)(36756003)(52116002)(31686004)(186003)(53546011)(316002)(16576012)(5660300002)(83380400001)(86362001)(66476007)(66946007)(31696002)(66556008)(8936002)(2616005)(8676002)(956004)(6916009)(6666004)(2906002)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	DllDtaIDVWbEyKmzbGJ4nVZBC4ByTNQYVEUfig8KJcg38tld6MzjMnKjqZu6RuLnIk1obRhi/6jpfQVTN4w9kWQ4cPKh2LordDWWnpCUApwqxagkL/oB285UiWbwrYMIlj4Zei9t+EcNXZHSL+Bgis4uuoH1sOqq9hr6IdWC/+Rp+/qyjNbUxNOFAq1y6a7bF1f5QbTaqt6K/uICp4syzBHsNuEjTV/dGwBiEQkZ5mw8YLFVmX4MAnFAGN5NTbZ1IBaB9LgM7H6NRQeFkZ35YVukkdecQoXQvqWCUQGnyjRF12w/abks/3AOb2h52LYm4o3XwLYiQeUkmAjA/tP44Cqgkhkd4pKPs8xGJAECHrYKNucCTJbSzB7UDq/QgXBbxduxnxxBUM+0v1eaUR8/AjvAkHDzOwspP6wSLBq4jdl1id+J1ckkYt+qhGIE0BoggjSgLHtcOCmmnJXgA9MmzZOR3yH2uZLUHb85tTyo/ljZk8onYBdZZtJIGpadST3x5yBKZQXzIf3sU+igcf/7xpSfBD1o4YgRjJeBsyn8jBqIrbQmK+aF+HYF3ceVq8Nebgqznj7VLvoh8eaQhhsMk6dBn0Qiic3orccnOwqTZVjQ7aR5jcCNplfK4AbbvqlFYlY5e0yvI/DiYj0cp0pQWA==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07642ef6-441e-40f9-f400-08d88c224aea
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2020 00:30:19.1141
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /sJwfINkSaueXSIQtzV2HZorf/WKGlPBNUB8TJ250ffRD9juyYijka0mzDDikzY/FYJiLlE2Hn5zUcPcTblRQSUbyZ1oGtk0tFWh19uixkg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3810
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

On 2020-11-18 8:08 a.m., Monsees, Steven C (US) via 
lists.yoctoproject.org wrote:
> I was going through the kernel boot output and saw the following output, 
> can someone tell me why this might be popping up and how I might modify 
> configuration to resolve? :
> 
> .
> 
> .
> 
> LIMWS (BAE LIMWS base distro) 3.0.4 sbcb-default ttyS0
> 
> -sh: cannot set terminal process group (1137): Inappropriate ioctl for 
> device
> 
> -sh: no job control in this shell

Hi Steve,

Can you describe your build host and environment and what steps you
take to  encounter this error?  Does it happen with poky/gatesgarth?

What happens if you follow the steps for:
 
http://docs.yoctoproject.org/brief-yoctoprojectqs/brief-yoctoprojectqs.html

../Randy
> 
> .
> 
> .
> 
> Thanks,
> 
> Steve
> 
> 
> 
> 
> 


-- 
# Randy MacLeod
# Wind River Linux
