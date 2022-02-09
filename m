Return-Path: <bevenson@melinkcorp.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 473CFC433F5
	for <webhook@archiver.kernel.org>; Wed,  9 Feb 2022 16:51:28 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (NAM11-BN8-obe.outbound.protection.outlook.com [40.107.236.99])
 by mx.groups.io with SMTP id smtpd.web11.29035.1644425485406769758
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Feb 2022 08:51:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@melink.onmicrosoft.com
 header.s=selector1-melink-onmicrosoft-com header.b=MNNlI+o4;
 spf=pass (domain: melinkcorp.com, ip: 40.107.236.99,
 mailfrom: bevenson@melinkcorp.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cIx8rsRfHjotBgcdxlKpCLBFR9zf/6bXU5ruljYCUw1PgID7reeGa5bDfuB5GG7nRgfRN+0O3C4sN9NaRKJZnfJucJFgzheJQZjH5i/mXx0KNtxygFt3kb0hRzr1ZiZ2bbeG+GzXNpTt7j7lzAgjQLSn4Hu0lCl5BXcbzLSVTyxvY71GwpuiI2pcCjr4KqT6IIayMm6dOrF1uJgDTpYf8u60wB0M7xxCx5hKRw4M4lffSjptIsj5yCKjxqragUhQAdNG59Khd0UyzSsGb5GQ28lOnLmEBMBoGNmX3wIa0miPKpkpte+LXEaQVzuggn6cDNdK4W1xOrKLtlg74Jtyjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D6al/iXb/0wT1ffzuDsp3PmbHXMCzd/QawAej5NGSgo=;
 b=GrQRU3c7B32ZsZHIDemBMeIOcJ5VclaW7ULpBo1P25Dpkhx2vWtJLthK4yVACJnP5ZZypsELGnycT/TBjm5sS3mILLKAprYCSQyEBjr0xl9MEii2WzLPPK2L8nNNkZjrVziwuy0sF0HhZOiWpkQed+4QAzHli/lqHVrGJvRPe7inl0XQVK1XW0zcHTbRDCoC1EQRb9e1mgDNXskOoVIHGmOp4Fp1jC8jtw/BBA2gAeKrJE14qohgeS3soutGbYBXkld1b+79NST7lRzn4ccHwPskG7y7Cs/lUHP7HjGHsCIh6TiGNcVpVho3hmMwyXnUCrLDb9aIxqKGF/dZu1MDkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Melink.onmicrosoft.com; s=selector1-Melink-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D6al/iXb/0wT1ffzuDsp3PmbHXMCzd/QawAej5NGSgo=;
 b=MNNlI+o43SdcCmraDYKuGLVL4o94q3TGRIzTHqe8S6LR2NOOtMOoiDIoVowso+4DQvz+fJ/0fJv5ukdXLHoRcwc6dmiWilFS2XBrQHQSccpNhrKCrlo/Cty0YWfrQEzz2IrMZhaVKiTRtdYI1vu4NMqtUppJl8fxE7Cy4RIE//i/YeLss3ssx9EJtoTX45aw1mZp0qz41Mmv6jZU69MS9zSQuZnxMp79Uqv1cEOrrCiUCAyWWPjVha5WHnP9lSkJ58nFVp4eNSrsLlldy4kPV3plEVtfwgXNTryR6/5ZBugAE1ci2JEdGyqmeljoffUVtt4kbrxi7TPg8OT9iOlbgQ==
Received: from CH0PR20MB3948.namprd20.prod.outlook.com (2603:10b6:610:c6::22)
 by BLAPR20MB3953.namprd20.prod.outlook.com (2603:10b6:208:327::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.11; Wed, 9 Feb
 2022 16:51:16 +0000
Received: from CH0PR20MB3948.namprd20.prod.outlook.com
 ([fe80::3c03:994:3b7f:e757]) by CH0PR20MB3948.namprd20.prod.outlook.com
 ([fe80::3c03:994:3b7f:e757%6]) with mapi id 15.20.4975.011; Wed, 9 Feb 2022
 16:51:16 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Problems building eSDK: Exception: variable BBFILES references
 itself!
Thread-Topic: Problems building eSDK: Exception: variable BBFILES references
 itself!
Thread-Index: Adgd0uaIdFZCO+j4SaaEsqEEttg1wg==
Date: Wed, 9 Feb 2022 16:51:15 +0000
Message-ID: 
 <CH0PR20MB3948314ED38DB85B04E97B93BB2E9@CH0PR20MB3948.namprd20.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-bromium-msgid: 25ea1181-dbe5-4982-80ac-09676179f243
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=melinkcorp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7cb96710-2c99-46ee-c08f-08d9ebec6351
x-ms-traffictypediagnostic: BLAPR20MB3953:EE_
x-microsoft-antispam-prvs: 
 <BLAPR20MB395384525A7B883ECCFC10F6BB2E9@BLAPR20MB3953.namprd20.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:265;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 RAxrt/P8QpCoeX4E7ozNmLXQ88Vcszk6C7ww5z0imhC3oqb8tsR29nz6uFr+NEci1YXGvw35e6TMGx/zRolQvfHXmhUfZIy31b5DjkMWfVX8clHeLTBW73ItNADsy1Kaq74zY7nPC07/+s9Dwaxd/665mJ2wsVjOo62EE8POWRLrwJLPUXPliL/xnHcqL9TTBX6Jr1NGnuUt83k6pb6ZHRKqBzTeR/Ie4dnRnFBJd7uVekVS+HyVKiLr2XxMGLyjqnfRCbNaabzJhRw6raYYgtJaYsVCgnU07lCHXPBF39zWivFhHwd2oqGFV1hgCIbDjo+dDMD2NgadSkrdFq4pOGKByeGw4f4KWQGVuO5hNM2wOaD+6AZG0SgmRYc/gonVOcQ4Ym5lXwmqnplOAOeMYo6vuTa743Nnv6hJ54Ycg099KCgJu9FUq5D75fbkyV9/bByA3nap2QhPZE7SUMSelASzT0G0r/22ggvR/mx4AP86/ZT27p6k+XBqJr0SBOqiQLcDZWfHhH2x0Ura98hnmtx1EfvvjdKyGIsVjSKXUhpA6v7sZMrQr3QGQJPaw384jc8pPpfVahEdcKZ8gIpO/qoexDdZf2PNaQSwRUsnvrdgKTuhhUIdPQQ1xHMBPqWEv+CcfMCkDbIIHV8ShpIXe9wHGuEpobt4SwoWGxVH4ja6mi0aQ8ma2THimEYuei7nSZB3xxhmAFSrelCRLPjn1Q==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH0PR20MB3948.namprd20.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(376002)(39840400004)(136003)(346002)(396003)(366004)(508600001)(66574015)(6916009)(316002)(122000001)(83380400001)(9686003)(86362001)(6506007)(7696005)(8936002)(76116006)(66946007)(55016003)(52536014)(2906002)(38070700005)(33656002)(8676002)(186003)(5660300002)(30864003)(26005)(38100700002)(71200400001)(66556008)(66446008)(66476007)(64756008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?twIDjibk2paozy+6gTDEcmoqnXF/QkBwHiC0rYjgEvUHeiphMyvivifX3mb1?=
 =?us-ascii?Q?eqGZXyNb7c5OqlAUjnjKNKfjjo/SOnqBE45P9Zxs9/+yX+t5ttBlJ1GghlzY?=
 =?us-ascii?Q?FLi5kDazsLSL0CQfBZ81/DjLDZBan5HONthNDFsTirkej3NxPFVXVA4XtNUG?=
 =?us-ascii?Q?I/WMEMNH1Y9xyZ6bIS3KNaGjBuHFS7Nx/WRXqhUzYKOluXQI4sEMQgmWf6TP?=
 =?us-ascii?Q?5+uSy8zGTA8R3n6lDT4CMFxIyk8yJ7LvZC9XyuNWc/IC2jBcczgeCoLfjN5E?=
 =?us-ascii?Q?ABlmvnPZUFQ+LpXnTqOLSE8zKMOKVOTxVU8Rmy7e2u9RW71magzbp5oXvKRD?=
 =?us-ascii?Q?MisGfEpzu2e9Q3oubF6AW9e60ZGJ+WJRBRtYbdrb6QTvdFcjZF2d0G5BpRpg?=
 =?us-ascii?Q?fD7C6AfQ4TQfe62XZU7JVd98m/MYcR9dgA2B5Twz0qDTgiC57ewukwuQqK8m?=
 =?us-ascii?Q?VzYh6dPQOAC1B7VGpW5qCW/7s+naIznsQMFEDnai0MkIs/fv0jq4H9hV64jq?=
 =?us-ascii?Q?ysI1n/vi3TMxzv/fphHuhC9MN3LAM7ertKeF9kt0lbcSqnZseNCr1rbOobaj?=
 =?us-ascii?Q?bghqOKE4yp83MdmKT0pNLB4NUCe/1bffLdBJ/1m7MAJFvxvSQCO4vblZ6I/J?=
 =?us-ascii?Q?O94xvimtkWTTRp/DYw+VOVjAdlwZJp1gzgXlSM0d0MoJETawiypG1bAYbjqn?=
 =?us-ascii?Q?34eRZUijCs/xPy5CB4m+nTRdpnH8Wq171s5SgURJirkP7OGMgDpQYloG6IIL?=
 =?us-ascii?Q?r47GopqCk+wOnLzWvYyzPV2InmhYHIJEcOH+e0q93bHS03A6u5oFCBs1C74t?=
 =?us-ascii?Q?ZOGvMO+A1HEC9fg18RgMiJydmIsEHFEE526nUIs6Lsy2Xei7kbMoPo+K0ds6?=
 =?us-ascii?Q?tUFafggGZ4caZ13LLeNyVd8QFIiXqAErRyXBMqfZNbg+B08NAc8ILPLvedf5?=
 =?us-ascii?Q?n6xihi9LX5r+sWfeSrLtz/pn9i7t4gxXcg2E2+ztNA43ZmmZCVYaB+Z/0TIC?=
 =?us-ascii?Q?2jIhFjEJ9oE7qSTXrefXlO/hzjGT2VFzFFrEzGYuHuUQyQMaKbfy10wiPHoL?=
 =?us-ascii?Q?ZrnDeuSvg9NCYkcexleqj/nwl9+yUfSWs6kStQYbB9N6Ox237IMlAl4nLSuW?=
 =?us-ascii?Q?ts4DX4f8Rtws/0U49KnkxBjiW2nUu7miBLxc4KAU5aQ5VgJTbtez0plmJaiG?=
 =?us-ascii?Q?04+taEi4kDRQiPACKtLRdeq9EumNUAeRhLmJ8/aztLYE9b7WwA0Z4XOakQDg?=
 =?us-ascii?Q?RHHtL2mmqd069OY4xgm3xLLSgZeqj9sUwYc1TDtGsO+97RjMeNB7a2qTaJDS?=
 =?us-ascii?Q?kxNWZgYjfI5V+uij5ooxkyoU+sP8OfQvOiYNO6f5IP3H9B6o2tEkxWg9Qwrd?=
 =?us-ascii?Q?P+snssReCgziNmPxCWMNQFarAWW88/ixsALGOgIgpa8AjpO5/WEFFkcmVc8J?=
 =?us-ascii?Q?mj6d2tsESglpiTKDmv+YsBQA/OyoabgIRLLA9d8T4Yo5gjV6VO2Y/oOkqAxl?=
 =?us-ascii?Q?udQqhL8fU9VYrhNb9GEShtIwIa3LvKFU6eVF1/iuKTC6W+pQ2Bpcw2FTTIQX?=
 =?us-ascii?Q?wKLKmcYpg9/LqpIxugpXhNYBl/8GYz42Yi0iv+OC7O9sSOJoWECajYKfWvfN?=
 =?us-ascii?Q?bA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR20MB3948.namprd20.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 7cb96710-2c99-46ee-c08f-08d9ebec6351
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Feb 2022 16:51:15.7935
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 Fyn9iHRFyRb6CHBdH7wVx3rVCwUPdotO7+YYmfxZPjKfoPd7Ja0LrDHBG+dZlp1a7gV3r+ouzEuzvS3twUqocA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR20MB3953
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Feb 2022 16:51:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56123

All,

I've used the SDK in the past and want to start using the eSDK for my proje=
ct.  I'm on the dunfell branch.  I'm trying to build the eSDK for my image =
by calling:

bitbake <my_image_name> -c populate_sdk_ext

The sdk generation fails with the error in the subject.  I haven't been abl=
e to find any documentation on what this means or how to fix it.  I've trie=
d deleting my tmp directory and running cleansstate on my image and I still=
 get the same error.  I've also tried generating the eSDK for core-image-mi=
nimal and I have the same error.  I can generate the SDK successfully, just=
 not the eSDK.  I have copied more of the build output below if it helps.  =
Note that I have replaced some text that I'm paranoid about publishing on t=
he internet; the modified text is enclosed with <>.

Does anyone have any insight as to why the eSDK build is failing?

Thanks,
Bryan

NOTE: Running intercept scripts:
NOTE: Executing buildhistory_list_installed_sdk_host ...
DEBUG: Executing python function buildhistory_list_installed_sdk_host
DEBUG: Python function buildhistory_list_installed_sdk_host finished
NOTE: Executing buildhistory_get_sdk_installed_host ...
DEBUG: Executing shell function buildhistory_get_sdk_installed_host
DEBUG: Shell function buildhistory_get_sdk_installed_host finished
NOTE: Executing copy_buildsystem ...
DEBUG: Executing python function copy_buildsystem
NOTE: Excluding local workspace layer <my_home_dir>/poky/poky-build/workspa=
ce from extensible SDK
NOTE: Generating sstate task list...
ERROR: Failed to generate filtered task list for extensible SDK:

### Shell environment set up for builds. ###

You can now run 'bitbake <target>'

Common targets are:
    core-image-minimal
    core-image-sato
    meta-toolchain
    meta-ide-support

You can also run generated qemu images with a command like 'runqemu qemux86=
'

Other commonly useful commands are:
 - 'devtool' and 'recipetool' handle common recipe tasks
 - 'bitbake-layers' handles common layer tasks
 - 'oe-pkgdata-util' handles common target package tasks
ERROR: bitbake failed:
ERROR: Command execution failed: Traceback (most recent call last):
  File "<my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnue=
abi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/bitbak=
e/lib/bb/data_smart.py", line 401, in expandWithRefs
    s =3D __expand_var_regexp__.sub(varparse.var_sub, s)
  File "<my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnue=
abi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/bitbak=
e/lib/bb/data_smart.py", line 96, in var_sub
    raise Exception("variable %s references itself!" % self.varname)
Exception: variable BBFILES references itself!

The above exception was the direct cause of the following exception:

Traceback (most recent call last):
  File "<my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnue=
abi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/bitbak=
e/lib/bb/command.py", line 107, in runAsyncCommand
    self.cooker.updateCache()
  File "<my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnue=
abi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/bitbak=
e/lib/bb/cooker.py", line 1558, in updateCache
    (filelist, masked, searchdirs) =3D self.collection.collect_bbfiles(self=
.data, self.data)
  File "<my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnue=
abi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/bitbak=
e/lib/bb/cooker.py", line 1729, in collect_bbfiles
    files =3D (config.getVar( "BBFILES") or "").split()
  File "<my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnue=
abi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/bitbak=
e/lib/bb/data_smart.py", line 589, in getVar
    return self.getVarFlag(var, "_content", expand, noweakdefault, parsing)
  File "<my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnue=
abi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/bitbak=
e/lib/bb/data_smart.py", line 780, in getVarFlag
    parser =3D self.expandWithRefs(value, cachename)
  File "<my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnue=
abi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/bitbak=
e/lib/bb/data_smart.py", line 418, in expandWithRefs
    raise ExpansionError(varname, s, exc).with_traceback(tb) from exc
  File "<my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnue=
abi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/bitbak=
e/lib/bb/data_smart.py", line 401, in expandWithRefs
    s =3D __expand_var_regexp__.sub(varparse.var_sub, s)
  File "<my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnue=
abi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/bitbak=
e/lib/bb/data_smart.py", line 96, in var_sub
    raise Exception("variable %s references itself!" % self.varname)
bb.data_smart.ExpansionError: Failure expanding variable BBFILES, expressio=
n was ${BBFILES} <my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-l=
inux-gnueabi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/po=
ky/<my_custom_layer1>/recipes-*/*/*.bb 	<my_home_dir>/poky/poky-build/tmp/w=
ork/at91sam9x5ek-poky-linux-gnueabi/<my_image_name>/1.0-r0/sdk-ext/image/tm=
p-renamed-sdk/layers/poky/<my_custom_layer1>/recipes-*/*/*.bbappend <my_hom=
e_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnueabi/<my_image_n=
ame>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/<my_custom_layer2>/re=
cipes*/*/*.bb <my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linu=
x-gnueabi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/=
<my_custom_layer2>/recipes*/*/*.bbappend <my_home_dir>/poky/poky-build/tmp/=
work/at91sam9x5ek-poky-linux-gnueabi/<my_image_name>/1.0-r0/sdk-ext/image/t=
mp-renamed-sdk/layers/poky/meta-bacnet/recipes-*/*/*.bb 	<my_home_dir>/poky=
/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnueabi/<my_image_name>/1.0-r0=
/sdk-ext/image/tmp-renamed-sdk/layers/poky/meta-bacnet/recipes-*/*/*.bbappe=
nd <my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnueabi/<=
my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/meta-atmel/=
recipes*/*/*.bb <my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-li=
nux-gnueabi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/pok=
y/meta-atmel/recipes*/*/*.bbappend <my_home_dir>/poky/poky-build/tmp/work/a=
t91sam9x5ek-poky-linux-gnueabi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-ren=
amed-sdk/layers/poky/meta/recipes-*/*/*.bb <my_home_dir>/poky/poky-build/tm=
p/work/at91sam9x5ek-poky-linux-gnueabi/<my_image_name>/1.0-r0/sdk-ext/image=
/tmp-renamed-sdk/layers/poky/meta-poky/recipes-*/*/*.bb             <my_hom=
e_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnueabi/<my_image_n=
ame>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/meta-poky/recipes-*/*=
/*.bbappend <my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-=
gnueabi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/me=
ta-yocto-bsp/recipes-*/*/*.bb             <my_home_dir>/poky/poky-build/tmp=
/work/at91sam9x5ek-poky-linux-gnueabi/<my_image_name>/1.0-r0/sdk-ext/image/=
tmp-renamed-sdk/layers/poky/meta-yocto-bsp/recipes-*/*/*.bbappend <my_home_=
dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnueabi/<my_image_nam=
e>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/meta-openembedded/meta-=
oe/recipes-*/*/*.bb <my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-pok=
y-linux-gnueabi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers=
/poky/meta-openembedded/meta-oe/recipes-*/*/*.bbappend <my_home_dir>/poky/p=
oky-build/tmp/work/at91sam9x5ek-poky-linux-gnueabi/<my_image_name>/1.0-r0/s=
dk-ext/image/tmp-renamed-sdk/layers/poky/meta-openembedded/meta-networking/=
recipes-*/*/*.bb             <my_home_dir>/poky/poky-build/tmp/work/at91sam=
9x5ek-poky-linux-gnueabi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-s=
dk/layers/poky/meta-openembedded/meta-networking/recipes-*/*/*.bbappend <my=
_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnueabi/<my_ima=
ge_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/meta-openembedded=
/meta-python/recipes*/*/*.bb <my_home_dir>/poky/poky-build/tmp/work/at91sam=
9x5ek-poky-linux-gnueabi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-s=
dk/layers/poky/meta-openembedded/meta-python/recipes*/*/*.bbappend <my_home=
_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnueabi/<my_image_na=
me>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/workspace/recipes/*/*.bb          =
   <my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnueabi/<=
my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/workspace/appends/*.bba=
ppend <my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnueab=
i/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/meta-ope=
nembedded/meta-oe/dynamic-layers/meta-python/recipes-*/*/*.bb which trigger=
ed exception Exception: variable BBFILES references itself!


Summary: There was 1 ERROR message shown, returning a non-zero exit code.
Execution of '. layers/poky/oe-init-build-env .; PYTHONDONTWRITEBYTECODE=3D=
1 BB_SETSCENE_ENFORCE=3D1 PSEUDO_DISABLED=3D1 oe-check-sstate <my_image_nam=
e> meta-extsdk-toolchain:do_populate_sysroot -s -o <my_home_dir>/poky/poky-=
build/tmp/work/at91sam9x5ek-poky-linux-gnueabi/<my_image_name>/1.0-r0/taskl=
ist.txt -l <my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-g=
nueabi/<my_image_name>/1.0-r0/tasklist_bb_log.txt' failed with exit code 1:

### Shell environment set up for builds. ###

You can now run 'bitbake <target>'

Common targets are:
    core-image-minimal
    core-image-sato
    meta-toolchain
    meta-ide-support

You can also run generated qemu images with a command like 'runqemu qemux86=
'

Other commonly useful commands are:
 - 'devtool' and 'recipetool' handle common recipe tasks
 - 'bitbake-layers' handles common layer tasks
 - 'oe-pkgdata-util' handles common target package tasks
ERROR: bitbake failed:
ERROR: Command execution failed: Traceback (most recent call last):
  File "<my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnue=
abi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/bitbak=
e/lib/bb/data_smart.py", line 401, in expandWithRefs
    s =3D __expand_var_regexp__.sub(varparse.var_sub, s)
  File "<my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnue=
abi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/bitbak=
e/lib/bb/data_smart.py", line 96, in var_sub
    raise Exception("variable %s references itself!" % self.varname)
Exception: variable BBFILES references itself!

The above exception was the direct cause of the following exception:

Traceback (most recent call last):
  File "<my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnue=
abi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/bitbak=
e/lib/bb/command.py", line 107, in runAsyncCommand
    self.cooker.updateCache()
  File "<my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnue=
abi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/bitbak=
e/lib/bb/cooker.py", line 1558, in updateCache
    (filelist, masked, searchdirs) =3D self.collection.collect_bbfiles(self=
.data, self.data)
  File "<my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnue=
abi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/bitbak=
e/lib/bb/cooker.py", line 1729, in collect_bbfiles
    files =3D (config.getVar( "BBFILES") or "").split()
  File "<my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnue=
abi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/bitbak=
e/lib/bb/data_smart.py", line 589, in getVar
    return self.getVarFlag(var, "_content", expand, noweakdefault, parsing)
  File "<my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnue=
abi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/bitbak=
e/lib/bb/data_smart.py", line 780, in getVarFlag
    parser =3D self.expandWithRefs(value, cachename)
  File "<my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnue=
abi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/bitbak=
e/lib/bb/data_smart.py", line 418, in expandWithRefs
    raise ExpansionError(varname, s, exc).with_traceback(tb) from exc
  File "<my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnue=
abi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/bitbak=
e/lib/bb/data_smart.py", line 401, in expandWithRefs
    s =3D __expand_var_regexp__.sub(varparse.var_sub, s)
  File "<my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnue=
abi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/bitbak=
e/lib/bb/data_smart.py", line 96, in var_sub
    raise Exception("variable %s references itself!" % self.varname)
bb.data_smart.ExpansionError: Failure expanding variable BBFILES, expressio=
n was ${BBFILES} <my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-l=
inux-gnueabi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/po=
ky/<my_custom_layer1>/recipes-*/*/*.bb 	<my_home_dir>/poky/poky-build/tmp/w=
ork/at91sam9x5ek-poky-linux-gnueabi/<my_image_name>/1.0-r0/sdk-ext/image/tm=
p-renamed-sdk/layers/poky/<my_custom_layer1>/recipes-*/*/*.bbappend <my_hom=
e_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnueabi/<my_image_n=
ame>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/<my_custom_layer2>/re=
cipes*/*/*.bb <my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linu=
x-gnueabi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/=
<my_custom_layer2>/recipes*/*/*.bbappend <my_home_dir>/poky/poky-build/tmp/=
work/at91sam9x5ek-poky-linux-gnueabi/<my_image_name>/1.0-r0/sdk-ext/image/t=
mp-renamed-sdk/layers/poky/meta-bacnet/recipes-*/*/*.bb 	<my_home_dir>/poky=
/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnueabi/<my_image_name>/1.0-r0=
/sdk-ext/image/tmp-renamed-sdk/layers/poky/meta-bacnet/recipes-*/*/*.bbappe=
nd <my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnueabi/<=
my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/meta-atmel/=
recipes*/*/*.bb <my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-li=
nux-gnueabi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/pok=
y/meta-atmel/recipes*/*/*.bbappend <my_home_dir>/poky/poky-build/tmp/work/a=
t91sam9x5ek-poky-linux-gnueabi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-ren=
amed-sdk/layers/poky/meta/recipes-*/*/*.bb <my_home_dir>/poky/poky-build/tm=
p/work/at91sam9x5ek-poky-linux-gnueabi/<my_image_name>/1.0-r0/sdk-ext/image=
/tmp-renamed-sdk/layers/poky/meta-poky/recipes-*/*/*.bb             <my_hom=
e_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnueabi/<my_image_n=
ame>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/meta-poky/recipes-*/*=
/*.bbappend <my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-=
gnueabi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/me=
ta-yocto-bsp/recipes-*/*/*.bb             <my_home_dir>/poky/poky-build/tmp=
/work/at91sam9x5ek-poky-linux-gnueabi/<my_image_name>/1.0-r0/sdk-ext/image/=
tmp-renamed-sdk/layers/poky/meta-yocto-bsp/recipes-*/*/*.bbappend <my_home_=
dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnueabi/<my_image_nam=
e>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/meta-openembedded/meta-=
oe/recipes-*/*/*.bb <my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-pok=
y-linux-gnueabi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers=
/poky/meta-openembedded/meta-oe/recipes-*/*/*.bbappend <my_home_dir>/poky/p=
oky-build/tmp/work/at91sam9x5ek-poky-linux-gnueabi/<my_image_name>/1.0-r0/s=
dk-ext/image/tmp-renamed-sdk/layers/poky/meta-openembedded/meta-networking/=
recipes-*/*/*.bb             <my_home_dir>/poky/poky-build/tmp/work/at91sam=
9x5ek-poky-linux-gnueabi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-s=
dk/layers/poky/meta-openembedded/meta-networking/recipes-*/*/*.bbappend <my=
_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnueabi/<my_ima=
ge_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/meta-openembedded=
/meta-python/recipes*/*/*.bb <my_home_dir>/poky/poky-build/tmp/work/at91sam=
9x5ek-poky-linux-gnueabi/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-s=
dk/layers/poky/meta-openembedded/meta-python/recipes*/*/*.bbappend <my_home=
_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnueabi/<my_image_na=
me>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/workspace/recipes/*/*.bb          =
   <my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnueabi/<=
my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/workspace/appends/*.bba=
ppend <my_home_dir>/poky/poky-build/tmp/work/at91sam9x5ek-poky-linux-gnueab=
i/<my_image_name>/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/meta-ope=
nembedded/meta-oe/dynamic-layers/meta-python/recipes-*/*/*.bb which trigger=
ed exception Exception: variable BBFILES references itself!


Summary: There was 1 ERROR message shown, returning a non-zero exit code.


DEBUG: Python function copy_buildsystem finished
DEBUG: Python function do_populate_sdk_ext finished

