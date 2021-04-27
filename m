Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.11268.1619542128338272969
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Apr 2021 09:48:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=IHrQ1i7b;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: randy.macleod@windriver.com)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2065.outbound.protection.outlook.com [40.107.94.65])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 9732C38C0717
	for <yocto@yoctoproject.org>; Tue, 27 Apr 2021 16:48:47 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VQs+JF6DrjKMIIrWm3MXdirmj6ae+3Fjoh4+meAIFu+KDnxKPOGnxLMz0ZRBd6O8gBKDCU59fxLauj1I87+5XhJNotUA4cw5JQ38kK0sKEry3Fz0t7rhL0Q+SoJPEDBOideVOTHgk9Et6wf1fnNn/TgOLCUVbLKA6mXMZ6JYLN/0ws6Yyd0eHnVA108AbNjR4paHv8Gv1jNjUsAwL0BhcAr9GGoriVVvKfOKZOdAtCA10IxNcedCPcMYnwLNOvlbuXCYk2nLcRDsb4yRmbckAkNHRIGeiOC08EawvGVdnL+Jm3DE8XtAD+J0sa/ZeUz7xsQc4E+p62CtEqV9FnMK/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UoGCbyKTVDoFHcRQD7wsaJ/yJBS6do2efDI9ippMaaU=;
 b=MkyeQ4+9w5oJ8Yvgcx8udhc+/d3CGUTuu72IFccvlDtphSK6IKrD+qj9mqcLr5Ip+ZgDDuUlraKdIszWdeP2NBWgfiw3XQ7W8fKXjJJmGhhdBA0DDcTRivFBE67b2tYGIA+1TTTbWmmtTbhY7j01Y8cE3+32iUydpeFSwd5XgXRcm3QVe0joR+cnttZl6wvcN0ug5/zAKO3ga52aVZ1bcLN72iNYWOG6rDZmTGaU6PEjv/d8sUBe7u4IvXizAqO5bspEU+sfJVrWiTVqOzsVjSadBNifWB/y7rYN6R3YnG779obHcWGcmVP3P5Mv9AotSqG5BECh2niTfi1Cz1zqbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UoGCbyKTVDoFHcRQD7wsaJ/yJBS6do2efDI9ippMaaU=;
 b=IHrQ1i7bWgTowCxATB7E3+vj2f5yIfyhdrQ0CvNMt71vWOm3TSIUyWf9BxBtRHCPWNctnVBDtV3aZsdqneFpXqN9A/A0TjHwPESVDN+p/AGJfBfiSsTeh3c1uBnrJhJsfwMIcQzlIdxq1AcUeJ1rlVX9RewB3vQmBbwvCKJTVAs=
Authentication-Results: sakoman.com; dkim=none (message not signed)
 header.d=none;sakoman.com; dmarc=none action=none header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB4642.namprd11.prod.outlook.com (2603:10b6:5:2a2::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.24; Tue, 27 Apr
 2021 16:48:46 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8d3b:70ab:5fc7:9eb5]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8d3b:70ab:5fc7:9eb5%7]) with mapi id 15.20.4087.025; Tue, 27 Apr 2021
 16:48:46 +0000
To: yocto@yoctoproject.org
From: "Randy MacLeod" <randy.macleod@windriver.com>
Subject: Can layer maintainers add yocto-X.Y tags for yocto-3.3 and later?
Cc: "Jia, Hongxu" <Hongxu.Jia@windriver.com>,
 "Mittal, Anuj" <anuj.mittal@intel.com>,
 Bruce Ashfield <bruce.ashfield@gmail.com>, Khem Raj <raj.khem@gmail.com>,
 Armin Kuster <akuster808@gmail.com>,
 Richard Purdie <richard.purdie@linuxfoundation.org>,
 Michael Halstead <mhalstead@linuxfoundation.org>,
 "Wold, Saul" <saul.wold@windriver.com>, Joshua Watt <JPEWhacker@gmail.com>,
 Jia Zhang <zhang.jia@linux.alibaba.com>,
 =?UTF-8?Q?Andreas_M=c3=bcller?= <schnitzeltony@gmail.com>,
 derek@asterius.io, Kang Kai <kai.kang@windriver.com>,
 "jpuhlman@mvista.com" <jpuhlman@mvista.com>,
 "steve@sakoman.com" <steve@sakoman.com>
Message-ID: <3a55fddd-700a-41f2-5de9-f35dd46059d0@windriver.com>
Date: Tue, 27 Apr 2021 12:48:40 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BYAPR08CA0003.namprd08.prod.outlook.com
 (2603:10b6:a03:100::16) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BYAPR08CA0003.namprd08.prod.outlook.com (2603:10b6:a03:100::16) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4087.25 via Frontend Transport; Tue, 27 Apr 2021 16:48:43 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d014584f-a787-4e78-811f-08d9099c52ea
X-MS-TrafficTypeDiagnostic: DM6PR11MB4642:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB46423A61CA78D8A3AC70ADBBF8419@DM6PR11MB4642.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	hqeYR1gWAK4dP290696Ac7wTd0HfGy/H/PHUDw7HlLr5PXd7SFjBcTi0tDfmi6q4AnJEUjOfY3Q5KVPINgKk3feGfNdp/gsWIoj72B4SinLJ6JqBJ0t0KwuCyg9qXDP0rnMF3toV5kI2GMmS9XTDZXKpb5SXGhEKG5+BsXNR+AjAdVYd6xAbbOH3gg9MAvvUACagdRNQGaLC+WLmmcUyEBf45U4rAlbSM9liTuvD/Zym4QNiQZoyn8MiRs0GR76M4SKb2jrR2b6Bm0qK5atumnxZ9wk1wu7QqD+68HQPWfgN4b5Mv4xAlBEtnVAAzsxzdZ+YY1kOEUwFQ5KNPxEtCPY6dH1BMQrh++LCXhjWlR7WfgSniyADVNIxVV23TxNipKXsiGKF3dClWevP3Hqd7+YuO7qnc8JskVblpKx79ZidBI/JK+EIC7dqPrUnuq/uZn7LPLZ2tqscR1g23i/4j1++llx77R0P/aNpfeXfQ1P2GhGRnUTRWL8eDekRsiwx+x//DONqRxC6A6PujQoboByMJsgGQOsALUe8fD28G45zEfCTbmjrQnWLcDgtCPBq7+8A8kfiNo6nlAcgoAaVVNPrT8KjozDcrUjW3s8eexJYYEhQhHrEKNyaqishJGUx0bcLRyq26Mvf7qkVuZyhUUdMbpvqDG1dpFzSTgpv9SeVQ/+OwZU+E2z91a8ik1i2AYU93pj/wAnqarrVT4+jK8B5olNi+GWH03nl2PGOiHE=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(346002)(366004)(396003)(39830400003)(376002)(7416002)(86362001)(6916009)(31686004)(52116002)(8676002)(4326008)(478600001)(31696002)(38350700002)(16526019)(66476007)(36756003)(5660300002)(2906002)(186003)(38100700002)(6486002)(16576012)(26005)(956004)(2616005)(54906003)(316002)(8936002)(66946007)(66556008)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?c2pLWHByNGZIcGIrLy92UXJzRGlLYmRYdFZzWUtqRTlhcmtYbmNOeHk3MXdZ?=
 =?utf-8?B?Z0VETFhuQlpxUFU2QVFFMnNFTysxay9tMW0rUWlzdUtWN2JPQkZ2TFltanIv?=
 =?utf-8?B?WGtRc2RiSGJha1QrdVdOaEpWbUJaMU1LUjRQRjFqMlBxcWxJTS9WY2Y4RzJp?=
 =?utf-8?B?eC95aTFhaVZmUTBZNklkMU5NRTY2MWYrUHdiUllDZWNxRTRPekRTWDZlZ2lZ?=
 =?utf-8?B?YUNiU2Q0MVJVNHhNMExkT0VTMFZvU3NIV0FCaGVrQnUrQS85a2FncjFzKzVv?=
 =?utf-8?B?dkxPYnQ5KzVmRHVlQ2FxQmV0bWVIS1R3Q1N5MzFuQ0MwMGwyWlJrL2plMnB5?=
 =?utf-8?B?dWhVOHlLYVhDN21FQW5VZHBuWUNlV2dNQ0lkRUxyRFg4MTVUMkxSWll5MzJy?=
 =?utf-8?B?MlE4cWFaMVp0OXpYQ3FHL1JocUxlbkZxaXhJS3UrV0VpQjZkcFhUYkFHV3hJ?=
 =?utf-8?B?emZNaHJpaWZPbnRCbjZCZ2REWHJjWGJuSFhpSjBkVkxkVkRFQytkQ0I3bWxp?=
 =?utf-8?B?YVNWckpabm5lNnRTZUxDZDNadm5SZkowcjlUNkZOUms2VEU1SHA2Y0dxTW42?=
 =?utf-8?B?c3lZNUVjSTBTNlRlM3QwMExMUERxOFpFUTZrakY5OVYrSGN5UEdHdndPZ3FC?=
 =?utf-8?B?dGs2UlF0Rjh3UTVML3dEYUQyQVl2YlJMemhIODNPOEYxMWZkN05DQ2lkb3BL?=
 =?utf-8?B?ckI2aTJpT21ZeDY0WXhOQ2oybzU3M1RTS2RVWmVOenJvcWV4ZjdweHBKc1JZ?=
 =?utf-8?B?d0NZN3hJdGgvbERobWpaN2FFYXQzYWszejczRWcwT05xeEdNcWxHNzhnQlRi?=
 =?utf-8?B?U085bkMxeU5OYjQ1UEd6anJ1ZG4xY3NFeXJ3aC84RDBxdVN3VUhvQmx0bkc1?=
 =?utf-8?B?RmZNODVqTDBSbFRoT1dRMGFpY2JsK0w4VG5jRFJFcGVyeVN0RDVhMUNrd21B?=
 =?utf-8?B?aXNLc2wzUDVBMDZ6YjIzK1BXWHhIam9CRTdvcWJEWTIxaEI4YjRZSTYvOThQ?=
 =?utf-8?B?YlI3MlhlZlJJTzhpUXhBYkd2SXl3S2tjZnBqOXVuRUR4VWUzY2F2U0kxeUhQ?=
 =?utf-8?B?WG42VVIrR3Ixd0owdzhTZllORzQzbDIweTIwRitNbTlneGtpT2IxQjFHd2xw?=
 =?utf-8?B?cUZXSEtsZmc1Yit4SDVZNzRRaE9WVlNHeTFSUDZSRDRDSEJscm5sN2pEUVl2?=
 =?utf-8?B?dFptYzFQSXQ2SWtqVkJkZVpKU2FNWU9hWk1WZW9rRHo1Vm10MTEvV1BJcnRG?=
 =?utf-8?B?dzlpdE5WWlJDa2Z4TE5rQ1NoYnovU1FuUzI2akFJK0haQjhZbndlSTJHWFdz?=
 =?utf-8?B?ejA3RkdXWEVQQlZDZmVaN2wxNnczNEFNL1F1KzJjRjJYR1lNQkVNWUdKRk5m?=
 =?utf-8?B?UjF3THhrRFV3ZDN0SGczeEpzbElRUDBRT3c3L3YzTzIvZXhjQUFVckQwVXpI?=
 =?utf-8?B?SDJYbnVNOFFORkhnOTJYL2lVUkkyRHc4OGYyVktVeDVmYmJyS3BKcW5sbWV2?=
 =?utf-8?B?ZUN0R1FrUFNNL3F4Q0tmeHY4RVh2NStyRnorRHFEajdCMFM1blFyQjZYWlJa?=
 =?utf-8?B?Wkx2KzIwdmtpS2R6OTJ4MmlEWHE4aFpYbEw2QXdha1kyRE5vc0wxcW95djlW?=
 =?utf-8?B?RWV4cHp6aDZqZXo3K1ZFNlNLVWhBaHFRbXBlejFJY3hxeTgyNm5sL0JSQmti?=
 =?utf-8?B?MWk2WDk3aFBPVmw4blFoUW8rN3N3U2lyRGlZSTlsaHI3TzRaQ3Z4ZlZldFpJ?=
 =?utf-8?Q?HpQWriWMy3Uo2lXLpANLBIeGAZghGYTzUTmwbg5?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d014584f-a787-4e78-811f-08d9099c52ea
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2021 16:48:46.1443
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GaMU9mCBrc0DZQgB0ZJRUme/UMXhXc9noiVsvWDW0xJhMixkUc/CXDrXi3IA/qzS/TXm2YVuJSGWO9HYVuflfY/SZ/iYWH0oAF5FVW5tEFk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4642
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

Hi,


I've CCed some of the maintainers of more widely used Yocto layers
to get comments on about tagging. Please add in people who I may
have missed.


For a while now, oe-core has had a yocto-X.Y tag in addition to the
release branch name. This helps users easily find the exact commit
that corresponds to the say 3.3 GA release. There have been some
omissions in tagging but Michael and Richard are adjusting the
release process so that tagging will happen more consistently.

Most yocto layers have not adopted the tagging perhaps because they
weren't aware of it so that's why I'm writing this email. Tagging
will make it easy to find the first commit for a specific release
independent of what the branching policy of a layer is. Layer 
maintainers sometimes create the release branch in advance of
when oe-core is released and by adding the tag, it would make it
clear when the layer considers content to be officially released.
Of course it's up to users to decide if they are going to follow
the HEAD of a branch or, for some reason, stick with a tagged commit
or private branch off that commit.


Are there any concerns about attempting to do this for yocto-3.3
and later?

Should we make it a requirement for yocto compliance?
Should it be a feature tested by the yocto compliance script?



Here's what's in oe-core and bitbake now:
$ cd .../oe-core.git
$ git tag -l | grep yocto-3
yocto-3.0
yocto-3.1
yocto-3.1.7
yocto-3.2
yocto-3.2.1
yocto-3.3

$ cd bitbake/
$ git tag -l | grep yocto-3
yocto-3.0
yocto-3.1
yocto-3.2

-- 
# Randy MacLeod
# Wind River Linux
