Return-Path: <kweihmann@outlook.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD679C433F5
	for <webhook@archiver.kernel.org>; Mon, 25 Oct 2021 13:22:30 +0000 (UTC)
Received: from EUR03-DB5-obe.outbound.protection.outlook.com
 (EUR03-DB5-obe.outbound.protection.outlook.com [40.92.71.69])
 by mx.groups.io with SMTP id smtpd.web08.32377.1635168148868158229
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 06:22:29 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@outlook.com
 header.s=selector1 header.b=hVvKjb2u;
 spf=pass (domain: outlook.com, ip: 40.92.71.69,
 mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lzJLgRfeGQ7zv5Zpf9JXFklrRjWrFS2VZUBtBS6KNOmptZCSFPhkaPrUBMzNd/wipJI231x2CpLTKAzrCDM5XL/HM2jy7+60xdzzuduLTsB4/yNl20/27HlffFCMkEvX2Z+smpZGcGoWmuDcBKGBls3Ij6NdEMcOuBk2pfmbYnOp6muT27T3/WMBwHaHZOFJ7XlCNdbY93CKzSo4ReRiwNFiUWoSJsQmRp1Haxl5NgeyYlu+erqBsLUBez5g/ZUtKIQvmsUo+O5vJvcUxYOLW5NqYdUbV8HmZ/uvqZk8c9XpBPI0fFhriS/HscFeQxr4O6lR14A+B+/rT69UrVOS0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jBZKkMSx3rhhGL9rqadOQi+1XFXsEMaYUO5YMZ/mimk=;
 b=UKW+oSv+c0rxManpXBZzJ/INejSOJzt/jfAaJrQO7ibQkmw7rT0UtCi7MX50rJI6/9auwA5vUHIby3HxBAraW73iY6bPzAVfaoVHHSbcTPGupGV5LMqMCLOYpC7WqF7ab+AOYm+aX0zwN6kmMS9ra+WEGDEx8gmKlr5X6VO6gS0m9jtsTuWic1ZtRlIowL2aY2c5QWF5CuwL8m2wwV66Z7Z1q8JZP+zhPKbIDIDl+20xyEqtGN3U+1uYZoaw2HfgdAtv9HYowVgquSz/5bdRHgIQ844tm2opOHxWoxKSswWImzvBfZiaiqXyLII5XNBmacE6xBEZPfu69pe9QCilug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jBZKkMSx3rhhGL9rqadOQi+1XFXsEMaYUO5YMZ/mimk=;
 b=hVvKjb2uMsOxU3uW1H9QYhJh0eN9sAemXSh3intLewJm3hGUtwbj9hL7lwRZdEYHsisO++09U3xqBycjL3FVoD4TiBxzIBzRCZKtltIm3q4/bYqA8QRdAk7yRqhyc3NamvvH4fVeQCXnSOYJ1BQpP8bDqZHnis32D1GvUsJ9FZo6zyAreqRLzXQlS5SIU8n83tTTfBE0oa3Q4ddBRWjj+LWVkb5b8bJM14vfOkpx7lqiyGrgc+O5F5+VzJpsigeelfV7Sb4oW1Ctc+Aqh5iG2DQmm2KRkHisldgf4d4cZD5U2r7ErQ/VAxHMQwnhMpGkFyWj7LhudUTKTEEgg8pl7Q==
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com (2603:10a6:20b:284::24)
 by AM4PR0902MB1892.eurprd09.prod.outlook.com (2603:10a6:200:97::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Mon, 25 Oct
 2021 13:22:26 +0000
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::7c6f:9b99:3d00:f710]) by AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::7c6f:9b99:3d00:f710%4]) with mapi id 15.20.4628.020; Mon, 25 Oct 2021
 13:22:26 +0000
Subject: Re: [yocto] bbappend usage
To: steven.monsees@baesystems.com,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <MADEUP.16B1474819B9F6FA.19066@lists.yoctoproject.org>
From: Konrad Weihmann <kweihmann@outlook.com>
Message-ID: 
 <AM9PR09MB4642BF0D7921B9341C38D562A8839@AM9PR09MB4642.eurprd09.prod.outlook.com>
Date: Mon, 25 Oct 2021 15:22:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <MADEUP.16B1474819B9F6FA.19066@lists.yoctoproject.org>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-TMN: [8AHKmAbZr3uwdp7fUYt8ug6ePAvZDQNib00Qlr/vJyCrVOSV4eg+Eha44IpYHDJ2]
X-ClientProxiedBy: AM8P191CA0018.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:20b:21a::23) To AM9PR09MB4642.eurprd09.prod.outlook.com
 (2603:10a6:20b:284::24)
X-Microsoft-Original-Message-ID: 
 <d5a83313-438a-1c82-d1bd-32c148e75b40@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:3103:205c:200:bed3:df7f:f488:16a2]
 (2a02:3103:205c:200:bed3:df7f:f488:16a2) by
 AM8P191CA0018.EURP191.PROD.OUTLOOK.COM (2603:10a6:20b:21a::23) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18 via Frontend
 Transport; Mon, 25 Oct 2021 13:22:26 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5d703fbf-4f6b-474c-eef4-08d997ba7cd9
X-MS-TrafficTypeDiagnostic: AM4PR0902MB1892:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	9bSef9HaDGLCZT1l+VR+Uy7JrKdZb+Tcmz0XQuWfkU1n/3NvT+fB6nifNIq+wddffwKAgH56fmU/9ot185DgsgFegpcZiPKQ89QWaSJzW49W1cSxUiNnCwfK+4l2DFZYDUzXmL+Ls+0EBmAiwuLvYBi4V9wkaPX7J9DIkooklhJycyRE3abDpVxE3C2CA5AEJOyJ7ql/7/miyavtYltmIOleAa+0+o/IMeIhKBcSRIU803V1fRAItmEQUJaDeX84SCl1XAqIWYVIKwUL2bIy3LVjFHUbfMaJqVWiImgsp3j2EYBPEEq4c5g+Nh2DBjezkUD4ZhJFnie5AmTmnwq3P6knybD7tUXCEDZUTSB626Lyg7Is4ZITjWqQmnxrpPXWKyoq/wirMucWn0DyYZQrlPirDMSTL1nUcCYIDRkI2k05riqsWAsZ6yw64e4NW3pdoaFu50lcxPwVBlLO8czm7/ISX9KodcComU/6euTS01uIhXWtNAOL6UpTpb62gXQF2IfpvhBQJCII8Loiz8bsxHlqIOxfhMABGagIg8KyxusnrzyQiVCaD6r8hmTT5ovEpld6XBzJCZF5BCZtfTTDEQ==
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	fcCynOKFjWGTpEPjfGfL1nDS8T3og2ABVMakPRS0iRMQ1wexTROdTNiZuSNOkBiq/q11hEu4piYp3yF13AXRLo92LitjqW6RzAA0z6rLzq23OXZMnIYLXM5riev/0cqVHZJkeAH+oOw1GDLU0kmNgTs9vpvlPal503BxR3SwkmXC/+jNba+h6oSO7sGWh5L209GWxYgwVFXhmRAcFiY9sELZxFaHbqAD2dQ6KYSUSG/AJLM4Xo4BAGJNK932XjDKY8nyVQUOA3gcPuoZEbVvuIWBojR9zu2WEnwgDkgOb7yXA01nF+ph7f2yRjD09TjZQSaZpsQaf8+3jfkVxe7BrELWbXydarAuKl440u60fxHVs0q47tO87C9QLsZI1KiBqO1JhvJGX7kcuBvi4q1YY9OLXjEqXMYQhdhxugiz/+XeLVwVOFgWCAHkjBqEtzLsDKyDq4EipBbIub07GZaKPjHYQ9H0DLrkFQcOXKei3buFbUAqCsXusjb6iW0CjlA2RKmsJNY2p0Z60JG31BkW/B6NyUW1JUKQ4WxSOcMVrrwLcoZpDcfrPX8YzEQq/elUzWf2NBgys/69adQe6lktxxnH0bO3D2W+U7gGcKlMv93Zj9GW4+OjXZnqhv72rcYwn86c0ETh6OFFOIMUHTuQt6QnrRlHj6fbCPGm0mH23qYtDGEQbAUDJ3ivA7tGXWJ2VCqpVz4TMEg3iz5CRhfRjHbP9T+++JmdA4UFsmBNotVxSx+XBayZOG5f/WDXN+5HgpzNR+lZLlCHDdMlFwKLZA==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 5d703fbf-4f6b-474c-eef4-08d997ba7cd9
X-MS-Exchange-CrossTenant-AuthSource: AM9PR09MB4642.eurprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2021 13:22:26.7279
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR0902MB1892
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Oct 2021 13:22:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55139

The super yoctoish way would be to alter the packaging of the recipe to=20
your needs.

Let's assume recipe-a consists of the files

foo
bar

and it would package both files into recipe-a pkg.

In the actual image you only install packages into a file system, so if=20
you don't want bar to be installed into your final image, it'd be best=20
to package bar into a separate package.

PACKAGES_BEFORE_PN =3D "${PN}-bar"
FILES:${PN}-bar =3D "bar"

in this case the recipe would produce

recipe-a (containing just foo)
recipe-a-bar (containing just bar)

You could install now (via IMAGE_INSTALL in your image recipe) just add=20
recipe-a and only foo would be put into the final image.

While a potential other image (IMAGE_INSTALL +=3D "recipe-a-bar recipe-a")
would contain both.

But if you'd go down that road you have to make sure that runtime=20
dependencies between the packages are met (using REDEPENDS:*=20
statements), as otherwise it could turn into very hard to debug issues.
So I would propose to **not** do that via bbappends, but forks of the=20
recipes you want to repackage.

Another option (as likely mentioned already) is to use

rem_stuff() {
    rm ${IMAGE_ROOTFS}/<file you want to delete>
}

ROOTFS_POSTPROCESS_COMMAND +=3D "rem_stuff;"

in your image recipe

On 25.10.21 14:55, Monsees, Steven C (US) via lists.yoctoproject.org wrote:
> Hello:
>=20
> If I am building an image =93image-ABC=94, and it is composed of a number=
=20
> recipes, and for some of these recipes I may NOT want to install their=20
> final components within my image=85
>=20
> Which is the best place to modify the build with bbappend ?
>=20
> Would I modify a recipe=92s do_install (do_install_append-recipe_xyz) ?,=
=20
> or would I modify the image recipe (do_install_append-image_ABC) I am=20
> leaning this way to avoid cases where the component recipes might have=20
> bbappends in place already ?
>=20
> Looking for the proper Yocto way=85
>=20
> Thanks,
>=20
> Steve
>=20
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55136): https://lists.yoctoproject.org/g/yocto/messag=
e/55136
> Mute This Topic: https://lists.yoctoproject.org/mt/86576092/3647476
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [kweihmann@outl=
ook.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20

