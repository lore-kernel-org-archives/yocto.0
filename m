Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [])
 by mx.groups.io with SMTP id smtpd.web09.17.1582148693872561251
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 13:44:55 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="crypto/rsa: verification error" header.i=@nio365.onmicrosoft.com header.s=selector2-nio365-onmicrosoft-com header.b=PaWLsRMn;
 spf=softfail (domain: ni.com, ip: <nil>, mailfrom: prvs=5317a7e890=alejandro.delcastillo@ni.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 247F1E01754; Tue, 18 Feb 2020 13:47:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [148.163.158.57 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 MSGID_FROM_MTA_HEADER Message-Id was added by a relay
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
Received: from mx0b-00010702.pphosted.com (mx0b-00010702.pphosted.com [148.163.158.57])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DF61E015F8
	for <yocto@yoctoproject.org>; Tue, 18 Feb 2020 13:47:41 -0800 (PST)
Received: from pps.filterd (m0098778.ppops.net [127.0.0.1])
	by mx0b-00010702.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 01ILihRV011367;
	Tue, 18 Feb 2020 15:47:40 -0600
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2176.outbound.protection.outlook.com [104.47.55.176])
	by mx0b-00010702.pphosted.com with ESMTP id 2y6eg586h6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 18 Feb 2020 15:47:40 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kWvkby2tKSDM5BK3Q4lFz9Tm8+r/O6dh7jsAlR4VgekXEs9wiiUuBrW2ZOQ3w780sVjHXVTPBJ0iL+sSlGU56OE1+/+HhNCaV+9759y0ahCR46yIGwHdUpg96MDNfEV7R/PAWzr10x4bRVS2e2h22BivLvF4RJQXeJ588gLW1MZApNM66Myvwg5sqBa93f9Hzs+0oyG9AtcjKlpLm/mrp/6DCoHqg28uxrBbAxutdLkwFcqWbTUHVN7Ld1/+RTHGLGOt5O6XQ4T1bFvsRwc18Wk8Z+VUsbq78ULVVKAUKUBUW7AVWkCEevjPB9fnDKCWBI668glsz+KhZ2dXa7rzQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g4ONv6ZgfJotZTANCL1Cix2n3C2EtUKeoIlSAV58Drc=;
 b=O0CrcPX8i5BDTa9kPoHXSS542xHiL4LLP3SlpkZ9DMPGzKTHjdTozxLZPJDz8DvSAiUnloZTJwv0WITj1PolIyHCDKzEkg7f8supmC3SiktW6ydeLmPbRTyjGhtgxmfAKm7YBHkaaQ+7ClKq6oL10YYeAQaqV1JerC4amidFQAm2YwKkpbj4DvJTORfNTFJhDU7+/QWeSue/ULU35sP2SqDrpcK5HH9ucsrovRAyL/iwBTOkieM+knlREc7Ork/UL0ClBm2tBjGFwThxpNIwb+hHJ7lKUpC9/JFLIpdzd06Dm9Ao/Zl00SpsjxOTKGD9pEQ2c1WhGoiGamWk5czggg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g4ONv6ZgfJotZTANCL1Cix2n3C2EtUKeoIlSAV58Drc=;
 b=PaWLsRMn1br9Yc63/pJpwuaTyI7DY2e/hctz4RyTYAZMY36NASe0nMJoFlfile/zOEwQ5YWUG8n1azhHmEb6KH9wwXiAkdJaAitP8NaZstoueEy7XdS+rXeiLvJCP9hh2J4qRTQLYj2NK1sl0lzgB8IGgeY8tXtszK8OZrmZQFw=
Received: from MWHPR0401MB3658.namprd04.prod.outlook.com (10.167.162.143) by
 MWHPR0401MB3530.namprd04.prod.outlook.com (10.167.237.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Tue, 18 Feb 2020 21:47:38 +0000
Received: from MWHPR0401MB3658.namprd04.prod.outlook.com
 ([fe80::d145:8ee3:132f:173d]) by MWHPR0401MB3658.namprd04.prod.outlook.com
 ([fe80::d145:8ee3:132f:173d%5]) with mapi id 15.20.2729.032; Tue, 18 Feb 2020
 21:47:38 +0000
To: opkg-devel@googlegroups.com, Alex Stewart <alex.stewart@ni.com>,
        yocto@yoctoproject.org
References: <20200217235734.1012734-1-alex.stewart@ni.com>
From: "Alejandro del Castillo" <alejandro.delcastillo@ni.com>
Message-ID: <91a00db3-2fa1-353c-32bf-2e25c3eb17b4@ni.com>
Date: Tue, 18 Feb 2020 15:47:35 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
In-Reply-To: <20200217235734.1012734-1-alex.stewart@ni.com>
X-ClientProxiedBy: DM5PR07CA0038.namprd07.prod.outlook.com
 (2603:10b6:3:16::24) To MWHPR0401MB3658.namprd04.prod.outlook.com
 (2603:10b6:301:78::15)
MIME-Version: 1.0
Received: from [10.0.39.150] (130.164.62.200) by DM5PR07CA0038.namprd07.prod.outlook.com (2603:10b6:3:16::24) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.22 via Frontend Transport; Tue, 18 Feb 2020 21:47:37 +0000
X-Originating-IP: [130.164.62.200]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9993a21a-8e7a-4b6f-6362-08d7b4bc2c03
X-MS-TrafficTypeDiagnostic: MWHPR0401MB3530:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<MWHPR0401MB353065CB92780886FF40EBB986110@MWHPR0401MB3530.namprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2089;
X-Forefront-PRVS: 031763BCAF
X-Forefront-Antispam-Report: 
	SFV:NSPM;SFS:(10019020)(376002)(346002)(39850400004)(366004)(136003)(396003)(189003)(199004)(478600001)(66476007)(66556008)(31696002)(186003)(316002)(8936002)(53546011)(66946007)(2906002)(6486002)(8676002)(81156014)(81166006)(86362001)(16576012)(26005)(36756003)(52116002)(31686004)(2616005)(956004)(16526019)(5660300002);DIR:OUT;SFP:1102;SCL:1;SRVR:MWHPR0401MB3530;H:MWHPR0401MB3658.namprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
Received-SPF: None (protection.outlook.com: ni.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	SprF9LpRGv0hSPSLQIFCjM7uwQ2TBOMteACwetexaFfrGTH8BBlf8M89DJG4rIOXpNxGrnwS+DOXxa/Fjn8H94hBWbDXJifD8DKMguoDgurAz6xYVWEOj+Rg5RMud729XxcCx6YfYZ13uQ3WsSqTpPsaxQ07WZbK4K8IO3AwekAQ9Bli+nCpn3iNm1EdnLlLUKJOMUVELCGgivajM4z/DXEA+SnoT3BLnGekYVyyZ+4AkP9K3/FX7mrXb7cYCz9Tp6t7ZpZrjyGqF5iDaY2s9GJhk0zR0+A/5d7sWA+9HHcBFi2Fntle8yhxzNpujI4DCPP7L7bl184WAy2uu8kkjkwZOszS+ahJ/xCe85oezkKi5OFuNx9AWUlfkYvQm5zREkpFTlT/vrF0IIGry/Zxq636jct2rs8ZzRD1QlGroN71GEtdw6tz2e7xaa1W5KMo
X-MS-Exchange-AntiSpam-MessageData: 
	TWIPtMWwt0PpZhv3/bBKqp+KnCRTr7LPFTA9eS5VEuMIbIxsVANxNVzhD0XWpzLLZVUjGr9isKHTEz23vmAu0roY+4FeZL5HpDIR4ln+x0SRSMmLElVpC8leCr4MJ3OUPmzrq6Uf/LOskX+EpBc/uw==
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9993a21a-8e7a-4b6f-6362-08d7b4bc2c03
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Feb 2020 21:47:38.4143
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QNkXzFFLTIEm35I+DVe4fYFmjbVPEdvqZydg1/P/3frNbLoYqHBE67M94n50SBpMFD4etdkWBIDC3qDV3Hy5Ehh/8XJXVqsMRqfeACxw3/M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR0401MB3530
Subject: Re: [opkg-devel] [opkg-utils PATCH] Makefile: add opkg-feed to UTILS
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.572
 definitions=2020-02-18_07:2020-02-18,2020-02-18 signatures=0
X-Proofpoint-Spam-Details: rule=inbound_policy_notspam policy=inbound_policy score=30 mlxlogscore=999
 lowpriorityscore=0 phishscore=0 mlxscore=0 clxscore=1011
 priorityscore=1501 suspectscore=0 adultscore=0 spamscore=0 malwarescore=0
 impostorscore=0 bulkscore=0 classifier=spam adjust=30 reason=mlx
 scancount=1 engine=8.12.0-2001150001 definitions=main-2002180145
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US-large
Content-Transfer-Encoding: 7bit

LGTM, merged!

On 2/17/20 5:57 PM, Alex Stewart wrote:
> * Add the opkg-feed script to UTILS so that it is installed with a `make
>    install`.
> 
> * Clean up the UTILS variable declaration to be a little more diffable.
> 
> Signed-off-by: Alex Stewart <alex.stewart@ni.com>
> ---
>   Makefile | 17 ++++++++++++++---
>   1 file changed, 14 insertions(+), 3 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index 817a8c1..4049654 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1,6 +1,17 @@
> -UTILS = opkg-build opkg-unbuild opkg-make-index opkg.py opkg-list-fields \
> -	arfile.py opkg-buildpackage opkg-diff opkg-extract-file opkg-show-deps \
> -	opkg-compare-indexes update-alternatives
> +UTILS = \
> +	arfile.py \
> +	opkg-build \
> +	opkg-buildpackage \
> +	opkg-compare-indexes \
> +	opkg-diff \
> +	opkg-extract-file \
> +	opkg-feed \
> +	opkg-list-fields \
> +	opkg-make-index \
> +	opkg-show-deps \
> +	opkg-unbuild \
> +	opkg.py \
> +	update-alternatives
>   
>   MANPAGES = opkg-build.1
>   
> 

-- 
Cheers,

Alejandro
