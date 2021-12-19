Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38256C433F5
	for <webhook@archiver.kernel.org>; Sun, 19 Dec 2021 02:43:16 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web12.12935.1639881795648918221
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Dec 2021 18:43:15 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com
 header.s=pps06212021 header.b=ChkOsd5j;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=7987cf9f2c=randy.macleod@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 1BJ2hC8c014383;
	Sat, 18 Dec 2021 18:43:12 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=subject : to :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=+82a7XoolCKQiNGc9IEioSxmMewLtOhZtDcBxfNF88s=;
 b=ChkOsd5jRwsRB3MlRKEM7pKDwrpjCWlE8abLAYpWO4g7cRd9kIao6U5YlJpQFwdZpXxS
 jyXJ/QCMd+Oh9lqIzdsZ8dbxrxs/tr5ub/d0ys9pGDTs0U4yX2Uk7R2NlmemXtv33NTP
 gZQBsC7H/iwv23wmucHCWmI6IFyaSaPxSbsBmpw3q96iYaEpzQ+807CiEPYiR26ksZs2
 PaHK5tmGopndlJUtax4HnaMwRqn6Ii3l5mIN5n2ezgCI8kD9vtigEbg12j3vjxJ8vC+s
 W7/o2rMo5m8CCywofvHAGa/vjpbvV5YBoLAeXhzI77w690fzw+F9vcgNzG6O0JwtJR85 7A==
Received: from nam04-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam08lp2049.outbound.protection.outlook.com [104.47.74.49])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3d1g1nrame-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 18 Dec 2021 18:43:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CYJ4bHzUhW1uAdRtvxZtyKzH6TrAtnUgE922ejQilTdIZ5JMBjmbJU8GWwIbcxPHDLxeEXrzMkimAL5Ye+qj2YXKP3Jzg3A10/demIfgWFhxIfck4ATaRk/YBkeEYiO8S8onwulDEWwOH6bfDJV+z5KLH5WtHoMi7xcN89XV1/RpxCdrfZaaM4XI45j2wRA5KFTTvRCvuhGfsJZlVyaL7mRn7l7KRGC2h7ek0kjSlRTkbBe0sDzNHCfqQGSY0PjRmuGjR2nkYy6D73zw8lzcsOlOrVtxeWhagXKDlYNk5VH3LJYGRukPeR8dRNJOInBHKtSr81CjQiWVfRCLKuft0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+82a7XoolCKQiNGc9IEioSxmMewLtOhZtDcBxfNF88s=;
 b=UPgr5w+qKa9z0iMPAumcEivbbV7EAFaCgFEuOpHr9pReWMh0U+UZkyU2TYTfGHphgHTS4RajYJrB6h6w8KNkAgb+LBk1+CaWxzH6JLZ2rNg+6oMEUmzY0eRV4ytc+OgskfRopSaO8TDOkRsFh5SQv89Svds0TV8tQuBS0AkfrZteDkiLZEgcdHTpTVhtamTveF+ZLZETjfNSmYn4sdns6XWpSFmBO9vgXesim7lVQ5wK+Q657iOh0kgjFHbc74JnMdDNcfg7HzJx3u6Jv2mkW9L1zY/hS2rlDGWKPK6Q976wn/AyB2NEjO9RgJCmtooukiFSu+Ykfj2/7/XF6I1KpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB4580.namprd11.prod.outlook.com (2603:10b6:5:2af::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4801.14; Sun, 19 Dec
 2021 02:43:08 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::2df5:9c7b:a045:37d8]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::2df5:9c7b:a045:37d8%4]) with mapi id 15.20.4801.020; Sun, 19 Dec 2021
 02:43:08 +0000
Subject: Re: [yocto] [dunfell] hidden files/folders in WORKDIR
To: Joel Winarske <joel.winarske@gmail.com>,
        Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: 
 <CABKMkP+p3iAewWDeuwDHg2OrOBGx2r7Tzq3FsF7tKZsHqZy3Xg@mail.gmail.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <f68a78e9-022c-bf30-d2ce-afd4b05d2212@windriver.com>
Date: Sat, 18 Dec 2021 21:43:05 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: 
 <CABKMkP+p3iAewWDeuwDHg2OrOBGx2r7Tzq3FsF7tKZsHqZy3Xg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
X-ClientProxiedBy: BYAPR11CA0084.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::25) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bb128e45-c063-493d-1226-08d9c2994a76
X-MS-TrafficTypeDiagnostic: DM6PR11MB4580:EE_
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB458008ACCFF7F4D122EFC94DF87A9@DM6PR11MB4580.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Es64D7gVew6XNTtW/nfMVXOyxPIk6kXPXif9j/hkaMN/91FiWo2Va8q4tXO4sVBH01kMlcxc7cVRH62OoNw2gInEB2MqU+FuLf028tH4cWFiajAxjGtHU1JyvRDzc55J/2OqwO09Brtlcbd6GlEvGVR4ZbcSBjNQnMUkVTtdDhc2qFXKFUYuoxLfs2CKB8yHwC5+2VyN0iYLc2sAb7JodPrxY4WP1wZHW4jSgujTheFKodLkVWbKhDiMvBk0UROg0wxRZ+dPE3yRHeDu+OvbMeMkCB31KQfaEVQmRh01Jy2hub5yu0Kc9YIn15wI7HxzMBTNPztQG+VgQvl1dUIFyGAyMFAEdWhU2jg/QEfmH8hDcNqroCx90O4ui5oY8vXZmN5UgcEP5LVtp6oluGHXizNRa4HS1ZMt5AK1/bPLYrcZ1lP7eFYLBi97Z9tbmmEdfM8eYUY00IcAM/YMe1i25jI7TOW/0R7wnDT3BiAIATgBZ2xhgvx9au3yCRJsVvM5FhZC9UA5Hf8Z8563yz166IxWR4V49q53JDALoRrhvdgIvORIQszZ3xgeCE5wMNJV97m/xiBAmvZTUJJNzVMrEawTzHLGH3bEIuepN2v+tT3sV4+8ab3A3tP4atcr5nHRli5YgzHInpaVUSHBruZMhLc7Vhlsofh044R5Xhaed39v2OyAgocL+SMm3WZ2UArdEpvKVWAYpVZv2D9pwQ6NHw00Yyq/mOGO4uNz7eDJd7ll/tGKfjjV2ybUXAyPGtVmEOXoW26At/04s/Ama0rY4kO5M2tra+5AajCprJ9zNUEi859jqBXNp8JhTnjZvvIX8ETvFXtXImHSX85SKz5qOE8jwFL1HBptOaRy2w6lsMAM/QIX1zWZlhmPOrYQ2kEd34zNQHjU8qPFjE7m45fXQQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(6512007)(2616005)(38100700002)(110136005)(31696002)(66556008)(316002)(966005)(53546011)(83380400001)(8676002)(186003)(31686004)(38350700002)(5660300002)(86362001)(6506007)(2906002)(6666004)(15188445003)(8936002)(66476007)(66946007)(6486002)(52116002)(4001150100001)(508600001)(26005)(36756003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RHl3dnlRd2U4VjlZcCt4a1Bjano5OVNmeFl3U1d2SVRaemkwL3I5WGRuYndB?=
 =?utf-8?B?SlBDS1dPV1hPUFZKSXhnTU53bFJyY0dITm1mQ2RwVDdoZ2FMRC9NUW1XV1JD?=
 =?utf-8?B?MVhOYUsvOGFuSnEvVSt1c2FFU1dNK3NGd2w2T0FMMnZ6VkZSWE1JM2JUc0Rr?=
 =?utf-8?B?aE8wdkRYUjVMZTVHcGZTNS84Q1dJa3VlVjZYMHpPZk02K0g2Qm5HaExhZzJh?=
 =?utf-8?B?NldBaWhGSFRGeWlqL2JBRUk5anduOWQyWTZOMkJMNmRiRUFUUklxa0xnUU9C?=
 =?utf-8?B?M3E4dG8vTURzYmtsT2VaQWZxS0pQeWNOOHBCS2ZmQzBCcE9vSkFBVHN1SDN4?=
 =?utf-8?B?Z2F4Ym1aaFgraVAycGozSW13OXZhYUE4RVc0SjE4UlZSVndIcDJLU0JRSElQ?=
 =?utf-8?B?VFdLUWhEMGlYc2pqNXlQSVdCWTdxajNheEpuRVpVekl6UTFCMHJUeGlVclBi?=
 =?utf-8?B?NE12YTlJRUhxaFlNZHNtU21GMVNBay8yYmlKYm9zVUpUTlhqOVN2VG8wY095?=
 =?utf-8?B?ZDBnTEZtRnBUL2JMR3BnRmtacVpsTytoUnpWYkw5NzJhWHhxU0RjTXdYemk2?=
 =?utf-8?B?cHVGVHNtRnBmR0w4b09VUDBCVmZxdUFuZjlmVTYwRFZLRU5FSjZJaDgrQS9K?=
 =?utf-8?B?S1ZwdnV4Q1RucG9qd0s5cGNVdjFBRS9GY2JpRTBFeVhUK0g1UFVCVHNvelFB?=
 =?utf-8?B?eDhZd2pUVy84RHJ6TnZha3hGY2hLWG1yVFlpMy90aXk5cFJiYWtPQ0JLcVFO?=
 =?utf-8?B?MkpyU2ZXSzNNVHVoRnA4SFgzN3c4MVNWdjRIeTVXeVVkN1pwc2hYTEtpVHlk?=
 =?utf-8?B?cWRIL1BRdVEvQUVNRjF6N29pRVVCdDV6WlZvVXEwdEZtR1cvY2N6Y0ZUSE1l?=
 =?utf-8?B?akV1N1c3YzB1OTJOQ041QkpTaFEzT0FQQzc2bHRwd1NubFVtWFVYTmNhaERv?=
 =?utf-8?B?OC9mZXczSEtLU3JiZExPNFBlK0poVVU1Z1Q0ek5ER1NzNHZuZHlVQ1I1TURD?=
 =?utf-8?B?NHRkRE9TbjRSM2EwVWEwM1NubDAwNzJuM3ZQcm9qalcvNnc3RlFpSEk5QnV2?=
 =?utf-8?B?aEJ6K1BhdXl2WEdLZy93UlRKK2ZDckxQa3YraldNVW9ONis1M3hYUE1saTJX?=
 =?utf-8?B?V0J6bnd1MnhaL0JHRFJ0L29kWWFxb21yUGd3MzRWZ0VGNEpVMlRHbUk2NWx4?=
 =?utf-8?B?RldBbjAza0tybGN3WWJFcitnOFBNc3NzM0IyelZvbmtCZFRUQ25rUXN4ZkJT?=
 =?utf-8?B?T2xZei9DY3dKZVA4UExyZDBpOXhPT3ZTczU3Wmk1TnVPZEk4UkNUNXBINTJ2?=
 =?utf-8?B?RldtU0lnQUltcW5aWmo0dUcwajlGMk1ndWdremhiYWM1TWk5b0lURWpkU2sz?=
 =?utf-8?B?MjRXUkdVQlE2RmZSU0pwVDhadit2NyttU0h4VHJSY3FubjNGSW1vZzROOXM1?=
 =?utf-8?B?WVoyMEJvd0NpVURmMDBQUFZvODluZDNmTE1YRUdZSGVaaU4wck1oalovc09n?=
 =?utf-8?B?Qjl6UWRlMWZoM1FIVjJvbFNMK0RqbFF4Z2d4a3RTWG1QZi9kTTgvUzQwZXo0?=
 =?utf-8?B?dXc1TUhheCtsV1dUdDRVTlE0cGZXazhkMjU4Tnl3ZEkrUW9XNG1RT2xLbHFL?=
 =?utf-8?B?UWVFM1M4dmNCK2lKRjdrWVNlc2hCdHNWQ3ZDSHBvcEFvb1lta2crTWNGMHVQ?=
 =?utf-8?B?Vk1BcTBaMTlMTndpRHp3aWNEdEZlRWtMYm5wZ2JNUnAwcjhNeFUwTW9lNFhW?=
 =?utf-8?B?bVEzb01DNitERWhHSHB6Nng0ZUF2ME1GR2NEc052ZXhlTEp2NHV2RTRCMm9Q?=
 =?utf-8?B?dStPNWlXNzFkTFZEbWFxK3YxRGxKV3dFejZGelVMeFI5K0ZNUURvU2grUy81?=
 =?utf-8?B?bGdVRmhPeHF1czRacFVYMnc3T1BlMm5oanliSHNBM1U4MWFrNEZjWlZMbnN4?=
 =?utf-8?B?UkpOejRvV3FaMk9ubktwUXdiVWUrL2NhaDE1UXJSeXdtZlFTcXdZMG9USjhC?=
 =?utf-8?B?TkM0UDIwYmJEODgrcVpWQkxtM25GNVI5U0x5Z1B1cGVMT3o5cUxmd1pPNmxn?=
 =?utf-8?B?anQ4aUVSSUtkbTcyQy80a2krVHk3TFVBaGpiSU5YRVFaN1l1SElBSFgwdjdo?=
 =?utf-8?B?SWNWY3VNeGJWZm5hTGZ6cEV6UnZBZ0hCaXFsMnV1elNRaDNXTitSMDhPQ0xj?=
 =?utf-8?B?dWsvZGcwaEszZU5yTHpOSng2NjRFUnZrQlpnUGIvWDY1MTJSaHRWZllRc2ky?=
 =?utf-8?Q?7Ven9WaRRxc6spUaGoeWoV+JrYXpIMCDs3W8dyFqNE=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 bb128e45-c063-493d-1226-08d9c2994a76
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2021 02:43:08.5766
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 HhNiw37PSlQbKzJ/F+DkvAt0LGSEJHa3hYUTLIzKlXi1EhOzC8RWSfRI04emRjQrCzeQSHnKa8D9/jhetMBGC42DMVMlnuNuhXTf8jAsTWQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4580
X-Proofpoint-GUID: X-PQqdX_kLFxTawxYaPMZK42VJDAHDNz
X-Proofpoint-ORIG-GUID: X-PQqdX_kLFxTawxYaPMZK42VJDAHDNz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2021-12-18_08,2021-12-16_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1011
 suspectscore=0 impostorscore=0 mlxscore=0 lowpriorityscore=0
 malwarescore=0 priorityscore=1501 spamscore=0 bulkscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2112190014
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by
 mx0a-0064b401.pphosted.com id 1BJ2hC8c014383
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 19 Dec 2021 02:43:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55619

On 2021-12-15 2:22 p.m., Joel Winarske wrote:
> I'm finding that if I create files/folders (prefixed with '.') in=20
> WORKDIR, they don't get cleaned up with=C2=A0INHERIT +=3D "rm_work".
>=20
> Is this a feature or a bug?

I think it's an oversight that doesn't affect many people.

The rm_work code for WORKDIR is:

http://cgit.openembedded.org/openembedded-core/tree/meta/classes/rm_work.=
bbclass#n97

     cd ${WORKDIR}

     for dir in *

     do

         # Retain only logs and other files in temp, safely ignore

         # failures of removing pseudo folers on NFS2/3 server.

         if [ $dir =3D 'pseudo' ]; then

             rm -rf -- $dir 2> /dev/null || true

         elif ! echo "$excludes" | grep -q -w "$dir"; then

             rm -rf -- $dir

         fi

     done


so you can see that if you want to submit a patch to remove .FOO files,
you'd have to change the glob and exclude . and ..
The comment seems to justify doing that.


I guess one question is how common is it for 'dot' files to be there
and have people come to rely on the fact that rm_work doesn't remove them.

See some analysis below if you're interested but I think it's sensible
to also remove 'dot' files. Wait a day or so to see if anyone has a
use case that would be a problem and if not, could you send a patch?

Btw:
WORKDIR docs:
http://docs.yoctoproject.org/ref-manual/variables.html?highlight=3Dworkdi=
r#term-WORKDIR
say that:
  "This directory is located within the TMPDIR directory structure and=20
is specific to the recipe being built and the system for which it is=20
being built. "
so that seems to give you carte blanche!

and there's no restriction given in the rm_work docs either:
    http://docs.yoctoproject.org/ref-manual/classes.html#ref-classes-rm-w=
ork


../Randy


In a build that I have on hand:

# how many files could be cleaned up?
$ ls -d tmp-glibc/work/core2-64-wrs-linux/*/*/[a-Z]* | wc -l

2887


# how many of them are 'dot' files?
$ ls -d tmp-glibc/work/core2-64-wrs-linux/*/*/.[a-Z]* | wc -l

1


# What's the file:
$ ls -d tmp-glibc/work/core2-64-wrs-linux/*/*/.[a-Z]*

tmp-glibc/work/core2-64-wrs-linux/usleep/1.0-r0/.pc


# .pc files are usually stored in a subdirectory like:
#    tmp-glibc/work/core2-64-wrs-linux/m4/1.4.19-r0/m4-1.4.19/.pc
# how many 'proper' .pc files are there just out of curiousity?
$ ls -d tmp-glibc/work/core2-64-wrs-linux/*/*/*/.pc | wc -l

79


# Let's look at usleep:
$ ls tmp-glibc/work/core2-64-wrs-linux/usleep/1.0-r0

configure.sstate   deploy-rpms               image=20
packages-split  pkgdata-pdata-input  recipe-sysroot=20
sstate-install-deploy_source_date_epoch  usleep    usleep.spec

COPYING            deploy-source-date-epoch  license-destdir  patches=20
       pkgdata-sysroot      recipe-sysroot-native=20
sstate-install-populate_lic              usleep.1

debugsources.list  GPLv2.patch               package          pkgdata=20
       pseudo               source-date-epoch      temp=20
                     usleep.c


Ah it has the source in WORKDIR, that seem odd but it's a simple recipe=20
with the source
provided in the recipe:
http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-core/=
usleep/usleep_1.0.bb?h=3Dmaster

# Let's clean it:

$ bitbake -c rm_work usleep


$ ls -a tmp-glibc/work/core2-64-wrs-linux/usleep/1.0-r0

.  ..  .pc  temp


$ bitbake -c patch usleep
$ echo $?
0

so that works and it seems there's no harm done.
--=20
# Randy MacLeod
# Wind River Linux


