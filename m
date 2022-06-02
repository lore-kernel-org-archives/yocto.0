Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B280CCA478
	for <webhook@archiver.kernel.org>; Thu,  2 Jun 2022 15:31:53 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web09.526.1654183910049838204
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Jun 2022 08:31:50 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com
 header.s=pps06212021 header.b=HQqjGbKA;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=3152b23ca3=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 252DwDFN015315;
	Thu, 2 Jun 2022 15:31:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=qkI4LUADrQwHKIylEZ8Ar+SAw9noa7KFASzUsdbJUJQ=;
 b=HQqjGbKAa4aRct91mdTggyHrL4YBlh6SUHyIK7uWX0PZAFt7M9qRgca3o1GPd4ITebRp
 LU6WsxTDvu6wJNCMc6Egou+D0r4jRZQff+3qo6YJ3fHlvEX9Fz5794szXdHqebR3eWKb
 8OKJkFjHOrCAPVUIdqsDxJTX6iP0w684MTHWhpVZYiAXahg+UCZPEGp7yCFHURCWo1FO
 nc4vDfETz3Hghj7CdWoGrZ31qpxmks4j4sh2mEsrqYFvHb+4YWLcSJh8FJ+PV81fhxVb
 5llW3BzcwyoyTnkaXmhMcTH/ep48MABPXJ8gTU/MC+bPPL5gVriNeF82i7EaMfm5Esk8 9A==
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2101.outbound.protection.outlook.com [104.47.55.101])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3gbbxkbx0h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 02 Jun 2022 15:31:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WbEp8sHZf3Yv4fdjitTFnIKrs0V9bZe0tHWJa/gqrQy2EAzI7L5L5SNlloTCKnIWjpvxJZaq8uraWVa582weqw69jpL/pypDzVG74w3KAff7G3FxldnKFbxgNQFuNwugV31CF64hifNV/kGadrJSZZFNsgUbc+xE14N7nYu/Y9g9pXCy79mYj/SKVLIlRT6B8Vcu2chdiyHCjNyXYcyKEdGhK9DqTm5yygtMJIiaAbG7pHhPIW533N5Gf8WYbP24yqnVhyVi6/2qoZ0461/BA3SGZMMD+B47gm34JWd/r6b+UlprkTdeoFZpr6fe3WyUFtY5hVRZxlwZbh70eYTSSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qkI4LUADrQwHKIylEZ8Ar+SAw9noa7KFASzUsdbJUJQ=;
 b=XF+KFoGsHdd7o1JfM8c2WgIhFwGII9o+3RMN50l3MUqlsbQakV6UMacZRvAeVGjBIKS9FiboQv64yUBeSdHk4m8HV9f6FZ+9JCt3kgttDgDDvOELzFGXbokyGsIF/+DOnBiRMcJuvHi2GSUmuJEbAkzlol8s/Qap+U6dOH5HVJjNxsUwV5BtlBcpx+F9kpI51kQhqKnQ+M0NjTqVr3qEWBk2paNb5bArQ31cex48G81i1AKz4GUB5lWO6N5bTcToekJW/6ovuKEal7RKHJgmYn//cxBjuBd0vJn4gtLZzimZYMkoLaWfg6OFH0HRqrogaF1h07JrczHdwddvMktUmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 DM5PR11MB1961.namprd11.prod.outlook.com (2603:10b6:3:107::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5314.13; Thu, 2 Jun 2022 15:31:23 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::7cb0:dc6c:b2b3:b69b]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::7cb0:dc6c:b2b3:b69b%5]) with mapi id 15.20.5293.019; Thu, 2 Jun 2022
 15:31:22 +0000
Content-Type: multipart/alternative;
 boundary="------------2cNbwVRzWWEdGh4IflPP7i2e"
Message-ID: <db8baa55-8cd1-446b-f145-a902f2c7e758@windriver.com>
Date: Thu, 2 Jun 2022 11:31:17 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 6/2/2022
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: alexandre.belloni@bootlin.com, Bruce Ashfield <bruce.ashfield@gmail.com>,
        daiane.angolini@foundries.io,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        luca.ceresoli@bootlin.com, pavel.zhukov@huawei.com,
        "MacLeod, Randy" <Randy.MacLeod@windriver.com>,
        Richard Purdie <richard.purdie@linuxfoundation.org>,
        "Wold, Saul" <saul.wold@windriver.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Steve Sakoman <steve@sakoman.com>, tim.orling@konsulko.com,
        sakib.sajal@windriver.com, akuster808 <akuster808@gmail.com>,
        ross@burtonini.com, Saul Wold <Saul.Wold@windriver.com>,
        michael.opdenacker@bootlin.com, valery.chernous@gmail.com,
        aryaman.gupta@windriver.com
Content-Language: en-US
X-ClientProxiedBy: YQBPR0101CA0210.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:67::21) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1d6a72c6-a169-48b5-b169-08da44acf2c5
X-MS-TrafficTypeDiagnostic: DM5PR11MB1961:EE_
X-Microsoft-Antispam-PRVS: 
	<DM5PR11MB196181A536870914AD9EAFBDF2DE9@DM5PR11MB1961.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	bfd5GHLQtc1UjGHq5WQsJ8k8FniIqzAXjrD/2Ms4XOkzKmyfsfbZ9Rt0QTCXFMJP/EdAKsS5hKhd3FuSxXWMYIwYgYuUiKoS2e3GMtWHui0VUxxrIvCpCaUDS0puF9ByegK7EUFuNHV6KedjZT66IxtgcRuZa+uVeqolt2LS8ENw4f/V5HHFSYBhQWXmCRQDSoS313+azC2I/EVM9Tf3N99xwiH2dBnGVsrANReJzOn5HICzqQ5uZ26+JmH6oIxbktskH7TjGiPsligaVdDRMsImB3+rQWi/tiFrou1M0ruCgLohh+wpOwo/qKI9E4Xk4rqd0/ktQsD/0gf7hW4fawo/HZsmq7bmIy/K0J4rOg98yxcw0f/+luA3FKT2Nus1aDbM/L3QuNHLiEFosFNWet5U4CjyOs4FujYO8vFzNo8XK5TbmPTAXj5R/W0nT8dCCtIKpCtANVinS7yzrZLWTNoDl/QUGg/L1Ip/BQ/XMbdZVHXhkeJTqkmQpQMfOlVUA9GVvpAgyyG5+1dNl4TykODeFi2fpipNaf6RA1Bcsf9XOZTjXqa9QQMSgPlg9tyVUtpflZK/AQDiRkpVZkwXD/Qzc+wlc1mzrbQbdo5by4g/4X3OW8VwshXoTY2eIkMx9Y69caM8ApwdQzZwOkBjACqkxdVIco5jRhUX5xo0zxasqvvS4N0NlZ4/bqx0TlM7KmON+5VNm+01lYflamZ+pao+iqPtLmjjEHCAEP1P5lzd9agNAzaejqsZE6EHInP0ZWdbIDCQ6SK0/GbmAbBvCHZLajm1zBKfobHuywAQ3brEee5yVms9P/oMKRojkLo3PMXP8QR+7nnqdlqH1fJuDjpFooNPMERCt5TyZ1XgOlE=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(166002)(31696002)(6506007)(6666004)(26005)(6512007)(6916009)(52116002)(54906003)(33964004)(44832011)(36756003)(316002)(86362001)(508600001)(6486002)(966005)(66476007)(186003)(5660300002)(66946007)(66556008)(4326008)(31686004)(8676002)(2906002)(8936002)(2616005)(7416002)(38350700002)(38100700002)(107886003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YzRJajdyYmFnSWlmQXV6dVZ4aTNxbG9OczE2WGFBaXlmYUFUSWpkVmFVQkRq?=
 =?utf-8?B?VTRLR0lObjB2ZW9Jc1Z5TTBMdXlPQnVZbmcxK1RmSWxsVHZUeTdvekZZN2Fn?=
 =?utf-8?B?eTd6cVRWakxwa3dPK21aQVM5RzFXN0NIM1E0UXJjcUN0YW1iVjdPMkZVNGpy?=
 =?utf-8?B?K2hwRGFGMDF6L1FqNy8veldhb1Q3L3pSM2o4aGUrRHVzNllOeDBrbXhmUTNJ?=
 =?utf-8?B?SEpjR3hvRHBtbjZmSlFiMWo1TTFrWlNJZDNnUVltWlRES2tqZzdmTHZ1OW92?=
 =?utf-8?B?VjlEQm9UNVlvTFNzZVNnRllYeWJKSTloZVphOW0xVE5ibmlnL1pVS1lXUE1x?=
 =?utf-8?B?Y2MvY0d0SXJRaWhtSFNXMXJtd1c1bCtGdld5VzZrK0plS0NNbXQzaklzblFi?=
 =?utf-8?B?YkV6b2NKWWs5RjdyUGFwWGYvSUY0NklUV2lhWTk2Vy9NN3ZmSzRjZ25zZDVR?=
 =?utf-8?B?SDhuVmdiL2hEUkV2UVFUN0FoTUVGMkY5UzNGT1RPRFdOYmtld0xsTDF6emVp?=
 =?utf-8?B?dnBYOVhCd2ozQTMyZWYrQUswTnFob05td0ZTaTlYTVZJTW1ielduWUFRMkgz?=
 =?utf-8?B?S0VUaXNMamhqMWJxd1ppejFXRURGa1JkZUloRk5meXBnWUVZNUJwSzJZNVJh?=
 =?utf-8?B?bDVhRW9yVFZITEVjVnk5YWhiRitRamwxSU9ZM1BSTkVWaEx6NWZHeWYrVEtt?=
 =?utf-8?B?dDhiVUVNTTVvZVlYRDdUZjBNeHg4dStkUmlOMDk1RVowWGx6T3NULy9xUVRM?=
 =?utf-8?B?RU42b0NCdUdHcVhBOUxEcktPR3VjZnJPRVdsd3N6ek1IRjdQa1JVeDQybVlv?=
 =?utf-8?B?ZCtLZ0tMM1RKWDhEdVhZYkp5YWoybkQ3SExQZ0xMb1pobXRMRmxCWUY1SWNa?=
 =?utf-8?B?bUNtUHIvSjNqV2oxL0ZURUFNMk9OemhEUkprdEJGZlpSWGIxUU1wTzgyS0Z1?=
 =?utf-8?B?cVJQVktYbWg5NXkvWjZ1R0pDbDlQTTJpb0pQTzBhaG0vZkF0cUl3UFFERDBI?=
 =?utf-8?B?KzJMc2RYd2xoWlpHM1BDWlZtUWoydFJwR1hTYUpYYTJVcUc0NWJwWDN0SURy?=
 =?utf-8?B?alV5VXBSVXFoRDhneHhEVURoVzlSWWRQb25RbUdtRkt1R1Q2YlRMRUZzaTgr?=
 =?utf-8?B?Mmo3NWNjTS9wcGpVd1F6am5QaTJpd1NLMzUzSGVKQW9ML3plWjJOZjlLaXhB?=
 =?utf-8?B?NFFOZDlWV21SVlltdkVuWERlMnIxalVoQ1dNUkJhb0hXSDNvWFBIRnhUaTU2?=
 =?utf-8?B?RzhFQ1VGL2Y4UXhBV2xaL1RDaHVRc1JVV1g0YUFuWlF6TkNtUWNEZTNvaXBD?=
 =?utf-8?B?bHVKYWlkWTAwTmh5dGxiRlV6MituT2RRNEQvZURBSU5WamFlYyt2azdqU3FS?=
 =?utf-8?B?K0ZFd2svQi9JZjNSOVluTDVQdU05MzlZVEFUdGRETnBNNmJPRTVoZlB4ckdU?=
 =?utf-8?B?WlQ4cUp2NHlkc25KcFFFUUVvUWl2N3F5cEMvaFpOdDdnZytmTlluc1Y4U0xq?=
 =?utf-8?B?UVlJQVVXWStaM0ZCMllxcUFlbE85ZUttVGZOcUlJRU1nNlFmUTZRblJKMW54?=
 =?utf-8?B?RmdacVV1Q3Q3TWt2OUxMM2wzUW5VbGhaendoZGlJS3lRd1h3WFJOeWozTS9r?=
 =?utf-8?B?UDBpSUJPM2NzZmpzSHFvTVlLM21pY09Yd0pPRGZaYzNxNFgzQVZZaUtGR0l2?=
 =?utf-8?B?a3NXVERJZktvSzA1a2c2TjBzcDZkd09HelltSjRNSTFVMUI4dU93Z212Yzl0?=
 =?utf-8?B?bUZ5UnJmL29HU2MvWU1kbFZOY2VhZG1JZ1hJb0ZIeTNNRGovaXNGYnBrQXlP?=
 =?utf-8?B?NUZwNDRMWEQxbk5xSFFieWorMjdVQVAxTFRLSjJhWnk5QzlNNUZqcGphR1dz?=
 =?utf-8?B?QVdqTzE3amlmc1pGK3FIMS9scndxL2wyU2pIL1hSeFlDM0FIVUFxOExpeDBR?=
 =?utf-8?B?Q1BuLzhnNjg0NVM1cVI3ZnV5QTV1Kzc1Z1JvRFF6ekxhTUpWNFEySWlOdXlH?=
 =?utf-8?B?SjVaeFpaQlBETEFacDZienlKc3hyWC95Y3FWeW80R0xGMkpDT1dONHZ2akUy?=
 =?utf-8?B?L0dZVzR4K01XcUJkeitVZzdtNlRrWU9LdEQ0NVBWRFU0d1NhYXRZV0t6Zm1W?=
 =?utf-8?B?WW4vMjJyUklRNXNBZUlQOGRXeG1mQkh4ODRsdTZTdGNxTC84ZWhVUGErMzlR?=
 =?utf-8?B?bG5YV0tmYlJRRExGNmJVd0FOMDBDMWlDNGx3Q3E1MG12K1o2WWxxY2Q1V3lQ?=
 =?utf-8?B?MHloakp2clRFeHptRk1zb3d1b3FqT1dTN0RHREdzYnN1NFZhNHFXS2l0V3ZG?=
 =?utf-8?B?aXo1TTNURDRZT2FsZHc5N3N0dFVxMy9NS2ZIRTZ0LzBHRWJtSGJIOGIvQ0x6?=
 =?utf-8?Q?gbJL+ztc4CTcDLiU=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 1d6a72c6-a169-48b5-b169-08da44acf2c5
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2022 15:31:22.8827
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 7sAf2AOvO9s3jCdHu9zZiAXvC90sMLjFi6mALIGt96s5JRkZPdIVVqts6oB31L+JwJBJN2Ez9d5CNyiFDaB8KpY+ncfIV+eb7qhj5zzuNaw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1961
X-Proofpoint-GUID: _w42_0pOnNZBh9vdm9MP1FhYRL4zdW-5
X-Proofpoint-ORIG-GUID: _w42_0pOnNZBh9vdm9MP1FhYRL4zdW-5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.874,Hydra:6.0.517,FMLib:17.11.64.514
 definitions=2022-06-02_04,2022-06-02_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 mlxscore=0
 adultscore=0 priorityscore=1501 bulkscore=0 malwarescore=0 spamscore=0
 mlxlogscore=654 phishscore=0 impostorscore=0 clxscore=1015 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2204290000
 definitions=main-2206020065
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Jun 2022 15:31:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57247

--------------2cNbwVRzWWEdGh4IflPP7i2e
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by
 mx0a-0064b401.pphosted.com id 252DwDFN015315

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Richard, Steve Sakoman, Tim Orling, Pavel, Aryaman Gupta,=20
Saul Wold, Stephen Jolley, Akuster, Alexandre Belloni, Randy, Zack Welch

*ARs:*

Randy:

 =C2=A0=C2=A0=C2=A0 - move AB-INT bugs from M1 to M2

 =C2=A0=C2=A0=C2=A0 - move Medium+ 4.1 unassigned bugs from M1 to M2

*Notes:*
N/A*
*
**

*Medium+ 4.1 Unassigned Enhancements/Bugs: *74 (Last week 74)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *47**(Last week 47)

*AB Bugs: 47* (Last week 50)
--------------2cNbwVRzWWEdGh4IflPP7i2e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Richard, Steve Sakoman, Tim Orling, Pavel,
        Aryaman Gupta, Saul Wold, Stephen Jolley, Akuster, Alexandre
        Belloni, Randy, Zack Welch<br>
      </p>
      <p><b>ARs:</b></p>
      <p>Randy:</p>
      <p>&nbsp;&nbsp;&nbsp; - move AB-INT bugs from M1 to M2</p>
      <p>&nbsp;&nbsp;&nbsp; - move Medium+ 4.1 unassigned bugs from M1 to M2<br>
      </p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <div class="moz-text-html" lang="x-unicode">N/A<b><br>
      </b></div>
    <b> </b>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.1 Unassigned Enhancements/Bugs: </b>74 (Last week
        74)<br>
      </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>47<b> </b>(Last
      week 47)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: 47</b> (Last
      week 50)<br>
    </div>
  </body>
</html>

--------------2cNbwVRzWWEdGh4IflPP7i2e--

