Return-Path: <peter.marko@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5979C77B73
	for <webhook@archiver.kernel.org>; Mon,  5 Jun 2023 08:32:01 +0000 (UTC)
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (EUR03-AM7-obe.outbound.protection.outlook.com [40.107.105.88])
 by mx.groups.io with SMTP id smtpd.web10.2606.1685953919051643639
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Jun 2023 01:31:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=Q9gLSS+i;
 spf=pass (domain: siemens.com, ip: 40.107.105.88, mailfrom: peter.marko@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GUZ38NODM5cnxXpcVmppIKqNFTnclRUQd0TNN1L91ECPhOUY+Wy1kdpHc5R5zUtInqsySID6yYok+vUg/B6chc6v5EJERIWTP3EyKx+zbyBT6P21E2r3mSOb1IRbAjbDNDUvJwfgcSY8b4Q3iW3E4reS5Q3uNrMd+u6KXqiEgkrzrRbYeXqSNun1VanCNischWjFJKeBaP2X8qTDTo+u5ho0leeP/KZNeg/6HTztBarCQ1rTuQ9sse4kBHDm0dqLALOyL+JPTfnT+NxukZxxXEFx82slb78sSlGkMS/zbyMFVakxAT8iUFkVvLdn62pncFloblV4rqV4CVIvxxLZeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q4YzXzk2V2BuURO0bCfm8jYthaYA3F9J/j62Wyv+vPY=;
 b=oNxZbAHCa0fSEGQxebCihUAg391VLNN/+10Ytv0Mc7YidrbBIg7NYgTys4QtReZsjrGY4eQMpMGjZceQhfh9+X06dEMppsUXFXBFDJuyvvSg/eRFeLw/WvcdZc9YLd+ETJ3yZsw7RzaSKZSWe5QwzV7kDZ87pJ6OCL4NFaf5oOBm+jFG0I4OxNKvcwQes4DXI3xzgNpeLMDOt9fOCmMQFIpXlu2f78CPILT+JWm8Uzq/o5SegyY7f5G9IjBu7RoR9W6YBEOCSFD8k+sANTwT54p70qhmim9b10ZvmqBGcGu066hcfIi3tizxDiI0TlPtfP6VJaVJ5A8WTOg3lHhfTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q4YzXzk2V2BuURO0bCfm8jYthaYA3F9J/j62Wyv+vPY=;
 b=Q9gLSS+ipm00aYjRUVonq4wOYFdbC2oTOVDCtUrAG0g2LAp3IVsT7rtG0DMlpBhWPalbF4MpqKa9/rZci3PeYVsjhdMnQ9777crOHHltPoAuEdC735YSlBimUSG6Y5AlNLI9Mz8F2l0Fj8amsD+fVqko/qxNwtfJup+EXpcUMha+2dCFoGsSKxftzfJTHSpgv0Es0UDpgjNbF/x1UtXxd4OBSNuaeUsmVq5Zft+D3wbAJyYlitsVjjUl+bstPQLum68dNe0tVrxZ/atHm9zDpedACZfPZVP9QjBr7eVGJqw2Z7mwtldFi6cgKHlAcBkSGDS08pEo3IstfBUPaTAWfA==
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:479::20)
 by PAXPR10MB7926.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:24c::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Mon, 5 Jun
 2023 08:31:55 +0000
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::f993:cd9f:b0f4:2508]) by AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::f993:cd9f:b0f4:2508%7]) with mapi id 15.20.6455.030; Mon, 5 Jun 2023
 08:31:55 +0000
From: "Marko, Peter" <Peter.Marko@siemens.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: kirkstone meta-security branch
Thread-Topic: kirkstone meta-security branch
Thread-Index: AdmXhlegMSQBjxbgRgOAI8rsGn+ntA==
Date: Mon, 5 Jun 2023 08:31:55 +0000
Message-ID: 
 <AS1PR10MB5697AC08EDAB59C195FE42A6FD4DA@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2023-06-05T08:31:54Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=32a08199-b026-45ce-8d00-1be238a62dd9;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0
document_confidentiality: Restricted
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5697:EE_|PAXPR10MB7926:EE_
x-ms-office365-filtering-correlation-id: 919a9fb7-fb82-4341-14e7-08db659f5253
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Qqgq65MZBVRq4PV57EiM7sR4u7g9c8sRF3brIpgW8ZGrjTPNA7mMWIbV2PIKi8BU1uMe8si0j7bQaDz5qQuOXYgiumJcYaGy0UNtsqEFoe+D2R/8HQH8EtLuQV4iU04YKjjNTCZjQWkTeYojTGDwiPlgIRC3JJyugcQ274anZvxvd+m/xj3iEWRy5B+B/dVqqinyQ0bHzfXUSEcSTJYV4Hh2y9cnMwvF5j5DIC1qARytKh9mGgg+nDazVqzk+hyW9SzTHvK3YEVdHVYrgwcgAdoyu2zHXag04S+pv9Dhi6Yzg/kmwDEicBS9chTTy3U9eeRA4WEyVH7eFPF/DimfTrmG3RksM/ZYgnf+EhdT7bErRbulOckkBScnKnKzGw6+3cq0Ntro67zNE/ohPslN30yezkn1v8b4tJnnJeNXIGrLrB4SOVK6qLu6fVBlEDa/Eerjx/rzPy1iOl0azETIJFwHjZ85JV9oOIweH1iIe/SHYypbz+F5D7MY1k9ycjTCou04SeLx7RbL5/HCgObv/90MOQi+Ueo3Nd2xw/pYEWnNCBn23/Ctt5eYaFR9KHMNClIVYqxHeJfDTEVh9yZ+q5lxy8iJ/v7500/8ePZrZOE=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(39860400002)(136003)(346002)(376002)(396003)(451199021)(71200400001)(3480700007)(7696005)(82960400001)(2906002)(4744005)(66946007)(66556008)(66476007)(66446008)(64756008)(122000001)(76116006)(38100700002)(38070700005)(8936002)(5660300002)(52536014)(86362001)(8676002)(41300700001)(15650500001)(6916009)(33656002)(316002)(55016003)(478600001)(966005)(55236004)(26005)(6506007)(9686003)(186003)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?1IpVAlzvSwZzgWoFneL1N5jbbW3GSijbQr6qbMLBz8iojovRwY5KbFTs0ts4?=
 =?us-ascii?Q?wo7s5myMmvxUTXyFbaw4G9Z1TmccoijIyqrE9plcArlfqZS4FM5s7wJQCB3F?=
 =?us-ascii?Q?4D3yiGz4we6pKG6lh8da6P45k5CyPiN8hFIZTjLwF8nqzXhPVXhGn/UnjGkn?=
 =?us-ascii?Q?dQrK4OpF8i8E6w6f6mzlulQLvMnUQQDyowOSe+DBvcyIFtKecMb75HWRU4se?=
 =?us-ascii?Q?wX8L6EA5zsmjRiigp1NKWNvH3NzpFBnX22VF5c1rrixXW+wCXQUnqIsju8pp?=
 =?us-ascii?Q?sGajq7gP898GtUunBBG27ojQjKdd7GjK1yVyG4Wuq8GUw2DBziPwPxExTmYQ?=
 =?us-ascii?Q?nlZ7utiKz32n66DrnTj6Hm9+go/YjzAA3gRkx8zV2oIMs7EgjHnYLQtGgIAj?=
 =?us-ascii?Q?iieopyx+L+xGfVYra0uy9B+CAABThLgLsBUL5VONmvjSSIOyE/N314bOSLk+?=
 =?us-ascii?Q?4T80Al4fgz6TmTLjITt/X73X/czB+SklTliTeOX8tLJwWkqL+JGNj2Oiykt1?=
 =?us-ascii?Q?0p7OfP4foT2wp3+vjbHarsz6JgmT0qKmd9DeISW9DUAyODZ2+U5PpZ1bL05D?=
 =?us-ascii?Q?FcTFGbEx6jsZMg8WXFv+MorLK6I0PzIgfLQxmyTutttjowoLC0uFhCy7jRSp?=
 =?us-ascii?Q?aAaiyr03WTZihk2X5cRID2aeku4XM6ruMSOcekW1uXgJSl8NxxF5D8oATUx3?=
 =?us-ascii?Q?uyp/TPN7ItcfZdM1JaIIcu9qpyQRyhu+lczpwMpBUX8QPKgBno+gh359qj3W?=
 =?us-ascii?Q?WzXepsu5skmtS+ImLeCr/fw/0YCiq81fZpMDJ/WIsbalgR+9iun9wH26BHmQ?=
 =?us-ascii?Q?TcPYKAwTjR/EMVtP8wFR3y5/dWwS3g/5OudxB+S0bK17IKPaec3VA+1Kx3QA?=
 =?us-ascii?Q?sXJplsHalo8YMGREuJ4CQNEsNbm5876Bw7sHz9eB08gh/nySFPGte04Qh3lo?=
 =?us-ascii?Q?yeQl1BYidWfyc7CAWeFFLz4g65WHkQ6OhLmBxPJazYoceCaH+EL+qcODBosg?=
 =?us-ascii?Q?qYxRxSjgdCbv6yVn939eY8Pb5hRiHxn+kj13W6IIg7MQqg+iW1gdlkV8hRKx?=
 =?us-ascii?Q?/8A070Y8xS3D3je/DnhVxoSX7+H1kw61m7SmY//LNctCHWMZJJzrqPRQMuhL?=
 =?us-ascii?Q?VZcJzLUfQgQ0tw1bKSNChgQdK1igxPYhtpoKCbbK6ceOL6Ujr4IFJmziSNOT?=
 =?us-ascii?Q?3XtLXlLQm1aOfvBLPcYsfP0w8hw5iMw5M3CaoLLhKzfG+9vu7yfhC1cmnqyH?=
 =?us-ascii?Q?1lUFLa6aqEeoQca6Q6vUbg8XuWGr8cs9sZFIJS1Yx5xZfx0bg0HSTK1n9/eb?=
 =?us-ascii?Q?n58oSYa8nQklC/ZGjsN3Bo9YHctRxCNTsVcAJAzroy2PVT5N6hlznqpM9TEU?=
 =?us-ascii?Q?AlETSE3Khtiws+VcTs0fHqjlSJsss1AQFqQf7k4oppmNHP4nmKXRrmqW3SNh?=
 =?us-ascii?Q?KKAiAhYe6GEkgv024dQgjk5gn1BAaUOTdRwfLIYiQPq1fg5yPLQmUioI1szd?=
 =?us-ascii?Q?KM/q1/S62zsxXcT6rZVMpCo5suROG5dXkGc/N6B7jq9M2hl4UgkJUrrZMM7q?=
 =?us-ascii?Q?Ax9fnjCw6Ts5ORWSTN0nuyM9pzNaPAICdRkuq3vK?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 919a9fb7-fb82-4341-14e7-08db659f5253
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2023 08:31:55.7892
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RBYmF8YoWRxRl40DT+N8DB8CeLpwpibuwfR3vhYJ+XI31igrrnc+mg1eCXk/6d57e4VQ8Duqp+o4/6cAAkLIIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR10MB7926
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 05 Jun 2023 08:32:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60177

Hello maintainers,

I'd be interested to know if meta-security repository for kirkstone is stil=
l maintained.
Looking at commit history, there are only two commits since July 2022 (almo=
st a year).

The mailing lists has several contributions meanwhile (list what I could fi=
nd from 2023):
- tpm2-tss: upgrade to 3.2.2 to fix CVE-2023-22745   <- this one from me I'=
d be interested to be picked
- apparmor: fix ownership issues
- libmhash: add multilib header
- dm-verity-img.bbclass: add squashfs images
- Add EROFS support to dm-verity-img class

Are we submitting these wrongly?
I have found this message suggesting that this could be the case: https://l=
ists.yoctoproject.org/g/yocto/message/59432
Maybe just adding [meta-security][kirkstone][PATCH] does not seem to be eno=
ugh and we need to add sublayer like [meta-security][meta-tpm][kirkstone][P=
ATCH]?
Please advise as the README suggest that it's not needed...

Thanks,
  Peter

