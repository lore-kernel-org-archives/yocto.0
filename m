Return-Path: <richard.danter@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7DA2E784AF
	for <webhook@archiver.kernel.org>; Mon,  2 Oct 2023 11:21:50 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.79037.1696245709907030830
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Oct 2023 04:21:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=nxj483mL;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=8639d304c4=richard.danter@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 392ABdrM001916;
	Mon, 2 Oct 2023 04:21:45 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:cc:subject:date:message-id:references:in-reply-to
	:content-type:mime-version; s=PPS06212021; bh=QCQCvOTl1XcaP7ZPyr
	Qlw4DUDA7kb7a+OOQFxiyN6qQ=; b=nxj483mLcjOu3fmSCoiCAmybgrftToC4v4
	bCI2S5cqB2zjg3aNM7AJPOFjbch+7n2DYNAGVJ76xosmkeqskrljykdDMn7EwWBS
	kAjK1u1zpiwJgUajJpOSppXmHMsa/d6K5uP5ZNvKjhIzieeCGJHzLVMg0uijs7Ji
	fFNqqLrAx62rDICeXt6SBqAV80dCa4WQBFdECDXPjvpVN4CbB9Nz1HS+DJMrKAMb
	vmdtaYOEhS/mVwoUdFlpAvbq1zFxsMBXghqcV5yu8lCgNkrtU+6vls+kb3cgHPjQ
	xKtM2Ckj7kKBMDDYcIOckFFWXRmxJpsXe5AtvPpWi2FFvmfa0sLw==
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2100.outbound.protection.outlook.com [104.47.70.100])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3tek6g1cbh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 02 Oct 2023 04:21:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cdo74xL3IiAmZ7UKZb7Ek9PI2qraFnd3Zzh/2Dxk67haAOOKePdJ7HWuuPs/OBH30GhJBayCdEFVSj0lkq9h7/id5Y4pjxcecbvBcOmjYS9TTZSCqB5hXcj+zKTHhOycBj3yOrVcm/x+6jIexU5st1ouXms4T21PpENzh8lqcs1BFfs6BsDv2ijIUA9Zfz9AnF5ULRnA156w0/saGBY8FTk8Mdc9oSD0rlF8YST4guUcqPXjfBxb8RrRQqLwCimZNHG+GGjlDKaI599NLX+5CD3QwtrxB1zbaFPwp+guvKQP0QQAYn8Vd0gewyscx+X9T7RlpaHZfA7HMF8qQY89Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QCQCvOTl1XcaP7ZPyrQlw4DUDA7kb7a+OOQFxiyN6qQ=;
 b=Sz3Cy5YHcdwVxLMw3AjsWMYiur0Z9qxVU0HPXVEpwVXow+XV72n7aM39Kh7HXUohnitviwncu5QyQpkIe6eIfoU7162nF4uXvOY8jq5wgH4lbBEhjl8bK7hP+1huFAHlDZwpqtBzurpcawEt1hSu2yqN0ondZ8Mwt+V2Hn7m96yuDEPTYe84ufu3mQ44gX4qqCfZ0+Vz1GpcaapdeTJO/cXzmP8rBD/rjIAnj/K8Yh2TrvlYKGo/zAhuaKXkOcUm6buxMp2QuEHoRvi6KH7NR15aTiV52pD2fdkScgz9U53utcXDRXsqu1GM7jjrUkTHAOPjTjZ7eGlqk8h0zjk0Og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from SN6PR11MB2749.namprd11.prod.outlook.com (2603:10b6:805:5f::16)
 by PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.30; Mon, 2 Oct
 2023 11:21:40 +0000
Received: from SN6PR11MB2749.namprd11.prod.outlook.com
 ([fe80::ecb0:e0f8:8b44:cb86]) by SN6PR11MB2749.namprd11.prod.outlook.com
 ([fe80::ecb0:e0f8:8b44:cb86%4]) with mapi id 15.20.6838.024; Mon, 2 Oct 2023
 11:21:40 +0000
From: "Danter, Richard" <Richard.Danter@windriver.com>
To: "mikko.rapeli@linaro.org" <mikko.rapeli@linaro.org>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] cmake backporting
Thread-Topic: [yocto] cmake backporting
Thread-Index: AQHZ9R0F/IsUnJga4k2KOXDcw0AwA7A2VYQAgAAFdwA=
Date: Mon, 2 Oct 2023 11:21:40 +0000
Message-ID: <2c71a28ab5a359d9524a67a09a49d8a16a12d57a.camel@windriver.com>
References: <dad702961d91d1c399f454eba60c5b38c4de30dc.camel@windriver.com>
	 <ZRqjKoKfWtrb+uzF@nuoska>
In-Reply-To: <ZRqjKoKfWtrb+uzF@nuoska>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR11MB2749:EE_|PH8PR11MB7965:EE_
x-ms-office365-filtering-correlation-id: 25e77bcc-3db9-4c76-1680-08dbc339bffe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 SWYakYsr3QS/6CqAa7CXksQig7adCe4xJn71NI3zhFi1L9NGOztnt0kiuSU60H/NiK6C64dcmmUj+O2Csz1Nl0TBjv58wCHPeE0H8JV9VlwFVSdb9+//N2ApdJISgU1pXLLHJTgS1Etgl/GSACVkPKyVNwSt+OQ3PjJJEalmTKDDhK0pjiAf5yl+eEly6enYVNwcf4AbOeym26gAZQQyBSlKsG4LxCCHwJrmZpZpLFDMruwVU0VqpCCLWojAr5naAowtoIGFhDmXTUFjm/eDZk/QQZcDBQl9udueGOEph2BPIW2O4FGH0nuRzcEZpSzcHwYJQFpyXl3OS+7vKr/RwYzVrY8UyCbyswK0/ny5h1fk0KMEdiKh3q196c+nWVHesddqcLIDOTyjIeLTqI8v4jyRAONeomdMqshU51HUVODUfYPEPoMEy1K6QqQo5/D2EjCE5oDehijiPsR1YM7w+8eQOd7nUmrN7kfKnfeJIvs+dojYVZYhF8ZIjzTuQ1ohuevMs9C9tFwqdr+8shULi2R7G/ilGr/wgGzF9GaGpmWiPkf3Gr3haT5OvXatcMZfwklp35snZWRoEGl1D4KmZkvDRWBxzQuI3GGRejISKaU=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR11MB2749.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39840400004)(136003)(346002)(376002)(366004)(396003)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(4326008)(8676002)(5660300002)(2906002)(8936002)(41300700001)(64756008)(6916009)(66476007)(66556008)(76116006)(91956017)(66946007)(66446008)(26005)(71200400001)(36756003)(2616005)(6512007)(99936003)(316002)(83380400001)(86362001)(122000001)(38100700002)(38070700005)(6486002)(966005)(6506007)(478600001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?VkhyOFkwb1lNRCtGNUwzbFB0VzhLMUVEakFCeFh0bDFScy9VcWwrQWJzYXB5?=
 =?utf-8?B?UFNrNXdGbXI3SFIvSXRnMlVUbHRHT1JSaFRpVGpjWnlURnJ0YWM0MDQ4c2d0?=
 =?utf-8?B?TzZWTkNrbERnQm52Tno0QmVBVWphSHhEb0Z4djY0allsa0pmT3B6UjFQN1dn?=
 =?utf-8?B?Tm1DbG9hVGZWQUhUdjRWeTdmZEFxVm5EdEUxbWpkRTViTkkybVNFc2JvQjRC?=
 =?utf-8?B?UmFSbkRzY1JMMTFuV2pZR3k4NXVYcUd0K2c5STR4QkF3ajMwSkFpMmFsWndC?=
 =?utf-8?B?RmowVVg3YVdRRWZ0b1Y0cjFBdmY4dW12WlBLVGtZbVgrb0lJNlAzYmIydFlJ?=
 =?utf-8?B?cUFUUzRmUWtVbGFJbjNXUU1DSkxidXZjcmFacEJab1FLeUtsSEZYb3ZPVmZ4?=
 =?utf-8?B?dHlxY1BTY0hHblY4bmZmdUV3UWNqbm4wTHdZWVN3aU9LRlFPWDdQY0d1YUNi?=
 =?utf-8?B?QzBOdVhxdS84RHhHM0p5SFIvMnVyZXBNMkVMQm9HUnBScDBqMFhUUlZya3cw?=
 =?utf-8?B?dkJ0VTFPaFpZSm5jV1NIUzJhWWxYL0Nwc254aGhxRU82Ui9pbGkxUDBWK3JI?=
 =?utf-8?B?SWhYWGRydHMvQ1lxekRzN2RUa3k0Tm9vRDkxaWRVblUxV3p0NDJ3RERBMXpv?=
 =?utf-8?B?cHB4elNsdnRyNXFBUm9PMklYcDlCL0JXbFd5ZGVUYVNVY09vQXp5ZWRZRkdq?=
 =?utf-8?B?VTBEbVQ5akNmd2V1TTcxWGtUUzVYL3ZacDFnRi9rY3ZIQ3loSm8wUzk2LzlC?=
 =?utf-8?B?QjFGNFp6a3BWV3c5TFd3NnhzUmhxSnRmcHdaNVZzVVgzTURhS29tcjdYRldC?=
 =?utf-8?B?dlByY2QrLzNiSFZPSU1wN2lCbmRaaHBub2c4Nm1IM0wvbVBVMldUTlNJY0Rq?=
 =?utf-8?B?bDNCc2FxWGdjYjVSYW5JZTh1b040K2hPeG0zOWoxY3NXWlpHNlVYL0Mrbmlp?=
 =?utf-8?B?VFh6VHZkOUNNTkJkTE90K2pPRXcxRDI3VmRlak93Q0J0TlhBazQzY2lsTEIx?=
 =?utf-8?B?ZGxTOUxGNnVBQ01KWlcxb2JqYWp3dWlTLzBtWE1ncmxHendXRmh2d092WnRr?=
 =?utf-8?B?MzNUaUdqb0UrMDgvM1dmN1lZYkFMaWRBZ3VGeE1JRHJwanhHTHQ3dVpRZWNm?=
 =?utf-8?B?KzBGRmI2Zmw0K1pjUEdjb3VPRXd2ZG9qVFBERUd6NTBTZCtzSmJNOEtwOFl1?=
 =?utf-8?B?ZjJJL2RIMXVlNHNqWXM3UHZJTTdKeWpKOUpCeDdsZEVoS0xuR3MrRFJnQ2d1?=
 =?utf-8?B?RFplc1hSaDVlVE1SUTU5cCtyenI3OVRYNHgyZXdVeWRxUTNEQnN6eXo0c3dJ?=
 =?utf-8?B?SjlUR2lxZW1jL1BsRjJpaGxYV1BqZlZQa3RnRHg4UnlFQ3hmMityTDdJUEFN?=
 =?utf-8?B?YjBPZzRnV1dNNEErTlNRWUh3a0FKTlRPNk9JNHdEVll2MDMraXd5emhNN2Jv?=
 =?utf-8?B?TUlJVGdpS0c1VkdBMDl3TndDejFURFRaTzQycEpzUDk1bjEza0tzZkNDVmpr?=
 =?utf-8?B?bTBaMVo5SmpNbVJlMmRtQ0Q3NStXZ3hEYkFaNXpLZVllVTJ0QmQ3VlppWXRI?=
 =?utf-8?B?dWo2SmJSbDJVYVo1VDlQTUlVRWs0TkZQTmhUK1o3UGpLUmczVCtHTXJSeTIw?=
 =?utf-8?B?Zkw4WVpuUWphSDZmM096SWtONWV0ZVhmUFZFVXdYaWxuZHlNVU8xNFVvTHJV?=
 =?utf-8?B?NEtnNjVxMjYwSTBLYWFzRExicVVKU0JSNElqa3RrZUFXV1BKQmdzRFZURm5G?=
 =?utf-8?B?ZksxNGs4TGRJREp2b3IwU0d5K3hEeldrOVplQlJqZ0lMRnAzTVBhS0EwaVBR?=
 =?utf-8?B?SmdCMnRUV2FkazVTNE16V29UbDJFT1B6eURoQVZ6SkNzQWFHb0s4VUJSZHU5?=
 =?utf-8?B?VjV0VU9xOU1oVXhmNFA3RlZZNEp5Rks5OTlweUtkZjgrZ3ROK2R3MmNzL0VC?=
 =?utf-8?B?c0pmWVJQNFcwQXFKNWZ5TUVhTEI2Qy8xWkZQY2VGSi9UWUI5NEhwTHFlSm9Z?=
 =?utf-8?B?czhlelNvZnFsa3RKL1BBcUpGeGxDelBWR0xFVUpBUTRMSFZuWE54YjIvWS9o?=
 =?utf-8?B?YlJYVHA3NzJwU2JQSSs3T2ptWFpGVFI4ZXl0L0ZEcDdoZnBQOTJWS1pXMEkw?=
 =?utf-8?B?UmRRaEhmakd5dkhLRTFrTlVHSjZNRXVwZ3VyVDRRR3VIdnRrWXhqTUwxcnh5?=
 =?utf-8?Q?IF+rbU4rSuf2B/bLsNgCwGQ=3D?=
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-kJL67+gwXcjrCBxeyIOM"
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2749.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25e77bcc-3db9-4c76-1680-08dbc339bffe
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Oct 2023 11:21:40.4374
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +kOnbQGaIKL1ZauZipdZNrLvIAjv4FVXlSgegUIbPKywF+51NOy8lgLsniF0UTtibBobcWorcYXv5euvfish6aFsSga0sqJdKpTVVG+kbQE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7965
X-Proofpoint-ORIG-GUID: 6RvLG0rDwu_WQs5IbXuO1rWBn4t-mm6c
X-Proofpoint-GUID: 6RvLG0rDwu_WQs5IbXuO1rWBn4t-mm6c
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-02_04,2023-10-02_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 clxscore=1011 malwarescore=0 mlxlogscore=974 suspectscore=0
 lowpriorityscore=0 phishscore=0 impostorscore=0 mlxscore=0 bulkscore=0
 adultscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2309180000 definitions=main-2310020085
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 02 Oct 2023 11:21:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61190

--=-kJL67+gwXcjrCBxeyIOM
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2023-10-02 at 14:02 +0300, Mikko Rapeli wrote:
> CAUTION: This email comes from a non Wind River email account!
> Do not click links or open attachments unless you recognize the
> sender and know the content is safe.
>=20
> Hi,
>=20
> On Mon, Oct 02, 2023 at 10:41:37AM +0000, Danter, Richard via
> lists.yoctoproject.org wrote:
> > Hi all,
> >=20
> > We have a customer using hardknott & kirkstone who needs a newer
> > cmake
> > version. Looking at mickledore, it has a version of cmake that has
> > the
> > features they require.
> >=20
> > Would it be acceptable to submit a patch to backport this version
> > of
> > cmake to these older YP releases? I'm not sure on the policy so I
> > just
> > want to check before proceeding.
>=20
> CMake version update would be against stable and LTS rules:
>=20
> https://wiki.yoctoproject.org/wiki/Stable_Release_and_LTS#Stable.2FLTS_Pa=
tch_Acceptance_Policies

Thank you, that is just what I was looking for =F0=9F=99=82

>=20
> I have done similar updates on a private poky fork though. Cherry-
> picking the needed
> patches can be doable, but all this depends on the details...

I have a private layer with this version of cmake and it seems to be
working fine. Was just wondering if it could be more official.

Many thanks!
Rich


>=20
> Cheers,
>=20
> -Mikko

--=-kJL67+gwXcjrCBxeyIOM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEErzjP234FF8wy07NdNk3LIt9/FNUFAmUap8AACgkQNk3LIt9/
FNVa8gf+KvBqgAOoj2smAdi1or9EmYzTnwknMi7vOETaDXL6XpfyVecCcRBERFOc
mwtWozg1Dp47KdduCOr1DCcK3R87dDpOS7WrahMmrPpvpSrsAdVp02n9T3GJjaEY
NOVZ3UrE8Zmq/FckbBT5KFe3kdpGt0lFTawGYQSmSX2ghc4YDzjedK7VqJoFtuWI
UWIvG8Hw+/jL9FtsNEhehKdRAVK61hr66ZmIR6rNe+DXaR2yySeZLUrXfyVLT1is
iUQfb2zx4mhWQfSeb2ZskkhbRMzFEbJLmBm2Ym4Q53HxHpMwWCV2yjcuXp9SChFz
9sJQHQnJ02SpI+sVvLGpahVdn9Qlgw==
=oPQx
-----END PGP SIGNATURE-----

--=-kJL67+gwXcjrCBxeyIOM--

