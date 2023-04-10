Return-Path: <anton.antonov@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75C54C76196
	for <webhook@archiver.kernel.org>; Mon, 10 Apr 2023 18:22:31 +0000 (UTC)
Subject: Re: [meta-security][PATCH v3] parsec-service: update from 1.1.0 to 1.2.0-rc1
To: yocto@lists.yoctoproject.org
From: "Anton Antonov" <anton.antonov@arm.com>
X-Originating-Location: Cambridge, England, GB (217.140.99.251)
X-Originating-Platform: Mac Firefox 111
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 10 Apr 2023 11:22:26 -0700
References: <5e3ecec5-14f4-564a-39b4-ebe934be8951@gmail.com>
In-Reply-To: <5e3ecec5-14f4-564a-39b4-ebe934be8951@gmail.com>
Message-ID: <27573.1681150946145803290@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="U6684pvEDJl6RqXZbNfm"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Apr 2023 18:22:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59657

--U6684pvEDJl6RqXZbNfm
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 10, 2023 at 04:17 AM, Armin Kuster wrote:

>=20
> Something in latest master may have introduced another issue, this time
> the runtime testing.=C2=A0 I am see this new error:
>=20
> self.check_packageconfig("TS")
> File
> "/home/akuster/oss/maint/meta-security/meta-parsec/lib/oeqa/runtime/cases=
/parsec.py",
> line 64, in check_packageconfig
> if prov not in self.tc.td['PACKAGECONFIG:pn-parsec-service']:
> KeyError: 'PACKAGECONFIG:pn-parsec-service'
>=20
> Any ideas on how to fix or what might be causing this? I thought I had a
> fix but the test hangs.

The default value of PACKAGECONFIG is not included into tc.td if it's not d=
efined in local.conf for whatever reason.

I will send a fix soon.

Cheers,

Anton

--U6684pvEDJl6RqXZbNfm
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 10, 2023 at 04:17 AM, Armin Kuster wrote:<br />
<blockquote>Something in latest master may have introduced another issue, t=
his time the runtime testing.&nbsp; I am see this new error:<br /><br />&nb=
sp;self.check_packageconfig("TS")<br />&nbsp; File "/home/akuster/oss/maint=
/meta-security/meta-parsec/lib/oeqa/runtime/cases/parsec.py", line 64, in c=
heck_packageconfig<br />&nbsp;&nbsp;&nbsp; if prov not in self.tc.td['PACKA=
GECONFIG:pn-parsec-service']:<br />KeyError: 'PACKAGECONFIG:pn-parsec-servi=
ce'<br /><br />Any ideas on how to fix or what might be causing this? I tho=
ught I had a fix but the test hangs.</blockquote>
<p>The default value of PACKAGECONFIG is not included into tc.td if it's no=
t defined in local.conf for whatever reason.</p>
<p>I will send a fix soon.</p>
<p>&nbsp;</p>
<p>Cheers,</p>
<p>Anton</p>
<p>&nbsp;</p>

--U6684pvEDJl6RqXZbNfm--

