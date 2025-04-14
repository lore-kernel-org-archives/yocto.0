Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CC5DC369A2
	for <webhook@archiver.kernel.org>; Mon, 14 Apr 2025 14:11:43 +0000 (UTC)
Received: from smtp-outbound3.duck.com (smtp-outbound3.duck.com [20.67.221.10])
 by mx.groups.io with SMTP id smtpd.web10.50463.1744639073402937352
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Apr 2025 06:57:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@duck.com header.s=postal-KpyQVw header.b=hgpWmfEn;
 spf=pass (domain: duck.com, ip: 20.67.221.10, mailfrom: proffesionaladdress2@duck.com)
References: <r40e.1743754517240171829.1oOU@lists.yoctoproject.org> <E63C2FBD-D303-4686-B29D-D8306CB27A80.1@smtp-inbound1.duck.com> <DC0C7CC4-DC00-435D-AF68-749C79388DDD.1@smtp-inbound1.duck.com> <aa127e87-0a7f-4c5a-9467-675d1cf1df03@gmail.com> <7A2D6367-3CD1-460F-9655-69A8B0D980A7.1@smtp-inbound1.duck.com> <A1FCA99A-D1F4-45C5-9174-3D1F7F2D8082.1@smtp-inbound1.duck.com> <5efb98da-5bd9-447d-b193-48d9de275bb8@cherry.de> <8417B008-2B4E-42D4-B5A6-E7D31B7D6D3D.1@smtp-inbound1.duck.com>
Subject: Re: [yocto] warn if a variable is not used
MIME-Version: 1.0
X-Rspamd-Bar: -
X-Rspamd-Report: DMARC_POLICY_ALLOW(-0.5) MIME_GOOD(-0.1) R_DKIM_ALLOW(-0.2) R_SPF_ALLOW(-0.2)
X-Rspamd-Score: -1
X-Rspamd-Action: no action
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: yocto at lists yoctoproject org proffesionaladdress2 <yocto@lists.yoctoproject.org>,
 proffesionaladdress2 <proffesionaladdress2@duck.com>,
 Gyorgy Sarvari <skandigraun@gmail.com>
Received: by smtp-inbound1.duck.com; Mon, 14 Apr 2025 09:57:51 -0400
Message-ID: <2D0C5EB6-59FA-4A6B-BF59-1A632367228F.1@smtp-inbound1.duck.com>
Date: Mon, 14 Apr 2025 09:57:51 -0400
From: proffesionaladdress2@duck.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=duck.com; h=From:
 Date: Message-ID: Cc: To: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Subject: References; q=dns/txt; s=postal-KpyQVw;
 t=1744639071; bh=VBo7muDD83qZ/UG5BV87NKRO4QcBa0AG63w9ifQOirc=;
 b=hgpWmfEnBp3QjdFOe6pWtv79+ybGGK355Uu7HWL31X7uXSLVaRbCk//uWub+uCyte5n49xYfl
 1+pCadusqdvIlZXSayQQadO0ag1mHAfMGMD5ND1d8LsWbuGevSKyQnNcduHOuW8jP2GZulcI3qy
 6LBpGAfkogpbdun/k1032Zg=
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Apr 2025 14:11:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65160

Thank you for reply, I also tried the [ ] syntax without success.

I made it like following, but it print a lot of warning with BitBake Build =
Tool Core version 2.0.0 (the ":=3D" doesn't expand once in .bb file?).
In a check_variable.bbclass:

# warn_and_set_variable_default function take as parameters, the BitBake =
datastore "d", the variable to check "var" and the value to set if the =
variable "var" is empty.
# It shall be set to a variable like: MY_VAR :=3D "${@warn_and_set_variable=
_default(d, 'MY_VAR', "default")}"
# to avoid multiple variable expansion according to bitbake documentation:
# https://docs.yoctoproject.org/bitbake/bitbake-user-manual/bitbake-user-ma=
nual-metadata.html#inline-python-variable-expansion
def warn_and_set_variable_default(d, var, defaultvalue):
    variable_value =3D d.getVar(var)
    if not variable_value:
        bb.warn('The variable %s is empty or not defined, it will be set to=
 "%s"' % (var, defaultvalue))
        return defaultvalue
    else:
        return variable_value

# fail_if_variable_empty function take as parameters, the BitBake datastore=
 "d", the variable to check "var".
# It shall be set to a variable like warn_and_set_variable_default function=
.
def fail_if_variable_empty(d, var):
    variable_value =3D d.getVar(var)
    if not variable_value:
        bb.fatal('The variable %s is empty and shall be set' %var)
        return None
    else:
        return variable_value




Then in recipe:

include classes/check_variable.bbclass

# Parse mandatory variables
MY_VAR_MANDATORY_PARSED :=3D "${@fail_if_variable_empty(d, =
'MY_VAR_MANDATORY')}"

# Parse optional variables
MY_VAR_OPTIONAL_PARSED :=3D "${@warn_and_set_variable_default(d, =
'MY_VAR_OPTIONAL', 'default')}"


#usage
do_install:append() {
      sed -i "s#@MY_VAR_MANDATORY@#\"${MY_VAR_MANDATORY_PARSED}\"#g" =
${D}${bindir}/myfile.file
      sed -i "s#@MY_VAR_OPTIONAL@#\"${MY_VAR_OPTIONAL_PARSED}\"#g" =
${D}${bindir}/myfile.file
}

And in local.conf (to avoid error from bbfatal):

MY_VAR_MANDATORY=3D"deadbeef"


it will print 14 times for my recipe, like:
WARNING: The variable MY_VAR_OPTIONAL is empty or not defined, it will be =
set to "default"
WARNING: The variable MY_VAR_OPTIONAL is empty or not defined, it will be =
set to "default"
WARNING: The variable MY_VAR_OPTIONAL is empty or not defined, it will be =
set to "default"
WARNING: The variable MY_VAR_OPTIONAL is empty or not defined, it will be =
set to "default"
WARNING: The variable MY_VAR_OPTIONAL is empty or not defined, it will be =
set to "default"
WARNING: The variable MY_VAR_OPTIONAL is empty or not defined, it will be =
set to "default"
WARNING: The variable MY_VAR_OPTIONAL is empty or not defined, it will be =
set to "default"
WARNING: The variable MY_VAR_OPTIONAL is empty or not defined, it will be =
set to "default"
WARNING: The variable MY_VAR_OPTIONAL is empty or not defined, it will be =
set to "default"
WARNING: The variable MY_VAR_OPTIONAL is empty or not defined, it will be =
set to "default"
WARNING: The variable MY_VAR_OPTIONAL is empty or not defined, it will be =
set to "default"
WARNING: The variable MY_VAR_OPTIONAL is empty or not defined, it will be =
set to "default"
WARNING: The variable MY_VAR_OPTIONAL is empty or not defined, it will be =
set to "default"
WARNING: The variable MY_VAR_OPTIONAL is empty or not defined, it will be =
set to "default"

----- Mail original -----
De: "Quentin Schulz" <quentin.schulz_at_cherry.de_proffesionaladdress2@duck=
.com>
=C3=80: "yocto at lists yoctoproject org proffesionaladdress2" =
<yocto_at_lists.yoctoproject.org_proffesionaladdress2@duck.com>, =
"proffesionaladdress2" <proffesionaladdress2@duck.com>, "Gyorgy Sarvari" =
<skandigraun_at_gmail.com_proffesionaladdress2@duck.com>
Envoy=C3=A9: Lundi 14 Avril 2025 12:58:57
Objet: Re: [yocto] warn if a variable is not used

Hi,

On 4/8/25 3:12 PM, proffesionaladdress2 via lists.yoctoproject.org wrote:
> Thank you, but branch is never reached because the previous condition is =
never true in this code (and I don't know why).
> Even if bbwarn print 'WARNING: rpi-u-boot-scr-1.0-r0 do_compile: =
isempty=3Dtrue'.
>=20
> isempty=3D"${@bb.utils.contains('MY_VARIABLE', '', 'false', 'true', d)}"
> bbwarn "isempty=3D$isempty"
> if [[ $isempty =3D=3D true ]]; then

This syntax is not supported by BitBake, please use POSIX condition =
here=20
instead. (i.e. not the [[ ]], but [ ]).

Cheers,
Quentin


