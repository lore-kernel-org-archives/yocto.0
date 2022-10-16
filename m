Return-Path: <umtedz@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B64BC433FE
	for <webhook@archiver.kernel.org>; Sun, 16 Oct 2022 22:20:09 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
 by mx.groups.io with SMTP id smtpd.web11.34641.1665958805414925360
 for <yocto@lists.yoctoproject.org>;
 Sun, 16 Oct 2022 15:20:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=AHP1HhOI;
 spf=pass (domain: gmail.com, ip: 209.85.218.49, mailfrom: umtedz@gmail.com)
Received: by mail-ej1-f49.google.com with SMTP id k2so21171950ejr.2
        for <yocto@lists.yoctoproject.org>; Sun, 16 Oct 2022 15:20:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=hkwIiiNVt5LhWKjWMwHkIH5ccqL1znOoyA5xTPQyLP0=;
        b=AHP1HhOIbJlNBsm1MQNES760ovVTPXneI+NPuMSN6zrbMg3X02/F4s6BfyREuyzato
         CNdnumu6/na+6CYD9ZpUnVHer1hwGKBI+ZUHY3Njfy/e14BrTsYpLMJxNjzCBVh9Sd//
         48Jv/AmvyzFxMBlTlbQfZ8AWRSPYi/sSak555ECIS4vuJ7XPB2kvMKAtNMT88q9ob3wn
         cHir507CISZ1aOX46UNmuieydnKKQEdDRAnABuptyf411+bxFjhNoVKUL5qHF12WpcQO
         WRS6ia/+1YGdcWxKN6BjugSeIadu4RU5B18cUfMo3sgErzehhbOIa2pi7O7uZbS0PdNN
         6lkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hkwIiiNVt5LhWKjWMwHkIH5ccqL1znOoyA5xTPQyLP0=;
        b=RCpSLaYTgouejq4dM1/feaSjZi9ZmI4idYSSz/f2LdGLfNirbow+zb/DcWmNKYOQXH
         y04bRP90ziIXWK58hK9nFFqsIAzRgDQGk6XK2FCJkMF7mdXc8dDv6kGmQ/YeWSSoUHaT
         lr/FfX48cHjAqIRU+exqsuVcEP3GfRFSHH4g7OcVrxj/l9de2dhCwIl0i/mR6gtvQCEG
         s5j9ZN6VOgfjfwNG9aW8X4Av3mQhbWKrd6AZhPRZeKoVmK4uY6eFu5p2Gp82m6cVe8j8
         jPiehw8KEOLdLMbA0yebPYT3v401qVTd0CW4YVtwyX46I9TcQMVygw49IH3nldiVNMLi
         7obg==
X-Gm-Message-State: ACrzQf1BUTK6eJt49KrdbL4FiAHilgKQkcOpXGy8VdpbxOUsOb6GEhcw
	JCm6fQM5SBSqXk8cEboXvyc=
X-Google-Smtp-Source: AMsMyM70KTVyLTue9OkF4v52gjCzdL/b6gWb5JN4uJdrtvwwiCgr8Xh+9M04snZamap0MVI2ZxBDPQ==
X-Received: by 2002:a17:907:9485:b0:78e:119f:940 with SMTP id dm5-20020a170907948500b0078e119f0940mr6020499ejc.535.1665958803756;
        Sun, 16 Oct 2022 15:20:03 -0700 (PDT)
Received: from smtpclient.apple ([31.223.36.187])
        by smtp.gmail.com with ESMTPSA id n21-20020a1709067b5500b0078dd4c89781sm5184198ejo.35.2022.10.16.15.20.02
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2022 15:20:03 -0700 (PDT)
From: Umut Ediz <umtedz@gmail.com>
Message-Id: <86CF53C4-35D0-401A-9631-C295B0EF0B47@gmail.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_5445573C-029F-4662-B351-CF33F56917D7"
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: Re: [yocto] Fixing [host-user-contaminated] warning
Date: Mon, 17 Oct 2022 01:20:00 +0300
In-Reply-To: <CA+chaQc1KZz5Bxdt-R+sCcMdhgS0dEwxYfdt+gq3F7uKQUSseA@mail.gmail.com>
Cc: Umut Ediz <umut@ediz.dev>,
 yocto@lists.yoctoproject.org
To: Martin Jansa <martin.jansa@gmail.com>
References: <HKHR.1665947586154153068.khQf@lists.yoctoproject.org>
 <CA+chaQc1KZz5Bxdt-R+sCcMdhgS0dEwxYfdt+gq3F7uKQUSseA@mail.gmail.com>
X-Mailer: Apple Mail (2.3696.120.41.1.1)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 16 Oct 2022 22:20:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58346


--Apple-Mail=_5445573C-029F-4662-B351-CF33F56917D7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

I also tried chown but I am getting permission errors. But I thought =
this should not be the case since these commands are running under fake =
root=E2=80=A6 But I found out this is not the case since these =
operations running in a custom task rather than do_install so fakeroot =
usage should be explicit, afaik. I tried to add fakeroot prefix to the =
related function and updated the task dependency but still I get =
permission errors.

> On 16 Oct 2022, at 22:51, Martin Jansa <martin.jansa@gmail.com> wrote:
>=20
> You can also chown the files after unpacking them (like in =
https://github.com/webOS-ports/meta-webos-ports/commit/9fd17a67cdbed92df13=
a14b002a189b4c6c2d442 =
<https://github.com/webOS-ports/meta-webos-ports/commit/9fd17a67cdbed92df1=
3a14b002a189b4c6c2d442>)
>=20
> On Sun, Oct 16, 2022 at 9:13 PM <umut@ediz.dev <mailto:umut@ediz.dev>> =
wrote:
> Hi,
> I am working on a project that uses some proprietary layers from a 3rd =
party. These layers provide tar archives that include prebuilt binaries =
of some packages and these archives cause host-user-contaminated =
warnings. Since I only have the root user in my target system, and since =
I changed the UID/GID of my build user I assume it is not a =
false-positive. So, I dug a bit to find and resolve the issue and find =
the function that installs binaries. The function only extracts a tar =
archive to the ${D} directory with the command below, nothing else. No =
fakeroot, no management of ownership/permissions.
> tar -xjvf $prebuiltdir/${TARGET}/${PN}/${PN}-binaries.tar -C ${D}
> I tried various options of tar to extract these files with different =
UID and GID with no success.
> How can I solve this issue? I think it would be better if I patch the =
script to use the install command but I am not sure how can I integrate =
that kind of workflow with lots of tar archives that includes lots of =
subdirectories.
>=20
> P.S. : I use an LXC-based non-privileged ubuntu container in Proxmox =
VE as the build host. I don't know if it may affect something but wanted =
to mention it just in case.
>=20
> Best regards,
> Umut Ediz=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58342): =
https://lists.yoctoproject.org/g/yocto/message/58342 =
<https://lists.yoctoproject.org/g/yocto/message/58342>
> Mute This Topic: https://lists.yoctoproject.org/mt/94369702/3617156 =
<https://lists.yoctoproject.org/mt/94369702/3617156>
> Group Owner: yocto+owner@lists.yoctoproject.org =
<mailto:yocto%2Bowner@lists.yoctoproject.org>
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub =
<https://lists.yoctoproject.org/g/yocto/unsub> [Martin.Jansa@gmail.com =
<mailto:Martin.Jansa@gmail.com>]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


--Apple-Mail=_5445573C-029F-4662-B351-CF33F56917D7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D"">I =
also tried chown but I am getting permission errors. But I thought this =
should not be the case since these commands are running under fake =
root=E2=80=A6 But I found out this is not the case since these =
operations running in a custom task rather than do_install so fakeroot =
usage should be explicit, afaik. I tried to add fakeroot prefix to the =
related function and updated the task dependency but still I get =
permission errors.<div class=3D""><div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D"">On 16 Oct 2022, at 22:51, =
Martin Jansa &lt;<a href=3D"mailto:martin.jansa@gmail.com" =
class=3D"">martin.jansa@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D"">You can also chown the files after unpacking them (like =
in&nbsp;<a =
href=3D"https://github.com/webOS-ports/meta-webos-ports/commit/9fd17a67cdb=
ed92df13a14b002a189b4c6c2d442" =
class=3D"">https://github.com/webOS-ports/meta-webos-ports/commit/9fd17a67=
cdbed92df13a14b002a189b4c6c2d442</a>)</div><br class=3D""><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Oct =
16, 2022 at 9:13 PM &lt;<a href=3D"mailto:umut@ediz.dev" =
class=3D"">umut@ediz.dev</a>&gt; wrote:<br class=3D""></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex">Hi,<br class=3D"">I am working =
on a project that uses some proprietary layers from a 3rd party. These =
layers provide tar archives that include prebuilt binaries of some =
packages and these archives cause host-user-contaminated warnings. Since =
I only have the root user in my target system, and since I changed the =
UID/GID of my build user I assume it is not a false-positive. So, I dug =
a bit to find and resolve the issue and find the function that installs =
binaries. The function only extracts a tar archive to the ${D} directory =
with the command below, nothing else. No fakeroot, no management of =
ownership/permissions.<br class=3D"">
<blockquote class=3D"">tar -xjvf =
$prebuiltdir/${TARGET}/${PN}/${PN}-binaries.tar -C ${D}</blockquote>
I tried various options of tar to extract these files with different UID =
and GID with no success.<br class=3D"">How can I solve this issue? I =
think it would be better if I patch the script to use the install =
command but I am not sure how can I integrate that kind of workflow with =
lots of tar archives that includes lots of subdirectories.<br =
class=3D""><br class=3D"">P.S. : I use an LXC-based non-privileged =
ubuntu container in Proxmox VE as the build host. I don't know if it may =
affect something but wanted to mention it just in case.<br class=3D""><br =
class=3D"">Best regards,<br class=3D"">Umut Ediz
<br class=3D"">
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br class=3D"">
Links: You receive all messages sent to this group.<br class=3D"">
View/Reply Online (#58342): <a =
href=3D"https://lists.yoctoproject.org/g/yocto/message/58342" =
rel=3D"noreferrer" target=3D"_blank" =
class=3D"">https://lists.yoctoproject.org/g/yocto/message/58342</a><br =
class=3D"">
Mute This Topic: <a =
href=3D"https://lists.yoctoproject.org/mt/94369702/3617156" =
rel=3D"noreferrer" target=3D"_blank" =
class=3D"">https://lists.yoctoproject.org/mt/94369702/3617156</a><br =
class=3D"">
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" =
target=3D"_blank" class=3D"">yocto+owner@lists.yoctoproject.org</a><br =
class=3D"">
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank" =
class=3D"">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a =
href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank" =
class=3D"">Martin.Jansa@gmail.com</a>]<br class=3D"">
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br class=3D"">
<br class=3D"">
</blockquote></div>
</div></blockquote></div><br class=3D""></div></body></html>=

--Apple-Mail=_5445573C-029F-4662-B351-CF33F56917D7--

