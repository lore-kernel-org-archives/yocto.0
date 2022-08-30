Return-Path: <anton.antonov@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FC2BECAAD1
	for <webhook@archiver.kernel.org>; Tue, 30 Aug 2022 15:51:55 +0000 (UTC)
Subject: Re: [meta-security][PATCH resend] Parsec-service: add parsec user to
 teeclnt group when optee is present
To: yocto@lists.yoctoproject.org
From: "Anton Antonov" <anton.antonov@arm.com>
X-Originating-Location: Cambridge, England, GB (217.140.106.13)
X-Originating-Platform: Mac Firefox 103
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 30 Aug 2022 08:51:53 -0700
References: 
 <CAP71WjzFD3ns9BQKXo+F8K7UrDpoN5ECMqtDAM6FsXW09WS39A@mail.gmail.com>
In-Reply-To: 
 <CAP71WjzFD3ns9BQKXo+F8K7UrDpoN5ECMqtDAM6FsXW09WS39A@mail.gmail.com>
Message-ID: <20621.1661874713066029418@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="I7k2VE6AFsQysq3GRnHB"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Aug 2022 15:51:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57947

--I7k2VE6AFsQysq3GRnHB
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

The latest version of parsec-service recipe adds parsec into teeclnt group =
if Parsec is built with TS provider:

https://git.yoctoproject.org/meta-security/tree/meta-parsec/recipes-parsec/=
parsec-service/parsec-service_1.0.0.bb#n75

In this case teeclnt group is created by libts recipe (it will be merged in=
to meat-arm later this week).

With your change it's not clear what recipe will create the group. Could yo=
u point me to this recipe.

Anton

--I7k2VE6AFsQysq3GRnHB
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>The latest version of parsec-service recipe adds parsec into teeclnt gro=
up if Parsec is built with TS provider:</p>
<p><a href=3D"https://git.yoctoproject.org/meta-security/tree/meta-parsec/r=
ecipes-parsec/parsec-service/parsec-service_1.0.0.bb#n75" target=3D"_blank"=
 rel=3D"noopener">https://git.yoctoproject.org/meta-security/tree/meta-pars=
ec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb#n75</a><br /><br /=
>In this case teeclnt group is created by libts recipe (it will be merged i=
nto meat-arm later this week).<br /><br />With your change it's not clear w=
hat recipe will create the group. Could you point me to this recipe.<br /><=
br />Anton</p>

--I7k2VE6AFsQysq3GRnHB--

