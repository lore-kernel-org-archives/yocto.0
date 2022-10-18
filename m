Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3819C4332F
	for <webhook@archiver.kernel.org>; Tue, 18 Oct 2022 16:26:11 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web09.9350.1666110362740017735
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Oct 2022 09:26:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=BiJ6ORx1;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=7290968242=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.5) with ESMTP id 29IBtZfx025851;
	Tue, 18 Oct 2022 16:25:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=hPpdvYZJOwGXNt8grN8LG2kJRZORaAfl0oiploEPXwQ=;
 b=BiJ6ORx13f4BddmF9jhWYzrRSDfAlQVkITjcohD7EGj2/F9aHwoP5Lm4o2cC9vj8Iq6d
 IXTN3UStZdxCkxOsqis/nSya3PCn6ut6F3abveLiLD+LgE186GTSakAlCxg++3B8Ys6I
 TE9+tI4K/CTXxwIAE+KEWytcTGWoNDhfVK47RAj2ZcGE9xqjbgHQO/+vcSELYHB4m/AU
 vYsze7m4dRxN8S8PWDP+bf8C6zTmUwnFNNPAlUg5cYNIiGKhLwzZXP072K0sMAIL8yIO
 zK3aPJuEqrE+wL0aWxlYveS0V76Hly05A4yXrF3XUOcRSfj2ghA6j6vs0Zu634JiYAdC tQ== 
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2171.outbound.protection.outlook.com [104.47.56.171])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3k7ku9aq8d-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 18 Oct 2022 16:25:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cRJLJ+9ZUS+ctLSDoa9xQaQ+nbFApNT20XZnmXlrsfdWnMokuQt1oUk/3zfygsKtts7W5f4FZu2ahf17WVm5GrxwNGfJZIgpTV3GCO41itg+D1pznxHK89ymHgZhmyUpEyKOcMtT9Ii+1WMzB2x5095c5xRlm/zQE5tW/0Uq7EgWbm8iIAlPwD6nMneWZQbPyJbe2ntzYCgkqpAsN75TwWxBfcWRPZDPVq1kYW6aCkNfJoiLvgb4uaNTf/CeVs4wQ6xmoUKIagfwRSfWROv2ZICDWbZeLkh95p22eOY7AqbLpwUOyYpyAg90feC+ydto9D3iLE6GIeJBwAG4alOCYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hPpdvYZJOwGXNt8grN8LG2kJRZORaAfl0oiploEPXwQ=;
 b=n/dtjgpOt/0uXJPS/VVNwckJUeuWJX7huugG8X6wEe8lL9fwefH5Tm/ms0eVCFHODT+QvKUM7aFWQ95oTqVD3MMrJNLMuF2w2C+mY+1ONlfKNP5PShHYhN5NBbrxw7FCCoeV01nNt6J2r2VuVaq1Pbni/iBH9vo4Nf3YM9b5Lv/hKVg7wRmiobtNcDUPXNXCAN5d9lKybJ86gCrM1qr31bJXzTeGuGPPQgsEBYl3yeNifuXa0IvntMtmWhYnRevr5drtGY0FYIncLO+7DrSq/Il1O/7xTlfFhd2rUEl5sFNZvPe55IFI4V67AjdnhehLjcD/KOd49Pcz46nsP6D8hQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 CH0PR11MB5540.namprd11.prod.outlook.com (2603:10b6:610:d7::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5723.34; Tue, 18 Oct 2022 16:25:37 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::1ce1:924:d5fb:7438]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::1ce1:924:d5fb:7438%3]) with mapi id 15.20.5723.034; Tue, 18 Oct 2022
 16:25:37 +0000
Content-Type: multipart/alternative;
 boundary="------------ciFO9k9Rbu9ewtfXZ77FbpjP"
Message-ID: <9e9d8ca5-37cd-687a-f7fd-ea322ea1f5b1@windriver.com>
Date: Tue, 18 Oct 2022 12:25:33 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 10/18/2022
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
X-ClientProxiedBy: YT3PR01CA0003.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:86::23) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|CH0PR11MB5540:EE_
X-MS-Office365-Filtering-Correlation-Id: 27f651bc-59b0-4cc1-ebca-08dab1256375
X-LD-Processed: 8ddb2873-a1ad-4a18-ae4e-4644631433be,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	laPUrFVC6wNBljvKDGi4O8TgkzXBeVWU7lGrJZAgscq36icF1qhfi0oEKgfWHi3x/alORzpzUYMNx+lFJtBSeU+hqotaSYBiUopZ+/F2FnAllGNlow8GBp33zuWQYhh9HFAx4wf3scykzWPYQL8Jed34yLbDWE64kXteaA7HSvT7znDAN+0jD6kBo8V71Hv4YagQFi1CUIS1ZeKHCLkiSCYnWBqaRvrgBRfiv5WuLjieE9I3V85R3tacpI76jh/PzqlyKw7VcPfaMiSdD8b56989CULdy2gSDl8LlIBWA0TufQSwuJ6yHmvdtN0b+W4PQrScEWlAE/9VRzTOqjrsUcKA4oueK5f/UG8Ka0QpixFmMOU4z7yQWdhnzsQTWLb9J3kZcrtK1nBNzKxk6Nn2YlkmThZHMgoz2u+C9ZDIdYxG7XFojoxVMiFCWnHxa1cqJ3hk09lEMkrM/XPUOe6gcsxu5OAWUELh/MczGkLdEVd/5JZRBJ/u8Z9DQwiJhMSlbyQQ4W+RXM7xiKf5eU8q7MeuMSrlfIRxPZatExolUNQTGPHJimpM+RezLrNcek1CTg9YOqFadciL/hLioPuCY6fMvbmUm/VEd1UActAqLR1WJEicJT8WCL8wjPbXdN7oMD9s4EckrHOGxaBwe5XhZl4Gv1xUQkP7B0HbnA8IKTlSogmYpfu8rKTfWBjSfAeCTCtc62xwZX3HPBCCRDtHmrA1km72MqS1GeuaWoxn8M7Jy3pep9BzPd0TDmRiVTjZCQkF3tx3Xqh/8tXTVRKMQ9TW4IXiaqf3uqfuHMzsPa4rprI+szwPGI4d6BGirAsq
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(136003)(376002)(346002)(366004)(39850400004)(396003)(451199015)(36756003)(31696002)(86362001)(31686004)(38100700002)(166002)(2906002)(7416002)(5660300002)(44832011)(33964004)(6506007)(6512007)(6666004)(2616005)(186003)(26005)(6916009)(6486002)(966005)(8936002)(316002)(54906003)(478600001)(66556008)(66476007)(8676002)(4326008)(66946007)(41300700001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OFdyWmZPYzR2clVpcW1veGxrSkpjdnQ1Um1EU2JqUFB5emNmSkFwczFxeURl?=
 =?utf-8?B?eEdXaEd3WTNBVFVlVHB3K25JQVFYZVdKMlFWem05WmszT2tpOVlXYzNYWUdm?=
 =?utf-8?B?Y2RYYVBncFJQR0FXMEVzeW9HakwycTh6UWc5Z3Q4T25XTm1jOEZFMkVhR1Jv?=
 =?utf-8?B?bVQwZFZ4SXIrRG1vdkpCYU83b0xRbklTRVN5czRnNW9tZEV4aVIyUzlhNzlM?=
 =?utf-8?B?L3FCMVhjWG9Fc2toRVVXQnZXdUhpNXMveEtNYS9UY2FiRXBQR2NZWEdWMTdp?=
 =?utf-8?B?STYrd0docm5DK1NxTUxiNVA1RUg4T01oWWhnZFg0QmpUQjU5QmRFditOcFhX?=
 =?utf-8?B?RXdWTnpvajFTWElyTU1GVElSay9vYmlSdGZESXp6U2MwOElQUmRiOFJ5TFZn?=
 =?utf-8?B?TCtvZ2NvUVppMnBxY0Fab0hsMkZ3SlA0N3FTOTFrSzIwc1JLU3ZRREpGd21U?=
 =?utf-8?B?cnlmZ2ZWci9oZ0ZxSDAzWHlpZk8vMmNwc0NKSVhkVmN6d0Vhc2JRdDluYzIx?=
 =?utf-8?B?MGtRQTkzTi8rQmNJenJHbmY5MEVqNlY2V2FzTUlmL3lNbzBFTVJHaXlhK282?=
 =?utf-8?B?Vnk1YUVjdjVDMWNyRXhzRlMvaFV0SlkvRTZHRzluYlJYdmJXWlJiQkVsdy9t?=
 =?utf-8?B?Vlk2TkhDOGFWdngyYXkvVGVjTTJwckppRWdBNjhFdVRpSERNOEhwN1dnMktz?=
 =?utf-8?B?UDVVNnI0bmoyWWRER00zOThzaDhZVVNSVG1iRHdHbmFNcm9aOTQzaEJYZlRD?=
 =?utf-8?B?bkpHeVN5Q2RmM1ZuWVpiRTNDNGJMYVZVd05OQXVYakxLRjJkNGxkVVVaUUFi?=
 =?utf-8?B?WDdiR2wrYVBKVDA0T2o5RzQ0ZzBqcDkvTWZRSUhxbVdUQUxpbzJHL1U2RE5W?=
 =?utf-8?B?SEI4UGppWGVaTUo5SzEyM2E2L1FMZllIZUZSaEVBRlRDTURseGxGNjkzamZz?=
 =?utf-8?B?cHh4eEVCNktpVG5nSlo4OVh1UDk5NW1WM0M2OURWQnVHV3FXY0tvUkl5b3gx?=
 =?utf-8?B?QVNtdlNQbU95OFJMaCszM3paUVZSUkMvRW8rOWtsaGh5UGpQa2Jhb2xiM1hk?=
 =?utf-8?B?Q0VOdkJTYmQ3Y0ZydVJQNmdDd01YdFVndnU4azY3SGszWmdNUkJqeWNRSkx3?=
 =?utf-8?B?ZS9JS1c4RThUaTFwWmFRUzErVXI3dG1oRDQ5UDZIVEw4OWI2bGhINnNibHNY?=
 =?utf-8?B?Tzg5V3dKK3pGNXkzdlpVS2tVclB1enZHNW5WR0tQcGsxNHNmSWxwTVJEZmFM?=
 =?utf-8?B?SHNRa2RORlM5bHJidTluMUdJVExBN3NhVEtHdU5hakRhRFlNN3BEek0vTW9E?=
 =?utf-8?B?bUNVdmdxZTViaDcxL3FySnpkZEJ5aHhRR1ZuSTYyVnFGQlJrNWcyTUxZYkRW?=
 =?utf-8?B?T2xiSXF2RzVmZXA5OFI2VElydkUwaXpmOHpKZVFETUVkZzMyWHJTbEx0b0Iy?=
 =?utf-8?B?RTdpQSs4SmJIUHFXb2xlTU5lTS9MRFRBY0FMUENnZTRBS2pPSVAxQ2pGZ1NY?=
 =?utf-8?B?amJoZVJuNmtzZHhnWlNlM1lnNzVFYXI1aHZkaFFXeUZOanNoMEVQZitoamtE?=
 =?utf-8?B?TUs2WVdzd1lhakZMNVpXaHRDTW1NQmJJbVJrVUFoK1FzcWNIYTNKN0FIYnZK?=
 =?utf-8?B?bmNlS1lqdWlPSWNUSkR4MTc0czlHSHJlVGR0Sno1MnZCM3pOdmZZMWgxbDlk?=
 =?utf-8?B?TUtyMk83bTZCSVdVTWpnZFVBaFZQQTZsY0t4Rnp3Z2pseC8wcjJRMVZYSFhu?=
 =?utf-8?B?ZVlJRklxOHhFSkJLYmtDUXpMVnhKRm5GRi9SVzhkSW5IdTVxcC9ka0cwVkFZ?=
 =?utf-8?B?cFVnbWptZ0ovUDZqS3R5Vnp3ay9NNzdQcUJpL0d6OEVIdGhKRkRKejFxTXhr?=
 =?utf-8?B?MmFQaWdqOElTcHp0V2NjcVlsYWJmaUh2ZlBHVWhaS0xzRDFkYXlRbVFHYVFL?=
 =?utf-8?B?eTVraDhUeDNMMGQveFMrTHJLdHFrRGlNYUlQZkJnZ0NKUmNRbi9FTTlENnk2?=
 =?utf-8?B?RkJWMUdhQ0lRV2JLTm5vS3FkYXRxc0o3UFFyNmQvUlhFTy96QlhmY0F3UEJs?=
 =?utf-8?B?U1pXcUJKUVBCSWhpZ3p4VnlmT0ZaYUtuZjlIY2JOS1l1UDU1RDNoSDhJcytF?=
 =?utf-8?B?ajE5NGJsOVdnY0g5cFZBYVUzeFVkTHBoYXRjQWx0Yklzd1Z2L3lxd01iYnF0?=
 =?utf-8?B?WGc9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27f651bc-59b0-4cc1-ebca-08dab1256375
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2022 16:25:36.8643
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5Cryaba3WrNIzHWZ3Z7VnHj+hPam0yBfFPeCbAHFO/pxc035ckiPjtoUirKKMrIVuBC0m7K2weYrJD4nU8t167iceWwVYuriRo4gtzNabVw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5540
X-Proofpoint-GUID: OIuhWU4xKvkhzU4OQEM-t02SptKEYreN
X-Proofpoint-ORIG-GUID: OIuhWU4xKvkhzU4OQEM-t02SptKEYreN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-10-18_06,2022-10-18_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 impostorscore=0
 lowpriorityscore=0 suspectscore=0 bulkscore=0 mlxlogscore=931 mlxscore=0
 phishscore=0 spamscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2209130000
 definitions=main-2210180093
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Oct 2022 16:26:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58357

--------------ciFO9k9Rbu9ewtfXZ77FbpjP
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Steve Sakoman, Stephen Jolley, Randy Macleod, Joshua Watt, 
Alexandre Belloni, , Ross Burton, Tim Orling, Alexandre Belloni, Michael 
Opdenacker

*ARs:*

N/A*
*

*Notes:
*
*
*

*Medium+ 4.2 Unassigned Enhancements/Bugs: *45 (Last week 27)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *44**(Last week 44)

*AB Bugs: 66* (Last week 53)
--------------ciFO9k9Rbu9ewtfXZ77FbpjP
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Steve Sakoman, Stephen Jolley, Randy
        Macleod, Joshua Watt, Alexandre Belloni, , Ross Burton, Tim
        Orling, Alexandre Belloni, Michael Opdenacker</p>
      <p><b>ARs:</b></p>
      <p>N/A<b><br>
        </b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes: <br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode"><b><br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.2 Unassigned Enhancements/Bugs: </b>45 (Last week
        27) </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>44<b> </b>(Last
      week 44)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: 66</b> (Last
      week 53)<br>
    </div>
  </body>
</html>

--------------ciFO9k9Rbu9ewtfXZ77FbpjP--

