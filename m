Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.9533.1600853484156476977
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Sep 2020 02:31:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=O5TP8/x9;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: qi.chen@windriver.com)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2046.outbound.protection.outlook.com [40.107.223.46])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 36A9A38C0717
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2020 02:31:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MjMCxff07zUmNg74RcJef8LwfTHADpyNwturFV2HywAbXpEcP9o6fUH8A17Y6R4xkmfImj24YwJwNkbp82xMs4KTbQeiqdOVRFBARxvcOqoHaoiXcAuJJYjEmtqF31gpsgADoqLsxxN/tPAGLxsqMb+POxDvotRntf03+ETybLRC6WKrLM9IBIbazswfPWlkc1v0SwGLkHgcHqVrp7BYa/4TaREUlreaNwdWUPWRGs5ChPpXnYx08LvVJuJto0srfV8I5ctOw3lMRB+OjosC8XHlgsLyrrLO5ijAtU6Ew+JY5M9Do62MCF8Nw+8Fcn9APjzi22SD8mffNxx6HwAW7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m0EX34FelPqtYHAnu71KuMuYbmA6Q/6u0396WRbfkmU=;
 b=KQQywG3seHsxkHxgmfWOPdkt+46w5+IHeVMt7T7LYSa+J18iYHyC9jPvX72tOW2Hp01OIJuYeQsRR3PccilhmZOnluIJYpfSaI5im7Sdvievp6MTzbU7ZIOeN5zOQf4I8f7pgzAoKxY7wR2doVLWdNbeVynY4cA4pej0JYnj0WtVJ2By63EoxgWc8zK1a/I3sUP4tbuyf0kAC/eEb+oQ7HiCne1JcZvOWfmNnNKLIDXjA5whKLyD82Bnvsx+qStrahMxgIEGwLGI9XiY3qbkEpe+og2hrJ6KGSrGsARbUPAJP4aqlwAboe98UItCVxDr6e9Bn4x+KQ6Ta+VFqINfVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m0EX34FelPqtYHAnu71KuMuYbmA6Q/6u0396WRbfkmU=;
 b=O5TP8/x90vo6U+14ooljAQAoDXjegcirjsnTTM26p+P2MKhqKS4x9OLP1g/5d6ppzK9nsHw6SiSoTMUXbeB2XzP689HLrStPz4w4zefn4j4uYQBR30OFEJi+Tn4T2ccYICpdpRWoYxkXfBCYeOR6C5VxxEouNYpVm7qZ43kt1hY=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BYAPR11MB3480.namprd11.prod.outlook.com (2603:10b6:a03:79::27)
 by BYAPR11MB3558.namprd11.prod.outlook.com (2603:10b6:a03:b3::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.19; Wed, 23 Sep
 2020 09:31:21 +0000
Received: from BYAPR11MB3480.namprd11.prod.outlook.com
 ([fe80::4c97:65e4:a822:4cc1]) by BYAPR11MB3480.namprd11.prod.outlook.com
 ([fe80::4c97:65e4:a822:4cc1%7]) with mapi id 15.20.3391.026; Wed, 23 Sep 2020
 09:31:21 +0000
Subject: Re: [yocto] [meta-cgl][PATCH] ucarp: fix build error with gcc-10
To: Bas Mevissen <abuse@basmevissen.nl>
References: <20200923075623.23073-1-Qi.Chen@windriver.com>
 <b93b0b27a4633138dac7038f43d24fc1@basmevissen.nl>
Cc: yocto@yoctoproject.org
From: "Chen Qi" <Qi.Chen@windriver.com>
Message-ID: <1456124b-5a9e-0561-f52d-91208b1928a9@windriver.com>
Date: Wed, 23 Sep 2020 17:36:58 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
In-Reply-To: <b93b0b27a4633138dac7038f43d24fc1@basmevissen.nl>
X-ClientProxiedBy: HK2PR02CA0176.apcprd02.prod.outlook.com
 (2603:1096:201:21::12) To BYAPR11MB3480.namprd11.prod.outlook.com
 (2603:10b6:a03:79::27)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.161] (60.247.85.82) by HK2PR02CA0176.apcprd02.prod.outlook.com (2603:1096:201:21::12) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.20.3412.20 via Frontend Transport; Wed, 23 Sep 2020 09:31:19 +0000
X-Originating-IP: [60.247.85.82]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7ebc1235-5cf1-4629-ad6b-08d85fa36e14
X-MS-TrafficTypeDiagnostic: BYAPR11MB3558:
X-Microsoft-Antispam-PRVS: 
	<BYAPR11MB355837564002CCCEA76A6973ED380@BYAPR11MB3558.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	+cHngDLKwjyLPZcOCLtwcrWE0D/o9p079gAmmdWvpvc0GFWcpIs/i8xAikRtNowAnz0ZMFxZoeRlnBYaciY8SPNpv4BDtA1MXKkO88NHZ9JNkzkA3fBWo4Ak1k+uhTqNDxF4FMnkzHHVdjBxzJdRXarv1biLpyeNlZ9ItzYlP1A41nauj0UeBJZ0vkTIrelXkjD6dx6Geyax350iLlgn+LOwIo5dojUsSA511/bCDXkRmN3TaV63qgZ9CIp4uYSllU7VL0Ird/SobFS13JnJUGtqY3277WMclfYjgFvGZ5FIt8wlPld/PlbLnyQM6RQUZ2WnBwxBe3m0GydQOGnnQIQCtUMB9FlErDIJA+3WEZmqhOLLF2yExLi+h5cnNUqL3ZVpulBk1bzRW07gW2JNX04HCepNBUZ4JWujDDu65TuY10uJ76jkwjgJzIfwV+ejPnMzWT3vcZDzp8HblLxa3mPnN3xw3Ehk5VMuZDlyOvg=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3480.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(39850400004)(396003)(346002)(136003)(366004)(186003)(53546011)(26005)(6666004)(5660300002)(52116002)(16526019)(8676002)(4326008)(8936002)(478600001)(83380400001)(6706004)(6916009)(31696002)(16576012)(36756003)(86362001)(2906002)(66476007)(2616005)(31686004)(66556008)(6486002)(966005)(66946007)(956004)(316002)(78286007)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	mV/MJWNkdgOXvdTpCzQiJ+sV/pGYrlDIJtfl39AOoPL99sDv4rQdkfU8BzncTdoRzTMtkxM19mow8cqjBqbfCzqSh+kCw4pk34thDCZjzyWPGkZ/TqS4hZs2gl/gZoI6e3F27KiY/imgRzIIgG898+cTq6HW1Xu1lPLaX5klwkLpXHv9cxy+3CpCOn3T5/IjxaTiD5/TtQdioPClKCTpeB88l1GF7CpCaYjePelBWbehKhLfY6yebwM4Q7RaZizqVJm1SsWQnPY/FGkKOygV5o5ZpFDekxivIpg7k8RFTWP/wPDYvbdpcKf6F/+CiQqm9nQHeGIVhlL3NDFPg2EUs2sf66PKtQivNoG34zXXfx+7g//+diVaSgNwa0vwnvfNs+a8RIqYTqpy0BNrx9AMRNsQx3+b03uUlv+Ze2XffF6j7Oyc2jkAnazEH5sFlvGSGJ0Ca3LjauRMa4835ndedIxiepIzRM/nK0hneR5czLnMiZdbrmDqFbnOvYJtOj2hXpo+s+V74nLN1jlH4Fsdoe6lmx9OzSnOc25EfBjVT/dkO0IgHzDXcKNAKtoE1l1OItJjyxz/w497Lv1c+x8VARNmtgjwOCY3C2Ld3YHGdozmImW5C8wxqXZ1cEFxVd7DFiMW+EnupTDc9NFB7AccGA==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ebc1235-5cf1-4629-ad6b-08d85fa36e14
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3480.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2020 09:31:20.8639
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4dT3o9RdU20tRv+aBtpl1mNgFDNO5SR+2VDPzF4nTQavmMyiWk090GAUKQzXEMnpro/4C7HwAVt0Y8kHDughGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3558
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 09/23/2020 04:55 PM, Bas Mevissen wrote:
> On 2020-09-23 09:56, Chen Qi wrote:
>> gcc-10 uses '-fno-common' by default, causing multiple definition
>> error. Use '-fcommon' to fix this problem.
>>
>> Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
>> ---
>>  meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
>> b/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
>> index d17baa0..87e5ada 100644
>> --- a/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
>> +++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
>> @@ -37,6 +37,9 @@ SYSTEMD_AUTO_ENABLE = "disable"
>>  export FETCHCMD_wget = "/usr/bin/env wget --secure-protocol=TLSv1_2
>> -t 2 -T 30 --passive-ftp --no-check-certificate"
>>  EXTRA_OECONF += "--sysconfdir=${sysconfdir}/${BPN}"
>>
>> +# Fix build error with gcc-10
>> +CFLAGS_append = " -fcommon"
>> +
>
> Why are you not patching the source to use "extern" where it is 
> needed, like in pacemaker? How many errors does ucarp give?
> Then it might also a patch that upstream will take, solving the issue 
> forever in a proper way.
>

Could you please send out one?

>>  # fix the perms for config.rpath
>>  do_configure_prepend() {
>>      chmod 755 ${S}/config.rpath
>>
>> 
>
>

