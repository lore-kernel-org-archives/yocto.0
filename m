Received: from NAM12-DM6-obe.outbound.protection.outlook.com (NAM12-DM6-obe.outbound.protection.outlook.com [40.107.243.116])
 by mx.groups.io with SMTP id smtpd.web09.8684.1616738862240661067
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Mar 2021 23:07:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@centromotion.onmicrosoft.com header.s=selector1-centromotion-onmicrosoft-com header.b=BCUPF7bl;
 spf=pass (domain: crosscontrol.com, ip: 40.107.243.116, mailfrom: tuomas.huuki@crosscontrol.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k3ySXNKd9eZN+y8Ynk6LpLIq+c0+tXjHB69r5ZRm3gj+YB5BDzj4LxqeYhj17sq3soeWvlgwPgszKGeUNSpE1bBAV9BFzmfy6l6MDhc0MymZzrXLNnXCAmGEn96CaB10XRQuk4M4jkvmcdOKsud7ZQxznAN9F7KnjGecedS6VpOx3zak0nbPE0wBAw2WQLLuwk34JW647/pUaoJG4N+froWpUlzwVE9l6qCrm3QcDpzy98Hoehd3gs4rdk4fPCfNsNhpq3Tneu7zffKjDCwBTLc35W5R/RJkO2gXlzY31xcTUoU6c8gb1zvRk0oIRbLrQfjEtG6VtuDP1ASIwp+snA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OBY/AIMYKbwyIREOiLmG5fDxibpOJoF0BjSXiaAZkmI=;
 b=oNE2a5CKpOMGZE/HA065XIUlOYCJj+N9FgVFSiFyipb4XbxsSuPI88liLFXyGvP6KWvHnaQy/KC7iIJ1OsvbvbmqBO9OhotC3qLo6V29dcCdKmc3DD2Qf3AWfddDkYW9qPqc9Fe+fsnHvOBHNsE8SkFSXsp7o7urGxhVhxLhW+WNEh40JYUXmLKExbJWKtsNexnI7lknAckK01zOI+BOU0mDNrjJR5PO8kejuqkNmBrpIKFQLQ7fI+PGbAvSVcXn2osFi37IRfoZ0CAPrfQSBEipYwkMJiorCZgXeLEn9k7Aa29bHZBrP+XaNSf1BdbZaeivNq4EcnfkDu0aDVDDKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=crosscontrol.com; dmarc=pass action=none
 header.from=crosscontrol.com; dkim=pass header.d=crosscontrol.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=CentroMotion.onmicrosoft.com; s=selector1-CentroMotion-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OBY/AIMYKbwyIREOiLmG5fDxibpOJoF0BjSXiaAZkmI=;
 b=BCUPF7blrGr643kyRyR/gu1mFH7ZiA4eGJBTflsvgFi3CkHMWFGXEaWU2Np03BAg9o4FdbIXupuECDVETIiV4JlApudUMjFdRnyVaxA9d6wnxBDvrjyVOt76+ZKc61rYSBzq+rdJ56Meavk+hfsGOBd9BO8qj57fkSnTEqVE0n4=
Received: from DM6PR12MB3244.namprd12.prod.outlook.com (2603:10b6:5:18c::19)
 by DM6PR12MB4251.namprd12.prod.outlook.com (2603:10b6:5:21e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.26; Fri, 26 Mar
 2021 06:07:39 +0000
Received: from DM6PR12MB3244.namprd12.prod.outlook.com
 ([fe80::bdbf:ef9c:d9c3:b535]) by DM6PR12MB3244.namprd12.prod.outlook.com
 ([fe80::bdbf:ef9c:d9c3:b535%7]) with mapi id 15.20.3977.030; Fri, 26 Mar 2021
 06:07:39 +0000
From: "Tuomas Huuki" <tuomas.huuki@crosscontrol.com>
To: Khem Raj <raj.khem@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [yocto] libcansocket: Weird issue with pkgsplit
Thread-Topic: [yocto] libcansocket: Weird issue with pkgsplit
Thread-Index: AQHXIaS8ttwUTJXT6ka2smbeE3a5rKqVyLjg
Date: Fri, 26 Mar 2021 06:07:39 +0000
Message-ID: 
 <DM6PR12MB3244D926C6A3D942C7304160F9619@DM6PR12MB3244.namprd12.prod.outlook.com>
References: <QRNZ.1616659590788645548.bU9I@lists.yoctoproject.org>
 <5d3d6f0b-b712-1628-21b9-64ad538e09f5@gmail.com>
In-Reply-To: <5d3d6f0b-b712-1628-21b9-64ad538e09f5@gmail.com>
Accept-Language: fi-FI, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=crosscontrol.com;
x-originating-ip: [81.19.113.90]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 32f76c6e-1c59-465f-219c-08d8f01d7617
x-ms-traffictypediagnostic: DM6PR12MB4251:
x-microsoft-antispam-prvs: 
 <DM6PR12MB4251A40076EE09A88923D1B5F9619@DM6PR12MB4251.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 j/LgsQrAz0G+nco/290xACtXLeVKlqBBcDd0PT5k6GtpglfmNrfOu0iCAGOiY4aNn14taIPneQODozPLuGfB2IxM4l5ge0nVN5DMhR8Ymn/vUd2J/GnOS96YAyM2qow2U4V4xL2dkir3XuDIzzH0fTv5kYyOdljrb7BXK7/0XNnvk7pUv+ea+O3kzu4t+SCt3r39NW9dNEMKnXroFRE809J6XEDSl+svg8BhS8Fyb0NOf2SjiQkW+Z5ddDCGiZM1M8DdzzP/fbzkWuRuSqWLFGBoKGfLOl1NYXjqSPFS4KBMTltyjx4HbyLCU+12HLmurTHmr2mzNeBjCQHLYxdoi5gu5/Ak3U/a5TzJdT8RuH2hpYWQysOc6cweCR77H74Yne1z60Hijq+AE2w8W2NoTD9Y7A0sbhUyeHSGcsKYkr9z3XSlnEBDzhl/cG5BUWNwKcFHWWjA+bLepVTcaBk8wQ68q8jJ5ACDrXBpWBn/z9VspTkCuUI+OvjJ9KMZ7uepyWnAmSaDCC4Lfyys17LINH9p1W8Aw7t2CU0n2fafZFm66rKX3Gxaf+MDq8iyLcB/SWebb6n7Az9RhPWGiLBhlDe9Bn94Cbw/4yUQVbxnykSikGJsSpyrJYtF9bMlFPu5pgeDqZxruhQ+wAKV2kHUBIiRkhA3/vzRGYdhTLpTINk1rgrtXdsU+XZPeXkFwh9/YvQPDP8QXpYZ9YYEPYeKZOKHLIavsoa0UYK2LRMvcnegbJnqqp5GTI3iVydJt6XzuJnt3GI3Xt5upPjOHh1ZwA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR12MB3244.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(136003)(376002)(346002)(396003)(366004)(8936002)(8676002)(5660300002)(110136005)(55016002)(966005)(9686003)(186003)(316002)(478600001)(71200400001)(53546011)(26005)(2906002)(38100700001)(66556008)(64756008)(86362001)(7696005)(45080400002)(33656002)(83380400001)(66574015)(6506007)(66946007)(66476007)(66446008)(76116006)(52536014)(156123004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 =?iso-8859-1?Q?+cNpRJpPp3XRf9Gz6kKtnollUWasm5wWs/BGfE4rR0Pxjh4B0ehq93ADrB?=
 =?iso-8859-1?Q?l8vz2sM8j7FnOciuJF5MNjrq86cjX8ckipBk/eiB8EcyjBJRUq9kD/bmnc?=
 =?iso-8859-1?Q?tRY2VqdeFDLXFvMKfsL7z+RJmWgSA+d2mXNfMJBxrNMsnsqOGvAvScNP5B?=
 =?iso-8859-1?Q?y/v3FeYaEwckSbz1Mowa3TH8DifTbAVwBfpfEAMvasPlmZiiLmVtcgB/XN?=
 =?iso-8859-1?Q?u5eebzD6xcy9diJl4P8UsB+sidFUCV2qenMJbbP/Y5ZlQJefv3fh4Pl3kL?=
 =?iso-8859-1?Q?C9p7JxUwanSEsrXn+OPCnfh6Gk3AQm16+W3I1SRE9tVOPpR/Q+38xU9l+k?=
 =?iso-8859-1?Q?fYcYuMvfbGAXokpihYHi2sAFLT2USCt5oWa6EyqbV2vJRSzizv5hiW8r8G?=
 =?iso-8859-1?Q?KHPhwok5NBE3s/mT2aIFtv7FOburkJHpyutF5E9SIAMu55kWOxjqU9TKPW?=
 =?iso-8859-1?Q?Qu9eKUY69zv9DcQnP1NIb8zQLr6wJqq35feYBSEVXNMVtcUqnXZjOtUNmx?=
 =?iso-8859-1?Q?xHMRZ57aPyYFom8N0M68JT0i8Viojc1DufVfFEz4iBHShI3eQEWvcdSEo6?=
 =?iso-8859-1?Q?R+3YI8shRrPquF0cgWPaWokQgPXC3a9TIlDA6aLmIocBdApspQ5Hlcbvmr?=
 =?iso-8859-1?Q?q0e8N4ESw26+YRxoYKCi94NnFwBXGHGsUaacw/2jCKWEe7wajpOQ2pv87k?=
 =?iso-8859-1?Q?1cy2o2eqY/AQHMuRyC7b9RBetVEHo3px1AgvsQnloDDM2oJ0hYPLlIs+YG?=
 =?iso-8859-1?Q?oqTHJmdjZugLeYBpuzLjNCPSZQS7+4Ln+DqE6URNDOMw4ZALdp9hNyhUk1?=
 =?iso-8859-1?Q?7hcjT5ORiPIs2klHHEjVhIlPLjqgZ8j9cOISezTMFZiYd9mKjw8uviQqpM?=
 =?iso-8859-1?Q?xn9IzsjULJykPiJqcs6JAG9eZjaM4Ojc9e2VgGGtskM5F7rc3yq0dtuMEK?=
 =?iso-8859-1?Q?fhVEvvmZOBFkhQ2j8u7az3CLyOH200tu02tTgdg1ngzBb/J9WfRVeKO7OU?=
 =?iso-8859-1?Q?Cs1/dbN4ikXItZPS1CuMEkt6+DesXnQxzdvWpJ6sue2sVjaWJnYH1WnorO?=
 =?iso-8859-1?Q?ow8A285Ui85jXhQDtkLdd9A+3RSc3V+jM62qPxiyBQm6r/b/AisZSewvTc?=
 =?iso-8859-1?Q?xu0XtezAK7pZsGvTw/9NBa464AxYbpm3e3ZmCWWBhismma1POoogSSD8fJ?=
 =?iso-8859-1?Q?w4rM9Mq1I89j3he89lyHyaNbqmN5HNtm+fb6fDvclwJ4szgxvge1MMkhpH?=
 =?iso-8859-1?Q?xdBvkOBdzgcbwRqSbQnGtqN5t8Si31dqdVqDebmy6Fi4WZqZDka8xJ/bEX?=
 =?iso-8859-1?Q?8dp5FZEsfEFqf09KFXnMmpDXOk7KgHjiGnElWbwd2I01B6I=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: crosscontrol.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR12MB3244.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32f76c6e-1c59-465f-219c-08d8f01d7617
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2021 06:07:39.7521
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8b3fa9f5-9a3d-4339-a66a-a9f7e39c9126
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kbcqM9jVtX+1gsAV0DwlH1q7arCY+Alq7VSv+hklxKsF5/44AMRtVwJstyOjVA71xFRdoy1VTaIiBZvRLRFdYb1FtgxjiXCYHnachNHdMCw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4251
Content-Language: fi-FI
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

L=E4hett=E4j=E4: Khem Raj <raj.khem@gmail.com>=20
L=E4hetetty: torstai 25. maaliskuuta 2021 20.29
Vastaanottaja: Huuki, Tuomas <tuomas.huuki@crosscontrol.com>; yocto@lists.y=
octoproject.org
Aihe: Re: [yocto] libcansocket: Weird issue with pkgsplit

[EXTERNAL SENDER] - If you believe this may be PHISHING, please click the "=
Report Phishing" button above.

On 3/25/21 1:06 AM, Tuomas Huuki wrote:
> Hello all,
> I have an interesting situation with libcansocket and bitbake that I=20
> cannot wrap my head around. For some reason, the packages are being=20
> split up somewhat strangely and I cannot figure out why.
> First of all, the recipe used is:
> https://nam04.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgith
> ub.com%2Fopenembedded%2Fmeta-openembedded%2Fblob%2F9a0de2779b9b31f134f
> fe19388b5b9b37bb6450e%2Fmeta-oe%2Frecipes-extended%2Fsocketcan%2Flibso
> cketcan_0.0.11.bb&amp;data=3D04%7C01%7Ctuomas.huuki%40crosscontrol.com%7
> C8496799aa67e4cb3bac908d8efbbdd60%7C8b3fa9f59a3d4339a66aa9f7e39c9126%7
> C0%7C0%7C637522937456377594%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMD
> AiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=3DhLiu
> fQtPTmCJvs1FfSemKVHnMmi5zBUKOHW%2BXgfMAyw%3D&amp;reserved=3D0
> <https://nam04.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgit
> hub.com%2Fopenembedded%2Fmeta-openembedded%2Fblob%2F9a0de2779b9b31f134
> ffe19388b5b9b37bb6450e%2Fmeta-oe%2Frecipes-extended%2Fsocketcan%2Flibs
> ocketcan_0.0.11.bb&amp;data=3D04%7C01%7Ctuomas.huuki%40crosscontrol.com%
> 7C8496799aa67e4cb3bac908d8efbbdd60%7C8b3fa9f59a3d4339a66aa9f7e39c9126%
> 7C0%7C0%7C637522937456387589%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwM
> DAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=3Dmp6
> vRRNyAG%2Bf2KnsAxxIWWMgjrmp%2BZSJWgU2rCVxGP4%3D&amp;reserved=3D0>
> So no strange things there.
>
> Additionally, looking at the built items:
>
> ../build/tmp/work/aarch64-poky-linux/libsocketcan/0.0.11-r0/image/usr/
> lib$ ls -lah libsocketcan* lrwxrwxrwx 1 tuomas tuomas  21 maali 18=20
> 10:38 libsocketcan.so -> libsocketcan.so.2.3.0 lrwxrwxrwx 1 tuomas=20
> tuomas  21 maali 18 10:38 libsocketcan.so.2 -> libsocketcan.so.2.3.0=20
> -rwxr-xr-x 1 tuomas tuomas 58K maali 18 10:38 libsocketcan.so.2.3.0
>
> All looks good at this point. Now, when I deploy the image, the first=20
> link is missing.
> When I look at pkgdata I can see that the link ends up in libsocketcan-de=
v:
>
> $ oe-pkgdata-util list-pkg-files libsocketcan
> libsocketcan:
>      /usr/lib/libsocketcan.so.2
>      /usr/lib/libsocketcan.so.2.3.0
> $ oe-pkgdata-util list-pkg-files libsocketcan-dev
> libsocketcan-dev:
>      /usr/include/can_netlink.h
>      /usr/include/libsocketcan.h
>      /usr/lib/libsocketcan.so
>      /usr/lib/pkgconfig/libsocketcan.pc
>

> Its following usual soname naming conventions [1] for versioned shared li=
bs where .so is a symlink which is used when something is linking to it dur=
ing build time. thats why its in -dev package, if you want to use it at run=
time then linker will add proper versioned .so into DT_NEEDED sections of d=
ependent package which will be libsocketcan.so.2 in this case. So if your p=
rogram is trying to dlopen it then I would suggest to use libsocketcan.so.2=
 and if its trying to link to it during build time then it should add right=
 entry into DT_NEEDED sections.
>
> I am also wondering why would you want to move .so to main package.

Thank you for the input! The request actually came from a client (a special=
 case) and I started looking in to how to do this with Yocto/bitbake. It's =
still a little unclear to me how the package is split in to the different s=
ubpackages and how files end up in their locations. Any pointers on that?

Also, the other confusing thing is the naming, where the main library is re=
named to libsocketcan2, but all the other packages are named libsocketcan.
-rw-r--r-- 3 tuomas tuomas 5,8K maali 25 10:19 libsocketcan2_0.0.11-r0.7_aa=
rch64.ipk
-rw-r--r-- 3 tuomas tuomas  16K maali 25 10:19 libsocketcan-dbg_0.0.11-r0.7=
_aarch64.ipk
-rw-r--r-- 3 tuomas tuomas 3,1K maali 25 10:19 libsocketcan-dev_0.0.11-r0.7=
_aarch64.ipk
-rw-r--r-- 3 tuomas tuomas  13K maali 25 10:19 libsocketcan-doc_0.0.11-r0.7=
_aarch64.ipk
-rw-r--r-- 3 tuomas tuomas 8,9K maali 25 10:19 libsocketcan-src_0.0.11-r0.7=
_aarch64.ipk

But I guess that's just semantics.


