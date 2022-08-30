Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24ABECAAA1
	for <webhook@archiver.kernel.org>; Tue, 30 Aug 2022 20:23:36 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web12.17061.1661891013856656184
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Aug 2022 13:23:34 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com
 header.s=pps06212021 header.b=qGrQrMaJ;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=624153075c=randy.macleod@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 27UIimD4011586;
	Tue, 30 Aug 2022 20:23:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : subject : to : cc : references : from : in-reply-to :
 mime-version; s=PPS06212021;
 bh=6kCBIO5jKImEuvSXLKJfzEkbuKhOpgmWv/fjCN0PxGQ=;
 b=qGrQrMaJhRxYdx11+WqKWeVjBh1Ss0/lR20EDyd5+aX0cYFpCk9pUR2r3wvMV0jGdCuy
 lcl5UxSKdpjv2sIWBYvxbCxoAnHoOSgfQTuIFov8Wbubrwn6JTSMB2H8d0klE6/a49/z
 8mVVlF56dHGI7g7b+DRTGWUZKoJPZ/6Hb0U2BXV1Rn8mRn2BxMx9EgZYRp7ijkeOHW89
 tKjcnjc72pwmr1l3w4hOY7c8nS49+RU/SJ1/QWI4TWuJYDw2AeoXjvxAj+wH7AsD2mQS
 3h/+9sCwJ/MBjFwWUxwPCji+NVVKyr57jXd9rB+fx2VLNAVsdqKaCMsZLKt91zNGwtNh MQ==
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2102.outbound.protection.outlook.com [104.47.58.102])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3j78g2jyqg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 30 Aug 2022 20:23:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ajaHUfStHlsFmSgEcWqqD//7FU6swHYuz+5cbYDi740O0kD9imPNEZ2y6b4ssV2Lh8b2fcUYF4K9ZPXjwAF9Mm1evtP0I/ddlEgDnGkcX1WcbFFTG6gE5oy6dlEfHgOPDoBFQM1vG0NMjLezhLh/mRCwEQqNmBgGgzoVyiOfW7c+A9QtVmRyqsnI+nC91d4JVyLotEDD2rUdCSXNIufL8phoU03lHVOLX2fVm1DYMeLdtyi63I3K25JB189H8MTUvcD7QvBZh74+/uD2T0ctpOlMs5Sq2HqZSpr3hrNDfNvNnY6u4Hki5oZlpJk2gklB9MIfwFRk2KKYqptmUIRoyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6kCBIO5jKImEuvSXLKJfzEkbuKhOpgmWv/fjCN0PxGQ=;
 b=mc8F5wI5vv/NqpyB3/1jkQ5/bDxVjEWFkzQhkgaAic02A+vQ+3lfmKk6QhDJ4SRG7g5Y4cqUplK84sIXorcN/4owX8fZk81OnpCpOansbspoKZHjyvHCmoHGAO676DWAVN7rfOkZ2d2em91uoG+eC9d3B3Qiq3HumDcMG+KDOyH323O32rGIcI3HjUbS5EF1OUrFNqfAvNjO6h7zUy4koWZxG9+yaFXrptoAXRUPWflj5Gb9vqDqiWc54xK0Byejw4n9Bvy79JwS/kGo/Q/v0adeSzVY6H0SDaFx4jyPcyylxtLlcTMFzvQKgvw9mjlvsuzoRVPolM16e+Q1GI+Mfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by BL1PR11MB6049.namprd11.prod.outlook.com (2603:10b6:208:391::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.21; Tue, 30 Aug
 2022 20:23:04 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::b5ff:be5e:771a:9060]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::b5ff:be5e:771a:9060%5]) with mapi id 15.20.5566.021; Tue, 30 Aug 2022
 20:23:04 +0000
Content-Type: multipart/alternative;
 boundary="------------0RAN0bAVAflmyca0lSoZM0RO"
Message-ID: <101418e6-b123-991a-7192-0e4cb13fe4bb@windriver.com>
Date: Tue, 30 Aug 2022 16:22:57 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [yocto] Bitbake + Patches
Content-Language: en-CA
To: forums <forums@bitflipper.net>
Cc: "Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>,
        Peter Kjellerstedt <peter.kjellerstedt@axis.com>
References: <53C07165-3951-4450-B175-E323971C8DEC@bitflipper.net>
 <CAMKF1spvyQh1czn+HiKmppXBCO_tkor_3Ogfj6wguwA0x+tAyA@mail.gmail.com>
 <fcfe7d1380ab4d2598cff5004028d419@axis.com>
 <B58205E1-72E9-41F6-9A52-A440A62C3C6B@bitflipper.net>
 <899c12e4c6d34a4298b84b7abf022a82@axis.com>
 <0C54FD2B-AEAB-4425-9CEB-FFCA85458A16@bitflipper.net>
 <9222c257155a4d5aa93db2f0f9d1047b@axis.com>
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <9222c257155a4d5aa93db2f0f9d1047b@axis.com>
X-ClientProxiedBy: BY3PR05CA0048.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::23) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 55440277-b5a8-4854-ffde-08da8ac57189
X-MS-TrafficTypeDiagnostic: BL1PR11MB6049:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	zc6gUqZa7wAAmqW9VUgwV75bijz6rmYzEg1xmzOWQtyRXj7s5bIhyT4dHyWsZOmGMd4j+YZNQMixIa38irZj0zPJ8Ip4kosx8dzRx7sv+8HrtmL246QFSnUsnjzbFcvynqjsgwo9CSZ7henXrV1BcJmmqPkmlmuKQxqTO4E71su3sf4lPQ4svzlIAi8L3+Q5h5koau15deR1wpJ8Cm7uc0RAadSH0wknonzI3B/I9XcDs76osj6Jk1cllt5dGng08YaRjRgTkasFfRQLmFjTaQxQhH4sBwtD1keu21MawobZ/7o/acSGUjr+uWlEOCzpHRt/qbT5d4NgkbEawa/ArAOU6x5HSgX7VbDZXlvAMeMLkWAJ88P4slkjN+umKfCCcN44c8JdiA9zgqXjngNaj7SXA8FBlN3uljElu/XdqvFcNY9qvJDBVFcYV47nGj4+a77Y93xlzRnH8LKJzQg+yQuCOo6o/UMnadlwZOI7U65mZnEfemRJvnOZ2DIbFhMlAfJPJyoY9A1OES37TrO31a4ytB0EoHN0UQnZMxwqBX82YGvuC69qSDYDZN7wRCyGDvjwNfstZ4WPRd+b70cK+h0oP+sQ0WKFH7LINnPas7F9ahUyK9Chvs//cpnFeIux20PJSDecEf1HUzV0/VIRg0wJpUwJFP4yJfxNc+ySCKcT6odsiYkJEf6ElEiHkd4SXQCgUymPvfSK81KnbOQUJ2bjdFHYdjRU9ffhlmFF3o8pJhZn+XOzQ6ZfB6sjlYqtaynxlyLaRXU97f2/7PVz2JgQI9KzSRWDdwQ5O3WKTfjUx8glVB27xQMRRsqjMW2UyE+ZDFE8Uxuo4/acdNoVmqtHOtEtCoZJmoZiIgSox7AcJyRWvyTtZ+lZdmPRmbIMeNuVWs9v5Ga6wsZxe16WfQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(396003)(376002)(136003)(366004)(39850400004)(53546011)(52116002)(6506007)(31696002)(33964004)(6666004)(6512007)(36756003)(26005)(186003)(41300700001)(2616005)(31686004)(83380400001)(86362001)(966005)(6486002)(478600001)(45080400002)(316002)(66476007)(54906003)(38350700002)(66946007)(6916009)(4326008)(166002)(8936002)(66556008)(38100700002)(5660300002)(8676002)(2906002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?amp3ZEtZek5nbTZiNlRDUEFleWcyd3p5S1dJb1lLd1VaUWE2eWpVRi9RM0pS?=
 =?utf-8?B?RG45MU9aMEZWd0JSWUlhcDVSSGszRTFVYWFBWVlmaUlZL3VtdnhoM3U0RzV6?=
 =?utf-8?B?N25DanB2djBzUmd6RWlmNktNYW5YWFMwWWZ1RmFxWnpnQlQ2Umtib3FtYWlD?=
 =?utf-8?B?aDlKRUJ3R3pIc2hHdU11V1ZTOCtsTWl0WFVlVHlJeG13Y1YrNHUvZnRTaXpv?=
 =?utf-8?B?L1dPNlRQN08rcEF2K09XRmxwVGVVcGhaZnZMdGZ2SDd6S3lWWDlyY3FOOTli?=
 =?utf-8?B?VHdsNjgxTzIwaEJlY3VvK3J4MkRCeERGNGtkajB2R3FNMzJZMFNLQkRrK2RJ?=
 =?utf-8?B?QjJ4RFdhdC9vaC9keVQ0MURqdkxpSldibEpaZzF3Y3RLU2dsOCtxSlZnenV6?=
 =?utf-8?B?cUV3b1RzNFR3VlUveDZUUWdXM1NYSE92bDllVEYrUDhKNWIvT1ZiNDZqUFpk?=
 =?utf-8?B?aDlsZzBEWkVsY25JWkUzblBlSkhKUkIvVTN1VmVTbVF1Zkd4YmRRUHBnK0ZM?=
 =?utf-8?B?TCtMZmFjMHVSTy9ZbGd2N0srZGsyK1V5ZGJ0U3Q5TUhTYmZTeEJqK2JBWnhn?=
 =?utf-8?B?RFp4cjN6b2pXSzJucDZRWU5tdXZuZ09uM0VwUjBxekRiM0thbjljdWxzV01z?=
 =?utf-8?B?VWg4RXJNamRTQVFEUVRia2o2d1F4YTk2cVV1T2ZGdFZoYUh0Q2NFNEtNbita?=
 =?utf-8?B?QVNWcUR3NDQwR1hySHJ1TTVZS1NHUDFCS3pGQzVnbnJtbFdTN1RzbXQ2c2Va?=
 =?utf-8?B?RStwdHRxSC9XZ21xMHVSSS9vMW9oSStBSTMyMC9nbmhVWlRxbldNZDZCUmVV?=
 =?utf-8?B?YXJzOTBVdWtoMkVoZExsZEJpT3NZQ0YwK09SZE5OemdMSmwwU25WY1lTOTY3?=
 =?utf-8?B?MlcwcWxuTkVCa0NtVVI2M0FNM3RJVEpsVTRUT291WGF0R3ZVNkhBU0g4ZXFY?=
 =?utf-8?B?enVXRWxsM3Fyam9mYk5YM3ZieUVxbDVLVVREcFZCdE5MdnFGKzQ4bXJUWmRX?=
 =?utf-8?B?c3JpMGw1MVdOS2QwZStoU1JHUzZCK3JlNkFOZnRVc3NpTkI0bjNtd21OaDRa?=
 =?utf-8?B?V2kwT0JkT2E1TC9iWnhmZkxVcTkxRm5CdnBLVTNTeG1kdElSb3gxWnZySXZ6?=
 =?utf-8?B?VVdKOXBmZXdvUnJoV202NFlQOTdPZ2dQVkdodGJ4ajNwZzlob05ZSUlrTHlq?=
 =?utf-8?B?NzNWQTFSWW10QUdVWEczdzRTSTdzYVZEUm9ZWkFrUkl1eWdWNGlEdGF1Z2Vj?=
 =?utf-8?B?SDN1akd4Ty9rZlpyTVAvbWh3R2tSS1BpSmZGeDYrNktMdUF2NXcvMmtvV0Iy?=
 =?utf-8?B?cklGbFEyb2k2WjkzQmRsTm9LUWlTVmtIc2kvUEQ1VHNLR1lPYWtuWk5vTTFn?=
 =?utf-8?B?dEw1OFAyczF4RUcrZGR3RDFCdXdkN1JGeDJrQ0NXdmt4dStERTVGSFBNSTR3?=
 =?utf-8?B?ZHhMeDBzVjdkV1NJY3RVb2g5ejlIYUZnTFpXeTkrb0FGd1lKZFR0aWsyVVFm?=
 =?utf-8?B?QUJXbFhpT2FpVWFMaWRVTU5HWGhPT1dEYXZQekpKdGFheEdjOGZoZXlCd1pr?=
 =?utf-8?B?eEt3K1ZpR0hSbTZCazdMaERobnFuUWJOdjJaY01HUWVKMy90b3FZMWI1KzBk?=
 =?utf-8?B?NHZtR0pCbU1Rdk1hNVl3RlFrL2FlcXlVdmMySWFVYndGbXJXdHlMUE5zTENF?=
 =?utf-8?B?a0ZmcHQ0RnVoaStqQzdLZDFJVDBTOFowRUQ0SnczNVB2ZnNDclZSZUROYUlM?=
 =?utf-8?B?ekRWT01qMkh6VGREU3VjV04rZjRoSUlWNlJwbElveVlPNysyWEo5Q1FUWDBr?=
 =?utf-8?B?MGREeCthLy94WEFGaVNFUWdIdmxLY0thWExMVzVyaTlsVUNHczIraGRWeVFX?=
 =?utf-8?B?UXdqbWtMTExsMGhuRnM3SmMweXJvWk5tWE03cDFZbmxqZXZPRUFycUdIenFw?=
 =?utf-8?B?ajYvcCtXYnRqNEd0ZkZBK2x1VVN1ZERlRUZlYkRVQ1RFY1hqSVNtRWJHY0Z4?=
 =?utf-8?B?eDFIanlGOGtRQXVTSlFkS280SzZaaURDRE9WYnBnb0lwTXVrY1RMR2hBR0wz?=
 =?utf-8?B?aW52ZlNNOG9tVUs5SDZQVnFQR1ZUTE9wbW80Q0trYk1CSVB1eXhldGI1TWJS?=
 =?utf-8?B?dmJyRnp3c3ZISU9ER1hBQkdhK3ZKejBqZ2J4Qmk3UHBDWHp1dU1TKzFRQlMx?=
 =?utf-8?B?N1E9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 55440277-b5a8-4854-ffde-08da8ac57189
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Aug 2022 20:23:04.6281
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 hoN9vKZxZ5oTbDBwaA1CSlQGoMtm6ZfAVEtAzFmp9PBGvZAHeG7fdlq6Xe1vi+QHYLxw523cj4vVuIKGWRHJvI6nkvwvxkd3nf07vUEawU0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6049
X-Proofpoint-ORIG-GUID: PwqZcb2M5XvtgB3PDQRMakz7IhxZLxb9
X-Proofpoint-GUID: PwqZcb2M5XvtgB3PDQRMakz7IhxZLxb9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-30_11,2022-08-30_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 mlxscore=0 mlxlogscore=999 lowpriorityscore=0 adultscore=0 impostorscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2207270000 definitions=main-2208300091
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Aug 2022 20:23:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57949

--------------0RAN0bAVAflmyca0lSoZM0RO
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by
 mx0a-0064b401.pphosted.com id 27UIimD4011586

On 2022-08-26 10:03, Peter Kjellerstedt wrote:
>
> [ In the future, please make sure to reply to list and not just to me. =
]
>
> [ Top posting since Outlook doesn=E2=80=99t support inline responses to=
 HTML=20
> mails. ]
>
> No, you are supposed to copy the suggest text for the bbappend=20
> verbatim, with the exception of theSRC_URI[md5sum]which need to be=20
> corrected to match the actual MD5 sum (which bitbake will tell you=20
> when you try to build). The suggested additions/deletions for=20
> SRC_URIin the bbappend I suggested should be correct as specified,=20
> based on the differences between the apache2 recipe in Zeus and=20
> master. You will also need to copy the three new patch files from=20
> master of meta-webserver, and any of the other patches that have been=20
> updated between Zeus and master. Changing PVtakes care of the actual=20
> update of the code to the new version (since it determines which tar=20
> ball is fetched from upstream).
>
> //Peter
>
Jim,

In addition to all of this, note that the 'zeus' branch was only=20
supported until
August 2020:

https://wiki.yoctoproject.org/wiki/Releases


If you want longer term support to be able to use a well maintained
release of Yocto for 5, 10 or 15 years, there are vendors, including
Wind River, that supply those services. See:
https://www.yoctoproject.org/ecosystem/members/

Good luck,

../Randy


> *From:*forums <forums@bitflipper.net>
> *Sent:* den 26 augusti 2022 14:21
> *To:* Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> *Subject:* Re: [yocto] Bitbake + Patches
>
>         FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${BPN}:"
>
>         LIC_FILES_CHKSUM =3D
>         "file://LICENSE;md5=3Dbddeddfac80b2c9a882241d008bb41c3
>         <file://LICENSE;md5=3Dbddeddfac80b2c9a882241d008bb41c3>"
>
>         PV =3D "2.4.54"
>
>         SRC_URI +=3D
>         "file://0008-Fix-perl-install-directory-to-usr-bin.patch
>         <file://0008-Fix-perl-install-directory-to-usr-bin.patch>=C2=A0=
\
>         file://0009-support-apxs.in-force-destdir-to-be-empty-string.pa=
tch
>         <file:///0009-support-apxs.in-force-destdir-to-be-empty-string.=
patch>=C2=A0\
>         file://0001-make_exports.awk-not-expose-the-path.patch
>         <file:///0001-make_exports.awk-not-expose-the-path.patch>"
>         SRC_URI_remove =3D "file://apache-configure_perlbin.patch
>         <file://apache-configure_perlbin.patch>"
>
>         SRC_URI[md5sum] =3D "<I don't have this at hand, but bitbake
>         will tell you what it should be>"
>         SRC_URI[sha256sum] =3D
>         "eb397feeefccaf254f8d45de3768d9d68e8e73851c49afd5b7176d1ecf80c3=
40"
>
> H Peter. I have t admin, looking at the above bbappend, its really=20
> confusing to me. I=E2=80=99ve looked at some of the documents on bitbak=
e and I=20
> just can=E2=80=99t find anything to teach me how to put a bbappend toge=
ther to=20
> accomplish upgrading an application.
>
> Like for example:
>
>         SRC_URI +=3D
>         "file://0008-Fix-perl-install-directory-to-usr-bin.patch
>         <file://0008-Fix-perl-install-directory-to-usr-bin.patch>
>
> I believe this one should be:
>
> SRC_URI +=3D file:/usr/bin/patch
>
> The next one:
>
>         file://0009-support-apxs.in-force-destdir-to-be-empty-string.pa=
tch
>         <file:///0009-support-apxs.in-force-destdir-to-be-empty-string.=
patch>
>
> I=E2=80=99ve no idea what this one will nee to be.
>
> And this one:
>
>         file://0001-make_exports.awk-not-expose-the-path.patch
>         <file:///0001-make_exports.awk-not-expose-the-path.patch>
>
> I don=E2=80=99t know what is supposed to go here either.
>
> Then the SRC_URI_remove will be a pointer to the file containing the=20
> patches containing the diff=E2=80=99e between apache 12.4.1 and apache =
2.4.54=20
> ? I don=E2=80=99t think you can create a single patch file containing d=
iff=E2=80=99s=20
> between multiple versions can you? I think it would have to be diff=E2=80=
=99s=20
> between apache 2.4.41 and 2.4.42. Right. Totally confused as to what=20
> to do here.
>
> Any further help appreciated.
>
> If you know of a resource for me to reference please pass it on. I=20
> just don=E2=80=99t see any clear documentation that explains how to con=
struct=20
> a bbappend file.
>
> Thanks, Jim
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57911):https://lists.yoctoproject.org/g/yocto/messa=
ge/57911
> Mute This Topic:https://lists.yoctoproject.org/mt/93191096/3616765
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub  [randy.macleo=
d@windriver.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

--=20
# Randy MacLeod
# Wind River Linux

--------------0RAN0bAVAflmyca0lSoZM0RO
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by
 mx0a-0064b401.pphosted.com id 27UIimD4011586

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-08-26 10:03, Peter Kjellersted=
t
      wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:9222c257155a4d5aa93db2f0f9d1047=
b@axis.com">
     =20
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}span.apple-tab-span
	{mso-style-name:apple-tab-span;}span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#943634;
	font-weight:normal;
	font-style:normal;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span style=3D"color:#943634;mso-fareast-l=
anguage:EN-US" lang=3D"EN-US">[ In the future, please make sure to reply =
to
            list and not just to me. ]<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#943634;mso-fareast-l=
anguage:EN-US" lang=3D"EN-US">[ Top posting since Outlook doesn=E2=80=99t=
 support
            inline responses to HTML mails. ]<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#943634;mso-fareast-l=
anguage:EN-US" lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#943634;mso-fareast-l=
anguage:EN-US" lang=3D"EN-US">No, you are supposed to copy the suggest te=
xt
            for the bbappend verbatim, with the exception of the</span><s=
pan lang=3D"EN-US">
          </span><span style=3D"font-family:Consolas;color:#943634;mso-fa=
reast-language:EN-US" lang=3D"EN-US">SRC_URI[md5sum]</span><span style=3D=
"color:#943634;mso-fareast-language:EN-US" lang=3D"EN-US"> which need to =
be corrected to match the actual
            MD5 sum (which bitbake will tell you when you try to build).
            The suggested additions/deletions for </span>
          <span style=3D"font-family:Consolas;color:#943634;mso-fareast-l=
anguage:EN-US" lang=3D"EN-US">SRC_URI</span><span style=3D"color:#943634;=
mso-fareast-language:EN-US" lang=3D"EN-US"> in the bbappend I suggested s=
hould be correct
            as specified, based on the differences between the apache2
            recipe in Zeus and master. You will also need to copy the
            three new patch files from master of meta-webserver, and any
            of the other patches that have been updated between Zeus and
            master. Changing
          </span><span style=3D"font-family:Consolas;color:#943634;mso-fa=
reast-language:EN-US" lang=3D"EN-US">PV</span><span style=3D"color:#94363=
4;mso-fareast-language:EN-US" lang=3D"EN-US"> takes care of the actual up=
date of the code to
            the new version (since it determines which tar ball is
            fetched from upstream).<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#943634;mso-fareast-l=
anguage:EN-US" lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#943634;mso-fareast-l=
anguage:EN-US" lang=3D"EN-US">//Peter</span></p>
      </div>
    </blockquote>
    <p>Jim,<br>
    </p>
    <p>In addition to all of this, note that the 'zeus' branch was only
      supported until<br>
      August 2020:<br>
    </p>
    <p>&nbsp;&nbsp; <a class=3D"moz-txt-link-freetext" href=3D"https://wi=
ki.yoctoproject.org/wiki/Releases">https://wiki.yoctoproject.org/wiki/Rel=
eases</a></p>
    <p><br>
    </p>
    <p>If you want longer term support to be able to use a well
      maintained<br>
      release of Yocto for 5, 10 or 15 years, there are vendors,
      including<br>
      Wind River, that supply those services. See:<br>
      &nbsp;&nbsp;&nbsp; <a class=3D"moz-txt-link-freetext" href=3D"https=
://www.yoctoproject.org/ecosystem/members/">https://www.yoctoproject.org/=
ecosystem/members/</a></p>
    <p>Good luck,</p>
    <p>../Randy<br>
    </p>
    <p><br>
    </p>
    <blockquote type=3D"cite" cite=3D"mid:9222c257155a4d5aa93db2f0f9d1047=
b@axis.com">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span style=3D"color:#943634;mso-fareast-l=
anguage:EN-US" lang=3D"EN-US"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#943634;mso-fareast-l=
anguage:EN-US" lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
        <div style=3D"border:none;border-left:solid blue 1.5pt;padding:0c=
m
          0cm 0cm 4.0pt">
          <div>
            <div style=3D"border:none;border-top:solid #E1E1E1
              1.0pt;padding:3.0pt 0cm 0cm 0cm">
              <p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span>=
</b><span lang=3D"EN-US"> forums <a class=3D"moz-txt-link-rfc2396E" href=3D=
"mailto:forums@bitflipper.net">&lt;forums@bitflipper.net&gt;</a>
                  <br>
                  <b>Sent:</b> den 26 augusti 2022 14:21<br>
                  <b>To:</b> Peter Kjellerstedt
                  <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:peter=
.kjellerstedt@axis.com">&lt;peter.kjellerstedt@axis.com&gt;</a><br>
                  <b>Subject:</b> Re: [yocto] Bitbake + Patches<o:p></o:p=
></span></p>
            </div>
          </div>
          <p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
          <div>
            <p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
          </div>
          <div>
            <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
              <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
                <p class=3D"MsoNormal">FILESEXTRAPATHS_prepend :=3D
                  &quot;${THISDIR}/${BPN}:&quot;<br>
                  <br>
                  LIC_FILES_CHKSUM =3D &quot;<a href=3D"file://LICENSE;md=
5=3Dbddeddfac80b2c9a882241d008bb41c3" moz-do-not-send=3D"true">file://LIC=
ENSE;md5=3Dbddeddfac80b2c9a882241d008bb41c3</a>&quot;<br>
                  <br>
                  PV =3D &quot;2.4.54&quot;<br>
                  <br>
                  SRC_URI +=3D &quot;<a href=3D"file://0008-Fix-perl-inst=
all-directory-to-usr-bin.patch" moz-do-not-send=3D"true">file://0008-Fix-=
perl-install-directory-to-usr-bin.patch</a>&nbsp;\<br>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;<a href=3D"file:///0009-support-apxs.in-force-destdir-to-be-empty-st=
ring.patch" moz-do-not-send=3D"true">file://0009-support-apxs.in-force-de=
stdir-to-be-empty-string.patch</a>&nbsp;\<br>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;<a href=3D"file:///0001-make_exports.awk-not-expose-the-path.patch" =
moz-do-not-send=3D"true">file://0001-make_exports.awk-not-expose-the-path=
.patch</a>&quot;<br>
                  SRC_URI_remove =3D &quot;<a href=3D"file://apache-confi=
gure_perlbin.patch" moz-do-not-send=3D"true">file://apache-configure_perl=
bin.patch</a>&quot;<br>
                  <br>
                  SRC_URI[md5sum] =3D &quot;&lt;I don't have this at hand=
, but
                  bitbake will tell you what it should be&gt;&quot;<br>
                  SRC_URI[sha256sum] =3D
                  &quot;eb397feeefccaf254f8d45de3768d9d68e8e73851c49afd5b=
7176d1ecf80c340&quot;<o:p></o:p></p>
              </blockquote>
            </blockquote>
          </div>
          <div>
            <p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal">H Peter. I have t admin, looking at th=
e
              above bbappend, its really confusing to me. I=E2=80=99ve lo=
oked at
              some of the documents on bitbake and I just can=E2=80=99t f=
ind
              anything to teach me how to put a bbappend together to
              accomplish upgrading an application.<o:p></o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal">Like for example:<o:p></o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
          </div>
          <div>
            <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
              <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
                <p class=3D"MsoNormal">SRC_URI +=3D &quot;<a href=3D"file=
://0008-Fix-perl-install-directory-to-usr-bin.patch" moz-do-not-send=3D"t=
rue">file://0008-Fix-perl-install-directory-to-usr-bin.patch</a><o:p></o:=
p></p>
              </blockquote>
            </blockquote>
          </div>
          <div>
            <p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal">I believe this one should be: &nbsp;&n=
bsp;<o:p></o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span class=3D"apple-tab-span">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;
              </span>
              SRC_URI +=3D <a class=3D"moz-txt-link-freetext" href=3D"fil=
e:/usr/bin/patch">file:/usr/bin/patch</a><o:p></o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal">The next one:<o:p></o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
          </div>
          <div>
            <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
              <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
                <p class=3D"MsoNormal"><a href=3D"file:///0009-support-ap=
xs.in-force-destdir-to-be-empty-string.patch" moz-do-not-send=3D"true">fi=
le://0009-support-apxs.in-force-destdir-to-be-empty-string.patch</a><o:p>=
</o:p></p>
              </blockquote>
            </blockquote>
          </div>
          <div>
            <p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
          </div>
          <p class=3D"MsoNormal">I=E2=80=99ve no idea what this one will =
nee to
            be.<o:p></o:p></p>
          <div>
            <p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal">And this one:<o:p></o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
          </div>
          <div>
            <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
              <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
                <p class=3D"MsoNormal"><a href=3D"file:///0001-make_expor=
ts.awk-not-expose-the-path.patch" moz-do-not-send=3D"true">file://0001-ma=
ke_exports.awk-not-expose-the-path.patch</a><o:p></o:p></p>
              </blockquote>
            </blockquote>
            <div>
              <p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
            </div>
          </div>
          <div>
            <p class=3D"MsoNormal">I don=E2=80=99t know what is supposed =
to go
              here either.<o:p></o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal">Then the SRC_URI_remove will be a
              pointer to the file containing the patches containing the
              diff=E2=80=99e between apache 12.4.1 and apache 2.4.54 ? I =
don=E2=80=99t
              think you can create a single patch file containing diff=E2=
=80=99s
              between multiple versions can you? I think it would have
              to be diff=E2=80=99s between apache 2.4.41 and 2.4.42. Righ=
t.
              Totally confused as to what to do here.<o:p></o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal">Any further help appreciated.<o:p></o:=
p></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal">If you know of a resource for me to
              reference please pass it on. I just don=E2=80=99t see any c=
lear
              documentation that explains how to construct a bbappend
              file.<o:p></o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal">Thanks, Jim<span style=3D"color:#94363=
4"><o:p></o:p></span></p>
          </div>
        </div>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">-=3D-=3D-=3D-=3D-=3D-=3D-=3D=
-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
View/Reply Online (#57911): <a class=3D"moz-txt-link-freetext" href=3D"ht=
tps://lists.yoctoproject.org/g/yocto/message/57911">https://lists.yoctopr=
oject.org/g/yocto/message/57911</a>
Mute This Topic: <a class=3D"moz-txt-link-freetext" href=3D"https://lists=
.yoctoproject.org/mt/93191096/3616765">https://lists.yoctoproject.org/mt/=
93191096/3616765</a>
Group Owner: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto+o=
wner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class=3D"moz-txt-link-freetext" href=3D"https://lists.yoc=
toproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub=
</a> [<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:randy.macleod@=
windriver.com">randy.macleod@windriver.com</a>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class=3D"moz-signature" cols=3D"72">--=20
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------0RAN0bAVAflmyca0lSoZM0RO--

