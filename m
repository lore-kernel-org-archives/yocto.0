Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90FCC433F5
	for <webhook@archiver.kernel.org>; Fri, 13 May 2022 08:03:59 +0000 (UTC)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
 (EUR01-DB5-obe.outbound.protection.outlook.com [40.107.15.78])
 by mx.groups.io with SMTP id smtpd.web12.5751.1652429026865619344
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 May 2022 01:03:50 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify"
 header.i=@cherrycloud.onmicrosoft.com
 header.s=selector2-cherrycloud-onmicrosoft-com header.b=JRV+VCLh;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.15.78,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PqQLdkzgUtPDlmgBbaYiC0K68I2RPml9HJtCgoXmmiw5eyPZ8Z2C8Pb/TY6l+ucaf0AYYEeLX5Chu2OqVnrmdbEmn2mTxY/VBEhxrq8uzUxi2EYFaSkoHDKHSBHseDX2JDP6sS5nO+F9haLgInemOlzlEwrczuDdnLVilsM2Fiybb7Lpwv2EHLDKZU0Awts+j2QwTN8GwVapW6wJEgmzuhVXDad3N1+dPhRKRNQeE5QLw4DNePDgAawUTf0uzw2WyzOk1SwNgHtkXlX68/6+VuvxDuQGxcjN4a6tEO3EPFMzVE4SdLgAtiw6rZz+XURXj3EGdoiJ8q1Lwv9e+rGwAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=grissjurkbYdnA1J8TnXNwn2TY/8WpZopPYuz0cuRYc=;
 b=dnJIIgn8HW4MO2dAOs6szOr/jm4/0d21pKrd/Hqp8hBg3F/X6qtv3j6Vx9fjN7GFcW4uBZR6Sq9dUTTzVWyQ1uUKNM8Ynuvvj+kUP2DIduCY+9K3enDPFtroYY9/EXHmlZ6M9j9jw63FdXh9FxYQy3xrJY6cij5ZU9qTFrA6Bqnc8A40NC85JqhRpJe3tJyKg7zrB0+SC5vDqSkV3d5B874ITmj5ZUNUWWSe7YNLvGsBrpDzXLdoK8rjMpWjpaV0PxjRUTK6H2rnSuxdLRHqgP39wfHZ7mL15yP/4SXm8kn9+w38UKY+qpUZlAFZIj3/ZUVKaevt01h2LjdG5T4qCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cherrycloud.onmicrosoft.com; s=selector2-cherrycloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=grissjurkbYdnA1J8TnXNwn2TY/8WpZopPYuz0cuRYc=;
 b=JRV+VCLhDjIeSb3yMcgoqpOKV7U7yaW0Yyw2/tWPkNx4FeR76CpN2CxgE49KCq20tM/L1NoTjEtZIhaVuM7mDTnyFoKTBIgge+ueP5NIaMGrQR//0VvsN8eQQxVLUE5B5h0sFSfH4LqzQFi/CRHsn+XL4yYvSFvtRo4DtNtHXAk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com (2603:10a6:102:2aa::7)
 by AM0PR04MB4628.eurprd04.prod.outlook.com (2603:10a6:208:72::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.14; Fri, 13 May
 2022 08:03:43 +0000
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::e443:c646:c299:5512]) by PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::e443:c646:c299:5512%7]) with mapi id 15.20.5227.023; Fri, 13 May 2022
 08:03:42 +0000
Message-ID: <a1d712e5-4b88-1a77-9b77-d6bb652f3add@theobroma-systems.com>
Date: Fri, 13 May 2022 10:03:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [yocto] Problems with recipe for our Rust-Software
Content-Language: en-US
To: Felix Knorr <fknorr@neuroloop.de>, Alex Kiernan <alex.kiernan@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <e1f7dbc8-c091-5891-2d1e-d1fb22ada352@neuroloop.de>
 <CAO5Uq5TnUuDo1uC40qjOkGrVWfjDG98XbxchQ86wpVAXCch_eg@mail.gmail.com>
 <d613b978-e8fa-ffcc-77de-87f1415bfdb9@neuroloop.de>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <d613b978-e8fa-ffcc-77de-87f1415bfdb9@neuroloop.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: VI1PR09CA0114.eurprd09.prod.outlook.com
 (2603:10a6:803:78::37) To PA4PR04MB9367.eurprd04.prod.outlook.com
 (2603:10a6:102:2aa::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: aeac6522-3c68-451e-3ccc-08da34b718e3
X-MS-TrafficTypeDiagnostic: AM0PR04MB4628:EE_
X-Microsoft-Antispam-PRVS: 
	<AM0PR04MB46286996005BBD4F562DE945C2CA9@AM0PR04MB4628.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	w39lqsDtGU3RdiEFbs8jSZaqR745xVsZ58U/Mp0kWI+MZZBUeOkZTLCxOVlB38oKXoAyIU+rIcEfrpR3fiVscqSS18HZQZI1h3txfhlWFSX0jnAuwblh1WRgg5jlm7l1CbOGK8IwRuvE2RsNRZaVETAgkb0Qqsz1T9Wayz1FtNTuk0e7D/H8Q3Q+aG58zfl2S2OoOisOsyOZFVkXGPiyL8uhD0wPqernrJfDxDQi4CR/gHJELYvLQYRAI4BTLxAz/dnu28EJTRNSClGXmlNp6XnZmvXcxAMBUcUhU2Y2HaFGf5iy22WEUeD5qqoE67/kQGa6y0g2jHcTC4+8zVscEjj71DdJevSZDSMJZPRP+kweu1EbwlIvZzboqD0XJRr/ccTuwcft6Wn6x/tII8ToURnyeQEv4dfhhev2Ng8bMj2KtSoOkSZspzALlMmQ5nER5iASMAWJMj6AtIRUw1PCzYWyn1nbJW5m3kdwG+GhJB0mza9V/3QDo2298PPqLeFA2KY/YFim7QKz7tKtRCPtX34rV/vhER+4EssPZLrqAfvRiQob3DRxOFGj29TrO9jVMTuHyRvx2+HWPv5MhkmZIcPjbyBXO04CMHE6SAOMVujXOfjRkRCAHNbu8sDeIVHuq7gWBYhOsnNd0wCfILQyBN6G2FxV3lA4bGl4HM4MMtDIC2Kr2lZZtUhiIzpj0V7YUs6rhdK5G5V6ncybeX4XLzJ5twfOEFp7IO0y0G9zZ2GPPjioQ92KJg57aN8yGX8X8R4EHq6NannFRSzxLfAaq+Tx3gLyNCuHnmXGyLPsFt9zt75KxxNcADcuuTRdDdMvjoUaBl3bF2B0te7HDmcjukagMp7TeCtsK4TvFFaZPGY=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9367.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(6666004)(31696002)(4326008)(966005)(6486002)(508600001)(2616005)(86362001)(5660300002)(38100700002)(110136005)(316002)(8676002)(66476007)(66946007)(66556008)(6506007)(31686004)(6512007)(66574015)(36756003)(53546011)(83380400001)(44832011)(186003)(8936002)(2906002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?0kin5JCr9c8QTAZtppQObbG2545iMHJw+CdDkQp4kMEItdELI+w7kTjNTEDD?=
 =?us-ascii?Q?ABgHDVm2DmIMi9NCE6rtKOkwNUgDHn+Ecz3XL8NYkt9tLntdI9eCdgJOqHY0?=
 =?us-ascii?Q?Fl238aBA7SXhxX+n1bByaLFvxwG0EJ7fMwVQvwSQhT77g7RzF8jpi0XzA9JO?=
 =?us-ascii?Q?dzWuWckEcIFZF11WzWe7URh+q271TGXKDvbLJuzcvjZYmp0SrH71H0SwoyXk?=
 =?us-ascii?Q?uli15FxCqnHt0LusuGWwwTBRmQXlrRdWbAW1X0RzX1HCHS/RB02RT1R1wnVE?=
 =?us-ascii?Q?JaPACRfwnvMSYkf+N3KStMiiaaeu4SXTdNhU/NbfHyd2iRyCOeek2DXqotkT?=
 =?us-ascii?Q?d1bwLN/34bT4M71tfU2OvZRmMlmUvEc1o5vNc+t3QwY2n/R6T2/LPPtimIOr?=
 =?us-ascii?Q?Ael7XgsoiJdwXvvzDXjRHTJ4VylYKqo0qToxMvtuDErxdML/DFobL2ZpELEf?=
 =?us-ascii?Q?CZHimgYAsETvWvShBNG1hRErq0MsmXcAJ0PVKUsHjLakySwHA1UFU/JmXtpg?=
 =?us-ascii?Q?2tU1wxbnNn1qxGF1Be+G7s/qh+HLolqUsbFy0BPuadmqywVcCNXviKfFFcVT?=
 =?us-ascii?Q?MdtlMBj0LDg5yZlSv0WsyEdrkUaC/O/2Vx+9oMz7cUfiieaDKjQQVMtncbVx?=
 =?us-ascii?Q?Jk0u4aFsBbfSa2mw11GNSHUIm76Kouqm/CqaZGNb0DnCr888tadIIL8GoxXv?=
 =?us-ascii?Q?OhsRr4PB7ZK11wRWuAWn75PdGNij7JUMFpE7Gqpt3fjH+rUg/BwnOtAHZB6r?=
 =?us-ascii?Q?nbisSWeKF7IqTvqOauNbR+m5PjqPFkpGPp3BeN8ogwFbHqQYgbj8/pATiqRj?=
 =?us-ascii?Q?bdHW4nqeI1KDrQgtmUAX3mLr1WZixSOXlbxGC096XF1LDAS9gAC8dZALzfe4?=
 =?us-ascii?Q?xKsARVXJ0Y6DuOO4/942W/JZfIBV8aNby1jpniK1iy2J7g6GMIY5X11t6nSU?=
 =?us-ascii?Q?yEfwfJ9JhlzIE7lDB86Vr9ZOiZf+PDFmHg1TdRZXwsLYyTKL1cGh0HAp18w8?=
 =?us-ascii?Q?zTAY+6fVFlSGJiVqPpOA0i/YWA44qmWkwIad1jTbY9K3wsM5/3ZuoT+PVTqi?=
 =?us-ascii?Q?IqxuVPMkEUGzGm2nPqS7rkZAqIXVfGTMo+iIymfvR8twB/0++dDHGTGK9dkT?=
 =?us-ascii?Q?fZgXqldt77yAfU8hRM+bXX/L581nHUmgl6ut/uNVx6XsjfeJrAYkVv1IJZIw?=
 =?us-ascii?Q?W44aDFYtUSOyulk4tBAWAS3vMankBxPPbHT+ecKmyfMonItxryfTv1+SWQhx?=
 =?us-ascii?Q?1wOxZxLmRHjqgnnOvLcInILRAygEnkqgXFHBVoRP26HiXb430ao0lAD/uGha?=
 =?us-ascii?Q?ap1F5RwEVM3FXFNvRRdGDWBIt7gfkNaphwYAOjb7pZlReXXQftdY8awTRzom?=
 =?us-ascii?Q?iqgio0NmsAJYZsuiaPJN/ZyVL2OcoQl2Yb16msDWB0vmguWdEZh/zHdAkAWl?=
 =?us-ascii?Q?229tt9tNuV0ZSzp4o7W0gTeV/otS68O2e7EJWcsIhnw4w9W4ttseDBVHmqAL?=
 =?us-ascii?Q?xmMN6j9p9FinSLvYJR9yflJ8LoB/qJ6kG7yl2GELAtKteoXcu1eUfm0aI8+0?=
 =?us-ascii?Q?gFGQU7jCAJEtTxgSUrYC0scPLoHhBWwCu9sLARi4dkTzQdVp8xHtMmLyGq2t?=
 =?us-ascii?Q?z2rQPfEtop14wGis2AFLpg1//ADTuEW6nH+op3mJxYWsLv51z3AzljOaV7Nh?=
 =?us-ascii?Q?V76TjYsGhhc9MBtPgzWqm4ffTa0CQsodvN4Q+544l379Qt87ltRQfVayqVSg?=
 =?us-ascii?Q?KTIRyevyZg0qVf29tGlA9huZ7Vcttrk3mPGgddcEWnTybacPQDssa7Hlk5La?=
X-MS-Exchange-AntiSpam-MessageData-1: hSmRHyOpGHKtQL2X68h0IlBjfagglv8B8eU=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 aeac6522-3c68-451e-3ccc-08da34b718e3
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9367.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2022 08:03:42.8957
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 rQBZNqhxDo0eQyJdIPIp6UjMIZfXwrAciSwWD6Ida6hjgMecUcEhHzJTJ68wp4aTAUNnRKy1zkQ/QCuGixHOTvYNguK9KUB+iT3DDqSevLHbL/JgRh3UT4UKzTsSV0SI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4628
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 May 2022 08:03:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57088

Hi Felix,

On 5/13/22 09:56, Felix Knorr wrote:
> Hey,
>=20
> I'm now using the latest cargo-bitbake (thanks for the tip), but I'm stil=
l having problems. One of the dependencies needs pkg-config to build, and t=
he error implies that it couldn't be found. To verify this, I added the fol=
lowing do_compile function:
>=20
> do_compile() {
>          bbnote "pkg-config: $(which pkg-config)"
> }
>=20
>=20
>=20
> and checked the log.do_compile  file after running which just says
>=20
>=20
> DEBUG: Executing shell function do_compile
> NOTE: pkg-config:
> DEBUG: Shell function do_compile finished
>=20
>=20
> so it's definitely not there. I added DEPENDS +=3D " dbus (>=3D 1.6) pkgc=
onf" to the recipe, but that didn't help.
>=20

Because it's supposed to be pkgconfig-native in DEPENDS, which can be=20
done by just adding:
inherit pkgconfig
to your recipe.

Cheers,
Quentin

> On 12.05.22 15:28, Alex Kiernan wrote:
>=20
> On Thu, May 12, 2022 at 2:09 PM Felix Knorr <fknorr@neuroloop.de><mailto:=
fknorr@neuroloop.de> wrote:
>=20
>=20
>=20
> Hey,
>=20
> I'm struggling with a recipe to build our rust project.
>=20
> I cannot use cargo-bitbake because we use the 2021 edition. Also the proj=
ect is quite complex. We have one repository with 4 different crates, some =
of them are linking c code. I'm trying to create a recipe by hand.
>=20
>=20
>=20
>=20
> The HEAD of cargo-bitbake works fine for 2021 for us.
>=20
>=20
>=20
> When I run bitbake for the recipe, it will error out with the following e=
rror message:
>=20
> ERROR: serve-1.0.0-r0 do_compile: ExecutionError('/home/felix/git/poky/bu=
ild/tmp/work/core2-64-poky-linux/serve/1.0.0-r0/temp/run.do_compile.400923'=
, 101, None, None)
> ERROR: Logfile of failure stored in: /home/felix/git/poky/build/tmp/work/=
core2-64-poky-linux/serve/1.0.0-r0/temp/log.do_compile.400923
> Log data follows:
> | DEBUG: Executing shell function do_compile
> |     Updating crates.io index
> | warning: spurious network error (2 tries remaining): failed to resolve =
address for github.com: Name or service not known; class=3DNet (12)
> | warning: spurious network error (1 tries remaining): failed to resolve =
address for github.com: Name or service not known; class=3DNet (12)
> | error: failed to get `anyhow` as a dependency of package `nlprog v0.1.0=
 (/home/felix/git/poky/build/tmp/work/core2-64-poky-linux/serve/1.0.0-r0/tm=
p/baroloop/programmer-rust/nlprog)`
> |
> | Caused by:
> |   failed to fetch `https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3=
A__github.com_rust-2Dlang_crates.io-2Dindex&d=3DDwIGaQ&c=3D_sEr5x9kUWhuk4_n=
FwjJtA&r=3DLYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t=
&m=3DKVxrF11PIYLER0S0KZ5nJTg8Ut1pYlTpWVAglebyRABm3CAb_QrF6YGl4ooo6kcf&s=3Dv=
jlTVOHFeWmwaLHUilCKAh_c4dOX92W-oBIEor_tiR8&e=3D `
> |
> | Caused by:
> |   network failure seems to have happened
> |   if a proxy or similar is necessary `net.git-fetch-with-cli` may help =
here
> |   https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__doc.rust-2Dlan=
g.org_cargo_reference_config.html-23netgit-2Dfetch-2Dwith-2Dcli&d=3DDwIGaQ&=
c=3D_sEr5x9kUWhuk4_nFwjJtA&r=3DLYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4n=
jZguQhZhkI_-172IIy1t&m=3DKVxrF11PIYLER0S0KZ5nJTg8Ut1pYlTpWVAglebyRABm3CAb_Q=
rF6YGl4ooo6kcf&s=3DaaYEIIOtHpjY7BkTDEi5V9-gt8kNkmRnhhAIUBrpOPI&e=3D
> |
> | Caused by:
> |   failed to resolve address for github.com: Name or service not known; =
class=3DNet (12)
> | WARNING: exit code 101 from a shell command.
> ERROR: Task (/home/felix/git/baroloop/programmer-tablet/layers/meta-main/=
recipes-core/programmer/serve_1.0.0.bb:do_compile) failed with exit code '1=
'
>=20
> However, if I run the devshell for the recipe and run cargo, it will at l=
east be able to do the fetching. (It will currently fail in the linker step=
, but I assume thats because I haven't executed oe_cargo_fix_env)
>=20
> if I don't remove the http.multiplexing=3Dfalse from the cargo config, it=
 will just hang forever in the devshell (but not error out).
>=20
> If I set export CARGO_NET_GIT_FETCH_WITH_CLI=3Dtrue the error is slightly=
 different, but the git call that is then displayed also works in the devsh=
ell. Also using a crate://-fetcher doesn't work, which is why I added the C=
ARGO_DISABLE_BITBAKE_VENDORING =3D "1" I've been fighting this for hours an=
d can't come up with anything. I hope you can help me.
>=20
> PS: I'm using kirkstone, and I'm not having any url sections in my .gitco=
nfig
>=20
> This is the recipe:
>=20
> cargo
>=20
> SUMMARY =3D "Copy prebuild programmer serve into the image"
> LICENSE =3D "CLOSED"
> LIC_FILES_CHKSUM =3D ""
>=20
> SRC_URI=3D"\
>      file://${bl_path}/programmer-ui/dist \
>      file://${config_path}/files/session \
>      file:///tmp/baroloop \
> "
> #   crate://crates.io/tokio/1 \
> #   crate://crates.io/war/0.3 \
> #   crate://crates.io/byte/1 \
> #   crate://crates.io/log/0.4.8 \
> #   crate://crates.io/serde_json/1.0.75 \
> #   crate://crates.io/serde/1.0.133 \
> #   crate://crates.io/docopt/1.1.0 \
> #   crate://crates.io/colored/1.9.3 \
> #   crate://crates.io/chrono/0.4.11 \
> #   crate://crates.io/battery/0.7.7 \
> #   crate://crates.io/uuid/0.8.2 \
> #   crate://crates.io/thiserror/1.0 \
> #   crate://crates.io/anyhow/1 \
> #   crate://crates.io/clap/3.0 \
> #   crate://crates.io/futures/0.3 \
> #   crate://crates.io/wry/0.6.1
> S =3D "${WORKDIR}"
>=20
> RDEPENDS:${PN} =3D "\
>      eudev \
>      dbus \
> "
>=20
> DEPENDS =3D "\
>      eudev \
>      dbus \
> "
>=20
> # INSANE_SKIP:${PN} +=3D "file-rdeps"
>=20
> FILES:${PN} =3D "\
>      /home/neuro/serve \
>      /home/neuro/dist/** \
>      ${sysconfdir}/mini_x/session \
> "
>=20
> CARGO_DISABLE_BITBAKE_VENDORING =3D "1"
>=20
> do_compile() {
>      oe_cargo_fix_env
>=20
>      sed -i '/multiplexing =3D false/d' $CARGO_HOME/config
>      sed -i '/\[http\]/d' $CARGO_HOME/config
>      sed -i '/cainfo/d' $CARGO_HOME/config
>=20
>      export RUSTFLAGS=3D"${RUSTFLAGS}"
>      export RUST_TARGET_PATH=3D"${RUST_TARGET_PATH}"
>=20
>      export CARGO_NET_GIT_FETCH_WITH_CLI=3Dtrue
>      cd ${S}/tmp/baroloop/programmer-rust/
>      cargo build --release --bin serve
> }
>=20
> do_install() {
>      # this isn_t reached anyway
> # ...
> }
>=20
> --
> Mit freundlichen Gr=C3=BC=C3=9Fen neuroloop GmbH
> i.A. Felix Knorr
> Senior Software Developer
> --------------------------------------
> neuroloop GmbH
> Engesserstr. 4, 79108 Freiburg, Germany
>=20
> Amtsgericht Freiburg HRB 713935
>=20
> Gesch=C3=A4ftsf=C3=BChrer: Dr. Michael Lauk, Dr. Dennis Plachta
>=20
>=20
>=20
> The information contained in this communication is confidential, may be a=
ttorney-client privileged, may constitute inside information, and is intend=
ed only for the use of the addressee. It is the property of the company of =
the sender of this e-mail. Unauthorized use, disclosure, or copying of this=
 communication or any part thereof is strictly prohibited and may be unlawf=
ul. If you have received this communication in error, please notify us imme=
diately by return e-mail and destroy this communication and all copies ther=
eof, including all attachments.
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
> --
> Mit freundlichen Gr=C3=BC=C3=9Fen neuroloop GmbH
> i.A. Felix Knorr
> Senior Software Developer
> --------------------------------------
> neuroloop GmbH
> Engesserstr. 4, 79108 Freiburg, Germany
>=20
> Amtsgericht Freiburg HRB 713935
>=20
> Gesch=C3=A4ftsf=C3=BChrer: Dr. Michael Lauk, Dr. Dennis Plachta
>=20
>=20
>=20
> The information contained in this communication is confidential, may be a=
ttorney-client privileged, may constitute inside information, and is intend=
ed only for the use of the addressee. It is the property of the company of =
the sender of this e-mail. Unauthorized use, disclosure, or copying of this=
 communication or any part thereof is strictly prohibited and may be unlawf=
ul. If you have received this communication in error, please notify us imme=
diately by return e-mail and destroy this communication and all copies ther=
eof, including all attachments.
>=20
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57087): https://urldefense.proofpoint.com/v2/url?u=3D=
https-3A__lists.yoctoproject.org_g_yocto_message_57087&d=3DDwIFaQ&c=3D_sEr5=
x9kUWhuk4_nFwjJtA&r=3DLYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhk=
I_-172IIy1t&m=3DKVxrF11PIYLER0S0KZ5nJTg8Ut1pYlTpWVAglebyRABm3CAb_QrF6YGl4oo=
o6kcf&s=3DnSOPRfnF8sfc7MDMEC7nkzjahHnPJNW1A6IO4PIFAyM&e=3D
> Mute This Topic: https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__l=
ists.yoctoproject.org_mt_91057468_6293953&d=3DDwIFaQ&c=3D_sEr5x9kUWhuk4_nFw=
jJtA&r=3DLYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=
=3DKVxrF11PIYLER0S0KZ5nJTg8Ut1pYlTpWVAglebyRABm3CAb_QrF6YGl4ooo6kcf&s=3DXQJ=
4_qwH1c3zIzyBMtV4txka8PH8jirZIIdqVs1LMYQ&e=3D
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists=
.yoctoproject.org_g_yocto_unsub&d=3DDwIFaQ&c=3D_sEr5x9kUWhuk4_nFwjJtA&r=3DL=
YjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=3DKVxrF11=
PIYLER0S0KZ5nJTg8Ut1pYlTpWVAglebyRABm3CAb_QrF6YGl4ooo6kcf&s=3DGf_Ak0q1f16Vu=
8TA-X4Yd_5xO059CVsSDHjYzWtpe4g&e=3D  [quentin.schulz@theobroma-systems.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20

