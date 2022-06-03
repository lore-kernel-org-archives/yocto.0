Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2FFA1C43334
	for <webhook@archiver.kernel.org>; Fri,  3 Jun 2022 12:27:27 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.6596.1654259238280744189
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Jun 2022 05:27:19 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com
 header.s=pps06212021 header.b=eyb1nPL/;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=31535dc3b9=randy.macleod@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 253CHL5W030992;
	Fri, 3 Jun 2022 12:26:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : subject : to : cc : references : from : in-reply-to :
 mime-version; s=PPS06212021;
 bh=VjKlvWykeyPXz/ZkJhQmNfEktZF38iH/VsTxzu27Aec=;
 b=eyb1nPL/4D1hf+Q5K51bPyYHwd8oIZSFpXxMfRCEMtJ4aMtidkCbGv07c49Df5Si4eAc
 Y074xgfXuywzNppHfx4BfkbpMMDjRBFLY3skmfshrKEwUJ7VwzGIKjEyS1gnl5nSHNAb
 GLWvRDn/Yhc83X0N+ab+Gslw+0Ubw6vZ8edZs6cD5RP7DHxuUMTpe5CgDKJl/yqhHUSj
 Fg6myjCQDS8R7fPCZsKA2ZnM6SuCnV7PmC7s1xrWFLIMu/ddBywQGwm+vIG92afTQABv
 FViyvTZXR9/pglZ98kL9b98LntDWujp47XtNobEwkoosVCVA4JP6uAzuTtS2pFXPoRdQ dQ==
Received: from nam11-co1-obe.outbound.protection.outlook.com
 (mail-co1nam11lp2171.outbound.protection.outlook.com [104.47.56.171])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3gbc17cmre-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 03 Jun 2022 12:26:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y5xTCZNeLfVpKD4Rmb+f90oivhW95FjjkEQmcoOWn31i+CZI9Hxqbuhu7+4h237iY/k1mxJVkr816AxDj+1TljsecQ2eWRL/H3hUIXlHDxXLVyteLfOezyohCYW5SYnhAXwvPlK2aCmvil34loctHGLHzDF65di8srSYoKitLdtnaw/h/4+fehgGDCLcT/MxF5wO/8Kh6NlQ/nYMRI/P9zIxz8NU+aAb0M/6sNpZtL+1xndAjfbuNGK91vZrlG6Y3dS3SuZDDCoHsUwjLZaWXmm4s7hUs5OGo5VP+40Qnt/iz4hbZ4rVDpZU84QBZE9GfrmqkbtcdfaZz5OHVeuw4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VjKlvWykeyPXz/ZkJhQmNfEktZF38iH/VsTxzu27Aec=;
 b=oKYPFYmuy0MOKsM70v0JhRZKRO/Xe4biAldBHZ5Kl5bMXjf3RFWEyH0iy6bu35G+tQ6UCrryZ+e1h2nrliCVNQRwZSBTl1LkZ/Rjiz8xPuD3nr1GLId25AWzk3saVVO8HGUfoWWrZ0jwXumiI/dvqq6s+4rz64sKN0jtcwUU8eCnPJG25TtCprjwY/ZRDjTmTJlFlRKCVX7ZAwKLpeu7QKdzQJ0ook2K4wBoW7ui876qobFp4zhBgMyata3FRoATTn7oTBZhK8S+0XRbEM9GWO8G+psMP/ZIhtbs0Qt3Q3oWKxx9AiUsru0h4REECuAlkcpCyxnlxVx+Up1Ekedp8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by PH7PR11MB6377.namprd11.prod.outlook.com (2603:10b6:510:1fb::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.19; Fri, 3 Jun
 2022 12:26:54 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::a996:ba9f:332:de3]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::a996:ba9f:332:de3%7]) with mapi id 15.20.5314.013; Fri, 3 Jun 2022
 12:26:54 +0000
Content-Type: multipart/alternative;
 boundary="------------qwgz53LxiKJE24vS4JYGaxHg"
Message-ID: <56ca1ef7-f4a7-0561-1421-b661fffd6198@windriver.com>
Date: Fri, 3 Jun 2022 08:26:41 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [yocto] Minutes: Yocto Project Weekly Triage Meeting 6/2/2022
Content-Language: en-CA
To: Sakib Sajal <sakib.sajal@windriver.com>,
        Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: alexandre.belloni@bootlin.com, Bruce Ashfield <bruce.ashfield@gmail.com>,
        daiane.angolini@foundries.io,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        luca.ceresoli@bootlin.com, pavel.zhukov@huawei.com,
        Richard Purdie <richard.purdie@linuxfoundation.org>,
        "Wold, Saul" <saul.wold@windriver.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Steve Sakoman <steve@sakoman.com>, tim.orling@konsulko.com,
        akuster808 <akuster808@gmail.com>, ross@burtonini.com,
        michael.opdenacker@bootlin.com, valery.chernous@gmail.com,
        aryaman.gupta@windriver.com
References: <db8baa55-8cd1-446b-f145-a902f2c7e758@windriver.com>
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <db8baa55-8cd1-446b-f145-a902f2c7e758@windriver.com>
X-ClientProxiedBy: SJ0PR03CA0202.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::27) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ab1370be-e760-4a63-b33b-08da455c5810
X-MS-TrafficTypeDiagnostic: PH7PR11MB6377:EE_
X-Microsoft-Antispam-PRVS: 
	<PH7PR11MB63774F1DB0526CDFD1EC4C84F8A19@PH7PR11MB6377.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	FTIhPpmjqRDiskAYL1nQXPwEDzKxSvUAS+s6GXZpdUy03tMkAagZ32z3xfS3XkMg94IWdq12q9vhTUkxOzJ0eNhfS8N5DX0oIFVZEeLQ+tms0958V2LQMsapZc4XeUv2S9usDicjBsuWWum/x7uAa7wCVVTr4XKAItzuc+qEMiyCPJ/cKBSU7RfL9BNSnmEzc12iiCDXDMI4kpa/dRcVhb68dcUZQzF/8p1GnUGdT0QteLkqGM9gjHwL0DdBfaIsrEzxDWp/8ZEFjvtG1BMGKL2TXdZ8dx5LBZs35blxzTNUGXxQVeaZhCwpINAK36tMSK8fgs/0R7El5hyulNakZA7Ev1YzGWWzfZlgmBr5u629SrFJ+jUzeZufT0X8S+4gSxPzg5hy9trSZ6mVTMsFUxf9cYbxgLfKYjL9Wm3GxMygf2ecMJpxJSgcl+eH0C0bMvwVBJ8yHpu94lUj5BW10Zf5vfG08nkOQYWUibU2a5y8+mKadU8//I3oNRqucl+5saOvbWiePirfAmxBU9ebYspdJHYEj381Xq8ZFx8Q3IZ0MRlEvIJAbhcRgeYRuL0nLtPVEoCIfsjRWs+c3IzzNoc1gGkfPVBzqoi6KmOE0dCQu/Fcm3QIVfemv0NqyIFFWBS4F7yLs8588jwmu/jpBEUIUyEoIVgm6RSvkPCVRxcUNrYQbXJeCpSBBHqWsEpGx8xzfGXrjAR4vHYA/ZUhsuCMfAX3oA9Ym5NRdZWcVShmyaGVLV3br4XF84O/SflIPEiU8Yzb27lls1UQjipz3ESvdL1+H102smRfijE68vIsg2TbbRgHyBHB8Vkc4/hfy0sVyQ03tEQL5QAL2DSrI71UyK68JHZ+YZoWvekw9lU=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(86362001)(316002)(6666004)(66476007)(6506007)(8936002)(52116002)(54906003)(26005)(6512007)(6486002)(186003)(508600001)(31696002)(38100700002)(38350700002)(966005)(2616005)(5660300002)(33964004)(66556008)(53546011)(110136005)(8676002)(4326008)(7416002)(107886003)(166002)(36756003)(83380400001)(31686004)(2906002)(66946007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UVIyMjVveDhCRDUwamJmSnRsN3NqU1BNSHJaQzExaUZmczNpSGthNnFUTE5o?=
 =?utf-8?B?UWtvQU9JZTVXb1MrZHMzbVlKb3NXdTlEQ3RMK0x6cDBManNpbzEyTWhQU0Zj?=
 =?utf-8?B?UDZLdE9EOEdVbTFPNUM3N2JGOHRZaGhJQ2g1L2FKOWNyU1haR1RDVHpUNldO?=
 =?utf-8?B?T21MekNOOHVWS29TaUF0OTJDTlo4RXI0ZzNWT2RMOEJoa0JZbS8xck0yL3FQ?=
 =?utf-8?B?TDJ0ZW1udGw2QVN2YlNoaE9GWjdYRGNmS2YwV0ZKYTlud0R3NUFxZUxCTUxs?=
 =?utf-8?B?VDd1NXhMK1NrWkk5eitIYTVSaVVPWFcrQjQxazBVK1VjaFNsNGlZVHp1bWNP?=
 =?utf-8?B?THFEUi9hcW1YeU82WEdkM2dCem1BQ0RoaEJpSmJxVE1uckRrOFFBeURLRXUy?=
 =?utf-8?B?MlEzKzJ4MTdxWS9QKzAyTGhzSTR3RjlUS25jVVUvOG00dVZFaUVIVjdGZHNm?=
 =?utf-8?B?VGkzUnZzSWZuYU1oekZLNll3dW1NYmQzUEVobXBMQWlYRisxYzhVY2tYM01J?=
 =?utf-8?B?K2lSSDhXNm42SEczL09tYjJCMCtVWDNZbVB1a1YrS0xrWG9LczlwNXJ4TWtC?=
 =?utf-8?B?bkdYeGJubVIyYm1ocnphQjFvdW41VU04WXFiQTM2WW1RdVZ1d2ltaTNrZVM3?=
 =?utf-8?B?SCtpYTdhaHBlNGZRUTBtSHhldkxubGhFQ01SSzBWaWlidEtUZ2ZTQndXQThy?=
 =?utf-8?B?OGtLK291ZWowUGdHeG9ScFdEMWE1TCthaGhoQXVVTFh1Y3VCSThSSzRlM2FN?=
 =?utf-8?B?cWpUU3VKSFhVQmFkTFhITys1REpLV2NMYmRIQytmaGpEWWJWcHJEQy9Xdm95?=
 =?utf-8?B?bUhCMWtHR2hoYTVjcmkzZTdsamw3UkJxTkpMVllVL01heWlMMnBOMTdUZ2Rn?=
 =?utf-8?B?TFQrNjJHQ1pVN1hmVkpXYkdZSUlVc3ZhOEhmaSs5VHRReE5sV1puaVFPYWxp?=
 =?utf-8?B?eUQrakNpMkd0cE44eFhKcXEvUU1CdFhTVklSN0ZDb3ZDaEhDRUpjd3RqNktT?=
 =?utf-8?B?WG9DZ0V2cTVUSVovN0UwdXFSMXMyUWlnNTJOQnRWSW1FYTFROXNOa0l6UGFq?=
 =?utf-8?B?dXcrV2FwYi9URE5XOXhQWjhxSDAycHpWbXU2QnAwbWZQblAxQ1lzbHREejVL?=
 =?utf-8?B?V0Z0ckZ3eDhVMm5Jc0dqd0xVaUozc0pQR2RrM2lTT3I5d2YyTENqVUlTZmha?=
 =?utf-8?B?NU1jb3lLeWFYOU9mQnliZFk3TnIvaGZwWUhzRnJEL3ZsODg2VlhnYjlzM0cv?=
 =?utf-8?B?R3l6bHlUVHN4b2JvY2s1c1craE5XbjFWYkFncElJbHFPUFU3Nk1kRjRCMzdP?=
 =?utf-8?B?R0Q1ZE9KTmNnbG1GdDY2ckJBQTFjaXhiSjFLZTVRQzhhUFcySzFsSU1UTjZp?=
 =?utf-8?B?azljc0ZQOUt1S2lLSVc0WmNKeE5wNWFINmNSYmRoTGxVaWFhRjNmYmFEZHJS?=
 =?utf-8?B?QkJsTUJwTWxxd28ramdpbWcvbkJRaUdhY1FNa2JvdlhJbjBZNDd0NGwweVBI?=
 =?utf-8?B?OWk3NUN6anEzNnhOa2NKcEVuRkprcS9lZXk5MHVsWCs0enExdnd1czVTV3JK?=
 =?utf-8?B?bDhtMjJodkVVcHNObHg2OEk0V0hvajQrTHFDVVVQVUR5U3BvQUVTelBwYitK?=
 =?utf-8?B?QXJhS21jTFlYTzUvYTRUT3Jxb1BHbFNzdmI1NUlGMkVXaUtyM2N3SndjQ0pM?=
 =?utf-8?B?SktoYytwK2JsVGFFaG9uTFlXeTFyK3FtRDg4eWFsNWRUMkVCQ204NUNZRWVX?=
 =?utf-8?B?SXkraFVLekVIeS9CVzQ0bjVVN2pjZDA0NVRqOFUrTmFKM0ZJazMwUGtBczU3?=
 =?utf-8?B?RlN6MlRITnJxZzViY0d1ZVpJc0xOL0xQREZTY3Y3NzJpcjJsak5VQXlkdHdX?=
 =?utf-8?B?RmhhUlY1ZDlwMzVaQ1VGNG9VQlJGT1dzZFZSbzUwTkZsK05CaHlIeXNCQ1R4?=
 =?utf-8?B?akkwMGJzbUNldVJQQVZuRHBZZ01lTTBQcFNyOUw1bDlmdXNhY3RzdG1ZMTNt?=
 =?utf-8?B?bW52YkR1Z1pxSEtjUC9rK0g2bVQ1Q0lnUzBycSt6d2FRM2NXZ3NlNXlDY0N4?=
 =?utf-8?B?S0VNai8yKy9PdlhleTl5WFBSWG5sd2grdHMrdjBKQjVrTkQxeHJOZTRNUXhM?=
 =?utf-8?B?WVFIWGdDaEdRVWJFUms3YWJVVDVJckZvcDROSC9PWGl4MURPYUFMV1N5eWs5?=
 =?utf-8?B?WVNTcFo4dGFPVGFxQzJoeVdaSFRORFFYc0pvUzZ6amxaTDJYdVJ3MGg4eWNJ?=
 =?utf-8?B?aEtlVTRQUmlkaHVnOS9teFVpVTd3Vlpwak9oSWh3Zm5yZjVDUkNmQVRqNmxM?=
 =?utf-8?B?NU11R0VRUStKdkdWODNYSEdFSmNOMURydndkTnpOYkdHdnZPazcvVTFyVm1m?=
 =?utf-8?Q?r7dBrTnspp1RKDFHMMbsm8cQ+riQK/Da3s+dE?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 ab1370be-e760-4a63-b33b-08da455c5810
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2022 12:26:54.4862
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 Iz7yMS0XdbgRcP1PirXLjgA+lrFVHJxIRApcOHa7Ljx5waSs+ppWHHFh8upmtTSdmrHgAbQKE/GHR+z8GVX2er9+SdzYJ51JyCMg9QhoKTY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6377
X-Proofpoint-GUID: BrAbHM741FkBSuXypXzcCAxxY3Dl1Fhe
X-Proofpoint-ORIG-GUID: BrAbHM741FkBSuXypXzcCAxxY3Dl1Fhe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.874,Hydra:6.0.517,FMLib:17.11.64.514
 definitions=2022-06-03_04,2022-06-03_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0
 priorityscore=1501 malwarescore=0 adultscore=0 mlxlogscore=958 spamscore=0
 clxscore=1011 impostorscore=0 bulkscore=0 suspectscore=0
 lowpriorityscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2204290000 definitions=main-2206030053
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Jun 2022 12:27:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57255

--------------qwgz53LxiKJE24vS4JYGaxHg
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by
 mx0a-0064b401.pphosted.com id 253CHL5W030992

On 2022-06-02 11:31, Sakib Sajal wrote:
>
> *Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage
>
> *Attendees: *Richard, Steve Sakoman, Tim Orling, Pavel, Aryaman Gupta,=20
> Saul Wold, Stephen Jolley, Akuster, Alexandre Belloni, Randy, Zack Welc=
h
>
> *ARs:*
>
> Randy:
>
> =C2=A0=C2=A0=C2=A0 - move AB-INT bugs from M1 to M2
>
Done (for unassigned and a few for other people )
>
> =C2=A0=C2=A0=C2=A0 - move Medium+ 4.1 unassigned bugs from M1 to M2
>
Done: moved issues that seems less urgent to M3 to reduce "paperwork".

../Randy

> *Notes:*
> N/A*
> *
> **
>
> *Medium+ 4.1 Unassigned Enhancements/Bugs: *74 (Last week 74)
>
> *Medium+ 4.99 Unassigned Enhancements/Bugs: *47**(Last week 47)
>
> *AB Bugs: 47* (Last week 50)


--=20
# Randy MacLeod
# Wind River Linux

--------------qwgz53LxiKJE24vS4JYGaxHg
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2022-06-02 11:31, Sakib Sajal wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:db8baa55-8cd1-446b-f145-a902f2c7e758@windriver.com">
      
      <div class="moz-text-html" lang="x-unicode">
        <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
        <p><b>Attendees: </b>Richard, Steve Sakoman, Tim Orling, Pavel,
          Aryaman Gupta, Saul Wold, Stephen Jolley, Akuster, Alexandre
          Belloni, Randy, Zack Welch<br>
        </p>
        <p><b>ARs:</b></p>
        <p>Randy:</p>
        <p>&nbsp;&nbsp;&nbsp; - move AB-INT bugs from M1 to M2</p>
      </div>
    </blockquote>
    Done (for unassigned and a few for other people )<br>
    <blockquote type="cite" cite="mid:db8baa55-8cd1-446b-f145-a902f2c7e758@windriver.com">
      <div class="moz-text-html" lang="x-unicode">
        <p>&nbsp;&nbsp;&nbsp; - move Medium+ 4.1 unassigned bugs from M1 to M2<br>
        </p>
      </div>
    </blockquote>
    <p>Done: moved issues that seems less urgent to M3 to reduce
      &quot;paperwork&quot;.</p>
    <p>../Randy<br>
    </p>
    <blockquote type="cite" cite="mid:db8baa55-8cd1-446b-f145-a902f2c7e758@windriver.com">
      <div class="moz-text-html" lang="x-unicode">
        <p> </p>
      </div>
      <span class="moz-txt-link-freetext"></span>
      <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
      <div class="moz-text-html" lang="x-unicode">N/A<b><br>
        </b></div>
      <b> </b>
      <div class="moz-text-html" lang="x-unicode">
        <p><b>Medium+ 4.1 Unassigned Enhancements/Bugs: </b>74 (Last
          week 74)<br>
        </p>
        <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>47<b> </b>(Last
        week 47)<br>
      </div>
      <div class="moz-text-html" lang="x-unicode"><br>
      </div>
      <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: 47</b>
        (Last week 50)<br>
      </div>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------qwgz53LxiKJE24vS4JYGaxHg--

