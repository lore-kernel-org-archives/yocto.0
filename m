Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03398C3DA6A
	for <webhook@archiver.kernel.org>; Thu,  8 Dec 2022 16:45:28 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.19584.1670517923607390258
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Dec 2022 08:45:23 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com header.s=pps06212021 header.b=V109AJn5;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=9341da79c5=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2B8Cw3FN013147;
	Thu, 8 Dec 2022 08:45:07 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=PMoYpGEzzEJ16wi2eW4V/GMU7fC2o0A0Fnd9cnO/Vxc=;
 b=V109AJn56sTLk52pBmuWsK04zHhvCkFoEa/+heWGslTzlIYQsbHHpaoWe1kMidLiCFtb
 iZ14HlGtvvo3ldvkP1FLtGxafXsIbCFG/UuZ1KEy0Vh0I6iwokJFlHpV4iin32fji9IH
 pTyzuXbm5nn7NFUBRv/9bPh+PsJ3ivlz11oqBU1B3FDfkrH/xUinWOKXZ6AkQSTfOWMX
 b2FWvEETmD4ZQhptBadpEMS5syKt18MqAGflIs/QrhWaFW67j27OLZLjAqipn8S6uRUj
 AnuTjzRv0RFR/6obsEBOuwrxiDF5gxlrbA0ksO48DknBReBZO8R6wz39Px9/PCPqZ25g zA== 
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2170.outbound.protection.outlook.com [104.47.57.170])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3m82m6vhe2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 08 Dec 2022 08:45:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CfproSqflChQKDcAyaRt7tzj9g7agI2ckil+YmAhMmvveH3rY+Maav7dt46l/XReO8uYGHOU69hi/ccJ4OgX6a13h0h4HYXpPlhtrj5y0dUKyvug6aD8k+eNybT+9df7AcWgSzDEEoafoPPEUt9eGPb8+FZcB5CTi87RwY/x4p9XVDsXLq4rzd4RqHidVxFXnnN5siIj350lCAYzeveeJC6XbEQ9g7E54uQr4eb13N1qM1kXShiSXXeAg00rJXSCaWm/kTScKc+6aDYup+y1d3J/JC/w7jbLp32x1gGdWIABtnT/Fv0m6BQGHcIXwvfKKw9NXiH+pa4W8g+G1k8+5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PMoYpGEzzEJ16wi2eW4V/GMU7fC2o0A0Fnd9cnO/Vxc=;
 b=Ua8lOKs/fSZaKMkMWMfBCe8Xy2SFKZnxjtFtifLxbEouERwK8e926UHJhv9h3AVEXu7nEFAWPFQuFQBe59BfcPCD0w/LopdumuLsPpXML0EwGzueDABj0m1IE6JucKisF83QBWozcBCWjk/VYxM2+L3ztBCRCMYyaCg90paF4hP4d6HSGrD9tOIBHfQZYH7jW1t3oOPUR/Lpm7LRjAkvB58yFjx5zepixQ2zb9Y3GhRSGOG6GUUB/HKyyAbz8kCY3d7wg1TLZ2+S9bGX1IeIX9ZQ9kINcaUoVzv/dHJa4s0PGdZPBP4MQDEL+uOkly93WyAuF4N9WZEYBq8olZUbIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 DM4PR11MB6477.namprd11.prod.outlook.com (2603:10b6:8:88::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5880.16; Thu, 8 Dec 2022 16:45:05 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::3ec4:f05a:8bf3:59e0]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::3ec4:f05a:8bf3:59e0%7]) with mapi id 15.20.5880.014; Thu, 8 Dec 2022
 16:45:05 +0000
Content-Type: multipart/alternative;
 boundary="------------9IaJwWb5yBSFYFKoHDHU0m2G"
Message-ID: <210ab3a5-6b08-3588-4d42-e13cb729d1bf@windriver.com>
Date: Thu, 8 Dec 2022 11:45:01 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 12/08/2022
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: alexandre.belloni@bootlin.com, Bruce Ashfield <bruce.ashfield@gmail.com>,
        daiane.angolini@foundries.io,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        luca.ceresoli@bootlin.com, Pavel Zhukov <pavel.zhukov@huawei.com>,
        Randy MacLeod <randy.macleod@windriver.com>,
        Richard Purdie <richard.purdie@linuxfoundation.org>,
        Khem Raj <raj.khem@gmail.com>, ross@burtonini.com,
        Saul Wold <Saul.Wold@windriver.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Steve Sakoman <steve@sakoman.com>, tim.orling@konsulko.com,
        sakib.sajal@windriver.com, akuster808 <akuster808@gmail.com>,
        valery.chernous@gmail.com, Zheng Qiu <zheng.qiu@windriver.com>,
        pavel@zhukoff.net
Content-Language: en-US
X-ClientProxiedBy: YQBPR0101CA0216.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:67::27) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|DM4PR11MB6477:EE_
X-MS-Office365-Filtering-Correlation-Id: d00396d0-a772-49f4-b93e-08dad93b8eef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	8RLIR38gQQ18cXyI9JCRSRfwfnR4MjueOhltP7cKEvtNJhpN/petdC2NVJWvRZKLp3bD49hqrkoRc3fVEFeMBbdvZ6t2eX8y7F5a7Qru195Pnuq+m38u12lRvBds7MqqFQpEdZhcz28WUTqFn8UaEZ5dedAl1SJQ3k+f71VDSG9CWCT7F3SmxdmUExi/aDuiX7h7W/DQUYWVtDvhZHBv/U9zRwTy/QWDsc2F9Zr+WK6pxCYvN7B4gmpcSuw9zixz7Y/CXIBkxBYx9oiXPDKylEjpeKC0mGwGOU/g/cOzptoMKOr4uHLMa6K5swBMqm/NOkYzttGNPXbHuDtYKM9aUU3I28CMEzqhTiT0wDF+4GkiwmNC+uhsSLFneZpcCDgCulojqFNoWXBT8tFeCRxPHmo2vsoliQg9ahnsnTre13K9kXMzK+ES6fXUI8PgL/7MROdbuGs8f63fblmlKzQZc7enfSH8GOr/S6MycVufp25/1l1xlH3ZwbEwNM/8qyXVqmpFMNG5tbw3v5s4bwCbzlf/ZYTvmshrJ+RvH6l+eJUDcnzqbcTxeJPRPgCkp/wzcHWBh5f/Reg0vvZ0PqrooyyCyqjE8XwP9X6dqESg2oES13eugR14zt72jn3e2BItXZlx5vetGMc7kP1GF1+YmxZMiMQfp1d9KflTsOlpsYqXOmqBsZKAGw76C5DhUqtRwVfdgJ4ZQe9sygAPWbnYNqUSR3D8eGjnqcgEJpSt6cAbwXRtTWV/DPele1zlE2iH
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39850400004)(366004)(136003)(376002)(396003)(346002)(451199015)(6666004)(38100700002)(31686004)(2906002)(44832011)(26005)(54906003)(36756003)(8936002)(31696002)(316002)(6512007)(6916009)(6506007)(478600001)(7416002)(5660300002)(166002)(186003)(2616005)(33964004)(86362001)(4326008)(41300700001)(6486002)(966005)(66556008)(8676002)(66476007)(66946007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SklvNXU3MllaaXRadWZVa2tBeFc3blFPdm45Rzh3Z0htOVFZM210WFlxMVNZ?=
 =?utf-8?B?Z21VSE5Qci9YM1diaEVPM2hxM3FualgrWVV1RWROMXE0d2NKeEU1R2s4VWE3?=
 =?utf-8?B?YzR0ZWdXR1k3MUpaay81RXZTcVV2bS9LQkVWcHFReVJvN3NQUG94MTdZWTE2?=
 =?utf-8?B?b2dxUWd1RnVtN3hKcmtLdFo0VGl1NmNYVWlVZTY0YkZseU9rRk5LaXZpeHJG?=
 =?utf-8?B?TU5td1ltb3pLVDFHV1NDa1M0YXFZbitCRmJYY1RxQWxRWVovMy82c3ppTGhr?=
 =?utf-8?B?V2hJdE9taEROb1dBakoyZnRsK3RVeW40c1h3dElqMW00ajlUTVQrR1ZoUHBk?=
 =?utf-8?B?TDBIazdiNjlMNXRFUjBSUUNOcW9zdy84WDhNKzNKRkFQdVVoVk1mMkhVeXdk?=
 =?utf-8?B?cTB6Rk82YjExZ2ZtVzM4M3RKZUR5MG8zbDc4QWhRc1JsMkVtMjdDZUtnRHhN?=
 =?utf-8?B?cEFCVUtRUVZ0MEl0YzNucGVMMGZTY21TZTQ1SHJGWW1jRW10UDJ3R08wVkZt?=
 =?utf-8?B?L3hPQWRodzNlcFdscllVSU0vK2c5U2pub2RwS2YwMk82SHdNa09DTFU0VDlF?=
 =?utf-8?B?T2JtY0JoTjAvbUNiY25GYUUwUndBeGNpY2g1VGI1bmVndDdrb1h3T1dNWWlz?=
 =?utf-8?B?MHowaVhtbG8yODdTLzdMd3Q0cVhIRlNrWlRHSCtlc2lRNTUzb3Fjcm9ZWjhr?=
 =?utf-8?B?c0lpRk1mdXFKR0wzT2YvOHY5NkVZYlFPR09TVjJpRDVEZzUrQVBqa2RtT2hD?=
 =?utf-8?B?ZlVyUVZtUEpSdElTbXJvQ0VPWXU1bjRZWllXdDhuZUtIeVpZKzk1QmJsTEZN?=
 =?utf-8?B?a2UwRFRML0ZrUHh2b21ML3BnRk1WNU5GQVhkNzdCczUwbUNnL3VvS2g4M1ND?=
 =?utf-8?B?bVQyNG1qS0liUFdqYWNBZ1pOQlowZ01IODNaUWdNeEFpb1dSWkJDcnpCRjBP?=
 =?utf-8?B?MzF6WGxrMFVMZmlOdVNzL0JEeEZ2d0hUQ2d3RjNpZURrWWJIdlZJRmN0Y3Q3?=
 =?utf-8?B?bEMxeDBCRS9ZNGVxQXlDTkNNbTJ5WFFaMHc3d0tUakFzcWEwMThsTUo0cjJU?=
 =?utf-8?B?TXlTRjBGU2VuS3ZYdTZibzJpbzdqc3pLOEtLc0pHdE5raG1NM2ZSa0I5VGp0?=
 =?utf-8?B?VVhVQXZjbTZKNkhwS1ZpSWRwT3ErSTZJZWlxTnZodSs0OU91RHJKSTllczVE?=
 =?utf-8?B?Q1MrMUpQckhCQUxRZFQ0cW05bG1ENFpDbWZPbm10NVYybEw2dEV0NFp3Q0lR?=
 =?utf-8?B?a2syOGpwMlpCNSt0YjVVUm1JY2FrcERUUC8zTzFMWnJqQkkxdFNvOUVFd2Q4?=
 =?utf-8?B?UmJtZVpuME1CNWg2NXo3eDFqT0Qvc0dtRVpqRkxIcFNZV3YwOSt1cXJmSU04?=
 =?utf-8?B?SUV2dGRycUlKOTFkT1BmTFBLSDR1OTMrNGthS0ttU3ArMzd2VS9NK0ZvM25V?=
 =?utf-8?B?OUhpRTJhQVVpSjI5NFc0QTgrK21TT3RJSXFXcjIwRHY4Vm1HZ0IwYTN0Vy9M?=
 =?utf-8?B?TVBESHJMUCtYKzRXcUpjclBrb0pqRlRTUTF3Q295UWp1dkVpYUI3MmNoL0Jv?=
 =?utf-8?B?T1Ywc0h2MzZZM044NkcrNnRWcmFpZXBrT1dIakZrTzZCaC9McnFOZzU0c0hD?=
 =?utf-8?B?Z1JxdWRjR2N0aWJwU1YrWHgySmUvZUpOZ3A1S2tNSDh1U1FCYU1UVUszdzJs?=
 =?utf-8?B?TWU4NEM0RkV3VFBPL04xYUlaUTdFcHYrczdDZ3I0MkY2N1JCZmdvTWJCQ1R3?=
 =?utf-8?B?U1dnZVAvenJlV0pEcHBHUU10YkVzVkk2NUhucDVCeURmRUJsQnNBY0MzejFH?=
 =?utf-8?B?bjFjRWNHMitoVUk3Vjd2c2p3aGlmUS92ajN2cS95T2h3cVBrbStCTFYzMjUz?=
 =?utf-8?B?UTV1SWhRaGNwYjFnUG9YUEp3ekVsL3M2NUtqRUtySHl1R0tyNDVUZkR4Rk5l?=
 =?utf-8?B?eVNFa29wNjNzQ09xYi9WNHdXdXBTOUpWOUF1czEvcXFhb3puSVpZWlpyaDV2?=
 =?utf-8?B?UER5NVVhYVRMbzhPL1ZFZ01MNnZuNCtxUXRRdVB4WFFYWitrU0psaDhKMTd5?=
 =?utf-8?B?UUlwNmZNN3RVa1FCOTM1dzQ0bTc4WkY1MjgrNmZpaGtFcVhSNTAwNmFESjQw?=
 =?utf-8?B?UHpmY0RseVloR1k1ZlBlTzhGYk0vMC9vWWdmMmU2TSsxVlZLdVZvTWJJaDRv?=
 =?utf-8?B?NkE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d00396d0-a772-49f4-b93e-08dad93b8eef
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2022 16:45:05.2906
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4cEE8t+kPkwkrEKVieZiPpc3T3vhdeiHp6EBc7646DzcYDGgq6QtA6fJ+LGuSIbF2NxIjAl+W5BjPpe+a0YJ05gmcImv4Wglty4feNr6z3o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6477
X-Proofpoint-ORIG-GUID: tksYdVbXz6BEtVEwjWmHEmp_-mHh0MDk
X-Proofpoint-GUID: tksYdVbXz6BEtVEwjWmHEmp_-mHh0MDk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.923,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-12-08_10,2022-12-08_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 lowpriorityscore=0 impostorscore=0 suspectscore=0 adultscore=0
 phishscore=0 clxscore=1011 malwarescore=0 priorityscore=1501 mlxscore=0
 bulkscore=0 mlxlogscore=871 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2210170000 definitions=main-2212080139
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Dec 2022 16:45:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58762

--------------9IaJwWb5yBSFYFKoHDHU0m2G
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 2B8Cw3FN013147

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Richard Purdie, Steve Sakoman, Stephen Jolley, Randy=20
Macleod, Joshua Watt, Ross Burton, Alexandre Belloni,=C2=A0 Tim Orling,=20
Michael Opdenacker, Bruce Ashfield, Pavel Zhukov, Ryan Eatmon

*ARs:
*

*Notes:
*
*
*

*Medium+ 4.2 Unassigned Enhancements/Bugs: *70 (Last week 69)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *44**(Last week 45)

*AB Bugs: *58 (Last week 61)
--------------9IaJwWb5yBSFYFKoHDHU0m2G
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Richard Purdie, Steve Sakoman, Stephen
        Jolley, Randy Macleod, Joshua Watt, Ross Burton, Alexandre
        Belloni,&nbsp; Tim Orling, Michael Opdenacker, Bruce Ashfield, Pavel
        Zhukov, Ryan Eatmon<br>
      </p>
      <p><b>ARs: <br>
        </b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes: <br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode"><b><br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.2 Unassigned Enhancements/Bugs: </b>70 (Last week
        69) </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>44<b> </b>(Last
      week 45)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <b>AB Bugs: </b>58 (Last week 61)
  </body>
</html>

--------------9IaJwWb5yBSFYFKoHDHU0m2G--

