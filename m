Return-Path: <jguittet.opensource@witekio.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89331C5AE59
	for <webhook@archiver.kernel.org>; Thu,  5 Jun 2025 16:07:41 +0000 (UTC)
Subject: systemd - Failed to start up manager => Freezing execution
To: yocto@lists.yoctoproject.org
From: "Joel GUITTET" <jguittet.opensource@witekio.com>
X-Originating-Location: =?UTF-8?B?VsOpbmlzc2lldXgsIEF1dmVyZ25lLVJow7RuZS1BbHBlcywgRlI=?= (78.120.129.156)
X-Originating-Platform: Linux Chrome 137
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 05 Jun 2025 09:07:38 -0700
Message-ID: <sjc5.1749139658955197520.8O3a@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="WeeLkrPmC6YVmOT7WxGL"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Jun 2025 16:07:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65472

--WeeLkrPmC6YVmOT7WxGL
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi!

I'm on Scarthgap, previously using kernel v5.15 and now moving to 6.12.
Build ok and kernel starting, but the following error when reaching the log=
in prompt:

>=20
> [ =C2=A0 =C2=A02.473010] systemd[1]: Failed to allocate notification sock=
et: Address
> family not supported by protocol
> [!!!!!!] Failed to start up manager.
> [ =C2=A0 =C2=A02.521520] systemd[1]: Freezing execution.
> [ =C2=A0263.133407] random: crng init done
>=20

And so I cannot login at all.
We can see the kernel is alive as the random log is displayed after 263 sec=
onds uptime.

What could be wrong there ? I haven't modified the rest of the configuratio=
n, just currently moving to the newer kernel.

Thanks
Jel

--WeeLkrPmC6YVmOT7WxGL
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi!</div>
<div>&nbsp;</div>
<div>I'm on Scarthgap, previously using kernel v5.15 and now moving to 6.12=
.</div>
<div>Build ok and kernel starting, but the following error when reaching th=
e login prompt:</div>
<div>&nbsp;</div>
<blockquote>
<div>[ &nbsp; &nbsp;2.473010] systemd[1]: Failed to allocate notification s=
ocket: Address family not supported by protocol<br />[!!!!!!] Failed to sta=
rt up manager.<br />[ &nbsp; &nbsp;2.521520] systemd[1]: Freezing execution=
.<br />[ &nbsp;263.133407] random: crng init done</div>
</blockquote>
<div>&nbsp;</div>
<div>And so I cannot login at all.</div>
<div>We can see the kernel is alive as the random log is displayed after 26=
3 seconds uptime.</div>
<div>&nbsp;</div>
<div>What could be wrong there ? I haven't modified the rest of the configu=
ration, just currently moving to the newer kernel.</div>
<div>&nbsp;</div>
<div>Thanks</div>
<div>Jel</div>

--WeeLkrPmC6YVmOT7WxGL--

