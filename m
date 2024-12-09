Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B34E3E7717D
	for <webhook@archiver.kernel.org>; Mon,  9 Dec 2024 11:45:21 +0000 (UTC)
Subject: Re: [yocto] How to install files in root directory
To: "aravind posina" <posinaaravind0205@gmail.com>, yocto@lists.yoctoproject.org
From: "MOHAMMED HASSAN" <hassanchattarki@gmail.com>
X-Originating-Location: Hyderabad, Telangana, IN (183.82.1.74)
X-Originating-Platform: Linux Chrome 130
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 09 Dec 2024 03:45:21 -0800
References: <CALvuYrmW4YabKyAPs43GYOihOeEL67=u7+yy_2EMeawSmPzHQg@mail.gmail.com>
In-Reply-To: <CALvuYrmW4YabKyAPs43GYOihOeEL67=u7+yy_2EMeawSmPzHQg@mail.gmail.com>
Message-ID: <15637.1733744721485146927@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="iETwcA7EkGuR7rrasATL"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 Dec 2024 11:45:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64416

--iETwcA7EkGuR7rrasATL
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

It didnt work for me guys.
I want to place the file in my root home directory.

# Root home directory
ROOT_HOME ??=3D "/root"

if you guys have suggestions for me please let me know. I have tried the fo=
llowing lines below but none worked.

install -d ${D}/${HOME}
install -m 0755 my-file ${D}/${HOME}/my-file

and also tried

install -d ${D}/root
install -m 0755 my-file ${D}/root/my-file

none worked.

Please let me know if they are any more options i can try.

Thanks
Hassan

--iETwcA7EkGuR7rrasATL
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>It didnt work for me guys.</div>
<div>I want to place the file in my root home directory.</div>
<div>&nbsp;</div>
<div># Root home directory<br />ROOT_HOME ??=3D "/root"<br />&nbsp;</div>
<div>if you guys have suggestions for me please let me know. I have tried t=
he following lines below but none worked.</div>
<div>&nbsp;</div>
<div>
<div>&nbsp;</div>
<div><span style=3D"white-space: normal;"><span style=3D"white-space: pre;"=
> </span>install -d ${D}/${HOME}</span></div>
<div>&nbsp;install -m 0755 my-file ${D}/${HOME}/my-file</div>
<div>&nbsp;</div>
<div>and also tried&nbsp;</div>
<div>
<div>&nbsp;</div>
<div><span style=3D"white-space: normal;"><span style=3D"white-space: pre;"=
> </span>install -d ${D}/root</span></div>
<div>&nbsp;install -m 0755 my-file ${D}/root/my-file</div>
<div>&nbsp;</div>
<div>none worked.</div>
<div>&nbsp;</div>
<div>Please let me know if they are any more options i can try.</div>
<div>&nbsp;</div>
<div>Thanks</div>
<div>Hassan</div>
<div>&nbsp;</div>
</div>
</div>

--iETwcA7EkGuR7rrasATL--

