Return-Path: <hongxu.jia@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1F7C433FE
	for <webhook@archiver.kernel.org>; Mon, 24 Jan 2022 02:12:07 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web12.18225.1642990325937471780
 for <yocto@lists.yoctoproject.org>;
 Sun, 23 Jan 2022 18:12:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=BLuV/K0+;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=8023d7b6bd=hongxu.jia@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 20O2826d008306
	for <yocto@lists.yoctoproject.org>; Sun, 23 Jan 2022 18:12:05 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=PPS06212021;
 bh=wb7BxpBDFGRyFKpW2YCPdeDaUxGFZzCK0a6x75ftPps=;
 b=BLuV/K0+G2+YZg7G8srjjMJWvKJvPNJoc57XZ6zpr+bV5GoBfChep+DKoaAikTioE6xq
 hHSjD/hsGtlfFp0sSBhEsizqFiAx9xbcwtf5v6XHoa9gzwNRTpk+apSUkYeC3VNRvd3y
 /s7NQF1Lz4SlXRgT0o4OWTnY1ubtueTHqOOS6ltMFNQRzNirq+cs21aIpfynHc/Fb+Hg
 roHR35F69Hv50Nw4+XjhbkEj9XuNMsCfTVKDAXTBH1zEcKdqRkj1oVWJ7nn5DV6EeWeE
 +qcFleGeUe4Px8RxuaUZc+C6OrQectFsQpXOT/bcJxj44eX3zE+NWC4QyDYYSv/XQ75H wg==
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2105.outbound.protection.outlook.com [104.47.55.105])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3drjaprqu7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Sun, 23 Jan 2022 18:12:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j9ZL6+s8S8JlGlwZql5jeG8goZFr+TfAzMJ6ODEf0r6U0K1ScVHMD56G3eTk+di7bap/g4oCM9uZFPlVLwNI81FeqKMb/eeM80MBwzJgZYzadjPzZv/u/OlWq37zsFQA4bF65i9dIwDv3H/ZOb7g1Jc2c8lRvzsVW6bJpiO03h6Wf49p71spNl9/TN0/LM6TOP5ht8tDsegLYx4GG47fvUdFaqASSwY8ybSnDlNsFG+MmZgS87hZPvf82U5WV6XyujZaIXdtXweYRQ7ohbTs4knAIcvF2V+c7lK8QODafKVWMptSccMITLc/T44kLS0VXYV7vVhtkIvQVSdcYVrnCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wb7BxpBDFGRyFKpW2YCPdeDaUxGFZzCK0a6x75ftPps=;
 b=Qezpdx6d4tA/r9xD2euzfvLVz9t8OAUmObAq762J+lYtaPf+gxZT/dSVOuiU8fNmLOPitK6OkxJLbz9R+FQ1sRq+DAgHlX7STtmJYXi4EjnpGezkyzyxBipcKbXdrYIt1iMZRCD+FPDR72vwT1qJ4+hlJpWvKkMapW5m4snQ7Zdsa1sqXEcBfa8jfBLveTRDhMsI8f053i0AEUcCjYN5OjEAqrNeaLC/imzt8CTPei0QDw77I2QIlu7yHrx0ddlsm0SAXlae03CF7PixjBQlRYt0AvAMaPwFGwW+G55amVFGTrN4/tJNfclMUJP7PUTYA86am+/336v6q2x299dN3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from MW3PR11MB4633.namprd11.prod.outlook.com (2603:10b6:303:5b::9)
 by BY5PR11MB4370.namprd11.prod.outlook.com (2603:10b6:a03:1c3::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.7; Mon, 24 Jan
 2022 02:12:01 +0000
Received: from MW3PR11MB4633.namprd11.prod.outlook.com
 ([fe80::e8dc:b06e:73c8:d95e]) by MW3PR11MB4633.namprd11.prod.outlook.com
 ([fe80::e8dc:b06e:73c8:d95e%6]) with mapi id 15.20.4909.017; Mon, 24 Jan 2022
 02:12:01 +0000
From: "Jia, Hongxu" <Hongxu.Jia@windriver.com>
To: "Li, Changqing" <Changqing.Li@windriver.com>,
        "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [meta-tensorflow][PATCH] Update SRC_URI git default
 protocol
Thread-Topic: [yocto] [meta-tensorflow][PATCH] Update SRC_URI git default
 protocol
Thread-Index: AQHYEMfAX+RcS46vQ0y4N75EYALwfg==
Date: Mon, 24 Jan 2022 02:12:01 +0000
Message-ID: <a354a99c-e007-bafa-1f3f-cbf9e83211c7@windriver.com>
References: <20220121085142.11944-1-changqing.li@windriver.com>
In-Reply-To: <20220121085142.11944-1-changqing.li@windriver.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-imapappendstamp: MW3PR11MB4633.namprd11.prod.outlook.com
 (15.20.4909.017)
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
suggested_attachment_session_id: 6c1b53da-174d-f2d2-24e4-8582262dc644
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 12686e71-dc8d-4ccf-4e08-08d9dedee8be
x-ms-traffictypediagnostic: BY5PR11MB4370:EE_
x-microsoft-antispam-prvs: 
 <BY5PR11MB4370DA5373588F9C9FBD869E945E9@BY5PR11MB4370.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 JDnWcc4aEfyORsUfmAclUXWRUBXCyr8IccMzSLnHUVAvy2YvzG3ZviYePJbn3VkeFE7py9l0vNMaKtFu+dnFvA+tvrPIIfkVgWqXqUXgdiebe/QiNQ6Pb6+pkdpCpaSPybCTL+QMNB0ly1YE/emPIvh6Dip3svEBvMFgkjURBXbr7BfAHT1BckE/tlSW82+LDa1ssHNH9MJdD+hDArY4E8fuSG3W7OoqvzK6S66jKZXJUX90k36bqEojyCVdSTHzI4kUsJBIsdTJXsx1eiyeE6hCE/7JHf4PLy/pnk7kyD+kKmJJ0mgxUTpA+H4jXIpw6Wm3ukMIzlfrwXtqCewBQ0HZRbngHgOYmKsmlEwv3qwdpjNaNyYB1dfx9UQVYTMIpjImR06Uqu9LAYRX0SFmm8/y2lnAUz5Nxq/hOQTFlQCn2gYFZA0NfBH+jwKlsft3Rf67Jt7WI/nCzXjvyT8/3L5DirPcXC/zvMQAB7kN7cQtNv0Q5f5vj1v1t7w9RCgfeiQ0Pt3yQKvX41PiOuYow1abdL1JfFCup5o2/7ADp7yTWeIsQEcYcSNh3H5ZyyD2Cjh2UkolXCvrU2UIH5u7RnHCV3wu19LXWf/FsAbJS192DjHuQNDsx4FZtkr78oZ8fIk3szozcajwl1gylEK1RURDQrXthV6Uq2sb6SZlUgiYyoMoR43fVFpsS2HTfVLjGRLAQxNaikKzqlpLPV1EQ6M3dasmgsh+6/0CuciB/1jA0JWlzOcHexlPCo6wc7Y5Kp/rHUYA9baToMPAroVU2F2FkVvmxYLMkcoccmChh32rR+l0BE8yzhZc/peQBebGgYFrIEOltUf6J6IvtFvaBoNSIdSpehSi9Kpq6sOiyATUuXwLE8apflYecmfbh2y6NN6dtgrBbwYLoT0f73oOxg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW3PR11MB4633.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(15650500001)(5660300002)(53546011)(2616005)(2906002)(186003)(66476007)(508600001)(31696002)(966005)(83380400001)(38100700002)(71200400001)(122000001)(66446008)(26005)(316002)(31686004)(6506007)(110136005)(8676002)(8936002)(76116006)(38070700005)(86362001)(64756008)(6512007)(66946007)(36756003)(91956017)(6486002)(66556008)(43740500002)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?JOBqyCxV3sCAUEP0yGZpFMPzSYODXNotkmUCCJRZjFPj4hrWqrWIlQ8LBa?=
 =?iso-8859-1?Q?blWvOj4BLJeu+HzPZOzTP+ZZeZe0ZkDT1zX0n2K8X9gIbqU6Gd503OGvAL?=
 =?iso-8859-1?Q?e12gdzxYfqPH99rf5FtERGuQMzOb2tWIEdzjCoT8BpL27aTO+clGv9G17j?=
 =?iso-8859-1?Q?XsmNGgxnmAjjGPLmdnP21+gpoHttbo3ak3msSxMFCmXEyjF2EbGW7Kis+P?=
 =?iso-8859-1?Q?k0FWgKukKf3Tfn0OKWz2bjF2XtknC9KE5kbLJgiBoVRrWZNKfhcxp/FEtS?=
 =?iso-8859-1?Q?zaheAzHAGLPCkRN0dGEiX6I1DbH7MZMuZ0QjjkCieS0WUV8oqLqwsDvpta?=
 =?iso-8859-1?Q?Zto8xm2uMYWeTLqY7wGsU5WLYE+KCIgXOTb8wMw7i1Imm78ZNo3UF6/Jdj?=
 =?iso-8859-1?Q?FdE94b/u5HSXhyMGONz1wALl4ygH8JGq7AFe+GYr/6OjeMZoKoulx1XQ4b?=
 =?iso-8859-1?Q?kgnFn+plvxQI19TZ3iW2q+53fVhJa9GsHaA2t6qgkh/mqCfrPx4LmWJahQ?=
 =?iso-8859-1?Q?mPh4WsKTsDBQAKubOu5vPaM7PBXgmoev7DzViEuX8jAiISyMnyafMBqejP?=
 =?iso-8859-1?Q?ph9U7RULM6rvwBGyU4EKOn1J9GO+oJYdGxh9paKe9lPKjRNbT1DK37zjd4?=
 =?iso-8859-1?Q?TvZPWX1dH6dBJejpmHG7Dgu2o03JmLdBh58r1Ec49I3dAPBU+gqEPiPs1x?=
 =?iso-8859-1?Q?kf1qXv9qCWQyIGwxQSwdCcFPnKiLF7Yf7NDa4OHDfEJpnMECm3xjFmE1ga?=
 =?iso-8859-1?Q?7kQz/s3k2GdYVlmtyi0rEEOaf/MuXjkSg7z1pz3sSXBL4j6WRmu0VJ6QHe?=
 =?iso-8859-1?Q?/vJMWAx+zPWtj1Ljpyj1g1QAbLf6FqGD52lnfWV6runzFyVGkMyHHtCEME?=
 =?iso-8859-1?Q?YqdbPYYX0NgIiZxlOgBaHvSVgdojibWh49o4Lt8niM7eCDumZNRwcHRqch?=
 =?iso-8859-1?Q?ZIitF/bdKyWVPHQz7vJIm7BF/j5BGiB2SUv3x2mx7ZsTz0QhoZ8ECaUQkN?=
 =?iso-8859-1?Q?Wal+rosvZMBLhkeoCXuD6+9NG/3i3Ob1Zg+wPTQLJnoWJMgT7hOlG8P/PB?=
 =?iso-8859-1?Q?wJUo/zB+ZZqWjZwlF5anSEVuG5TAxlKv+y8O1iI+RIMkRj6ANmd4UbaYOK?=
 =?iso-8859-1?Q?E/Li3Q0IfUnIRmq+k4J89jdrE8Zqb9wF/ZWvY3+EjumNHpMHfkBAbWKaP4?=
 =?iso-8859-1?Q?P/8lSpQVw8fL8w3JHGq3vhp8uXBi3rY1dYqA85I2CW8FpgPcvbFSlrBkoj?=
 =?iso-8859-1?Q?1XAvnKr5wnzMhPWdeEIbcjAq0AFSYxc00MXmKM2Nvqf8mWpssEZMv85k2o?=
 =?iso-8859-1?Q?SaU8NH0eF2q3T6LbdWXs0Vu0t+9pntrVG1wAQpirlApzpK9kCiXjGBXbum?=
 =?iso-8859-1?Q?08PWywaqyvGnBtXgxK6bEbGW4eRPGBsllXWjC5ePwDJ/g1HS6LMmkncIta?=
 =?iso-8859-1?Q?xxYY/dRqtCQc9hQJQIB/alKjcb6k8lQDGHYKmCh1aXSAPjYNEqyJQxEBmB?=
 =?iso-8859-1?Q?niIYvBzUDLPsGJZRRhzQNXq/x1pUyjq3wqUVV5uCMrGct3jV0u68kR9H0A?=
 =?iso-8859-1?Q?e45eAWnrD7KqWqBEU5gQncypTPJ91lcuI43V2OHoOQ1iaoTmiglMttrhLx?=
 =?iso-8859-1?Q?6RGoCTLi35UZbPUR+cab2DZuUDHBwYyQQoCCo3AUd+Fp38a4m8X8PMGORq?=
 =?iso-8859-1?Q?/8YbhSMlWrKm8zCWTDkGv18xDGnPbXTMFL7V/Ai6Q7kUb8oik/+XKgRjsJ?=
 =?iso-8859-1?Q?A0Jg=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: 
 <0233D71378070146BF246AA52F058649@windriversystems.onmicrosoft.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4633.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 12686e71-dc8d-4ccf-4e08-08d9dedee8be
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2022 02:12:01.7434
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 ffzKW6XA+nfrlvXwLW10wzgwayi0T0k0fUjN/SMzfFlDj5Dq/5/g0jTV3TVYTZjG7UVDpjQl50FOveD+yTndr8g/l6Y0c4wj96orzKFaQL0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4370
X-Proofpoint-GUID: -tRj6gpbN4oR7ACw6tI67zpu9nzsh3td
X-Proofpoint-ORIG-GUID: -tRj6gpbN4oR7ACw6tI67zpu9nzsh3td
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-01-23_05,2022-01-21_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0
 lowpriorityscore=0 bulkscore=0 phishscore=0 suspectscore=0 adultscore=0
 mlxscore=0 priorityscore=1501 mlxlogscore=600 clxscore=1015 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2201110000
 definitions=main-2201240013
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 24 Jan 2022 02:12:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55951

Merged=0A=
=0A=
//Hongxu=0A=
=0A=
On 1/21/22 16:51, Changqing Li wrote:=0A=
> From: Changqing Li <changqing.li@windriver.com>=0A=
>=0A=
> Signed-off-by: Changqing Li <changqing.li@windriver.com>=0A=
> ---=0A=
>   recipes-framework/tensorflow/keras_2.6.0.bb              | 2 +-=0A=
>   recipes-framework/tensorflow/tensorflow-estimator_2.6.bb | 2 +-=0A=
>   2 files changed, 2 insertions(+), 2 deletions(-)=0A=
>=0A=
> diff --git a/recipes-framework/tensorflow/keras_2.6.0.bb b/recipes-framew=
ork/tensorflow/keras_2.6.0.bb=0A=
> index dc1a98d..ebb668d 100644=0A=
> --- a/recipes-framework/tensorflow/keras_2.6.0.bb=0A=
> +++ b/recipes-framework/tensorflow/keras_2.6.0.bb=0A=
> @@ -3,7 +3,7 @@ DESCRIPTION =3D "TensorFlow Keras is an implementation of=
 the Keras API that\=0A=
>   LICENSE =3D "Apache-2.0"=0A=
>   LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3Dc573baaa40a28002a2d03d3e7e9b=
c583"=0A=
>   =0A=
> -SRC_URI =3D "git://github.com/keras-team/keras.git;branch=3Dr2.6 \=0A=
> +SRC_URI =3D "git://github.com/keras-team/keras.git;branch=3Dr2.6;protoco=
l=3Dhttps \=0A=
>              file://0001-customize-for-yocto.patch \=0A=
>             "=0A=
>   =0A=
> diff --git a/recipes-framework/tensorflow/tensorflow-estimator_2.6.bb b/r=
ecipes-framework/tensorflow/tensorflow-estimator_2.6.bb=0A=
> index 910ca4d..83804af 100644=0A=
> --- a/recipes-framework/tensorflow/tensorflow-estimator_2.6.bb=0A=
> +++ b/recipes-framework/tensorflow/tensorflow-estimator_2.6.bb=0A=
> @@ -3,7 +3,7 @@ learning programming."=0A=
>   LICENSE =3D "Apache-2.0"=0A=
>   LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D01e86893010a1b87e69a213faa75=
3ebd"=0A=
>   =0A=
> -SRC_URI =3D "git://github.com/tensorflow/estimator.git;branch=3Dr2.6 \=
=0A=
> +SRC_URI =3D "git://github.com/tensorflow/estimator.git;branch=3Dr2.6;pro=
tocol=3Dhttps \=0A=
>              file://0001-customize-for-yocto.patch \=0A=
>             "=0A=
>   SRCREV =3D "9a6c1260bbb468a013e39cf7d6f5af369cf2db2b"=0A=
>=0A=
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=0A=
> Links: You receive all messages sent to this group.=0A=
> View/Reply Online (#55938): https://lists.yoctoproject.org/g/yocto/messag=
e/55938=0A=
> Mute This Topic: https://lists.yoctoproject.org/mt/88579541/3617049=0A=
> Group Owner: yocto+owner@lists.yoctoproject.org=0A=
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [hongxu.jia@win=
driver.com]=0A=
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=0A=
>=0A=
=0A=

