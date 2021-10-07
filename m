Return-Path: <trevor.gamblin@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B649DC4332F
	for <webhook@archiver.kernel.org>; Thu,  7 Oct 2021 15:38:21 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.49.1633621100257893363
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Oct 2021 08:38:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=X94pGqcs;
 spf=pass (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=5914fc6b21=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id
 197BxQn3018902;
	Thu, 7 Oct 2021 15:38:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : subject :
 to : cc : message-id : date : content-type : mime-version; s=PPS06212021;
 bh=vxp+nA3hZ5ZWAwEACl9FYZSqk6R5avSx2dG+iNbprb0=;
 b=X94pGqcs/RMRmNLlhIX40or/p3vcY8oMgvRzy+NoMlsNSCQuvEG4FGGTbazTVhlhlhkF
 UT8INRi4NSAWTJcoqN/PMQcXol+961TZRc6Mn+RZi2V3gwdo+RB49r85O8kgVVe+4v3c
 oH2PExmXL7VYf/FrBB/vbdNRIkxdV7mPRhCHWLKdimNfijr7xBMfnQrPmkhBeEooWcYI
 GwPw5zsQ9jOo5FuMp1F4RpugLRaLBaJXkPYTCHY88fTabyRqy3At1iBx/jqM2zdh9mfB
 Mv5PKUCMNtonBrOpiXn5y5Ie9+Iz1DGWEwKZe0w7Aog7o+5YbRkfwXZLiKPu/L3H8nvT yA==
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2177.outbound.protection.outlook.com [104.47.55.177])
	by mx0a-0064b401.pphosted.com with ESMTP id 3bhe2s16dv-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 07 Oct 2021 15:38:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=llBCjs1UcmPtK9xwQneGwXN1JFOZvSIRLxduAEWcYRFJJXVPp7IdlnJ3zrxl9u8ki2W2G9W386UqWoMyiZ9mNm18ixZs0nWiTybT+BLpDoudMW8uECBWoZ156MV6nUtuR/92AWyx3kPIwU83wvxkFaiH4BmfA52Sdyql7EEHcvS4aJIapNV5nWNWk6KY7D0PiF+IGSmsZ4Bpd17l1m3Nk7og7OsWgzhT8ZO+bQO13JVfzNt/dFI2/k+ewxpQg8G+rZ+q6MmLa9QvRMV1cqr33EchQOJlHrSHLYjwfCh8mloY99TYxZhY2ZhGSE4Dgqt0mY/AlS73rqUPUfIoAmxXew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vxp+nA3hZ5ZWAwEACl9FYZSqk6R5avSx2dG+iNbprb0=;
 b=aCsSJw9tnMSov2hzoKxjiqSysivVBvL5GdTWXXy3OjeBQjiKXqStWHaV4cJSj3F6TgyHvpRl9xpwp8X+LQC6oezY8YAu2gefdSPNfPZwDtjGLWuxIyJYD2KrqdvK+02L0msbZV1lMUvKtDU6offvAbVwnhZdVZJlHz2KO+A323ly8HrOBtv40K6gloLFnyL177a0d1OCUpyNc198PgUWUNUbZqAtpWbkC+HXI7Ranf7p8Ji7v34MntaPUyjBKWsG/lZITzN9clluKxBk1ZDD1K8wW8q4YhBnadIYImx5PIgVZlyKDhNa9eyKvELnJfhLRDa3c6z9c5+C8S/Y0BM2fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by SJ0PR11MB4864.namprd11.prod.outlook.com (2603:10b6:a03:2d4::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.19; Thu, 7 Oct
 2021 15:38:09 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::ccb2:28ab:f000:8440]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::ccb2:28ab:f000:8440%3]) with mapi id 15.20.4587.019; Thu, 7 Oct 2021
 15:38:09 +0000
From: Trevor Gamblin <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 10/7/2021
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        trevor.gamblin@windriver.com,
        "MacLeod, Randy"
 <Randy.MacLeod@windriver.com>,
        "timothy.t.orling@intel.com" <timothy.t.orling@intel.com>,
        "Wold, Saul" <saul.wold@windriver.com>,
        Steve Sakoman <steve@sakoman.com>, Ross Burton <ross@burtonini.com>,
        daiane.angolini@foundries.io,
        Michael Opdenacker <michael.opdenacker@bootlin.com>,
        "Surendran, Kiran" <kiran.surendran@windriver.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        "Reyna, David" <david.reyna@windriver.com>
Message-ID: <97694ce0-00ca-9142-1ca6-cbe7ecd09e3f@windriver.com>
Date: Thu, 7 Oct 2021 11:38:04 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
Content-Type: multipart/alternative;
 boundary="------------CAEFFAD68D512B7C90521E41"
Content-Language: en-US
X-ClientProxiedBy: BL1PR13CA0264.namprd13.prod.outlook.com
 (2603:10b6:208:2ba::29) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
Received: from [IPv6:2607:fea8:c29d:d7c0::81de] (2607:fea8:c29d:d7c0::81de) by
 BL1PR13CA0264.namprd13.prod.outlook.com (2603:10b6:208:2ba::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.4 via Frontend
 Transport; Thu, 7 Oct 2021 15:38:06 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c436fa6b-0292-459f-ed31-08d989a87692
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4864:
X-LD-Processed: 8ddb2873-a1ad-4a18-ae4e-4644631433be,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
 <SJ0PR11MB4864574DF82E17A547A0945F9FB19@SJ0PR11MB4864.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
 1uoy4IWDwB/37TeUcWMO8NBn5eDzEOF5qVLw3AZ2InK+dDDsvM68FglL9CIBrGa3P0a20p1aWyOSMaP/LzYT43EssJqlaEEj8t+jwMh7J2kIeCmcZwLcaxw2j6zajXDDc+EvWOcELfXNuW0IMiURn4akOHbTO8FuFqz0QXLj3qjVpFdIvKqqMfZkp4y0un5a2lM48NG8RLJYQmHd9OY6hedj1sPWY1sTyLY6++FFSMMClypOZ+8M48qkrtfb6aDb/j1sAqvVUj7aw4jU3AN4W4mt4PaMIIx7z5AvQfxLJhkR1bizwqD+5/e+sh1CabdoMojdy6ObGe2cTxs1jJIBtuodLRL/jcBRiSH+t/6NFb4YgoLt+xe4hba2fcAXlqXi9I9kBGki67mdjzLZLVH9oI62eM3UMUa47VJ4XHPHYA1bxMwp0fP2+UDAEnQHdWJD4cAZw8LXmJq8vPt7oRkqtE7pSipcq8P39LWJbwApFFWbDq8YhMNJQlH25lb1v/ru/dERdtXemJ6hyqXqhTj/13knAdN/0xBVjSVVAGi6CH0SwwJtEtYf2jiA1C1h0VcFaaCh8bUnf0Lu/yRLArqwAzh7W1g3xHPv4XaNs2RSucCp99/Ytr2+3dgZOHi2v1MSaS8axB2T1TgHRDyi1BegphtkQC2glC+im9A/a4xc15CI37xKD2ksX9MreUge5o+cxYhUhc78QDFKxCPwCFeojBEH+Vn67F4YojddC79s1YF5Z7kw2pcsAtFpyVDFmuspUQoSAoSjMStbOSCPzi15UT0NQqvYn6L+FR1yDGOwbBQ=
X-Forefront-Antispam-Report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(54906003)(8676002)(316002)(107886003)(186003)(31686004)(66476007)(66556008)(38100700002)(166002)(66946007)(8936002)(2616005)(966005)(6916009)(6486002)(36756003)(4326008)(5660300002)(508600001)(44832011)(86362001)(2906002)(31696002)(33964004)(83380400001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
 =?utf-8?B?eUFWTGgzaGlZU3o3dWQyMmxPblM0eDNLajRnS3BvNEhkaVFjTEkzWWNycnFC?=
 =?utf-8?B?dGw5ZkVjWHp3NTU0bDBsZ3NxQmMzQko5ZVlwMThNcmpuSFI4WXFSbnFETmVG?=
 =?utf-8?B?TjBuS1VJMGFObi9ObzhOTGg2QlJnVE5CejRjTW9wNTE4TzFhZjFkNVNnbkYz?=
 =?utf-8?B?MjVDREdzTzgyRWQvOTdWc0Q4eG1Kdmh0NTVYZnRyNjhtSjdtVFdhZlJmQnpP?=
 =?utf-8?B?dndJR1V0a2FtOVVIVFRWcUNXOWZaMGFFUEYxam4xR1VSOHoyL1lYZnlWS2lU?=
 =?utf-8?B?YlBSbU9aQTNxY3pScnZBMTNralJnY1dpeUJ2QVFwWDBuUnM3TzBIUlBmc1hG?=
 =?utf-8?B?WmxyWXdTaWsvUFBkTXQrbGYraG1hQmxrMkhaZUNkS0hjbVVDY1hZeGg5amhp?=
 =?utf-8?B?K2hOQ3BHTnorV2h4MDhyNjExb1RnWk5HOEJkZENUMFE2eGVDVEl4c2VRRFpM?=
 =?utf-8?B?T2JiUkF3UnRDTlVyNXVTQk14WUpkaFdpby9mZFVhc2FDKy9rcFJXYVk1UDRD?=
 =?utf-8?B?NjRpVGUweWVmVXBVR0dMcDNTdGwxNnM0dW1Kc3RIVC9na2xCaWlYeDhNdWVz?=
 =?utf-8?B?TXRQRXR5ejliTmNhLytJUkVuV1p4OGJtUEhMV3pPN2o2Z0xLejlqZ21YWEkr?=
 =?utf-8?B?aHJSN3hmV0NyczVnNmVrUUNxUnF4WER6M2Jmc2IwOU12VEpvdTZ2N3ZvT3dJ?=
 =?utf-8?B?WThGVjUra0pNcWlWNERiN0RkWWkxQ2xsZWV0bmp5VkJmNTJ6YjNBVlVRSW0w?=
 =?utf-8?B?ZWRDdk1hcFVzYUZHTW9kbUEveGpxdTZXTmtjSnIwaWxhTkdzakc1UVplaHdi?=
 =?utf-8?B?K0p1VXhzTlVPd3AzWW40K1JRTFZ5ZHdOdmw0NDlZWHZML0xya1EyQytIR0hL?=
 =?utf-8?B?OTE2aUppeDliR2t6enZJSWh2WGUxdWxDVG5PUjZ2cU8vdXBQMEFSWVhVS1V1?=
 =?utf-8?B?TXRkMmJPZTVsWXdXZEpYeU5LQ0dEd0gvdzZBV1BWRmpGYjFSR2JoL2d1bTlw?=
 =?utf-8?B?MVNtcUM3YVhESjUzSE0reXBuT0wxTWpjZlFhMWdkazloTm5nWC9XWjFRUEY4?=
 =?utf-8?B?MXpLUG1GMDUzM1RwVXlyK3U0Ukc1M1JraWN2NkNDcVRJTXZOSzVuODBrMTh4?=
 =?utf-8?B?UUdoMXFpSVgzMDE3ZU5VWjB1NkFxZ2NUclZMdko2eUtoSWxLR2U2QnFLNEVB?=
 =?utf-8?B?Vy9hdmliWGdxbURiY1NmYUxYaXZ3aXJyMlJsNW1SYWZVSXo4OUh1N21KSHU1?=
 =?utf-8?B?Qk1vUGxUbVVHMEVMUTZFZy8wVFpvME5aTEdpSW1jeERUMEdaMy9vN0lXcHBo?=
 =?utf-8?B?K0xXaUs5UElkWUh5SmtoUVRPWWxtT3RudWRHb01kaDBCZXIwdnZSTDl1MUta?=
 =?utf-8?B?UWorNGNYUFZsK3hGakJIQzl6Wk5oSC9Fdkh5SHdxQ0ZtMFhxQUgwVldGb3JO?=
 =?utf-8?B?a3lMTXd3MlZXMzBiMDVYemxVTmozZnpxaSsrVHhjMEJmbG4vZFVQWmZnMmdQ?=
 =?utf-8?B?LzJOMThNeEJ2VGRacm55enpxalZDTGo4YkZFWWtiR3FaNGtNbTVIeS9Tb1V6?=
 =?utf-8?B?cVBDdmRLeG1ENjcwZnZyeDJHUjZJVFVHWnZUZVpwcDlKeGM5THFvYWlkUitw?=
 =?utf-8?B?ZkQvR1dWTEVqdnhKUzZSS1NuVE54dHFnY2JhblRTSVdqcnhRM295ejBkbE9l?=
 =?utf-8?B?SXg1K3ZveU1FKzV5TkIxL2VFY1FwS1cvZ3Nab2pmK1hLYm56ZWRreFdrZnpV?=
 =?utf-8?B?Tjh4ZFBxT3NGbEZTN1ZmaW82bGNOblZZVWFBMzhXbHNpblVUeC9DWTBHU09Y?=
 =?utf-8?B?dTRjZnNDdUh2aHhPSHNxdz09?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 c436fa6b-0292-459f-ed31-08d989a87692
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2021 15:38:08.8776
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 LrrRyziFY7FGVaUsOkguslgFpS4sFGXraUOUQ/muf5JIkPU17vopi94Y8xQQsBufsNnlYI6KpH3jebT1Dj/oWFQvbBOmEGu5u7ojgGJUQMg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4864
X-Proofpoint-ORIG-GUID: a13nzr4L9f6N1T2ZlHNR9tzNUT6ZFBYZ
X-Proofpoint-GUID: a13nzr4L9f6N1T2ZlHNR9tzNUT6ZFBYZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-10-07_02,2021-10-07_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0
 priorityscore=1501 impostorscore=0 mlxlogscore=697 clxscore=1015
 adultscore=0 mlxscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109230001 definitions=main-2110070101
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Oct 2021 15:38:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54985

--------------CAEFFAD68D512B7C90521E41
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees:* Diane, Joshua, Kiran, Michael, Randy, Richard, Ross, Saul, 
Stephen, Steve, Tim, Trevor

*ARs:*

*- *David Reyna to update Future/3.99 Toaster bugs
**

*Notes:*
*
*
- Stephen and Trevor will both be unavailable for the October 14th meeting

*Medium+ 3.4 Unassigned Enhancements/Bugs: *68 (Last week 69)

*Medium+ 3.5 Unassigned Enhancements/Bugs: *12 (Last week 10)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *39**(No change)

*AB Bugs: *64 (Last week 62)

--------------CAEFFAD68D512B7C90521E41
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees:</b> Diane, Joshua, Kiran, Michael, Randy,
        Richard, Ross, Saul, Stephen, Steve, Tim, Trevor<br>
      </p>
      <p><b>ARs:</b></p>
      <p><b>- </b>David Reyna to update Future/3.99 Toaster bugs<br>
        <b></b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <div class="moz-text-html" lang="x-unicode"><b><br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode">- Stephen and Trevor
      will both be unavailable for the October 14th meeting<br>
    </div>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 3.4 Unassigned Enhancements/Bugs: </b>68 (Last week
        69)</p>
      <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs: </b>12 (Last week
        10)<br>
      </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>39<b> </b>(No
      change)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>64
      (Last week 62)<br>
    </div>
  </body>
</html>

--------------CAEFFAD68D512B7C90521E41--

