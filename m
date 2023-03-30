Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20920C6FD1D
	for <webhook@archiver.kernel.org>; Thu, 30 Mar 2023 18:02:03 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.32931.1680199320366737827
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Mar 2023 11:02:00 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com header.s=pps06212021 header.b=dCKRQqgA;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=34532ef2cb=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32UHwd6w026379;
	Thu, 30 Mar 2023 11:01:43 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=EKU/UeTUCM2m2KdyPDa/pCtPE1MIDIkSUTF7TNo5LyM=;
 b=dCKRQqgAYX+mmTQ8yZyLrLZit+6wTfVMRTdP1B9jq7068/lhWXh+FfiQOmjGBmuFygL1
 uxo+0xtycHNwoQz+CSCcTkwW4j1mll8iEmWc0/XVQhXHcRL6HbUD9mepLlRqMJBqebRe
 sJtJy/cCnOXV/y6vYBOH+/u7YsWLbmXEvrQlTEteJAOUS9xoGxMGHB4r6yJI/ONGugBB
 58Nd1ShVOSQ44sYbPtCqtZlLc+HwrsqCUP3n4TebUEZLyBT+QExAvw3nyt5Fakqysc87
 M+tFJnAfq4orb3NntpdgAEbzVQ0q11cUKXQ95ImdHAe5snUtsU1GE+I6NKFT/kZ+xOeJ Zw== 
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2102.outbound.protection.outlook.com [104.47.55.102])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3phv85xhan-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 30 Mar 2023 11:01:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FRCSao5NZ2YPxFmdInyRi23RCNye5fsJObUTJhP2EPFyVWyrwCQMqF/aUI3PFzsqagscIGTnRUz5i6atAUgvmasC4rAQGRiHrHjpmPHurreFDmSxvSMaJ8dy4yhAfthHtE43mTluLm92+m4zQW9neiOrHrx31BQccZtFWWaAaWtrzr0mUaxCaYYLcu9D/3ojv0QQvtatwlfTHmrs7uplRTCZGrLsV+9CnkIPOKH+5gqGHj7YbDEWtrtoMTuHPfHltcg0864nxlNNC4rFYCzQyYBANhd3akvJdxecWDYvEllKcGnw06kx3d7iAav1Vg8xFk5iyej/OT/8AcL2wNML7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EKU/UeTUCM2m2KdyPDa/pCtPE1MIDIkSUTF7TNo5LyM=;
 b=i7MUfSBcWY/MnU69IHU04qtKbcce2MPqOwCCpFD77sGApt95zC065hxngXa+UKpC7HG/mgoGynJILywl7cj27K16ReZzNNmLlmKVxQZTnozznaxOnrOt/nxYINbhFcFtfqbkj+fI5/bu/XCM/Pfxyk7PUP3Oiwe83yIyu7ZdIAyGtnREkD81/0uBt1FCnbn7HS5VqJ2CnYvEh9sC4+OmPbeTO+b3N2iqjuzXPgJwWOoE8n3aTT0V0EsUJVDqfHWq7apjWTWrypGipOTZFtfzfXTPjPxzZmJQ/21awXKxqSF93AdzoZs5iWfK315m0Jdh4Cyq4ySMCh1wvrGwNYfykQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 PH0PR11MB7469.namprd11.prod.outlook.com (2603:10b6:510:286::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6222.33; Thu, 30 Mar 2023 18:01:40 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::4f46:b639:f638:d5f7]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::4f46:b639:f638:d5f7%5]) with mapi id 15.20.6222.035; Thu, 30 Mar 2023
 18:01:40 +0000
Content-Type: multipart/alternative;
 boundary="------------Z841yAT9fiJznOHc5ImjVuFH"
Message-ID: <a932c200-d5ad-ac7c-ff7d-9ef251354fc0@windriver.com>
Date: Thu, 30 Mar 2023 14:01:35 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 23/03/2023
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
X-ClientProxiedBy: MN2PR06CA0011.namprd06.prod.outlook.com
 (2603:10b6:208:23d::16) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|PH0PR11MB7469:EE_
X-MS-Office365-Filtering-Correlation-Id: 1e238e20-34e6-4590-5594-08db3148cfb2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	S5bKRXPI4xyeaOCluVMES2hd6UZeetCBRitiI+HT9y+FV2Z6UqlrnI/eZsnHwELZ7i3KnEHsAm0dA8A8hTp9YxduEtr/c1io66s6XouUYDQSTRblvq6XD6SF6RuC1Dxu1IKA+1HbW70237IpZKRm2MsXdHezrefQ0UXqTmAEf50vbH76ijJlK9tTzTbeORx4+32TXvXfWai3Mo8uS479NuNVeSB+QdDOyFFSjKVsGIhtU7LJHPk9/IFN1JG0V5PqCWJERSfm686ThrW3z+FHfcpiFmXpmwm3clMqZGYwdDKskG3KNVKBwtMqa0TBIKJWZVNYZUZC/ElonjgzhNkhpXUhu30l7d0bOdzCrpwK36fK5bZLps0S58YM2zaplZ6L1IxLiBKDmbDcPCNVIt4+JvVoqOnK+spjvQjOL+3tpQ/U7451Cd0Di2oDNWYMrW120V5IDRTtKOdxDQKxJtnzvvvwUoUByjktwx15TBiUp4UzTcxsSkkHKgzCMxWLODCLiFF1kQu2S/gKsPtZ2r1K3e/yfmdKGF+GQrHP7AZFxD2lTw5ceEndgMNwgNwK4yrImu7mtll5sI08/pCG5CSqD1XtCWhwoJRVhD+YC1zbzIX1F7mgtjY4UcROQg5Sjg3wj7G6YnwYlcZalIFFL+39mA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(39850400004)(366004)(376002)(346002)(136003)(396003)(451199021)(44832011)(2906002)(38100700002)(4326008)(7416002)(31696002)(86362001)(36756003)(166002)(41300700001)(8936002)(5660300002)(6916009)(6512007)(31686004)(316002)(478600001)(54906003)(6486002)(6666004)(966005)(6506007)(26005)(66476007)(186003)(8676002)(33964004)(2616005)(66946007)(66556008)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?M3QzeXFVTW1WU21QaE13SnZmZCtaUkExTDl1bjEzZ0lnL0FNNTI1ejM2d3I0?=
 =?utf-8?B?MThGSkw0TnFDa2tsanQzbitPaWMwU0ozdkxRbHlIcGlNRnNtZTVJNnAzbUFG?=
 =?utf-8?B?Y1JNTFI2aGE3YkFhUVNrM2l5MmcxUkxRVDhyZXJDMzdZa1hGT1ExTUdJbTh1?=
 =?utf-8?B?aGJoeTN2MVh2Z1BHYU5XVHNXd3lZMjNqSUQ3QnBFUjdaeDFtRVlna2pFRzRu?=
 =?utf-8?B?N0EreTA3RE04U2Z3ZmtiaVpJNWhRWGJrWnNhSjVKZ01lRlVSTXVHUWJHak1P?=
 =?utf-8?B?cXFlMDdKNjZCSEd2MzRBbkUwSHZUbGFJUm9xNllaU3lVdEp5SkY5Z1RYVzRR?=
 =?utf-8?B?OXErekNXQ3k3anNnMlBiYmtQVkR0czZiRHFIQ2RqTkd2dkErS3JYTTRsRUcv?=
 =?utf-8?B?MGNweHhFK0Z2MnV0emNXQldpM1MwakZpOGI4UVoyZnRrcDNLSm9GWWcvanNi?=
 =?utf-8?B?M1ZSN3JlbFpvem11QU0rcjRtYnh5VjhZb3RVZXkzdzhvc2xDbk9iQ3JjOGc5?=
 =?utf-8?B?cms1eG5WaEdxNk5hR2R4QnBQcGRqQjY2ZXMvbUFSMHQ2Y2x6S1pPYjl4aFRz?=
 =?utf-8?B?WW96d1lKV2VQdmZLVlhnc0w2aEZETSsrRGxjTFBwMll6aUVQVVRPRkQyYmRn?=
 =?utf-8?B?dXFlcVZVTGlkQzFLQjlqK0FpZ3prSmcxUkJHWWJPMXJIbXYra0VlQmRFOUla?=
 =?utf-8?B?REhya24xamFQaVVmaHBSK01kS2FnVXUybEdhckxUTVg2YWFHNm1jK1o5MG04?=
 =?utf-8?B?ZFhWaFVOd0RsMitMSXZGZTNIWlNMTlFxRDJqMm5qV0NvYUQxLzF1UTFpczRi?=
 =?utf-8?B?TEFjZFJuYU9UUDRZWmdKTjNoNFFRL1BlUW9CL2U2bzRpMHFwT3RCc2NvODlD?=
 =?utf-8?B?N3NzZnQ0eDhrb2FWMWY5S2RJQys2SWx0RDRaVXRoUDQ4Z005TUlXOGsrUmFL?=
 =?utf-8?B?VFBxVjNYYXFnMm5Mdld1bTdOUG5pU1phY0NCVjNRYVFRMUN1SkYwWUl6RFBR?=
 =?utf-8?B?WEpkazVNOGQzT0twTTA3eGtMRWVGUk5NSXp1TnFjVW9CYmI4Rmh3NHBmSEp0?=
 =?utf-8?B?clp5T0RrM0UyTzM1bElOaHNUc2tDYi9zL0J1bkRpVWdKaFhtM3pIUjZsclEx?=
 =?utf-8?B?UjJkS0dzUGhGYWhQUUFqOVBjTm1oQ0hVQ3NYK3VCNjR2RjNQQVNsSEwwU0x1?=
 =?utf-8?B?M1Zab3hMdUg4MjlpOU5icDJYaWlMN3FYeE1qQWpNVFpSdlFBSG9RMWtXR3Ey?=
 =?utf-8?B?M3E0aVMvZUNQU2dYdzF5c2RDMUhUMU9uWS9CK2luRldmVzJ0Q2VWdzBYd2dv?=
 =?utf-8?B?clBvQlRkVkxqTTM0Zk9GWDFLR093azd6MDZHZ1lzQ2pzSDgxTlMyaU0zTEZI?=
 =?utf-8?B?TG9wd0Q2V2FBblFhb1lsYVcyRXoyM3RTa2gwd251Tmc2UENjTEtISEgvekpH?=
 =?utf-8?B?a01QYVVmSXJvcDhKVmFuaCtCdU9tak1yNGRtSG5OMDNod1FiUE0wNkJ0RWxC?=
 =?utf-8?B?ekVpNGRhSzlrcXQ1ek9OYU5aS0JwN0hWWEpod0c0WWMrL1BoZUY5L2MrUVFk?=
 =?utf-8?B?THdRb2ZueFZMWDRtVE1aL29ndFp2TytlWTJ2SlBZTTRnNDlmZnRmWlZONGNR?=
 =?utf-8?B?VkIrV2NnT2tVaVBRc3AwdUI0MHViYnVoSVA5ZTROa3JIOHVSWCtQUTBXeVNE?=
 =?utf-8?B?S2NrYXNhUlJJdUdmMHF6SUJ0ejVjYUV1Smw0b2NLWUpWdHBYYS9nOWVyblBG?=
 =?utf-8?B?VXc1bE92bzNIUEJJRzhzbnl2UVlhemJkOTZIRXhqeUJka3QrS0pGU3JvSHpJ?=
 =?utf-8?B?VTREZEdURmNrVzA1T0Iyb2RtZXlCTkVtc2Y0NVJyK0xUYitiWFZWb05Kb1oz?=
 =?utf-8?B?TU5EMTdMMHNQdVVsQnAvd00zbTh5aFlxMGNYU0RtNnErZVpseTRkUENPZ3Nv?=
 =?utf-8?B?RS9CTGZucjRiTzlyditqanFZOERSdjg3OENGUmh5ZytQVWlVTkF1aVJNYnZz?=
 =?utf-8?B?UTYyYjRoR0hPbTdHM3p4M2kydk1EQkVhWVFhSFhRTGVCR3lPWEdhSDFmNlkw?=
 =?utf-8?B?bGRwa0lMMjVxQVFxaU80VjJWa1JnSFpqMGtYMVNDRzhRUGJpSkU3THhIVER4?=
 =?utf-8?B?UGVIQlB5RFdFQXA1OWxxVjBYYVV5c0NEdzdTekNzS2RNQU9QYmdybHN6Z0Z2?=
 =?utf-8?B?Unc9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e238e20-34e6-4590-5594-08db3148cfb2
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2023 18:01:39.7417
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f5rfuHHRMmoxvy8rX+OcoROQaQtfGlEwj57uMMhhUQ0y3Q6+RZnTMZ61O7cvjVgrIh56sNFwDzGpjzTYxzUvjQT3vJghBR0emDQ92wIvAz8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7469
X-Proofpoint-GUID: 2gyZ8RREwSURxQ9NcyA7HTWtgyMrVxYk
X-Proofpoint-ORIG-GUID: 2gyZ8RREwSURxQ9NcyA7HTWtgyMrVxYk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-30_11,2023-03-30_03,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 malwarescore=0
 adultscore=0 clxscore=1011 mlxlogscore=793 bulkscore=0 spamscore=0
 impostorscore=0 phishscore=0 mlxscore=0 priorityscore=1501
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2303300142
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Mar 2023 18:02:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59553

--------------Z841yAT9fiJznOHc5ImjVuFH
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 32UHwd6w026379

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Richard Purdie, Steve Sakoman, Stephen Jolley, Randy=20
Macleod, Joshua Watt, Ross Burton, Alexandre Belloni,=C2=A0 Tim Orling, B=
ruce=20
Ashfield, Michael Opdenacker, Michael Halstead

*ARs:**
*

*Notes:
*
*
*

*Medium+ 4.2 Unassigned Enhancements/Bugs:* 59 (Last week 59)

*Medium+ 4.3 Unassigned Enhancements/Bugs: *13 (Last week 11)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *44**(Last week 44)

*AB Bugs: *71 (Last week 70)
--------------Z841yAT9fiJznOHc5ImjVuFH
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
        Belloni,&nbsp; Tim Orling, Bruce Ashfield, Michael Opdenacker,
        Michael Halstead<br>
      </p>
      <p><b>ARs:</b><b><br>
        </b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes: <br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode"><b><br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.2 Unassigned Enhancements/Bugs:</b> 59 (Last week
        59) <br>
      </p>
      <p><b>Medium+ 4.3 Unassigned Enhancements/Bugs: </b>13 (Last week
        11) </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>44<b> </b>(Last
      week 44)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <b>AB Bugs: </b>71 (Last week 70)
  </body>
</html>

--------------Z841yAT9fiJznOHc5ImjVuFH--

