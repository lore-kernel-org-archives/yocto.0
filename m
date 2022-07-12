Return-Path: <martin.weber@br-automation.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1DBA6C43334
	for <webhook@archiver.kernel.org>; Tue, 12 Jul 2022 14:49:10 +0000 (UTC)
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
 (EUR02-AM5-obe.outbound.protection.outlook.com [40.107.0.55])
 by mx.groups.io with SMTP id smtpd.web11.9918.1657637344522343807
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Jul 2022 07:49:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@br-automation.com header.s=selector1 header.b=ZhNS6II1;
 spf=pass (domain: br-automation.com, ip: 40.107.0.55,
 mailfrom: martin.weber@br-automation.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ykcn4Z6cqhkgojej08f/xSHdwRFsio6Bck+5nz59nAQIHt8DDSd0lI31g+WWiIsNGIqyW1bSaRPgslw+w1R6OFoU1/E4t39o35Muds62RaXKkGn4BkH0Bkm19nQDkvjAf0+uCIm/5dEpr+AbtMSMq4PBp2lY1AJlXwRaSEwDwypg8JBfdXmmCY1MUpNm2kRU0xqFNW7cTa8A3CEKKMA+6CqtRMMY5vXiP0kqerWubdepFXD+EDFkHpSTu/DMmz6Gf3lZuzL3q+ekcrgcaGAEUbHSsQ+RszZNTjEeDAKmMT5uXRk9BX+vWpstQ6mynHOMezHPrbrmS+2K5MiO2kFEAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BI/F3sunAXQ7KiFgXrW9TSeB7E5nFFEpirj/tCjuTc8=;
 b=LtGjJ8ypadLtZZdvgcWnoJiaLnLI+NeCtuBozJ8j5F/ijoSwglUwSlpe0EW8h9xQm302hZF/7HqRl8UiaA389SsUrmVsvvWv+usispumuxMubRPNO+UgSrOiDCCWKUM7u+aAI42P/rT+YHGM6XGbkMaCEUSOs29Cq9I/K6BQ/RkF3YEAdAPmYhmCC2Ob8ucdhAOVLvDF+QbVSMAlne99d12voQ3RdvKvi7G2HBTTjbyDqtXGCzZHdPgSg3Dnx3M8eLVqLVwl7jEAHdtzYWeks1ApRQtDR074j9UPKvzeLuSZh6B/6MlCUxZNkoSdM0D7wV4nMJtxE6DlvS9a7VRPzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=br-automation.com; dmarc=pass action=none
 header.from=br-automation.com; dkim=pass header.d=br-automation.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=br-automation.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BI/F3sunAXQ7KiFgXrW9TSeB7E5nFFEpirj/tCjuTc8=;
 b=ZhNS6II1hTgphCtcZNfbZlQxiVY1brgExiDKj8eYBcONsQYPrADHvTdyK83wtgBNiuaXUWPp22vwtVcYwMt47QgScUhjt82/MAhZipRnhh1Tl4pcnSzqKQTunr9yD9SYeFBBDnh7LE52GrzwonD3fKEn/8bxs/Bh3yIy3nMA2uAZWanW3ihyEXTLFkFHYYZcnNrq7ZCMYw4UBmi5CB1LeKqUpYYAZtwp21VYwmviMRtsIW8+gGPFOftE7nE71JxQYpMzOJwUq/DDZlixXgTKnj7Yb9GOf6fJpTz3H9bBP+SlpK5hTMCBbjOD1sVfNbhhzzm/QFig+sI3FnL5rhtqJg==
Received: from VI1PR0602MB3549.eurprd06.prod.outlook.com
 (2603:10a6:803:10::24) by VI1PR0601MB2557.eurprd06.prod.outlook.com
 (2603:10a6:800:86::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.25; Tue, 12 Jul
 2022 14:49:01 +0000
Received: from VI1PR0602MB3549.eurprd06.prod.outlook.com
 ([fe80::2cd0:b66:5b16:d84d]) by VI1PR0602MB3549.eurprd06.prod.outlook.com
 ([fe80::2cd0:b66:5b16:d84d%5]) with mapi id 15.20.5417.023; Tue, 12 Jul 2022
 14:49:01 +0000
From: Martin Weber <martin.weber@br-automation.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: AW: [yocto] Switching between multiple DISTROs without
 "contamination"
Thread-Topic: [yocto] Switching between multiple DISTROs without
 "contamination"
Thread-Index: AQHYlfSSzXm/QI/DOEu4rdTiVaXOrq16zywA
Date: Tue, 12 Jul 2022 14:49:01 +0000
Message-ID: 
 <VI1PR0602MB3549AD424D5EDF2C22A7E7A6D3869@VI1PR0602MB3549.eurprd06.prod.outlook.com>
References: <6b3d2b0146aeaf2c25e0440e7dd6aa0c17cb4a36.camel@delisys.ch>
In-Reply-To: <6b3d2b0146aeaf2c25e0440e7dd6aa0c17cb4a36.camel@delisys.ch>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=br-automation.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 78f8088e-fafa-4e34-5251-08da6415a8ba
x-ms-traffictypediagnostic: VI1PR0601MB2557:EE_
x-abb-o365-outbound: ABBOUTBOUND1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 rjG2t9wXWzPlhELRaIBSMPErdvV9KGMw0tcfHF3mStrGsHvLNDPvxkeCPdaOdY2h+Z5ithm8DlbAlsS8hILA16ew6VMimTyHywtfYDF+crRaZrCQlF4dz4dgfNAP11WkeW9uQPrh/H7yQVNYQzVqD5PhUzE43GkJ31kpEfOG0JSkMf59On2dxLox2jCuI2Uf6BRAisUpOcrhOYMuFDRKdpVqUi3LujdVuKvqPQP1XLhWZrutpNoqPeTCkWyzssYkbH2ctEJdRboi4Y8EBYtpOzs8QgQk8jT8pRTL+55x1Q8W6ABupDP78BeSLpZgDCgHhlE7IFHOKwoeA21/HgMzruqc2hd2mI8MyWFz3LyfXeaU49tiwBSgiiCkDRlZTqnBQyY8KVXbWOWXQcjbsxaXeFFccN9qXMNXnRw9yw516n41wWLnkn+rzIs9vlDexDZjuy+Rfgy7cUcJZTJEWYNg0/81iD5NagPpC3EuDndZboPqoqGTe4fqi+3eafB0MWNBF850FMrjaygNKJqtMdFNsCU+9UCrC8JvJlu9vYeJFkLBbmh2BuhcYbWvD/2Qesz4P6Wfb27jzB3R3ptWNXnRZ7aq9oewuaK7B8Ir04ExRgU0kag5oLkjQhwkW3k7F/UM138Kl2zE9bpMwG5nfH2TQ1pxdwwAOaiFpI8fEL6ZMuqql4jE5C+uR+6rga1/F1TlOELDTKQUEVEH131E4u+ET0o5MXxHT/9XAqC7DwPCo39h9YRlSkjcykEd+v4qqp0LgXmRKOAaLiKNp5daoyQq9Ia1MzO1UOie5QI3ouuJBVWpJt1fF/AUy9XP8IrQX3l97NzvRWkMc6KfF/DBo06PWTFpdVhLLWtEJbPUHoLFHlU=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0602MB3549.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(39860400002)(366004)(376002)(396003)(136003)(2906002)(41300700001)(478600001)(966005)(38070700005)(76116006)(52536014)(83380400001)(8936002)(33656002)(5660300002)(55016003)(44832011)(38100700002)(122000001)(66574015)(66446008)(64756008)(66556008)(8676002)(316002)(26005)(7696005)(6916009)(71200400001)(15974865002)(45080400002)(9686003)(86362001)(6506007)(82960400001)(66946007)(186003)(66476007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?V38b0KTUh6izTdu+TYCM2Q7Xidtx2WHKAAi5mtCR37lsgbu//sJgxAOClt?=
 =?iso-8859-1?Q?FfDn/9BsdeONoYSDCrcOHYoCFtGd7tYGC212ZLh7olifqxyjPb08yNsoxh?=
 =?iso-8859-1?Q?pEDbl7m/W48o0dhDWlcDIEevmFHE0jcerwDuQFQJso738gZ4zCmKAyBDgj?=
 =?iso-8859-1?Q?wjRQf6W44gtIsGLrK0VbENJydeAnFoGoUpfs0wX86Hujz5TUyKwLAhXETG?=
 =?iso-8859-1?Q?pjXNm+j6znHbw8jEXpWEMJwtYrq7J5El257upbiQTRnJygEnTGdW/Zuh2t?=
 =?iso-8859-1?Q?aUC6+LkfIqwLNB+gSnxlYwPVA//8s2lpMI6gmaCRElXUrn7TnHL/n3N/gw?=
 =?iso-8859-1?Q?bXm2xPDDC7rCarTj5T6yXrp6WBBGntlpTxI0YdJow4yvi2Jzv4+JsAFU2W?=
 =?iso-8859-1?Q?WfekMmFxjbcmqgqf+IG9h4elqQLkfQDXeos3QX0jg4uDp8c0Q9uhbnYmHE?=
 =?iso-8859-1?Q?My8TMPFgQ2Bra7p+iQ5W9IeO65dvIr3OY/2JTgd8kS0+K7AC1VDdP7ja0r?=
 =?iso-8859-1?Q?pENoUBjXRB8Men/lN7dN/Bdmyhe5IJNbIjS0PJky/Q6KF2sJx9VM4cqy+7?=
 =?iso-8859-1?Q?cRclyoFUudKFLx0F/7b9f45mUBN293UmTqRh2Vu28W4AMTv6upqqwpAn/0?=
 =?iso-8859-1?Q?hUX5EtXOUPWvwFOVG3JGCxuvs+3V7yLRhDtdPUrL14pTFxYZCR0DYkrFWi?=
 =?iso-8859-1?Q?ZHOV+h9E/ytU3f6na/sjY/a7qMsAh4GKrxtCgdliv2frgT1nItMPpiXiKf?=
 =?iso-8859-1?Q?6qwoNPLyGUmMSanof1AreQaZwcyqKZ9Kqi43bbBqYOKjNVqgDfaV++AaAh?=
 =?iso-8859-1?Q?D81ntWzN9ntPgTmv/Kh64LEpPPwPI3dxJxDQuzzAx0u33Ly3oWVyT4+Ji4?=
 =?iso-8859-1?Q?QiSf8YV7k+DKXU4pCQwi0GzsAw0CUTWWnZlgLY7EghMfN/lWbwFmkfIo3s?=
 =?iso-8859-1?Q?c/8jImNb6q1RQI7JvyDZckwpmi4/bN3vPJzEliTp4RWPlxwpKZQy8Mg5xS?=
 =?iso-8859-1?Q?Z0PProfH4TJs+TFhn2Y/u6Ics/ywWOyS1PYCH/3yL7rYnIgy8dlJ5wI93T?=
 =?iso-8859-1?Q?FeH8inNWlWrnyBGs2Y/cZA5tzbvQwR5KYbVBPZ0B1+4rhkCKkXvL6oeOst?=
 =?iso-8859-1?Q?DA+/fvaJ7BYOlQxRMR6Ei+12XH8fVhsSZupOZrvXOdbMcw4C8Bgd/p6Oc3?=
 =?iso-8859-1?Q?8LM2TmHTsiCqrHLzE6Drbq9c9ASiS+HDVqV6BXsSMCukFKiIxLMRjGaR9g?=
 =?iso-8859-1?Q?goCq5aCNpLt4pMJaZB0m/vFpfkNv4j6eGXo6TGsDwYh2J6B+57hZrcntBR?=
 =?iso-8859-1?Q?PeBJWBokCxhM3Ns+mPVrfsnIyIf/hwNW9nEtwR0jGKh/udRhPrIVxtc7dR?=
 =?iso-8859-1?Q?ElwNG0tPAtPR9y+FAl2qu+LmT+7E0LxEynFj7zBOmIdDJHlPKqf482hKOW?=
 =?iso-8859-1?Q?/UkZNTdYARyEn9d6xPR90hjCU2v+943rGoF/sy6DnWNmolIzexrbFwZHii?=
 =?iso-8859-1?Q?Y3uEM8F4Gb3AkYButrFdnEDUzHPrPv8XBBkUSeDiERZPr2myMs/ro6QaE1?=
 =?iso-8859-1?Q?rPNf0ybXY/L4EZIoa0o0iQjIhZvFEtPVPABh6ruMV298qjsHxrUtFdeK9V?=
 =?iso-8859-1?Q?Ix8KrcRNfzYMq05l5mm4q2VgurD6oPmk7p4Svoz3zhLwCA1ObbE3lSOw?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: br-automation.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: 
 VI1PR0602MB3549.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 78f8088e-fafa-4e34-5251-08da6415a8ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jul 2022 14:49:01.3751
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 372ee9e0-9ce0-4033-a64a-c07073a91ecd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 AhbbCCTRa+91mOMuOU22FewsZ8usCX6XjKuvzsgbdFq9+xiPQ8IyyPbU7ezlIM3xmQxtWIkhNRibgOZ9iV3BfJOf2HCW3S2QAMyi3ensHPU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0601MB2557
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Jul 2022 14:49:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57514

Hi Nicolas,

I stumbled over this issue as well. Think of it this way, the package gets =
built in one environment and then it's built. Now ask to build it in anothe=
r environment -- but it's built already, why do It again? Yes, in theory it=
 would contain a different set of files / services / ... but it doesn't dif=
ferentiate, because it's package A in both environments, not package A and =
package B. So in a sense, even though your (and my) expectations differed, =
I believe this works as intended.

I use to solve this issue by creating an A.inc file containing the shared s=
tuff, a A.bb recipe building for the "default" environment, and A-XX.bb rec=
pies for building the "XX" environment(s). Your A-XX package will be distin=
ct from A. Now in your image setup, you can add A-XX to the XX sort of imag=
e. But keep in mind that your image is also just another recipe in the end.=
 I believe building both in the same build dir with different distros again=
 asks for surprises.=20

So, note that sharing the build dir still isn't a good idea. Richard said t=
his is the use-case for the shared sstate so that multiple environments can=
 share build results quickly and efficiently, and thus you wouldn't practic=
ally want a shared build dir (once you've setup sstate sharing), because yo=
u still get the benefits of not rebuilding unchanged packages, but don't st=
ep on your toes if you want to be odd one day and even another.

Best regards,

Martin Weber
Research & Development - Embedded Software Engineer

B&R Industrial Automation GmbH, B&R Stra=DFe 1, 5142 Eggelsberg, Austria, w=
ww.br-automation.com
Phone +43 7748 6586 - 0

-----Urspr=FCngliche Nachricht-----
Von: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> Im Auftrag=
 von Nicolas Jeker via lists.yoctoproject.org
Gesendet: Dienstag, 12. Juli 2022 15:38
An: yocto@lists.yoctoproject.org
Betreff: [yocto] Switching between multiple DISTROs without "contamination"

BeSecure!       This email comes from outside of ABB. Make sure you verify =
the sender before clicking any links or downloading/opening attachments.
If this email looks suspicious, report it by clicking 'Report Phishing' but=
ton in Outlook or raising a ticket on MyIS.


Hi all,

I'm currently using an additional layer and image to differentiate
between a release and development build (enabling NFS, SSH, root login,
etc.). To create a development build, I manually add the layer to
bblayers.conf. This works quite well, but feels a bit clumsy to
integrate into a CI/CD pipeline.

Per these past discussions here [1][2], I'm now trying to migrate to
multiple DISTROs, something like "mydistro" and "mydistro-dev".

While migrating some of the changes, I discovered that I run into
caching(?) issues. I have a recipe for an internal application and want
to include additional systemd service files in the development image.

What I did was this:

Added "application-dbg.service" to recipes-internal/application/files

Adapted application.bb recipe:

SRC_URI:append:mydistro-dev =3D " file://application-dbg.service"

do_install {
    # ...snip...
    # systemd service
    install -d ${D}${systemd_system_unitdir}
    install -m 0644 ${WORKDIR}/application.service
${D}${systemd_system_unitdir}
}

do_install:append:mydistro-dev() {
    # debug systemd services
    install -d ${D}${systemd_system_unitdir}
    install -m 0644 ${WORKDIR}/application-dbg.service
${D}${systemd_system_unitdir}
}


When I run "DISTRO=3Dmydistro-dev bitbake application" followed by
"DISTRO=3Dmydistro bitbake application", the debug service file is still
present in the package. This seems to be caused by the "image"
directory in the recipe WORKDIR not being cleaned between subsequent
do_install runs. Is this expected behaviour? What's the best solution?

Kind regards,
Nicolas

[1]:
https://eur03.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flore.ke=
rnel.org%2Fyocto%2FCAH9dsRiArf_9GgQS4hCg5%3DJ_Jk6cd3eiGaOiQd788%2BiSLTuU%2B=
g%40mail.gmail.com%2F&amp;data=3D05%7C01%7Cmartin.weber%40br-automation.com=
%7Cb4c2ffc9851847b6d7c208da640bb064%7C372ee9e09ce04033a64ac07073a91ecd%7C0%=
7C0%7C637932298663056785%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIj=
oiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3DSTA1V1=
w3ExlYrXkoYb7DDtkAWlkAeKhtFAkjjkUlsoQ%3D&amp;reserved=3D0
[2]:
https://eur03.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flore.ke=
rnel.org%2Fyocto%2FVI1PR0602MB3549F83AC93A53785DE48677D3FD9%40VI1PR0602MB35=
49.eurprd06.prod.outlook.com%2F&amp;data=3D05%7C01%7Cmartin.weber%40br-auto=
mation.com%7Cb4c2ffc9851847b6d7c208da640bb064%7C372ee9e09ce04033a64ac07073a=
91ecd%7C0%7C0%7C637932298663056785%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAw=
MDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdat=
a=3DdT4DkNsm0f0L%2BrCgF7f1Q8XBAN1j2bLYZ0%2FkbKr6nuo%3D&amp;reserved=3D0

