Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3737DC3600C
	for <webhook@archiver.kernel.org>; Tue,  8 Apr 2025 09:48:09 +0000 (UTC)
Received: from smtp-outbound5.duck.com (smtp-outbound5.duck.com [20.67.223.11])
 by mx.groups.io with SMTP id smtpd.web10.70755.1744102707708919446
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Apr 2025 01:58:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@duck.com header.s=postal-KpyQVw header.b=VejP9QSt;
 spf=pass (domain: duck.com, ip: 20.67.223.11, mailfrom: proffesionaladdress2@duck.com)
References: <r40e.1743754517240171829.1oOU@lists.yoctoproject.org> <E63C2FBD-D303-4686-B29D-D8306CB27A80.1@smtp-inbound1.duck.com>
Subject: warn if a variable is not used
MIME-Version: 1.0
X-Rspamd-Bar: -
X-Rspamd-Report: DMARC_POLICY_ALLOW(-0.5) MIME_GOOD(-0.1) R_DKIM_ALLOW(-0.2) R_SPF_ALLOW(-0.2)
X-Rspamd-Score: -1
X-Rspamd-Action: no action
To: yocto at lists yoctoproject org proffesionaladdress2 <yocto@lists.yoctoproject.org>
Received: by smtp-inbound1.duck.com; Tue, 08 Apr 2025 04:58:26 -0400
Message-ID: <9B190FE2-BD37-497B-8A02-5A474EF4FD62.1@smtp-inbound1.duck.com>
Date: Tue, 08 Apr 2025 04:58:26 -0400
From: proffesionaladdress2@duck.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=duck.com; h=From:
 Date: Message-ID: To: Content-Type: MIME-Version: Subject: References;
 q=dns/txt; s=postal-KpyQVw; t=1744102706;
 bh=dhcXm/Cr22sngp+dRITiYKvB+lfag9pMG8mZls/BjHw=;
 b=VejP9QStLp67wFaIO4ceBGQZ5yXHmRfc8EqnqnmHNFWrOyQnhcZaM8/xazihMnARVRdorRFSO
 zeFv+3UNlJ85h4GRR04XOinafgkLXZ686DsBSSho+3+kxzunsziXB5vhYaCyaQ4nJ9RmUuQPm7b
 UDBtHmzItJH6zeF6i80VmRI=
Content-Type: multipart/alternative;
	boundary="=_tk6s5mG6H1DZNNah/GUuYf_="
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Apr 2025 09:48:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65117

--=_tk6s5mG6H1DZNNah/GUuYf_=
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: 7bit

Hello, 

In a .bbappend file, I want to send a warning if a variable is not set/exist and set it to a default value. 
I use BitBake Build Tool Core version 2.0.0. 

If I try to test it like: 

if [[ -z "${MY_VARIABLE}" ]] 

I get an error like: 

Log data follows: 
| DEBUG: Executing shell function do_compile 
| /<path>/run.do_compile.352486: 153: MY_VARIABLE: not found 
| WARNING: exit code 127 from a shell command. 
ERROR: Task (/<path>/rpi-u-boot-scr.bb:do_compile) failed with exit code '1' 

When I use: 
isempty="${@bb.utils.contains('MY_VARIABLE', '', 'false', 'true', d)}" 
bbwarn "isempty=$isempty" 
if [[ $isempty == true ]]; then 
MY_VARIABLE = "value" 
bbwarn "MY_VARIABLE is not defined, used default: ${MY_VARIABLE}" 
else 
bbwarn "?????" 
fi 

it print: 
WARNING: rpi-u-boot-scr-1.0-r0 do_compile: isempty=true 
WARNING: rpi-u-boot-scr-1.0-r0 do_compile: ????? 

I already try with quote or not, but when I test it in a shell by setting the isempty variable it work properly. 

Best regards. 

--=_tk6s5mG6H1DZNNah/GUuYf_=
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"font-family: arial, helvetica, =
sans-serif; font-size: 12pt; color: #000000"><div>Hello,</div><div><br =
data-mce-bogus=3D"1"></div><div>In a .bbappend file, I want to send a =
warning if a variable is not set/exist and set it to a default value.=
</div><div>I use BitBake Build Tool Core version 2.0.0.</div><div><br =
data-mce-bogus=3D"1"></div><div>If I try to test it like:</div><div><br =
data-mce-bogus=3D"1"></div><div>if [[ -z "${MY_VARIABLE}" ]]</div><div><br =
data-mce-bogus=3D"1"></div><div>I get an error like:</div><div><br =
data-mce-bogus=3D"1"></div><div>Log data follows:<br>| DEBUG: Executing =
shell function do_compile<br>| /&lt;path&gt;/run.do_compile.352486: 153: =
MY_VARIABLE: not found<br>| WARNING: exit code 127 from a shell command.=
<br>ERROR: Task (/&lt;path&gt;/rpi-u-boot-scr.bb:do_compile) failed with =
exit code '1'</div><div><br data-mce-bogus=3D"1"></div><div>When I =
use:</div><div>isempty=3D"${@bb.utils.contains('MY_VARIABLE', '', 'false', =
'true', d)}"<br>bbwarn "isempty=3D$isempty"<br>if [[ $isempty =3D=3D true =
]]; then<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  =
MY_VARIABLE =3D "value"<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; bbwarn "MY_VARIABLE is not defined, used default: =
${MY_VARIABLE}"<br>else<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; bbwarn "?????"<br>fi</div><div><br =
data-mce-bogus=3D"1"></div><div>it print:</div><div>WARNING: =
rpi-u-boot-scr-1.0-r0 do_compile: isempty=3Dtrue<br>WARNING: =
rpi-u-boot-scr-1.0-r0 do_compile: ?????</div><div><br =
data-mce-bogus=3D"1"></div><div>I already try with quote or not, but when I=
 test it in a shell by setting the isempty variable it work properly.=
</div><div><br data-mce-bogus=3D"1"></div><div>Best regards.=
</div></div></body></html>

--=_tk6s5mG6H1DZNNah/GUuYf_=--

