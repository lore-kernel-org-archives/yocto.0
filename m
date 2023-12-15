Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D329C4167B
	for <webhook@archiver.kernel.org>; Fri, 15 Dec 2023 18:37:26 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.72158.1702665445857803332
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Dec 2023 10:37:25 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@windriver.com header.s=PPS06212021 header.b=SgLRT7ME;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=0713847ec4=randy.macleod@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BFBvqDH025632;
	Fri, 15 Dec 2023 10:37:18 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:message-id:date:to:cc:from:subject:mime-version;
	 s=PPS06212021; bh=g22TbiErqzTdFPXM5JFtDR033SoR5bsvxcEKodQGjGo=; b=
	SgLRT7MEKP9rFbgak6iMMPmwJfcPjY7qhi32ow5IOumbHmkCfidipW0IqOmbhkNQ
	2nDRfkSB5waDqrVRKvggEHXZwVkOMWOAh21cfa5PnM4fFNRAOnBr/oazwC6bQLcT
	D4DLtzy4zRgoofR+fE/GxcLgl29pp3q3m4bbgisj78omvmKzWLryQWjs64bKhvRJ
	HheJWJch6DXU5bdaZHEaIdDHzlDAkqL90ignaukGA9Q9b/H/11G38S4jdEeppwn3
	2jmLkzlcVxoNmi4lpxRp8nlzJ+S846se1Fkr/1fL1ZWSkEpwZLuoKRrwDi4A//Xo
	9Nl527hShcJUiBqv3WhYvQ==
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2100.outbound.protection.outlook.com [104.47.55.100])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3uyr7dhyhf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 15 Dec 2023 10:37:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cXP3+1fRTHHK2e43YOwyMd2T3vrk1B6EzAPdceWF6FvvkZnENtG78fMB9hxh7Gd84SqW6aANlLnDMWjYk5gxrUxyX5DTPx1tJcsD00dFPS6MHrd/VI/Yg/DFnvsL35er/X4bZAM/lu0J4blbj4XZJZ8txZbFWwvGjo093XX64laU7/D48OCB/3rw38M0p88glW6e7Z8YdLzYnYA7b0CYYNuzcsI7SZQDyyYr7CP+6mPzu+Ds2BJNdsBw9YGekUDiaxqP6VXPPQh2UbQOkh1pRuYxs9LoYZtvULgqeyr7yQtlM2F5HBWaoj2EXvw3NmYD01P/Unx8VXe49ghUEks5og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g22TbiErqzTdFPXM5JFtDR033SoR5bsvxcEKodQGjGo=;
 b=TCzpqK8WA9GRDWliGsblJnnZNIq0yTaeTwGFizh8FKl1RBJlBZWTHviS2LzuSBLcWiwwTkGXLnQxQGhfN3ARGJB5Byn+lUEUkR3HTwmF9HJZqzULq5KzhlsLAV+6fcTK+N6ZdqWj1bB1Tx5bTBR3O+1F8ET6d3fTA/zFgQ4xJUI8MRn/xKSSoxS/ZXsvm2guFyd4DrvOiDWQfkxwpeREHeEd35HuchhtqGo8BdBII3/EHFAHNChghSugLCKdCar0qF/WK9qDFeOZ5oMFKJ4xHA1PWtDeJLdN+Hvm3b7mu0wez6ZUzoEqN7dfcwoz5EDZ/TIWbdHV/xo2rQc7xc2C1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by SA3PR11MB7582.namprd11.prod.outlook.com (2603:10b6:806:31e::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.28; Fri, 15 Dec
 2023 18:37:14 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::b0b6:b188:9e9a:2c2a]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::b0b6:b188:9e9a:2c2a%5]) with mapi id 15.20.7091.028; Fri, 15 Dec 2023
 18:37:14 +0000
Content-Type: multipart/alternative;
 boundary="------------6spboSSqzLLUuZ0OUOgcvU9b"
Message-ID: <0497d6dc-0b68-4c2f-a340-8792c3c1d347@windriver.com>
Date: Fri, 15 Dec 2023 13:37:11 -0500
User-Agent: Mozilla Thunderbird
To: yocto@lists.yoctoproject.org, jiahongxujia@163.com
Content-Language: en-CA
Cc: Tim Orling <tim.orling@konsulko.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Subject: [meta-tensorflow] Layer should not contain a directory with another
 layer.
X-ClientProxiedBy: BY3PR05CA0025.namprd05.prod.outlook.com
 (2603:10b6:a03:254::30) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3994:EE_|SA3PR11MB7582:EE_
X-MS-Office365-Filtering-Correlation-Id: 63fe30e7-b50d-49a5-a536-08dbfd9cdb4c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	sVleZFOQlKfVP3KwiBgBxYDLIPGA43HnUvqNPI+og7ZDD8PlbkpAss3hpv7yvibqY9MgXNiNaXFUojrmpTAA9jK3ovMN1utVGNg9ntehok6aB5MS07HW2ehrNgN78C48FND+OwrtJKA506Wp+AaK4llOweQ9RFar3ddGk9BWs6/tQ3CaK1TkfLQEsxOOSIvWsKAo5MGek3Lzc0vnD5iCqTXqWVdpdeWOEJ2BS9P/x0n6wChGTXiQVVPeOBPHFCjwDrZ5TAss0kqAHnkVpBLTNVqsBC0XgSRSc+4SmQ2uG4c98Kf/9NkO2PVeGJIQKteETErr0M8Unqa8ug95xZWDu8/+ujoX9Xn/ni1eS+QkZc8Kv4pWEBgEFzhJ25fAn6uPaYBZyRBoCWQs4pTS5s/6wEn+srOObfvaEGGPklzKqE1oAVdQlUr/+Amrlx6RX8Lx8p8DD5eMZ/y7F77aT6fYRKUA7hFmO/vR/yBXmn/KbgFV9DBwVSivbg/mR5LvobHwE0MDMG2lGUT2Aqdf3yKwj1I8bcxZGYq/FshxFeAyA2JrrsetjDDOttbeP4bRFQEMD7NJ3yzhpq8+PkVakBgrenRh77+W1fgbL9Zj88yIXEY3tNzDn7mdkMt6X9vzeldUynkWsBaJ0ROuCbl7WS+8/A==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39850400004)(136003)(366004)(376002)(346002)(396003)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(33964004)(5660300002)(6512007)(478600001)(2906002)(6666004)(6486002)(83380400001)(2616005)(26005)(66556008)(66476007)(316002)(66946007)(8676002)(8936002)(4326008)(31686004)(6506007)(86362001)(36756003)(31696002)(38100700002)(41300700001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Q29nbWxlWmdPNVlnMGVybzNScmk5b3Bqb2pDK1JORzQzdTZubm9DdnI0bGNG?=
 =?utf-8?B?QmNqaW5FaGNIQlpIeC9FcVVmQ09aZWIvZk14NWdWeFRnWHE5TEpVTnFkNExB?=
 =?utf-8?B?QmRqSXRiMHpZb21tNUtVTld6ejBCMWdlRXUvY1R4SUtmNWZSVENmT3FINDZI?=
 =?utf-8?B?dmhJRmJndXhMVUVlQjJIOUZ0ZjJBVC9UWWhNSWJoS1RwaDgvckp2STArVFBX?=
 =?utf-8?B?dE1xMXkzcWRObUZiWDhCQVF6V0xVRTI4dkFhcnRqdnhOako1WVZpRE14LzBL?=
 =?utf-8?B?SFpiRXB6dGpMeDVxdHpOT01USTYzcW8rcm9KRGxkcGxLSTBhZXRadmRKMmRD?=
 =?utf-8?B?REZzMFBDR3F4QzFUdW5FVU5Lb1pGT2p4bmhhZ25ucmpGTnVkMWNwR01pTHI4?=
 =?utf-8?B?WUdaeCtzdmd2UlFCMm53YlprQ2V5L3gzaWFRcEtjbGdiTHdQbHY5L3o5bmJh?=
 =?utf-8?B?QjROazkza3FHK3k1eTdUdEZnTUd5VDh6cHpTaHBTTUEwOFVibWZHTWx4WGN5?=
 =?utf-8?B?ODJjbG1lYTFYeXUrZGNGOE14bmxyUU85bHJySnpjSVppQnJaWmR4VW1RZzFk?=
 =?utf-8?B?VXNRS1R6QnlmU1VYb2s3dnBIOWYxaUlPdlFuTHpQOFNDc0E1VkVwaXg5Y0VI?=
 =?utf-8?B?SS8rQ1BEaHA2a2VvQ2VvcURqU3NvUi9lWDVWeitwQWpLa1UvT0pwRVlHYnlw?=
 =?utf-8?B?SlJwVzdEZDR1KzhBMXQyQmdQK2hzcXFqYVhENHB1aXZ4MnJ5aUQvRnkrT1Bm?=
 =?utf-8?B?bUdRaS9JUm13aTlzR2xSZlUxcmhDdGpmQWZQWXBvbWtVazBKSzFpTURUMk1j?=
 =?utf-8?B?UTF3Z1E1OW1jbTRPeUZacWova0RiVjdCd3gycVZ3V2FCZ2pPVkpWTlg1NEtR?=
 =?utf-8?B?S2Nta2E0MmFzNnVVRUY3N2VOL3I1RFpWUHh0cmF6N0E0R3B2NXR3RmNzbDlX?=
 =?utf-8?B?Tk5wZXhNSmIvU201aDFlUnlkdGhHNTZHSzBZeTRlRyswV3VPSnFrdHhjTFp2?=
 =?utf-8?B?UVJVZW12dytQUXJlWjZnK2J3N0NjS0g1Skg4OXcxTkkyYThxV2FnMDVqZzJF?=
 =?utf-8?B?RWQ2eXpwOW9JNzZpNFVrUGNGaHYzd2wwTWpXclgzMTdoYkgrRWlKUjhVL0VQ?=
 =?utf-8?B?RHFmOTlPRmpZTUlmMVlTNVNXWGlLNEpIdmVhL2g5WjRGYUtMOXQxODhOaDJj?=
 =?utf-8?B?cW5UWFpDVmlENjRpWDlENjVWRjY2TVRZR1B2VUxPa0xoUHBBM0J1R21PWmpr?=
 =?utf-8?B?dTBrYlZpVGRjMnVlcm9WZmJtRDg0L20yeHpneEgvOWdSWTdvTTVyckdPUERJ?=
 =?utf-8?B?TWxLTnFmelNRUEw1UHFWOXhpZmFkNUx4M2lieFVTLy93ZThGYXZZdkMyN3c3?=
 =?utf-8?B?THZWMlpiK0FJWXlDKzZBWGVqemt5TDRYQnlqZnlldXp0UEJ2dS9XUjJwTkhD?=
 =?utf-8?B?M1dySkptblRBNGhJbWIzMTNXYWNzanpFRDN6SVZKYWpRNlJBZzVIb0xiWUZw?=
 =?utf-8?B?MEpXNTV1aVMvUkFIRFhMQTBFeU5oT3YzVlRCRWtiN0RSY0wwd1RDcjVLdm5O?=
 =?utf-8?B?NUNMWEV2dlRFNDNNUmZWNUx2SnZkWGRtSU9xZWhVUWFnNm5hYlZTbkJPNjRY?=
 =?utf-8?B?aFg4ZzRpZnM3Z3FVS1h5NEJ5cC9xZmJJTVE1dnIrZUJGc2lNYjA0by9BWXpm?=
 =?utf-8?B?RktaczJseFlwb3UyTTNDUS96N0NPMHY4Q2RxY2Y5UTlCcml6UnpsalAza1l3?=
 =?utf-8?B?TVJNWWovQjYreE1PS2ttamd1eGxrNUdVNGszS3VqRXlUMGRiSHBkQUZkM3FR?=
 =?utf-8?B?WU5WQkFpM01uTlNiMzhHMGxPREExa2xmZFc4cXYzbUZwZ2dGY29PS1hxcDVp?=
 =?utf-8?B?cEhFRSt0NVdKaERZYlNkd3JJTDlRTml1WlVha2VSanB4WEV2eFlLQ3N5QjJv?=
 =?utf-8?B?dVBmY2xiK3RqeFRyMDFzZmI3Qy80aDZibkxLdVluRTAzWGhHWDlKcityNDlK?=
 =?utf-8?B?U1NwK3BXbUJHb3BPa2czZEtqTnhUZWR4OHM0bERTblJGdFhrT3pBb2Mzc2Jj?=
 =?utf-8?B?NmhjLzJSclFiY3dhUmJxdkdZWkEzN0xqSFhVaGRYcXErZU10cWVGTnExZi9x?=
 =?utf-8?B?aFI5YVJrZXhDY2J6S3QveG1QeWdBZC9VbUVBSlB1MU54dktaN00xa0JveDI5?=
 =?utf-8?B?OEE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63fe30e7-b50d-49a5-a536-08dbfd9cdb4c
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2023 18:37:14.0380
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tTZsYgfJwsnDPFbZeZ1IhdkmtHLTaDnEZDJ5SryY7TU5qvc4P47R8eUibK8nf3paBkluq0HKR8PDsCbeuGdsXBfCNVjr8cBPV7tQtuvkzxE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7582
X-Proofpoint-ORIG-GUID: 7FvmDzyEBNzdsAfg0kmWwOM8jKGx15t3
X-Proofpoint-GUID: 7FvmDzyEBNzdsAfg0kmWwOM8jKGx15t3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=652
 impostorscore=0 adultscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0
 clxscore=1015 priorityscore=1501 mlxscore=0 bulkscore=0 malwarescore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311290000 definitions=main-2312150130
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 18:37:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61918

--------------6spboSSqzLLUuZ0OUOgcvU9b
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 3BFBvqDH025632

Hongxu,

Tim Orling was pointing out that we had the -dl line that I just sent a=20
fix for in meta-tensorflow.

He was also asking about the meta-demo layer without the meta-tensorflow=20
layer.
I suspect that the layer index code can't and should be asked to handle=20
that arrangement.

Nested layers are not allow.

Can you:

1. move all but the meta-demo dir into a new meta-tf directory
 =C2=A0=C2=A0=C2=A0 to parallel meta-openembedded containing meta-oe

or
 =C2=A0=C2=A0=C2=A0 just remove meta-demo?

2. update the README appropriately

3. Notify people that this change has happened.

4. Fix up released branches as needed.

5. Fix the yp list address: yocto@yoctoproject.org=C2=A0 ->=20
yocto@lists.yoctoproject.org

=E2=9D=AF rg "yocto@yocto"
MAINTAINERS.md
17:list: yocto@yoctoproject.org"
23:git send-email -1 -M --to yocto@yoctoproject.org=20
--subject-prefix=3Dmeta-tensorflow][PATCH

Thanks,

--=20

# Randy MacLeod
# Wind River Linux

--------------6spboSSqzLLUuZ0OUOgcvU9b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 3BFBvqDH025632

<!DOCTYPE html><html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <p>Hongxu,</p>
    <p>Tim Orling was pointing out that we had the -dl line that I just
      sent a fix for in meta-tensorflow.</p>
    <p>He was also asking about the meta-demo layer without the
      meta-tensorflow layer.<br>
      I suspect that the layer index code can't and should be asked to
      handle that arrangement.</p>
    <p>Nested layers are not allow.</p>
    <p>Can you:</p>
    <p>1. move all but the meta-demo dir into a new meta-tf directory <br=
>
      &nbsp;&nbsp;&nbsp; to parallel meta-openembedded containing meta-oe=
 </p>
    <p>or <br>
      &nbsp;&nbsp;&nbsp; just remove meta-demo?<br>
      <br>
      2. update the README appropriately<br>
      <br>
      3. Notify people that this change has happened.<br>
    </p>
    <p>4. Fix up released branches as needed.</p>
    <p>5. Fix the yp list address: <a class=3D"moz-txt-link-abbreviated" =
href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>&nbsp; -=
&gt;
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto@lists.yo=
ctoproject.org">yocto@lists.yoctoproject.org</a></p>
    <p>=E2=9D=AF rg &quot;yocto@yocto&quot;<br>
      MAINTAINERS.md<br>
      17:list: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto=
@yoctoproject.org">yocto@yoctoproject.org</a>&quot;<br>
      23:git send-email -1 -M --to <a class=3D"moz-txt-link-abbreviated" =
href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>&nbsp;
      --subject-prefix=3Dmeta-tensorflow][PATCH<br>
      <br>
    </p>
    <p>Thanks,<br>
    </p>
    <p>-- </p>
    <pre class=3D"moz-signature" cols=3D"72"># Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------6spboSSqzLLUuZ0OUOgcvU9b--

