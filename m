Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F30BE7B61D
	for <webhook@archiver.kernel.org>; Wed,  4 Oct 2023 13:46:53 +0000 (UTC)
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (EUR01-VE1-obe.outbound.protection.outlook.com [40.107.14.43])
 by mx.groups.io with SMTP id smtpd.web10.18963.1696427202393173863
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Oct 2023 06:46:43 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@theobroma-systems.com header.s=selector1 header.b=A45D3uw7;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.14.43, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KtSA2YZj/1R56KNmjqPvZdm+3B8zUJOeFLjnjZO5HbLTfZIERFLb38A/0D3t1hPyhi9NJEPAva+guhcrklIn4F+0EllrFd9I0bh/w4scgI6ivAqxBC36ry3tSG7KaAzYl8RgGXDYKGUbaQNH6b/7C5tVbgNCOxfs+SpBPtLxYen8SvShtg24HAW5jCgyszEKqjNv2llMy+RXvUNBuaZCNAbhT/gXn761+f6NBHVyxxC77ily7k3AJ5yrqDD1u8DX8Gld7sfEBOom0biixmutgFYtbATM+6VYTtGwf5Tiebqh0fLrtR1Olj/4Ili3NcM4nLN1Wbt4Z22f9YZLb91alg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E3Ixb4KQoUn4G3rQfU4wr3gzDN3pJzQ4muXAHlH8qEQ=;
 b=eItsSB9MoQ5Lg6fHTfbfiGqsoAkaisoHlBk+tgTYjfMKZAI8+hT+A9Jm/K4NJpBeLt6szrIVH0DjFvXWmcDWrkYbuDB57SDg+2/eMr3EHrUvbC5ZshGaX9qxo6YUCH8HRLllbm5FrDDnKPPDUcwNg1ce+wRFHWCn5S2okKLqERJ700M8vincCYxhjjnr5ZKdwJlb/LjUWT4QBV6dEpvMmtsSsFi9f2ODw95v4igqV1ORjWgWd5LiARhC/3kBYPmbQZrezA0MSsQzL5KqypCuPAc2nqHDgIlBtlQte2XKjmO52oUmU6hZ4vcNnCEsPdmNC0CXUhqKIwPWuvCyd0KZ+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E3Ixb4KQoUn4G3rQfU4wr3gzDN3pJzQ4muXAHlH8qEQ=;
 b=A45D3uw7lVkQYVSQZ7PK0liZp7LZ9kL/TvBNsmD9xoI2Gb1WX7tkyDynb7kWMSVxBHmNvlslVZEX0wrQQpm28s7kepiMyN4XpR0iYku4vdHYU8z0Fo7zHz19WDh91uUYElCMbxW+1nUxaJ2SibSrFDBKa2i7EOL5HCuiYTfPYQhK158Aa2EHqwXrRerxTVLuIbCImf4ttzdjFCBGygR8B9LEdsjk6iWLaLM1rYFiQDTbL+bCljmbb2camYOz/DCOpuKJYJn0X8sM8dDc1ZsTaVVGE5vpEdv6j9RcYTJ+FH2A6FEROMdopDpWNQ2sKJ3XgpuQzKLDHKRtLqCdDy2KSA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AM0PR04MB7140.eurprd04.prod.outlook.com (2603:10a6:208:192::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.28; Wed, 4 Oct
 2023 13:46:39 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::a05e:353b:a447:8152]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::a05e:353b:a447:8152%5]) with mapi id 15.20.6838.033; Wed, 4 Oct 2023
 13:46:38 +0000
Message-ID: <dc10f6ca-d48d-d726-cf15-4f2bcd50a899@theobroma-systems.com>
Date: Wed, 4 Oct 2023 15:46:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [yocto] [meta-rockchip][PATCH] KERNEL_DEVICETREE: 32-bit re-org
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
To: Trevor Woerner <twoerner@gmail.com>
CC: yocto@lists.yoctoproject.org, bruce.ashfield@gmail.com
References: <20231003041941.4760-1-twoerner@gmail.com>
 <0d15a99f-549f-af9d-5f6b-e7712bbf62ff@theobroma-systems.com>
 <20231003133805.GA2234@localhost>
 <0efbea1f-d05f-8ec6-9144-f04a0b3e17a2@theobroma-systems.com>
In-Reply-To: <0efbea1f-d05f-8ec6-9144-f04a0b3e17a2@theobroma-systems.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: FR4P281CA0101.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:cb::16) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AM0PR04MB7140:EE_
X-MS-Office365-Filtering-Correlation-Id: 05c15a0d-127d-4ba5-aae8-08dbc4e05572
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	eBrHAqZD0jbyyXXUHlEOC+s82SHkUvDOyp8iD/Z7S8IqxKyZkDGkJqa8n+mGEjCL5h+jH/XEHS88R8czL9Fc/y9pW13IyL+OFyGRXu5lKXLDtfKkqu6eTJWePRKOoXkRe1jYiIx/VuDXELiSS5LLnIUQ/Cv1T9ObkGMKB8dPoW2fcD3XhSaasYxi+lAY1XVgfZM6P84YwsIbThQVnypsiyYUpdA67vS7tciyMpY9D2Rs96CKidQFWVGs0z9Ow6EJPh8PByFAte5PvQP0rnOR46ElTs2r7FOih5LUlGfrOfjAHP8/aQMqRP5TNWkY3SDLEi0ht67esdMC8xfpKV7WxzJfQtr2xJXkXFKgnP5zTEc/lVMzbxBqs7ik4XcvAKWNWGu9MXaTta5n+cbpwX2rZ3fzzPbr28xpDu/qLCIhvN8PczvTMv/5uQ8vDXAY+lAlVehRr/rC4eyQ9/hKmmepzQEg/QYU7iIKXg4oNWa2Z/dTw3uXXRlCGvSUo1gCR3IO4VMQb/3eB+3gvbM9ifZlPuGgeLR69AQVCQe404R160oDTyMNkxUmqeRmmVoupj8cmssA5rZywau0v+74Hp2bg30GSSs+nPTPONACNoNGB5SiEGt8PgTqhexDOO88oD2BhaP1T1UAENrZIxvusZFq3w==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(366004)(376002)(346002)(396003)(39850400004)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(31686004)(53546011)(83380400001)(8936002)(4326008)(8676002)(26005)(478600001)(2616005)(6506007)(6512007)(6486002)(966005)(66946007)(316002)(66556008)(6916009)(36756003)(31696002)(2906002)(38100700002)(41300700001)(66476007)(86362001)(44832011)(5660300002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?DyI++cTXaNEqbXAaofzEiyyLqQ92UVcmGy1AygXBwZh3jjotqppWQLwJyLax?=
 =?us-ascii?Q?+PC04/nNEzp3h9G3w1/JZeWw0qhqLJAd5qL98tu3Ya3l1EAQ7OONEP40fmdX?=
 =?us-ascii?Q?GjvJ6Yf2oeuZwzEyAilCY0NI7wCYrNAoLYP8YSp18sHfXK8BZwUdhgScRMHB?=
 =?us-ascii?Q?HuUuI8zNnYawdAJmdoBiNhVE7u1Jr1jaAaK1Y/b/0+BhfKw/KdUS9PDFNJwN?=
 =?us-ascii?Q?cz6e1xeSd44Cis9PeFmiDHQrPOlKUTv8IzsLzPESjUlWmUCe9seMFJ3TxNjZ?=
 =?us-ascii?Q?eEHcrbYu8OKsZYiR7yiLBJhHw6xsDXNUQGzR0FoB1pSmcZ5lsUex79My7fw4?=
 =?us-ascii?Q?TrsEHoII8A67yhnglZyG2WSPKpIBRVIKo+hhvuXk7MJHm6wbjFvacy/mVDf3?=
 =?us-ascii?Q?YtSGINmybr9f2YZd3hkDJMek96LJO9qzu+q2EA3o00Rb7lxzie+w2haI0odt?=
 =?us-ascii?Q?W21SpVATM0opeBeM8BR+SaWFov1bLV+KPvuL74YcokR80Y/woydMT3JDwa1y?=
 =?us-ascii?Q?GFum8ysPG73BZsWItsGxDTRG1kQXGwn33GLDks18iFALXnnhvFyEm66HiA2f?=
 =?us-ascii?Q?FJ92yJ/SZQtw3PVqb1KS2k1pprFuBjLwI/JocLrDTiq9T8Dh98pwll1pDLlX?=
 =?us-ascii?Q?BsdS/RqvcTlzt4pgol+TXn1LsAnbH9gMSmXTZbqDaYfszuQSwc5G6mBWMEJG?=
 =?us-ascii?Q?2tV2VZ3JCE1XKjQoMC5fpphv2W8jjVvmiZt2FuM8hAMfE/AlbegGFAi1BqQe?=
 =?us-ascii?Q?pJq3uhDMiRNdzkY9wcPxmBTkMzJqz5rHtM+bZo7V2UyYgqppEz1NCWjwDY9a?=
 =?us-ascii?Q?AaIxHSFtKS7t5SRFrFgSFajd5NccpGOYa05td/d6JQRSUXjUIh2gGmCDYNVL?=
 =?us-ascii?Q?6MfzqXrwrc21V4/pCqxg0ArtUtlxsc/Ovt18l5oAgeuFkCpn4UTb1YBZk2CH?=
 =?us-ascii?Q?6WWULMIWLc02qYtOgf25b3HqeadfzoekuVsrWpoDoKUF+gTFONHnIShjGCaX?=
 =?us-ascii?Q?VE2WQNvrWTY4cQF/C6nWg3tXEX8dJWV6I5+mc/LNM4mc3qw4nNxmkWY8kuYg?=
 =?us-ascii?Q?7FlWe7iQJSb4lZnZi4GHczF+UZigSo5jov+beyHG79ZnQI3X3gvlz7xV/prK?=
 =?us-ascii?Q?wSrJzUqwPhQJ/qYw898Kk20nw1kDZyMT2a8/0keEL2qt+HAN9J3WtYyklfwH?=
 =?us-ascii?Q?qzgy1z+irVIQTTddGUfDhS2tJSzV/C0pCHuj8gp1hwOFh6m3g4w2+MKtIfVw?=
 =?us-ascii?Q?qKjOt0zfNSfgoEkOmvPizHPMB8DHKg+WvlJ2Yrre9Qrv/vxJpZqRKEbPFsUD?=
 =?us-ascii?Q?T3PkedduCZHQPcfweukSS4mCDyiyCJWSBZtwGVCQlli8rgGyGJXTIwBb/xqH?=
 =?us-ascii?Q?+4rdbCb8RHhmGECrnYkGAdSg2qSG5Ic1baPveDoIUmdEq28XQhkJ3xoBp0AJ?=
 =?us-ascii?Q?toXXRBn9KZx4AJIJStIQkt0OiXwPOjIH6x8FzcVriKKV4WiEho3eaCtOkygr?=
 =?us-ascii?Q?DzSZlY40JwSKFODGvLXkxEMsEBW/symBk805TF1rBLjXqAzmyu4T9eQYP6ST?=
 =?us-ascii?Q?NCpfoS4J79Um0XBTrghN3N/9ghhytgrG30hkIOExlcGW94bdUBiKiC7WMR1A?=
 =?us-ascii?Q?ZjOdQkXMGh35QP8YAKeSnRQ=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05c15a0d-127d-4ba5-aae8-08dbc4e05572
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2023 13:46:38.9110
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eAZ/tplmJfxOWfdDG0++syA1iejwFo13dyTfvN0CdxcM5WloN+R9UO+H1+FVK5V07XOIHt5frJ/U3cq7k7fCXT/ZfoEkp6Wquz7QD0KNsWexfLyYc0g6TWrkACtM/zuF
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7140
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Oct 2023 13:46:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61236

With Bruce in Cc for real this time :)

On 10/4/23 15:45, Quentin Schulz wrote:
> Hi Trevor,
>=20
> On 10/3/23 15:38, Trevor Woerner wrote:
>> On Tue 2023-10-03 @ 12:32:08 PM, Quentin Schulz wrote:
>>> Hi Trevor,
>>>
>>> On 10/3/23 06:19, Trevor Woerner via lists.yoctoproject.org wrote:
>>>> The upstream kernel reorganized the 32-bit arch/arm device-tree=20
>>>> directory structure
>>>> to separate out the device-trees by manufacturer (similar to the=20
>>>> organization
>>>> of the arch/arm64 device-trees). Update the references to 32-bit arm
>>>> device-trees to match.
>>>>
>>>
>>> Does this work with linux-yocto and linux-yocto-dev from master or do w=
e
>>> need to add some logic to support both (do you want to?).
>>
>> This doesn't work at all. I figured this was an easy one, made the tweak=
,
>> submitted it, then added it to my jenkins builder to verify overnight.=20
>> Woke up
>> to find the do_image_wic() tasks failed. It's the same layout as the=20
>> 64-bit
>> machines but I'll have to dig in to figure out why it didn't work.
>>
>> As for the linux-yocto vs linux-yocto-dev question I'll take a look. Thi=
s
>> happened with linux-yocto, so I would assume it is already the case with
>> linux-yocto-dev. But if oe-core supports multiple versions of=20
>> linux-yocto,
>> that might be the tricky bit and yes, I would look into supporting=20
>> both for
>> the time-being until the transition period ends.
>>
>=20
> This was done in v6.5-rc1 so anything before won't work sadly.
>=20
> master branch of poky supports 6.1 6.4 and 6.5 for linux-yocto=20
> (linux-yocto-dev being typically newer than the latest linux-yocto and=20
> the latest linux-yocto already having the change, I'll omit the change=20
> for linux-yocto-dev).
>=20
> For reference, denix on IRC suggested you look at=20
> https://git.openembedded.org/openembedded-core/commit/?id=3D04ab57d20009d=
85eb566e83ae6fe1dcea4db7300 for what we're trying to do here. But I think t=
his isn't applying to how the DTB is found but rather where it's put and th=
is is too late for us.
>=20
> I think we need to modify get_real_dtb_path_in_kernel in=20
> meta/classes-recipe/kernel-devicetree.bbclass instead.
>=20
> We could handle it this way for example to allow a fallback:
> """
> get_real_dtb_path_in_kernel:arm () {
>  =C2=A0=C2=A0=C2=A0=C2=A0dtb=3D"$1"
>  =C2=A0=C2=A0=C2=A0=C2=A0dtb_path=3D"${B}/arch/${ARCH}/boot/dts/$dtb"
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # Handle pre-v6.5 layout for =
Aarch32/ARM DTB
>  =C2=A0=C2=A0=C2=A0=C2=A0if [ ! -e "$dtb_path" ]; then
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dtb_path=3D"${B}/arch/${ARCH}=
/boot/dts/$(basename "$dtb")"
>  =C2=A0=C2=A0=C2=A0=C2=A0fi
>  =C2=A0=C2=A0=C2=A0=C2=A0if [ ! -e "$dtb_path" ]; then
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dtb_path=3D"${B}/arch/${ARCH}=
/boot/$dtb"
>  =C2=A0=C2=A0=C2=A0=C2=A0fi
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # Handle pre-v6.5 layout for =
Aarch32/ARM DTB
>  =C2=A0=C2=A0=C2=A0=C2=A0if [ ! -e "$dtb_path" ]; then
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dtb_path=3D"${B}/arch/${ARCH}=
/boot/$(basename "$dtb")"
>  =C2=A0=C2=A0=C2=A0=C2=A0fi
>=20
>  =C2=A0=C2=A0=C2=A0=C2=A0echo "$dtb_path"
> }
> """
> (to be determined if "arm" is a valid OVERRIDES, otherwise we need to=20
> check against "ARCH" bb variable; also not sure about the second=20
> basename if it's necessary at all).
>=20
> Then you would just have KERNEL_DEVICETREE done the same way as in this=20
> patch:
> KERNEL_DEVICETREE =3D "rockchip/rk3066a-marsboard.dtb"
>=20
> and we wouldn't have to handle it on the recipe level.
>=20
> Otherwise, we could do the following:
> RK_KERNEL_DEVICETREE =3D "rockchip/rk3066a-marsboard.dtb"
> KERNEL_DEVICETREE ?=3D "${RK_KERNEL_DEVICETREE}"
>=20
> then have a bbappend for all old-layout recipes:
> linux-yocto-rt_6.1.bbappend
> linux-yocto-tiny_6.1.bbappend
> linux-yocto_6.1.bbappend
> linux-yocto-rt_6.4.bbappend
> linux-yocto-tiny_6.4.bbappend
> linux-yocto_6.4.bbappend
>=20
> KERNEL_DEVICETREE:arm =3D "${@' '.join(os.path.basename(dtb) for dtb in=20
> d.getVar('RK_KERNEL_DEVICETREE').split())}"
>=20
> or something like that. We probably want to have something a bit more=20
> precise than just arm to avoid breaking other arm machine conf files=20
> which do not define RK_KERNEL_DEVICETREE, maybe=20
> KERNEL_DEVICETREE:rockchip:arm if that is even resolving properly.
>=20
>> Although... any BSP layer supporting 32-bit machines will have similar=20
>> issues,
>> so perhaps there's a better way to solve this in oe-core?
>>
> Adding Bruce in Cc, I hope he doesn't mind being summoned like this.=20
> Maybe you have an idea on how to handle both the new and old layout for=20
> ARM/Aarch32 DTB in the kernel for the KERNEL_DEVICETREE variable?
>=20
> Cheers,
> Quentin

