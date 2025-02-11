Return-Path: <f_l_k@t-online.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF9EEC0219E
	for <webhook@archiver.kernel.org>; Tue, 11 Feb 2025 05:48:17 +0000 (UTC)
Received: from mailout04.t-online.de (mailout04.t-online.de [194.25.134.18])
 by mx.groups.io with SMTP id smtpd.web11.5630.1739252891319758420
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Feb 2025 21:48:11 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: t-online.de, ip: 194.25.134.18, mailfrom: f_l_k@t-online.de)
Received: from fwd87.aul.t-online.de (fwd87.aul.t-online.de [10.223.144.113])
	by mailout04.t-online.de (Postfix) with SMTP id 82025179A;
	Tue, 11 Feb 2025 06:48:09 +0100 (CET)
Received: from [192.168.178.67] ([84.163.35.206]) by fwd87.t-online.de
	with (TLSv1.3:TLS_AES_256_GCM_SHA384 encrypted)
	esmtp id 1thj7w-0OKYIy0; Tue, 11 Feb 2025 06:48:08 +0100
Date: Tue, 11 Feb 2025 06:48:44 +0100
From: Markus Volk <f_l_k@t-online.de>
Subject: Re: [yocto] gnome desktop with kirkstone #kirkstone #gnome
To: yocto@lists.yoctoproject.org, Ankita.AN@exaleapsemi.com
Message-Id: <858IRS.YAZ7V09LQ36C3@t-online.de>
In-Reply-To: <24986.1739252218195376608@lists.yoctoproject.org>
References: <T0Z8NS.TY84FKA36X0S3@t-online.de>
	<24986.1739252218195376608@lists.yoctoproject.org>
X-Mailer: geary/46.0
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="=-vhvdhPkDxwtb2+EF8/hV"
X-TOI-EXPURGATEID: 150726::1739252888-4B7FD99D-56AFECB5/0/0 CLEAN NORMAL
X-TOI-MSGID: 47e48a30-e8a7-4e94-aeaf-0f65f65de929
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Feb 2025 05:48:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64757

--=-vhvdhPkDxwtb2+EF8/hV
Content-Type: text/plain; charset=us-ascii; format=flowed

Looking at the log.do_compile it seems that you need to include cstdint:

/home/integration-team/webkit/sources/build/tmp-glibc/work/riscv64-oe-linux/webkitgtk/2.36.8-r0/webkitgtk-2.36.8/Source/ThirdParty/ANGLE/include/GLSLANG/ShaderVars.h:19:26: 
error: 'uint64_t' does not name a type
   19 | using ShCompileOptions = uint64_t;
      |                          ^~~~~~~~
/home/integration-team/webkit/sources/build/tmp-glibc/work/riscv64-oe-linux/webkitgtk/2.36.8-r0/webkitgtk-2.36.8/Source/ThirdParty/ANGLE/include/GLSLANG/ShaderVars.h:17:1: 
note: 'uint64_t' is defined in header '<cstdint>'; did you forget to 
'#include <cstdint>'?
   16 | #include <vector>
  +++ |+#include <cstdint>
   17 |

On Mon, Feb 10 2025 at 21:36:58 -08:00:00, Ankita.AN@exaleapsemi.com 
wrote:
> Hi,
> Sorry for reopening this conversation, again started working on it 
> now.
> 
> PFA for error log I get while building gnome-session recipe for 
> riscv64(kirkstone).
> 
> Could you please help me on it?
> 
> Thanks


--=-vhvdhPkDxwtb2+EF8/hV
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<div id=3D"geary-body" dir=3D"auto"><div>Looking at the log.do_compile it s=
eems that you need to include cstdint:</div><div><br></div><div>/home/integ=
ration-team/webkit/sources/build/tmp-glibc/work/riscv64-oe-linux/webkitgtk/=
2.36.8-r0/webkitgtk-2.36.8/Source/ThirdParty/ANGLE/include/GLSLANG/ShaderVa=
rs.h:19:26: error: 'uint64_t' does not name a type</div><div>&nbsp; &nbsp;1=
9 | using ShCompileOptions =3D uint64_t;</div><div>&nbsp; &nbsp; &nbsp; | &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;^~~~~~~~</div><div>/home/integration-team/webkit/sources/buil=
d/tmp-glibc/work/riscv64-oe-linux/webkitgtk/2.36.8-r0/webkitgtk-2.36.8/Sour=
ce/ThirdParty/ANGLE/include/GLSLANG/ShaderVars.h:17:1: note: 'uint64_t' is =
defined in header '&lt;cstdint&gt;'; did you forget to '#include &lt;cstdin=
t&gt;'?</div><div>&nbsp; &nbsp;16 | #include &lt;vector&gt;</div><div>&nbsp=
; +++ |+#include &lt;cstdint&gt;</div><div>&nbsp; &nbsp;17 |&nbsp;</div></d=
iv><div id=3D"geary-quote" dir=3D"auto"><br>On Mon, Feb 10 2025 at 21:36:58=
 -08:00:00, Ankita.AN@exaleapsemi.com wrote:<br><blockquote type=3D"cite"><=
div>Hi,</div>
<div>Sorry for reopening this conversation, again started working on it now=
.</div>
<div>&nbsp;</div>
<div>PFA for error log I get while building gnome-session recipe for riscv6=
4(kirkstone).</div>
<div>&nbsp;</div>
<div>Could you please help me on it?</div>
<div>&nbsp;</div>
<div>Thanks</div>
</blockquote></div>
--=-vhvdhPkDxwtb2+EF8/hV--


