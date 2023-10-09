Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80E7AE95A91
	for <webhook@archiver.kernel.org>; Mon,  9 Oct 2023 14:24:20 +0000 (UTC)
Subject: Re: continuous security updates for the Linux system
To: yocto@lists.yoctoproject.org
From: "MOHAMMED HASSAN" <hassanchattarki@gmail.com>
X-Originating-Location: Hyderabad, Telangana, IN (183.82.1.74)
X-Originating-Platform: Linux Chrome 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 09 Oct 2023 07:24:19 -0700
References: <4c05da5d-9e30-4018-bef6-b40d91227157@bootlin.com>
In-Reply-To: <4c05da5d-9e30-4018-bef6-b40d91227157@bootlin.com>
Message-ID: <12652.1696861459372790739@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="7Gk2fdy0vY8MUfbrcisd"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 Oct 2023 14:24:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61289

--7Gk2fdy0vY8MUfbrcisd
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 9, 2023 at 07:11 AM, Michael Opdenacker wrote:

>=20
> Hi Hassan
>=20
> On 09.10.23 at 15:22, MOHAMMED HASSAN wrote:
>=20
>> On Mon, Oct 9, 2023 at 06:12 AM, Josef Holzmayr wrote:
>>=20
>> Please see https://wiki.yoctoproject.org/wiki/System_Update
>>=20
>> Thanks for your reply. I am aware of the system_updates feature though
>> still yet to implement. Is it possible to update the yocto version (i
>> use dunfell) to the latest one, to update the linux version(mine is
>> 5.4.180) to the latest and to update the tools to the latest using
>> these features. Actually i have no clarity with this so I am asking.
>=20
>=20
> Which version of Yocto are you using? If you have one that is still
> supported (like Kirkstone or Dunfell), I'd recommend to stick to these
> and just rebuild with the latest release update. This way you have the
> latest vulnerability fixes supported by the Yocto Project. Once a new
> image is generated, you can deploy it using one of the tools Josef
> mentioned.
>=20
> Moving to the latest version of Yocto will represent more work, all the
> more as the latest one should be replaced this month.
>=20
> As far as the Linux kernel is concerned, I'd rather work with a stable
> LTS kernel ( https://kernel.org/category/releases.html ), as I guess the
> Yocto Project releases can't match the stable kernels in terms of
> vulnerability fixes and how quickly they are deployed. That's my own
> opinion though.
>=20
>=20

Hi Michael,
Thanks for your reply.
I am currently using dunfell 3.1.11 and my kernel release is Linux 5.4.180-=
amlogic. Going by your suggestion i should rebuild to the latest dunfell up=
date i.e 3.1.28. Moving to kirkstone would take more work.
I will search on how to update my yocto release version and get into it.

Thanks
Hassan

--7Gk2fdy0vY8MUfbrcisd
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 9, 2023 at 07:11 AM, Michael Opdenacker wrote:<br />
<blockquote>Hi Hassan<br /><br />On 09.10.23 at 15:22, MOHAMMED HASSAN wrot=
e:<br />
<blockquote>On Mon, Oct 9, 2023 at 06:12 AM, Josef Holzmayr wrote:<br /><br=
 />Please see <a href=3D"https://wiki.yoctoproject.org/wiki/System_Update" =
target=3D"_blank" rel=3D"noopener">https://wiki.yoctoproject.org/wiki/Syste=
m_Update</a><br /><br />Thanks for your reply. I am aware of the system_upd=
ates feature though <br />still yet to implement. Is it possible to update =
the yocto version (i <br />use dunfell) to the latest one, to update the li=
nux version(mine is <br />5.4.180) to the latest and to update the tools to=
 the latest using <br />these features. Actually i have no clarity with thi=
s so I am asking.</blockquote>
<br />Which version of Yocto are you using? If you have one that is still <=
br />supported (like Kirkstone or Dunfell), I'd recommend to stick to these=
 <br />and just rebuild with the latest release update. This way you have t=
he <br />latest vulnerability fixes supported by the Yocto Project. Once a =
new <br />image is generated, you can deploy it using one of the tools Jose=
f <br />mentioned.<br /><br />Moving to the latest version of Yocto will re=
present more work, all the <br />more as the latest one should be replaced =
this month.<br /><br />As far as the Linux kernel is concerned, I'd rather =
work with a stable <br />LTS kernel (<a href=3D"https://kernel.org/category=
/releases.html" target=3D"_blank" rel=3D"noopener">https://kernel.org/categ=
ory/releases.html</a>), as I guess the <br />Yocto Project releases can't m=
atch the stable kernels in terms of <br />vulnerability fixes and how quick=
ly they are deployed. That's my own <br />opinion though.<br /><br /></bloc=
kquote>
Hi&nbsp;<span style=3D"white-space-collapse: preserve;">Michael,<br />Thank=
s for your reply.<br />I am currently using dunfell 3.1.11 and my kernel re=
lease is Linux 5.4.180-amlogic. Going by your suggestion i should rebuild t=
o the latest dunfell update i.e 3.1.28. Moving to kirkstone would take more=
 work. <br />I will search on how to update my yocto release version and ge=
t into it. <br /><br /><br />Thanks <br />Hassan</span>

--7Gk2fdy0vY8MUfbrcisd--

