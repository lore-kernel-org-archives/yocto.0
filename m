Return-Path: <salahaldeen.altous@yahoo.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6317CED611
	for <webhook@archiver.kernel.org>; Wed,  9 Oct 2024 06:48:37 +0000 (UTC)
Subject: Re: [yocto] How I can update the Yocto SDK incrementally/partially?
To: "Chen Qi" <Qi.Chen@windriver.com>, yocto@lists.yoctoproject.org
From: "salahaldeen.altous@yahoo.com" <salahaldeen.altous@yahoo.com>
X-Originating-Location: Ankara, TR (176.232.20.207)
X-Originating-Platform: Linux Firefox 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 08 Oct 2024 23:48:28 -0700
References: <2fc61685-dd91-405e-8ea4-56d1ecf58c02@windriver.com>
In-Reply-To: <2fc61685-dd91-405e-8ea4-56d1ecf58c02@windriver.com>
Message-ID: <13199.1728456508530107727@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="JCUHFJyBpLFUwaXfMKlD"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Oct 2024 06:48:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63980

--JCUHFJyBpLFUwaXfMKlD
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Qi,

On Tue, Oct 8, 2024 at 07:50 PM, Chen Qi wrote:

>=20
> If I understand it correctly, you want to update your SDK from some
> binary package feeds. I'd say it's possible, because it's basically
> about installing packages into some directory and doing some relocation,
> but you'll need to write some tool to do the update work and place that
> tool in your SDK. There's no official tool in Yocto as far as I know.
> Not sure if someone else has written such a tool.

this is also my thought, and I was think to use opkg after sourcing the sdk=
 script.
But was not working

source path/to/sdk/environment-setup-aarch64-oe-linux
opkg list
* file_mkdir_hier: Cannot create directory `//usr/local/oe-sdk-hardcoded-bu=
ildpath': Permission denied.

I am missing something here!!

Regards,
Salahaldeen

>=20
>=20
> Regards,
> Qi
>=20
> On 10/8/24 16:28, salahaldeen.altous@yahoo.com via
> lists.yoctoproject.org wrote:
>=20
>> Hi All,
>>=20
>> I have the need to update the yocto SDK incrementally without the need
>> to rebuild it every time from scratch.
>> I have the package management ipk enabled in my configuration.
>>=20
>> can I use opkg install after sourcing the SDK script? which
>> requirement I need to get it running?
>> updating the rootfs on the target is working fine, but updating the
>> SDK is not working
>>=20
>> Regards,
>> Salahaldeen
>>=20
>>=20
>=20
>

--JCUHFJyBpLFUwaXfMKlD
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Qi,<br /><br />On Tue, Oct 8, 2024 at 07:50 PM, Chen Qi wrote:</div=
>
<div>
<blockquote>If I understand it correctly, you want to update your SDK from =
some <br />binary package feeds. I'd say it's possible, because it's basica=
lly <br />about installing packages into some directory and doing some relo=
cation, <br />but you'll need to write some tool to do the update work and =
place that <br />tool in your SDK. There's no official tool in Yocto as far=
 as I know. <br />Not sure if someone else has written such a tool.</blockq=
uote>
this is also my thought, and I was think to use opkg after sourcing the sdk=
 script.<br />But was not working<br /><br />source path/to/sdk/environment=
-setup-aarch64-oe-linux<br />opkg list<br /><span class=3D"white-space-pre"=
> </span>* file_mkdir_hier: Cannot create directory `//usr/local/oe-sdk-har=
dcoded-buildpath': Permission denied.<br /><br />I am missing something her=
e!! <br /><br />Regards,<br />Salahaldeen<br /><br />
<blockquote><br />Regards,<br />Qi<br /><br />On 10/8/24 16:28, salahaldeen=
.altous@yahoo.com via <br />lists.yoctoproject.org wrote:<br />
<blockquote>Hi All,<br /><br />I have the need to update the yocto SDK incr=
ementally without the need <br />to rebuild it every time from scratch.<br =
/>I have the package management ipk enabled in my configuration.<br /><br /=
>can I use opkg install after sourcing the SDK script? which <br />requirem=
ent I need to get it running?<br />updating the rootfs on the target is wor=
king fine, but updating the <br />SDK is not working<br /><br />Regards,<br=
 />Salahaldeen<br /><br /></blockquote>
</blockquote>
</div>

--JCUHFJyBpLFUwaXfMKlD--

