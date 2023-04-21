Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C44BCC7618E
	for <webhook@archiver.kernel.org>; Fri, 21 Apr 2023 04:51:29 +0000 (UTC)
Subject: Re: Unable to solve the initramfs issues
To: yocto@lists.yoctoproject.org
From: "MOHAMMED HASSAN" <hassanchattarki@gmail.com>
X-Originating-Location: Hyderabad, Telangana, IN (183.82.123.98)
X-Originating-Platform: Linux Chrome 112
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 20 Apr 2023 21:51:29 -0700
References: <CAAfyv37+oy35hvu+HgFHeKu8z1j8FpDma2d+WzFkuKhTpnfQ+w@mail.gmail.com>
In-Reply-To: <CAAfyv37+oy35hvu+HgFHeKu8z1j8FpDma2d+WzFkuKhTpnfQ+w@mail.gmail.com>
Message-ID: <23569.1682052689128337687@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="khUbaDr1ZjpxAQufH31Z"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Apr 2023 04:51:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59748

--khUbaDr1ZjpxAQufH31Z
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Merek,
Sorry for the late reply.

>=20
> You didn't add log from flashing where it fails. Can you set
> INITRAMFS_MAXSIZE to only 200M or so? Also from logs it looks like
> you're using amlogic. Can you maybe ask for support from your vendor?

I was able to build the image but the rebooting failed.
I was able to solve the issue by using command CORE_IMAGE_EXTRA_INSTALL_app=
end =3D " nodejs nodejs-npm"; in my local.conf folder.

Though I am not completely why above line worked. Can anyone explain to me =
the reasoning behind it.

Thanks and Regards,
Hassan

--khUbaDr1ZjpxAQufH31Z
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Merek,<br />Sorry for the late reply.<br />
<blockquote>You didn't add log from flashing where it fails. Can you set<br=
 />INITRAMFS_MAXSIZE to only 200M or so? Also from logs it looks like<br />=
you're using amlogic. Can you maybe ask for support from your vendor?</bloc=
kquote>
I was able to build the image but the rebooting failed.<br />I was able to =
solve the issue by using command CORE_IMAGE_EXTRA_INSTALL_append =3D " node=
js nodejs-npm"; in my local.conf folder.<br /><br />
<div>Though I am not completely why above line worked. Can anyone explain t=
o me the reasoning behind it.<br /><br />Thanks and Regards,<br />Hassan</d=
iv>

--khUbaDr1ZjpxAQufH31Z--

