Return-Path: <gary@missionsecure.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 733BEC433F5
	for <webhook@archiver.kernel.org>; Fri,  4 Mar 2022 23:02:35 +0000 (UTC)
Subject: Re: suricata: enable lua support
To: yocto@lists.yoctoproject.org
From: "Gary Huband" <gary@missionsecure.com>
X-Originating-Location: Charlottesville, Virginia, US (216.197.64.240)
X-Originating-Platform: Linux Firefox 97
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 04 Mar 2022 15:02:34 -0800
References: 
 <CAMKF1sqMQVeTO_FyyrUWRmV+JjLFH5mxNTvL+JxDgoBrck6V4w@mail.gmail.com>
In-Reply-To: 
 <CAMKF1sqMQVeTO_FyyrUWRmV+JjLFH5mxNTvL+JxDgoBrck6V4w@mail.gmail.com>
Message-ID: <13396.1646434954779482206@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="JL3tD8TKnIQ3IlRcUHpq"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Mar 2022 23:02:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56371

--JL3tD8TKnIQ3IlRcUHpq
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Adding DEPENDS +=3D "lua"=C2=A0 fixed that error.=C2=A0 I'm assuming that a=
llows the configure to find lua.

Now I'm getting a compile error

| /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recipe-s=
ysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld: util-lua-dns.o: in function `Dn=
sGetTxid':
| /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:80: un=
defined reference to `rs_dns_lua_get_tx_id'
| /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recipe-s=
ysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld: util-lua-dns.o: in function `Dn=
sGetAnswerTable':
| /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:125: u=
ndefined reference to `rs_dns_lua_get_answer_table'
| /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recipe-s=
ysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld: util-lua-dns.o: in function `Dn=
sGetAuthorityTable':
| /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:133: u=
ndefined reference to `rs_dns_lua_get_authority_table'
| /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recipe-s=
ysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld: util-lua-dns.o: in function `Dn=
sGetQueryTable':
| /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:117: u=
ndefined reference to `rs_dns_lua_get_query_table'
| /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recipe-s=
ysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld: util-lua-dns.o: in function `Dn=
sGetDnsRrname':
| /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:69: un=
defined reference to `rs_dns_lua_get_rrname'
| /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recipe-s=
ysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld: util-lua-dns.o: in function `Dn=
sGetRcode':
| /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:92: un=
defined reference to `rs_dns_lua_get_rcode'
| collect2: error: ld returned 1 exit status
| Makefile:2118: recipe for target 'suricata' failed
| make[2]: *** [suricata] Error 1

--JL3tD8TKnIQ3IlRcUHpq
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Adding DEPENDS +=3D "lua"&nbsp; fixed that error.&nbsp; I'm assuming tha=
t allows the configure to find lua.</p>
<p>Now I'm getting a compile error</p>
<p>| /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recip=
e-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linu=
x-gnueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld: util-lua-dns.o: in function =
`DnsGetTxid':<br />| /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/ut=
il-lua-dns.c:80: undefined reference to `rs_dns_lua_get_tx_id'<br />| /tmp/=
work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recipe-sysroot-=
native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-gnueabi/=
gcc/arm-poky-linux-gnueabi/9.2.0/ld: util-lua-dns.o: in function `DnsGetAns=
werTable':<br />| /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-=
lua-dns.c:125: undefined reference to `rs_dns_lua_get_answer_table'<br />| =
/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recipe-sys=
root-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-gnu=
eabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld: util-lua-dns.o: in function `DnsG=
etAuthorityTable':<br />| /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/s=
rc/util-lua-dns.c:133: undefined reference to `rs_dns_lua_get_authority_tab=
le'<br />| /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0=
/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-pok=
y-linux-gnueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld: util-lua-dns.o: in fun=
ction `DnsGetQueryTable':<br />| /usr/src/debug/suricata/6.0.3-r0/suricata-=
6.0.3/src/util-lua-dns.c:117: undefined reference to `rs_dns_lua_get_query_=
table'<br />| /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3=
-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-=
poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld: util-lua-dns.o: in =
function `DnsGetDnsRrname':<br />| /usr/src/debug/suricata/6.0.3-r0/suricat=
a-6.0.3/src/util-lua-dns.c:69: undefined reference to `rs_dns_lua_get_rrnam=
e'<br />| /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/=
recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky=
-linux-gnueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld: util-lua-dns.o: in func=
tion `DnsGetRcode':<br />| /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/=
src/util-lua-dns.c:92: undefined reference to `rs_dns_lua_get_rcode'<br />|=
 collect2: error: ld returned 1 exit status<br />| Makefile:2118: recipe fo=
r target 'suricata' failed<br />| make[2]: *** [suricata] Error 1</p>

--JL3tD8TKnIQ3IlRcUHpq--

