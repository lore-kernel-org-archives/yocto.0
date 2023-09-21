Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EBAE3E7108E
	for <webhook@archiver.kernel.org>; Thu, 21 Sep 2023 15:28:53 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.21056.1695310133382225157
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Sep 2023 08:28:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=kYwsRNfw;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=7628c7285b=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38LC0cVG010520;
	Thu, 21 Sep 2023 08:28:33 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:message-id:date:from:subject:to:cc:mime-version;
	 s=PPS06212021; bh=/3S5PdADSxlLg1/EaVptVJHxhOp7K/HBWCj+NgkJTRw=; b=
	kYwsRNfwzttyB4oDdx6FfaL8RL7U8DBQVXsjnwtU4klLQvb+QnawwKeOI0NSNWjn
	j8+zCXx2P8OpWJp9gVMAeLB4hxx+Mx0V257Gedh+kW6w4tMHshwc/IvBWDLHWGbd
	wUQWhp0pNQfaugeS7/iJdtuGJHLUPuUcilhqGG9o3suz2bRJef3+ac9mkTu6I1ZD
	i9tduy6JkBTH1KBeIeOTugaFrEypNkd4/yfWW/oW7koBxIhjnezQhp5MIzBd5zAu
	SYtGQHJO/HqmBDDKH1xjkcxuMINqSArs6fvZsmSeVmgrQSUkm/rN37PJYJMGaiSF
	xDecAlowynXQIyVErv/vjQ==
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2100.outbound.protection.outlook.com [104.47.70.100])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3t5bvfvefy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Sep 2023 08:28:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ogshwUgAKhvFlKYRO7jBTWHtLquXb6MdXgXVb0Xe2PcLWZGoAbsM5lN5ITu6sCQMzd4oEcZh+OJCYgKHgujMY2uPAulKm/N1w+3x0e+4I9Ce5qcW355KuvZN0JdXtMtx92NZwvAlEss5oTmJ8p0Q6pk5D8dFtGU33eAh922aRo26IJcDf/TxnmEbE/dvmwLbVwdbTsye0JbWaAThziZWaMM+L0qCIDKGwtIvz55FfKUfroyqQAkAl7xL+H+485mQN+cw1Wm7yGz/yDiu31RtF3K/OA3NqjLAIi1r6XBFrOK/h2Jg6jd9K9OvcUEDPV9H5Pu98fbMye7cGodcIhowYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/3S5PdADSxlLg1/EaVptVJHxhOp7K/HBWCj+NgkJTRw=;
 b=h9SXErKLn4W0rP6z7UjXu/i8qPd1ZYwatVlv6s4MhZkJQU5jj+IEH+kNbYG5SjeDOE2hU0PkZj8Hm/eMSd60TCFcGqLM4sPlWTZIP3DVmhdAWz4LCmS0jP8qrlfnuukERZ7e44f7f2SQWl0WlsTogUErM+30jOls/or/uegKxhs05+orVUvLPztL4lPR0N/QuMpx7IEe3aiuEDnUPrun9GM+q8HaRLC7mTIER7617Uz7Yg0JoLlclyAQoHszaCXnZ6bc5XDDt1Ibq0PK+58e/XnAf+eDRCEMZ/9UjvAFxuFfBETy6IySiB8yjUrt1HuGWQzrPYCcyU4J7+6xaHurBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 MN6PR11MB8147.namprd11.prod.outlook.com (2603:10b6:208:46f::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.24; Thu, 21 Sep
 2023 15:28:31 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::4044:65c4:486f:538b]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::4044:65c4:486f:538b%4]) with mapi id 15.20.6813.018; Thu, 21 Sep 2023
 15:28:30 +0000
Content-Type: multipart/alternative;
 boundary="------------0fMiKKptjRNBxHCeFFFqX3Ya"
Message-ID: <98660d41-456d-6484-1ab4-f79bf487d07f@windriver.com>
Date: Thu, 21 Sep 2023 11:28:27 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 21/09/2023
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
X-ClientProxiedBy: MN2PR18CA0028.namprd18.prod.outlook.com
 (2603:10b6:208:23c::33) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|MN6PR11MB8147:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d9cd727-f813-41e4-7956-08dbbab768f6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	JJ0EeJ07Jx9yTBCR2Mc5pc127H3EPxdDJ1J6eFOvqI3zuza3Fm3OnBrZgxPpv43/bFLHQr4ZzI423W42+vrEkfATNARRFiTPeG7Gfj1Yqv2i5TRpuCMzrtkGmTduSqFCZ14kxrDjdpmN9V0SLSgeqtaF9RUQ4dxskNFIMqsCMXkCopxgPuXu6fvTxnZGg9CZR/piyNAxI8+bPr5auLvkfFQmIhXrJAUIPurCJRN+hJG6kvHMK5eVO2bX3upEWMMIh/KlENKaCXG3L+vsPXYGjX3EkQzNWYk+DohG1k9FTbBKRHNjjr2njD4X6bL7wiV36xKWfj4r8CN57Jj3PdbckV14ss30hZrTiUVoeqY9WXk1QZB/VsyuEccCxUiJUyz89wHXk/+a24MNvVZdXk6BM9A7JML4puEPia6rPm5CaApi3POBtrZTezl1srhmE2+qmw0La6ltvMGYlrRr/gDpQrS2WjPKTPOBLqtMgCMT0yaoFmnraiK82stzFfWkIGSP2ujnyu9tZuZaqLHE2qRD/bGgz0BUjGTljr9F3a000xzb6ol9ksFXrDaC9pWvfqeccUoLjptnKVMtHLxiddHMkJI44YVTF1cs91MeX+I6bvy6zz9TuRaXf/RQVw0Z41qR2KdQJROEg/BjX2GrVyZOkw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39850400004)(136003)(346002)(396003)(366004)(376002)(1800799009)(186009)(451199024)(2906002)(7416002)(31686004)(5660300002)(44832011)(4326008)(8936002)(41300700001)(26005)(966005)(6916009)(316002)(66946007)(8676002)(66556008)(6506007)(66476007)(6486002)(478600001)(33964004)(38100700002)(2616005)(6512007)(166002)(86362001)(54906003)(31696002)(6666004)(36756003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MmdOLzFRc290OUw4aVpnYlJiMkdYclZ3Ym5jODVwOVNkUW01RXFjZzBYTEFR?=
 =?utf-8?B?VzkyOGdxUFU1dlJvVVJodjVTMm9mTmYzSy9JZXhQM3R0VEF0OVZ5dGZBSnJ1?=
 =?utf-8?B?SWxoalhzS2VmNStiZlZUOGtaeEtrS3dqejBHVzh6Mi9GNGNjeWdHL0I0SFFD?=
 =?utf-8?B?d2FWVnpJN2VoRG04K1o2dEhTYVVqWVRiaitEV091R1lVZ3c3VGh4TVhKMXhV?=
 =?utf-8?B?Y1RHaUEvelFGaitvcFZOOUhMMUNIVmhxME5DR2NhKzgyeDErVkFxMWd6VDBk?=
 =?utf-8?B?dXFJQmZsOWNaYmNpTFNHOVpmS0FHYU5wQTd4YjZ6RzhOR0VJU0ZpaVpNVHF6?=
 =?utf-8?B?Wjc4Z0hFVnJmSCt4RjlSZVlSaGxMSk8wNFFlWUpOaytPRERIeEhYbXBzN1pJ?=
 =?utf-8?B?eHg3dzFySldQSndKTjBDa0pObGlpUXFFb3d6dUc5cFlma0F2Yi9SWTVhazRY?=
 =?utf-8?B?clgwSEpBZGlxM2pjbkkrc0xNSnZMOTFIc3Z0WSt1amtDdHpwaXhVakdJY0Vy?=
 =?utf-8?B?ZS9CK3g1Tjh5ZFZoRE5aZi9JazMyeFhycUdnNHVvZFVIc1RWdzI5VmViT09l?=
 =?utf-8?B?L3N3TTh0NWhMckFRYUg2NU5Ra0dJdlltNkNaZWFqMmFwdkF0NC9lTkZIVHhi?=
 =?utf-8?B?TU9yOHVWZUtZV3VjUG1VbGlzVlZwRk4xTWQ3elBMbTNpMXFNKzM0M1o2K0RU?=
 =?utf-8?B?RTdEZ1M0ckh0ZVc1R0E2R3piYjB3ZEhNcVRodjFJRnFyRVo4SUNIYTRYRzA2?=
 =?utf-8?B?bTJwSy9oM2R3eWg3SUlyenorVTltdDJLNy9EK1duSE93bnhNZlBjTklzQ1Nn?=
 =?utf-8?B?KzNacWFTNFh1TTZhYzRTY2dieGVHZE5XT0FrM3MrK1JmeUlra2p0WTU4bFlh?=
 =?utf-8?B?cjdxOHB5WmJQUmtWYitvSHY1OHlWRkhsdW9wRUt5SDZTVDN4cFVnd2ZzcUQ5?=
 =?utf-8?B?bGJKaFIrZlhOc2dWbDNpUGx5cFVwTDVjLzkzaVNkQkI5Q0Rwd1N5SllDNUMx?=
 =?utf-8?B?SFZYRWhNTDA5VEN2QUd1Ti94RzVtVmNjUUNZMWJabTJKN1k2T0NKdU9RdHdI?=
 =?utf-8?B?QWRBcXBzLzhVMEs5SW5YcUw3ZHVMTWlLd0VRbzFTR0lHK0lsbzBQNVJ6aWtx?=
 =?utf-8?B?NXUySXBhYTNJcnJiY1RjUG40cXlmSkZ4d2sxN1lTRFdKZlhod0xKWkFXSFUx?=
 =?utf-8?B?WWJFZjRmekdCdUFkRTFNUkUrVW1FbUZwT3JZekZjSW9haERLSW9ZQjNOVUdQ?=
 =?utf-8?B?SGgrN2tTbkJ5c2s3Vk5uWldSUnlVd3FTbzJmZUM5T3B5b0wrZCtseXZnd1lu?=
 =?utf-8?B?OXltK3NxYndUV2lDbmpwSHEyYzVXVWtnaHJMeTkxRWJrdUpRbGZRdXlBR2hq?=
 =?utf-8?B?VGxjemY5cnd2eFQ4OU5zWVhFMitKOGh6b2EzYmc3bWxWRG9wTE53L3ZyQmZY?=
 =?utf-8?B?a1Y5cHJjUHdUQTNrR2dGQmFONnVvMmpqK0lMU0wwem5jWGlYWHdGOVNETDMz?=
 =?utf-8?B?VFpUdTFMOU5Cek9zTlJDZU1sa0drL05uTmI2UFpoSGwvakRyZHpYWjRGYzNS?=
 =?utf-8?B?eHdiT2huc05QMTFQVGc4VXBraXAyeVhlUGFvbGxJdEJFSXZDdVpzWHg2ZXpL?=
 =?utf-8?B?S3NncHB6MTAvUVpjZFhRL1EyUjNOVnR6SW0wR3p4YWE4VUY4ZWJiOGdaaE1Z?=
 =?utf-8?B?ODVWazI2TW80OUgwZEd3UjdkNGRHSXY1NzUvY2xnencwdWJSQXVXTUdGQTU3?=
 =?utf-8?B?VTBGS1lsNTVrWjZOVHV2aHRsd0U5MUlyaHYwNjYzaDlpeWhTMTZaWlNpODVx?=
 =?utf-8?B?Mm5kUGRzTWhnTmd3MGhJT3preUZjellmdTErV3lSRWJ0dXZMSzczenZCZUVx?=
 =?utf-8?B?QW9JYVBPQzFXYXpTOXF2cXMxK0dXWmcveXNjSFpDUlJ5Yi9ZYmt5VTZVa0d6?=
 =?utf-8?B?N3FmZnE4MlFSakpYSkhGaTBGdjZFR3BMYlJhQTk0dGJESmo0dFJYMkMwUUJx?=
 =?utf-8?B?Zy9jeHZMUUtieXUxL3NBY2RqSE9QRWRsLy95cVN6NlRSRFIxSjQ2cHpRNVVx?=
 =?utf-8?B?VUUvV0NUS3RzWTBJUFJPTm5ZdGVJUndOWEFMNFFKWWlkb3d1WmhvS0NGZFNq?=
 =?utf-8?B?aUl1NnBTN2VhSzVZd3BLSFc3SVArcWlMVXloZHdUMDVldWJvZTdoK2JpTGxh?=
 =?utf-8?B?cXc9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d9cd727-f813-41e4-7956-08dbbab768f6
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2023 15:28:30.7098
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wZvJQ+Pq1+OSkLZ6I0DJuC1iNIV5ATmijZtMW754OYvHbt3xbcvabD2UVAhPUMCnaiHRO4PbNo4FEMzpQGYoSXCv47R8Mk+2kJKfEV78R94=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8147
X-Proofpoint-GUID: mVy7cZhSkOu15qrinxJ5YAIdDrrQiaZy
X-Proofpoint-ORIG-GUID: mVy7cZhSkOu15qrinxJ5YAIdDrrQiaZy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-21_13,2023-09-21_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 lowpriorityscore=0 priorityscore=1501 clxscore=1015 impostorscore=0
 malwarescore=0 bulkscore=0 mlxlogscore=843 phishscore=0 spamscore=0
 suspectscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2309210133
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Sep 2023 15:28:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61068

--------------0fMiKKptjRNBxHCeFFFqX3Ya
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Richard Purdie, Steve Sakoman, Stephen Jolley, Bruce 
Ashfield, Tim Orling, Joshua Watt, Ross Burton, Trevor Gamblin, 
Alexandre Belloni, Michael Opdenacker, Antonio, Yoann Congal, Pavel 
Zhukov, Edi Feschiyan

*ARs:**
*

*Notes:
*
*
*

*Medium+ 4.3 Unassigned Enhancements/Bugs: *66 (Last week 67)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *41 (Last week 41)

*AB Bugs: *66 (Last week 74)
--------------0fMiKKptjRNBxHCeFFFqX3Ya
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Richard Purdie, Steve Sakoman, Stephen
        Jolley, Bruce Ashfield, Tim Orling, Joshua Watt, Ross Burton,
        Trevor Gamblin, Alexandre Belloni, Michael Opdenacker, Antonio,
        Yoann Congal, Pavel Zhukov, Edi Feschiyan</p>
      <p><b>ARs:</b><b><br>
        </b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes: <br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode"><b><br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.3 Unassigned Enhancements/Bugs: </b>66 (Last week
        67) </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs:&nbsp;</b>41 (Last week
      41)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <b>AB Bugs: </b>66 (Last week 74)
  </body>
</html>

--------------0fMiKKptjRNBxHCeFFFqX3Ya--

