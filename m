Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17D9DC27C40
	for <webhook@archiver.kernel.org>; Thu, 24 Aug 2023 15:32:36 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.205.1692891153748684610
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Aug 2023 08:32:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=X7mjwEQK;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=76002a6fcd=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 37OBmSNm013001;
	Thu, 24 Aug 2023 08:32:14 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:message-id:date:from:subject:to:cc:mime-version;
	 s=PPS06212021; bh=Q+l7xH+k61neVWSD5eWrFKq//zd5O8YahaO4IDqJmSg=; b=
	X7mjwEQKoZXA7awpbxeUMURlVqNsvCbR/r/+pgUuMmaoeMLmgfHKHLE37vUt+/rO
	DdMICduJOH90EyN5HwUCEx04CbbKVrOMKI6HdBZL7aqrgy9LSHsKf81tjRiU0yne
	lbFghs4ZPz4JIvNx9whsHLQbBMA5N4Q5xLhAIge6CGQNMMr8/RNFmeh+w5k+yRGM
	Hb+dPc04wMkqFcaoUZwmA0x8vVW5y8lQqy34TNC+WzpDXeNiAP6nca3uPKE4rRxI
	eyIxNZhypnVBBBcGHhOLDXKYBeIHef3P8qUhEnJ1GI41oQPyZ6eN+9T18eLmE/w9
	G5rKsQCRGTljHNlTs/y2Zg==
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2109.outbound.protection.outlook.com [104.47.70.109])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3sn20e22c8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 24 Aug 2023 08:32:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WQjRs/erspozetbRZx0WV8sku+9qJTrYJPE07csfQhg+scQ/G4IBoor0bWL4Gtamg2FTfRQWEta5otbiwfhuZzsCFpeG9zA0CljHGDaMqnghaJyK+JprwNpXOFNK3uKH/U5CnCRj1EDPi1Pha/jaXbRuGnHihvq4Xx5ZW7tvNNr74Vaqo2RdtShwXStk8/SAd1SUdXjoyBPSD4t6swmwzCUBZNSBL4oR5JwJfmlVm+/rfOM6qgBD5itCoMxNqJCzqG6GsOtLMxgoCPh9e4wruCRy9clWb6qxXGLIynFoOqiqhtwfH07cDpOYaqlrvzh2vJ43vFYPsrIDQxeh/bXcAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q+l7xH+k61neVWSD5eWrFKq//zd5O8YahaO4IDqJmSg=;
 b=NiwGxPwGXqjVaccfy6XFl40q4bUsg5VmehGGEamQtSLKmAb1b+IlvtTvnTEK/HOKb6FqMUdJY093ws/03T0vUoxYspCvekVR6iCBV7hWCl/Uy9zwR+GkaQZIf3nuOA3IILUzXpCy3iibde+dMZPZf6NkTydcDE0Qknlk+ln5NXM1AMW+Z3DffumiPxGfrB7HnMa5qzdFFjI0YFiPkE321ECAH2e3NfCm14BHw3tMLIXUNIC85cumGWzms63/6VZEonAhDBi7lMLdtF3H9uLhTZ5WuWVVW2BztnyFyRy4Vb9ER1+8WKoNlkSUcbnXamBUWWSc5EDe15Swj6VUTqTJzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 PH8PR11MB7071.namprd11.prod.outlook.com (2603:10b6:510:215::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6699.25; Thu, 24 Aug 2023 15:32:09 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::4044:65c4:486f:538b]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::4044:65c4:486f:538b%4]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 15:32:08 +0000
Content-Type: multipart/alternative;
 boundary="------------x08HRGZYhQXNgXAHykmfY06n"
Message-ID: <6647fc74-fc88-7246-2bb3-08d7004490b8@windriver.com>
Date: Thu, 24 Aug 2023 11:32:05 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 24/08/2023
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: alexandre.belloni@bootlin.com, Bruce Ashfield <bruce.ashfield@gmail.com>,
        daiane.angolini@foundries.io,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        luca.ceresoli@bootlin.com, Randy MacLeod <randy.macleod@windriver.com>,
        Richard Purdie <richard.purdie@linuxfoundation.org>,
        Khem Raj <raj.khem@gmail.com>, ross@burtonini.com,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Steve Sakoman <steve@sakoman.com>, tim.orling@konsulko.com,
        sakib.sajal@windriver.com, akuster808 <akuster808@gmail.com>,
        valery.chernous@gmail.com, tgamblin@baylibre.com, pavel@zhukoff.net,
        antonio.oliveira@konsulko.com
Content-Language: en-US
X-ClientProxiedBy: BL0PR1501CA0023.namprd15.prod.outlook.com
 (2603:10b6:207:17::36) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|PH8PR11MB7071:EE_
X-MS-Office365-Filtering-Correlation-Id: 1ff5aad0-6d76-4510-5e3b-08dba4b74759
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	AIrimmmVvof2motvEUK6tHA/OOwl1vd6tylT+Vs21HsGfWHxAe1xnhA9IymSoDQM2T6LrhrHRkeqcVxpNNjH1MJ1k8n7OGm8MQvBLvPEEcB0zfb72n9msLmzawYRTEdwF2Ha3NfRVkWEpevI2uQvfe1dJNc3UA1eciZdreu19ZyrVzGjLULf7M9WORgZE/ZIYGS/9hq01y1Xw5h/9pvmcFYTN1G3RilqyF8kUEK6LU6oMgOKWD6/hcV1QBYXvGv2gDR8xTwAL8vYJsu6O/bHOpZUQZ7EgnlktXeJ9EVc0bv3CTCTt1b7n+n47yKW6AZZbiOr27z/0eIouB036qtn1QlwCQphtP1IrEhP2mAU3EG1ew6O/AWgA4wQkP0Zd/GdhmWgxIYajoV19CS1NyD+yGplEje0nNlcYa4BqD8ib8HPttCkX+5L2zU9DdLNamSWXOjk7A0ufS5t3un+KdF2HErrL54FLlOs6yIbgYnS3hGUhAZNrzo0mGwr//LFnWfF2L4NQvu4cQ5243br75XfwdmjeYCaR9/DE43+IqXYz1dw/mmS4gqJBS8K7186BCiwonf3ClObYn8WdJdgDMGZUODYnszyQurbIO/yCl/lRbmnQCK78/uG+RX4x4zOvVFP+bdB+/4r6g4xRwF4rpPd5g==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(376002)(39850400004)(346002)(396003)(136003)(1800799009)(186009)(451199024)(6666004)(166002)(33964004)(6486002)(6506007)(6512007)(2616005)(86362001)(31696002)(66556008)(5660300002)(2906002)(44832011)(7416002)(54906003)(4326008)(66946007)(8676002)(6916009)(8936002)(66476007)(41300700001)(36756003)(316002)(38100700002)(966005)(478600001)(31686004)(26005)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UUlZZ0dqK0JQTGlGQUdOdmRja3JRSmVDNG84RDVNSGVMMklTc2ZJRmIyVm0z?=
 =?utf-8?B?OWhXUjFmR1N5MVMxOFhocWlTak9va3RmVmk2aGtnaFliV3FkaU9hZnE2SE5O?=
 =?utf-8?B?eTB2V1VLL2FkbVhmNnNtL1N2N2ErRFNsVk5Rb3hKaW9KcCtSalplTStXaEJ2?=
 =?utf-8?B?ZzdZUEd3bnpiaDVudCtzTUwvbk8yQTJDQWVmY05aNDllNzZ5R3MyTkc4NjNs?=
 =?utf-8?B?dXZUVWREMnRWQWRBQklQd1g2UWl0TkhnbWxBSFd0dkZka21yRnUzL00yNEpO?=
 =?utf-8?B?SzRFbGM5YnBHWHRBODhwVHA0amU0VFphbnRndzBPcm8xRjFCSjZObWhrM0I0?=
 =?utf-8?B?R3d1bUNXSHh6d0hKbWdtODIwRGRqY1VHMmgyRW5uUDA4TSs2bTlTdzhoZTBh?=
 =?utf-8?B?RUdYY1I2NXZUWEkraVFBM21qOHpFZSt5K1JXRXV3cTJQZGdmbUhvbDdVR0pn?=
 =?utf-8?B?a3NuL1dZUm43elZlNGxsOU9KUkQ0K3l0blNObms1K0toNkJuTlNyclVlRTE4?=
 =?utf-8?B?SUEwcDE1Z0d1TTRjZW82MFRIU1FQSXkyajh2eU10Z2NCNkQrVGFlUEJna2xZ?=
 =?utf-8?B?VmVETkJrVEtxbmIvZWp1VlhpbTRvRzZORGNWUjNUL1BpL09hSk90U1oyS0xR?=
 =?utf-8?B?S0VzMzZwMko0U25kbVFjUm9wNTltM0VNK1ptSURpT0ZNRXlnb1RlVDlYS3E5?=
 =?utf-8?B?dyttaDhFUVRvSTMzK01sM0hTMTNjWjVmdm0yK1kvUncybHE4WFhSd1g0Rm9H?=
 =?utf-8?B?emRWZHArY0crTHltaDBHNHNLRWtnZU1LRHZGVjFIZGJya3ZvZWVNOHR4Y2M0?=
 =?utf-8?B?MUNFN2V4UjR1RmhLVlI1MFZuMDYvZG80cnBhYzN0SFltcEVTTG5XdVJlMGJl?=
 =?utf-8?B?a1VRZk41djRTbjBiRWViUkdwNHppQy91ZXJKNndGK0JWZ09PKzNRWDhpQzg5?=
 =?utf-8?B?RldaMGhFdEQrUmRpcVZlbjhobWVzK3BKWGt4Uk1RdzVzcEZuRE5DRlBMRzNP?=
 =?utf-8?B?SGpkNjZTeXdXOGlENXhBcXRNdmpLVTFFQkVQL2N4K1Y2Qm9HNDN0VnRuaXgv?=
 =?utf-8?B?WkZTZElKelpRUTQzY1U1RUNTeHJsb0NxVjlwT1lRc3gyaXluVDdnaHFvYlpx?=
 =?utf-8?B?dHFHZ3BXbVZLM2R6R0VNT04xekM5TjYzcGkwclVXM2k5aG5GTlI0VlBLWXlz?=
 =?utf-8?B?elh2MUhEdC9IZ2hTZTZlVkZ3cmhGRGo2VjlLYTVkR0hXZlUwWGxJc3Vmcm5r?=
 =?utf-8?B?aytsWnVaUE9rK3NVaG85ZllyVE5MN3BtQndkd04yT3RzaFpwdmNSb2lXWUNy?=
 =?utf-8?B?ekp2YnFldWNoVytMdE9OcG9JUUJGb1hNNEswZnBTejZnQklyYTE1R3VrQ0hn?=
 =?utf-8?B?TGxscXdEbkZPQjNkdmlYdnlhbnphUTIzbG12bnFvTDA0V2l3OVl4ZTJtWGtX?=
 =?utf-8?B?SXB2MFB3RzJYQloyQVpOQ1NBalNFSXA1TWxnV290ZEtzMmZka1lVVkJWVGs1?=
 =?utf-8?B?OVFuYlg2WDN5T2t1bEttSkNGd25VRml1Q1V4ME5kUkVCM0lvbmhlUWxpVzZM?=
 =?utf-8?B?TTZmWTd3M3dzaWc3MTdXTGpEM01oV0ZkN2gydVZiekRTVUtMbmlDK3FIRXJj?=
 =?utf-8?B?T3N2ajdTZVloaU9aQ1JFSWZBKzIvbk5wazIraDBlMkE2TFNjMmczbDNyN3FS?=
 =?utf-8?B?bGlkUUUxRUpjWmlYZlViR3dxMlJHL0djYndhTlRUaFNUQjlRanluQ2NEZity?=
 =?utf-8?B?Sjd1MnZ1TzZmbjE3U0pnbENLQ2hVSlBoa0NIT0cxVWsrMGV1MTNpdHo4Wm9Y?=
 =?utf-8?B?alViYnlFbGQ1czltaXNTb2w2L04vWGdZWEdLSGRDZ0NlV3BwUGtrMEhVSU1C?=
 =?utf-8?B?eUlCSU1Hb1hNNUk4NCt3bW1ueUxmekNmWHdNMUk3czJuQXZGYTRzbHAraktt?=
 =?utf-8?B?clVVZ0p4cHBrTDFxaGlITE0rSmlkdUZBQWh3NFQzb2Z5bXMwcS9RQ2FXUEc2?=
 =?utf-8?B?RzhBZ1BUMUtZY2NHMUE3VGZPTjRuYU5JaXJhdllZYWxGQmdPM1ZabjFvNjhX?=
 =?utf-8?B?bVBjRi83M2Y2d2c2MXB4aHFoZjZwQldrS1FlOGl3RGZrU0pTUHp6V09PbmVO?=
 =?utf-8?B?MTNLbHBaRVBXMTJ1T3QzODR0THNubG41MTZwMEFObUFJSGw2Nmo4b0Vtdk5O?=
 =?utf-8?B?Y2c9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ff5aad0-6d76-4510-5e3b-08dba4b74759
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2023 15:32:08.7815
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HjgvDS1pk8Jdjw/g/Df4N5Bq7ctQNYKlp/h0+11vLqPRR3XCFYOo7nPIbPdgIGdwGCG+CPGwVwS12J1N2XQ+QoHRQsiePzGRsPHe/MuZjNw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7071
X-Proofpoint-GUID: Xyqyu8ugCCkQo6hhaVaiOummLk6MA0jx
X-Proofpoint-ORIG-GUID: Xyqyu8ugCCkQo6hhaVaiOummLk6MA0jx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-24_12,2023-08-24_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 clxscore=1015
 impostorscore=0 spamscore=0 malwarescore=0 mlxscore=0 suspectscore=0
 priorityscore=1501 adultscore=0 lowpriorityscore=0 bulkscore=0
 mlxlogscore=826 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2308240131
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Aug 2023 15:32:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60881

--------------x08HRGZYhQXNgXAHykmfY06n
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Richard Purdie, Steve Sakoman, Stephen Jolley, Bruce 
Ashfield, Tim Orling, Joshua Watt, Ross Burton, Randy Macleod, Trevor 
Gamblin, Alexandre Belloni, Michael Opdenacker, Antonio, Yoann Congal, 
Pavel Zhukov, Edi Feschiyan

*ARs:**
*

*Notes:
*
*
*

*Medium+ 4.3 Unassigned Enhancements/Bugs: *65 (Last week 65)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *42**(Last week 42)

*AB Bugs: *76 (Last week 75)
--------------x08HRGZYhQXNgXAHykmfY06n
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Richard Purdie, Steve Sakoman, Stephen
        Jolley, Bruce Ashfield, Tim Orling, Joshua Watt, Ross Burton,
        Randy Macleod, Trevor Gamblin, Alexandre Belloni, Michael
        Opdenacker, Antonio, Yoann Congal, Pavel Zhukov, Edi Feschiyan</p>
      <p><b>ARs:</b><b><br>
        </b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes: <br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode"><b><br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.3 Unassigned Enhancements/Bugs: </b>65 (Last week
        65) </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>42<b> </b>(Last
      week 42)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <b>AB Bugs: </b>76 (Last week 75)
  </body>
</html>

--------------x08HRGZYhQXNgXAHykmfY06n--

