Received: from exchange.sewerin.com (exchange.sewerin.com [92.39.20.236])
 by mx.groups.io with SMTP id smtpd.web09.13307.1605809236162619352
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 10:07:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@lists.yoctoproject.org header.s=20140610 header.b=i1viv/Mh;
 spf=softfail (domain: lists.yoctoproject.org, ip: 92.39.20.236, mailfrom: yocto@lists.yoctoproject.org)
Received: from Pickup by Exchange.sewerin.de with Microsoft SMTP Server id
 15.0.1395.4; Thu, 19 Nov 2020 00:59:45 +0000
X-Sender: bounce+53643+51423+3618059+6691491@lists.yoctoproject.org
X-Receiver: Bastian.Ruppert@sewerin.com
x-endofinjectedxheaders: 9745
X-Received: by 127.0.0.2 with SMTP id JZC7YY3619394x5wLYLgVfAo; Wed, 18 Nov 2020 16:57:04 -0800
X-Received: from NAM11-CO1-obe.outbound.protection.outlook.com (NAM11-CO1-obe.outbound.protection.outlook.com [40.107.220.86])
 by mx.groups.io with SMTP id smtpd.web11.2456.1605745821765191539
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Nov 2020 16:30:22 -0800
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
X-Received: from BN6PR1101MB2276.namprd11.prod.outlook.com
 (2603:10b6:405:4e::18) by BN8PR11MB3810.namprd11.prod.outlook.com
 (2603:10b6:408:8f::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.21; Thu, 19 Nov
 2020 00:30:19 +0000
X-Received: from BN6PR1101MB2276.namprd11.prod.outlook.com
 ([fe80::217f:7bd0:c2de:ca36]) by BN6PR1101MB2276.namprd11.prod.outlook.com
 ([fe80::217f:7bd0:c2de:ca36%3]) with mapi id 15.20.3564.032; Thu, 19 Nov 2020
 00:30:19 +0000
Subject: Re: [yocto] #yocto
To: steven.monsees@baesystems.com,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <MADEUP.16489C3168A7B111.27344@lists.yoctoproject.org>
From: "Randy MacLeod" <randy.macleod@windriver.com>
X-OldMsgId: <4a1f6e6d-dcbc-044c-7ff3-22d4a7b1b667@windriver.com>
Date: Wed, 18 Nov 2020 19:30:14 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <MADEUP.16489C3168A7B111.27344@lists.yoctoproject.org>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BYAPR07CA0072.namprd07.prod.outlook.com
 (2603:10b6:a03:60::49) To BN6PR1101MB2276.namprd11.prod.outlook.com
 (2603:10b6:405:4e::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-Received: from [172.25.44.2] (198.48.226.187) by BYAPR07CA0072.namprd07.prod.outlook.com (2603:10b6:a03:60::49) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.20 via Frontend Transport; Thu, 19 Nov 2020 00:30:18 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 07642ef6-441e-40f9-f400-08d88c224aea
X-MS-TrafficTypeDiagnostic: BN8PR11MB3810:
X-Microsoft-Antispam-PRVS: <BN8PR11MB3810BD122FF17DE8B0A33D06F8E00@BN8PR11MB3810.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: v0ow1hPyIVmdn7YJWBM8U3Tmzjdbp3VVIxJN8i0KpoGpUq9uNWFGNGRh2cVBDyzdfXMlmp4ezOrpDks3gnqop8AiuDdakva1onFlNej7VTaLDEHAC/czUT4O0Zut5gRyBo0zZgbWPiB3WBjKeUoNCxNtcIcafRxYuc80kbH8+gDaw43fkpg08yR+5Dd8hijbosLHvuTvkT31DwLBAAeJUHNFRd614i/porx6lW0OT9wqlDb5QhkYmf9uM2Y8vULWV3ZvD5LPgUSOjpApSBP0n1FgJe89eSteKS9x8MZ/x8c1MErTCeaKAk/+3zJi9UCjhi6e0VWNJCWkQDzLvcZqWhaTi2LT83HIkaGms+PjF6QR4oEYW6oeAFgyV6PGnLk1O2L/Y8lmZAunt9QJ0qgE7A04EEqlfE+/b6sDUeUB+zm///hGQvdPWLZ1IdrTtqyUFsy/uwqMll5fOjd/bKNKiQ==
X-MS-Exchange-AntiSpam-MessageData: DllDtaIDVWbEyKmzbGJ4nVZBC4ByTNQYVEUfig8KJcg38tld6MzjMnKjqZu6RuLnIk1obRhi/6jpfQVTN4w9kWQ4cPKh2LordDWWnpCUApwqxagkL/oB285UiWbwrYMIlj4Zei9t+EcNXZHSL+Bgis4uuoH1sOqq9hr6IdWC/+Rp+/qyjNbUxNOFAq1y6a7bF1f5QbTaqt6K/uICp4syzBHsNuEjTV/dGwBiEQkZ5mw8YLFVmX4MAnFAGN5NTbZ1IBaB9LgM7H6NRQeFkZ35YVukkdecQoXQvqWCUQGnyjRF12w/abks/3AOb2h52LYm4o3XwLYiQeUkmAjA/tP44Cqgkhkd4pKPs8xGJAECHrYKNucCTJbSzB7UDq/QgXBbxduxnxxBUM+0v1eaUR8/AjvAkHDzOwspP6wSLBq4jdl1id+J1ckkYt+qhGIE0BoggjSgLHtcOCmmnJXgA9MmzZOR3yH2uZLUHb85tTyo/ljZk8onYBdZZtJIGpadST3x5yBKZQXzIf3sU+igcf/7xpSfBD1o4YgRjJeBsyn8jBqIrbQmK+aF+HYF3ceVq8Nebgqznj7VLvoh8eaQhhsMk6dBn0Qiic3orccnOwqTZVjQ7aR5jcCNplfK4AbbvqlFYlY5e0yvI/DiYj0cp0pQWA==
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
Precedence: Bulk
List-Unsubscribe: <https://lists.yoctoproject.org/g/yocto/unsub>
Sender: <yocto@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
Mailing-List: list yocto@lists.yoctoproject.org; contact yocto+owner@lists.yoctoproject.org
List-Post: <mailto:yocto@lists.yoctoproject.org>
X-Gm-Message-State: JVTIJTcfZxeiOuZOtrSvSlsGx3618059AA=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=lists.yoctoproject.org; q=dns/txt; s=20140610; t=1605747424;
 bh=ySQgtrhKzJPca7MHtp2KPIAiNHXaUYyimxpRavVAM60=;
 h=Content-Type:Date:From:Subject:To;
 b=i1viv/MhXBg8IgZVnaYR0Krlsex6k5HsG+NwMFSLcW5/iQWekKgj2JaQ4r4oR2cZOYy
 Zn5Fp/SCZNp49S9wJvQAo2cGyZa4FYQ1LpODiUUDdmATrb+SLlL0PdSYaO9awfxwVq3lz
 mNXYBaOMJbGN9J0Gak9+sW4aK/okXZKz+k0=
Return-Path: bounce+53643+51423+3618059+6691491@lists.yoctoproject.org
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: web01.groups.io
X-GFI-SMTP-RemoteIP: 66.175.222.12
Received-SPF: Pass (Exchange.sewerin.de: domain of
 yocto@lists.yoctoproject.org designates 66.175.222.12 as permitted sender)
 receiver=Exchange.sewerin.de; client-ip=66.175.222.12; helo=web01.groups.io;
Message-ID: <3e22b6953375415ca688ede4ce373b79@Exchange.sewerin.de>
Content-Type: multipart/mixed; boundary="wAKbzYgSzszOuILOPE5q"

--wAKbzYgSzszOuILOPE5q
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




--wAKbzYgSzszOuILOPE5q--
