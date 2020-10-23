Received: from NAM02-SN1-obe.outbound.protection.outlook.com (NAM02-SN1-obe.outbound.protection.outlook.com [40.107.77.59])
 by mx.groups.io with SMTP id smtpd.web08.1719.1603412655494074165
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Oct 2020 17:24:15 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=iKf0Op3Z;
 spf=pass (domain: windriver.com, ip: 40.107.77.59, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fTK2GKmYmN+Icflw9Oiauv3SVdjvj7L3Sviqw6KsbeFU/L5Agy+klYw1v4wu9i2UNSSW7pJEQ4yAKvgdR+VmYs4xUnVY9gVIrcOl4BeV9XKH4Hs6+r2HL8TdB9HSjWY7IPx/lCWku83lGdY+wGsHApZrfYMO0nQQEW/vBsop0bqG5jIkLRFsN71msT+oeHlUzWjPtbbmhIAnQPYXaecJt1MeMUBxlTFr7nT/M9i8AVlto4CnkTxKL3IczSaLbRVfGX/mIfJ7q16tSXiYUQNSzHsMI6zDbGD6QT3fgl9zWIqvKOjHKfLne8b9sGs3QYuiFIGbUfhzUdux3XGYjP5qSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+7r5fJ919FCAJgoaKmeK84BGITlWk+TFY5hL3ZzftfQ=;
 b=X6CTU6lS7U3SmB1gXRNLOmws26gXQU2IW7uYajiVkjkaNjsZxZXmy5CGVGXtaRxnDK+M4POS5OUH9M4smqyVBhzPsYNiEfOgVv5H5lWJGqQUoGD2Mb5J9DpQ4SkqvUbVLJXGqYBBhJR6OSEXOAjJUaNFChIXvkrT6xvmzpSoiR2zu/UTJ0aOY0J2oDEGwNjM6PMjct2JGjVyAIR7m0Wki+UJTn0FzMbpb4ly7gRFy6lhNLQOExkGysmiYowIUb/enC54+YAvqok24sX26G/53WN2mNMKVPu/TN6a/26F1BeqgmUjaKmzbRX9T1IIVNSiaF4buFyZ8RIG6cb7v/4AaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+7r5fJ919FCAJgoaKmeK84BGITlWk+TFY5hL3ZzftfQ=;
 b=iKf0Op3Zdw8wEFmM9DoBs3I3sBGr2SyJ2biFySRTyzjhPuvRpV/WXnNjsMGwEUwaw5AOjL434TkNtcClOTl1lx5Hiz6jxSPaMbTTDg2tHWvL8EPiIkjmKdM7s+HaG5nD0PXhO3iv1KkMGNJgrdnTUhjRtlArHRbaZ23tkEAv6Ro=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from SN6PR11MB2703.namprd11.prod.outlook.com (2603:10b6:805:59::18)
 by SN6PR11MB2767.namprd11.prod.outlook.com (2603:10b6:805:5a::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.18; Fri, 23 Oct
 2020 00:24:13 +0000
Received: from SN6PR11MB2703.namprd11.prod.outlook.com
 ([fe80::cc77:c9c8:8d2b:bb35]) by SN6PR11MB2703.namprd11.prod.outlook.com
 ([fe80::cc77:c9c8:8d2b:bb35%6]) with mapi id 15.20.3499.018; Fri, 23 Oct 2020
 00:24:13 +0000
Subject: Re: [yocto] How to assemble FIT images with linux and OPTEE?
To: "Alex G." <mr.nuke.me@gmail.com>, yocto@lists.yoctoproject.org
References: <163E31BAB70D36EC.4805@lists.yoctoproject.org>
 <872912d8-26b7-5791-5111-c079e19d2a6a@gmail.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <75c2e3db-003a-168c-3839-369bb4ebb0a5@windriver.com>
Date: Thu, 22 Oct 2020 20:24:10 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <872912d8-26b7-5791-5111-c079e19d2a6a@gmail.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BY3PR10CA0017.namprd10.prod.outlook.com
 (2603:10b6:a03:255::22) To SN6PR11MB2703.namprd11.prod.outlook.com
 (2603:10b6:805:59::18)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BY3PR10CA0017.namprd10.prod.outlook.com (2603:10b6:a03:255::22) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.18 via Frontend Transport; Fri, 23 Oct 2020 00:24:12 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8392cef9-3d6e-4b4d-293f-08d876e9f83d
X-MS-TrafficTypeDiagnostic: SN6PR11MB2767:
X-Microsoft-Antispam-PRVS: 
	<SN6PR11MB2767A90CC1BB92FEF1102B88F81A0@SN6PR11MB2767.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	TyRTd65brrqfI9R05vXlLAV9oszA9sArKHV/dkWKhX/0LtOhBBhf9wAPMuM22gG8a9hPApFuaUOXu60IlIeVrrgDa/swIx8FwyNbYFwpi98FC4bLf+R2voknupWjEqP2HD8ptQvBjzb7c26pencxZ/idvdaLcZCWhUuG80q7O+2ZX4Ys2/Ts/vYR89L+MHU4B/dFKLe7/zXPL3y8KlrxqXT/T8vwlEIpqgsvdEOMdGnO1mr8HyCDj9Ixmpf7puunBZ72rl0YoZUfZEHk56WNXwInjmoP2MikXA4WyM5kJ43Kit+PgLpm4oCMv3+ObTmiS/rY3AxGWdifPBzsMAfsJRWBdW5xujmZhjnHXf+ajvmiw7Lr2h9Sw9KfyR6gxcDcm3M9YMxgESPjbFodPMvtBJzSKoJDFfXv1S/wW89j2aguOrkttIuZR/dAEuGo6XeEKPmzF4Gn35JFS1sN5cNIHQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR11MB2703.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(39850400004)(346002)(396003)(136003)(376002)(52116002)(66556008)(53546011)(36756003)(2906002)(66946007)(31696002)(66476007)(86362001)(16576012)(5660300002)(26005)(83380400001)(316002)(8936002)(4001150100001)(956004)(2616005)(966005)(478600001)(8676002)(6486002)(16526019)(31686004)(186003)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	4pLWutMmsdryRrmy4c2ey7gxZw1L/AVBO/zdtK6myiO7i15xYTCU9nH+cu/nDVtSlkw7uCBLqFxzyH7101fSWpVqPjMx6e1KR+32y6B7EJJmqXBVZzrTzYbGDsuJO2Wy0FdqV96PsdTrnK/SWFREWDmZDlHo/0Jg7vKogQioUjtgvJd4QY/KOE/1zP9K8SkFWVVpjQeJH6R/SBK7ka8tigof4J4QsBGcad/8h1dhFz6GyR6X+ZY3vLiNXTlacTmzkDZtTKVkaR1KhKI2Dvnlf9wiSBF2zuHrVb2YLghDt0G4//OXj1N9cIw1D+d+xtD+DfWFVj8XT+z1AESzmiGuL3NinNG0F49KwZOys+ilbXaEXiR0Bc5ihnFXuj0QEHoGYygPLBKPIaUPRNAkX5qDFiZcXWF2ZWrVbngaNunWkznXoBXokRFDa2tqqiBtzHygVR4x+eOCiqcXX3mgttDDerwUjXI0qWBPG/66YRGR/+ezEiL4vHm2wKVt0lGCGToYDrmV5PIiHgJCYlq9TR3TTYEZmJZ4RanyOCtpnkJw8nXWsuUVDLlWAjJMjFHDDI7TkksqRXOR5+7QSa6m3znI7ILjtHSnOARzIsisTVUMw6wWB9Yp1tBOJirrCYZm7S+6RO9g+lFB+vhmXTHJhOY/fQ==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8392cef9-3d6e-4b4d-293f-08d876e9f83d
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2703.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2020 00:24:13.8439
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7mO58Z4ozI7plSzw4pXX/f5nl3fpC4eNOUafRv7lumGaVkFx+rYOBnprB1qBA88qhEVwL5mq0f7zTBXZy4p6mg22WUDiEa+dqVw3lZh2vE0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2767
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: quoted-printable

On 2020-10-22 10:46 a.m., Alex G. wrote:
> On 10/15/20 9:46 AM, Alex G. via lists.yoctoproject.org wrote:
>> Hi,
>>
>> I'm trying to write a recipe for a secure boot flow. It would look=20
>> something like this:
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0images {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 optee@1 { "path/to/tee=
.bin" }
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 linux@2 { "path/to/zIm=
age" }
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fdt@board { ... }
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0configurations {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 secure {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 kernel =3D "optee@1";
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 loadables =3D "linux@2";
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 fdt =3D "fdt@board";
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
>=20
> Hi,
>=20
> A quick follow-up. Was wondering if anyone has had to bundle OPTEE and=
=20
> linux before.
>=20
> Alex

Hi Alex,

Not personally but a quick look in the layer index reveals meta-optee:

=20
https://layers.openembedded.org/layerindex/branch/master/layer/meta-optee/

I hope that helps.
If you know of that layer, what's missing?

../Randy


>=20
>>
>> I've tried to "inherit kernel-fitimage", but soon learned of a couple=
=20
>> of limitations:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0* images: No way to add an optee binary
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0* configurations: No way to add a "loadab=
les"
>>
>> Secondly, since this approach would use files from several packages, I=
=20
>> think it would be better to have the recipe separate from the kernel=20
>> build. Bot how would I use files from another recipe? All I could=20
>> figure out was to first put them in ${DEPLOY_DIR_IMAGE}.
>>
>> What would be the "correct" way to write such a recipe?
>>
>> Alex
>>
>>
>>
>>
>=20
>=20
>=20
>=20


--=20
# Randy MacLeod
# Wind River Linux
