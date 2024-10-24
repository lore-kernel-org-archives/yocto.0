Return-Path: <jairo.mejiaaponte@belden.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C2FACE8E8D
	for <webhook@archiver.kernel.org>; Thu, 24 Oct 2024 15:45:18 +0000 (UTC)
Received: from mx0a-00015a02.pphosted.com (mx0a-00015a02.pphosted.com [205.220.166.249])
 by mx.groups.io with SMTP id smtpd.web11.17787.1729784708818985722
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Oct 2024 08:45:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@belden.com header.s=podpps1 header.b=dNs+kyXD;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: belden.com, ip: 205.220.166.249, mailfrom: prvs=0027135c49=jairo.mejiaaponte@belden.com)
Received: from pps.filterd (m0382794.ppops.net [127.0.0.1])
	by mx0a-00015a02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49O70fiP016734;
	Thu, 24 Oct 2024 11:45:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=belden.com; h=
	content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=podpps1; bh=d5L4Jl8G1b2L52gVBd94/46VvJ
	l75ahgAaSBXju81Rw=; b=dNs+kyXD3f7dODgu5DVuhWZSnHu7l/jZ6huiUUq5Hw
	YS96/f+373mos7SPcwbKQRiJmU9W8BpwzM31kXmB/CATM8xjjibsdDOk64zXEKT2
	buP2gKVIPOJ9obI5RyGxfIJ580QWKcT3PM2VXLep9BGuRtkq8PLa4uyszSBraXy4
	YU5EgD+C/PPh9UThiZHoDTbZVT7DB+B9MsIlr8xg+TJL5aSUIPmmvlYJaDIjJaGw
	7PWRygVshEWzdS1/SaPk85fprsyjM8IBQ4Ymv1j1nIcI9esJW8K5oiHfq6HmaFc5
	J3/CTLOV+OsBzYs7iA/W7qkyMnkd4ybwWUTbctU9iRtQ==
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2049.outbound.protection.outlook.com [104.47.58.49])
	by mx0a-00015a02.pphosted.com (PPS) with ESMTPS id 42em6q447a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 24 Oct 2024 11:45:05 -0400 (EDT)
Received: from MW3PR18MB3513.namprd18.prod.outlook.com (2603:10b6:303:53::8)
 by MW3PR18MB3498.namprd18.prod.outlook.com (2603:10b6:303:5f::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.18; Thu, 24 Oct
 2024 15:45:03 +0000
Received: from MW3PR18MB3513.namprd18.prod.outlook.com
 ([fe80::4746:3d94:564:8d62]) by MW3PR18MB3513.namprd18.prod.outlook.com
 ([fe80::4746:3d94:564:8d62%6]) with mapi id 15.20.8093.018; Thu, 24 Oct 2024
 15:45:03 +0000
From: Jairo Mejia Aponte <Jairo.MejiaAponte@belden.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
        "umeshyv@gmail.com" <umeshyv@gmail.com>
Thread-Topic: [EXTERNAL] Re: [yocto] populate_sysroot not found in x86_64
 x86_64_ubuntu-20.04 #yocto
Thread-Index: AQHbJdHwg+B3PH8U7EGewMxEft7zvbKVYEwAgAA2gSeAAF44AIAAFfqg
Date: Thu, 24 Oct 2024 15:45:03 +0000
Message-ID: 
 <MW3PR18MB35138C8B6E913C58C05C49898B4E2@MW3PR18MB3513.namprd18.prod.outlook.com>
References: <hr8z.1729679886163625789.9CMP@lists.yoctoproject.org>
 <17835.1729746148931815318@lists.yoctoproject.org>
 <CA+Kjy2wHN5=iAQd-GqMzGg2VE74wJzjsq4jn7xDUsKE0SYpaFQ@mail.gmail.com>
 <MW3PR18MB3513CC2B4CCCDE888E2391AE8B4E2@MW3PR18MB3513.namprd18.prod.outlook.com>
 <CA+Kjy2wW6hjk9o-_DeWgbvwDXYwOhOpqDfRvytY9RzJDkc=r3g@mail.gmail.com>
In-Reply-To: 
 <CA+Kjy2wW6hjk9o-_DeWgbvwDXYwOhOpqDfRvytY9RzJDkc=r3g@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW3PR18MB3513:EE_|MW3PR18MB3498:EE_
x-ms-office365-filtering-correlation-id: 3ac367ad-3611-4d08-a9ae-08dcf442d35d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|366016|376014|1800799024|38070700018|8096899003;
x-microsoft-antispam-message-info: 
 =?Windows-1252?Q?haSvs1LsWz9PBnbBGuA/wPwhpfXk1mPGPosHg+/SMBT5rU0pGXCZjzQ+?=
 =?Windows-1252?Q?W3J8EZT0PF2qy3jyPTLy5mTnWMlYUegsEPI8eddzRgEK+frrAFlZqHsf?=
 =?Windows-1252?Q?wbnnzYJM9I+p6e4vrRvrJXYWPRdvy0SysXsS2KPXy3owJPBP3WLMmk7p?=
 =?Windows-1252?Q?ZAznYE/BDg9yFFkVN+6O9pv/TbXNoZhl/DXaCtvB4EWIyKYW6jKl8b2T?=
 =?Windows-1252?Q?rznrjvHwf3HLOaScWEMNnmpBOhl/fsPo8bPPcjXyXuyCwXrZRJyYvc3P?=
 =?Windows-1252?Q?y2Ytn2j8kNVZC/dHBxczojNmPQuXAyb4y7PoXamPmMHMJxF8dt8Qvykr?=
 =?Windows-1252?Q?ooLZs0m+M79CkY86tA7FqkhE1pNXh6QPF/tiXeh+VhUUQihIeC2WXSB2?=
 =?Windows-1252?Q?nlO4+7gtu1EUsu+Yv3DCPGF3W5w8MAWWJOpkWyIksLlzGh6QzDGitG8G?=
 =?Windows-1252?Q?RDtT6HByBZ7AjSbbtJAJDXMuwk0nK7zyVzwgy8OhE2PvUxtSsLVzDaWM?=
 =?Windows-1252?Q?tw0Mqq7tQ8d80JZsy01UBLKfzhJj/NGm+wbFpaMMuhU7cxQz0opn5K8z?=
 =?Windows-1252?Q?Gm02HLgT373+nXAuubuO/AtkFuKGqGW/V3lWW+sTfP46upVvdSO6O8kf?=
 =?Windows-1252?Q?O9UXb0Ie0Azz4LpGVT4LwumlDdoZ9KkeR7l1Aau3Jxn/And1R3XKnJyb?=
 =?Windows-1252?Q?rzHIVBtthxZETGAjn6lSqHzvNFSITc5QvTkWIW7iB1HK0xLon0gMO9g6?=
 =?Windows-1252?Q?dnS6YJNtTxXJFHorUG1nFM+AupmrYE89B2lnME45SYfcInEq8MIkrVyC?=
 =?Windows-1252?Q?KBLIjrM9NJvK090DQEjcNgp+3Xw4ao6cC9mUZRfxVj+xATxOwExiIRcn?=
 =?Windows-1252?Q?wha4SPNPAqvnInU/GOexlYJVtHuL7aCg+FyEVjlr8b8rpaHjz2u2HsjV?=
 =?Windows-1252?Q?RGyUj1pYeefuVly9dif4e9dwo3Wh2NzezpCUyDa8C7AdV/GExCKyy8Yz?=
 =?Windows-1252?Q?g6pJJjTm0Dd9D5QdNS1LnmDJm8V7wmhu8+0+w+wedly0mVe25z6rPq5c?=
 =?Windows-1252?Q?GOJLFil5g+L9kxVKlXrtt1Mjj+HnlqMIRhZCARg6CbQ86ZaoXIjp5ioX?=
 =?Windows-1252?Q?uzqraRimP6L83xRrdhjumf5wZ0L+ApMK9XCITbeaMlkNW0eGFYL52wAL?=
 =?Windows-1252?Q?LNt6ga74d9r4TCfQWVhVKNBYgWLGgw9dRboAqDDGYI/Tkuifbl2tbbXe?=
 =?Windows-1252?Q?8LMKr+POtfK6BlHFQ7JfxNv7wYeNQNay3M5pf8yjSAVrPRCeiOl0n/RE?=
 =?Windows-1252?Q?NGfQFYvMmVaCdkF8eJgKPOV4grw5u19/7vpwPQIozP4uy+lpGuLuSvyX?=
 =?Windows-1252?Q?3nCX5n0hN49enxEzCNDPVNBShCPD7hzqeZ6HQZd9HGnXXW19XDegQHoe?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW3PR18MB3513.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700018)(8096899003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?TODHQLIxIp4pupY6YT3RHokKoDzU1n2XLBxO0lXGrhtUlJfBgcLREUkk?=
 =?Windows-1252?Q?AGJSryxncUu1epPpUctzq8S3geGMB+wMVz/ZEsqn29Ne0n5gjpMB83O2?=
 =?Windows-1252?Q?ZGKSFiJ1YTzGZ8YMu2+vfaiWM/FlTj0hUYqXXogF8b+n1Diye+qBv6mx?=
 =?Windows-1252?Q?rBSrfFT6Cvl82T5RKUxXg0gUrmZ/DfQlQp0m9wZoUbdcwsDWwYozu2G+?=
 =?Windows-1252?Q?CQaAVAdPKaPg/AaIB0ChouPx0xlN2JPXZ4VyAhGmHjMLXxb3Gwfm8Gob?=
 =?Windows-1252?Q?SYSRhaJUdukRIxqt0Kg3bMe3TWhElm+r4411b2wYFDm8mPqlJnhmdOvB?=
 =?Windows-1252?Q?gfVvxaTzg7TJ4ddgtRFqNRA4TPrghEjdL7Skm5r0RjweTOxIBrBwb4uc?=
 =?Windows-1252?Q?+ZN3vMv5Em23IpWKMWgj0g8rMAHdfGsR8u2fMain1UeywtobE4dvDKqC?=
 =?Windows-1252?Q?2ppt7HhPToumUgO5PDW9vruHDkap+y9DDq0WJhPaL+NwYSxCUhiHEVig?=
 =?Windows-1252?Q?pLw4ghd9lrRiMuRuypAV5FYWyGDlUB0431Bqsv0rfkocu2xXfcTTna9Q?=
 =?Windows-1252?Q?zzwjSCa5EaKQ0QkMuyAkLmxEC4lMwLX8AGBsTEUnV5aegeoyhMJnYmkR?=
 =?Windows-1252?Q?Vc1l9Aha/X12onzvTD+NhKIkvuwc/SAQkg56GhvRxGmTiyLUyT7yC6VD?=
 =?Windows-1252?Q?+cGyzz3NIzq9Yc/Vo8x4gvgblYjNnl9A4SoHJaA44pqpkzrVemjcNqAy?=
 =?Windows-1252?Q?TKNk04f6NcgcSFMzgWBnXT4UfskqzfO28MTIOAPj7mqR/1NSWgD+kRdX?=
 =?Windows-1252?Q?yaL6AjL4sdFkoP2hnfx+PaufTv2CTZ6g4aobaNgAqh4x4AO/uZVJcGjo?=
 =?Windows-1252?Q?9Y3R33cl4UW0FlGueH3uZ3cMtll59DOx3z1OUUWt+1vniiv6x2GxcgDg?=
 =?Windows-1252?Q?ycuR/Z9YLMfdfNT4+uRvszxJFDKTx4FZ++B6BblpMUG9eYSBYiZ9rChr?=
 =?Windows-1252?Q?QxQc1kE5rCS9ae8YIJ7Q76CSnKA3hLj5xI24vdHO6U2gFvOZzi/oDM6M?=
 =?Windows-1252?Q?JX8EqC74Dm7HvZXHte21AKzG2RpvCzo+7FiwnpvwpEBgvLyL4HwPkfRQ?=
 =?Windows-1252?Q?DGgx/d0pJ0X7iw5MZk11vBdeJiPF/tOZ/3v7Q3ln6oA+it6FFIV5Q2/c?=
 =?Windows-1252?Q?rok8554+oW/OO6ubWxPQo4DDl+EojpvYtMR6jwaJQLifpXxYZHX5iuQV?=
 =?Windows-1252?Q?CQrBsv6pyqX/ggj+2xFl/ozD62eg+GL2jj4hpRVqFljr5WXp90b/QQtY?=
 =?Windows-1252?Q?hT/zKuUd0zcttDb6+N/sEUQeu1TSbYstmMKu1Vbu6wRyc+SqlvWtwJqk?=
 =?Windows-1252?Q?+Hf2fpa0tUk9R8MbHCls1wNJJtRDZcwldy6A8R0lguSXkrIY2KeCflKx?=
 =?Windows-1252?Q?hItCmkknXCmn4WBWs8ZlTQiQ3EeoA0U84ESEgAXQa3uVXWozMUYlebif?=
 =?Windows-1252?Q?/bOk0eKz1JXn94lPS2Xt5+HhN42o0h5Ajphx2pND1TpTDavDectKjMYM?=
 =?Windows-1252?Q?NHILAene95rOOwkaasgPSD6MQjtmpVjCkYYcG/usifmpd2G7LUBEHBot?=
 =?Windows-1252?Q?lCIV4RloCB94wpOrz5szqh7fOvBHZOarGa7XRbxZ0AMqe/06Mxwf52FP?=
 =?Windows-1252?Q?eSohHhv8fDQ3jH5Yhi3k8IyCWdmtBrxnGSjbU+OUxIO4z0HoPZ/O8w?=
 =?Windows-1252?Q?=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_MW3PR18MB35138C8B6E913C58C05C49898B4E2MW3PR18MB3513namp_"
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	LQvKFhMpfdQSVGD+DNsvdR/s76RGZB8wcKHdTNB3hWFxyjp8niCRgQSj9UmMhsdTEW3aoodLN50XXY198KGa7t5P7T9a3PX1Lg+Gj1mvs4/ByVjiV47zWG+lSpF4WTUTDNsAknYr6rjsnF+RCq0Bly71L5J26jxxxXF8gd1SNwhwxRZuJKVhrGm++eRh+OSzEtCNbjaZsvMlgRgNNmrOQlghr81K+M0l6uJECeyLkrgb1eRF7VNf2HxaqpE+rRxVGwfMykmf5jM6K8iz5jmc3ouoKZ8bRH1F4Zqx+HEFgbzZCkVn9tWBsDuYVs1H6X7RVSnOqLsb8m6LYI7+Zg3HTVZBQxpw5UDJ/wMXIRkf4NSMD13fWyUP8TnU/aieNeRgHKARHp7CWpwDlItm6DJKIfQQGVPYCgOlOlp7flY/VEnqXaXh5WfxRSPYYvpAO/uQh+haYoiUxYBI4qarsuLroB2+pkrbR/GxGHirtKScG58o1yPC/5r08wnDuX0H85hAHzCumaeNsEBEnnfDMN0ce6tROZcEhWrsyIYvn3n/zh3L2pRXbtcRcGCHA5w4kRpVF3V1QbH05BRFVcbSPFwRjF3gB+LzgsoNANbA7b2HUIeTLWoYNSFLFy4Y0fALHuqAp+EDoj3TMYsmY1/6B6+yzQ==
X-OriginatorOrg: belden.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR18MB3513.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ac367ad-3611-4d08-a9ae-08dcf442d35d
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2024 15:45:03.0442
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0f7367b1-44f7-45a7-bb10-563965c5f2e5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3Mx6i/FeeiirIS1n7c2Ktogpl05M2+T1QlsekErySfxjsHR9Nf9vcF7uo9yalmHxy8aaBhUsttWHDdcsKmw/MhVQSNd1MsTuVHKLDvxPlsE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR18MB3498
X-Proofpoint-ORIG-GUID: m7DeRocEPnLTD0_KriCbj6l3Ne87U0XP
X-Proofpoint-GUID: m7DeRocEPnLTD0_KriCbj6l3Ne87U0XP
Subject: Re:  Re: [yocto] populate_sysroot not found in x86_64 x86_64_ubuntu-20.04
 #yocto
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 phishscore=0 clxscore=1015 adultscore=0 lowpriorityscore=0 mlxlogscore=999
 mlxscore=0 bulkscore=0 spamscore=0 impostorscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2409260000
 definitions=main-2410240129
X-Proofpoint-TriggeredRule: module.spam.rule.outbound_notspam
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Oct 2024 15:45:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64112

--_000_MW3PR18MB35138C8B6E913C58C05C49898B4E2MW3PR18MB3513namp_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"

Hi,

The unpack=3D0 line needs to be for all targz files that you want to have i=
n the target machine. And if still is failing you should check the WORKDIR =
directory to see exactly what is arriving to that folder and see what is fa=
iling from your setup.

If you don't have the files in the WORKDIR, you will never be able to copy =
into the target as you seems to be wanting

# Get the WORKDIR of the recipe to know exactly what is there
bitbake -e <name_recipe> | grep ^WORKDIR=3D | sed -n -e 's/^.*WORKDIR=3D"//=
p' | sed -n -e 's/".*$//p'



Jairo R. Mejia Aponte | Embedded Software Linux Junior Engineer

Netmodule | Hirschmann Automation & Control GmbH

Location Eschborn | Frankfurter Str. 10-14 | 65760 Eschborn | Germany

jairo.mejiaaponte@belden.com<mailto:jairo.mejiaaponte@belden.com> | www.net=
module.com<http://www.netmodule.com/> | www.belden.com<http://www.belden.co=
m/>


________________________________
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of umeshyv <umeshyv@gmail.com>
Sent: 24 October 2024 4:23 PM
To: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: [EXTERNAL] Re: [yocto] populate_sysroot not found in x86_64 x86_64=
_ubuntu-20.04 #yocto


External Message:Use caution before opening links or attachments

Hi Jairo
As you suggested

SUMMARY =3D "Tools"
LICENSE =3D "CLOSED"
#SAVEDDIR :=3D "${THISDIR}/files"
FILESPATH :=3D "${THISDIR}/files:" (Added)

SRC_URI =3D "file://1xx.tgz \
           file://2xx.tgz \
           file://3xx.tgz \
           file://4xx.tgz;unpack=3D0 "

do_install() {
        install -d ${D}/opt/tools
        #install -m 0755  ${SAVEDDIR}/*.tgz ${D}/opt/tools
        install -m 0755 ${WORKDIR}/*.tgz ${D}/opt/tools
}
FILES_${PN} +=3D "/opt/tools/*"

I get error

ERROR: lib32-xxx-xxx-xxx-image-1.0-r0 do_rootfs: Manifest /home/xxx/project=
s/xxx/build-xxx/tmp/sstate-control/manifest-x86_64_ubuntu-20.04-tools-nativ=
e.package_write_ipk not found in x86_64 x86_64_ubuntu-20.04 (variant '')?

Still anything missed ? Please suggest

Thanks
umesh


On Thu, 24 Oct 2024 at 09:59, Jairo Mejia Aponte <Jairo.MejiaAponte@belden.=
com<mailto:Jairo.MejiaAponte@belden.com>> wrote:
Hi,

When you are using yocto, by default unpack the compress files that you put=
 in SRC_URI. Therefore, you will not find the .tgz in the working directory=
. In order to avoid that you need to specify that in the recipe.

See: https://docs.yoctoproject.org/dev-manual/new-recipe.html?highlight=3Du=
npack#fetching-code<https://urldefense.com/v3/__https://docs.yoctoproject.o=
rg/dev-manual/new-recipe.html?highlight=3Dunpack*fetching-code__;Iw!!Fpyg6S=
JIkmElPg!wFdm_AmT888sHjf46tyLuvf3gPUnveKzZZBlvOlujRs4U7X3mN1I7cxgTS2VuSXSPR=
3RBoewiPa4DkON4OCOzQ$>
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
module.com<https://urldefense.com/v3/__http://www.netmodule.com/__;!!Fpyg6S=
JIkmElPg!wFdm_AmT888sHjf46tyLuvf3gPUnveKzZZBlvOlujRs4U7X3mN1I7cxgTS2VuSXSPR=
3RBoewiPa4DkN8F-6eYA$> | www.belden.com<http://www.belden.com/>

________________________________
From: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <yo=
cto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>> on behalf =
of umeshyv <umeshyv@gmail.com<mailto:umeshyv@gmail.com>>
Sent: 24 October 2024 7:31 AM
To: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <yoct=
o@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>>
Subject: [EXTERNAL] Re: [yocto] populate_sysroot not found in x86_64 x86_64=
_ubuntu-20.04 #yocto


External Message:

Use caution before opening links or attachments

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
________________________________
DISCLAIMER:
Privileged and/or Confidential information may be contained in this message=
. If you are not the addressee of this message, you may not copy, use or de=
liver this message to anyone. In such event, you should destroy the message=
 and kindly notify the sender by reply e-mail. It is understood that opinio=
ns or conclusions that do not relate to the official business of the compan=
y are neither given nor endorsed by the company. Thank You.

**********************************************************************
DISCLAIMER:
Privileged and/or Confidential information may be contained in this message=
. If you are not the addressee of this message, you may not copy, use or de=
liver this message to anyone. In such event, you should destroy the message=
 and kindly notify the sender by reply e-mail. It is understood that opinio=
ns or conclusions that do not relate to the official business of the compan=
y are neither given nor endorsed by the company. Thank You.

--_000_MW3PR18MB35138C8B6E913C58C05C49898B4E2MW3PR18MB3513namp_
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
The unpack=3D0 line needs to be for all targz files that you want to have i=
n the target machine. And if still is failing you should check the WORKDIR =
directory to see exactly what is arriving to that folder and see what is fa=
iling from your setup.&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
If you don't have the files in the WORKDIR, you will never be able to copy =
into the target as you seems to be wanting</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
# Get the WORKDIR of the recipe to know exactly what is there<br>
bitbake -e &lt;name_recipe&gt; | grep ^WORKDIR=3D | sed -n -e 's/^.*WORKDIR=
=3D&quot;//p' | sed -n -e 's/&quot;.*$//p'</div>
<div id=3D"Signature" class=3D"elementToProof" style=3D"color: inherit;">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
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
><a href=3D"mailto:jairo.mejiaaponte@belden.com" title=3D"mailto:jairo.meji=
aaponte@belden.com" style=3D"color: rgb(23, 78, 134); margin-top: 0px; marg=
in-bottom: 0px;">jairo.mejiaaponte@belden.com</a>&nbsp;|
<a href=3D"http://www.netmodule.com/" target=3D"_blank" rel=3D"noopener nor=
eferrer" data-ogsc=3D"rgb(12, 100, 192)" data-linkindex=3D"1" data-auth=3D"=
NotApplicable" style=3D"color: rgb(23, 78, 134); margin: 0px;">
www.netmodule.com</a>&nbsp;| <a href=3D"http://www.belden.com/" target=3D"_=
blank" rel=3D"noopener noreferrer" data-ogsc=3D"rgb(12, 100, 192)" data-lin=
kindex=3D"2" data-auth=3D"NotApplicable" style=3D"color: rgb(23, 78, 134); =
margin: 0px;">
www.belden.com</a></span></p>
<p style=3D"text-align: left; text-indent: 0px; background-color: white; ma=
rgin: 0px;">
<span style=3D"font-family: Calibri, sans-serif; font-size: 11pt; color: bl=
ack;"><br>
</span></p>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> yocto@lists.yoctoproj=
ect.org &lt;yocto@lists.yoctoproject.org&gt; on behalf of umeshyv &lt;umesh=
yv@gmail.com&gt;<br>
<b>Sent:</b> 24 October 2024 4:23 PM<br>
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
Hi Jairo</div>
<div class=3D"x_gmail_default" style=3D"font-family:monospace; font-size:la=
rge; color:#0000ff">
As you suggested&nbsp;</div>
<div class=3D"x_gmail_default" style=3D"font-family:monospace; font-size:la=
rge; color:#0000ff">
<br>
</div>
<div class=3D"x_gmail_default" style=3D"font-family:monospace; font-size:la=
rge; color:#0000ff">
<div style=3D"color:rgb(34,34,34); font-family:Arial,Helvetica,sans-serif; =
font-size:small">
SUMMARY =3D &quot;Tools&quot;<br>
LICENSE =3D &quot;CLOSED&quot;</div>
<div style=3D"color:rgb(34,34,34); font-family:Arial,Helvetica,sans-serif; =
font-size:small">
#SAVEDDIR :=3D &quot;${THISDIR}/files&quot;&nbsp;</div>
<div style=3D"color:rgb(34,34,34); font-family:Arial,Helvetica,sans-serif; =
font-size:small">
FILESPATH :=3D &quot;${THISDIR}/files:&quot; (Added)</div>
<div style=3D"color:rgb(34,34,34); font-family:Arial,Helvetica,sans-serif; =
font-size:small">
<br>
SRC_URI =3D &quot;file://1xx.tgz \<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;file://2xx.tgz \<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;file://3xx.tgz \<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;file://4xx.tgz;unpack=3D0 &quot;</=
div>
<div style=3D"color:rgb(34,34,34); font-family:Arial,Helvetica,sans-serif; =
font-size:small">
<br>
do_install() {</div>
<div style=3D"color:rgb(34,34,34); font-family:Arial,Helvetica,sans-serif; =
font-size:small">
&nbsp; &nbsp; &nbsp; &nbsp; install -d ${D}/opt/tools<br>
&nbsp; &nbsp; &nbsp; &nbsp; #install -m 0755 &nbsp;${SAVEDDIR}/*.tgz ${D}/o=
pt/tools</div>
<div style=3D"color:rgb(34,34,34); font-family:Arial,Helvetica,sans-serif; =
font-size:small">
&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;install -m 0755 ${WORKDIR}/*.tgz ${D}/opt/=
tools<br>
}</div>
<div style=3D"color:rgb(34,34,34); font-family:Arial,Helvetica,sans-serif; =
font-size:small">
FILES_${PN} +=3D &quot;/opt/tools/*&quot;</div>
<div style=3D"color:rgb(34,34,34); font-family:Arial,Helvetica,sans-serif; =
font-size:small">
<br>
</div>
<div style=3D"color:rgb(34,34,34); font-family:Arial,Helvetica,sans-serif; =
font-size:small">
I get error&nbsp;</div>
<div style=3D"color:rgb(34,34,34); font-family:Arial,Helvetica,sans-serif; =
font-size:small">
<br>
</div>
<div style=3D"color:rgb(34,34,34); font-family:Arial,Helvetica,sans-serif; =
font-size:small">
<b>ERROR: lib32-xxx-xxx-xxx-image-1.0-r0 do_rootfs: Manifest /home/xxx/proj=
ects/xxx/build-xxx/tmp/sstate-control/manifest-x86_64_ubuntu-20.04-tools-na=
tive.package_write_ipk not found in x86_64 x86_64_ubuntu-20.04 (variant '')=
?</b><br>
</div>
<div style=3D"color:rgb(34,34,34); font-family:Arial,Helvetica,sans-serif; =
font-size:small">
<br>
</div>
<div style=3D"color:rgb(34,34,34); font-family:Arial,Helvetica,sans-serif; =
font-size:small">
<b>Still anything missed ? Please suggest</b></div>
<div style=3D"color:rgb(34,34,34); font-family:Arial,Helvetica,sans-serif; =
font-size:small">
<br>
</div>
</div>
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
<div dir=3D"ltr" class=3D"x_gmail_attr">On Thu, 24 Oct 2024 at 09:59, Jairo=
 Mejia Aponte &lt;<a href=3D"mailto:Jairo.MejiaAponte@belden.com">Jairo.Mej=
iaAponte@belden.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div class=3D"x_msg7205322120523090357">
<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
Hi,&nbsp;</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
When you are using yocto, by default unpack the compress files that you put=
 in SRC_URI. Therefore, you will not find the .tgz in the working directory=
. In order to avoid that you need to specify that in the recipe.&nbsp;<br>
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
See: <a href=3D"https://urldefense.com/v3/__https://docs.yoctoproject.org/d=
ev-manual/new-recipe.html?highlight=3Dunpack*fetching-code__;Iw!!Fpyg6SJIkm=
ElPg!wFdm_AmT888sHjf46tyLuvf3gPUnveKzZZBlvOlujRs4U7X3mN1I7cxgTS2VuSXSPR3RBo=
ewiPa4DkON4OCOzQ$" id=3D"x_m_5239704336177667284LPlnk794953" target=3D"_bla=
nk">
https://docs.yoctoproject.org/dev-manual/new-recipe.html?highlight=3Dunpack=
#fetching-code</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
Files mentioned in SRC_URI whose names end in a typical archive extension (=
e.g. .tar, .tar.gz, .tar.bz2, .zip, and so forth), are automatically extrac=
ted during the do_unpack task. For another example that specifies these typ=
es of files, see the =93Building an
 Autotooled Package=94 section.</div>
<div id=3D"x_m_5239704336177667284Signature" style=3D"color:inherit">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
In order to avoid this, you can add to the file:// line the flag &quot;;unp=
ack=3D0&quot;. You can see this kind of behaviors if you search directly in=
 the folder of the recipe what happen after you try to
<i>bake</i>&nbsp;it.&nbsp;</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"line-height:19px; white-space:pre-wrap; font-family:Aptos,Apt=
os_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size=
:11pt; color:rgb(0,0,0)">
<i># Just build again</i></div>
<div style=3D"line-height:19px; white-space:pre-wrap; font-family:Aptos,Apt=
os_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size=
:11pt; color:rgb(0,0,0)">
bitbake &lt;name_recipe&gt;</div>
<div style=3D"line-height:19px; white-space:pre-wrap; font-family:Aptos,Apt=
os_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size=
:11pt; color:rgb(0,0,0)">
.... Error</div>
<div style=3D"line-height:19px; font-family:Aptos,Aptos_EmbeddedFont,Aptos_=
MSFontService,Calibri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0=
)">
<br>
</div>
<div style=3D"line-height:19px; white-space:pre-wrap; font-family:Aptos,Apt=
os_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size=
:11pt; color:rgb(0,0,0)">
<i># Get the WORKDIR of the recipe to know exactly what is there</i></div>
<div style=3D"line-height:19px; white-space:pre-wrap; font-family:Aptos,Apt=
os_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size=
:11pt; color:rgb(0,0,0)">
bitbake -e &lt;name_recipe&gt; | grep ^WORKDIR=3D | sed -n -e 's/^.*WORKDIR=
=3D&quot;//p' | sed -n -e 's/&quot;.*$//p'</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
Sincerely,&nbsp;<br>
<br>
</div>
<p style=3D"text-align:left; text-indent:0px; background-color:white; margi=
n:0px"><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServ=
ice,Calibri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)"><b>Jair=
o R. Mejia Aponte</b>&nbsp;| Embedded Software
 Linux Junior Engineer&nbsp;</span></p>
<p style=3D"text-align:left; text-indent:0px; background-color:white; margi=
n:0px"><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServ=
ice,Calibri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">Netmodu=
le | Hirschmann Automation &amp; Control
 GmbH</span></p>
<p style=3D"text-align:left; text-indent:0px; background-color:white; margi=
n:0px"><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServ=
ice,Calibri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">Locatio=
n Eschborn | Frankfurter Str. 10-14
 | 65760 Eschborn | Germany</span></p>
<p style=3D"text-align:left; text-indent:0px; background-color:white; margi=
n:0px"><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServ=
ice,Calibri,Helvetica,sans-serif; font-size:11pt; color:rgb(23,78,134)"><a =
href=3D"mailto:jairo.mejiaaponte@belden.com" id=3D"x_m_5239704336177667284O=
WA253e1224-5d7d-9548-bf18-58760418da82" title=3D"mailto:jairo.mejiaaponte@b=
elden.com" target=3D"_blank" style=3D"color:rgb(23,78,134); margin-top:0px;=
 margin-bottom:0px">jairo.mejiaaponte@belden.com</a>&nbsp;|
<a href=3D"https://urldefense.com/v3/__http://www.netmodule.com/__;!!Fpyg6S=
JIkmElPg!wFdm_AmT888sHjf46tyLuvf3gPUnveKzZZBlvOlujRs4U7X3mN1I7cxgTS2VuSXSPR=
3RBoewiPa4DkN8F-6eYA$" id=3D"x_m_5239704336177667284OWA60dfcc6e-ab88-2511-e=
666-bde72d4b42a6" rel=3D"noopener noreferrer" target=3D"_blank" style=3D"co=
lor:rgb(23,78,134); margin:0px">
www.netmodule.com</a>&nbsp;| <a href=3D"http://www.belden.com/" id=3D"x_m_5=
239704336177667284OWAbcc90d12-02bd-4507-ca0b-4671cc5896ec" rel=3D"noopener =
noreferrer" target=3D"_blank" style=3D"color:rgb(23,78,134); margin:0px">
www.belden.com</a></span></p>
</div>
<div id=3D"x_m_5239704336177667284appendonsend"></div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_m_5239704336177667284divRplyFwdMsg" dir=3D"ltr"><font face=3D"=
Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>From:</b>
<a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lis=
ts.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org"=
 target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt; on behalf of umeshy=
v &lt;<a href=3D"mailto:umeshyv@gmail.com" target=3D"_blank">umeshyv@gmail.=
com</a>&gt;<br>
<b>Sent:</b> 24 October 2024 7:31 AM<br>
<b>To:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctop=
roject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;<br>
<b>Subject:</b> [EXTERNAL] Re: [yocto] populate_sysroot not found in x86_64=
 x86_64_ubuntu-20.04 #yocto</font>
<div>&nbsp;</div>
</div>
<div>
<div><font face=3D"calibri light" size=3D"3" color=3D"red">
<p><b>External Message:</b></p>
</font><font face=3D"calibri light" size=3D"3" color=3D"red">Use caution be=
fore opening links or attachments</font>
<p></p>
</div>
<div dir=3D"ltr">
<div style=3D"font-family:monospace; font-size:large; color:rgb(0,0,255)">H=
i Aleksandar</div>
<h3 style=3D"overflow:hidden; margin:inherit; text-overflow:ellipsis; font-=
family:&quot;Google Sans&quot;,Roboto,RobotoDraft,Helvetica,Arial,sans-seri=
f; line-height:20px">
<font color=3D"#1f1f1f"><span style=3D"font-size:14px"><br>
</span></font><span style=3D"font-family:monospace; font-size:large; color:=
rgb(0,0,255)"><span style=3D"font-weight:400">Thanks for your reply</span><=
/span><br>
</h3>
<div><span style=3D"font-family:monospace; font-size:large; color:rgb(0,0,2=
55)"><span style=3D"font-weight:400"><br>
</span></span></div>
<div><span style=3D"font-family:monospace; font-size:large; color:rgb(0,0,2=
55)"><span style=3D"font-weight:400">I removed SAVEDDIR in the recipe and r=
eplaced with WORKDIR inside do_install() and when I build, following is the=
 error</span></span></div>
<div><span style=3D"font-family:monospace; font-size:large; color:rgb(0,0,2=
55)"><span style=3D"font-weight:400"><br>
</span></span></div>
<div><span style=3D"font-family:monospace; font-size:large; color:rgb(0,0,2=
55)">ERROR: xxx-tools-native-1.0-r0 do_install: ExecutionError('/home/xxx/x=
xx/xxx/build-xxx/tmp/work/xxx-linux/tools-native/1.0-r0/temp/run.do_install=
.3249', 1, None, None)<br>
</span></div>
<div><span style=3D"font-family:monospace; font-size:large; color:rgb(0,0,2=
55)"><br>
</span></div>
<div><span style=3D"font-family:monospace; font-size:large; color:rgb(0,0,2=
55)">In the log file<br>
<br>
DEBUG: Python function extend_recipe_sysroot finished<br>
| DEBUG: Executing shell function do_install<br>
| install: cannot stat '/home/xxx/xxx/xxx/build-xxx/tmp/work/xxx-linux/tool=
s-native/1.0-r0/*.tgz': No such file or directory<br>
</span></div>
<div><span style=3D"font-family:monospace; font-size:large; color:rgb(0,0,2=
55)"><br>
</span></div>
<div><span style=3D"font-family:monospace; font-size:large; color:rgb(0,0,2=
55)"><span style=3D"font-weight:400">Am I still missing anything, suggestio=
ns please</span></span></div>
<div><span style=3D"font-family:monospace; font-size:large; color:rgb(0,0,2=
55)"><span style=3D"font-weight:400"><br>
</span></span></div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">
<div style=3D"color:rgb(0,0,255)"><font face=3D"monospace" size=3D"4">Thank=
s</font></div>
<font face=3D"monospace" size=3D"4"><span style=3D"color:rgb(0,0,255)"><spa=
n style=3D"font-family:monospace; font-size:large; color:rgb(0,0,255)">umes=
h</span></span></font></div>
</div>
</div>
<br>
</div>
<br>
<div>
<div dir=3D"ltr">On Thu, 24 Oct 2024 at 06:02, Aleksandar Nikolic via <a hr=
ef=3D"https://urldefense.com/v3/__http://Lists.Yoctoproject.Org__;!!Fpyg6SJ=
IkmElPg!39plYaiSOTIy8bd-QKJFH50DgNpadfVTOCd8y38Y37NIU4K6jlNMu_PhINYt1iaS8sA=
ywN5qTCotee5O_MW0cA$" target=3D"_blank">
Lists.Yoctoproject.Org</a> &lt;aleksandar.nikolic010=3D<a href=3D"mailto:gm=
ail.com@lists.yoctoproject.org" target=3D"_blank">gmail.com@lists.yoctoproj=
ect.org</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex; border-left:1px solid rgb(20=
4,204,204); padding-left:1ex">
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
<hr>
DISCLAIMER:<br>
Privileged and/or Confidential information may be contained in this message=
. If you are not the addressee of this message, you may not copy, use or de=
liver this message to anyone. In such event, you should destroy the message=
 and kindly notify the sender by
 reply e-mail. It is understood that opinions or conclusions that do not re=
late to the official business of the company are neither given nor endorsed=
 by the company. Thank You.<br>
</div>
</div>
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

--_000_MW3PR18MB35138C8B6E913C58C05C49898B4E2MW3PR18MB3513namp_--

