Return-Path: <jairo.mejiaaponte@belden.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A2E4D0BB79
	for <webhook@archiver.kernel.org>; Thu, 24 Oct 2024 09:00:06 +0000 (UTC)
Received: from mx0b-00015a02.pphosted.com (mx0b-00015a02.pphosted.com [205.220.178.250])
 by mx.groups.io with SMTP id smtpd.web10.10200.1729760398850983231
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Oct 2024 01:59:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@belden.com header.s=podpps1 header.b=mFqDIALI;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: belden.com, ip: 205.220.178.250, mailfrom: prvs=0027135c49=jairo.mejiaaponte@belden.com)
Received: from pps.filterd (m0264210.ppops.net [127.0.0.1])
	by mx0a-00015a02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49O70fwQ018202;
	Thu, 24 Oct 2024 03:59:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=belden.com; h=
	content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=podpps1; bh=0IlCIxtlqM3sfTL1ropUUS5xog
	seCBwmCs6YyhXBvWg=; b=mFqDIALIYzuEvzDuKu4V6J3g9agauhn/KVvEeZWl8d
	YUGRjjdc3E6huR8vUQH81h316Ej7Th5zrpzIkl2U+US4OmRfgej8rDhGl4hQ4apP
	pHvdvyHQyVuBi/g3tDdmM2Lr4UzrehwOJ72vAgcgRZrhMUVo7bFv8bLj1R7aAk2+
	ttkfzGqqSmt1/ZJeQlfAFnega9qHmkgPIiZyCYqtdbS2CM/e47BrvWQCMOjesDby
	4Y7fzuhiwoC7eRKwpAetbKB4UrMHZXtx3w6o29Kv/wk8diDrdJu9yziZz4Z8LCUD
	QuMuAZlaSNzoBIYgl95//vH0uM4PmeuodGBw/LkWrgQw==
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2040.outbound.protection.outlook.com [104.47.58.40])
	by mx0a-00015a02.pphosted.com (PPS) with ESMTPS id 42em4f3bu4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 24 Oct 2024 03:59:56 -0500 (CDT)
Received: from MW3PR18MB3513.namprd18.prod.outlook.com (2603:10b6:303:53::8)
 by MW3PR18MB3530.namprd18.prod.outlook.com (2603:10b6:303:55::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.21; Thu, 24 Oct
 2024 08:59:52 +0000
Received: from MW3PR18MB3513.namprd18.prod.outlook.com
 ([fe80::4746:3d94:564:8d62]) by MW3PR18MB3513.namprd18.prod.outlook.com
 ([fe80::4746:3d94:564:8d62%6]) with mapi id 15.20.8093.018; Thu, 24 Oct 2024
 08:59:52 +0000
From: Jairo Mejia Aponte <Jairo.MejiaAponte@belden.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
        "umeshyv@gmail.com" <umeshyv@gmail.com>
Thread-Topic: [EXTERNAL] Re: [yocto] populate_sysroot not found in x86_64
 x86_64_ubuntu-20.04 #yocto
Thread-Index: AQHbJdHwg+B3PH8U7EGewMxEft7zvbKVYEwAgAA2gSc=
Date: Thu, 24 Oct 2024 08:59:52 +0000
Message-ID: 
 <MW3PR18MB3513CC2B4CCCDE888E2391AE8B4E2@MW3PR18MB3513.namprd18.prod.outlook.com>
References: <hr8z.1729679886163625789.9CMP@lists.yoctoproject.org>
 <17835.1729746148931815318@lists.yoctoproject.org>
 <CA+Kjy2wHN5=iAQd-GqMzGg2VE74wJzjsq4jn7xDUsKE0SYpaFQ@mail.gmail.com>
In-Reply-To: 
 <CA+Kjy2wHN5=iAQd-GqMzGg2VE74wJzjsq4jn7xDUsKE0SYpaFQ@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW3PR18MB3513:EE_|MW3PR18MB3530:EE_
x-ms-office365-filtering-correlation-id: 360b4b33-8c63-4afe-9648-08dcf40a3944
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|376014|38070700018|8096899003;
x-microsoft-antispam-message-info: 
 =?Windows-1252?Q?ml9v7BsRxV/DCUXgtYBi6wgN6kALjpKSo2eIZlV+Od3lSffEIiYspaLJ?=
 =?Windows-1252?Q?QYXTB0S/wfXgqS4LLcvdxXb3/x/pLH0dzfulOEZqB/Y+yIq5p7fUQ+uP?=
 =?Windows-1252?Q?xY68uzxbVGqCPoRVWUXGHZjh+wi33naQvqz8Fy8/GLZZupvxwFE1BXCH?=
 =?Windows-1252?Q?IWEUCyfagiN5DdW/LRqxa7Ik4pLoE7UMAc5dzRi/jPIrFCbg+APAoiyC?=
 =?Windows-1252?Q?RkNwKoXJB5ZV8f+KpncHcSIItfH6Wqy+ooaZ15z0pCF6ZjO4FtPQ3tQt?=
 =?Windows-1252?Q?GxD9yEfHmQBF3UylKOQ+E2g4ebOJvlJraayJZ2h++VzaRX7j5tPw3j2I?=
 =?Windows-1252?Q?vaU7zP5e0Fmd8kZ3CN4AXQ+7X2zSqeHdX0lLQULAjNzAe2+U/mB5q7ii?=
 =?Windows-1252?Q?wOz09H2HQDS7tskMpsrGz8H20U1uCj5f609HwROuU7GMby8OVmqMxAI4?=
 =?Windows-1252?Q?l/dwb3eoJvjzFWCLpq4LQdCBVcsnPm0R9wHLRHi++HaxPC6ZTeT1Bw5u?=
 =?Windows-1252?Q?2VqJ2z34cJdOCmUbIPZkCaEQeLgSVXAiYs2rpGf9f+8KSuuKXhewbtxh?=
 =?Windows-1252?Q?d4pvitduL+f+p2tXZAW60bswj7AjS3mfWhvqrinWq6KMPmIBHUSQ4n32?=
 =?Windows-1252?Q?9Kysu3ymRF4Rf8jmxuQE7wcArPbkelbZAqwvFFHQvh7NMUf3Z524Mxfm?=
 =?Windows-1252?Q?nzeoxqNEgYkkmia0oLarKMl8/8MDXvXrnb6f07MbTyi2AkpKfOQ/29Cu?=
 =?Windows-1252?Q?0Uez5o66kkx+9ZqGLrUQJJOIcsXgSvGA3ghfAa5GijF7ZkmiaJ8vK0UC?=
 =?Windows-1252?Q?OkVfYnU4o9k23kMi16Q2XMdoIan1aHbyiP9yxIH+x6QwDapktqHdK/XD?=
 =?Windows-1252?Q?GnTyWmN6j146T4M/wnPrd4o54X8Txu5NegKYBEV3T/EnxZhZT/45uJXu?=
 =?Windows-1252?Q?RQLOlHGAM10rDvbhYVFpgBQwRLCOOO0dhXI3+tbqT1iADHDaKSVmAxQF?=
 =?Windows-1252?Q?Rww0q8nh0/HItrRRE9JJDTcmVxKRR5Ky9zSiEen27K4L1nzfh/P6f2Pu?=
 =?Windows-1252?Q?cXH2UcY/1PsgvuEcoSnnuLfbHPwBw2zqmqqMdYQXfr+RyrQTDnAZrV9m?=
 =?Windows-1252?Q?S73/OoRbLqfgzRNUXchPAzmQrc/K/zoiuNlsasNnUudEwp2J+8eSxTQW?=
 =?Windows-1252?Q?OrKJ7XTK5CNss9RB/CIO17g/+mNk2K2rhBmLIjXmFmdYGGx2DXpCFoQt?=
 =?Windows-1252?Q?0qh1maIWT6pO14eaxmT80GOGBJmpyoXlpvPHUtTQ7O35uPxU818AtP+0?=
 =?Windows-1252?Q?rRzcaa8BX1p4BzstlwgFnvC6C2xg3KhLFcbTuDjbBRryM7DKtRaZysu4?=
 =?Windows-1252?Q?Jhv88b++7MIG35Rs9xXYoWC8BiD7l/eZT0Sw9LJ90du1gg8g0QteSDsD?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW3PR18MB3513.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(8096899003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?ucHu45fR5dua5kZP5pAOR9w7xL9QW5JEYsftJIKv15TRV2Dal5aFKYX+?=
 =?Windows-1252?Q?1wHoM3Y0HtkxjH3RmFlfclVOpE6VFvauU8U6PVpsPeaZ1ZdGDdgROOiG?=
 =?Windows-1252?Q?UAIufhk2lVavlqcWUYSiorEbWrFigrV7s1Ul5LsVo1mv5DWlbRWRFQbk?=
 =?Windows-1252?Q?t1oAr37p6rZy6GF6cNpfvfgbQ/dWte/Jg4PLCEHPBSO+m1fvEV8nDroK?=
 =?Windows-1252?Q?EcZjoXTW00g2KXn/ChGMAsrjGc1+ilNaal3nTAIPl/2WolbIJtWHDM/j?=
 =?Windows-1252?Q?rslKMY2AqRtUngiQ10WQKKCyTQ7ge9evLNt3LXJ78f7EBr8eN+fI1rly?=
 =?Windows-1252?Q?wPcPINaapZcOm6GTInAZ1M3caXBLMNqdAIc+cBUlEqNRUlZythLZRskj?=
 =?Windows-1252?Q?4wAs/CMozEln9NY+JI69tlFkgDSmQTG03LqzL7VEOKO5Ia0UaFvbTHND?=
 =?Windows-1252?Q?aZE948/iZUqB3ulk8po7dyn5lrAPXnSHE9e330/H9W32hVBiWHJ33ijq?=
 =?Windows-1252?Q?1XXrZdrkPKD8k463ZqvMVePhdrCewSmlXMDabAJ2Oo13wr3kghvNwOHZ?=
 =?Windows-1252?Q?dEEoD40vLgtbYwJt2uzs9L63gnJyVZS9aJkOqPvZcSQQTgTB8qtwcLL8?=
 =?Windows-1252?Q?7aF+qWc5hr58Y4mkin9gwbKoNfiotxJaEDCHYl4OLrUIfrEvmw8nlpbt?=
 =?Windows-1252?Q?2XVdw4NLW5gDzOKkFBDj9t5+oxZg/HIQQUEfPVCv742Kj9rM9MjbsFzZ?=
 =?Windows-1252?Q?gb2CEVTa5G+eVm7qhP+DdEE5fZxtaEzUVfy95Wqsz/fsmUjPedABZjpo?=
 =?Windows-1252?Q?UBNn9LQB+5NEt4Tz0Yms+v6htlJTpJafwKpBIFj0ly/1nejYDpZ3Un59?=
 =?Windows-1252?Q?GEifn4O/oMZ0ywyiyZ7Lh/Rr7QLIAAFPttM088lBCbpYDAYKBrLWxLk3?=
 =?Windows-1252?Q?ucEpUsEiHnhFI0hgKXzcDI/SMKqfiOBVYbTaF5tQu1Z4CLgud4OwMwdk?=
 =?Windows-1252?Q?Xm2Q2Vg9bU7LonRV49q7Dz1CghQ/g3lISXdxOp9zyvcnUtjOaZzaqXmK?=
 =?Windows-1252?Q?lNlDbi3G4CchkD4+i5++QWc4WzZZGuKP9RhI11hEbDb7zfQVj/l7m6Qx?=
 =?Windows-1252?Q?r0Olw+YCrNBgCPPiPyeYyCrMNLC/kKWaYmOo7aPnlcNF8Ti9lE7NZbAz?=
 =?Windows-1252?Q?h45lcKbiXf5kITKGgPxjSCvfXAQyvm4BC9QBXDIvAb/Q4TwGVkCz6/8Y?=
 =?Windows-1252?Q?08qVG4KtYfIrr8VjEP4V/62NtIVdICVLzSiXWun8OhApGofPIfUY+434?=
 =?Windows-1252?Q?N09u4dqER28zqwjk7dDqyD0F4aw0txDyfVyxFSUyGS2SM+x9kFy7f8fp?=
 =?Windows-1252?Q?Jq5/6jtDNLdyfdaCjPHERJ6j6Fj6RfZ/XOl5jHSzpq4VEFY/Y/iG662H?=
 =?Windows-1252?Q?jmMymen0B1jtnnanoyt5keikKveM6mWs/bldgugZTon0ENAkwE7bu9wc?=
 =?Windows-1252?Q?bugONbqhiKVu0pUP046IZvDDNF8iyiyMPI3YLpglzQgrAQ2o6OniEsAx?=
 =?Windows-1252?Q?oz+5D1MHNYYFpKlnnnbM/47409huVM8/0aHZEyWAMvDNTt33QKUJcFIg?=
 =?Windows-1252?Q?FBB3CTW30qUKUR5gGnFpA71KMYdooim1znvGDuoPpiLZh3qTxBqMm6RD?=
 =?Windows-1252?Q?RhWvcpBb2myYDzA0tV4/x0vYK5wVre8h9nSPneR73628nnjtIZ/pAw?=
 =?Windows-1252?Q?=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_MW3PR18MB3513CC2B4CCCDE888E2391AE8B4E2MW3PR18MB3513namp_"
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	+26DrTXdPkaURk6vl7QnvGpUul6rSF+KJCAwdPDUNzKYEhUXVfACxEQm5RjQqR9jMzo0NeBRCiGT3w5FzISXmLWCajoYLZE1KIoAPEfceWWGeR4bV9qufQmuuFFCRGmaXBkN01FyWlN+oWuUThZn0mavgkTHaIGyOBwX5A5lL0o8gIC84aQdObLChcFpuH7m8b/pL5TAkCTVxzkXIOgv9tCvuh0HzVK+OqHgKeQI9gSW3maEsW6zf4Hz0tTYhIBF+qofV5JqaugbWqELrCl2T81TobDZx2ZcI9BoCThB4QXdTCa+JWd6bv3W6OsRC1kD9KTSrnY7cVaueMuu2CqQJU+Vigt7XP56+DdqMCZgHMRFEBMycxyJiyHihZwsU2KuCg7TSRRC/r0AP327/uxi+j84nwO7VaY73MHIeQiBHN4kTbZL953kMXWNcjP/sUm7CK2o+H5mh/TOHNju1PRyQD5JwGwqG3UcuSN0DcQe6/Oga2E3R1DIZPce0kErjDO37fd/dpClHs3SsqV0Ae9GoTkVvDvuOY3kVN5nkfgo/ePYjTSrZxrCWrxc/uYEdvtiIgULAMyBAl03aI3WXdCK27qD8gX5qLjd8BV7uwxcs+3rWS1vmLdVwqGTt3VnR9/F4b/LRMuTq0dzu8sADdn1Gg==
X-OriginatorOrg: belden.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR18MB3513.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 360b4b33-8c63-4afe-9648-08dcf40a3944
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2024 08:59:52.7286
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0f7367b1-44f7-45a7-bb10-563965c5f2e5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FUuR7H60WbvlxccZNRI+C59C70nZca47NEfOs+jl6I7tkWLZwNy+3htrXzsCQI7dlSWeZwT5ZzALYusg/8XwY1l3r109yP8GKs7QXXPfQ7s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR18MB3530
X-Proofpoint-GUID: iIqgtekyw5Q6icuMuUuCJTLmYIcVC1AR
X-Proofpoint-ORIG-GUID: iIqgtekyw5Q6icuMuUuCJTLmYIcVC1AR
Subject: Re:  Re: [yocto] populate_sysroot not found in x86_64 x86_64_ubuntu-20.04
 #yocto
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 phishscore=0
 adultscore=0 bulkscore=0 spamscore=0 mlxscore=0 lowpriorityscore=0
 mlxlogscore=999 clxscore=1015 suspectscore=0 impostorscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410240070
X-Proofpoint-TriggeredRule: module.spam.rule.outbound_notspam
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Oct 2024 09:00:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64105

--_000_MW3PR18MB3513CC2B4CCCDE888E2391AE8B4E2MW3PR18MB3513namp_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"

Hi,

When you are using yocto, by default unpack the compress files that you put=
 in SRC_URI. Therefore, you will not find the .tgz in the working directory=
. In order to avoid that you need to specify that in the recipe.

See: https://docs.yoctoproject.org/dev-manual/new-recipe.html?highlight=3Du=
npack#fetching-code
Files mentioned in SRC_URI whose names end in a typical archive extension (=
e.g. .tar, .tar.gz, .tar.bz2, .zip, and so forth), are automatically extrac=
ted during the do_unpack task. For another example that specifies these typ=
es of files, see the =93Building an Autotooled Package=94 section.

In order to avoid this, you can add to the file:// line the flag ";unpack=
=3D0". You can see this kind of behaviors if you search directly in the fol=
der of the recipe what happen after you try to bake it.

# Just build again
bitbake <name_recipe>
.... Error

# Get the WORKDIR of the recipe to know exactly what is there
bitbake -e <name_recipe> | grep ^WORKDIR=3D | sed -n -e 's/^.*WORKDIR=3D"//=
p' | sed -n -e 's/".*$//p'


Sincerely,


Jairo R. Mejia Aponte | Embedded Software Linux Junior Engineer

Netmodule | Hirschmann Automation & Control GmbH

Location Eschborn | Frankfurter Str. 10-14 | 65760 Eschborn | Germany

jairo.mejiaaponte@belden.com<mailto:jairo.mejiaaponte@belden.com> | www.net=
module.com<http://www.netmodule.com/> | www.belden.com<http://www.belden.co=
m/>

________________________________
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of umeshyv <umeshyv@gmail.com>
Sent: 24 October 2024 7:31 AM
To: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: [EXTERNAL] Re: [yocto] populate_sysroot not found in x86_64 x86_64=
_ubuntu-20.04 #yocto


External Message:Use caution before opening links or attachments

Hi Aleksandar

Thanks for your reply

I removed SAVEDDIR in the recipe and replaced with WORKDIR inside do_instal=
l() and when I build, following is the error

ERROR: xxx-tools-native-1.0-r0 do_install: ExecutionError('/home/xxx/xxx/xx=
x/build-xxx/tmp/work/xxx-linux/tools-native/1.0-r0/temp/run.do_install.3249=
', 1, None, None)

In the log file

DEBUG: Python function extend_recipe_sysroot finished
| DEBUG: Executing shell function do_install
| install: cannot stat '/home/xxx/xxx/xxx/build-xxx/tmp/work/xxx-linux/tool=
s-native/1.0-r0/*.tgz': No such file or directory

Am I still missing anything, suggestions please

Thanks
umesh


On Thu, 24 Oct 2024 at 06:02, Aleksandar Nikolic via Lists.Yoctoproject.Org=
<https://urldefense.com/v3/__http://Lists.Yoctoproject.Org__;!!Fpyg6SJIkmEl=
Pg!39plYaiSOTIy8bd-QKJFH50DgNpadfVTOCd8y38Y37NIU4K6jlNMu_PhINYt1iaS8sAywN5q=
TCotee5O_MW0cA$> <aleksandar.nikolic010=3Dgmail.com@lists.yoctoproject.org<=
mailto:gmail.com@lists.yoctoproject.org>> wrote:
On Wed, Oct 23, 2024 at 12:39 PM, umeshyv wrote:
Hi

I get below error for the recipe which copies .tgz files to a directory

ERROR: lib32-xxxxxx-image-1.0-r0 do_prepare_recipe_sysroot: Manifest /home/=
x/projects/x/build-x/tmp/sstate-control/manifest-x86_64_ubuntu-20.04-sigma-=
tools-native.populate_sysroot not found in x86_64 x86_64_ubuntu-20.04 (vari=
ant '')?

Here is my recipe

SUMMARY =3D "Tools"
LICENSE =3D "CLOSED"
SAVEDDIR :=3D "${THISDIR}/files"

SRC_URI =3D "file://1xx.tgz \
           file://2xx.tgz \
           file://3xx.tgz \
           file://4xx.tgz"

do_install() {
        install -d ${D}/opt/tools
        install -m 0755  ${SAVEDDIR}/*.tgz ${D}/opt/tools
}
FILES_${PN} +=3D "/opt/tools/*"

Looking for suggestions for this error. I did trails writing do_prepare_rec=
ipe_sysroot() {} but I get same error.

Please help me on this regard.

Thanks
umesh

You are not supposed to copy those files directly from the files directory,=
 as Yocto will automatically copy them to your WORKDIR with the do_fetch() =
task. Instead try to install them from the WORKDIR directory and remove thi=
s SAVEDIR variable, you don't really need that.

Aleksandar

**********************************************************************
DISCLAIMER:
Privileged and/or Confidential information may be contained in this message=
. If you are not the addressee of this message, you may not copy, use or de=
liver this message to anyone. In such event, you should destroy the message=
 and kindly notify the sender by reply e-mail. It is understood that opinio=
ns or conclusions that do not relate to the official business of the compan=
y are neither given nor endorsed by the company. Thank You.

--_000_MW3PR18MB3513CC2B4CCCDE888E2391AE8B4E2MW3PR18MB3513namp_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="windows-1252"

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Hi,&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
When you are using yocto, by default unpack the compress files that you put=
 in SRC_URI. Therefore, you will not find the .tgz in the working directory=
. In order to avoid that you need to specify that in the recipe.&nbsp;<br>
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
See: <a href=3D"https://docs.yoctoproject.org/dev-manual/new-recipe.html?hi=
ghlight=3Dunpack#fetching-code" id=3D"LPlnk794953" class=3D"OWAAutoLink">
https://docs.yoctoproject.org/dev-manual/new-recipe.html?highlight=3Dunpack=
#fetching-code</a></div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Files mentioned in SRC_URI whose names end in a typical archive extension (=
e.g. .tar, .tar.gz, .tar.bz2, .zip, and so forth), are automatically extrac=
ted during the do_unpack task. For another example that specifies these typ=
es of files, see the =93Building an
 Autotooled Package=94 section.</div>
<div id=3D"Signature" class=3D"elementToProof" style=3D"color: inherit;">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
In order to avoid this, you can add to the file:// line the flag &quot;;unp=
ack=3D0&quot;. You can see this kind of behaviors if you search directly in=
 the folder of the recipe what happen after you try to
<i>bake</i>&nbsp;it.&nbsp;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"line-height: 19px; white-space: pre; font-family: Aptos, Apto=
s_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-s=
ize: 11pt; color: rgb(0, 0, 0);">
<i># Just build again</i></div>
<div style=3D"line-height: 19px; white-space: pre; font-family: Aptos, Apto=
s_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-s=
ize: 11pt; color: rgb(0, 0, 0);">
bitbake &lt;name_recipe&gt;</div>
<div style=3D"line-height: 19px; white-space: pre; font-family: Aptos, Apto=
s_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-s=
ize: 11pt; color: rgb(0, 0, 0);">
.... Error</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: =
rgb(0, 0, 0);">
<br>
</div>
<div style=3D"line-height: 19px; white-space: pre; font-family: Aptos, Apto=
s_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-s=
ize: 11pt; color: rgb(0, 0, 0);">
<i># Get the WORKDIR of the recipe to know exactly what is there</i></div>
<div style=3D"line-height: 19px; white-space: pre; font-family: Aptos, Apto=
s_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-s=
ize: 11pt; color: rgb(0, 0, 0);">
bitbake -e &lt;name_recipe&gt; | grep ^WORKDIR=3D | sed -n -e 's/^.*WORKDIR=
=3D&quot;//p' | sed -n -e 's/&quot;.*$//p'</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
Sincerely,&nbsp;<br>
<br>
</div>
<p style=3D"text-align: left; text-indent: 0px; background-color: white; ma=
rgin: 0px;">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);"><b>=
Jairo R. Mejia Aponte</b>&nbsp;| Embedded Software Linux Junior Engineer&nb=
sp;</span></p>
<p style=3D"text-align: left; text-indent: 0px; background-color: white; ma=
rgin: 0px;">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">Net=
module | Hirschmann Automation &amp; Control GmbH</span></p>
<p style=3D"text-align: left; text-indent: 0px; background-color: white; ma=
rgin: 0px;">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">Loc=
ation Eschborn | Frankfurter Str. 10-14 | 65760 Eschborn | Germany</span></=
p>
<p style=3D"text-align: left; text-indent: 0px; background-color: white; ma=
rgin: 0px;">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(23, 78, 134);"=
><a href=3D"mailto:jairo.mejiaaponte@belden.com" id=3D"OWA253e1224-5d7d-954=
8-bf18-58760418da82" class=3D"OWAAutoLink" title=3D"mailto:jairo.mejiaapont=
e@belden.com" style=3D"color: rgb(23, 78, 134); margin-top: 0px; margin-bot=
tom: 0px;">jairo.mejiaaponte@belden.com</a>&nbsp;|
<a href=3D"http://www.netmodule.com/" target=3D"_blank" id=3D"OWA60dfcc6e-a=
b88-2511-e666-bde72d4b42a6" class=3D"OWAAutoLink" rel=3D"noopener noreferre=
r" data-ogsc=3D"rgb(12, 100, 192)" data-linkindex=3D"1" data-auth=3D"NotApp=
licable" style=3D"color: rgb(23, 78, 134); margin: 0px;">
www.netmodule.com</a>&nbsp;| <a href=3D"http://www.belden.com/" target=3D"_=
blank" id=3D"OWAbcc90d12-02bd-4507-ca0b-4671cc5896ec" class=3D"OWAAutoLink"=
 rel=3D"noopener noreferrer" data-ogsc=3D"rgb(12, 100, 192)" data-linkindex=
=3D"2" data-auth=3D"NotApplicable" style=3D"color: rgb(23, 78, 134); margin=
: 0px;">
www.belden.com</a></span></p>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> yocto@lists.yoctoproj=
ect.org &lt;yocto@lists.yoctoproject.org&gt; on behalf of umeshyv &lt;umesh=
yv@gmail.com&gt;<br>
<b>Sent:</b> 24 October 2024 7:31 AM<br>
<b>To:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject:</b> [EXTERNAL] Re: [yocto] populate_sysroot not found in x86_64=
 x86_64_ubuntu-20.04 #yocto</font>
<div>&nbsp;</div>
</div>
<div>
<div><font face=3D"calibri light" size=3D"3" color=3D"red">
<p><b>External Message:</font><font face=3D"calibri light" size=3D"3" color=
=3D"red">Use caution before opening links or attachments</font></b></p>
<p></p>
</div>
<div dir=3D"ltr">
<div class=3D"x_gmail_default" style=3D"font-family:monospace; font-size:la=
rge; color:#0000ff">
Hi Aleksandar</div>
<h3 class=3D"x_gmail-iw x_gmail-gFxsud" style=3D"overflow:hidden; margin:in=
herit; text-overflow:ellipsis; font-family:&quot;Google Sans&quot;,Roboto,R=
obotoDraft,Helvetica,Arial,sans-serif; line-height:20px">
<font color=3D"#1f1f1f"><span style=3D"font-size:14px"><br>
</span></font><span class=3D"x_gmail_default" style=3D"font-family:monospac=
e; font-size:large; color:rgb(0,0,255)"><span style=3D"font-weight:400">Tha=
nks for your reply</span></span><br>
</h3>
<div><span class=3D"x_gmail_default" style=3D"font-family:monospace; font-s=
ize:large; color:rgb(0,0,255)"><span style=3D"font-weight:400"><br>
</span></span></div>
<div><span class=3D"x_gmail_default" style=3D"font-family:monospace; font-s=
ize:large; color:rgb(0,0,255)"><span style=3D"font-weight:400">I removed SA=
VEDDIR in the recipe and replaced with WORKDIR inside do_install() and when=
 I build, following is the error</span></span></div>
<div><span class=3D"x_gmail_default" style=3D"font-family:monospace; font-s=
ize:large; color:rgb(0,0,255)"><span style=3D"font-weight:400"><br>
</span></span></div>
<div><span class=3D"x_gmail_default" style=3D"font-family:monospace; font-s=
ize:large; color:rgb(0,0,255)">ERROR: xxx-tools-native-1.0-r0 do_install: E=
xecutionError('/home/xxx/xxx/xxx/build-xxx/tmp/work/xxx-linux/tools-native/=
1.0-r0/temp/run.do_install.3249', 1,
 None, None)<br>
</span></div>
<div><span class=3D"x_gmail_default" style=3D"font-family:monospace; font-s=
ize:large; color:rgb(0,0,255)"><br>
</span></div>
<div><span class=3D"x_gmail_default" style=3D"font-family:monospace; font-s=
ize:large; color:rgb(0,0,255)">In the log file<br>
<br>
DEBUG: Python function extend_recipe_sysroot finished<br>
| DEBUG: Executing shell function do_install<br>
| install: cannot stat '/home/xxx/xxx/xxx/build-xxx/tmp/work/xxx-linux/tool=
s-native/1.0-r0/*.tgz': No such file or directory<br>
</span></div>
<div><span class=3D"x_gmail_default" style=3D"font-family:monospace; font-s=
ize:large; color:rgb(0,0,255)"><br>
</span></div>
<div><span class=3D"x_gmail_default" style=3D"font-family:monospace; font-s=
ize:large; color:rgb(0,0,255)"><span style=3D"font-weight:400">Am I still m=
issing anything, suggestions please</span></span></div>
<div><span class=3D"x_gmail_default" style=3D"font-family:monospace; font-s=
ize:large; color:rgb(0,0,255)"><span style=3D"font-weight:400"><br>
</span></span></div>
<div>
<div dir=3D"ltr" class=3D"x_gmail_signature" data-smartmail=3D"gmail_signat=
ure">
<div dir=3D"ltr">
<div style=3D"color:rgb(0,0,255)"><font face=3D"monospace" size=3D"4">Thank=
s</font></div>
<font face=3D"monospace" size=3D"4"><span style=3D"color:rgb(0,0,255)"><spa=
n class=3D"x_gmail_default" style=3D"font-family:monospace; font-size:large=
; color:rgb(0,0,255)">umesh</span></span></font></div>
</div>
</div>
<br>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Thu, 24 Oct 2024 at 06:02, Aleks=
andar Nikolic via
<a href=3D"https://urldefense.com/v3/__http://Lists.Yoctoproject.Org__;!!Fp=
yg6SJIkmElPg!39plYaiSOTIy8bd-QKJFH50DgNpadfVTOCd8y38Y37NIU4K6jlNMu_PhINYt1i=
aS8sAywN5qTCotee5O_MW0cA$">
Lists.Yoctoproject.Org</a> &lt;aleksandar.nikolic010=3D<a href=3D"mailto:gm=
ail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.org</a>&gt; wr=
ote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div>On Wed, Oct 23, 2024 at 12:39 PM, umeshyv wrote:</div>
<div>
<blockquote>
<div>Hi&nbsp;</div>
<div>&nbsp;</div>
<div>I get below error for the recipe which copies .tgz files to a director=
y</div>
<div>&nbsp;</div>
<div>ERROR: lib32-xxxxxx-image-1.0-r0 do_prepare_recipe_sysroot: Manifest /=
home/x/projects/x/build-x/tmp/sstate-control/manifest-x86_64_ubuntu-20.04-s=
igma-tools-native.populate_sysroot not found in x86_64 x86_64_ubuntu-20.04 =
(variant '')?</div>
<div>&nbsp;</div>
<div>Here is my recipe</div>
<div>&nbsp;</div>
<div>
<div>SUMMARY =3D &quot;Tools&quot;<br>
LICENSE =3D &quot;CLOSED&quot;</div>
<div>SAVEDDIR :=3D &quot;${THISDIR}/files&quot;</div>
<div><br>
SRC_URI =3D &quot;file://1xx.tgz \<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;file://2xx.tgz \<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;file://3xx.tgz \<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;file://4xx.tgz&quot;</div>
<div><br>
do_install() {</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; install -d ${D}/opt/tools<br>
&nbsp; &nbsp; &nbsp; &nbsp; install -m 0755 &nbsp;${SAVEDDIR}/*.tgz ${D}/op=
t/tools<br>
}</div>
<div>FILES_${PN} +=3D &quot;/opt/tools/*&quot;</div>
</div>
<div>&nbsp;</div>
<div>Looking for suggestions for this error. I did trails writing do_prepar=
e_recipe_sysroot() {} but I get same error.&nbsp;<br>
<br>
</div>
<div>Please help me on this regard.<br>
<br>
</div>
<div>Thanks</div>
<div>umesh</div>
<div>&nbsp;</div>
</blockquote>
You are not supposed to copy those files directly from the files directory,=
 as Yocto will automatically copy them to your WORKDIR with the do_fetch() =
task. Instead try to install them from the WORKDIR directory and remove thi=
s SAVEDIR variable, you don't really
 need that.</div>
<div>&nbsp;</div>
<div>Aleksandar</div>
</blockquote>
</div>
</div>

<HR>DISCLAIMER:<BR>
Privileged and/or Confidential information may be contained in this message=
. If you are not the addressee of this message, you may not copy, use or de=
liver this message to anyone. In such event, you should destroy the message=
 and kindly notify the sender by reply e-mail. It is understood that opinio=
ns or conclusions that do not relate to the official business of the compan=
y are neither given nor endorsed by the company. Thank You.<BR>
</body>
</html>

--_000_MW3PR18MB3513CC2B4CCCDE888E2391AE8B4E2MW3PR18MB3513namp_--

