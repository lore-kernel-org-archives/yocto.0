Received: from NAM11-BN8-obe.outbound.protection.outlook.com (NAM11-BN8-obe.outbound.protection.outlook.com [40.107.236.63])
 by mx.groups.io with SMTP id smtpd.web08.43381.1606170408846292416
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Nov 2020 14:26:49 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=SRvAvVQN;
 spf=pass (domain: windriver.com, ip: 40.107.236.63, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YE4G8MdwG2NY31dDReBfrkcjm9PZeL7r0HLrAnKB6j/+/UruNesauDXYeO+tbAyeavUbF3q4Ao4M8MOx5xmwm3qNxycV+gpvwxFzNT6ltEivcY7Y5jbZtBPn9qsrh7qXn9hixqbY3P1nwLfCmiW/LSW4yFzmqhNbdbOWCwsraZBUEU1pVn+qRmluHsimCOFln10XBXpfyK4/9QdzU0N7aoolsIysL7FcEDrEN/YaD6T9DVXMoa0spBi1uJg78jhFFxzG2bh/Xir0KaO2Xxy/GILpweEzL+Lo0qh87SxUtpMtaTJurYWEfHmNL4W10Y/dGtzE5qlaDrU1V2GbGKS1kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JQpIAvgjQtu8gQqCpxppRr2Pp4Jq4QUKpZPF0Se91HI=;
 b=NfLii33O+pMhS6I1f5lbsSuwMOBMy6i1NJJ1YGqZOXj3YlL03J/1HTEmuP1EtMOOk66YcILe7IGa2YjAbMplSvoJBv+J7WGzwqreOZmxkzHvlYEthjSP5TUWRXB6/J4IZ8+ET5fgGleE8ZH8CGxb9bems+qVZgRub/Q7uwzdwrImrxvOlEEEwHlAaag25zMaegQisRkJLMONZqnC6Ff6OgTwOCf4w0WVHC1cLGw2EUFDjWfpxc5+HT0cefRxbapQGC9K8XsSRj/Eyf7eF2yF+oOPeg35QolKNbf758WqtA283apQdejKUhQfbvmCr16CktzYbDk/1GlPPv5qDZValg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JQpIAvgjQtu8gQqCpxppRr2Pp4Jq4QUKpZPF0Se91HI=;
 b=SRvAvVQNr/HKbP4XF8jxJItKcDRPgNkm77vcVdghq70WS09CMWFlVI1yEVqplBLWxx/pNJfQ/MHcsoDJdxUYNZVmjVaY+Y4stLsmiOdDVnGRvQpxku3WDmioxuoDY9mRmJq1WOUsLD6PEV64q4y5kR0AHCjGKO8PyToT9oIAFkw=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM5PR11MB1673.namprd11.prod.outlook.com (2603:10b6:4:c::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3589.20; Mon, 23 Nov 2020 22:26:46 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::64e3:149d:d7ea:f680]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::64e3:149d:d7ea:f680%7]) with mapi id 15.20.3589.022; Mon, 23 Nov 2020
 22:26:46 +0000
Subject: Re: [yocto] OE/YP equivalent to 'mtree'?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, yocto@lists.yoctoproject.org
References: <20201123142614.Horde.F-OU8zufirbdV2VWd9blWRK@crashcourse.ca>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <e6f64a0a-7e41-aa03-93d9-219d8edd8812@windriver.com>
Date: Mon, 23 Nov 2020 17:26:44 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <20201123142614.Horde.F-OU8zufirbdV2VWd9blWRK@crashcourse.ca>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: DM5PR2201CA0002.namprd22.prod.outlook.com
 (2603:10b6:4:14::12) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by DM5PR2201CA0002.namprd22.prod.outlook.com (2603:10b6:4:14::12) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.20 via Frontend Transport; Mon, 23 Nov 2020 22:26:46 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e7ec0e58-0bd3-49cc-1f33-08d88ffedd0b
X-MS-TrafficTypeDiagnostic: DM5PR11MB1673:
X-Microsoft-Antispam-PRVS: 
	<DM5PR11MB1673FCAAD9A17AEAEFAE9A29F8FC0@DM5PR11MB1673.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	7yd/Dphw7AVhxNIvd4GJqwbODrBY78sK7I9HzlwqmDDgSM1bGcy/DBWH1LanDAckWrBkicSsHx70CIsTnIL+fdE/4uzSxgbELYejXemNaJ1Oo3uNL7akx6BfqArrrxrwh0qWmI9EKGWvZNngH7jS3mRS2BNB4ZaT5j/3htgsaXPO4l1UObIRSZlR0C2IhY3rcCzo7UUk5wFKMw2eZuuqNazlq4pSsTWqDKVwGgwHIn/ZD6uIJPB6prkVExL2vQFFF8BZGMQpwHN0x7hlvcSGjY784WetT1MkUdQVEYCvXqobyAqBrK0Qm6d3yq+/d+Zi5NDNyUDgKrYXidPnEl1tBhVfbq7A3gVCz4I+rsYLuD6aFuWhAMGO+/dw7P0PWnX8/NKcmPjyfrymmsot1bhaizOXn0zTGvVbd+wqmuDQxJNu+4hZZ2HH7yCNyXkkeb5lOMviY9Dh3b5hZ1U9FK4eyA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(396003)(39850400004)(366004)(136003)(346002)(83380400001)(16526019)(2906002)(8676002)(5660300002)(52116002)(6486002)(2616005)(956004)(36756003)(316002)(16576012)(86362001)(186003)(4744005)(31696002)(4001150100001)(8936002)(31686004)(966005)(26005)(478600001)(66946007)(53546011)(66476007)(66556008)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	FqPVfPWX+Cw6xnKFmREHnEO/s69/vlUGi/rOMK2xf2FfVfcMcoE0cpj9GeomFJIaFPNeRZ3l3pNSXIL/UrA87Vwgbnfxdetjyj+ltCDWgoNUqcBVj8p4DuoZlZ6Jioxjylk6p/FCeg54I0Nq5xwkPrXqPeGYFOTcPSvWBEkdTv0szIK8YP9OJyDevW+RgyKh6N+xCYvtWZ6aOVt8u795QzACrJF+LW9PzKBY9jdbRtTpDR6LBa6NU9v6tm5FqVnaQFzQdJYLp1Xp/ujC9lIEQb906ibr0nMYjjW8eKTeUfi9YR6z3THKzqAfEbrzzgQ1Q6fl41aj+4GdcVeulrI2SQKj+i6f04yyaurpBZILsxXnxgtpOTOqR3jHFdF8Fh59zM99rWvJTwwPWC7X96pmKWhlJPuZRaIOqnw8y2afVLyLnNEcHqb7U6XcmLy9gsk1WMemzwG0QLh8uBuCxTwvrH6gaigx5uac6LwqAT1EWkPT1/wLnfHpivjCNuh+FRHxv68umBeYhtIYdtWKWZLpLcOvjkFRmk2LluxPD+6p4mzdkP3ZR5tHKVLpl1FP8A5CFMVYVM3DShHvONh7YOkXTzexvT7xzbOg/Kzg3p+fq9IXhrqDOKAMOaoHOsG2qcGTpaAkgXY9d6tCXPl5NIikH107siLdRj1O03IN81B60i4+BIe5yRVlMAElA40gPbBuHyda0jWbgYDxr1b7sMc+c5VYwd3huH+DNSzrIlDBbMmvCzdVu5SQ5B4U9GX+M1CjCzvqfGi5zO66oZxdkpQ8P45JS572EeIhmZG3gD08KJ8V3rq9jC7tcJHBwaXjSHXcCHCzhPH2sM4kzEF7UuioJG9XSIn60Dws18clPtw7wcACV6D9ucA8D0ykMhCZTBTJA3FeAQ8U6tqiCNnje7GSNQ==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e7ec0e58-0bd3-49cc-1f33-08d88ffedd0b
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Nov 2020 22:26:46.7772
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tnYo41koMw3oQv/6qhzluepbQVy5wydlx9vP5BtdYYoWuTuRi5mNJZbMDcpA5WJul5vHCtJHMlH7L1y7ibAwEv85/27wlv904ERNk9b8MLU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1673
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: quoted-printable

On 2020-11-23 2:26 p.m., Robert P. J. Day wrote:
>  =C2=A0 colleague wants to know if there is something available
> in an OE/YP layer equivalent to mtree:
>=20
>  =C2=A0 https://linux.die.net/man/8/mtree
>=20
> i'm looking at a few possibilities right now but nothing
> seems really equivalent. thoughts?

It don't see anything in the layer index:
   https://layers.openembedded.org/layerindex/branch/master/recipes/?q=3Dm=
tree

but the source has a configure file:
    (Ubuntu: apt-get source mtree-netbsd)
so they should write a recipe and send it to meta-oe.

../Randy

>=20
> rday
>=20
>=20
>=20
>=20
>=20
>=20


--=20
# Randy MacLeod
# Wind River Linux
