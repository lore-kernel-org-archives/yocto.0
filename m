Return-Path: <matteo.orlandini@tastitalia.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4185CAC599
	for <webhook@archiver.kernel.org>; Tue, 16 Sep 2025 14:06:35 +0000 (UTC)
Subject: Re: [yocto] Virtual Keyboard on Wayland
To: "Takuro Ashie" <ashie@clear-code.com>, yocto@lists.yoctoproject.org
From: matteo.orlandini@tastitalia.com
X-Originating-Location: Torgiano, Umbria, IT (37.77.97.75)
X-Originating-Platform: Windows Chrome 139
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 16 Sep 2025 07:06:27 -0700
References: <dab6042d-bdf7-4573-954e-e122059e3c8d@clear-code.com>
In-Reply-To: <dab6042d-bdf7-4573-954e-e122059e3c8d@clear-code.com>
Message-ID: <13687.1758031587789597717@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="XID1yMzgaefenqD3f4SU"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Sep 2025 14:06:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65841

--XID1yMzgaefenqD3f4SU
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Jun 28, 2025 at 01:02 AM, Takuro Ashie wrote:

>=20
> Hi
>=20
> On 2025/06/27 23:33, via lists.yoctoproject.org wrote:
>=20
>> Also, I should use Chromium, but I see that the Weston keyboard
>> doesn't work. Can I use your virtual keyboard? Is it compatible with
>> both Chromium and GTK3?
>=20
> Please try --enable-wayland-ime option of chromium, it will enable
> text-input-v1 protocol implementation of it.
>=20
> Regards,
>=20
> --
> Takuro Ashie <ashie@clear-code.com>

Is there a way to edit the virtual keyboard dimensions? Also, I find out so=
me bugs when I try to cancel some characters in a GTK entry: even if I pres=
s the cancel key, the character is not deleted, seems like the cursor got l=
ost the last character. Any suggestion?

Thank you,
Matteo

--XID1yMzgaefenqD3f4SU
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>On Sat, Jun 28, 2025 at 01:02 AM, Takuro Ashie wrote:</div>
<div>
<blockquote>Hi<br /><br />On 2025/06/27 23:33, via lists.yoctoproject.org w=
rote:<br />
<blockquote>Also, I should use Chromium, but I see that the Weston keyboard=
 <br />doesn't work. Can I use your virtual keyboard? Is it compatible with=
 <br />both Chromium and GTK3?</blockquote>
Please try --enable-wayland-ime option of chromium, it will enable<br />tex=
t-input-v1 protocol implementation of it.<br /><br />Regards,<br /><br />--=
 <br />Takuro Ashie &lt;ashie@clear-code.com&gt;</blockquote>
<br />Is there a way to edit the virtual keyboard dimensions? Also, I find =
out some bugs when I try to cancel some characters in a GTK entry: even if =
I press the cancel key, the character is not deleted, seems like the cursor=
 got lost the last character. Any suggestion?<br /><br />Thank you,</div>
<div>Matteo</div>

--XID1yMzgaefenqD3f4SU--

