Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E509AC433EF
	for <webhook@archiver.kernel.org>; Fri, 28 Jan 2022 17:11:47 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web08.1202.1643389905844947912
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Jan 2022 09:11:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=YitDesdX;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=9027d8ef58=randy.macleod@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 20SFuU3N031836;
	Fri, 28 Jan 2022 17:11:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : subject : from : to : references : in-reply-to :
 mime-version; s=PPS06212021;
 bh=HBA58OB3cgbEnszSBLxczENygSrSGH65uKH3mnREpgU=;
 b=YitDesdXVI3TfMBvRLPa5JRBzZ90dKqQlI3ykulqJlVXz/SEkJpWJPUvFBTpprIE9oy4
 zsjwck5VfBrJ/16fPeCkAyEc2EBfC0qYCqwvFIMbuRSHyPOLEAjFW9YZ3X8mo5l+yB1d
 a3coH5CWgswh5wr6v8YGRTArM2rUjVgeLGUGBrOU6KIlCHNP0X//CIDk+x2OUImUpYI8
 a2OgJZv6QSFTVstuWub6L4ml0qPmUxo0U5AL3dQ6iN00RvA1kVm1E++IYjfHy9uJTrOf
 7142QhTZ6uDYOOTpHVtismp7EGQQfSuQiM2+Sd82O8dQ3WEhcxIF1SAK/9kAcGlXw6Pf NA==
Received: from nam02-dm3-obe.outbound.protection.outlook.com
 (mail-dm3nam07lp2049.outbound.protection.outlook.com [104.47.56.49])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3du71d1vca-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Jan 2022 17:11:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n+MZ6kWEnOfDDpho0CpJ45955/Z3wa/IHAoYAJ+wWLXCKovDEAUGbSBoSbPZwnLXhUiSmcMN0hE7qKlLAAuRRlzWwXIzzK15lK4NsuNTo3Oq3zfDim3JxWZli4ceeN9tziwlxK2b7f6FvqxeC1sXB25L+RR4jMcrYGWqSFe5fhDlPTwhxLT0kqLg1tTwMSftJBFfwy6/c0YMJRwkLtgehTd+B/sUWthhI3G1zVWM3ybOQEkSPoepFRZOcO2GeBNxpvvpCl7Eg4dQ5PWxDFlkIPZ2TeCZCcuLIteK1NfwqRB80MfvEDvs6McK893iszgBUrUxK21QNGngUV1btDh3Tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HBA58OB3cgbEnszSBLxczENygSrSGH65uKH3mnREpgU=;
 b=eRVZdONVtepzQW7wW4Y9bxVaBa5PdhAHIzf3jqGZE4MsxGC8XUwmJ3DNbWAaJaMXDMN1FD4qD4W7e0bS+XX49bPJpOdOfNLbT6INsQ0WFOUibBVccBx5EukwL9E9f+CWWIHBI4ttCQzU9kidvvpIY7sMiC1Vw7MIowYUpJwrBslHzWb09mr7sDfdkKY7ase6o5Jt9vaMO1QKKWtJZTfWr84iIGvvw184zS92NHIH9H74SZGhFh5wfLUU1nZI/MyNT6jruwZ6LGm/lPQhGHSsP48758Ip/jQlTB4fCIuoRFXK2ob/FhxQOwUBPTP/rbk4e9MAFCQq3XMAhRcnUdk/Sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB4363.namprd11.prod.outlook.com (2603:10b6:5:14f::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.15; Fri, 28 Jan
 2022 17:11:42 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::f4ad:a867:7f2:8958]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::f4ad:a867:7f2:8958%6]) with mapi id 15.20.4930.015; Fri, 28 Jan 2022
 17:11:41 +0000
Content-Type: multipart/alternative;
 boundary="------------XvUrByBcJ4d0PY1jYurvYmDX"
Message-ID: <6d78afe5-d693-3d30-e40e-ccd1e73a1bad@windriver.com>
Date: Fri, 28 Jan 2022 12:11:38 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [yocto] Custom SDK generation from YoctoSDK #sdk
Content-Language: en-CA
From: Randy MacLeod <randy.macleod@windriver.com>
To: Praveen <praveen44com@gmail.com>, yocto@lists.yoctoproject.org
References: <stmw.1643047465432853711.lKwh@lists.yoctoproject.org>
 <16CE7DE3D809A942.26313@lists.yoctoproject.org>
In-Reply-To: <16CE7DE3D809A942.26313@lists.yoctoproject.org>
X-ClientProxiedBy: BYAPR07CA0011.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::24) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: eec9de09-c5c7-4313-563c-08d9e28140eb
X-MS-TrafficTypeDiagnostic: DM6PR11MB4363:EE_
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB4363E995A7A4B34005FC9735F8229@DM6PR11MB4363.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	YBgFzF2/Vk4/d3xryiRmwr26xQlvr+HGBVIWLqeeQ9tHJCWZlvRaPA/76O5QQqEtMgLO1QQaaqNyldPXF+jfMV3IVu81Ta9m2Z5XTqTnYEOZldrvNMWRzAFuy722bn3XcAc02/85X34xyYtTxeu+4VC6Y0UoKlxB3rGviwdJ0+VqOlHez8LYP+Avh9YwJmZkHIewb671ckc486keZNicp5McQbUeJ+ac1IG3eSJEXslE2nnVuICP6c01FvsSA2SLffSpbS7aC96xjyfH4mS6mu3hUH85b0xGWbyCqdLD4Ae05caL2RJFySHmFMCuAePIGdzqK5Dv33tVB3D8BdV5DHJOVQ2VqIE/5L8XgCWNdhBkcSoy17AX7emtXiuYYcyh950EjEla1PGLHullKrJqdiVcPVWVlf9oimSZm+U8cm11IKXlYLSLdVg5qxFJG1OLl7rlvaPbUXrVWFLGStzdSJTA9uF/bOJZ4py3cYyjHvm1iMTrjFJvrBtmIxwSFIeR+JzOqCJqQke0QUEmbmIkqNw5FPLBsgZDZIRbCrkCwRPXCEXL4Ar/GFAXGOaRt57KTEjU8fv8XsDh6ub7ztMhhzSrUFESMSVlolB5bwsl3NJB1O2fDDIy+NoBYQtcEyY84rjR5yiXa8rHSPyQmxodmIpjhHhNg9vCpT+DEgtObp0QNC0cAD6WeNSHe4rkOvg76Z1V+jLtStMIkXMJETEFqXa1laUHpZMRj4cUFl/HiF+bLrPkUWfAa1gpZXKYl+qOAkb1G6kRG3VjTu1FgUVS2m3dFcRqEBl3e88JeJLqqpXjCq4DuHo+atqqXrxSYEevoB5npXuCNr2XJ5mkjnDtGhylqtyt4DpyKlO0U3xyHzrM7cawHAt2MXhikL1jvnLIWaUzfj59qa6SsEPzFuygD42a5E6+77K6gLZIEveOH+Y=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(31686004)(5660300002)(2616005)(83380400001)(38100700002)(38350700002)(66946007)(316002)(66556008)(36756003)(66476007)(8936002)(8676002)(2906002)(508600001)(6486002)(52116002)(53546011)(86362001)(6512007)(31696002)(966005)(6506007)(33964004)(6666004)(166002)(186003)(26005)(290074003)(45980500001)(43740500002)(20210929001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?S29vNUswT1NFVHBwMk9QZzBrbFJRelhXODRQaEZWaDhZQWMyVFVPL0l1MlBW?=
 =?utf-8?B?TER0cjAweEwzQUR5T0tUSnZqbmFVVDNNSktxSmM2NkNKcWtyNCtjS3A0NEtp?=
 =?utf-8?B?U1hnRnBLWVpTMmYrUE9ERlJXWUFCMEFIMGR2bElna2J4NTBYYnpHSGhsTDk4?=
 =?utf-8?B?OFVWbjE2OTBtMkJoZ1E4R2hlWk0ya0JsWTJZVHpXdHhCc2JrNzAyZnBYUm5q?=
 =?utf-8?B?b0RYQTI4SS9zYUVHS0dsbTZ3RDAxclA4L0dVL2RNTi9vdzZlOTBMVnRXeG5G?=
 =?utf-8?B?anQyamdLbEl3bzJPVkJBUzh4SHZYaTE0VUhFVU5GaHJtbkRvaTNvZkY5RmF0?=
 =?utf-8?B?MHN2eG5KYzJRWFgrcm43UUpBcGcyR2NjcHBNNnNjMTljWXo1UHFVNTl3NVl4?=
 =?utf-8?B?aVRRcFhNbVlBRkZjTHRwekNwK05nN1d6OEJtUVUxUnJMT21abU1nNUlpTXNW?=
 =?utf-8?B?ek5DR0pQcENYTFNYL0xVNXlTMnBwOFh0dEowclVVV1N0cUpTYTdVOGtDVXRI?=
 =?utf-8?B?OHB4bjQ5S0FqWnp2N01PcXB2TWk4K091eXk2TWpxVCttWGRZdlZtOThMRFBo?=
 =?utf-8?B?T05SRDNYc3IxM0k5MDhYaldJTlNLNnJUK29TdXdUMDdYK29XQkVlL1hsdWJF?=
 =?utf-8?B?MVRENU1EVDM0eDFVTEZHY2RpbVllTlRsZjB0U1VBZHNnYlBiUEFrTUJ5UDRp?=
 =?utf-8?B?YVJGVzZoRWMvTTdObmxMS08raWpaYmQ2WVlwVWxpVjlabWx3UGhOU3ZTMGRs?=
 =?utf-8?B?ZTczR0dDWVJ2RnU3aHJnTXVUZnd3Mm9tbHJINEFTNlYzaTFXN1VMYmFBT1Bi?=
 =?utf-8?B?K1VLQjNUZ0NZMzhCZzZyU1liVDR1VVN3VWFza3hQejVla3JHVTZ6OENIOFIz?=
 =?utf-8?B?cXU1UWtJVC90SHFWUGVnQ1lYSUhIdThnbTVocG93dk5VT3FHWEIzQnJoakd2?=
 =?utf-8?B?Wlc2cElwNFgzQWF0NUFidVRRa1o1VW5nZ0JoYnRUSUtydnNuZk53RHlHTXpS?=
 =?utf-8?B?QXU5cXgzRFBMUXloSTV6N01tK0tqRDRGR0ppM2FjeCtKSUl1bS9oUFprNjZJ?=
 =?utf-8?B?MFlJdG8vazBEQjJROU1YZlRWUE9wRks0WUIzamZrdFlWTm5ma3dXVUE0Q1ZS?=
 =?utf-8?B?bjhaRnV4aThWWE01RmdOZG04aTBqZ09QTFpMbDJoOEE2YnZUNWUxZUtYUkRL?=
 =?utf-8?B?QXQwajNTdDh0TlYvRk0zSWtuSEFhSm4wVzlRNDlrWTd1eUI2b0xhQTF2c0Vx?=
 =?utf-8?B?ZmhSRTBCMmlBbTNoWXU5NGI2d0plazRHRldMd0xXMnBJd1JtUkQ5Z1hUMFJz?=
 =?utf-8?B?NHVwcnA0a3BUVkt0aDhlT1g3N0FabnJDTCtuU1l2QmxHSy9yNGFtR21hRFFJ?=
 =?utf-8?B?dmxZSTN0c1R1UUdrTHN0aTd4Y2FqRjY1T3JjV3VPMW9YcVg5bFlUT0x2bCtV?=
 =?utf-8?B?MmEyaGk1RVRocUdUc0w0WjJ6TTlnUVhYNVlueUdPYXlQbVVKdkEwbGZubVBY?=
 =?utf-8?B?aTFUcjgxNTd5SnpVTkhqR0tUdERGZTdEeldLVkc1UFNZaUlqYVFUK29rdXJN?=
 =?utf-8?B?eXlDZWtKeEsrNnJRVWVreldoRWZQckk0L2lXYUtWWlZMZFNuaFYxTmU3NDFE?=
 =?utf-8?B?SEJBYVFJSEp4MElZWk9teDBST09mTWppY2RKeTk5aHN1QkFmZ0VqSlJxNm5i?=
 =?utf-8?B?dmkrdk5HWU1hMDU3SDhWTzlLaEhpVCticUVzdzUvZjE3TGx5emhWUC8xdVF4?=
 =?utf-8?B?dHlBRnc4Qk1GTHl0anJ5Z3hwZjBMSmR4WkE3UTA2ekFQcUJJbFdJbnB4QlRs?=
 =?utf-8?B?Z3lCdzRteHJwVHh6MkxCWHBxbkI2VVAxNS9DR2FROGkyVUZmZms2YURDQ1Jq?=
 =?utf-8?B?Y0szQWs3anJHRFJjQVRvVlVyUmdUSndjQTlJMG9adlBMdTVBUHRBSVp0eUVF?=
 =?utf-8?B?eFlzRnRMSzBjZTEydVBjWE1jSWRJbDdNYXR0dlNLTlBnbGRFQ1ErVDhyQkp5?=
 =?utf-8?B?WG9hYTRzbURvaW9QaUVrZ2N3T0M4NkRKdXJYb0kzMEtaZytvYnQ1MFEzWDAx?=
 =?utf-8?B?dVc3TWtJVkVvRFl0KyswaXorSGJ2U05SYmY3eUEvNnZBU1cyc0drLysrcTVQ?=
 =?utf-8?B?N0N6c3FERWxLWDEyM0tmTGFJaEtYVGRWQ09TUUs5LzBQZm9GZnZhSyswOG5j?=
 =?utf-8?B?dGY0S0dhaWx5L2pDSUwrUFJqa2lnckMvY1RKQk9FVkl0aUcvS2RKeURlc00x?=
 =?utf-8?Q?vGJ6cweYl5bovrjxqPo0fNJz53KSkIdFosRcvscQOs=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 eec9de09-c5c7-4313-563c-08d9e28140eb
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2022 17:11:41.9021
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 ZAsVsILVZj2rOupWqidSjtl1P9d3Z/noVuy7KmttE4nz4dnUDbZLQsi6/k9kxafLSqz6wMcJvUPsVwPYHB0fFp1IrW6AWTimQNH9uOzH+TM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4363
X-Proofpoint-ORIG-GUID: qqh-PkY-mxTtMDywFfo-nx3919MxEppi
X-Proofpoint-GUID: qqh-PkY-mxTtMDywFfo-nx3919MxEppi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-01-28_05,2022-01-28_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 mlxlogscore=822 mlxscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2201110000
 definitions=main-2201280105
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Jan 2022 17:11:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56012

--------------XvUrByBcJ4d0PY1jYurvYmDX
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2022-01-28 12:02, Randy MacLeod wrote:
> On 2022-01-24 13:04, Praveen wrote:
>> I am looking for Custom SDK with filtered Header files/libraries 
>> based on some rules/approvals. It means not all files from YoctoSDK 
>> will be packaged in the CustomSDK.
>> What is the mechanism or approach where we can pull only those 
>> approved header files & libraries from YoctoSDK and package as 
>> Customized SDK tar?
>> Is there a way we can fetch those approved header files from YOCTO 
>> SDK and filter it?
>>
>> I am thinking like creating subset versioned module recipe and 
>> specify those approved header files and package only those files. Is 
>> there any better mechanism on packaging or filtering the SDK based on 
>> some rules to filter some header files?
>>
>> Like for example in YoctoSDK, we have 2 modules
>> moduleA (A1.h, A2.h,A3.h and libA.so 
>> <https://urldefense.com/v3/__http://libA.so__;!!AjveYdw8EvQ!NJIRn0lCb9eoyJygfXfowA7XvdWxDgtIrC7DDYfcN_EBy5g_VTxv7frpiLP-2nwfTBvYzQ$>), 
>>
>> moduleB (B1.h, B2.h, B3.h and libB.so 
>> <https://urldefense.com/v3/__http://libB.so__;!!AjveYdw8EvQ!NJIRn0lCb9eoyJygfXfowA7XvdWxDgtIrC7DDYfcN_EBy5g_VTxv7frpiLP-2nxZDrg-zw$>)
>> Lets say A3.h & B3.h are not approved in my Custom SDK, then in final 
>> Customer SDK we will only package
>> moduleA (A1.h, A2.h and libA.so 
>> <https://urldefense.com/v3/__http://libA.so__;!!AjveYdw8EvQ!NJIRn0lCb9eoyJygfXfowA7XvdWxDgtIrC7DDYfcN_EBy5g_VTxv7frpiLP-2nwfTBvYzQ$>), 
>> moduleB (B1.h, B2.h, and libB.so 
>> <https://urldefense.com/v3/__http://libB.so__;!!AjveYdw8EvQ!NJIRn0lCb9eoyJygfXfowA7XvdWxDgtIrC7DDYfcN_EBy5g_VTxv7frpiLP-2nxZDrg-zw$>)
>>
>> I want to keep YoctoSDK without any filters, so that A3.h/B3.h can be 
>> used for internal purposes without any issue.
>
> Hi Praveen,
>
> I'm not aware of anyone else doing that.
>
> For libraries/recipes, you could just omit certain packages from the 
> eSDK but you don't seem to want to do that.
>
> What is your goal in filtering headers and libraries rather than say 
> generating two SDKs:
> one that is unrestricted and the other with limited APIs ?
>
That is, can you not package each moduleA as moduleA and moduleA-private 
using Yocto's packaging

mechanism with the *3.h files being in the private packages?

I don't work with the SDK very much so I could be out in left field but
if I am, hopefully someone will reply and straighten us both out!

../Randy


> ../Randy
>
>>
>
> -- 
> # Randy MacLeod
> # Wind River Linux
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56011):https://lists.yoctoproject.org/g/yocto/message/56011
> Mute This Topic:https://lists.yoctoproject.org/mt/88653143/3616765
> Mute #sdk:https://lists.yoctoproject.org/g/yocto/mutehashtag/sdk
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub  [randy.macleod@windriver.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

-- 
# Randy MacLeod
# Wind River Linux

--------------XvUrByBcJ4d0PY1jYurvYmDX
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2022-01-28 12:02, Randy MacLeod
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:16CE7DE3D809A942.26313@lists.yoctoproject.org">
      
      <div class="moz-cite-prefix">On 2022-01-24 13:04, Praveen wrote:<br>
      </div>
      <blockquote type="cite" cite="mid:stmw.1643047465432853711.lKwh@lists.yoctoproject.org">
        <div dir="ltr">
          <div>I am looking for Custom SDK with filtered Header
            files/libraries based on some rules/approvals. It means not
            all files from YoctoSDK will be packaged in the CustomSDK.</div>
        </div>
        <div>&nbsp;</div>
        <div>What is the mechanism or approach where we can pull only
          those approved header files &amp; libraries from YoctoSDK and
          package as Customized SDK tar?</div>
        <div>&nbsp;</div>
        <div>Is there a way we can fetch those approved header files
          from YOCTO SDK and filter it?<br>
          <br>
          I am thinking like creating subset versioned module recipe and
          specify those approved header files and package only those
          files. Is there any better mechanism on packaging or filtering
          the SDK based on some rules to filter some header files?<br>
          <br>
          Like for example in YoctoSDK, we have 2 modules <br>
          moduleA (A1.h, A2.h,A3.h and <a href="https://urldefense.com/v3/__http://libA.so__;!!AjveYdw8EvQ!NJIRn0lCb9eoyJygfXfowA7XvdWxDgtIrC7DDYfcN_EBy5g_VTxv7frpiLP-2nwfTBvYzQ$" moz-do-not-send="true">libA.so</a>), <br>
          moduleB <span style="color: #000000;"><span style="color:
              #888888;">(</span>B1.h, B2.h, B3.h and <a href="https://urldefense.com/v3/__http://libB.so__;!!AjveYdw8EvQ!NJIRn0lCb9eoyJygfXfowA7XvdWxDgtIrC7DDYfcN_EBy5g_VTxv7frpiLP-2nxZDrg-zw$" moz-do-not-send="true">libB.so</a>)</span><br>
          <span style="color: #000000;">Lets say A3.h &amp; B3.h are not
            approved in my Custom SDK, then in final Customer SDK we
            will only package </span><br>
          <span style="color: #000000;">moduleA (A1.h, A2.h and <a href="https://urldefense.com/v3/__http://libA.so__;!!AjveYdw8EvQ!NJIRn0lCb9eoyJygfXfowA7XvdWxDgtIrC7DDYfcN_EBy5g_VTxv7frpiLP-2nwfTBvYzQ$" moz-do-not-send="true">libA.so</a>), moduleB (B1.h, B2.h,
            and <a href="https://urldefense.com/v3/__http://libB.so__;!!AjveYdw8EvQ!NJIRn0lCb9eoyJygfXfowA7XvdWxDgtIrC7DDYfcN_EBy5g_VTxv7frpiLP-2nxZDrg-zw$" moz-do-not-send="true">libB.so</a>)</span><br>
          <span style="color: #888888;"><span style="color: #888888;"><br>
              <span style="color: #000000;">I want to keep YoctoSDK
                without any filters, so that A3.h/B3.h can be used for
                internal purposes without any issue.</span><br>
            </span></span></div>
      </blockquote>
      <p>Hi Praveen,<br>
      </p>
      <p>I'm not aware of anyone else doing that. <br>
      </p>
      <p>For libraries/recipes, you could just omit certain packages
        from the eSDK but you don't seem to want to do that. <br>
      </p>
      <p>What is your goal in filtering headers and libraries rather
        than say generating two SDKs:<br>
        one that is unrestricted and the other with limited APIs ?</p>
    </blockquote>
    That is, can you not package each moduleA as moduleA and
    moduleA-private using Yocto's packaging<br>
    <p>mechanism with the *3.h files being in the private packages?</p>
    <p>I don't work with the SDK very much so I could be out in left
      field but <br>
      if I am, hopefully someone will reply and straighten us both out!</p>
    <p>../Randy<br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite" cite="mid:16CE7DE3D809A942.26313@lists.yoctoproject.org">
      <p>../Randy<br>
      </p>
      <blockquote type="cite" cite="mid:stmw.1643047465432853711.lKwh@lists.yoctoproject.org">
        <br>
        <fieldset class="moz-mime-attachment-header"></fieldset>
      </blockquote>
      <p><br>
      </p>
      <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#56011): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/56011">https://lists.yoctoproject.org/g/yocto/message/56011</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/88653143/3616765">https://lists.yoctoproject.org/mt/88653143/3616765</a>
Mute #sdk:<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/mutehashtag/sdk">https://lists.yoctoproject.org/g/yocto/mutehashtag/sdk</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a class="moz-txt-link-abbreviated" href="mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------XvUrByBcJ4d0PY1jYurvYmDX--

