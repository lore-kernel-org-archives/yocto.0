Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web08.22029.1628774102972723899
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Aug 2021 06:15:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=P5g8Hyus;
 spf=pass (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=385837e1d7=jason.wessel@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 17CCtlMj000350
	for <yocto@lists.yoctoproject.org>; Thu, 12 Aug 2021 13:15:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=subject : to :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=JA4gzPnl8O59jGCpQOYl2hTXNRFbvs0JNXYM7VyrL+k=;
 b=P5g8Hyush59AhHW+o8LPw1bQgnpMsJSfXBR7P+HVYM6Ir6zWXqycrruMQio6wd0tdDiZ
 coeKFhXbYS6q1pvMqV9Xk4Lq2+TKcvTXN/IgKBKnU7b9gFsH9uf9insrDN/8mmhENyYX
 QFU9oPAKaXtiHsvIVflOAJIYkyhlH5DRLcgX4VHfdRPnkNguibUX6zk9bR+avI7MT4IZ
 HP1QPwsC1vS2Jhmam5lN3UYMaD1oyWBZtaoXJW/vfJbvmU0TCyL0tY7Qe8gAmncwN1vn
 VsI5oKL/Uisa4cBHFmJVKb8XnYRd+6nSpohZt4eJPOlsdgA7uYy51/ExJyCp2MsZHaNh Jw== 
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2102.outbound.protection.outlook.com [104.47.70.102])
	by mx0a-0064b401.pphosted.com with ESMTP id 3acra60dqg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Thu, 12 Aug 2021 13:15:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J5czP4bAGMR03v80fFqVIciXZtbqcXWr2F7MzyTSPG/2CrSRQyFmqy25ps5HDisREybdLnNyw5s5nBVEXBErbUa2CZ0hL9z4w+lWJzDGz6+mqQS7Vr+rOP8AsfPI6wIbxfTtV4SEOybl+Mk6BnPhaTMuHPIKJ+SVkMSYu0RwgW8YUY/Qy3cy7w6sJbHFLfmqjFm9izuGrNd/cljKgkeMv6dlxi+Q1TrfzQAb4asqp3YrFHWurT8l5D8qnnWVkEOMDeF/j+R6AKkfqayMrW86tB7NpcRn9UED5mjTVI1gixXB24o7OFB5Bxrr3emyAfbFwXta9lUywFExhdvihhzF3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JA4gzPnl8O59jGCpQOYl2hTXNRFbvs0JNXYM7VyrL+k=;
 b=MptM49d1+vTiBWedDGU8Tr+SXN0IeAVzJ/XIUV1/L3GSv8Jg3AcXepobyS6N3pkas3IiJy3hFwgg1o5KGdK7b1ajo4Xvul+Vju/m2Z6/6QTeT8d3SzRAUj3RIX6BQ70Y2L8barw1lRnFnnGo43pcn2wjqrbzLNkTZSatFKAAsGcNjTAPo8z/mKNZPHCnU1WJe4GJs0xVBXSC9I6fCObexSzUx5TVZsYXokEB0P/Ah/cS7D2Kp26sRA3prqxN6zOGlz+lZFc2RgxYf2Nc6oTjQKEQsw6FQxEFkvtIcJal1fmEZLsiaNBmuPexohE83jRlfmaX/trvC9XUlNazhKWdXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from SA2PR11MB5179.namprd11.prod.outlook.com (2603:10b6:806:112::7)
 by SA2PR11MB4780.namprd11.prod.outlook.com (2603:10b6:806:11d::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.17; Thu, 12 Aug
 2021 13:14:59 +0000
Received: from SA2PR11MB5179.namprd11.prod.outlook.com
 ([fe80::81c6:f5f7:c234:66b6]) by SA2PR11MB5179.namprd11.prod.outlook.com
 ([fe80::81c6:f5f7:c234:66b6%9]) with mapi id 15.20.4415.016; Thu, 12 Aug 2021
 13:14:59 +0000
Subject: Re: [meta-openssl102-fips][PATCH 1/3] layer.conf: add honister to LAYERSERIES_COMPAT
To: Yi Zhao <yi.zhao@windriver.com>, yocto@lists.yoctoproject.org
References: <20210806071329.414087-1-yi.zhao@windriver.com>
From: "Jason Wessel" <jason.wessel@windriver.com>
Message-ID: <45f05b8c-d29b-4ede-cf47-0bfb0306ef87@windriver.com>
Date: Thu, 12 Aug 2021 08:14:56 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <20210806071329.414087-1-yi.zhao@windriver.com>
X-ClientProxiedBy: SJ0PR05CA0002.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::7) To SA2PR11MB5179.namprd11.prod.outlook.com
 (2603:10b6:806:112::7)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.0.2.15] (73.74.120.8) by SJ0PR05CA0002.namprd05.prod.outlook.com (2603:10b6:a03:33b::7) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.9 via Frontend Transport; Thu, 12 Aug 2021 13:14:58 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c5c37da3-7ea8-4e34-4583-08d95d932f74
X-MS-TrafficTypeDiagnostic: SA2PR11MB4780:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<SA2PR11MB478036B67C8150F42963C55F97F99@SA2PR11MB4780.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:499;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	TubwFaKgO7hP9hGRqbK+JbJbOMHSDh82k7kr2Q6ph67sTwRMrSsqxLD34i0MbzUa64kwyNujdP5ZKY1/Wlk0dF3B14C67ovOQ8hvmRjHflv3rKuWtlydEegRspdsojcl4qS/eEoTUeu29pyneexFfzpUUQm4OwQfDaaU5E9sixqUaezmRo3H9JG2fqt/l69XsWlYOdUU2w5j5Q2WMNDKtIZabWbSn8e1JlaAqAL6nEJJHcfa32xO1XhDb7ysqQaOtftdHGQg0/c6kvYQs5u49jYWOYeP8FAnXq2nKZ1cgNbOezj/ahvx3EDiFRw6VnfM7Wl/vA7VFzH/XaSlXKMwc27QTcv4TYiib60XgWmQSHnzcwnohm4J0BbOQNY7CNyYf5ZdzxKBrLd/XwXbNkvxniy3VvA6py+DoRO4K8/q+2rdEOKOndeP9I/OvvDwO5mFwF2zaxR6hh3Dnnj1k6yK0ZxhhmuTCbRHv5HrVx7EDtFXCzgTDrS/jzFtZA8EaINu66aI7hjUe9ftKCEb1MSDz99Ez6yra9OEFIZnnGGMauJ8DCZ/Qo821t7f2vG5QY1BZepHEr7GD36ZUKts+Ub96hV0hEqews1aGyruzVH+ZQ+dx62/OfaFSyPjxSZ3ty9flf1Z6hIcNgFZ9GxvsUVcSF/CgC4J9qWWh2Sh5AP/ogiGWEPCS7hcbpmVrOIOF4lR8GA4AcLsGH8xPTNkUCbZW2t9k7Nr7KBH8+JQJork+23dFQ9TEUdbGldXxYjK4up1BjPW6yfmeTSCakBP/bzSLQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA2PR11MB5179.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(396003)(346002)(136003)(366004)(376002)(66946007)(38100700002)(66556008)(66476007)(31686004)(8936002)(31696002)(8676002)(86362001)(478600001)(4744005)(5660300002)(53546011)(2616005)(956004)(2906002)(83380400001)(44832011)(316002)(16576012)(36756003)(6486002)(26005)(186003)(45980500001)(43740500002)(473944003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dnR4RVFxU09QeDlaclNFbHFVTXcvK3ZGT0F6NHcvcXY4NFYwdUpXOGFhNnQr?=
 =?utf-8?B?L3dVUTU2N2ZsK3lsK21XNThxM2VoNWYxclhiUmtNdWorSWRlTXNFK1M3T2lk?=
 =?utf-8?B?NXdzQm9qbEV6SDlRRUwwRFNTNHl5cTMzRkRBaXVPZUxLZlNBbVA5K1k4S05E?=
 =?utf-8?B?N3Urd0lFcTUzOXRORGMyZE5DZzdWaVg3S1c1NDM0a3ZZeFFVbEVqaUh3NmMy?=
 =?utf-8?B?RHRGSDE0eGVyV3lMdlI1NmdVT0pVU2hsQnVBbnZGOWZjNnZFWk9aekFQeHhO?=
 =?utf-8?B?Q3RuYjFtTFJaQ21JL0lTQ3Vla0pkUUtoUGkwWFpNbmUxME42b2RoN1lTb1JJ?=
 =?utf-8?B?cDNnOWM0ZzhBRTZxNjY0YklmUC9XWUliSUVDcGJkMmV2UTdNQkw5dGYyZUJx?=
 =?utf-8?B?WDBVVUk5am9UeEJ5SFppODNDa0w3b3dEcUUyWFFkME5HNzJlNjhhaDJVM1J3?=
 =?utf-8?B?eVlENWRleEhTWU9SQlBoYk9OZ3l1allMTzRyZUJwVDMvUFF4WVl2dzNJek15?=
 =?utf-8?B?SkZ5NlBscW5oak5IZ1RDMTRFQ0tYQjFIbkZOYWlJcDhFWFUwaWQ1TWdaVWYz?=
 =?utf-8?B?b2YyK1QzRFBvUC9DaFpiRXQ5WUkrYzJvbVBJNGFkWXRIZW85Q3FpN3NmQTRQ?=
 =?utf-8?B?M3NNRGM3WE1xTzY0dDNMMnVYRnhnNkI1MmZDdXQvZVEwWHNzaGYzUG9Ddno0?=
 =?utf-8?B?MmkzTWphajBsNzhRQzUzSlRqSlhPQktqMkVtQ2RmSGtXenloYTRBR2FCdlYv?=
 =?utf-8?B?WlptZUsxMTVZazNJUmlvT2RncHY3N0VUT2dseG5xTlByeDEyZFBwZ0RSSnpl?=
 =?utf-8?B?T1A1a2RaNTE0RWpkUDZWUjFWQzczSUxWTmNHeXJTbnhJSUtoYlBZYlBQa3dx?=
 =?utf-8?B?WjhPSkxJYzFvSG84WnQrYWU5N3NoL3FMRlRoSDU1a0JwS3FWWmRJN1UrVzJR?=
 =?utf-8?B?VDVjNkx1N2VxZExPaHorNU5aQWUzQ3VYcmtBUGd2WC9QQzE3SVlNS05Qb0tO?=
 =?utf-8?B?U2xYWmpRUTdPcGV5aURESWJ0U1JnNllzc2tnWEVwVXlseHhQUEM4VzRwSzZJ?=
 =?utf-8?B?eUJiemkyZEYrc09ycTBDYjVsN2NHeDIxaU1aTkMxS08vcFNkeVlQNWQxY0Jw?=
 =?utf-8?B?anlsOWhyRE1QclB2RnJ3RXdoY3dJSnJ0NFVxdVk0T1lzdStWYWI4NXZtTlNo?=
 =?utf-8?B?SDhmSVJ2US9vdENJNDVrN3hpaXlVcFRBWExWSmhIb05udmJrRTBxbVZqdHJS?=
 =?utf-8?B?Ti9EQWNmRlkwRHA0eHVsNVRrWXRka2RTYml4NnhMdC9QVzUyZ0RrVXQvb1py?=
 =?utf-8?B?RDZWcUFkdDdvaE1YN09KYUlOeG9QTUhScWVLWlcxZlhtTVVKR08za292OFJJ?=
 =?utf-8?B?V3V2bXcvdjRmLzB5ZGpxaVZBYmVzZjZ4TG1LYUhSeHd3ZlgrbHh0Rkp2Rk5t?=
 =?utf-8?B?YjJHZnJHVWVnRm5SK3MwaWkxdUkzdHZLZWcrZEpCOVVXV1YyTGw4MS94UEU2?=
 =?utf-8?B?UTBFcVRvWTRFSktydExPNm9XK3pERUVBU2V4bmVrUk82SkZDU0Zxek9rNk51?=
 =?utf-8?B?OVo4aGdSbFFabGpQcWRQN3AreUFwSVBzaTcrMlpTcWVzSThRK1pxZ3NaR1lQ?=
 =?utf-8?B?dGFhaGZ6akdmVzFtVEkzY3U0RUZzcHptNDRsazRyMkI4ejFIRk4vNzd5R2I3?=
 =?utf-8?B?MU1jck1xbG4rKzJCaG5ac3ZIeXFjWk9sSDloU2RTUytqaG9YSmFwbVgrVTdu?=
 =?utf-8?Q?vrBY81TNIi+n4E4xs/Xx/5QLj1Zfvd8Q8tH+Fsq?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c5c37da3-7ea8-4e34-4583-08d95d932f74
X-MS-Exchange-CrossTenant-AuthSource: SA2PR11MB5179.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2021 13:14:58.8864
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Eav9m0TQfrzC0O4HgdK7W4GjXs+8UVgYBs9Ucd+Ol91t+fcQyrMyYVvUJWG6yhEzyOQye79WHRXrtOesaft3yxjgC+MR0ak5iwKgcBQRpuc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4780
X-Proofpoint-ORIG-GUID: Giq1k3pcWgdBmtLJ9CkPhUAawzk2hSp4
X-Proofpoint-GUID: Giq1k3pcWgdBmtLJ9CkPhUAawzk2hSp4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-12_04,2021-08-12_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 impostorscore=0
 lowpriorityscore=0 mlxscore=0 suspectscore=0 bulkscore=0 clxscore=1011
 spamscore=0 mlxlogscore=967 malwarescore=0 priorityscore=1501 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2107140000
 definitions=main-2108120086
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

All three patches have been merged and a hardknott branch was split off prior to the merges of change set.

Cheers,

Jason.

On 8/6/21 2:13 AM, Yi Zhao wrote:
> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> ---
>   conf/layer.conf | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/conf/layer.conf b/conf/layer.conf
> index 01026f0..fc1dcbd 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -10,7 +10,7 @@ BBFILE_PRIORITY_meta-openssl-one-zero-two-fips = "5"
>   
>   LAYERVERSION_meta-openssl-one-zero-two-fips = "1"
>   
> -LAYERSERIES_COMPAT_meta-openssl-one-zero-two-fips = "hardknott"
> +LAYERSERIES_COMPAT_meta-openssl-one-zero-two-fips = "honister"
>   
>   LAYERPATH_meta-openssl-one-zero-two-fips = "${LAYERDIR}"
>   
