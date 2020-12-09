Received: from dmzms99802.na.baesystems.com (dmzms99802.na.baesystems.com [149.32.232.66])
 by mx.groups.io with SMTP id smtpd.web08.1053.1607541393764961442
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Dec 2020 11:16:36 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com header.s=trusted01 header.b=ChnbGX5Q;
 spf=pass (domain: baesystems.com, ip: 149.32.232.66, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1607541393; x=1765221393;
  h=from:to:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=oZuUG6qGVNbmpLdQZmXz+HsMV3pHOr63j6Jji/c7kTI=;
  b=ChnbGX5QIG1rI0flTTi+9bPN7fnsdns7HvYpO8i1sgVlRbVAw26HeeKF
   gSJd3Kg5q3LHN/jKwA0H0FyEspbBJIqW5/UHSDi3oAkx8DZkL0WcmBu3O
   BzKF+3dGUx8L37YEy2AbnpbDdAfFtBh663N3ihv0r7ywHzi0vvmO7SyB6
   c=;
IronPort-PHdr: =?us-ascii?q?9a23=3AqAF3Fxb0rp6LXNyu7MLXALT/LSx+4OfEezUN459i?=
 =?us-ascii?q?sYplN5qZps25Yx7h7PlgxGXEQZ/co6odzbaP7Oa5BjxLuM/Y+Fk5M7V0Hycfjs?=
 =?us-ascii?q?sXmwFySOWkMmbcaMDQUiohAc5ZX0Vk9XzoeWJcGcL5ekGA6ibqtW1aFRrwLxd6?=
 =?us-ascii?q?KfroEYDOkcu3y/qy+5rOaAlUmTaxe7x/IAi0oAnLq8Ubg4hvJqksxhfUv3dDZv?=
 =?us-ascii?q?hby35vKV+PhRj3+92+/IRk8yReuvIh89BPXKDndKkmTrJWESorPXkt6MLkqRfM?=
 =?us-ascii?q?Qw2P5mABUmoNiRpHHxLF7BDhUZjvtCbxq/dw1zObPc3ySrA0RCii4qJ2QxLmlC?=
 =?us-ascii?q?sLKzg0+3zMh8dukKxUvg6upx1nw47Vfo6VMuZ+frjAdt8eXGZNQ9pdWzBEDo66?=
 =?us-ascii?q?coABDfcOPfxAoof9uVUAsAe+CwevCuPhyDBIh2P506I13Ok6DQHGxQ4gE84SvH?=
 =?us-ascii?q?jIstn4MroZX+CvzKnPyDXOd/1a1zD66IjOaRAuv++DXalofcHM1EcvCx3KjkuO?=
 =?us-ascii?q?pozjIjiYyPkGv2yV4OR9UO6jhXMspgZqojiz2MgslJfGhoQPxlDB8iV5xp01Ks?=
 =?us-ascii?q?OmR05getOrC4FfuD+BN4p2WcMiX39nuCMhyrEcpZG7ey0KxY0hyhXCZPOJb5KG?=
 =?us-ascii?q?7Qj/VOaNPzh4nnRldaq/iRi9/0Wtxe3yW8ip3FtXsidJjsTAu20D2RDO6saKSf?=
 =?us-ascii?q?lw8lmu1zuOygzf9uJJLE4qmKfHJZMswL4+mJUTv0jfGCL9hUv4jKiTdko+++io?=
 =?us-ascii?q?7fzqY7XhppCAK490jRn+Mr4pmsy9H+s3LhQOU3Kc+eSm273v5U75T6tQjv0wjK?=
 =?us-ascii?q?bZtIrWJcMBpq62BQJez4Ut6w6nAju7zNgUh3cKIVBfdB6ZkYTkO0vCLfH4APun?=
 =?us-ascii?q?nligjC1nyv/JM7H7BpjBNHfOnbTncL1g8UBT0hAzwspa559MD7EBJ+/8VVHpud?=
 =?us-ascii?q?zDCx85LxS0w+H6CNVhzo8eWXyAAqueMK7KrV+J6fggI++JZI8OvDvxN+Qp6+Lz?=
 =?us-ascii?q?gXMjn18SZ7Ol0oANZ3+mBfRnI16ZYWbyjdcECmcGpBYxTOvviFGaUD5TYWi9X7?=
 =?us-ascii?q?4k6z0mFI6qF4nOS4K3jLCfwiu2Hodaa2FGB1yUFHfnbYSEW/MCaCKIJc9hlyQJ?=
 =?us-ascii?q?VaO9S4A/yxGhqgn6x6BiLurT/C0Yrozs28Zu5+DIjh497yJ7D9+d0mGWU2F7gG?=
 =?us-ascii?q?YIRyQs0K9jpkx9z0+P0bJkjPxACdxT+/RJXx86NJ7b0+N6F9fyVxnFfteIU1am?=
 =?us-ascii?q?Xs6mDSsxT9I239AOf0F9G824jhDE3SqlHaMal6CRCJwz6KLc0Cu5G8Eo6HbL0e?=
 =?us-ascii?q?EbhltuFtFGNyulhqN63wfWDo/N1U6ekvDuPe4N2yXR80+HzHGSpwdJVwVsVr3f?=
 =?us-ascii?q?WnISbVeQqs72rAuWXrilFbMPNgpa1dXEO6xBdtrxl1JESfz/ftPEbDTitX23AE?=
 =?us-ascii?q?PC47SKd4fnYCFV5znQFkUC2ytbvUu9dEJ2Ujy9rnzTCnprElT0bk732eN3pWiq?=
 =?us-ascii?q?VVM5yhrMZEpkgenmsiUJjOCRHqtAlokPvz0s/nAtRA6w?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2DeAwAHItFf/0HhJQpigQmEboE4CpVgA?=
 =?us-ascii?q?5pLgWgLAQEBAQEBAQEBCAEYCwwEAQGESgKCACY4EwIQAQEGAQEBAQEGBAGGUQy?=
 =?us-ascii?q?CNykBgxEBAQEBAwE5SwQCAQgRBAEBAR4QKAodCAEBBAESCIMfgxWsPHSBNIQ+A?=
 =?us-ascii?q?YEYhQmBOI8gPoERgxg+gl0FgScBEgEJhg4EgxMoPx93bmu3WgcDgnSJHosyhmk?=
 =?us-ascii?q?rhFGdZpN8iwyReYQeAgQCBAUCFYFtgQpwcIM5CQo9FwINlyaFRHQCNQIGCgEBA?=
 =?us-ascii?q?wmJS4ERAQE?=
X-IPAS-Result: =?us-ascii?q?A2DeAwAHItFf/0HhJQpigQmEboE4CpVgA5pLgWgLAQEBAQE?=
 =?us-ascii?q?BAQEBCAEYCwwEAQGESgKCACY4EwIQAQEGAQEBAQEGBAGGUQyCNykBgxEBAQEBA?=
 =?us-ascii?q?wE5SwQCAQgRBAEBAR4QKAodCAEBBAESCIMfgxWsPHSBNIQ+AYEYhQmBOI8gPoE?=
 =?us-ascii?q?Rgxg+gl0FgScBEgEJhg4EgxMoPx93bmu3WgcDgnSJHosyhmkrhFGdZpN8iwyRe?=
 =?us-ascii?q?YQeAgQCBAUCFYFtgQpwcIM5CQo9FwINlyaFRHQCNQIGCgEBAwmJS4ERAQE?=
X-IronPort-AV: E=Sophos;i="5.78,405,1599523200"; 
   d="scan'208";a="469274544"
X-IronPort-AV: E=Sophos;i="5.78,405,1599523200"; 
   d="scan'208";a="93262709"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Khem Raj <raj.khem@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto #zeus -broken atomic modsset
Thread-Topic: [yocto] #yocto #zeus -broken atomic modsset
Thread-Index: AdbOVtZf/BqN2rUMSqWB3UCyixhNegAMIc0AAApN9SD//69mAIAAUfcQ
Date: Wed, 9 Dec 2020 19:16:28 +0000
In-Reply-To: <bbb90827-29ac-6a3b-ea59-5c06ec7ada15@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.48]
MIME-Version: 1.0
Message-ID: <MADEUP.164F2261FAB10796.19501@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


I do not see this issue under "rock", is it "zeus"/X11 specific or can it e=
xist across the board depending on what is running in the backgroud ?

-----Original Message-----
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Behalf=
 Of Khem Raj
Sent: Wednesday, December 9, 2020 2:06 PM
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] #yocto #zeus -broken atomic modsset

*** WARNING ***
EXTERNAL EMAIL -- This message originates from outside our organization.



On 12/9/20 11:05 AM, Monsees, Steven C (US) via lists.yoctoproject.org
wrote:
>=20
> So, this is expected ?, no current work around ?
>=20

seems that way, I guess you can fix it on X11 side of things
>=20
> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On=20
> Behalf Of Khem Raj
> Sent: Wednesday, December 9, 2020 2:00 PM
> To: yocto@lists.yoctoproject.org
> Subject: Re: [yocto] #yocto #zeus -broken atomic modsset
>=20
> *** WARNING ***
> EXTERNAL EMAIL -- This message originates from outside our organization.
>=20
>=20
>=20
> On 12/9/20 10:12 AM, Monsees, Steven C (US) via lists.yoctoproject.org
> wrote:
>> I'm building/running zeus 3.0.4 on intel platform...
>>
>> Can someone tell me why I might be seeing the following error and how=20
>> to resolve it ?
>=20
> https://patchwork.kernel.org/project/dri-devel/patch/20190905181834.62
> 34-1-daniel.vetter@ffwll.ch/
>=20
> might give some context
>=20
>>
>> X.Org X Server 1.20.5
>>
>> X Protocol Version 11, Revision 0
>>
>> Build Operating System: Linux 3.10.0-1127.13.1.el7.x86_64 x86_64
>>
>> Current Operating System: Linux sbcb-default=20
>> 4.19.135-intel-pk-standard
>> #1 SMP *PREE broken atomic modeset userspace detected, disabling
>> atomic*
>>
>> MPT Mon Nov 2 15:55:20 UTC 2020 x86_64
>>
>> Thanks,
>>
>> Steve
>>
>>
>>
>>
>>
>>
>>
>>=20
>>
