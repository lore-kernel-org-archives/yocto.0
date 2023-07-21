Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 436F3EB64DC
	for <webhook@archiver.kernel.org>; Fri, 21 Jul 2023 06:02:18 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.1431.1689919330920846337
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Jul 2023 23:02:11 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@windriver.com header.s=PPS06212021 header.b=aZ2/uqJY;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=6566e0e4ce=yi.zhao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 36L5gkCq013107;
	Fri, 21 Jul 2023 06:02:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:message-id:date:subject:to:references:from
	:in-reply-to:mime-version; s=PPS06212021; bh=nbqD3MgJO3J7Yo6tI7F
	9aPKm5gTyccV815ooRyERDcM=; b=aZ2/uqJYEQt+3AM2Agow4mDUlAsA9cnmSDU
	dBDiF4M0HxwKE/rbs1CNcueaRw8y/OoQczCtUUt3gHaDZYoQ/E2o2k+2u+qNrq8+
	+S507ziEi+O/vAmYzuERabpiWDMT+4Pt26JFmfkuiLX7qft1XtxhtISV3564PW9l
	tmlRdw0XXEafpXE3tZYrP4rWbpCA1Yzu0iVBAPtXU8Igs7JhsRTP/rh8V4e3N4C5
	14fK6zyqTDCzkEZADCYdNBYuckFpXZQF1vZpxAxHNOcVNH3Bsf9hPnpWH42ifRrg
	CNhPpRBkMSKghr6qujkxhrLdMyI0wLydd00q3wC9Wh8AyPtB6nw==
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2169.outbound.protection.outlook.com [104.47.55.169])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3run9jwcba-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 21 Jul 2023 06:02:09 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T3xz8+CQp1qu76TQYy0vRTNRERx8wNzqyGCp7jBKyLs8qkkwsdUDkCJgPtt/HxiCCSDCEaQG3i/smHTc+Jt4aZSrcRxemC55orVT8aZiSxzFv8Ij6JLf4RySGuxPEty+sx9XO9X81pkP+0YXL0+9JPB3AzFOoNYn2IjGxWUS8953vr3RjE4L22whvvSdPbuT0hOHL0hFBlqURB9RimFxl7mBZaMl96feBYOj4E+tPDo5FknDfFuvYc+r5T/nmgfbcBUEzKfKqyQfDl+MMtmXKTdtUz2YWTXq8FEWvOa/1KKYE9x2K3IedFAGtxrKPF5hjx6K0TUwt+khP7WYbKw+Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nbqD3MgJO3J7Yo6tI7F9aPKm5gTyccV815ooRyERDcM=;
 b=jojD2nHpKlsW+HZNUlL76guOj83oCVqcbZZyoiqJ73b9kZDK81FrsSQ+lGZ12HJUiNFGcZc+aNErDdwWhh8o71jJgmBFh2WLlsBteHZY+3WsM4/TiirCjY7EAqLG9uFK8RjOWlib+vEh479s3MjSthtkFQoTIr2JMBST4TT1sfepahqKAwKON3ZMenbnNC+CpcEX64MKOnLKa0ClpZM3ug/ECxV3IhYkJy5D9uh4ruH6skF72alTxW/N9nU2z0gMbCpP5/9duFxr2fmB9Mj1fbKmXe89yvrGoIYbbvf3D4glHHlKn8Am35nfsoj+SUZ73Gxpgxb+JZzTkD/eNEgABQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CY5PR11MB6365.namprd11.prod.outlook.com (2603:10b6:930:3b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.25; Fri, 21 Jul
 2023 06:02:07 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::f499:a2a9:85eb:97ac]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::f499:a2a9:85eb:97ac%3]) with mapi id 15.20.6609.026; Fri, 21 Jul 2023
 06:02:07 +0000
Content-Type: multipart/alternative;
 boundary="------------rzTrWtS0V1NERxzvu7a0kJFe"
Message-ID: <0a1d18ea-842b-b01a-3f0d-4dfe56575799@windriver.com>
Date: Fri, 21 Jul 2023 14:02:00 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [yocto] Missing pam_winbind.so while adding Samba(4.10.10-r0)
Content-Language: en-US
To: "Poornesh G ( India - Bangalore )" <poornesh.g@mindteck.com>,
        yocto@lists.yoctoproject.org
References: <5r62.1689916013234833633.c8sH@lists.yoctoproject.org>
From: Yi Zhao <yi.zhao@windriver.com>
In-Reply-To: <5r62.1689916013234833633.c8sH@lists.yoctoproject.org>
X-ClientProxiedBy: SI2P153CA0030.APCP153.PROD.OUTLOOK.COM
 (2603:1096:4:190::15) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|CY5PR11MB6365:EE_
X-MS-Office365-Filtering-Correlation-Id: 505deeff-15e0-496a-4b44-08db89b0034d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	lzS5fpqZnfvzSlmgQFCH9isb2BUxUA3S4KIH7Nzv/dKfvdndEgiPdV/o/72HvAzIwRiaHwcGgBMhpL3+v3zPwMwe1eMId7rMIB6LWaeQFtuMP4rKuX2PgxGJNekx+2r4sbZ/vWz7Y//96xTA3aLZ6mVXJPoRcgeOJJMytdp70Tnexom4hQynmQIa0XpG8j8ixXT5AIO1tR6Li+AJUk4RObf4gZcbPy1ZEBjnbcoruEcaqNiO8qMnW1a4gGTenRegS7g2ZKpPJA7zaz9YOWbs794ALopv+ytkGJ6AfEEBhZTARrWWm/U9jz/hw+GFgyIeDPi+ZozkXAdEkQUg74wZP58yd5dvDJYeXDW6QysSd0UyD6W+nXlINKG92sRTdW7v8NZMQlH0KTGkJzmZTbBX64DY8w3RadoM2yfUbTEsqwjUeUSyUFgveNeob6ADybWUApdXTkeBeVF0iyCP1FoKk/ICw0t+s+EOFPA302cgGcycwT/VzD+3lckRa1k18DD8B2ihhVohuGgaQPuBNTwQXxeKfaRTHXfPWDgHNimQgfETlI2oHk6s8ThMe0z7Sf1Oy3hyVi6NhoyPt/j/j0FKbsT0mC94nRWep53NbtRmDPTvIe79gaoHMzs8X613yzQY
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(136003)(376002)(39850400004)(396003)(346002)(451199021)(41300700001)(53546011)(6506007)(186003)(26005)(478600001)(31686004)(316002)(66476007)(66556008)(66946007)(44832011)(8936002)(8676002)(5660300002)(33964004)(966005)(6666004)(6486002)(6512007)(2616005)(166002)(83380400001)(2906002)(66899021)(38100700002)(31696002)(36756003)(86362001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?N1FYWEJxTFFIQ1NsMzNyWitDY3luWnM1b3RCVjAwS0Jna1R2NGtScmtLSzA0?=
 =?utf-8?B?enNoN0hqcWhlR3JJM3FNV3VNVkcwalhJSWlIYzhxcTdnZ3VWTHZHUjlmWXlv?=
 =?utf-8?B?ei9rTE83bm1KNUJzekZwcEJHcGJ4QUZBYW92YUZqc0pUWkN5VDA1ckQzMHVv?=
 =?utf-8?B?WGhjOURRWk5VYld0NWdMRWtGQXV5cnc1by9NNTJVMEcra0NVRkxXTG1pY3ZQ?=
 =?utf-8?B?VlEzVnZwbVdiVXB2eXhMckhDRkxsSzR2dWptMGQ5Q1cwTXFwL0NidjNGd2s1?=
 =?utf-8?B?aG5mdXgyQ0c4ajloSkc2R1M4bkV1Q0VWQ0wwWGljd1JCSnFsQi9yOTZGME91?=
 =?utf-8?B?RDdtdCtwQnRwVUoyVEVWZ05aRFRuRS9VczZVQ3JFc29vU2JhY3JpbmhlNHor?=
 =?utf-8?B?WHJHYzZnMHZZRlFFYXd2UFlPRkI2ZEsvOTVLV3h0OXpTQUpzSXBWL3ZuRzdB?=
 =?utf-8?B?WDZ2VzFCc2tGS0g0UUY3YnVQeDlkZEhNdjNTTW9oZVRwMlI4Zk9aMzhrN1VH?=
 =?utf-8?B?clZnN20zZHdjcVo0bDdqM3EwcmdtakpBUTFrRDBDVDFYMnpGTjdVRHc1VTlZ?=
 =?utf-8?B?SVAwZTd0TURJb0FhZW4rb2RLdXRDbittZ0x3UDhDTlpZYmhsb1o3OHNYWEN3?=
 =?utf-8?B?MFNWYXF2QUdMdDBNMVZBY29WTlVRR0R3WE5rL2huSFptb2xyVTVVcFVWOXFI?=
 =?utf-8?B?Z01qZTFPVXZoNVJ3bzd4UzF2ZXFOMXh3YURGQkxFM1dkRkNLV1Q5Q2h3Tzls?=
 =?utf-8?B?aUpGVGVZWTRDOUp2TzVOa0FwTkx4eGJldDg4cDl4NFZpWnc2S3NkdVZEQnF6?=
 =?utf-8?B?MURyb3laVVQvYVI5aXpmenBkRzFlOEVQcFpyUzV6amVHSmJzNk9xMjI3cyts?=
 =?utf-8?B?Q2VMY29DTTdkVUlhcGpiS0Q2eDlGc3V2NkJWaVp5MGs2d3VDazNhRDFzSEc0?=
 =?utf-8?B?RE40S2cxOXhqTHFyK1VMTEF1RnZaTlRtUnBlR1A0OVFJdEpyN251cGxxekE0?=
 =?utf-8?B?V09CcUJUc2U4YmQrVG01a00waHJuYlo5dzdOQXJyTE50bXNQQytMb3dSdnhQ?=
 =?utf-8?B?VUMxVWRxaVJxUDJ6Sml4c2hOaVVFY3E1dnVoMzlZbGRiVWRDdkZobkR1TVBI?=
 =?utf-8?B?U1l2dE12aXpUM0Jrci9rVXR2MEtEUUhPaUFQNWgvYXFpSHVVMCt6VDNUdkdk?=
 =?utf-8?B?clNYZWlOUmp2bnNlWFgyRVFoUHgwMVBEUVpoYVdVWGVOalRTWlpHOXhFc0JJ?=
 =?utf-8?B?WDhVUld3aVgwVjkxRHdsRVFpOURLY0ZXcittaDFKYVAzaFFmbkZ2dlRGN0hz?=
 =?utf-8?B?Y3ErbkpjVjl4ZzRwY2xJcHJ1TnhGamJ3cnVoZHljdFpUUEp2VHA4RmZ5bXN3?=
 =?utf-8?B?V2FIN1YvUnp3SnB0eGUwamczcDB5V1c2dUpjKzlaOGtkenBKNUNiVERlbitl?=
 =?utf-8?B?MlJVK21FWTMxTDdQMkpUUDdHaDM5QlEvWVpYdVhzOVlpZUxPQkk0UW1wb1pv?=
 =?utf-8?B?ZmVGWUMzZ3BUUUxyWGZwTU1zRTlERUVpVHZmZnY0eTcrK2xENTdIUThESjd2?=
 =?utf-8?B?bDFDMlZZMUlWZUJJaXFZUkNFMTRzeVhHNGpTTDF2c3B4Umx0NE4ySmJuWGdt?=
 =?utf-8?B?SnJSd0R4cllqRGVpdUJhejNNc3RvQWpUbFdXNS92MVNOUHNtVGdCQXROSnFr?=
 =?utf-8?B?aFVsUkpXVWxXb1h1L3R4Q2t5bGFkeEROQmNsOHVNd1dKSWtwRXduQktXWkRj?=
 =?utf-8?B?RW1jWWdCNHcvZjhBWDNrTDhScHgrTjlXSEI3dUJ5b2l3VzFIdWluT2xqb1RX?=
 =?utf-8?B?WmFVdms1MzF0VlZQQi83NUVnd3UyM3pzSThHSy8xZHZHZlA0TmtSa1Z2Tkc0?=
 =?utf-8?B?UGRzWi9UWHMzNkxYcWFVa0xrQUZEb0x4WFR0ZXIyZnZpT3MxbWVLajNDZHR5?=
 =?utf-8?B?ektJTzJwT1UzYXpsbk9rdWZweFcrMTRYcDdMMnc4azJ4cm5PMEpOeXZFbHly?=
 =?utf-8?B?S1hYeUxNNmFETmV3SGZ1cmo5WmJoelkvRDF2dWh0T2d2WnJYa3lUNy92ejhl?=
 =?utf-8?B?NVRQUXRsTU5Fc0lkaDRyaUNSbmRuUVJXTFpHTm5aV2tnVFp1OVhzTG9Ibjh5?=
 =?utf-8?Q?DpITcgj/r4O7GJdZ77bi/mVVw?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 505deeff-15e0-496a-4b44-08db89b0034d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2023 06:02:06.8377
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8o1l9Wh7WL0yKoYOmAc+YOU3S9d3cAVLboirgRP+r8dZ8BKbOB2rIeu8vaL2Tz1JcKl6gxtL820+U1Ml0ZE9vw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6365
X-Proofpoint-GUID: fwT9ry1pVN7Gn7LzyfZpHXDPIHA_ajZg
X-Proofpoint-ORIG-GUID: fwT9ry1pVN7Gn7LzyfZpHXDPIHA_ajZg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-21_02,2023-07-20_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 bulkscore=0
 mlxlogscore=779 phishscore=0 priorityscore=1501 clxscore=1011 mlxscore=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 impostorscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2306200000 definitions=main-2307210054
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Jul 2023 06:02:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60626

--------------rzTrWtS0V1NERxzvu7a0kJFe
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 36L5gkCq013107


On 7/21/23 13:06, Poornesh G ( India - Bangalore ) wrote:
> Greeetings !
>
> I am trying to include "samba" into my yocto build . I can able to see=20
> *"pam_winbind.so=20
> <https://urldefense.com/v3/__http://pam_winbind.so__;!!AjveYdw8EvQ!dt55=
C8KAvc_kZ2V7WOjv6cQFhIcQMrnBlAQNVQRFczWiBGwDStqpdkazbsJUD8aLCnCE6O1VijTdn=
79_OsJ___65z2M$>"*=C2=A0=20
> in=20
> *"/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/samba/4.10.10-r0=
/image/lib/security"*=20
> folder.
> But when I try to include samba into my image , it is absent in my=20
> Rootfile system . I am adding in "local.conf" file as below :
> *
> #To enable SAMBA*
> *IMAGE_INSTALL_append =3D " samba samba-client cifs-utils=C2=A0 samba-a=
d-dc=20
> samba-base samba-common"
> *


It is in package pam-pluginwinbind.=C2=A0 Please install this package.


//Yi

> *
>
> *Can anyone help me out to make pam_winbind.so=20
> <https://urldefense.com/v3/__http://pam_winbind.so__;!!AjveYdw8EvQ!dt55=
C8KAvc_kZ2V7WOjv6cQFhIcQMrnBlAQNVQRFczWiBGwDStqpdkazbsJUD8aLCnCE6O1VijTdn=
79_OsJ___65z2M$>=20
> as a part of my image .
>
> Thanks in advance.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60625):https://lists.yoctoproject.org/g/yocto/messa=
ge/60625
> Mute This Topic:https://lists.yoctoproject.org/mt/100271459/7283133
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub  [yi.zhao@eng.=
windriver.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
--------------rzTrWtS0V1NERxzvu7a0kJFe
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 7/21/23 13:06, Poornesh G ( India -
      Bangalore ) wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:5r62.1689916013234833633.c8sH@lists.yoctoproject.org">
      
      Greeetings !<br>
      <br>
      I am trying to include &quot;samba&quot; into my yocto build . I can able to
      see <strong>&quot;<a href="https://urldefense.com/v3/__http://pam_winbind.so__;!!AjveYdw8EvQ!dt55C8KAvc_kZ2V7WOjv6cQFhIcQMrnBlAQNVQRFczWiBGwDStqpdkazbsJUD8aLCnCE6O1VijTdn79_OsJ___65z2M$" moz-do-not-send="true">pam_winbind.so</a>&quot;</strong>&nbsp; in <strong>&quot;/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/samba/4.10.10-r0/image/lib/security&quot;</strong>
      folder. <br>
      But when I try to include samba into my image , it is absent in my
      Rootfile system . I am adding in &quot;local.conf&quot; file as below :<br>
      <div><strong><br>
          #To enable SAMBA</strong></div>
      <div><strong>IMAGE_INSTALL_append = &quot; samba samba-client
          cifs-utils&nbsp; samba-ad-dc samba-base samba-common&quot;<br>
        </strong></div>
    </blockquote>
    <p><br>
    </p>
    <p>It is in package pam-pluginwinbind.&nbsp; Please install this package.</p>
    <p><br>
    </p>
    <p>//Yi</p>
    <p></p>
    <blockquote type="cite" cite="mid:5r62.1689916013234833633.c8sH@lists.yoctoproject.org">
      <div><strong><br>
          <br>
        </strong>Can anyone help me out to make <a href="https://urldefense.com/v3/__http://pam_winbind.so__;!!AjveYdw8EvQ!dt55C8KAvc_kZ2V7WOjv6cQFhIcQMrnBlAQNVQRFczWiBGwDStqpdkazbsJUD8aLCnCE6O1VijTdn79_OsJ___65z2M$" moz-do-not-send="true">pam_winbind.so</a> as a part of my
        image .<br>
        <br>
        Thanks in advance.</div>
      <div>&nbsp;</div>
      <div>&nbsp;</div>
      <div>&nbsp;</div>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">
-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#60625): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/60625">https://lists.yoctoproject.org/g/yocto/message/60625</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/100271459/7283133">https://lists.yoctoproject.org/mt/100271459/7283133</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a class="moz-txt-link-abbreviated" href="mailto:yi.zhao@eng.windriver.com">yi.zhao@eng.windriver.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</pre>
    </blockquote>
  </body>
</html>

--------------rzTrWtS0V1NERxzvu7a0kJFe--

