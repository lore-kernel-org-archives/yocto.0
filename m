Return-Path: <d.antliff@unsw.edu.au>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3DB2DC4332F
	for <webhook@archiver.kernel.org>; Wed, 14 Dec 2022 11:08:44 +0000 (UTC)
Received: from AUS01-SY4-obe.outbound.protection.outlook.com (AUS01-SY4-obe.outbound.protection.outlook.com [40.107.107.96])
 by mx.groups.io with SMTP id smtpd.web11.100489.1671016122935221265
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Dec 2022 03:08:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@unsw.edu.au header.s=selector1 header.b=QIhyAM6w;
 spf=pass (domain: unsw.edu.au, ip: 40.107.107.96, mailfrom: d.antliff@unsw.edu.au)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BTL8bL72n5MOES4LKammyzUTlnttVhzZ3clb/MZEPMXrpKIDjcXyDoZmx9+lE5wHX3pkq0iyV6lB8I/woZvLtZ6QBWrtN32h6NB0pj9E7kcbt5zDctDPsDd+a+/hEBKyjQS2/axCAcAm+0agUF/eETjDrAq5jUK7oLOmFdeTpLU3MNXqOr4Q4i4RnNBCAPej5WP2ZZbwMkzPTdV80z2udH0dDLr68D4QJJ5hhdlMr2wOCcMh6G9sKvr3qqa22g0M1Dk2C0Ymoj3L0Q7kMQRAzRwUn9lCMHQxXZEC5O8O4eZnG2+1rTawHrll9M7o1K8t554UbW4cVz1Xz3dI0MvI2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1jaHSIlaPXZt7N2k0XlhP5Lf+MSh3uYSmlE2+E9f7Ns=;
 b=bEYwdlOywoJ70Qv7IO/rrZijrDoIiUYOpt4FoBXY8PS/V6bwb8oqTsd6clrWm1Gxx2MVKk85LVClkUlbOIXRF0qZEUFJ/oSAF86nXecrJLvspWQLanj5KmxOhjvrsB55TZdsMrXxO1ggQ6gjZaCGgkosXsg6+l9kvimdxSrvwYFfujHs3iliI4I13vuxEjk2utf/OBzVXlQvlSaVx7YCihKEuFuJojJGImvcwM9umn9RZKa1hpd6NXShlHEQNSwqATxUH0Ai9xqwwCGDwSXBcjeJ0pZP5wbdPTXuKxePEdz7hlKGIM8xbSuFiI9Kf301ZETn9emUFfH4DlGqJ9X2SQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=unsw.edu.au; dmarc=pass action=none header.from=unsw.edu.au;
 dkim=pass header.d=unsw.edu.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=unsw.edu.au;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1jaHSIlaPXZt7N2k0XlhP5Lf+MSh3uYSmlE2+E9f7Ns=;
 b=QIhyAM6w8vNmLkI3IY3DaX8BAwof9rZlLCrSg39ayHGf3nw4UCadFkSSPoBUxJC1cyEZc90WHJBGHCIwo0M52ez2C+t6IeIMAJQlNOMlfDa0O/UDxbcrqWO/VXKNNktFxYqOFSwFyJ4qto+/jAw+plkUtch4IQkIL3VikAKQFDg=
Received: from SY4PR01MB6797.ausprd01.prod.outlook.com (2603:10c6:10:136::13)
 by ME3PR01MB6983.ausprd01.prod.outlook.com (2603:10c6:220:168::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Wed, 14 Dec
 2022 11:08:39 +0000
Received: from SY4PR01MB6797.ausprd01.prod.outlook.com
 ([fe80::e176:8a0c:2e59:c56]) by SY4PR01MB6797.ausprd01.prod.outlook.com
 ([fe80::e176:8a0c:2e59:c56%4]) with mapi id 15.20.5880.019; Wed, 14 Dec 2022
 11:08:39 +0000
From: David Antliff <d.antliff@unsw.edu.au>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Yocto with Monorepo - best practice for building apps
 that have source within the repo?
Thread-Topic: [yocto] Yocto with Monorepo - best practice for building apps
 that have source within the repo?
Thread-Index: AQHZDzZOKZaFo3ZJk029kid3ZIb+q65tEHYAgAANjv+AAAO/AIAAFaC1
Date: Wed, 14 Dec 2022 11:08:39 +0000
Message-ID: 
 <SY4PR01MB67976B0BD0BCE06B33F69603B1E09@SY4PR01MB6797.ausprd01.prod.outlook.com>
References: 
 <SY4PR01MB679719971DE5378023DF6F3FB1E39@SY4PR01MB6797.ausprd01.prod.outlook.com>
 <CANNYZj9pSipKkwpRwaCo3NwO1O=uK_BXazxvS7t70qWTpaSpJw@mail.gmail.com>
 <SY4PR01MB6797E2185B27B31256010857B1E09@SY4PR01MB6797.ausprd01.prod.outlook.com>
 <CANNYZj9_WD95_=bRi7OubjJ7eoGhe8+Y+QAmPu=2zLknjZ-4+w@mail.gmail.com>
In-Reply-To: 
 <CANNYZj9_WD95_=bRi7OubjJ7eoGhe8+Y+QAmPu=2zLknjZ-4+w@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-NZ
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=unsw.edu.au;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SY4PR01MB6797:EE_|ME3PR01MB6983:EE_
x-ms-office365-filtering-correlation-id: 273f627e-49a7-4d0f-8f08-08daddc38db9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 uTCuhapIQHoDjrW0g1DdeeUGyuxlU1ioQWdWlyfth4CiyAfNZKeDU4tw1Ol2QsU9urJ1mvizS4xwMZZNqk0jcb/kqpaBrAteyOO/RgP8yqCnZ+epiTSdA0jgafB0UF+OW+52SSnsikRDM+RJlvIq7SFkXlNwcacnLiTRpLFIE25IfIeF2LeVDIob8YjR4LxaDt/b3RWlKZVEySxGjMpbFAJeBDOd0NSz7L+u5OzQZx5UaLJMyvcTkwISEJwYXObGqkhyH0eIroc85Cw9xAGN9Zrk8sZAnmq5rdD9PkQZNxYOpx10tU7aS91KvJq8E/e9rOzvJVKXWLZ3IlkNjgOq4K6ZK7W9YN1z7ELqgqpYjHOU+OHuT2MYYmLXWTDAtMh1HXHwoKVET+wS5+vlv/BZ3ckK4Sp7/CLDzRG6SoakjYsxa30j6nAwWlSAzIywLv+AbJD5oxE0UVrlLv9grOhTGxVPuwuvNqFJs73DvVIikMLhez5mgmV35UZaOGpg/MJVC1p8VUOIz/CtJ9TqyXtCGcDBq40skw/QJoUN/jrdnDU1SzZWjUwuq0b21lQzs2O18YsmKlJcCbWnPdLwxBtFAlI/vqEhYRd6Xy0dQCS2muDu9OdQgamSaMlEfcpE66c5jMRDZKgo/jdzeYGYfgvg0j1mifQrK/Rx++dnkgx5Pg9VPBJwGuwohTWzrFhfQ6sCdlNdA3HzHgp1otoZG+k66A==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SY4PR01MB6797.ausprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(366004)(136003)(39860400002)(396003)(346002)(451199015)(41320700001)(186003)(9686003)(26005)(55016003)(7696005)(6506007)(86362001)(33656002)(6916009)(316002)(8676002)(76116006)(122000001)(4326008)(66476007)(64756008)(38070700005)(66446008)(38100700002)(71200400001)(478600001)(66556008)(786003)(41300700001)(66946007)(5660300002)(2906002)(52536014)(8936002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?179ZZrDpRSfn/JjwlTN2yNkQI5qXNcxoQdwgXQfDn1qJTQkSWQaNa+cs?=
 =?Windows-1252?Q?WaLponEToVNQDhUY6DFwB/UMffMGJWRbZ35aKQ4Q2VStUIZYOlhmg5Mj?=
 =?Windows-1252?Q?r66s1ZnVvtGj5SlkRkYis3iirSJfco4684+4XRsFEhZTs4kS5AISNjDN?=
 =?Windows-1252?Q?Z92Bd1aZJb7p8vba3M5tZdEhQeF531Yj7ZGMIEwHor/Xm3xT+Bh02ZD3?=
 =?Windows-1252?Q?R4XxGncDW6+iHTAiL+utm/eLQ9Xwl/XUgQzEBc1itRs2jHId6A5uGCwS?=
 =?Windows-1252?Q?1eyrcwxXou0asoBmYJ0dzEiJDwQauvYqX9UvgFnGb1J9O4A7MGGhPPmO?=
 =?Windows-1252?Q?mfXvS9jp9xf3XB/PArGRX7rhLTPaaXZs9YclLzoBD5HIWgt1DMqM4186?=
 =?Windows-1252?Q?L4jaiL8y8ltei1HZm5wmqbAF4n5IyemT7eTR8OaBwmDYo7EguPxnW15Q?=
 =?Windows-1252?Q?LA+KgEeGVNWk1hF3xW1THdg7IA9b19xEXhdYsJ6yrTz8SwU1IpOPiR9Q?=
 =?Windows-1252?Q?msf2eg/wcAmxmv9mn9hKnXjN6IEW/ybESrvI0T8UCWkCeI4BHQntK11x?=
 =?Windows-1252?Q?cODF+PUs2/prvA4H43hZ21iFiV9TYasjzh+qycYIz1f97je4HAQio0rb?=
 =?Windows-1252?Q?1daPCKlyrxYG3q8HzrdgWafqCbi0yY5LRgefILXQ2fNs69mbN2SaKoyb?=
 =?Windows-1252?Q?knPih7Zb6SpKWdHFThY1EkAsUHxAX+JjTn6Jmdr2UvU2THJFnXjf24lz?=
 =?Windows-1252?Q?cZdrBla1oDR/qIOonAyMxn7Q46UhogY4jM07iazEAzft1kSh52DgrGIw?=
 =?Windows-1252?Q?NmDQn2LV5c5BkDI2pNLBFf4SOKNGeDzkMRFWksFz8XVVkQfMxUVKqqZs?=
 =?Windows-1252?Q?uu5caQG84yr0j0vQa4EwEvaGkDi3Vh0dkdh3gwu2B+BZwSjVtKxk3OE9?=
 =?Windows-1252?Q?IZCrQn+ez7FN4Rh7kD5XTAj/09xp43hYxejQeyzxVP9AvA596Oq3ij8w?=
 =?Windows-1252?Q?Z/PWNgQDpOLfm9Uxt6qdwQk4Ebl6mlkn40jLJoGbZe2GFFdY94nXy5j/?=
 =?Windows-1252?Q?OFi5/cm7vXom80mRWRvnLNCkk6s26hnx+f9O/RlUT5RZEzoG7gaTdAYg?=
 =?Windows-1252?Q?eR2dzv6tMvOdqHnG9WeJ4fUVYuLmk/Y2xuLWJTzQdjQkpi9+gPquH8Us?=
 =?Windows-1252?Q?Jyhzw+ZFeLqgkdfut5fnqJIxMfVOWgklPTtNA1xBxb2zwtnIbmsX6eW0?=
 =?Windows-1252?Q?l7tjSxfpd0vNjO6zDpwEJKRcarMeccln9RoNZF4VhI2uoxUpl51Mca8v?=
 =?Windows-1252?Q?BvEUUMpWYqjoY7WbNgsSmlqmT3b9YBsTN6WOQKzdMCW227Ydj3f+jE9u?=
 =?Windows-1252?Q?sjvPw0Q+vpPNOjIkrrds2OAF/7wHjDC0kGInkmy7V2m7A9ADJU2Nl8XE?=
 =?Windows-1252?Q?teT420krukBMGfrCbrmVCWuErmkRbokAFU1p7l+/Kg5aFNyiVYqtdtjf?=
 =?Windows-1252?Q?h4e/a4CvrXd57u07Q/thxudjInvvO1igTVGiR+R8QX2+vDIPdyxTWnYI?=
 =?Windows-1252?Q?NwhnnvDSfrNJ5oWJjgWp7h2yVaKm9FmexWVv0GJDbMHl1QwUAQm8uDo4?=
 =?Windows-1252?Q?uIYHiaBuARAW9rs7Rvr/3HuwV4/LHKh6v1lQ0zjNGknHGspUj8Aw6X8G?=
 =?Windows-1252?Q?oBwmoKJjbmBHhTPEoXaQ1dDGosxqDe5JYp6oqzikJGFlGmzQoosnOA?=
 =?Windows-1252?Q?=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_SY4PR01MB67976B0BD0BCE06B33F69603B1E09SY4PR01MB6797ausp_"
MIME-Version: 1.0
X-OriginatorOrg: unsw.edu.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SY4PR01MB6797.ausprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 273f627e-49a7-4d0f-8f08-08daddc38db9
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2022 11:08:39.2143
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3ff6cfa4-e715-48db-b8e1-0867b9f9fba3
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kwxMV+MExBm4bJ8CybzjjQZvz/2ynorxkPHkPzU16PSM3fZmEPsPV0q8+wzibB2Uxl9dBpEZ7fmyZ1HaKjgnLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ME3PR01MB6983
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Dec 2022 11:08:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58796

--_000_SY4PR01MB67976B0BD0BCE06B33F69603B1E09SY4PR01MB6797ausp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable


Alexander Kanavin wrote:
> On Wed, 14 Dec 2022 at 10:34, David Antliff <d.antliff@unsw.edu.au> wrote=
:
> > Good question! I would prefer not to use a monorepo but it has been imp=
osed on me. It predates my involvement and I=92m stuck with it, unfortunate=
ly. Consider it an unavoidable constraint. There's a lot in the repo, and t=
he yocto project is just one part of it.
> >
> > Frankly it would make my life a lot easier if I didn't have to work wit=
h a monorepo, but my leaders insist that it makes things "easier"...
>
> Let me guess: they heard that facebook is using a monorepo, so that
> makes it a 'best practice'?

Yeah, something like that. Several senior members have used them before and=
 think they are the best solution to dependency management. I disagree that=
 the end result is better than using multiple repositories; it greatly comp=
licates the build pipeline, confuses who is responsible for what, and can m=
ake interface boundaries unclear, in an effort to have changes across the r=
epository "easier" to execute. I'm always wary of people who want to make t=
hings easier instead of simpler, as it's often a false economy.

> I would symlink the sources directory to the sub-directory of 'files'
> ('files' is in the same directory as the recipe), then list the
> symlink in SRC_URI, so bitbake can copy the content into $WORKDIR. But
> I have no idea if it's going to work. It's not a setup that is tested
> or used much.

Seems like a reasonable idea - I will give it a try.

Using FILESEXTRAPATHS also works but it's in a .bb not a .bbappend. I suppo=
se there's nothing stopping me splitting my recipe into those two files, ac=
tually... then I'd be technically compliant with the docs.

Thank you,

-- David.


--_000_SY4PR01MB67976B0BD0BCE06B33F69603B1E09SY4PR01MB6797ausp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body>
<div dir=3D"ltr">
<div></div>
<div>
<div dir=3D"ltr"><br>
</div>
<div id=3D"ms-outlook-mobile-signature" dir=3D"ltr">
<div></div>
</div>
<div id=3D"mail-editor-reference-message-container" class=3D"ms-outlook-mob=
ile-reference-message">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif">Al=
exander Kanavin wrote:</font></div>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">&gt; On Wed, 14 Dec 2022 at 10:34, David Antliff &=
lt;d.antliff@unsw.edu.au&gt; wrote:<br>
&gt; &gt; Good question! I would prefer not to use a monorepo but it has be=
en imposed on me. It predates my involvement and I=92m stuck with it, unfor=
tunately. Consider it an unavoidable constraint. There's a lot in the repo,=
 and the yocto project is just one part
 of it.<br>
&gt; &gt;<br>
&gt; &gt; Frankly it would make my life a lot easier if I didn't have to wo=
rk with a monorepo, but my leaders insist that it makes things &quot;easier=
&quot;...<br>
&gt;<br>
&gt; Let me guess: they heard that facebook is using a monorepo, so that<br=
>
&gt; makes it a 'best practice'?<br>
<br>
Yeah, something like that. Several senior members have used them before and=
 think they are the best solution to dependency management. I disagree that=
 the end result is better than using multiple repositories; it greatly comp=
licates the build pipeline, confuses
 who is responsible for what, and can make interface boundaries unclear, in=
 an effort to have changes across the repository &quot;easier&quot; to exec=
ute. I'm always wary of people who want to make things easier instead of si=
mpler, as it's often a false economy.</div>
<div class=3D"PlainText"><br>
&gt; I would symlink the sources directory to the sub-directory of 'files'<=
br>
&gt; ('files' is in the same directory as the recipe), then list the<br>
&gt; symlink in SRC_URI, so bitbake can copy the content into $WORKDIR. But=
<br>
&gt; I have no idea if it's going to work. It's not a setup that is tested<=
br>
&gt; or used much.<br>
<br>
Seems like a reasonable idea - I will give it a try.<br>
</div>
<div class=3D"PlainText" dir=3D"ltr"><br>
</div>
<div class=3D"PlainText" dir=3D"ltr">Using FILESEXTRAPATHS also works but i=
t's in a .bb not a .bbappend. I suppose there's nothing stopping me splitti=
ng my recipe into those two files, actually... then I'd be technically comp=
liant with the docs.</div>
<div class=3D"PlainText" dir=3D"ltr"><br>
</div>
<div class=3D"PlainText" dir=3D"ltr">Thank you,</div>
<div class=3D"PlainText" dir=3D"ltr"><br>
</div>
<div class=3D"PlainText" dir=3D"ltr">-- David.</div>
<div class=3D"PlainText" dir=3D"ltr"><br>
</div>
</span></font></div>
</div>
</div>
</body>
</html>

--_000_SY4PR01MB67976B0BD0BCE06B33F69603B1E09SY4PR01MB6797ausp_--

