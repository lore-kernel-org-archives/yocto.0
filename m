Return-Path: <jahnavijha14@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37E3CCF07A9
	for <webhook@archiver.kernel.org>; Thu, 10 Oct 2024 05:58:07 +0000 (UTC)
Subject: Yocto build fails when building with package Ppp version 2.5.0.
To: yocto@lists.yoctoproject.org
From: jahnavijha14@gmail.com
X-Originating-Location: Bengaluru, Karnataka, IN (115.112.142.35)
X-Originating-Platform: Windows Chrome 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 09 Oct 2024 22:57:57 -0700
Message-ID: <mVpm.1728539877124215925.Vcux@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="urXt3qLSUVYzPkaxL3q7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Oct 2024 05:58:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64001

--urXt3qLSUVYzPkaxL3q7
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am using yocto Kirkstone to build my image. Kernel version: 5.15.

In order to upgrade package PPP, I added PPP package version 2.5.0 recipe t=
o my custom layer. My aim is to upgrade PPP from 2.4.9( in default kirkston=
e) to 2.5.0.

PPP builds fine( bitbake ppp). But the overall image compilation fails (bit=
bake rpb-console-image).=C2=A0 It fails in Network manager- 1.36.2 recipe f=
ile in do_compile. The error is as follows:

/////////////////////////////////////////////////Error/////////////////////=
/////////////////////////////////////

pppd-plugin.c.o -c ../NetworkManager-1.36.2/src/core/ppp/nm-pppd-plugin.c
| ../NetworkManager-1.36.2/src/core/ppp/nm-pppd-plugin.c: In function 'nm_p=
hasechange':
| ../NetworkManager-1.36.2/src/core/ppp/nm-pppd-plugin.c:128:34: error: 'if=
name' undeclared (first use in this function); did you mean 'rename'?
|=C2=A0=C2=A0 128 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ifindex=
 =3D if_nametoindex(ifname);
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 ^~~~~~
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 rename
| ../NetworkManager-1.36.2/src/core/ppp/nm-pppd-plugin.c:128:34: note: each=
 undeclared identifier is reported only once for each function it appears i=
n
| In file included from ../NetworkManager-1.36.2/src/core/ppp/nm-pppd-plugi=
n.c:14:
| ../NetworkManager-1.36.2/src/core/ppp/nm-pppd-plugin.c: In function 'nm_i=
p_up':
| ../NetworkManager-1.36.2/src/core/ppp/nm-pppd-plugin.c:169:63: error: 'if=
unit' undeclared (first use in this function)
|=C2=A0=C2=A0 169 |=C2=A0=C2=A0=C2=A0=C2=A0 guint32=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 pppd_made_up_address =3D htonl(0x0a404040 + ifunit=
);
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~~~
| ../NetworkManager-1.36.2/src/core/ppp/nm-pppd-plugin.c:189:48: error: 'if=
name' undeclared (first use in this function); did you mean 'rename'?
|=C2=A0=C2=A0 189 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 g_variant_new_string(ifname));
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ^~~~~~
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 rename
| ../NetworkManager-1.36.2/src/core/ppp/nm-pppd-plugin.c: In function 'nm_i=
p6_up':
| ../NetworkManager-1.36.2/src/core/ppp/nm-pppd-plugin.c:295:48: error: 'if=
name' undeclared (first use in this function); did you mean 'rename'?
|=C2=A0=C2=A0 295 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 g_variant_new_string(ifname));
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ^~~~~~
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 rename
| ../NetworkManager-1.36.2/src/core/ppp/nm-pppd-plugin.c: In function 'add_=
ip6_notifier':
| ../NetworkManager-1.36.2/src/core/ppp/nm-pppd-plugin.c:409:9: warning: im=
plicit declaration of function 'add_notifier'; did you mean 'add_ip6_notifi=
er'? [-Wimplicit-function-declaration]
|=C2=A0=C2=A0 409 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 add_not=
ifier(notifier, nm_ip6_up, NULL);
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 ^~~~~~~~~~~~
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 add_ip6_notifier
|
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^
| ../NetworkManager-1.36.2/src/core/ppp/nm-pppd-plugin.c:432:5: error: 'cha=
p_passwd_hook' undeclared (first use in this function)
|=C2=A0=C2=A0 432 |=C2=A0=C2=A0=C2=A0=C2=A0 chap_passwd_hook =3D get_creden=
tials;
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~=
~~~~~
| ../NetworkManager-1.36.2/src/core/ppp/nm-pppd-plugin.c:433:5: error: 'cha=
p_check_hook' undeclared (first use in this function)
|=C2=A0=C2=A0 433 |=C2=A0=C2=A0=C2=A0=C2=A0 chap_check_hook=C2=A0 =3D get_c=
hap_check;
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~=
~~~~
| ../NetworkManager-1.36.2/src/core/ppp/nm-pppd-plugin.c:434:5: error: 'pap=
_passwd_hook' undeclared (first use in this function)
|=C2=A0=C2=A0 434 |=C2=A0=C2=A0=C2=A0=C2=A0 pap_passwd_hook=C2=A0 =3D get_c=
redentials;
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~=
~~~~
| ../NetworkManager-1.36.2/src/core/ppp/nm-pppd-plugin.c:435:5: error: 'pap=
_check_hook' undeclared (first use in this function)
|=C2=A0=C2=A0 435 |=C2=A0=C2=A0=C2=A0=C2=A0 pap_check_hook=C2=A0=C2=A0 =3D =
get_pap_check;
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~=
~~~
| ../NetworkManager-1.36.2/src/core/ppp/nm-pppd-plugin.c:437:19: error: 'ph=
asechange' undeclared (first use in this function); did you mean 'nm_phasec=
hange'?
|=C2=A0=C2=A0 437 |=C2=A0=C2=A0=C2=A0=C2=A0 add_notifier(&phasechange, nm_p=
hasechange_hook, NULL);
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~=
~~~~~~~~~
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 nm=
_phasechange
| ../NetworkManager-1.36.2/src/core/ppp/nm-pppd-plugin.c:438:19: error: 'ip=
_up_notifier' undeclared (first use in this function); did you mean 'add_ip=
6_notifier'?
|=C2=A0=C2=A0 438 |=C2=A0=C2=A0=C2=A0=C2=A0 add_notifier(&ip_up_notifier, n=
m_ip_up, NULL);
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~=
~~~~~~~~~~~~
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ad=
d_ip6_notifier
| ../NetworkManager-1.36.2/src/core/ppp/nm-pppd-plugin.c:439:19: error: 'ex=
itnotify' undeclared (first use in this function); did you mean 'nm_exit_no=
tify'?
|=C2=A0=C2=A0 439 |=C2=A0=C2=A0=C2=A0=C2=A0 add_notifier(&exitnotify, nm_ex=
it_notify, NULL);
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~=
~~~~~~~~
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 nm=
_exit_notify

--urXt3qLSUVYzPkaxL3q7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I am using yocto Kirkstone to build my image. Kernel version: 5.15.</d=
iv>
<div>&nbsp;</div>
<div>In order to upgrade package PPP, I added PPP package version 2.5.0 rec=
ipe to my custom layer. My aim is to upgrade PPP from 2.4.9( in default kir=
kstone) to 2.5.0.&nbsp;</div>
<div>&nbsp;</div>
<div>PPP builds fine( bitbake ppp). But the overall image compilation fails=
 (bitbake rpb-console-image).&nbsp; It fails in Network manager- 1.36.2 rec=
ipe file in do_compile. The error is as follows:</div>
<div>&nbsp;</div>
<div>/////////////////////////////////////////////////Error////////////////=
//////////////////////////////////////////</div>
<div>&nbsp;</div>
<div><span data-teams=3D"true"><span class=3D"ui-provider a b c d e f g h i=
 j k l m n o p q r s t u v w x y z ab ac ae af ag ah ai aj ak" dir=3D"ltr">=
pppd-plugin.c.o -c ../NetworkManager-1.36.2/src/core/ppp/nm-pppd-plugin.c<b=
r />| ../NetworkManager-1.36.2/src/core/ppp/nm-pppd-plugin.c: In function '=
nm_phasechange':<br />| ../NetworkManager-1.36.2/src/core/ppp/nm-pppd-plugi=
n.c:128:34: error: 'ifname' undeclared (first use in this function); did yo=
u mean 'rename'?<br />|&nbsp;&nbsp; 128 |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; ifindex =3D if_nametoindex(ifname);<br />|&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~~=
<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; rename<br />| ../NetworkManager-1.36.2/src/core/ppp/nm-p=
ppd-plugin.c:128:34: note: each undeclared identifier is reported only once=
 for each function it appears in<br />| In file included from ../NetworkMan=
ager-1.36.2/src/core/ppp/nm-pppd-plugin.c:14:<br />| ../NetworkManager-1.36=
.2/src/core/ppp/nm-pppd-plugin.c: In function 'nm_ip_up':<br />| ../Network=
Manager-1.36.2/src/core/ppp/nm-pppd-plugin.c:169:63: error: 'ifunit' undecl=
ared (first use in this function)<br />|&nbsp;&nbsp; 169 |&nbsp;&nbsp;&nbsp=
;&nbsp; guint32&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pppd_made_u=
p_address =3D htonl(0x0a404040 + ifunit);<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; ^~~~~~<br />| ../NetworkManager-1.36.2/src/core/ppp/nm-pppd-plugin=
.c:189:48: error: 'ifname' undeclared (first use in this function); did you=
 mean 'rename'?<br />|&nbsp;&nbsp; 189 |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; g_variant_new_string(ifname)=
);<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~~<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rename<br /=
>| ../NetworkManager-1.36.2/src/core/ppp/nm-pppd-plugin.c: In function 'nm_=
ip6_up':<br />| ../NetworkManager-1.36.2/src/core/ppp/nm-pppd-plugin.c:295:=
48: error: 'ifname' undeclared (first use in this function); did you mean '=
rename'?<br />|&nbsp;&nbsp; 295 |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; g_variant_new_string(ifname));<br /=
>|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; ^~~~~~<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rename<br />| ../N=
etworkManager-1.36.2/src/core/ppp/nm-pppd-plugin.c: In function 'add_ip6_no=
tifier':<br />| ../NetworkManager-1.36.2/src/core/ppp/nm-pppd-plugin.c:409:=
9: warning: implicit declaration of function 'add_notifier'; did you mean '=
add_ip6_notifier'? [-Wimplicit-function-declaration]<br />|&nbsp;&nbsp; 409=
 |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; add_notifier(notifier, n=
m_ip6_up, NULL);<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~~~~~~~~<br />|&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; add_ip6_n=
otifier<br />|<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^<br />| ../Networ=
kManager-1.36.2/src/core/ppp/nm-pppd-plugin.c:432:5: error: 'chap_passwd_ho=
ok' undeclared (first use in this function)<br />|&nbsp;&nbsp; 432 |&nbsp;&=
nbsp;&nbsp;&nbsp; chap_passwd_hook =3D get_credentials;<br />|&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~~~~~~~~~~~~<br />| .=
./NetworkManager-1.36.2/src/core/ppp/nm-pppd-plugin.c:433:5: error: 'chap_c=
heck_hook' undeclared (first use in this function)<br />|&nbsp;&nbsp; 433 |=
&nbsp;&nbsp;&nbsp;&nbsp; chap_check_hook&nbsp; =3D get_chap_check;<br />|&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~~~~~~~~~~=
~<br />| ../NetworkManager-1.36.2/src/core/ppp/nm-pppd-plugin.c:434:5: erro=
r: 'pap_passwd_hook' undeclared (first use in this function)<br />|&nbsp;&n=
bsp; 434 |&nbsp;&nbsp;&nbsp;&nbsp; pap_passwd_hook&nbsp; =3D get_credential=
s;<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ^~~=
~~~~~~~~~~~~<br />| ../NetworkManager-1.36.2/src/core/ppp/nm-pppd-plugin.c:=
435:5: error: 'pap_check_hook' undeclared (first use in this function)<br /=
>|&nbsp;&nbsp; 435 |&nbsp;&nbsp;&nbsp;&nbsp; pap_check_hook&nbsp;&nbsp; =3D=
 get_pap_check;<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nb=
sp;&nbsp; ^~~~~~~~~~~~~~<br />| ../NetworkManager-1.36.2/src/core/ppp/nm-pp=
pd-plugin.c:437:19: error: 'phasechange' undeclared (first use in this func=
tion); did you mean 'nm_phasechange'?<br />|&nbsp;&nbsp; 437 |&nbsp;&nbsp;&=
nbsp;&nbsp; add_notifier(&amp;phasechange, nm_phasechange_hook, NULL);<br /=
>|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^=
~~~~~~~~~~<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; nm_phasechange<br />| ../NetworkManager-1.36.2/src/core/ppp/n=
m-pppd-plugin.c:438:19: error: 'ip_up_notifier' undeclared (first use in th=
is function); did you mean 'add_ip6_notifier'?<br />|&nbsp;&nbsp; 438 |&nbs=
p;&nbsp;&nbsp;&nbsp; add_notifier(&amp;ip_up_notifier, nm_ip_up, NULL);<br =
/>|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
^~~~~~~~~~~~~~<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; add_ip6_notifier<br />| ../NetworkManager-1.36.2/src/core=
/ppp/nm-pppd-plugin.c:439:19: error: 'exitnotify' undeclared (first use in =
this function); did you mean 'nm_exit_notify'?<br />|&nbsp;&nbsp; 439 |&nbs=
p;&nbsp;&nbsp;&nbsp; add_notifier(&amp;exitnotify, nm_exit_notify, NULL);<b=
r />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; ^~~~~~~~~~<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; nm_exit_notify</span></span></div>

--urXt3qLSUVYzPkaxL3q7--

