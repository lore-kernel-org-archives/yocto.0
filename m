Return-Path: <peter.kjellerstedt@axis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0BC98C77B7F
	for <webhook@archiver.kernel.org>; Sun, 14 May 2023 13:18:26 +0000 (UTC)
Received: from smtp1.axis.com (smtp1.axis.com [195.60.68.17])
 by mx.groups.io with SMTP id smtpd.web11.66255.1684070299485539567
 for <yocto@lists.yoctoproject.org>;
 Sun, 14 May 2023 06:18:20 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@axis.com header.s=axis-central1 header.b=WX3Tx89m;
 spf=pass (domain: axis.com, ip: 195.60.68.17, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1684070299;
  x=1715606299;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=amaH6z/ZFTclBpgUhpQaBf2pPLd61XxmD8ALR55XNak=;
  b=WX3Tx89m1fmUG3nHCfDPB7sc+GPLJ+0/MvmmA36PzhDIAPmYPyUhDKyP
   7Q+VdBw2tLLqdfOnIfOv65K5eR1/ydFnzMR6+iHZE5IeO/WWdbWDns5Q2
   3nrAnMmTsn/IeSLKRyieCp+cSW7eI+wUnj2lRFNoBl/6VD0nQnq0E4+aH
   Yc7oJ3mcEQf8yOam35VzAH1qozyjME3njktlLAbPsGxPDhIN4KAS3RiUe
   9GleGvgKx0WHwjAlVgahLBQzfhKBN++e4tOYQwxqy+69GTGFbSwJ0i6KX
   chHXvJlBDZ4qYEOO7yIJl3AQdDHQmIAD/1dJgFtnGVLiCIpX4HtKfU94p
   w==;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lkl/6Vxi3veGVQRRmX5PpAFUowAP07PJct6Wkk+3eVonFByesQFfr472baDvLIqu4aGEngYJzRG8d1MDZOaWFVVgoMpUT8l7O5Fqr5r/aihD3C2qIEL9soEFLZ++M4FJwP3ToRab9fx9+1mUSGVDqT0ebzwnq9ic35QFCHcGEr+SGrrec76ybwXLaoBTD0BbfQj/JT5n6g+fIiTfoWPvejJd6Pytn6T1BQtT0oqE4yN9z0qBGYFrNnpn+E272Xpq6/tn+haf58z0NLDovwf1mtV3iSBpIMu15/NYCezdxvo29VkqD6fZmefLCFdyY1FVm2SwGm4ZFdXRkyBx5AQcfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=amaH6z/ZFTclBpgUhpQaBf2pPLd61XxmD8ALR55XNak=;
 b=cbeZaZ/HI1dnhy0L7xcrInpLfThgy1cTXuGsUu/vosYL+gO7KabryxWRu1RgpEN4TMzmVQrWfAITPqApyvRiZL+xZxLkAP/TavcCWwM+IwGliJr2uCLeZ7gQcULYFPWF37oSSTCF1Cf+DuQq/L8B/cnYCDEKxjfVVbd8jKZc9znIZrn67gnDdlVpa0cXaobSxPftma67Wqi8YS4HDT4UXpJyh/Q2Du19TIV6zhuCVw8lM7rQCxaMETygNZtcCfmjlXcjXrNbD81IM7BpS7DQw6MDSbT73MK40/Ui4GPhKrg/vGEU69uI9z/+w29UYPmWxYeH93rDLzvK4pfhkB/FQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axis.com; dmarc=pass action=none header.from=axis.com;
 dkim=pass header.d=axis.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=axis365.onmicrosoft.com; s=selector2-axis365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=amaH6z/ZFTclBpgUhpQaBf2pPLd61XxmD8ALR55XNak=;
 b=p3J0E0Qs6moPeGKvDg8/Yv3NfR4ZqYWhYJb3pAAdT2pWutaQaNbHtn/YQ3u9727CrF1v41SoX3WRfKuvFHOx7FSOxFUlU1gc+tPM3IuOHoyL88iYEJh5FbVYdkPAihE/rCX6f9U3RH/9Np19orpSanmHH3rM6rA989nLgjbrclM=
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: "paul.gortmaker@windriver.com" <paul.gortmaker@windriver.com>, "Armin
 Kuster" <akuster808@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [yocto] [meta-security][PATCH 2/4] dm-verity: don't make
 read-only-rootfs sound like a requirement
Thread-Topic: [yocto] [meta-security][PATCH 2/4] dm-verity: don't make
 read-only-rootfs sound like a requirement
Thread-Index: AQHZg1fo+KFZOtQy20Ct446rXNAKPq9ZxPig
Date: Sun, 14 May 2023 13:18:13 +0000
Message-ID: <DB5PR02MB1021376392D6ADA21763A8268EF7B9@DB5PR02MB10213.eurprd02.prod.outlook.com>
References: <20230510150442.2427548-1-paul.gortmaker@windriver.com>
 <20230510150442.2427548-3-paul.gortmaker@windriver.com>
In-Reply-To: <20230510150442.2427548-3-paul.gortmaker@windriver.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axis.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB5PR02MB10213:EE_|PAWPR02MB9149:EE_
x-ms-office365-filtering-correlation-id: 2fb8bbd0-19ec-47d6-0fc1-08db547dac18
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SG8N1s7DmrCbJ1ossW8hel1gF6wYqlUipqinlUoc2ZWqYjOpNJuIgv3Ai66Flbxa7A4N4g5R7B8hnapi1KYb+gtTgF6DS4xMeDAnrGGevRyfkhv61C+vaMVSWAeB8/c5nj+vwSY0vd5cJXPxXMndnUS0RbJJHrApeXLaXqDvtPB3o6gKYIuT/jikOtnEtwQpAxVUJ0RFXYdpatjz/kanbwl31emQU11TAR/JStzw6eWOYP/kuNdAWdrMMjUK/YKRpcqddzxvsVUvhgPHSpd5C0H23dog1tga7BDfMPqQgJ7Ii+LDKAkmqjiJziY68RVaAqhz00CScp/irQjoK9umYtIcMt5Bw6RHv5dtv7i6khpeQvy0VXteV5zJmMHkLexPoWvkc+TaW5gwljin5j0lQcrraUGt57ss+0WMJdS6spXIr5vhIaJlIVV5HKkSeZLLDkVekd+X2ouP1ePHfRo3MVCk4rUPnAYflny0yFa9kvBqL4PJCoigGO73cm98pCuu7gkpjMdP2Vg7K7xsED6bfMpVfy+kFccZL/PhdxSSs2vSuh7M/cQetG7Iy0skf40RwDt8pCxoRMPzLpRopiFF313/X2QONeQRy+Sqc2rIpX5hNhoK+kTtqaXRLzQ+tTzZ
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB5PR02MB10213.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(396003)(376002)(366004)(39850400004)(136003)(451199021)(110136005)(478600001)(66556008)(66476007)(66446008)(64756008)(4326008)(66946007)(76116006)(71200400001)(7696005)(316002)(2906002)(55016003)(8936002)(8676002)(41300700001)(44832011)(15650500001)(5660300002)(26005)(52536014)(122000001)(33656002)(86362001)(38100700002)(38070700005)(83380400001)(186003)(53546011)(9686003)(6506007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?x2UTTAk4AtWd/v+PR1HzyqKZOLRKkb3UcJ3C3/skLL05aYK2hRG3dh40YtHo?=
 =?us-ascii?Q?CKH9DqFYDo/StMA25ULwUq770TtPukREeJsMntItfmV4m6AX97wsvJDtq1vs?=
 =?us-ascii?Q?FJ/lA3G4MRehKcROfb64EfRjQAkMxq+sJ4TtRkl9n6ajjuqGiROEKZwBNLvx?=
 =?us-ascii?Q?xzgZXz0DleuRH35alKqBV/Y3VFM8QD9OqeYcuMQ7kRafKvIIQPLDQNJG/Wb+?=
 =?us-ascii?Q?JRcnLp6i8jll7C+Cef7NYMApVZY+RvzxhNwxqmlSmTH9/KXKt1Fpm9vSCNcE?=
 =?us-ascii?Q?N4ThaapjNi3/FFT3IoMYNqoY21gjPPP4fKC7fRDyuO3QHj24qCkp5XXiNuzf?=
 =?us-ascii?Q?O9uKMaoYrU1qL7XmuMt4XQxGe3icVKZtXrLyHlDXcq5fweNeZG+ybXK8bz/h?=
 =?us-ascii?Q?ONucdCennnDNZ1vS7Txq57cVQUDjhjg6NFI7RaEEi8nB1ymJP5Ex852cr2Nl?=
 =?us-ascii?Q?xjLmE2ymh7y5j4YPIYaML91w9/YsUahromPvz+URmCyh1deWZ6c7Cx9hm9cv?=
 =?us-ascii?Q?Z8FSwoVxI96rMHaS4Kc3cfPDv1dHL8/eCw+qR3z0LAXwFW9LHC7bt0sClaqN?=
 =?us-ascii?Q?QFIffccV0DFY2tuJWy1gQBrSPu4/YU8yCO0YYPWd8NuXGtZLXUaD2AeYG1c+?=
 =?us-ascii?Q?T7JgMceQwMQbLsJsxZ7Looc2yEZnQav7CJ9ETzwMQq2fB0qAu9GQ9Xu9BVpX?=
 =?us-ascii?Q?IuENkGl+255O4bORFoQmuaurpRRAheYrnOh/0t2nZlvIxQrCnnB9lmsy3fji?=
 =?us-ascii?Q?vJs3wQuABkl9DoD7fqgzY/EAX6xz9EmoKY7yEDSahzWgn7WE5hHAYjCafXOQ?=
 =?us-ascii?Q?R3dhkAXyS/Nod/S82/hsnpmghZo04aOO82PO+OybVKhaKF4Vd5wNF8P8fTv1?=
 =?us-ascii?Q?bYHXTJHxtgDEgZbF5Fokuo3rlbhbaxKGxb8nMuyXc9kcK/HrMr7I3PFB/RKL?=
 =?us-ascii?Q?tyMY0Ky2fmBi4C+x6JBj2tjUgoyaZdS529Dt2U2/5ZbDp8q77sFd84x3HgAV?=
 =?us-ascii?Q?aMIGbXZLeV1Ym4dNLm47ThLQRohpAecxVuLhT0xmfq3osEflcm7UOehTqyRR?=
 =?us-ascii?Q?XuWj9igyXnspUdPEMuhkrdtdjGHaCxIwDF3ZxSOZCGKCJllW3eSTlKkOFZQp?=
 =?us-ascii?Q?YuvbfgbB35tmsQDW2U5dHfiR/kI21A2zJ+ruMlgAB7DoJW2XWc4EdM4VQjHb?=
 =?us-ascii?Q?qGmiaQOMT3VSo36xwRrfK2YUkKvOfAjSVfyFD+bLHL4zfu8V5tyfufOGJY/g?=
 =?us-ascii?Q?2BbHwyp/LjWyDGytqyEf3B/T0ImoY/x+VrXP6TkWPmQW0oXoaQYEJ8Sgl9kv?=
 =?us-ascii?Q?/xum45g6VX8n4hDNrga3l5HNLweS/RTTtwJEqTr8zXRapwtWFrqIjXUS0zP3?=
 =?us-ascii?Q?KIT8CekVU4XLnBkr/BD5nJzc3iNCVeNGo0sW+A/yY7mhw4Fu8yO00bfYGYmj?=
 =?us-ascii?Q?7GE/BW2DYSlmYHqk4BgYycGbunmKieBV8Si4vw0eMTp+Rm/84N77OGBwjqJv?=
 =?us-ascii?Q?74Gj21D8NnS2QA2wmGdKL3CQpv6S6f3mPfN6tdKmuCcM6o0PJ1M+CDsmKWZS?=
 =?us-ascii?Q?3oFzKJfylNmS/apyFqY=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB5PR02MB10213.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fb8bbd0-19ec-47d6-0fc1-08db547dac18
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2023 13:18:13.7582
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 78703d3c-b907-432f-b066-88f7af9ca3af
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xVFJT5Fwrsm0NLRn0KQsZfDZdPj1H4lG3gWoluaRxK502NjJAJ3Ts4L1UIRx7Ct6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR02MB9149
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 14 May 2023 13:18:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60010

> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> Behalf Of Paul Gortmaker via lists.yoctoproject.org
> Sent: den 10 maj 2023 17:05
> To: Armin Kuster <akuster808@gmail.com>
> Cc: yocto@lists.yoctoproject.org
> Subject: [yocto] [meta-security][PATCH 2/4] dm-verity: don't make read-
> only-rootfs sound like a requirement
>=20
> From: Paul Gortmaker <paul.gortmaker@windriver.com>
>=20
> Adding to your local.conf right out of the gate:
>=20
>   EXTRA_IMAGE_FEATURES =3D "read-only-rootfs"
>=20
> while you are trying to sort out other things can be just another
> complication to an already steep learning curve.
>=20
> For example, I found simply enabling this with systemd caused:
>=20
>   systemd[1]: Failed to fork off sandboxing environment for executing
> generators: Protocol error
>   [!!!!!!] Failed to start up manager.
>   systemd[1]: Freezing execution.
>=20
> While I'd like to get to the root cause of that, it doesn't change that
> things boot fine w/o adding to EXTRA_IMAGE_FEATURES, even though the
> rootfs is still read-only courtesy of dm-verity.

The error you are seeing above is due to a bug in systemd. It is fixed=20
in version 253.4 (commit 5ed087fa46dc04ee92da12635777b2b622183a5d).

//Peter


