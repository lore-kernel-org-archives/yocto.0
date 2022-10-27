Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B781FA3740
	for <webhook@archiver.kernel.org>; Thu, 27 Oct 2022 15:39:10 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.8052.1666885146345006526
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Oct 2022 08:39:07 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com header.s=pps06212021 header.b=g/U1aRYM;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=72993105a3=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 29RDKxvj025337;
	Thu, 27 Oct 2022 08:38:48 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=F6NCjqfpejEz3VN7Mjf2LaLk+2ijpz/L6J2LXCNGQnE=;
 b=g/U1aRYMSSPSsxuDl4QCHG7f7pZBS3lV5hiP41R78uCoLfkI9Om+CuFKBnspcnImKN9Y
 x3iw7EFVh8nix9rOO3x/1PSvrDklmH9zYL1glG7l8Y/gqukSxNKFb+xEuNVTohe0ApF5
 PkoPFJ+Aim8nDWhLmSnZ9sKR6GOrmm9Uh+H+3+VsBaD4f1IJQ1tW2f4ETJQPmeDaOKd/
 33cj3hskwGmTqOUbS2mqq97FdLjyl3HsHA5klfp9PVjwbiXGidIkZ6uaP5Y7pdzrlFwW
 Ax3Q8eJGJrUCrfdjZ4Mkp92Px/iGgMkybNJqb/alSvBpVMHNnNQpTxSpZtTH0mANx5se xA== 
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2049.outbound.protection.outlook.com [104.47.66.49])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3kfg0r0k10-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 27 Oct 2022 08:38:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N7DwVRS5fKdb8mbi3jfKdyDMKPOONpETlId0Q/bQIEl9WVFb+lmOpbjr07RRu3vXCOrtYwEblcdZxRbaYdHxFXKN8IJqlGHFUVlsBDa1Vk1KZz9lGoZgMMRWm9h44bfLkLh9Qh6YaksYfxY3Ywmi6LselVxW0n+vYJFdHfFx0W4a0FinA9yZckxtXVGLY//0t5NeolHp3H/R809tZoudXS2q/odezcRaAAGCv6d/As7aJdrLo/MSoO+bXsaRcDpBV8iZ02/D+dVjB77HbWAwOASdUFeYr4lZRRQOSbdn2A8soHW4etGNHIOTpIn6y/wZiosTxzhWaaaM6wqqAuFS+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F6NCjqfpejEz3VN7Mjf2LaLk+2ijpz/L6J2LXCNGQnE=;
 b=QrhoqX8LJQS5ELsrX0bKmJQ5nRN8MigHALNjImyYfojL++5OrHjT/niDv2+cOF4EaGtfZYL9GC2KysHFEJJAYsSfxZec8SnWjCMiehsUn+29Sc6YdJZAVlritezd4FEeEtUJMivcoZ8SKaZX1fF5YU+8x1zbSb5zVQlrFlD5zk3Pb4j/2WWwWWJHIuLX2xgu7P57DTfVBOU52KtmClM8TJmDW8CMgBfPf4idvxSzPZUJ3pY7B5LI0nZBNf/rAivyoER1+1klf1M/F5fQUdACBYgA7lv1w8WXFvz0uXWx2jjas1Hx6an+1Sl/A+YzWsJTDX0P552j3PxmfpBexKklJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 MN0PR11MB5986.namprd11.prod.outlook.com (2603:10b6:208:371::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.21; Thu, 27 Oct
 2022 15:38:45 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::1ce1:924:d5fb:7438]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::1ce1:924:d5fb:7438%3]) with mapi id 15.20.5746.028; Thu, 27 Oct 2022
 15:38:45 +0000
Content-Type: multipart/alternative;
 boundary="------------ItsTjzj1ye1Km65UX0Y2CA5m"
Message-ID: <c50f7dcd-31d8-876c-dadc-f516e78757aa@windriver.com>
Date: Thu, 27 Oct 2022 11:38:41 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 10/27/2022
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
        aryaman.gupta@windriver.com, pavel@zhukoff.net
Content-Language: en-US
X-ClientProxiedBy: YQBPR01CA0129.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:1::29) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|MN0PR11MB5986:EE_
X-MS-Office365-Filtering-Correlation-Id: 172f2104-66d2-40bf-16e8-08dab8315570
X-LD-Processed: 8ddb2873-a1ad-4a18-ae4e-4644631433be,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	FUS7nlIDWU+Rte7olTU8O1nHkQE4E5k6BNnkvAMyxvKiYnJlH4z0lV+u5ApynHsvrnu4Ri65RjnHTGV0StMCosv3e923mw7WwsiSUoEuRuGBVo3G67Fxfuhb8l0wPNkhHGHMh3vcsTom6CgETRuX91Nbp60wFLIEpIpTuI7D7JhuuXMnXpzZDM6gdanfXNeIA10NSfoJ34CMuv9MAn8sZF7YhuvaB7PQ8QEMIC9CCz5sHeLr5ymt14tCkig9AUYCr30Yr3RV5OxHd1PrzXaI5OuOYXLMIs72YSfDn4qnt6mOM8kfvC5lLVwE3rv54wAkDxi+j8oSwm1OXmfXl72mXffH+bIoCGEWtN/aWKJZX04pXmOW5CH94wbR4RefL/8kvyfQvAZMx18h2TX4g/buabXYiAI/n/VqcnmBnzt9m+3bdrLNmj+G+63e4GzAGQ9/DEgnmcm7prst0YcffrblT3s8BCG/sdESPo8q51C/B07aS6Oyzb1SXl3uTxis+YVmICbVk60LZ58rdXTaKMav9R+JM4LOkjh0qpiUjuZ029TonFECx5Y2Lva2iHV7IyJMKCaaFeSD9yKBA/cPyFjM8m+rw0qa6GA+cTNfQFuUA+BMuY4gZK58zgrssZx6ZSGsyVxBsImZEu2fE3xjBJ+LqwX53ntHf26Gf1NkaBpL1fnFodTu1bTPzZnFnDy+5eY4hy8TP+iuioBSIwvxmec6vbaSneM6zSEE+Pri77m0TRQW8bKTXpSERm8qIOerySt/Eh1XW+gfMmFPlUsc+aNwR7ny2N+rrEcA+gGWuVTx0iyec8XHneKAk5TqNpypUlwe
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(136003)(39850400004)(346002)(366004)(376002)(396003)(451199015)(33964004)(166002)(38100700002)(6486002)(478600001)(316002)(6916009)(36756003)(66476007)(4326008)(2616005)(66556008)(8676002)(966005)(2906002)(31686004)(6666004)(26005)(186003)(6512007)(41300700001)(7416002)(5660300002)(8936002)(54906003)(6506007)(86362001)(31696002)(66946007)(44832011)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZDN3cjdrbG1pS1k0VnFuSDJJVHdiczdnVkZpcDhmaUR3UjZjTmNsZTg5cG55?=
 =?utf-8?B?d2Uva1pYelBPOTFHWjJMZlhLSjVKRDFXdEcvZ1NkMXlvU29QcE0rSHJ0MEYw?=
 =?utf-8?B?aUhKRTg0OXZURDd4aUFTSzI4OGxSYjd5S1hQdXV4cWtGL0NVOWpaYVp1TWZk?=
 =?utf-8?B?UFQ5anFqYk9LZjZzR3FtZXRjRlF1ZkdBZE9Cc1o2UE02bXFwMUNPcHpLUSs0?=
 =?utf-8?B?aE1jNENsNDFiUGlLbjNzV0U4U3lZQk9NaUg5Q013QXFmWVFVQXlYNmtRd24z?=
 =?utf-8?B?V1pML0lIT0JVTFBkNlErSGRITXVmSkNUL2NCVDFVc255eGtlMmU2QW5mR3J3?=
 =?utf-8?B?Q0lpL2tsZTNwSkRDTE1jaDNWbUJ2TFMzMTNHbVQ3bjJNR1RweTJScTFGM1du?=
 =?utf-8?B?bWttR1E0d2VMWjlCT2ZwcjRCU1lEOFdVRWhwNXZRYmxBT0Urb3Zuek8ydkEz?=
 =?utf-8?B?WWZrSzFFbkFUT0VaUVY1c0tIMk5JZlQ4YklUOW5HWEljWTNsSm1MV2JsQVFQ?=
 =?utf-8?B?c0pLczZMeXpRUXhmQUlXdGNFTzVZL2l0bVNTRkE4S2YzS2c2N1Q1Y2gxN0di?=
 =?utf-8?B?VjdQWmdmRHo3ZWhEOTM1bFljOUVFNWZBeVMxSWw5bjhmaEcrVWd0QlE0NTRK?=
 =?utf-8?B?bFUveWl4WS9nbm1veTBTMDRleDBTeHNQbmx5dmZScVo3RGtLaWdsdCtqR0lH?=
 =?utf-8?B?bXZCR205VTNHZGE4ai83WXlGVEhCWjZYU0VGWlVSRk5wSmg0amp5elBSSUJN?=
 =?utf-8?B?Tm8yRFZKS2hlenhTQkIzL21naGovaCt2T2xkSFVkUFdXOGUzYzhUNXBYa0hD?=
 =?utf-8?B?dUFBbzJJZzlOOEZDaG1RaWh2cGcyT2Q4OEd3a3Q1Z2xYUnl2eHpHVGFwN2Iy?=
 =?utf-8?B?WjV0Rkd0RGpOZjdwVm5zejhySzY0V0hudWp6QW85T0t2ZE5vaVNxMXU4a0Jq?=
 =?utf-8?B?Z0lyMmdRbEsrenA1SXlXMUNJSUh5VGpuc0lkdjN3RXpVTER5RThTRUpUelBJ?=
 =?utf-8?B?VkE1SHJMMyt0a3FGVDhVUm95MFFPaE5taGRWejFxM2FDSjh2L2NLb25STkh4?=
 =?utf-8?B?Rk1pZk9aWldHZnk1ZGhnYTZSRHZOcUJkTVk2V29HN3pPcTBDSnMzaTNmWjVo?=
 =?utf-8?B?QlZJOUZwK05HQW91aHdodEhiZjVJbEFhTXFoczYreVJpV3NzVzZUWEVpRGNU?=
 =?utf-8?B?NFBMTXBzVmNCc3kwVHc2K0lhcWk4Y3pDa1NHQlpoNUhxWExzd2QyOW5OUElo?=
 =?utf-8?B?ZHBlTktQZmRITDNVYWpRZS85TVBEdUVoUDArMWpPZzFOSExaaHdGRE12VGpL?=
 =?utf-8?B?aHVncGZLUWdXa1E5Yy9acVNYTlBZNXUrZ0kzUmV1N2h3Q1dtbVJFOVhITUxZ?=
 =?utf-8?B?QnIyQURjNndsMDlPa3h2b3FEcU9od0lQcEVhRmhlZmE0NFRYcHV4TjNFcitm?=
 =?utf-8?B?MDMzMkdVdGsrY1M1OTVNTGFxRk45VUZydnA5cjhIOFJqdW9nZDlHRUZ1Tm1Y?=
 =?utf-8?B?WjNocTNKUVRlYXNQcEJCZjQ5aVB3QmpSWlhMbFRMTHI1Z2FFVmxJWW5CcTBR?=
 =?utf-8?B?dGlXWlVQcXVRNkpKMVdRb1pySWs3MENnVzMzRGxsVUluKzg5S20ySmRFamJi?=
 =?utf-8?B?L2JaMGs0MGJLT2pqTllOR2wzeDJLRWlwbUEzdFVWS1RrR3NIZGlZQ0VNQUU0?=
 =?utf-8?B?WTVmVHl3ZGlKNXFmWHRLMXBHTVpERnJnc0ZPNDNFUjgzWVV2dm14bjdyeW56?=
 =?utf-8?B?Z2pBRHdLcUhhcm1mc1d1UlpkWVE2TmIxRWxpQzYxcEQrR21OUFFXK29NbGFp?=
 =?utf-8?B?QWZvMVF4RTlNZGs2WnNhYmdmM2VBMlhDOXAwWWs0eDg3V3Z4eUVaZHIzbkxl?=
 =?utf-8?B?V1BURVNyYVJNZ2xNUHZiYlRBV1ZmSnZva1ZwVFVLckluVHhIdDZxazM5aG93?=
 =?utf-8?B?MXF6YXQ5U1RJSlFLY2F6RVkrdmhZZ25KVUhVaVlObjVRV3dYK0loOGl5aWQr?=
 =?utf-8?B?MUxIcUFxTEVEc3RleTBVTlo0bEJUcEZ4eXhxVUpzczZXRDFEM2pKMjk5TWtU?=
 =?utf-8?B?YStCakZFSmZHdVJmZjF0Zm14RmlKRS9DazZJMlZtNWJXVTFYUnptMnZqTzgw?=
 =?utf-8?B?T2lEMTRiVm0wWE0wMWxZY2c5b21ERFhnMWUzWkx5eDJWQjFlM1N2SktadStS?=
 =?utf-8?B?MUE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 172f2104-66d2-40bf-16e8-08dab8315570
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2022 15:38:45.4382
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Fa1uG8X3HgoufPRhKxdn0knmzAAaoHpIpIzUEu1VoNVdHgYofoJEKifpqRsFsGeCAyCyjuVc/NX0th3iR3ydIF0nBrvwC+tU9mZOZnz+2B4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB5986
X-Proofpoint-GUID: 2w6lYWK3KJxEYD9RqO_jntlLldozRBEH
X-Proofpoint-ORIG-GUID: 2w6lYWK3KJxEYD9RqO_jntlLldozRBEH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-10-27_07,2022-10-27_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 suspectscore=0
 adultscore=0 malwarescore=0 mlxscore=0 phishscore=0 mlxlogscore=818
 impostorscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2210170000 definitions=main-2210270085
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Oct 2022 15:39:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58422

--------------ItsTjzj1ye1Km65UX0Y2CA5m
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 29RDKxvj025337

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Richard Purdie, Steve Sakoman, Stephen Jolley, Randy=20
Macleod, Joshua Watt, Alexandre Belloni, Ross Burton, Bruce Ashfield,=20
Tim Orling, Michael Opdenacker, Zheng

*ARs:
*

Richard:=C2=A0 review bug 13897*
*

*Notes:
*
*
*

*Medium+ 4.2 Unassigned Enhancements/Bugs: *70 (Last week 45)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *44**(Last week 44)

*AB Bugs: *58 (Last week 66)
--------------ItsTjzj1ye1Km65UX0Y2CA5m
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Richard Purdie, Steve Sakoman, Stephen
        Jolley, Randy Macleod, Joshua Watt, Alexandre Belloni, Ross
        Burton, Bruce Ashfield, Tim Orling, Michael Opdenacker, Zheng<br>
      </p>
      <p><b>ARs: <br>
        </b></p>
      <p>Richard:&nbsp; review bug 13897<b> <br>
        </b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes: <br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode"><b><br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.2 Unassigned Enhancements/Bugs: </b>70 (Last week
        45) </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>44<b> </b>(Last
      week 44)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>58
      (Last week 66)<br>
    </div>
  </body>
</html>

--------------ItsTjzj1ye1Km65UX0Y2CA5m--

