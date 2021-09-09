Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web09.82.1631199950965659742
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Sep 2021 08:05:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=N3wS10Vw;
 spf=pass (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=4886848d7d=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 189CO2Bh008312;
	Thu, 9 Sep 2021 15:05:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : subject :
 to : cc : message-id : date : content-type : mime-version; s=PPS06212021;
 bh=hi39cbjjN4nWrNEjESfM7EreS0r7EveTS5x33PD/bbU=;
 b=N3wS10VwbxnUxPNGOyCYqhcuGzpfdWp6lBgKhE1bEZ+3KF1JevWbl80F0UKyg34O+yfB
 cdqap5+/vOfdUtJvZGFsPL3RaOh7Y9ijaI8p+87gz/PVSotpouI4gQfpdXDfJ4kiw7XL
 /gvpZs38vtMpwYhPugOydWs4/8NQW3uSWok7AXYtuozH3TPCKqvOHDp0JY1J1x3o296y
 2B/owD3coc/JOP/jazHLNXizQqJWrTuvmTquK/lW0w4ZR3nVFoZVLuaOGk+YKTKZj/+j
 IMSc7CKURFYSjK713jKesZaIWt3apNCHrlNTMaF/k/4vyfrKIkyYCvyrEGsnLQFH9jE3 0Q== 
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2169.outbound.protection.outlook.com [104.47.58.169])
	by mx0a-0064b401.pphosted.com with ESMTP id 3ayaf2rdby-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 09 Sep 2021 15:05:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q2X+OMb/9G/mS1NIRpEEu0LZsMN3shIpgzA9dzcrrZexhYgA3O/UurOIO+IooFIKOQRgtWpmPqnKKi6xUYwZs5Rn2zNs3cU2xX0GpV2LJEz/SQRFyTxbCTLe45NGFtXrqM19ngGZdugqzJEk1fCKo1cH5nisoBc2b8hU5AnG484KVm5l1kG0gUE9U1BIqnQWfOK7XcuD986CbsveXTBetgnMwk6dWyOYda5ggAgACxWrQr6YtR8mvxHFfRGxchZ9vmq7U3P6y2ZLmONJLYYMiQMBb6Kur0JpvI+MHXFJfQ4WO+OfZBrbfKVDoKfnQh69FZmrPLbf1kBF+nJdjhIHnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=hi39cbjjN4nWrNEjESfM7EreS0r7EveTS5x33PD/bbU=;
 b=BkvZZfZZgXEQrOKxpgPxLKHmP+01onZXBmb+xAkrkSZ9peu7SabNCTg71un/0+daiwBUw/HkoJmavaaQnhHyZpGFLPbCLtvx7Ug9qskFdJvuVLFpWKSZsZaYdA6ydwXaOzgvdKPGHM4pt2JjBN8rj4YjaSHyRkeklZ08zA283UtW1alW6J4V2j12uuWOPHWs1A2ok0JuqHR8f3EO10Sop/WKHE7LgTSKYTHMH/9xknnR8ggqdzEbYZCKXi+YHsevakpJjNPL0e1fXlKG80No5Th7W0Uo2liE6OXMR7EMX3TkdUHV2HRr3L8oj43cG2hzzpNAmrkapRGx0Kb8oPQBlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by SJ0PR11MB5006.namprd11.prod.outlook.com (2603:10b6:a03:2db::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14; Thu, 9 Sep
 2021 15:05:37 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::fdd3:dc0f:a385:34d1]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::fdd3:dc0f:a385:34d1%4]) with mapi id 15.20.4478.025; Thu, 9 Sep 2021
 15:05:37 +0000
From: "Trevor Gamblin" <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 9/9/2021
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        trevor.gamblin@windriver.com,
        "MacLeod, Randy"
 <Randy.MacLeod@windriver.com>, steve@sakoman.com,
        "timothy.t.orling@intel.com" <timothy.t.orling@intel.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        alexandre.belloni@bootlin.com, Ross Burton <ross@burtonini.com>,
        "Wold, Saul" <saul.wold@windriver.com>,
        Bruce Ashfield <bruce.ashfield@gmail.com>,
        kiran.surendran@windriver.com
Message-ID: <1511ca8c-7e82-0eb2-383d-4622978d194a@windriver.com>
Date: Thu, 9 Sep 2021 11:05:33 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
X-ClientProxiedBy: MN2PR19CA0054.namprd19.prod.outlook.com
 (2603:10b6:208:19b::31) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
Received: from [IPv6:2607:fea8:c29d:d7c0:fa88:8bc5:c0d2:27cc] (2607:fea8:c29d:d7c0:fa88:8bc5:c0d2:27cc) by MN2PR19CA0054.namprd19.prod.outlook.com (2603:10b6:208:19b::31) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14 via Frontend Transport; Thu, 9 Sep 2021 15:05:35 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a050f682-782d-40f7-e036-08d973a347a6
X-MS-TrafficTypeDiagnostic: SJ0PR11MB5006:
X-LD-Processed: 8ddb2873-a1ad-4a18-ae4e-4644631433be,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
 <SJ0PR11MB500605AE85901D996364B8929FD59@SJ0PR11MB5006.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
 FMen18fS7NeUQRiabM2szr++WTxA49nepGdKevjqZ3sCqBfVChVXtRQSEf4HVGpRsNzBnrk/cQVKC+yG7bx7B+3YZr19defhVzWtmfdePdvJJWgbEhNVtIu5mE7PO7C9NyvtiNs2fMySxpe17ftZXAe4nu0en1rI18wNNpEHYvKHRBSP+7ROOForUL07lF+7VHCKCYMZhMJZOYsR1EavfDMWm5FVRILXzn8wUkaXhFEXl4oDdurOo2zFU6Nor55kS7fVULS8Vgp11cEUlexu8WWO59Y56LBGfIrJjU5Hn95nNx4UOqoYcLDaaWMN5DYSXfJMBTljOvBpVHT6IPpWkkthio2SiM9uoinNPnBi3uRIaWknSGB1NGtIhqkZR9GgNWwaZSq890rJLhBAtkbtP9tSSZK3coof4NCbJX8COgBRJBom2mS5HhzyNLkY7ykqAp8zyH2V6Dh0nN1NN4cFF7ogY2stpUcm8lOrhyqeRR4wjFIEbX5ifoTbjeZbOj0J4LhBMDw0jZMj82uR286rR8vWSs9XdsF/qhpbLvI71WB8rxSQnhsySsuQWxHOfqHs8RbobkxQjP6Cfmj6isjvHZ6TrrrwjmOYLIV3kRxxxkglMVVLgcG/rCqcKGMtO/Tyaq4PE5oJTnynQu6WMZohFD4QLThjUL7gmjr7Wn7aqQl+nUZW7/r78FA1tLgu7dmYxg6oNcdXTHY/2ukUbPVEvZUHLiOvQSTVKkkldaCOEXeUENO8q0vUEo0giCQVcrxj0k2QB5TjFuX2T0n4eRfoKwPIhBDt5144Z1CcVkoi8gcHx/4n2hdcEDC/UZte4mJG+eF9mZtQ8kbodIgtsE67rBQftcnNYIzoK1ivZxnVEKU=
X-Forefront-Antispam-Report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(376002)(396003)(366004)(39850400004)(136003)(33964004)(66556008)(107886003)(38100700002)(966005)(86362001)(5660300002)(6916009)(66476007)(166002)(83380400001)(6486002)(31696002)(8676002)(44832011)(478600001)(316002)(66946007)(186003)(2616005)(36756003)(2906002)(8936002)(4326008)(31686004)(54906003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
 =?utf-8?B?YjdMSlNkL3BLKzRaU3JWS1lkYVBLQ0Z6enhVcytvb29oaTVlbnh1YWxFY1hL?=
 =?utf-8?B?bm5kQ2VHUmt4aFZneHFzY1ZnMTVVN1M2b2o3eFZYMjhIODc3YzFkWkFJYmRt?=
 =?utf-8?B?NURGK0RWY3JtY29vSUxPMzBXQlVDa0JjdFV4U1ZMY1V3VXJYZk8zenA2WFMy?=
 =?utf-8?B?czZGOEZWbVA5MEZMSXZ5M045aE9WaS8xcEJCVE1odVRvbFRUajdPcUkvaCtC?=
 =?utf-8?B?U1M0V2lIQncwdDZDY2JZMEZpVGdmQmJ1aTJGUGNOa1U0SEtpaklPSmg4Zy9X?=
 =?utf-8?B?a1FSeTlHMzZVZ3FXWVRhbkJoaWNvTGtEMFNLYWM4VDRIM1RQQmswQ0ZWWUYw?=
 =?utf-8?B?ZlpDUk9tUnRpVEhrVkY5eTRlNGlUMXBBLzhsSzlGNWNsM0VJa1FJL3ZXVjgz?=
 =?utf-8?B?aUtKTkx5ZllWTndLbTlXUlpCZGRGWkpBbTRlRVpwdGhiV1ZzMCttZEJiWjU5?=
 =?utf-8?B?bzZWZlBEa2RaRUhYbzl2SWxRNjVVNmpteGVNYnNocGN1aFl5bW5jcy95YVM2?=
 =?utf-8?B?Y1UrNHJiMzNmYTFNV2FPOFJ4MTR6bWMvd2hQSmVYU3B1T1NnZ29OZG50b2tU?=
 =?utf-8?B?NEI3RkJGcVppREVRRDJQQ3lxWWdKbXBITmcrQllFaVQzbHQ2VE9PMVJFc2ZB?=
 =?utf-8?B?TWp4NUNydE9IUTZuZ1U4bVJKNGNxM3gzTEZqTk9tMmZoa2pmdHh4aUhXY0ZZ?=
 =?utf-8?B?TEpJZUM5eUdicUZtMkFuRCtBb05ncTBUQjNmSzQvS1crc1VtT3ZnQWQ1emhy?=
 =?utf-8?B?Q2lxOVVXZXA0TmxJc3ljYnorQ1dmaEo0UGpqL0cvME01cFhPbG5XMFpwWXJu?=
 =?utf-8?B?OTIxU1pvQlJaSjZLdW9PV1dMb3MxNEh4K0g1RUYyTFQ3eXpOdklSbEJ5ZmV3?=
 =?utf-8?B?SDZJTnZxWHBXWkNoOGxpQXU1SjJYZ2V3SzcyMkhta1loemMyWW4rZkRVdUlz?=
 =?utf-8?B?MUV4Q2FzbUpia0hXM1RRMm8zU21maDd0b240T1pQRjAwWEJ3RUZpUnhXL0Y3?=
 =?utf-8?B?YXluRjlJRG9oTUY3bzZYME9HOEVYT2g4YXo2TFRXZmhuWkhKbmd2UEVwbFZx?=
 =?utf-8?B?K2tCc2ZKWW1RV2tUMHozUXBIWDNmUDdiaXYwc1R3WTloNy93K2lHa1pFMDFK?=
 =?utf-8?B?MmtKWkpheDRJeDVKdXUrd2UrbVUwT0M2bXlEU1ZMY0dpa1lZL25QWFVYRGV3?=
 =?utf-8?B?c0dKdEhzSjJBSEZHS1FZc3dCN3JRalVJbFBNODFkRC9HRHB3N0dpUkFyeGdo?=
 =?utf-8?B?RG4zR2ZqRE8veHJSN01qZGk1c0V6a1Z4ZndrN2p5L0hiL1pMU2Ewa3ZGNnND?=
 =?utf-8?B?ZW9hQUYrRWVWZ0o3YmhFSGtUV3lXUWpyUWFLUnFMNWhMRThuYzJxQThhSW0w?=
 =?utf-8?B?OWVFOGhVdGVkMUNjd21COUdqRDA2OG42M1ozVHkwRnJFWVRPaC83S0VINVg0?=
 =?utf-8?B?d1A1R3hhT3Npc05mWi9Zc2hoWHBOMW9vZ3NVSVVlOGRFbTRtam5wNittaG5V?=
 =?utf-8?B?VUtzZityNmk2WCtFYWpxajM4K3oxZjN6bjdISnhEcXd6SGFsZUY2SmdhLzVS?=
 =?utf-8?B?VFFWV3ZNT3pHMnV1L3lGVEJvRHBVNE80VkdmS0pyZjQ1N3pBTjN3bjQ3WlI0?=
 =?utf-8?B?dWo2UGZNV1FkRmxyZ25IUldwOXZPenNiVko3VnBLZzJxQnVaUmNxalc0MlJ1?=
 =?utf-8?B?QmszanpNY0xBMnc3ZDBCZEJCSzZtUWYwN2hKRWhuRm9pQjlMQ25tU1k2NmFG?=
 =?utf-8?B?c01GVnRxcm14ZjdCZTBUYXVOUkxWZE02QW02ZGNrUFpKbGRvbEVGR3ZZTHZu?=
 =?utf-8?B?ZlNyaG1YVVBhTkUrZnFLRVlOOGQ0d0pOZnh1Uk1wdG9vNW8xSi9CeHBQSkta?=
 =?utf-8?Q?v+gu6fJidwrAp?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a050f682-782d-40f7-e036-08d973a347a6
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2021 15:05:37.0886
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: znhUzl5HAYd+9y9F/ZsYl/a1TWqdZ+yVY+aJy2JFxriy++MxvNptTA6ig8TSlVZDGoixKhNSqP2gQTIDuXyivvKZxbQ4/xIxniROcX79eJQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5006
X-Proofpoint-GUID: AakTiEKI-GffcaUNX5ACx_Hemef5mYpD
X-Proofpoint-ORIG-GUID: AakTiEKI-GffcaUNX5ACx_Hemef5mYpD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-09-09_05,2021-09-09_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 impostorscore=0 bulkscore=0 malwarescore=0 suspectscore=0 spamscore=0
 lowpriorityscore=0 mlxscore=0 adultscore=0 phishscore=0 priorityscore=1501
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109030001 definitions=main-2109090093
Content-Type: multipart/alternative;
 boundary="------------F6BC615DB26D1286B1E676DD"
Content-Language: en-US

--------------F6BC615DB26D1286B1E676DD
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees:* Alex, Bruce, Diane, Kiran, Randy, Richard, Ross, Saul, 
Stephen, Steve, Tim, Trevor

*ARs:*

- Randy to move AB defects to M4 after call

- Tim to file a bug about improving ptest runner timeout warnings

- Stephen to handle 3.4 M3 unassigned bugs (move to M4 or 3.5 M1 if 
enhancements)

- Trevor to ask Alex Kanavin if he could help on 14518

- General reminder to review Old Milestone bugs and move as necessary

*Notes:*
*
*
- (carried over) Steve encountered build failures such as the one in 
https://errors.yoctoproject.org/Errors/Details/593109/ when attempting 
to run dunfell builds with the PARALLEL_MAKE load averaging added. WR is 
testing/investigating on internal Autobuilder instance - Trevor is still 
planning on looking into this!

*Medium+ 3.4 Unassigned Enhancements/Bugs: *77 (No change)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *38**(No change)

*AB-INT Bugs: *49 (Last week 48)

--------------F6BC615DB26D1286B1E676DD
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees:</b> Alex, Bruce, Diane, Kiran, Randy, Richard,
        Ross, Saul, Stephen, Steve, Tim, Trevor<br>
      </p>
      <p><b>ARs:</b></p>
    </div>
    <p>- Randy to move AB defects to M4 after call</p>
    <p>- Tim to file a bug about improving ptest runner timeout warnings</p>
    <p>- Stephen to handle 3.4 M3 unassigned bugs (move to M4 or 3.5 M1
      if enhancements)</p>
    <p>- Trevor to ask Alex Kanavin if he could help on 14518<br>
    </p>
    <div class="moz-text-html" lang="x-unicode">- General reminder to
      review Old Milestone bugs and move as necessary</div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <div class="moz-text-html" lang="x-unicode"><b><br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode">- (carried over) Steve
      encountered build failures such as the one in <a class="moz-txt-link-freetext" href="https://errors.yoctoproject.org/Errors/Details/593109/" moz-do-not-send="true">https://errors.yoctoproject.org/Errors/Details/593109/</a>
      when attempting to run dunfell builds with the PARALLEL_MAKE load
      averaging added. WR is testing/investigating on internal
      Autobuilder instance - Trevor is still planning on looking into
      this!<br>
    </div>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 3.4 Unassigned Enhancements/Bugs: </b>77 (No
        change)<br>
      </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>38<b> </b>(No
      change) <br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB-INT Bugs: </b>49
      (Last week 48)<br>
    </div>
  </body>
</html>

--------------F6BC615DB26D1286B1E676DD--
