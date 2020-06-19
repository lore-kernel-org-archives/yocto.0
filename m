Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.685.1592590330023088417
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Jun 2020 11:12:10 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: abiomed.com, ip: 140.211.169.56, mailfrom: rsrinivasan@abiomed.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB83BE01D42; Fri, 19 Jun 2020 11:12:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [63.128.21.188 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 305 seconds by postgrey-1.32 at yocto-www; Fri, 19 Jun 2020 11:12:07 PDT
Received: from us-smtp-delivery-188.mimecast.com (us-smtp-delivery-188.mimecast.com [63.128.21.188])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED67DE01D40
	for <yocto@yoctoproject.org>; Fri, 19 Jun 2020 11:12:07 -0700 (PDT)
Received: from NAM04-SN1-obe.outbound.protection.outlook.com
 (mail-sn1nam04lp2053.outbound.protection.outlook.com [104.47.44.53]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 us-mta-35-X3Gd8xYUN_yUq9YFyfMUPA-1; Fri, 19 Jun 2020 14:05:40 -0400
X-MC-Unique: X3Gd8xYUN_yUq9YFyfMUPA-1
Received: from BY5PR13MB3345.namprd13.prod.outlook.com (2603:10b6:a03:1ae::17)
 by BY5PR13MB3620.namprd13.prod.outlook.com (2603:10b6:a03:221::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.7; Fri, 19 Jun
 2020 18:05:38 +0000
Received: from BY5PR13MB3345.namprd13.prod.outlook.com
 ([fe80::74bf:c366:76a:4c36]) by BY5PR13MB3345.namprd13.prod.outlook.com
 ([fe80::74bf:c366:76a:4c36%7]) with mapi id 15.20.3131.009; Fri, 19 Jun 2020
 18:05:38 +0000
From: "Srini" <rsrinivasan@abiomed.com>
To: Robert Berger <robert.berger.yocto.user@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "raj.khem@gmail.com"
	<raj.khem@gmail.com>
CC: Robert Berger <robert.berger@reliableembeddedsystems.com>
Subject: Re: [yocto] Go toolchain in SDK
Thread-Topic: [yocto] Go toolchain in SDK
Thread-Index: AQHWRl8GLEzgKlM1SEWJAdsxPzGwLKjgOy7c
Date: Fri, 19 Jun 2020 18:05:38 +0000
Message-ID: 
 <BY5PR13MB3345E5FC60ED820EC41DD1C0AA980@BY5PR13MB3345.namprd13.prod.outlook.com>
References: 
 <439eb160-94b9-a8ce-f305-be6c486eb06d@gmail.com>,<55730455-4164-1268-884c-70186e46b56e@gmail.com>
In-Reply-To: <55730455-4164-1268-884c-70186e46b56e@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [107.0.242.52]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 72425971-8df6-4d0c-648a-08d8147b5f3a
x-ms-traffictypediagnostic: BY5PR13MB3620:
x-microsoft-antispam-prvs: 
 <BY5PR13MB36200D141338F0DEF34C27ACAA980@BY5PR13MB3620.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 0439571D1D
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 v4htwpllnKwJ4lYgPwKsYJMebK2mdFFMtSnshrsixEyxnzDobcPRtsVOUqkW9t0g9SjPm/RHITty6mo985KTk3s6rnwllg+YuzfUakQKnLiS1rZti89DAR+W9fSSsy7Tok8vfOlCVm+w8Ryyp/wSYv+UW49HxHHRZ7oI4gtJmL7Uuukbv1MRLJHJ/0vP6KyYO9kiiIZJ6RSyNQMHKi8WLiVVovxEAMaAE58R70w9gnDYT2+W5ijaam20lVZCT0z8VVnn0RPpQnJ6Rzj+zhGKfeozmFTk9M4Rc8CpJudGUk+L85/MLfBclk24gaPqOPyPEzEir9YRsl/0TZHltn3lBw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR13MB3345.namprd13.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(396003)(346002)(39860400002)(136003)(376002)(366004)(66476007)(66946007)(66556008)(66446008)(64756008)(8936002)(2906002)(91956017)(86362001)(8676002)(478600001)(76116006)(55016002)(9686003)(4326008)(83380400001)(71200400001)(186003)(5660300002)(52536014)(33656002)(26005)(7696005)(110136005)(19627405001)(53546011)(316002)(6506007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 /4EJ5hnlIqIM02V/ihax3yCPnH1QqszZehwsyB/GK/syiwrc8XDjtDsMVwgUR4e0oBhp2XaXp+PSlb08pzuBxI/cfk9ts8BX9AXhUfq/+vU63J07TaKYMZcDEYr7HCB+JEKLgGcUakfK3shp65X0TOwF4odMUIv02dJBa0M7kgV3kVYH4mcqGl9fRlTVL0X1Kw4zAhtw7FXU5rMWVnSwepsXiyVjWkbj0+Ig+6Glxn8sTzIwSiGQzpdVs3wIhkJTQAehjnjhIj4o0tTJcAk/x+WnyFIou/VCSrQRo8fLZHyYvQuQC7hC9Qyi5VwMm52DbFvKANX3erA2tv2voLjKjUUqrJY5tJRXDLdSU6UHO9wfgY4eJf4Bmbytj6XJd7RiUd3OhPABd3TfJyRi/tlmR/pp/FMxMGezh2otWHHhMujjieQgRYHs1B+ixoWeqFN7SyPReZ8f8jCjJMk2EQhEcj6JALhbegU6xvHnzPc4LZw=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: abiomed.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72425971-8df6-4d0c-648a-08d8147b5f3a
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2020 18:05:38.2471
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3e5db3e6-2403-4bf8-8501-bbd7acfd4b6f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E06cxOVZyIOR/2wmOn7iX6V/CFFu198hP3Uq75USy4JXfk7HQyiQ37F3DUXq03gp6gM+QGHNb4j8C3YugHcscA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR13MB3620
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA88A250 smtp.mailfrom=rsrinivasan@abiomed.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: abiomed.com
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BY5PR13MB3345E5FC60ED820EC41DD1C0AA980BY5PR13MB3345namp_"

--_000_BY5PR13MB3345E5FC60ED820EC41DD1C0AA980BY5PR13MB3345namp_
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

Unlike other languages go has the ability to produce cross platform binarie=
s. In my case, I just used my go to produce binaries for my yocto based tar=
get and just included it. it was too much effort to incorporate the go tool=
chain. But then it was > 1 year ago.

srini

________________________________
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of Khem Raj via lists.yoctoproject.org <raj.khem=3Dgmail.com@lists.yoctopr=
oject.org>
Sent: Thursday, June 18, 2020 8:27 PM
To: Robert Berger <robert.berger.yocto.user@gmail.com>; yocto@yoctoproject.=
org <yocto@yoctoproject.org>
Cc: Robert Berger <robert.berger@reliableembeddedsystems.com>
Subject: Re: [yocto] Go toolchain in SDK



On 6/16/20 1:55 PM, Robert Berger wrote:
> Hi,
>
> What is the "proper" way to add the Go toolchain to an SDK nowadays
> (dunfell)?
>

I dont think there is sample image target for image based SDKs

> I saw there is in poky:
>
> ./meta/recipes-core/meta/meta-go-toolchain.bb
>
> but I am not quite sure how to build an SDK with meta-go-toolchain
> included.

that is more like a meta-toolchain target

>
> so I added something like that to local.conf which seems to work for the
> "classic" SDK:
>
> # --> golang stuff
> # attempt to add golang to SDK
> TOOLCHAIN_HOST_TASK_append =3D " \
>     packagegroup-go-cross-canadian-${MACHINE} \
> "
>
> TOOLCHAIN_TARGET_TASK_append =3D " \
>     ${@multilib_pkg_extend(d, 'packagegroup-go-sdk-target')} \
> "
> # <-- golang stuff
>
> bitbake core-image-sato-sdk -c populate_sdk
>
> and currently also for:
> bitbake core-image-sato-sdk -c populate_sdk_ext
>
> I don't think that's the way it was intended.
>
> Can you please enlighten me?

what you did is roughly what should be needed. Maybe you might want
to create a -dev image

perhaps adding nativesdk-go to TOOLCHAIN_HOST_TASK might get everything
you need

>
> Regards,
>
> Robert
>
>
>


--_000_BY5PR13MB3345E5FC60ED820EC41DD1C0AA980BY5PR13MB3345namp_
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
<style type=3D"text/css">.style1 {font-family: "Times New Roman";}</style><=
/head><body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Unlike other languages go has the ability to produce cross platform binarie=
s. In my case, I just used my go to produce binaries for my yocto based tar=
get and just included it. it was too much effort to incorporate the go tool=
chain. But then it was &gt; 1 year
 ago.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
srini</div>
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> yocto@lists.yoctoproj=
ect.org &lt;yocto@lists.yoctoproject.org&gt; on behalf of Khem Raj via list=
s.yoctoproject.org &lt;raj.khem=3Dgmail.com@lists.yoctoproject.org&gt;<br>
<b>Sent:</b> Thursday, June 18, 2020 8:27 PM<br>
<b>To:</b> Robert Berger &lt;robert.berger.yocto.user@gmail.com&gt;; yocto@=
yoctoproject.org &lt;yocto@yoctoproject.org&gt;<br>
<b>Cc:</b> Robert Berger &lt;robert.berger@reliableembeddedsystems.com&gt;<=
br>
<b>Subject:</b> Re: [yocto] Go toolchain in SDK</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText"><br>
<br>
On 6/16/20 1:55 PM, Robert Berger wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; What is the &quot;proper&quot; way to add the Go toolchain to an SDK n=
owadays<br>
&gt; (dunfell)?<br>
&gt; <br>
<br>
I dont think there is sample image target for image based SDKs<br>
<br>
&gt; I saw there is in poky:<br>
&gt; <br>
&gt; ./meta/recipes-core/meta/meta-go-toolchain.bb<br>
&gt; <br>
&gt; but I am not quite sure how to build an SDK with meta-go-toolchain<br>
&gt; included.<br>
<br>
that is more like a meta-toolchain target<br>
<br>
&gt; <br>
&gt; so I added something like that to local.conf which seems to work for t=
he<br>
&gt; &quot;classic&quot; SDK:<br>
&gt; <br>
&gt; # --&gt; golang stuff<br>
&gt; # attempt to add golang to SDK<br>
&gt; TOOLCHAIN_HOST_TASK_append =3D &quot; \<br>
&gt; &nbsp;&nbsp;&nbsp; packagegroup-go-cross-canadian-${MACHINE} \<br>
&gt; &quot;<br>
&gt; <br>
&gt; TOOLCHAIN_TARGET_TASK_append =3D &quot; \<br>
&gt; &nbsp;&nbsp;&nbsp; ${@multilib_pkg_extend(d, 'packagegroup-go-sdk-targ=
et')} \<br>
&gt; &quot;<br>
&gt; # &lt;-- golang stuff<br>
&gt; <br>
&gt; bitbake core-image-sato-sdk -c populate_sdk<br>
&gt; <br>
&gt; and currently also for:<br>
&gt; bitbake core-image-sato-sdk -c populate_sdk_ext<br>
&gt; <br>
&gt; I don't think that's the way it was intended.<br>
&gt; <br>
&gt; Can you please enlighten me?<br>
<br>
what you did is roughly what should be needed. Maybe you might want<br>
to create a -dev image<br>
<br>
perhaps adding nativesdk-go to TOOLCHAIN_HOST_TASK might get everything<br>
you need<br>
<br>
&gt; <br>
&gt; Regards,<br>
&gt; <br>
&gt; Robert<br>
&gt; <br>
&gt; <br>
&gt; <br>
<br>
</div>
</span></font></div>
</div>


<br><br><p style=3D"font-family: Verdana; font-size:10pt; color:#666666;"><=
/p><p style=3D"font-family: Verdana; font-size:8pt; color:#666666;"></p></b=
ody></html>

--_000_BY5PR13MB3345E5FC60ED820EC41DD1C0AA980BY5PR13MB3345namp_--
