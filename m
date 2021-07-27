Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web09.4937.1627408590964488032
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Jul 2021 10:56:31 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com header.s=pps06212021 header.b=Ap5riG8y;
 spf=pass (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=284255f135=randy.macleod@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 16RHWp6G028966;
	Tue, 27 Jul 2021 10:56:29 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=subject : to :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=VpRwDCtizJEcghaITokaRE7YcRq1UnM96CCqPeTXPYg=;
 b=Ap5riG8yHSrbuZR07Z4vF7/ttut22FewLbgF0/pMI72ohzqeXOk0hJwEMKQL+TzfOY4J
 Ebs3K2qFOfZDNcjz+zGdxNgtFL5ETAHSzlh7vTPuoW8Q+/iSwvi1DLrik6YrQjWnOAt/
 xJv6UERJ4e7LX473ubXWCsca3WcmBP+QoCctfXcu/gWjSb1oiRK4ahTStNAjlrT82zx3
 4XmpoDNZNo4xRtjP9Fkop05BiNEOJRxkkxmP9vzG9+QAGFa/nZmVyWZN3pAcsk+gipuO
 r0zSjYnkAxF4ShZIiY5e+0eUthyEHXK/qY/LthYjR19UxZIOfTJQc9ty3EI9wH1vZQm1 hA== 
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2102.outbound.protection.outlook.com [104.47.58.102])
	by mx0a-0064b401.pphosted.com with ESMTP id 3a23558sdk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 27 Jul 2021 10:56:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LoOKFoZoQOMtgiqAzmL4KlnCgVyUyi/VUMTfk3YudqFx8XhIvnOoc5UT3OD1zuOah/ZRqDn9z9RENlQc9vR4WkL4jMWvF6mHuyMM/mJUgF7+9IMQ5GYpg4fEh64Ces52WIVHXjbPJ8gAYViunmobed57P5DcvW3rVVgh2y2F+O0DBFBh3nciR93a/hFM+lr1yW//KI4q7+YO+HfieWKPwntqFnMHdYBE3swxrpLAn7sYn6BpqeLFBJnk/oADEoiuWDKCzz7Z/qyuuKqr5JybG+89PQ7rAbVtJbE7ybTAzQtD/+vGus9xg+baQIVDCygfCQpmkoRSotOAZdigCKrDCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VpRwDCtizJEcghaITokaRE7YcRq1UnM96CCqPeTXPYg=;
 b=gd2YduunqQrb5ZQWbAsQ8Mu4b+rcYgIUjmyk1EHeWC0Eq5cGb4yytsPxujLJrcwxJUaURTzFrpZ9AHX/5gg1VXyUO+AHWiLXXZxiCIDZNCyK7rsanx0jNuwfYF1g+nofYKBTZKo6lZ36aKbb4VZWGPvrzVnfQ8xpJIIYT5OQhJy3Ho8JcO8kcZR4ENJKvPsxgdx35iuV81Xxn9v2RIYIfWiTRij3LCy4ADjCRJG1i5PTb3X0GlZZQvC2S4HFM6WXsUWuja9JhEWymi+Dj3DYXQF+5NgnC1xNiXBNGORZyJlC8IINLfYriW5E/LmUe5bq2Z6wU1/JlRC2KZAvb6q6GA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB3595.namprd11.prod.outlook.com (2603:10b6:5:142::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.29; Tue, 27 Jul
 2021 17:56:12 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::c413:9f51:c32e:a579]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::c413:9f51:c32e:a579%6]) with mapi id 15.20.4352.031; Tue, 27 Jul 2021
 17:56:12 +0000
Subject: Re: [yocto] HOW To resolve : Files/directories were installed but not shipped in any package:
To: Alexander Raih <61a91bc@gmail.com>, yocto@lists.yoctoproject.org
References: <CAMqwjCD4sPhGzyRyOFuNE6ti+3bPLc1BV9S1XjSJ3yGQRenyKg@mail.gmail.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <f116904b-1367-30e2-978d-99df6602f531@windriver.com>
Date: Tue, 27 Jul 2021 13:56:08 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <CAMqwjCD4sPhGzyRyOFuNE6ti+3bPLc1BV9S1XjSJ3yGQRenyKg@mail.gmail.com>
X-ClientProxiedBy: SJ0PR03CA0273.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::8) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by SJ0PR03CA0273.namprd03.prod.outlook.com (2603:10b6:a03:39e::8) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.25 via Frontend Transport; Tue, 27 Jul 2021 17:56:11 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a735a2a6-00b2-4596-97a8-08d95127d240
X-MS-TrafficTypeDiagnostic: DM6PR11MB3595:
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB359565B642783F212936001EF8E99@DM6PR11MB3595.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	aAbwMl2naWOTbTeEJv53GI2huGBkbCVPBQEbnQC7P5j/FpMX3ZUrqVIcIlwtC7Dy5PdSedmZXk1YJvAj4CFlkzO7ncrGGeZaZAWLgVyDalJt4nExNmjVmb0N8QNwwVQH15N/SLHlIfyIrObGbDmVxYgu/t+plDpif6eCpNHUTd+ZC7k7wAq8WzyESsGsdkDtWxGC7WwJXGXLYFDhydvWqqYK8edxLS3OG2qeMMY/uF8eKhfvLF8NTII7xtxRoh6QMxr4zZnvGKH0Er3O3T8sS/H0+JnbT3Lm/xpXWDSN8HhPpjT8XzUD+E6xBl/qMnIiDoCDg5Em12BmXEV16e5nciKlSVuoToVz+fchVOx9H9FZTdZEpXpfqJPf5paC0/0gzAyGJmxydbOvkK3ppuAEpXhwagSB97zwNwf8tHT7P0h/5/dAlfnhVZHUGPHGxeOyapOlGnSPMrw/84qNbZ8wZxotMWYDOhqIUPq7yHYiRVU+JsqnS7Med/0odp2Kp/hzy2hlam8jjSs9T3i0VlhKEF4AwrqszUGvBe35aCKfRY8UUvfvrxegmvdxmTPUb08lwNgc8eV7wy9vJH8XdkdS5WcbUBjJxW1zVjYnbQcRMoYBliAiTGj7ixGYmO1JeqRuO3JeZlkevBtJ/3cRTfPhdQmyEYtopUF6w8wyCADk9WgIi1cDdP1go1SvZuFwLOAuyo4kjrkP/GGBDRqrq20uhSeapGKpJHuhFWJDJzMpPPFFmAiVpeMZ6ebM7NG6aovHZxZpda0Xlh7Oyhc+0Atk+x6vgtA7SieBvtdUq9GH/VkBsV6A+DVgfYi937yKXPvuwFxTyfXAeIIZe4SXHpVhyuRYuljmpTIMJQ2QGzL4qYA16XN/UE3e/SWeZb8Atnhc
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(376002)(136003)(39850400004)(396003)(66556008)(66476007)(83380400001)(5660300002)(2616005)(52116002)(31686004)(966005)(478600001)(8676002)(36756003)(2906002)(6666004)(66946007)(316002)(16576012)(8936002)(38350700002)(38100700002)(186003)(53546011)(31696002)(86362001)(6486002)(956004)(26005)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZDc4OHAwZGROT3dMdS9jUHhHZzh6YlMvQ1phZDFSNzVOcGhVUHJnamUvL2Jo?=
 =?utf-8?B?OTRoU3lmczZkVVlhVkY4YXNHdE5WWTI4cnRrSkRkVFRROUhFbW5lUkRaZmdq?=
 =?utf-8?B?MitOdnBOZDRpZjNSYmw4bWdiNlVlWHpsQ3Y3eHFRWUhBYVRZV0VZbTNOTDg5?=
 =?utf-8?B?d085NitpZ1FJNFZLTGJET0FoNHRWUXkzUnJyZ1FwZWlGQ1hJcmJoMytsdmR1?=
 =?utf-8?B?V0UwR0RuREZ2bGFlRFBWc0tVL1BUd1o4ZkE4YU9JZkVwWHJVbHpYc0VrZDdm?=
 =?utf-8?B?eCs3SVdESlVtNHZZOWo3bzdOT2RDOCtPUnd0N0h5blN4WE9aVFZzZ2ZNUktx?=
 =?utf-8?B?YnRtb2FtZ2E3YTUwUllWUDlkMmZpOWFDVFBud0Myanc1ajhPWXE5WDZOZGRV?=
 =?utf-8?B?dlUySUc2WVJRQU0yT1FKbWIzLzdCbXh6RWRxR01TVkxGUjFPT2tzMTVpak9V?=
 =?utf-8?B?Q3ZQYjg3UlJrc3Q4RU9CZnZmTCt2czlITHlrSjlTb2dRSGdGaVk0WDgxdDVs?=
 =?utf-8?B?OGpvTURnMjBoYmRlano5MVhKWDBGbFN6SkxtVkFHWkVLaXQvcVo3aGJIRlJj?=
 =?utf-8?B?L1hvOVlRMU5ycHBkaWxHRXFXYnRIVDkrVjRHSm5hdnRKTXZTMUJKb28wNmVJ?=
 =?utf-8?B?WkR3RG1MaDQ1My92WTNtaWFUUDdTV2JoS1MvenU5dEloZXpEQVR3RGoxeEFB?=
 =?utf-8?B?emtONXpSd21jbzBaVDZsTTk4aE5GNGx6RXh1c3N6dERnMVFkb01HMWpVaUdG?=
 =?utf-8?B?SHc5RHRYZDNwdXI0RDExZjI4MUhmN0t2SG1sU3cxTkZraHVUQTBYWkN1QTJX?=
 =?utf-8?B?UCtkdjFlTjQxc0FCMkFUQ2wwc3pmVjZLRHdTZ3RUU2xSOE4vYzBiWlJtWUlW?=
 =?utf-8?B?NFFwbmFiTEpEemJGSDZzTEk3NVI2T2Zzd0g0MmUvL01LYU5QYzFtWEc2R0lI?=
 =?utf-8?B?ZUoyOXRiYjROOXNqSk5ROWFDK1c0M05GUlAyaHQ1YzhCclJIaFd6VjBTaUJ5?=
 =?utf-8?B?eW81NlFOQklqN3d4WjlaVVhSaHhhMEdyMS85NGM1eVIvUllBOXFteG1ZZ0Fq?=
 =?utf-8?B?UGsvdWluY0xERkQ1bHpJMGwzODI3ZytwTnBmMzVIUjJTSnNTTSt5aklvZHdv?=
 =?utf-8?B?U3BubG9XTmNjN2RtcUxSOG8yTFh3dkVha0ROM3pQQU5OUzR0RHNNV3ZPWjI0?=
 =?utf-8?B?SFdLZ1Z3bWJtWnZhbHZZcjZRK01Vc0ZWTEE2eWhoSDJueHNmaCs0OFRLSmlp?=
 =?utf-8?B?WVBIVnV4bVAyVHNkNitqT0RtaE91Qi9KUndmTUlHbzNsTXRnVk9QQW05c3J3?=
 =?utf-8?B?TXp4R0ZQd0lMNnJUNEN4MkVFTUdmUUh1VDFLbjNFWFUvVlpNN0pzWUJGSmZ1?=
 =?utf-8?B?cTg3NThvYmxtQmszYkE1WGpTSlNTdk1lcXdwcEN0bmg2bTVnQlJobVpLOXdq?=
 =?utf-8?B?WHFrdDBuV3FTYm10bHpKMk8wM0k4QmtESWxtcHZkenZ4dlBhY3ZKbFVUSStD?=
 =?utf-8?B?K3k4T2U2N3pZTUgyV1pqUll5emRjYVJ3aGo2SkRtL2l3N2NTTy9KOHp5VGtF?=
 =?utf-8?B?NTJZZkNiYWlPYW5qL1dhZCtOaE1leHQ5RU9kdmo2NTlhTTBEbytydU5OaVVk?=
 =?utf-8?B?Q1RaeHExY1NoUFh3NWFWNnlOVUp4cUlnY1Vva2haSXZEVU1mWS9LWUhTcWk5?=
 =?utf-8?B?TkxKYjBBTFFhVjBPMUdXMmZYWllxdE9uNHJpZ09VM2FvWi9kNFo5Z1VXT0t6?=
 =?utf-8?Q?zRaBJIXbCl5VayKV+AeUpdhUFRh7W8P9Ha8wvoa?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a735a2a6-00b2-4596-97a8-08d95127d240
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jul 2021 17:56:12.4347
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +JhN/U2lxBy3o19L+ljWVYwXxjT9Ro8tTWpGt7Z137k3Xc3b+eCWm/Qr8MrTU71Uzb2d2gfoX4bwomOhIHDVleBwr+RwymJEU5yiRKsZhw0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3595
X-Proofpoint-ORIG-GUID: u_sPSdi91nq_zDLva03T6dZblZNAJRAX
X-Proofpoint-GUID: u_sPSdi91nq_zDLva03T6dZblZNAJRAX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-07-27_10,2021-07-27_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 phishscore=0
 mlxlogscore=999 spamscore=0 clxscore=1011 suspectscore=0 adultscore=0
 mlxscore=0 malwarescore=0 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2107270106
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 16RHWp6G028966
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: quoted-printable

On 2021-07-27 5:44 a.m., Alexander Raih wrote:
> After modify recipe with using my repo I have this error after rebuild.
> How to resolve this ?

As the log says, either don't install the file or delete them.
There are many commits that you can look at as examples:

http://cgit.openembedded.org/openembedded-core/log/?qt=3Dgrep&q=3DFiles%2F=
directories+were+installed+but+not+shipped+in+any+package%3A

../Randy

>=20
> log:
>=20
>=20
> ERROR: phosphor-user-manager-1.0+gitAUTOINC+5a6e836a71-r1
>  =C2=A0do_package: QA Issue: phosphor-user-manager: Files/directories we=
re=20
> installed but not shipped in any package:
>=20
>  =C2=A0 /dbus-1
>=20
>  =C2=A0 /usr/share
>=20
>  =C2=A0 /usr/share/phosphor-certificate-manager
>=20
>  =C2=A0 /usr/share/phosphor-certificate-manager/nslcd
>=20
>  =C2=A0 /dbus-1/system.d
>=20
>  =C2=A0 /dbus-1/system.d/phosphor-nslcd-cert-config.conf
>=20
>  =C2=A0 /lib/systemd/system/multi-user.target.wants
>=20
>    
> /lib/systemd/system/multi-user.target.wants/phosphor-certificate-manager=
@nslcd.service
>=20
> Please set FILES such that these items are packaged. Alternatively if=20
> they are unneeded, avoid installing them or delete them within do_instal=
l.
>=20
> phosphor-user-manager: 8 installed and not shipped files.=20
> [installed-vs-shipped]
>=20
> ERROR: phosphor-user-manager-1.0+gitAUTOINC+5a6e836a71-r1 do_package:=20
> Fatal QA errors found, failing task.
>=20
> ERROR: Logfile of failure stored in:=20
> /home/openbmc/build/tmp/work/arm1176jzs-openbmc-linux-gnueabi/phosphor-u=
ser-manager/1.0+gitAUTOINC+5a6e836a71-r1/temp/log.do_package.224136
>=20
> ERROR: Task=20
> (/home/openbmc/meta-phosphor/recipes-phosphor/users/phosphor-user-manage=
r_git.bb=20
> <https://urldefense.com/v3/__http://phosphor-user-manager_git.bb__;!!Ajv=
eYdw8EvQ!MvGlXySEg6aHLl15FbgtAXUiU8QigCQo5SNkyuUXMhj_8Q2A8rmCrbs5IP8O2f-oPp=
ObZg$>:do_package)=20
> failed with exit code '1'
>=20
>=20
>=20
>=20


--=20
# Randy MacLeod
# Wind River Linux
