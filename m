Return-Path: <jeffrey.simons@boonedam.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EC3C3DA6F
	for <webhook@archiver.kernel.org>; Thu, 24 Aug 2023 05:11:43 +0000 (UTC)
Subject: Re: EXTRA_USERS_PARAMS doesn't work to generate password for root and add new users
To: yocto@lists.yoctoproject.org
From: "Jeffrey Simons" <jeffrey.simons@boonedam.com>
X-Originating-Location: Hoogkarspel, North Holland, NL (185.220.111.178)
X-Originating-Platform: Windows Chrome 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 23 Aug 2023 22:11:36 -0700
References: <4243.1692798656387052619@lists.yoctoproject.org>
In-Reply-To: <4243.1692798656387052619@lists.yoctoproject.org>
Message-ID: <19088.1692853896756658318@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Aug 2023 05:11:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60870

On Wed, Aug 23, 2023 at 03:50 PM, Crane wrote:

>
> On Wed, Aug 23, 2023 at 03:45 AM, Mauro wrote:
>=20
> >=20
> > You can put the encrypted password (the result of the "openssl passwd -=
6
> > root" command) directly in the variable, taking care to put a "\" befor=
e
> > the three "$" contained in the string. Something like this:
> >=20
> > EXTRA_USERS_PARAMS=3D" usermod -p
> >
> '\$6\$CEM0hANiVS9VXN8N\$Q9XK1KTpq2faq2fNbSRLNeeA4mmQsl8g1Gwl3QnTPlRPb5ljC=
Aa./bbhffcthXxUen4jSFL6HKGQPlHZNQkfA/'
> > root; useradd -p
> >
> '\$6\$5wVybJkbuowR0iMi\$tnEJEEbXbcRfksKRSt7rjlY1hRERrjqFOlCaa0s1ivISxAHT7=
MFdcnZvVbRHgkqRSYzA1oLUxtR0LuvDTMPR5/'
> > crane; "
>=20
> Tried as well. And a \ is added automatically in front of $, so no need t=
o add
> it. But still not working.
> There must be something else missing. Anyway to debug in this case?
>

From testing I have observed that the extrausers does not work from a recip=
e, while useradd works correctly from a recipe.
The extrausers should work as expected from within the distribution descrip=
tion, so you might want to try that.

For debugging you could print the bitbake variables to screen (-e) and grep=
 on the EXTRA_USERS_PARAMS.

Hope this is will help you solving the issue.

--=20
With kind regards,

Jeffrey Simons

Software Engineer
Royal Boon Edam International B.V.

