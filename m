Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04D30C433F5
	for <webhook@archiver.kernel.org>; Mon, 28 Mar 2022 06:39:57 +0000 (UTC)
Subject: firewalld isssue  #yocto
To: yocto@lists.yoctoproject.org
From: "sateesh m" <sateesh0457@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (122.166.120.168)
X-Originating-Platform: Linux Chrome 95
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 27 Mar 2022 23:39:56 -0700
Message-ID: <iTgi.1648449596640581316.TvLE@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="HTmDo2eGfxbVnwjg2q4x"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Mar 2022 06:39:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56565

--HTmDo2eGfxbVnwjg2q4x
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,

I have built a custom image core-image-base on riscv target machine install=
ed nftables,firewalld,JSON packages support. I am using firewalld_0.9.3 sou=
rces depends nftables-python is present. But I am getting error python-nfta=
bles. Can you please guide me on what dependent I missed here? If suppose f=
irewalld should work means, What packages should=C2=A0 I install?

But while running firewalld status is always failed mode.
Using $firewall-cmd --reload=C2=A0 I am facing a=C2=A0 problem

Error: COMMAND_FAILED: 'python-nftables' failed: internal:0:0-0: Error: Cou=
ld not process rule: No such file or directory

JSON blob:
{"nftables": [{"metainfo": {"json_schema_version": 1}}, {"add": {"chain": {=
"family": "inet", "table": "firewalld", "name": "raw_PREROUTING", "type": "=
filter", "hook": "prerouting", "prio": -290}}}, {"add": {"chain": {"family"=
: "inet", "table": "firewalld", "name": "mangle_PREROUTING", "type": "filte=
r", "hook": "prerouting", "prio": -140}}}, {"add": {"chain": {"family": "in=
et", "table": "firewalld", "name": "mangle_PREROUTING_POLICIES_pre"}}}, {"a=
dd": {"rule": {"family": "inet", "table": "firewalld", "chain": "mangle_PRE=
ROUTING", "expr": [{"jump": {"target": "mangle_PREROUTING_POLICIES_pre"}}]}=
}}, {"add": {"chain": {"family": "inet", "table": "firewalld", "name": "man=
gle_PREROUTING_ZONES"}}}, {"add": {"rule": {"family": "inet", "table": "fir=
ewalld", "chain": "mangle_PREROUTING", "expr": [{"jump": {"target": "mangle=
_PREROUTING_ZONES"}}]}}}, {"add": {"chain": {"family": "inet", "table": "fi=
rewalld", "name": "mangle_PREROUTING_POLICIES_post"}}}, {"add": {"rule": {"=
family": "inet", "table": "firewalld", "chain": "mangle_PREROUTING", "expr"=
: [{"jump": {"target": "mangle_PREROUTING_POLICIES_post"}}]}}}, {"add": {"c=
hain": {"family": "ip", "table": "firewalld", "name": "nat_PREROUTING", "ty=
pe": "nat", "hook": "prerouting", "prio": -90}}}, {"add": {"chain": {"famil=
y": "ip", "table": "firewalld", "name": "nat_PREROUTING_POLICIES_pre"}}}, {=
"add": {"rule": {"family": "ip", "table": "firewalld", "chain": "nat_PREROU=
TING", "expr": [{"jump": {"target": "nat_PREROUTING_POLICIES_pre"}}]}}}, {"=
add": {"chain": {"family": "ip", "table": "firewalld", "name": "nat_PREROUT=
ING_ZONES"}}}, {"add": {"rule": {"family": "ip", "table": "firewalld", "cha=
in": "nat_PREROUTING", "expr": [{"jump": {"target": "nat_PREROUTING_ZONES"}=
}]}}}, {"add": {"chain": {"family": "ip", "table": "firewalld", "name": "na=
t_PREROUTING_POLICIES_post"}}}, {"add": {"rule": {"family": "ip", "table": =
"firewalld", "chain": "nat_PREROUTING", "expr": [{"jump": {"target": "nat_P=
REROUTING_POLICIES_post"}}]}}}, {"add": {"chain": {"family": "ip", "table":=
 "firewalld", "name": "nat_POSTROUTING", "type": "nat", "hook": "postroutin=
g", "prio": 110}}}, {"add": {"chain": {"family": "ip", "table": "firewalld"=
, "name": "nat_POSTROUTING_POLICIES_pre"}}}, {"add": {"rule": {"family": "i=
p", "table": "firewalld", "chain": "nat_POSTROUTING", "expr": [{"jump": {"t=
arget": "nat_POSTROUTING_POLICIES_pre"}}]}}}, {"add": {"chain": {"family": =
"ip", "table": "firewalld", "name": "nat_POSTROUTING_ZONES"}}}, {"add": {"r=
ule": {"family": "ip", "table": "firewalld", "chain": "nat_POSTROUTING", "e=
xpr": [{"jump": {"target": "nat_POSTROUTING_ZONES"}}]}}}, {"add": {"chain":=
 {"family": "ip", "table": "firewalld", "name": "nat_POSTROUTING_POLICIES_p=
ost"}}}, {"add": {"rule": {"family": "ip", "table": "firewalld", "chain": "=
nat_POSTROUTING", "expr": [{"jump": {"target": "nat_POSTROUTING_POLICIES_po=
st"}}]}}}, {"add": {"chain": {"family": "ip6", "table": "firewalld", "name"=
: "nat_PREROUTING", "type": "nat", "hook": "prerouting", "prio": -90}}}, {"=
add": {"chain": {"family": "ip6", "table": "firewalld", "name": "nat_PREROU=
TING_POLICIES_pre"}}}, {"add": {"rule": {"family": "ip6", "table": "firewal=
ld", "chain": "nat_PREROUTING", "expr": [{"jump": {"target": "nat_PREROUTIN=
G_POLICIES_pre"}}]}}}, {"add": {"chain": {"family": "ip6", "table": "firewa=
lld", "name": "nat_PREROUTING_ZONES"}}}, {"add": {"rule": {"family": "ip6",=
 "table": "firewalld", "chain": "nat_PREROUTING", "expr": [{"jump": {"targe=
t": "nat_PREROUTING_ZONES"}}]}}}, {"add": {"chain": {"family": "ip6", "tabl=
e": "firewalld", "name": "nat_PREROUTING_POLICIES_post"}}}, {"add": {"rule"=
: {"family": "ip6", "table": "firewalld", "chain": "nat_PREROUTING", "expr"=
: [{"jump": {"target": "nat_PREROUTING_POLICIES_post"}}]}}}, {"add": {"chai=
n": {"family": "ip6", "table": "firewalld", "name": "nat_POSTROUTING", "typ=
e": "nat", "hook": "postrouting", "prio": 110}}}, {"add": {"chain": {"famil=
y": "ip6", "table": "firewalld", "name": "nat_POSTROUTING_POLICIES_pre"}}},=
 {"add": {"rule": {"family": "ip6", "table": "firewalld", "chain": "nat_POS=
TROUTING", "expr": [{"jump": {"target": "nat_POSTROUTING_POLICIES_pre"}}]}}=
}, {"add": {"chain": {"family": "ip6", "table": "firewalld", "name": "nat_P=
OSTROUTING_ZONES"}}}, {"add": {"rule": {"family": "ip6", "table": "firewall=
d", "chain": "nat_POSTROUTING", "expr": [{"jump": {"target": "nat_POSTROUTI=
NG_ZONES"}}]}}}, {"add": {"chain": {"family": "ip6", "table": "firewalld", =
"name": "nat_POSTROUTING_POLICIES_post"}}}, {"add": {"rule": {"family": "ip=
6", "table": "firewalld", "chain": "nat_POSTROUTING", "expr": [{"jump": {"t=
arget": "nat_POSTROUTING_POLICIES_post"}}]}}}, {"add": {"chain": {"family":=
 "inet", "table": "firewalld", "name": "filter_INPUT", "type": "filter", "h=
ook": "input", "prio": 10}}}, {"add": {"chain": {"family": "inet", "table":=
 "firewalld", "name": "filter_FORWARD", "type": "filter", "hook": "forward"=
, "prio": 10}}}, {"add": {"chain": {"family": "inet", "table": "firewalld",=
 "name": "filter_OUTPUT", "type": "filter", "hook": "output", "prio": 10}}}=
, {"add": {"rule": {"family": "inet", "table": "firewalld", "chain": "filte=
r_INPUT", "expr": [{"match": {"left": {"ct": {"key": "state"}}, "op": "in",=
 "right": {"set": ["established", "related"]}}}, {"accept": null}]}}}, {"ad=
d": {"rule": {"family": "inet", "table": "firewalld", "chain": "filter_INPU=
T", "expr": [{"match": {"left": {"ct": {"key": "status"}}, "op": "in", "rig=
ht": "dnat"}}, {"accept": null}]}}}, {"add": {"rule": {"family": "inet", "t=
able": "firewalld", "chain": "filter_INPUT", "expr": [{"match": {"left": {"=
meta": {"key": "iifname"}}, "op": "=3D=3D", "right": "lo"}}, {"accept": nul=
l}]}}}, {"add": {"chain": {"family": "inet", "table": "firewalld", "name": =
"filter_INPUT_POLICIES_pre"}}}, {"add": {"rule": {"family": "inet", "table"=
: "firewalld", "chain": "filter_INPUT", "expr": [{"jump": {"target": "filte=
r_INPUT_POLICIES_pre"}}]}}}, {"add": {"chain": {"family": "inet", "table": =
"firewalld", "name": "filter_INPUT_ZONES"}}}, {"add": {"rule": {"family": "=
inet", "table": "firewalld", "chain": "filter_INPUT", "expr": [{"jump": {"t=
arget": "filter_INPUT_ZONES"}}]}}}, {"add": {"chain": {"family": "inet", "t=
able": "firewalld", "name": "filter_INPUT_POLICIES_post"}}}, {"add": {"rule=
": {"family": "inet", "table": "firewalld", "chain": "filter_INPUT", "expr"=
: [{"jump": {"target": "filter_INPUT_POLICIES_post"}}]}}}, {"add": {"rule":=
 {"family": "inet", "table": "firewalld", "chain": "filter_INPUT", "expr": =
[{"match": {"left": {"ct": {"key": "state"}}, "op": "in", "right": {"set": =
["invalid"]}}}, {"drop": null}]}}}, {"add": {"rule": {"family": "inet", "ta=
ble": "firewalld", "chain": "filter_INPUT", "expr": [{"reject": {"type": "i=
cmpx", "expr": "admin-prohibited"}}]}}}, {"add": {"rule": {"family": "inet"=
, "table": "firewalld", "chain": "filter_FORWARD", "expr": [{"match": {"lef=
t": {"ct": {"key": "state"}}, "op": "in", "right": {"set": ["established", =
"related"]}}}, {"accept": null}]}}}, {"add": {"rule": {"family": "inet", "t=
able": "firewalld", "chain": "filter_FORWARD", "expr": [{"match": {"left": =
{"ct": {"key": "status"}}, "op": "in", "right": "dnat"}}, {"accept": null}]=
}}}, {"add": {"rule": {"family": "inet", "table": "firewalld", "chain": "fi=
lter_FORWARD", "expr": [{"match": {"left": {"meta": {"key": "iifname"}}, "o=
p": "=3D=3D", "right": "lo"}}, {"accept": null}]}}}, {"add": {"chain": {"fa=
mily": "inet", "table": "firewalld", "name": "filter_FORWARD_POLICIES_pre"}=
}}, {"add": {"rule": {"family": "inet", "table": "firewalld", "chain": "fil=
ter_FORWARD", "expr": [{"jump": {"target": "filter_FORWARD_POLICIES_pre"}}]=
}}}, {"add": {"chain": {"family": "inet", "table": "firewalld", "name": "fi=
lter_FORWARD_IN_ZONES"}}}, {"add": {"rule": {"family": "inet", "table": "fi=
rewalld", "chain": "filter_FORWARD", "expr": [{"jump": {"target": "filter_F=
ORWARD_IN_ZONES"}}]}}}, {"add": {"chain": {"family": "inet", "table": "fire=
walld", "name": "filter_FORWARD_OUT_ZONES"}}}, {"add": {"rule": {"family": =
"inet", "table": "firewalld", "chain": "filter_FORWARD", "expr": [{"jump": =
{"target": "filter_FORWARD_OUT_ZONES"}}]}}}, {"add": {"chain": {"family": "=
inet", "table": "firewalld", "name": "filter_FORWARD_POLICIES_post"}}}, {"a=
dd": {"rule": {"family": "inet", "table": "firewalld", "chain": "filter_FOR=
WARD", "expr": [{"jump": {"target": "filter_FORWARD_POLICIES_post"}}]}}}, {=
"add": {"rule": {"family": "inet", "table": "firewalld", "chain": "filter_F=
ORWARD", "expr": [{"match": {"left": {"ct": {"key": "state"}}, "op": "in", =
"right": {"set": ["invalid"]}}}, {"drop": null}]}}}, {"add": {"rule": {"fam=
ily": "inet", "table": "firewalld", "chain": "filter_FORWARD", "expr": [{"r=
eject": {"type": "icmpx", "expr": "admin-prohibited"}}]}}}, {"add": {"rule"=
: {"family": "inet", "table": "firewalld", "chain": "filter_OUTPUT", "expr"=
: [{"match": {"left": {"meta": {"key": "oifname"}}, "op": "=3D=3D", "right"=
: "lo"}}, {"accept": null}]}}}, {"add": {"chain": {"family": "inet", "table=
": "firewalld", "name": "filter_OUTPUT_POLICIES_pre"}}}, {"add": {"rule": {=
"family": "inet", "table": "firewalld", "chain": "filter_OUTPUT", "expr": [=
{"jump": {"target": "filter_OUTPUT_POLICIES_pre"}}]}}}, {"add": {"chain": {=
"family": "inet", "table": "firewalld", "name": "filter_OUTPUT_POLICIES_pos=
t"}}}, {"add": {"rule": {"family": "inet", "table": "firewalld", "chain": "=
filter_OUTPUT", "expr": [{"jump": {"target": "filter_OUTPUT_POLICIES_post"}=
}]}}}, {"insert": {"rule": {"family": "inet", "table": "firewalld", "chain"=
: "raw_PREROUTING", "expr": [{"match": {"left": {"meta": {"key": "nfproto"}=
}, "op": "=3D=3D", "right": "ipv6"}}, {"match": {"left": {"fib": {"flags": =
["saddr", "iif"], "result": "oif"}}, "op": "=3D=3D", "right": false}}, {"dr=
op": null}]}}}, {"insert": {"rule": {"family": "inet", "table": "firewalld"=
, "chain": "raw_PREROUTING", "expr": [{"match": {"left": {"payload": {"prot=
ocol": "icmpv6", "field": "type"}}, "op": "=3D=3D", "right": {"set": ["nd-r=
outer-advert", "nd-neighbor-solicit"]}}}, {"accept": null}]}}}, {"add": {"r=
ule": {"family": "inet", "table": "firewalld", "chain": "filter_OUTPUT", "i=
ndex": 0, "expr": [{"match": {"left": {"payload": {"protocol": "ip6", "fiel=
d": "daddr"}}, "op": "=3D=3D", "right": {"set": [{"prefix": {"addr": "::0.0=
.0.0", "len": 96}}, {"prefix": {"addr": "::ffff:0.0.0.0", "len": 96}}, {"pr=
efix": {"addr": "2002:0000::", "len": 24}}, {"prefix": {"addr": "2002:0a00:=
:", "len": 24}}, {"prefix": {"addr": "2002:7f00::", "len": 24}}, {"prefix":=
 {"addr": "2002:ac10::", "len": 28}}, {"prefix": {"addr": "2002:c0a8::", "l=
en": 32}}, {"prefix": {"addr": "2002:a9fe::", "len": 32}}, {"prefix": {"add=
r": "2002:e000::", "len": 19}}]}}}, {"reject": {"type": "icmpv6", "expr": "=
addr-unreachable"}}]}}}, {"add": {"rule": {"family": "inet", "table": "fire=
walld", "chain": "filter_FORWARD", "index": 2, "expr": [{"match": {"left": =
{"payload": {"protocol": "ip6", "field": "daddr"}}, "op": "=3D=3D", "right"=
: {"set": [{"prefix": {"addr": "::0.0.0.0", "len": 96}}, {"prefix": {"addr"=
: "::ffff:0.0.0.0", "len": 96}}, {"prefix": {"addr": "2002:0000::", "len": =
24}}, {"prefix": {"addr": "2002:0a00::", "len": 24}}, {"prefix": {"addr": "=
2002:7f00::", "len": 24}}, {"prefix": {"addr": "2002:ac10::", "len": 28}}, =
{"prefix": {"addr": "2002:c0a8::", "len": 32}}, {"prefix": {"addr": "2002:a=
9fe::", "len": 32}}, {"prefix": {"addr": "2002:e000::", "len": 19}}]}}}, {"=
reject": {"type": "icmpv6", "expr": "addr-unreachable"}}]}}}, {"add": {"cha=
in": {"family": "inet", "table": "firewalld", "name": "filter_IN_public"}}}=
, {"add": {"chain": {"family": "inet", "table": "firewalld", "name": "filte=
r_IN_public_pre"}}}, {"add": {"chain": {"family": "inet", "table": "firewal=
ld", "name": "filter_IN_public_log"}}}, {"add": {"chain": {"family": "inet"=
, "table": "firewalld", "name": "filter_IN_public_deny"}}}, {"add": {"chain=
": {"family": "inet", "table": "firewalld", "name": "filter_IN_public_allow=
"}}}, {"add": {"chain": {"family": "inet", "table": "firewalld", "name": "f=
ilter_IN_public_post"}}}, {"add": {"rule": {"family": "inet", "table": "fir=
ewalld", "chain": "filter_IN_public", "expr": [{"jump": {"target": "filter_=
IN_public_pre"}}]}}}, {"add": {"rule": {"family": "inet", "table": "firewal=
ld", "chain": "filter_IN_public", "expr": [{"jump": {"target": "filter_IN_p=
ublic_log"}}]}}}, {"add": {"rule": {"family": "inet", "table": "firewalld",=
 "chain": "filter_IN_public", "expr": [{"jump": {"target": "filter_IN_publi=
c_deny"}}]}}}, {"add": {"rule": {"family": "inet", "table": "firewalld", "c=
hain": "filter_IN_public", "expr": [{"jump": {"target": "filter_IN_public_a=
llow"}}]}}}, {"add": {"rule": {"family": "inet", "table": "firewalld", "cha=
in": "filter_IN_public", "expr": [{"jump": {"target": "filter_IN_public_pos=
t"}}]}}}, {"add": {"rule": {"family": "inet", "table": "firewalld", "chain"=
: "filter_IN_public_allow", "expr": [{"match": {"left": {"payload": {"proto=
col": "tcp", "field": "dport"}}, "op": "=3D=3D", "right": 22}}, {"match": {=
"left": {"ct": {"key": "state"}}, "op": "in", "right": {"set": ["new", "unt=
racked"]}}}, {"accept": null}]}}}, {"add": {"rule": {"family": "inet", "tab=
le": "firewalld", "chain": "filter_IN_public_allow", "expr": [{"match": {"l=
eft": {"payload": {"protocol": "ip6", "field": "daddr"}}, "op": "=3D=3D", "=
right": {"prefix": {"addr": "fe80::", "len": 64}}}}, {"match": {"left": {"p=
ayload": {"protocol": "udp", "field": "dport"}}, "op": "=3D=3D", "right": 5=
46}}, {"match": {"left": {"ct": {"key": "state"}}, "op": "in", "right": {"s=
et": ["new", "untracked"]}}}, {"accept": null}]}}}, {"add": {"chain": {"fam=
ily": "inet", "table": "firewalld", "name": "filter_FWDO_public"}}}, {"add"=
: {"chain": {"family": "inet", "table": "firewalld", "name": "filter_FWDO_p=
ublic_pre"}}}, {"add": {"chain": {"family": "inet", "table": "firewalld", "=
name": "filter_FWDO_public_log"}}}, {"add": {"chain": {"family": "inet", "t=
able": "firewalld", "name": "filter_FWDO_public_deny"}}}, {"add": {"chain":=
 {"family": "inet", "table": "firewalld", "name": "filter_FWDO_public_allow=
"}}}, {"add": {"chain": {"family": "inet", "table": "firewalld", "name": "f=
ilter_FWDO_public_post"}}}, {"add": {"rule": {"family": "inet", "table": "f=
irewalld", "chain": "filter_FWDO_public", "expr": [{"jump": {"target": "fil=
ter_FWDO_public_pre"}}]}}}, {"add": {"rule": {"family": "inet", "table": "f=
irewalld", "chain": "filter_FWDO_public", "expr": [{"jump": {"target": "fil=
ter_FWDO_public_log"}}]}}}, {"add": {"rule": {"family": "inet", "table": "f=
irewalld", "chain": "filter_FWDO_public", "expr": [{"jump": {"target": "fil=
ter_FWDO_public_deny"}}]}}}, {"add": {"rule": {"family": "inet", "table": "=
firewalld", "chain": "filter_FWDO_public", "expr": [{"jump": {"target": "fi=
lter_FWDO_public_allow"}}]}}}, {"add": {"rule": {"family": "inet", "table":=
 "firewalld", "chain": "filter_FWDO_public", "expr": [{"jump": {"target": "=
filter_FWDO_public_post"}}]}}}, {"add": {"chain": {"family": "ip", "table":=
 "firewalld", "name": "nat_POST_public"}}}, {"add": {"chain": {"family": "i=
p", "table": "firewalld", "name": "nat_POST_public_pre"}}}, {"add": {"chain=
": {"family": "ip", "table": "firewalld", "name": "nat_POST_public_log"}}},=
 {"add": {"chain": {"family": "ip", "table": "firewalld", "name": "nat_POST=
_public_deny"}}}, {"add": {"chain": {"family": "ip", "table": "firewalld", =
"name": "nat_POST_public_allow"}}}, {"add": {"chain": {"family": "ip", "tab=
le": "firewalld", "name": "nat_POST_public_post"}}}, {"add": {"rule": {"fam=
ily": "ip", "table": "firewalld", "chain": "nat_POST_public", "expr": [{"ju=
mp": {"target": "nat_POST_public_pre"}}]}}}, {"add": {"rule": {"family": "i=
p", "table": "firewalld", "chain": "nat_POST_public", "expr": [{"jump": {"t=
arget": "nat_POST_public_log"}}]}}}, {"add": {"rule": {"family": "ip", "tab=
le": "firewalld", "chain": "nat_POST_public", "expr": [{"jump": {"target": =
"nat_POST_public_deny"}}]}}}, {"add": {"rule": {"family": "ip", "table": "f=
irewalld", "chain": "nat_POST_public", "expr": [{"jump": {"target": "nat_PO=
ST_public_allow"}}]}}}, {"add": {"rule": {"family": "ip", "table": "firewal=
ld", "chain": "nat_POST_public", "expr": [{"jump": {"target": "nat_POST_pub=
lic_post"}}]}}}, {"add": {"chain": {"family": "ip6", "table": "firewalld", =
"name": "nat_POST_public"}}}, {"add": {"chain": {"family": "ip6", "table": =
"firewalld", "name": "nat_POST_public_pre"}}}, {"add": {"chain": {"family":=
 "ip6", "table": "firewalld", "name": "nat_POST_public_log"}}}, {"add": {"c=
hain": {"family": "ip6", "table": "firewalld", "name": "nat_POST_public_den=
y"}}}, {"add": {"chain": {"family": "ip6", "table": "firewalld", "name": "n=
at_POST_public_allow"}}}, {"add": {"chain": {"family": "ip6", "table": "fir=
ewalld", "name": "nat_POST_public_post"}}}, {"add": {"rule": {"family": "ip=
6", "table": "firewalld", "chain": "nat_POST_public", "expr": [{"jump": {"t=
arget": "nat_POST_public_pre"}}]}}}, {"add": {"rule": {"family": "ip6", "ta=
ble": "firewalld", "chain": "nat_POST_public", "expr": [{"jump": {"target":=
 "nat_POST_public_log"}}]}}}, {"add": {"rule": {"family": "ip6", "table": "=
firewalld", "chain": "nat_POST_public", "expr": [{"jump": {"target": "nat_P=
OST_public_deny"}}]}}}, {"add": {"rule": {"family": "ip6", "table": "firewa=
lld", "chain": "nat_POST_public", "expr": [{"jump": {"target": "nat_POST_pu=
blic_allow"}}]}}}, {"add": {"rule": {"family": "ip6", "table": "firewalld",=
 "chain": "nat_POST_public", "expr": [{"jump": {"target": "nat_POST_public_=
post"}}]}}}, {"add": {"chain": {"family": "inet", "table": "firewalld", "na=
me": "filter_FWDI_public"}}}, {"add": {"chain": {"family": "inet", "table":=
 "firewalld", "name": "filter_FWDI_public_pre"}}}, {"add": {"chain": {"fami=
ly": "inet", "table": "firewalld", "name": "filter_FWDI_public_log"}}}, {"a=
dd": {"chain": {"family": "inet", "table": "firewalld", "name": "filter_FWD=
I_public_deny"}}}, {"add": {"chain": {"family": "inet", "table": "firewalld=
", "name": "filter_FWDI_public_allow"}}}, {"add": {"chain": {"family": "ine=
t", "table": "firewalld", "name": "filter_FWDI_public_post"}}}, {"add": {"r=
ule": {"family": "inet", "table": "firewalld", "chain": "filter_FWDI_public=
", "expr": [{"jump": {"target": "filter_FWDI_public_pre"}}]}}}, {"add": {"r=
ule": {"family": "inet", "table": "firewalld", "chain": "filter_FWDI_public=
", "expr": [{"jump": {"target": "filter_FWDI_public_log"}}]}}}, {"add": {"r=
ule": {"family": "inet", "table": "firewalld", "chain": "filter_FWDI_public=
", "expr": [{"jump": {"target": "filter_FWDI_public_deny"}}]}}}, {"add": {"=
rule": {"family": "inet", "table": "firewalld", "chain": "filter_FWDI_publi=
c", "expr": [{"jump": {"target": "filter_FWDI_public_allow"}}]}}}, {"add": =
{"rule": {"family": "inet", "table": "firewalld", "chain": "filter_FWDI_pub=
lic", "expr": [{"jump": {"target": "filter_FWDI_public_post"}}]}}}, {"add":=
 {"chain": {"family": "ip", "table": "firewalld", "name": "nat_PRE_public"}=
}}, {"add": {"chain": {"family": "ip", "table": "firewalld", "name": "nat_P=
RE_public_pre"}}}, {"add": {"chain": {"family": "ip", "table": "firewalld",=
 "name": "nat_PRE_public_log"}}}, {"add": {"chain": {"family": "ip", "table=
": "firewalld", "name": "nat_PRE_public_deny"}}}, {"add": {"chain": {"famil=
y": "ip", "table": "firewalld", "name": "nat_PRE_public_allow"}}}, {"add": =
{"chain": {"family": "ip", "table": "firewalld", "name": "nat_PRE_public_po=
st"}}}, {"add": {"rule": {"family": "ip", "table": "firewalld", "chain": "n=
at_PRE_public", "expr": [{"jump": {"target": "nat_PRE_public_pre"}}]}}}, {"=
add": {"rule": {"family": "ip", "table": "firewalld", "chain": "nat_PRE_pub=
lic", "expr": [{"jump": {"target": "nat_PRE_public_log"}}]}}}, {"add": {"ru=
le": {"family": "ip", "table": "firewalld", "chain": "nat_PRE_public", "exp=
r": [{"jump": {"target": "nat_PRE_public_deny"}}]}}}, {"add": {"rule": {"fa=
mily": "ip", "table": "firewalld", "chain": "nat_PRE_public", "expr": [{"ju=
mp": {"target": "nat_PRE_public_allow"}}]}}}, {"add": {"rule": {"family": "=
ip", "table": "firewalld", "chain": "nat_PRE_public", "expr": [{"jump": {"t=
arget": "nat_PRE_public_post"}}]}}}, {"add": {"chain": {"family": "ip6", "t=
able": "firewalld", "name": "nat_PRE_public"}}}, {"add": {"chain": {"family=
": "ip6", "table": "firewalld", "name": "nat_PRE_public_pre"}}}, {"add": {"=
chain": {"family": "ip6", "table": "firewalld", "name": "nat_PRE_public_log=
"}}}, {"add": {"chain": {"family": "ip6", "table": "firewalld", "name": "na=
t_PRE_public_deny"}}}, {"add": {"chain": {"family": "ip6", "table": "firewa=
lld", "name": "nat_PRE_public_allow"}}}, {"add": {"chain": {"family": "ip6"=
, "table": "firewalld", "name": "nat_PRE_public_post"}}}, {"add": {"rule": =
{"family": "ip6", "table": "firewalld", "chain": "nat_PRE_public", "expr": =
[{"jump": {"target": "nat_PRE_public_pre"}}]}}}, {"add": {"rule": {"family"=
: "ip6", "table": "firewalld", "chain": "nat_PRE_public", "expr": [{"jump":=
 {"target": "nat_PRE_public_log"}}]}}}, {"add": {"rule": {"family": "ip6", =
"table": "firewalld", "chain": "nat_PRE_public", "expr": [{"jump": {"target=
": "nat_PRE_public_deny"}}]}}}, {"add": {"rule": {"family": "ip6", "table":=
 "firewalld", "chain": "nat_PRE_public", "expr": [{"jump": {"target": "nat_=
PRE_public_allow"}}]}}}, {"add": {"rule": {"family": "ip6", "table": "firew=
alld", "chain": "nat_PRE_public", "expr": [{"jump": {"target": "nat_PRE_pub=
lic_post"}}]}}}, {"add": {"chain": {"family": "inet", "table": "firewalld",=
 "name": "mangle_PRE_public"}}}, {"add": {"chain": {"family": "inet", "tabl=
e": "firewalld", "name": "mangle_PRE_public_pre"}}}, {"add": {"chain": {"fa=
mily": "inet", "table": "firewalld", "name": "mangle_PRE_public_log"}}}, {"=
add": {"chain": {"family": "inet", "table": "firewalld", "name": "mangle_PR=
E_public_deny"}}}, {"add": {"chain": {"family": "inet", "table": "firewalld=
", "name": "mangle_PRE_public_allow"}}}, {"add": {"chain": {"family": "inet=
", "table": "firewalld", "name": "mangle_PRE_public_post"}}}, {"add": {"rul=
e": {"family": "inet", "table": "firewalld", "chain": "mangle_PRE_public", =
"expr": [{"jump": {"target": "mangle_PRE_public_pre"}}]}}}, {"add": {"rule"=
: {"family": "inet", "table": "firewalld", "chain": "mangle_PRE_public", "e=
xpr": [{"jump": {"target": "mangle_PRE_public_log"}}]}}}, {"add": {"rule": =
{"family": "inet", "table": "firewalld", "chain": "mangle_PRE_public", "exp=
r": [{"jump": {"target": "mangle_PRE_public_deny"}}]}}}, {"add": {"rule": {=
"family": "inet", "table": "firewalld", "chain": "mangle_PRE_public", "expr=
": [{"jump": {"target": "mangle_PRE_public_allow"}}]}}}, {"add": {"rule": {=
"family": "inet", "table": "firewalld", "chain": "mangle_PRE_public", "expr=
": [{"jump": {"target": "mangle_PRE_public_post"}}]}}}, {"add": {"rule": {"=
family": "inet", "table": "firewalld", "chain": "filter_IN_public", "index"=
: 4, "expr": [{"match": {"left": {"meta": {"key": "l4proto"}}, "op": "=3D=
=3D", "right": {"set": ["icmp", "icmpv6"]}}}, {"accept": null}]}}}, {"add":=
 {"rule": {"family": "inet", "table": "firewalld", "chain": "filter_FWDI_pu=
blic", "index": 4, "expr": [{"match": {"left": {"meta": {"key": "l4proto"}}=
, "op": "=3D=3D", "right": {"set": ["icmp", "icmpv6"]}}}, {"accept": null}]=
}}}, {"add": {"rule": {"family": "inet", "table": "firewalld", "chain": "fi=
lter_INPUT_ZONES", "expr": [{"goto": {"target": "filter_IN_public"}}]}}}, {=
"add": {"rule": {"family": "inet", "table": "firewalld", "chain": "filter_F=
ORWARD_OUT_ZONES", "expr": [{"goto": {"target": "filter_FWDO_public"}}]}}},=
 {"add": {"rule": {"family": "ip", "table": "firewalld", "chain": "nat_POST=
ROUTING_ZONES", "expr": [{"goto": {"target": "nat_POST_public"}}]}}}, {"add=
": {"rule": {"family": "ip6", "table": "firewalld", "chain": "nat_POSTROUTI=
NG_ZONES", "expr": [{"goto": {"target": "nat_POST_public"}}]}}}, {"add": {"=
rule": {"family": "inet", "table": "firewalld", "chain": "filter_FORWARD_IN=
_ZONES", "expr": [{"goto": {"target": "filter_FWDI_public"}}]}}}, {"add": {=
"rule": {"family": "ip", "table": "firewalld", "chain": "nat_PREROUTING_ZON=
ES", "expr": [{"goto": {"target": "nat_PRE_public"}}]}}}, {"add": {"rule": =
{"family": "ip6", "table": "firewalld", "chain": "nat_PREROUTING_ZONES", "e=
xpr": [{"goto": {"target": "nat_PRE_public"}}]}}}, {"add": {"rule": {"famil=
y": "inet", "table": "firewalld", "chain": "mangle_PREROUTING_ZONES", "expr=
": [{"goto": {"target": "mangle_PRE_public"}}]}}}, {"add": {"chain": {"fami=
ly": "inet", "table": "firewalld", "name": "filter_IN_policy_allow-host-ipv=
6"}}}, {"add": {"chain": {"family": "inet", "table": "firewalld", "name": "=
filter_IN_policy_allow-host-ipv6_pre"}}}, {"add": {"chain": {"family": "ine=
t", "table": "firewalld", "name": "filter_IN_policy_allow-host-ipv6_log"}}}=
, {"add": {"chain": {"family": "inet", "table": "firewalld", "name": "filte=
r_IN_policy_allow-host-ipv6_deny"}}}, {"add": {"chain": {"family": "inet", =
"table": "firewalld", "name": "filter_IN_policy_allow-host-ipv6_allow"}}}, =
{"add": {"chain": {"family": "inet", "table": "firewalld", "name": "filter_=
IN_policy_allow-host-ipv6_post"}}}, {"add": {"rule": {"family": "inet", "ta=
ble": "firewalld", "chain": "filter_IN_policy_allow-host-ipv6", "expr": [{"=
jump": {"target": "filter_IN_policy_allow-host-ipv6_pre"}}]}}}, {"add": {"r=
ule": {"family": "inet", "table": "firewalld", "chain": "filter_IN_policy_a=
llow-host-ipv6", "expr": [{"jump": {"target": "filter_IN_policy_allow-host-=
ipv6_log"}}]}}}, {"add": {"rule": {"family": "inet", "table": "firewalld", =
"chain": "filter_IN_policy_allow-host-ipv6", "expr": [{"jump": {"target": "=
filter_IN_policy_allow-host-ipv6_deny"}}]}}}, {"add": {"rule": {"family": "=
inet", "table": "firewalld", "chain": "filter_IN_policy_allow-host-ipv6", "=
expr": [{"jump": {"target": "filter_IN_policy_allow-host-ipv6_allow"}}]}}},=
 {"add": {"rule": {"family": "inet", "table": "firewalld", "chain": "filter=
_IN_policy_allow-host-ipv6", "expr": [{"jump": {"target": "filter_IN_policy=
_allow-host-ipv6_post"}}]}}}, {"add": {"chain": {"family": "ip", "table": "=
firewalld", "name": "nat_PRE_policy_allow-host-ipv6"}}}, {"add": {"chain": =
{"family": "ip", "table": "firewalld", "name": "nat_PRE_policy_allow-host-i=
pv6_pre"}}}, {"add": {"chain": {"family": "ip", "table": "firewalld", "name=
": "nat_PRE_policy_allow-host-ipv6_log"}}}, {"add": {"chain": {"family": "i=
p", "table": "firewalld", "name": "nat_PRE_policy_allow-host-ipv6_deny"}}},=
 {"add": {"chain": {"family": "ip", "table": "firewalld", "name": "nat_PRE_=
policy_allow-host-ipv6_allow"}}}, {"add": {"chain": {"family": "ip", "table=
": "firewalld", "name": "nat_PRE_policy_allow-host-ipv6_post"}}}, {"add": {=
"rule": {"family": "ip", "table": "firewalld", "chain": "nat_PRE_policy_all=
ow-host-ipv6", "expr": [{"jump": {"target": "nat_PRE_policy_allow-host-ipv6=
_pre"}}]}}}, {"add": {"rule": {"family": "ip", "table": "firewalld", "chain=
": "nat_PRE_policy_allow-host-ipv6", "expr": [{"jump": {"target": "nat_PRE_=
policy_allow-host-ipv6_log"}}]}}}, {"add": {"rule": {"family": "ip", "table=
": "firewalld", "chain": "nat_PRE_policy_allow-host-ipv6", "expr": [{"jump"=
: {"target": "nat_PRE_policy_allow-host-ipv6_deny"}}]}}}, {"add": {"rule": =
{"family": "ip", "table": "firewalld", "chain": "nat_PRE_policy_allow-host-=
ipv6", "expr": [{"jump": {"target": "nat_PRE_policy_allow-host-ipv6_allow"}=
}]}}}, {"add": {"rule": {"family": "ip", "table": "firewalld", "chain": "na=
t_PRE_policy_allow-host-ipv6", "expr": [{"jump": {"target": "nat_PRE_policy=
_allow-host-ipv6_post"}}]}}}, {"add": {"chain": {"family": "ip6", "table": =
"firewalld", "name": "nat_PRE_policy_allow-host-ipv6"}}}, {"add": {"chain":=
 {"family": "ip6", "table": "firewalld", "name": "nat_PRE_policy_allow-host=
-ipv6_pre"}}}, {"add": {"chain": {"family": "ip6", "table": "firewalld", "n=
ame": "nat_PRE_policy_allow-host-ipv6_log"}}}, {"add": {"chain": {"family":=
 "ip6", "table": "firewalld", "name": "nat_PRE_policy_allow-host-ipv6_deny"=
}}}, {"add": {"chain": {"family": "ip6", "table": "firewalld", "name": "nat=
_PRE_policy_allow-host-ipv6_allow"}}}, {"add": {"chain": {"family": "ip6", =
"table": "firewalld", "name": "nat_PRE_policy_allow-host-ipv6_post"}}}, {"a=
dd": {"rule": {"family": "ip6", "table": "firewalld", "chain": "nat_PRE_pol=
icy_allow-host-ipv6", "expr": [{"jump": {"target": "nat_PRE_policy_allow-ho=
st-ipv6_pre"}}]}}}, {"add": {"rule": {"family": "ip6", "table": "firewalld"=
, "chain": "nat_PRE_policy_allow-host-ipv6", "expr": [{"jump": {"target": "=
nat_PRE_policy_allow-host-ipv6_log"}}]}}}, {"add": {"rule": {"family": "ip6=
", "table": "firewalld", "chain": "nat_PRE_policy_allow-host-ipv6", "expr":=
 [{"jump": {"target": "nat_PRE_policy_allow-host-ipv6_deny"}}]}}}, {"add": =
{"rule": {"family": "ip6", "table": "firewalld", "chain": "nat_PRE_policy_a=
llow-host-ipv6", "expr": [{"jump": {"target": "nat_PRE_policy_allow-host-ip=
v6_allow"}}]}}}, {"add": {"rule": {"family": "ip6", "table": "firewalld", "=
chain": "nat_PRE_policy_allow-host-ipv6", "expr": [{"jump": {"target": "nat=
_PRE_policy_allow-host-ipv6_post"}}]}}}, {"add": {"chain": {"family": "inet=
", "table": "firewalld", "name": "mangle_PRE_policy_allow-host-ipv6"}}}, {"=
add": {"chain": {"family": "inet", "table": "firewalld", "name": "mangle_PR=
E_policy_allow-host-ipv6_pre"}}}, {"add": {"chain": {"family": "inet", "tab=
le": "firewalld", "name": "mangle_PRE_policy_allow-host-ipv6_log"}}}, {"add=
": {"chain": {"family": "inet", "table": "firewalld", "name": "mangle_PRE_p=
olicy_allow-host-ipv6_deny"}}}, {"add": {"chain": {"family": "inet", "table=
": "firewalld", "name": "mangle_PRE_policy_allow-host-ipv6_allow"}}}, {"add=
": {"chain": {"family": "inet", "table": "firewalld", "name": "mangle_PRE_p=
olicy_allow-host-ipv6_post"}}}, {"add": {"rule": {"family": "inet", "table"=
: "firewalld", "chain": "mangle_PRE_policy_allow-host-ipv6", "expr": [{"jum=
p": {"target": "mangle_PRE_policy_allow-host-ipv6_pre"}}]}}}, {"add": {"rul=
e": {"family": "inet", "table": "firewalld", "chain": "mangle_PRE_policy_al=
low-host-ipv6", "expr": [{"jump": {"target": "mangle_PRE_policy_allow-host-=
ipv6_log"}}]}}}, {"add": {"rule": {"family": "inet", "table": "firewalld", =
"chain": "mangle_PRE_policy_allow-host-ipv6", "expr": [{"jump": {"target": =
"mangle_PRE_policy_allow-host-ipv6_deny"}}]}}}, {"add": {"rule": {"family":=
 "inet", "table": "firewalld", "chain": "mangle_PRE_policy_allow-host-ipv6"=
, "expr": [{"jump": {"target": "mangle_PRE_policy_allow-host-ipv6_allow"}}]=
}}}, {"add": {"rule": {"family": "inet", "table": "firewalld", "chain": "ma=
ngle_PRE_policy_allow-host-ipv6", "expr": [{"jump": {"target": "mangle_PRE_=
policy_allow-host-ipv6_post"}}]}}}, {"insert": {"rule": {"family": "inet", =
"table": "firewalld", "chain": "filter_INPUT_POLICIES_pre", "expr": [{"jump=
": {"target": "filter_IN_policy_allow-host-ipv6"}}]}}}, {"insert": {"rule":=
 {"family": "ip", "table": "firewalld", "chain": "nat_PREROUTING_POLICIES_p=
re", "expr": [{"jump": {"target": "nat_PRE_policy_allow-host-ipv6"}}]}}}, {=
"insert": {"rule": {"family": "ip6", "table": "firewalld", "chain": "nat_PR=
EROUTING_POLICIES_pre", "expr": [{"jump": {"target": "nat_PRE_policy_allow-=
host-ipv6"}}]}}}, {"insert": {"rule": {"family": "inet", "table": "firewall=
d", "chain": "mangle_PREROUTING_POLICIES_pre", "expr": [{"jump": {"target":=
 "mangle_PRE_policy_allow-host-ipv6"}}]}}}, {"add": {"rule": {"family": "in=
et", "table": "firewalld", "chain": "filter_IN_policy_allow-host-ipv6_allow=
", "expr": [{"match": {"left": {"meta": {"key": "nfproto"}}, "op": "=3D=3D"=
, "right": "ipv6"}}, {"match": {"left": {"payload": {"protocol": "icmpv6", =
"field": "type"}}, "op": "=3D=3D", "right": "nd-neighbor-advert"}}, {"accep=
t": null}]}}}, {"add": {"rule": {"family": "inet", "table": "firewalld", "c=
hain": "filter_IN_policy_allow-host-ipv6_allow", "expr": [{"match": {"left"=
: {"meta": {"key": "nfproto"}}, "op": "=3D=3D", "right": "ipv6"}}, {"match"=
: {"left": {"payload": {"protocol": "icmpv6", "field": "type"}}, "op": "=3D=
=3D", "right": "nd-neighbor-solicit"}}, {"accept": null}]}}}, {"add": {"rul=
e": {"family": "inet", "table": "firewalld", "chain": "filter_IN_policy_all=
ow-host-ipv6_allow", "expr": [{"match": {"left": {"meta": {"key": "nfproto"=
}}, "op": "=3D=3D", "right": "ipv6"}}, {"match": {"left": {"payload": {"pro=
tocol": "icmpv6", "field": "type"}}, "op": "=3D=3D", "right": "nd-router-ad=
vert"}}, {"accept": null}]}}}, {"add": {"rule": {"family": "inet", "table":=
 "firewalld", "chain": "filter_IN_policy_allow-host-ipv6_allow", "expr": [{=
"match": {"left": {"meta": {"key": "nfproto"}}, "op": "=3D=3D", "right": "i=
pv6"}}, {"match": {"left": {"payload": {"protocol": "icmpv6", "field": "typ=
e"}}, "op": "=3D=3D", "right": "nd-redirect"}}, {"accept": null}]}}}]}

--
Regards,
Sateesh

--HTmDo2eGfxbVnwjg2q4x
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,<br /><br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 I have built a custom image core-image-base on riscv target machine instal=
led nftables,firewalld,JSON packages support. I am using firewalld_0.9.3 so=
urces depends nftables-python is present. But I am getting error python-nft=
ables. Can you please guide me on what dependent I missed here? If suppose =
firewalld should work means, What packages should&nbsp; I install?&nbsp;&nb=
sp;<br /><br />But while running firewalld status is always failed mode.&nb=
sp;&nbsp;<br />Using $firewall-cmd --reload&nbsp; I am facing a&nbsp; probl=
em<br /><br />
<div>Error: COMMAND_FAILED: 'python-nftables' failed: internal:0:0-0: Error=
: Could not process rule: No such file or directory</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>JSON blob:</div>
<div>{"nftables": [{"metainfo": {"json_schema_version": 1}}, {"add": {"chai=
n": {"family": "inet", "table": "firewalld", "name": "raw_PREROUTING", "typ=
e": "filter", "hook": "prerouting", "prio": -290}}}, {"add": {"chain": {"fa=
mily": "inet", "table": "firewalld", "name": "mangle_PREROUTING", "type": "=
filter", "hook": "prerouting", "prio": -140}}}, {"add": {"chain": {"family"=
: "inet", "table": "firewalld", "name": "mangle_PREROUTING_POLICIES_pre"}}}=
, {"add": {"rule": {"family": "inet", "table": "firewalld", "chain": "mangl=
e_PREROUTING", "expr": [{"jump": {"target": "mangle_PREROUTING_POLICIES_pre=
"}}]}}}, {"add": {"chain": {"family": "inet", "table": "firewalld", "name":=
 "mangle_PREROUTING_ZONES"}}}, {"add": {"rule": {"family": "inet", "table":=
 "firewalld", "chain": "mangle_PREROUTING", "expr": [{"jump": {"target": "m=
angle_PREROUTING_ZONES"}}]}}}, {"add": {"chain": {"family": "inet", "table"=
: "firewalld", "name": "mangle_PREROUTING_POLICIES_post"}}}, {"add": {"rule=
": {"family": "inet", "table": "firewalld", "chain": "mangle_PREROUTING", "=
expr": [{"jump": {"target": "mangle_PREROUTING_POLICIES_post"}}]}}}, {"add"=
: {"chain": {"family": "ip", "table": "firewalld", "name": "nat_PREROUTING"=
, "type": "nat", "hook": "prerouting", "prio": -90}}}, {"add": {"chain": {"=
family": "ip", "table": "firewalld", "name": "nat_PREROUTING_POLICIES_pre"}=
}}, {"add": {"rule": {"family": "ip", "table": "firewalld", "chain": "nat_P=
REROUTING", "expr": [{"jump": {"target": "nat_PREROUTING_POLICIES_pre"}}]}}=
}, {"add": {"chain": {"family": "ip", "table": "firewalld", "name": "nat_PR=
EROUTING_ZONES"}}}, {"add": {"rule": {"family": "ip", "table": "firewalld",=
 "chain": "nat_PREROUTING", "expr": [{"jump": {"target": "nat_PREROUTING_ZO=
NES"}}]}}}, {"add": {"chain": {"family": "ip", "table": "firewalld", "name"=
: "nat_PREROUTING_POLICIES_post"}}}, {"add": {"rule": {"family": "ip", "tab=
le": "firewalld", "chain": "nat_PREROUTING", "expr": [{"jump": {"target": "=
nat_PREROUTING_POLICIES_post"}}]}}}, {"add": {"chain": {"family": "ip", "ta=
ble": "firewalld", "name": "nat_POSTROUTING", "type": "nat", "hook": "postr=
outing", "prio": 110}}}, {"add": {"chain": {"family": "ip", "table": "firew=
alld", "name": "nat_POSTROUTING_POLICIES_pre"}}}, {"add": {"rule": {"family=
": "ip", "table": "firewalld", "chain": "nat_POSTROUTING", "expr": [{"jump"=
: {"target": "nat_POSTROUTING_POLICIES_pre"}}]}}}, {"add": {"chain": {"fami=
ly": "ip", "table": "firewalld", "name": "nat_POSTROUTING_ZONES"}}}, {"add"=
: {"rule": {"family": "ip", "table": "firewalld", "chain": "nat_POSTROUTING=
", "expr": [{"jump": {"target": "nat_POSTROUTING_ZONES"}}]}}}, {"add": {"ch=
ain": {"family": "ip", "table": "firewalld", "name": "nat_POSTROUTING_POLIC=
IES_post"}}}, {"add": {"rule": {"family": "ip", "table": "firewalld", "chai=
n": "nat_POSTROUTING", "expr": [{"jump": {"target": "nat_POSTROUTING_POLICI=
ES_post"}}]}}}, {"add": {"chain": {"family": "ip6", "table": "firewalld", "=
name": "nat_PREROUTING", "type": "nat", "hook": "prerouting", "prio": -90}}=
}, {"add": {"chain": {"family": "ip6", "table": "firewalld", "name": "nat_P=
REROUTING_POLICIES_pre"}}}, {"add": {"rule": {"family": "ip6", "table": "fi=
rewalld", "chain": "nat_PREROUTING", "expr": [{"jump": {"target": "nat_PRER=
OUTING_POLICIES_pre"}}]}}}, {"add": {"chain": {"family": "ip6", "table": "f=
irewalld", "name": "nat_PREROUTING_ZONES"}}}, {"add": {"rule": {"family": "=
ip6", "table": "firewalld", "chain": "nat_PREROUTING", "expr": [{"jump": {"=
target": "nat_PREROUTING_ZONES"}}]}}}, {"add": {"chain": {"family": "ip6", =
"table": "firewalld", "name": "nat_PREROUTING_POLICIES_post"}}}, {"add": {"=
rule": {"family": "ip6", "table": "firewalld", "chain": "nat_PREROUTING", "=
expr": [{"jump": {"target": "nat_PREROUTING_POLICIES_post"}}]}}}, {"add": {=
"chain": {"family": "ip6", "table": "firewalld", "name": "nat_POSTROUTING",=
 "type": "nat", "hook": "postrouting", "prio": 110}}}, {"add": {"chain": {"=
family": "ip6", "table": "firewalld", "name": "nat_POSTROUTING_POLICIES_pre=
"}}}, {"add": {"rule": {"family": "ip6", "table": "firewalld", "chain": "na=
t_POSTROUTING", "expr": [{"jump": {"target": "nat_POSTROUTING_POLICIES_pre"=
}}]}}}, {"add": {"chain": {"family": "ip6", "table": "firewalld", "name": "=
nat_POSTROUTING_ZONES"}}}, {"add": {"rule": {"family": "ip6", "table": "fir=
ewalld", "chain": "nat_POSTROUTING", "expr": [{"jump": {"target": "nat_POST=
ROUTING_ZONES"}}]}}}, {"add": {"chain": {"family": "ip6", "table": "firewal=
ld", "name": "nat_POSTROUTING_POLICIES_post"}}}, {"add": {"rule": {"family"=
: "ip6", "table": "firewalld", "chain": "nat_POSTROUTING", "expr": [{"jump"=
: {"target": "nat_POSTROUTING_POLICIES_post"}}]}}}, {"add": {"chain": {"fam=
ily": "inet", "table": "firewalld", "name": "filter_INPUT", "type": "filter=
", "hook": "input", "prio": 10}}}, {"add": {"chain": {"family": "inet", "ta=
ble": "firewalld", "name": "filter_FORWARD", "type": "filter", "hook": "for=
ward", "prio": 10}}}, {"add": {"chain": {"family": "inet", "table": "firewa=
lld", "name": "filter_OUTPUT", "type": "filter", "hook": "output", "prio": =
10}}}, {"add": {"rule": {"family": "inet", "table": "firewalld", "chain": "=
filter_INPUT", "expr": [{"match": {"left": {"ct": {"key": "state"}}, "op": =
"in", "right": {"set": ["established", "related"]}}}, {"accept": null}]}}},=
 {"add": {"rule": {"family": "inet", "table": "firewalld", "chain": "filter=
_INPUT", "expr": [{"match": {"left": {"ct": {"key": "status"}}, "op": "in",=
 "right": "dnat"}}, {"accept": null}]}}}, {"add": {"rule": {"family": "inet=
", "table": "firewalld", "chain": "filter_INPUT", "expr": [{"match": {"left=
": {"meta": {"key": "iifname"}}, "op": "=3D=3D", "right": "lo"}}, {"accept"=
: null}]}}}, {"add": {"chain": {"family": "inet", "table": "firewalld", "na=
me": "filter_INPUT_POLICIES_pre"}}}, {"add": {"rule": {"family": "inet", "t=
able": "firewalld", "chain": "filter_INPUT", "expr": [{"jump": {"target": "=
filter_INPUT_POLICIES_pre"}}]}}}, {"add": {"chain": {"family": "inet", "tab=
le": "firewalld", "name": "filter_INPUT_ZONES"}}}, {"add": {"rule": {"famil=
y": "inet", "table": "firewalld", "chain": "filter_INPUT", "expr": [{"jump"=
: {"target": "filter_INPUT_ZONES"}}]}}}, {"add": {"chain": {"family": "inet=
", "table": "firewalld", "name": "filter_INPUT_POLICIES_post"}}}, {"add": {=
"rule": {"family": "inet", "table": "firewalld", "chain": "filter_INPUT", "=
expr": [{"jump": {"target": "filter_INPUT_POLICIES_post"}}]}}}, {"add": {"r=
ule": {"family": "inet", "table": "firewalld", "chain": "filter_INPUT", "ex=
pr": [{"match": {"left": {"ct": {"key": "state"}}, "op": "in", "right": {"s=
et": ["invalid"]}}}, {"drop": null}]}}}, {"add": {"rule": {"family": "inet"=
, "table": "firewalld", "chain": "filter_INPUT", "expr": [{"reject": {"type=
": "icmpx", "expr": "admin-prohibited"}}]}}}, {"add": {"rule": {"family": "=
inet", "table": "firewalld", "chain": "filter_FORWARD", "expr": [{"match": =
{"left": {"ct": {"key": "state"}}, "op": "in", "right": {"set": ["establish=
ed", "related"]}}}, {"accept": null}]}}}, {"add": {"rule": {"family": "inet=
", "table": "firewalld", "chain": "filter_FORWARD", "expr": [{"match": {"le=
ft": {"ct": {"key": "status"}}, "op": "in", "right": "dnat"}}, {"accept": n=
ull}]}}}, {"add": {"rule": {"family": "inet", "table": "firewalld", "chain"=
: "filter_FORWARD", "expr": [{"match": {"left": {"meta": {"key": "iifname"}=
}, "op": "=3D=3D", "right": "lo"}}, {"accept": null}]}}}, {"add": {"chain":=
 {"family": "inet", "table": "firewalld", "name": "filter_FORWARD_POLICIES_=
pre"}}}, {"add": {"rule": {"family": "inet", "table": "firewalld", "chain":=
 "filter_FORWARD", "expr": [{"jump": {"target": "filter_FORWARD_POLICIES_pr=
e"}}]}}}, {"add": {"chain": {"family": "inet", "table": "firewalld", "name"=
: "filter_FORWARD_IN_ZONES"}}}, {"add": {"rule": {"family": "inet", "table"=
: "firewalld", "chain": "filter_FORWARD", "expr": [{"jump": {"target": "fil=
ter_FORWARD_IN_ZONES"}}]}}}, {"add": {"chain": {"family": "inet", "table": =
"firewalld", "name": "filter_FORWARD_OUT_ZONES"}}}, {"add": {"rule": {"fami=
ly": "inet", "table": "firewalld", "chain": "filter_FORWARD", "expr": [{"ju=
mp": {"target": "filter_FORWARD_OUT_ZONES"}}]}}}, {"add": {"chain": {"famil=
y": "inet", "table": "firewalld", "name": "filter_FORWARD_POLICIES_post"}}}=
, {"add": {"rule": {"family": "inet", "table": "firewalld", "chain": "filte=
r_FORWARD", "expr": [{"jump": {"target": "filter_FORWARD_POLICIES_post"}}]}=
}}, {"add": {"rule": {"family": "inet", "table": "firewalld", "chain": "fil=
ter_FORWARD", "expr": [{"match": {"left": {"ct": {"key": "state"}}, "op": "=
in", "right": {"set": ["invalid"]}}}, {"drop": null}]}}}, {"add": {"rule": =
{"family": "inet", "table": "firewalld", "chain": "filter_FORWARD", "expr":=
 [{"reject": {"type": "icmpx", "expr": "admin-prohibited"}}]}}}, {"add": {"=
rule": {"family": "inet", "table": "firewalld", "chain": "filter_OUTPUT", "=
expr": [{"match": {"left": {"meta": {"key": "oifname"}}, "op": "=3D=3D", "r=
ight": "lo"}}, {"accept": null}]}}}, {"add": {"chain": {"family": "inet", "=
table": "firewalld", "name": "filter_OUTPUT_POLICIES_pre"}}}, {"add": {"rul=
e": {"family": "inet", "table": "firewalld", "chain": "filter_OUTPUT", "exp=
r": [{"jump": {"target": "filter_OUTPUT_POLICIES_pre"}}]}}}, {"add": {"chai=
n": {"family": "inet", "table": "firewalld", "name": "filter_OUTPUT_POLICIE=
S_post"}}}, {"add": {"rule": {"family": "inet", "table": "firewalld", "chai=
n": "filter_OUTPUT", "expr": [{"jump": {"target": "filter_OUTPUT_POLICIES_p=
ost"}}]}}}, {"insert": {"rule": {"family": "inet", "table": "firewalld", "c=
hain": "raw_PREROUTING", "expr": [{"match": {"left": {"meta": {"key": "nfpr=
oto"}}, "op": "=3D=3D", "right": "ipv6"}}, {"match": {"left": {"fib": {"fla=
gs": ["saddr", "iif"], "result": "oif"}}, "op": "=3D=3D", "right": false}},=
 {"drop": null}]}}}, {"insert": {"rule": {"family": "inet", "table": "firew=
alld", "chain": "raw_PREROUTING", "expr": [{"match": {"left": {"payload": {=
"protocol": "icmpv6", "field": "type"}}, "op": "=3D=3D", "right": {"set": [=
"nd-router-advert", "nd-neighbor-solicit"]}}}, {"accept": null}]}}}, {"add"=
: {"rule": {"family": "inet", "table": "firewalld", "chain": "filter_OUTPUT=
", "index": 0, "expr": [{"match": {"left": {"payload": {"protocol": "ip6", =
"field": "daddr"}}, "op": "=3D=3D", "right": {"set": [{"prefix": {"addr": "=
::0.0.0.0", "len": 96}}, {"prefix": {"addr": "::ffff:0.0.0.0", "len": 96}},=
 {"prefix": {"addr": "2002:0000::", "len": 24}}, {"prefix": {"addr": "2002:=
0a00::", "len": 24}}, {"prefix": {"addr": "2002:7f00::", "len": 24}}, {"pre=
fix": {"addr": "2002:ac10::", "len": 28}}, {"prefix": {"addr": "2002:c0a8::=
", "len": 32}}, {"prefix": {"addr": "2002:a9fe::", "len": 32}}, {"prefix": =
{"addr": "2002:e000::", "len": 19}}]}}}, {"reject": {"type": "icmpv6", "exp=
r": "addr-unreachable"}}]}}}, {"add": {"rule": {"family": "inet", "table": =
"firewalld", "chain": "filter_FORWARD", "index": 2, "expr": [{"match": {"le=
ft": {"payload": {"protocol": "ip6", "field": "daddr"}}, "op": "=3D=3D", "r=
ight": {"set": [{"prefix": {"addr": "::0.0.0.0", "len": 96}}, {"prefix": {"=
addr": "::ffff:0.0.0.0", "len": 96}}, {"prefix": {"addr": "2002:0000::", "l=
en": 24}}, {"prefix": {"addr": "2002:0a00::", "len": 24}}, {"prefix": {"add=
r": "2002:7f00::", "len": 24}}, {"prefix": {"addr": "2002:ac10::", "len": 2=
8}}, {"prefix": {"addr": "2002:c0a8::", "len": 32}}, {"prefix": {"addr": "2=
002:a9fe::", "len": 32}}, {"prefix": {"addr": "2002:e000::", "len": 19}}]}}=
}, {"reject": {"type": "icmpv6", "expr": "addr-unreachable"}}]}}}, {"add": =
{"chain": {"family": "inet", "table": "firewalld", "name": "filter_IN_publi=
c"}}}, {"add": {"chain": {"family": "inet", "table": "firewalld", "name": "=
filter_IN_public_pre"}}}, {"add": {"chain": {"family": "inet", "table": "fi=
rewalld", "name": "filter_IN_public_log"}}}, {"add": {"chain": {"family": "=
inet", "table": "firewalld", "name": "filter_IN_public_deny"}}}, {"add": {"=
chain": {"family": "inet", "table": "firewalld", "name": "filter_IN_public_=
allow"}}}, {"add": {"chain": {"family": "inet", "table": "firewalld", "name=
": "filter_IN_public_post"}}}, {"add": {"rule": {"family": "inet", "table":=
 "firewalld", "chain": "filter_IN_public", "expr": [{"jump": {"target": "fi=
lter_IN_public_pre"}}]}}}, {"add": {"rule": {"family": "inet", "table": "fi=
rewalld", "chain": "filter_IN_public", "expr": [{"jump": {"target": "filter=
_IN_public_log"}}]}}}, {"add": {"rule": {"family": "inet", "table": "firewa=
lld", "chain": "filter_IN_public", "expr": [{"jump": {"target": "filter_IN_=
public_deny"}}]}}}, {"add": {"rule": {"family": "inet", "table": "firewalld=
", "chain": "filter_IN_public", "expr": [{"jump": {"target": "filter_IN_pub=
lic_allow"}}]}}}, {"add": {"rule": {"family": "inet", "table": "firewalld",=
 "chain": "filter_IN_public", "expr": [{"jump": {"target": "filter_IN_publi=
c_post"}}]}}}, {"add": {"rule": {"family": "inet", "table": "firewalld", "c=
hain": "filter_IN_public_allow", "expr": [{"match": {"left": {"payload": {"=
protocol": "tcp", "field": "dport"}}, "op": "=3D=3D", "right": 22}}, {"matc=
h": {"left": {"ct": {"key": "state"}}, "op": "in", "right": {"set": ["new",=
 "untracked"]}}}, {"accept": null}]}}}, {"add": {"rule": {"family": "inet",=
 "table": "firewalld", "chain": "filter_IN_public_allow", "expr": [{"match"=
: {"left": {"payload": {"protocol": "ip6", "field": "daddr"}}, "op": "=3D=
=3D", "right": {"prefix": {"addr": "fe80::", "len": 64}}}}, {"match": {"lef=
t": {"payload": {"protocol": "udp", "field": "dport"}}, "op": "=3D=3D", "ri=
ght": 546}}, {"match": {"left": {"ct": {"key": "state"}}, "op": "in", "righ=
t": {"set": ["new", "untracked"]}}}, {"accept": null}]}}}, {"add": {"chain"=
: {"family": "inet", "table": "firewalld", "name": "filter_FWDO_public"}}},=
 {"add": {"chain": {"family": "inet", "table": "firewalld", "name": "filter=
_FWDO_public_pre"}}}, {"add": {"chain": {"family": "inet", "table": "firewa=
lld", "name": "filter_FWDO_public_log"}}}, {"add": {"chain": {"family": "in=
et", "table": "firewalld", "name": "filter_FWDO_public_deny"}}}, {"add": {"=
chain": {"family": "inet", "table": "firewalld", "name": "filter_FWDO_publi=
c_allow"}}}, {"add": {"chain": {"family": "inet", "table": "firewalld", "na=
me": "filter_FWDO_public_post"}}}, {"add": {"rule": {"family": "inet", "tab=
le": "firewalld", "chain": "filter_FWDO_public", "expr": [{"jump": {"target=
": "filter_FWDO_public_pre"}}]}}}, {"add": {"rule": {"family": "inet", "tab=
le": "firewalld", "chain": "filter_FWDO_public", "expr": [{"jump": {"target=
": "filter_FWDO_public_log"}}]}}}, {"add": {"rule": {"family": "inet", "tab=
le": "firewalld", "chain": "filter_FWDO_public", "expr": [{"jump": {"target=
": "filter_FWDO_public_deny"}}]}}}, {"add": {"rule": {"family": "inet", "ta=
ble": "firewalld", "chain": "filter_FWDO_public", "expr": [{"jump": {"targe=
t": "filter_FWDO_public_allow"}}]}}}, {"add": {"rule": {"family": "inet", "=
table": "firewalld", "chain": "filter_FWDO_public", "expr": [{"jump": {"tar=
get": "filter_FWDO_public_post"}}]}}}, {"add": {"chain": {"family": "ip", "=
table": "firewalld", "name": "nat_POST_public"}}}, {"add": {"chain": {"fami=
ly": "ip", "table": "firewalld", "name": "nat_POST_public_pre"}}}, {"add": =
{"chain": {"family": "ip", "table": "firewalld", "name": "nat_POST_public_l=
og"}}}, {"add": {"chain": {"family": "ip", "table": "firewalld", "name": "n=
at_POST_public_deny"}}}, {"add": {"chain": {"family": "ip", "table": "firew=
alld", "name": "nat_POST_public_allow"}}}, {"add": {"chain": {"family": "ip=
", "table": "firewalld", "name": "nat_POST_public_post"}}}, {"add": {"rule"=
: {"family": "ip", "table": "firewalld", "chain": "nat_POST_public", "expr"=
: [{"jump": {"target": "nat_POST_public_pre"}}]}}}, {"add": {"rule": {"fami=
ly": "ip", "table": "firewalld", "chain": "nat_POST_public", "expr": [{"jum=
p": {"target": "nat_POST_public_log"}}]}}}, {"add": {"rule": {"family": "ip=
", "table": "firewalld", "chain": "nat_POST_public", "expr": [{"jump": {"ta=
rget": "nat_POST_public_deny"}}]}}}, {"add": {"rule": {"family": "ip", "tab=
le": "firewalld", "chain": "nat_POST_public", "expr": [{"jump": {"target": =
"nat_POST_public_allow"}}]}}}, {"add": {"rule": {"family": "ip", "table": "=
firewalld", "chain": "nat_POST_public", "expr": [{"jump": {"target": "nat_P=
OST_public_post"}}]}}}, {"add": {"chain": {"family": "ip6", "table": "firew=
alld", "name": "nat_POST_public"}}}, {"add": {"chain": {"family": "ip6", "t=
able": "firewalld", "name": "nat_POST_public_pre"}}}, {"add": {"chain": {"f=
amily": "ip6", "table": "firewalld", "name": "nat_POST_public_log"}}}, {"ad=
d": {"chain": {"family": "ip6", "table": "firewalld", "name": "nat_POST_pub=
lic_deny"}}}, {"add": {"chain": {"family": "ip6", "table": "firewalld", "na=
me": "nat_POST_public_allow"}}}, {"add": {"chain": {"family": "ip6", "table=
": "firewalld", "name": "nat_POST_public_post"}}}, {"add": {"rule": {"famil=
y": "ip6", "table": "firewalld", "chain": "nat_POST_public", "expr": [{"jum=
p": {"target": "nat_POST_public_pre"}}]}}}, {"add": {"rule": {"family": "ip=
6", "table": "firewalld", "chain": "nat_POST_public", "expr": [{"jump": {"t=
arget": "nat_POST_public_log"}}]}}}, {"add": {"rule": {"family": "ip6", "ta=
ble": "firewalld", "chain": "nat_POST_public", "expr": [{"jump": {"target":=
 "nat_POST_public_deny"}}]}}}, {"add": {"rule": {"family": "ip6", "table": =
"firewalld", "chain": "nat_POST_public", "expr": [{"jump": {"target": "nat_=
POST_public_allow"}}]}}}, {"add": {"rule": {"family": "ip6", "table": "fire=
walld", "chain": "nat_POST_public", "expr": [{"jump": {"target": "nat_POST_=
public_post"}}]}}}, {"add": {"chain": {"family": "inet", "table": "firewall=
d", "name": "filter_FWDI_public"}}}, {"add": {"chain": {"family": "inet", "=
table": "firewalld", "name": "filter_FWDI_public_pre"}}}, {"add": {"chain":=
 {"family": "inet", "table": "firewalld", "name": "filter_FWDI_public_log"}=
}}, {"add": {"chain": {"family": "inet", "table": "firewalld", "name": "fil=
ter_FWDI_public_deny"}}}, {"add": {"chain": {"family": "inet", "table": "fi=
rewalld", "name": "filter_FWDI_public_allow"}}}, {"add": {"chain": {"family=
": "inet", "table": "firewalld", "name": "filter_FWDI_public_post"}}}, {"ad=
d": {"rule": {"family": "inet", "table": "firewalld", "chain": "filter_FWDI=
_public", "expr": [{"jump": {"target": "filter_FWDI_public_pre"}}]}}}, {"ad=
d": {"rule": {"family": "inet", "table": "firewalld", "chain": "filter_FWDI=
_public", "expr": [{"jump": {"target": "filter_FWDI_public_log"}}]}}}, {"ad=
d": {"rule": {"family": "inet", "table": "firewalld", "chain": "filter_FWDI=
_public", "expr": [{"jump": {"target": "filter_FWDI_public_deny"}}]}}}, {"a=
dd": {"rule": {"family": "inet", "table": "firewalld", "chain": "filter_FWD=
I_public", "expr": [{"jump": {"target": "filter_FWDI_public_allow"}}]}}}, {=
"add": {"rule": {"family": "inet", "table": "firewalld", "chain": "filter_F=
WDI_public", "expr": [{"jump": {"target": "filter_FWDI_public_post"}}]}}}, =
{"add": {"chain": {"family": "ip", "table": "firewalld", "name": "nat_PRE_p=
ublic"}}}, {"add": {"chain": {"family": "ip", "table": "firewalld", "name":=
 "nat_PRE_public_pre"}}}, {"add": {"chain": {"family": "ip", "table": "fire=
walld", "name": "nat_PRE_public_log"}}}, {"add": {"chain": {"family": "ip",=
 "table": "firewalld", "name": "nat_PRE_public_deny"}}}, {"add": {"chain": =
{"family": "ip", "table": "firewalld", "name": "nat_PRE_public_allow"}}}, {=
"add": {"chain": {"family": "ip", "table": "firewalld", "name": "nat_PRE_pu=
blic_post"}}}, {"add": {"rule": {"family": "ip", "table": "firewalld", "cha=
in": "nat_PRE_public", "expr": [{"jump": {"target": "nat_PRE_public_pre"}}]=
}}}, {"add": {"rule": {"family": "ip", "table": "firewalld", "chain": "nat_=
PRE_public", "expr": [{"jump": {"target": "nat_PRE_public_log"}}]}}}, {"add=
": {"rule": {"family": "ip", "table": "firewalld", "chain": "nat_PRE_public=
", "expr": [{"jump": {"target": "nat_PRE_public_deny"}}]}}}, {"add": {"rule=
": {"family": "ip", "table": "firewalld", "chain": "nat_PRE_public", "expr"=
: [{"jump": {"target": "nat_PRE_public_allow"}}]}}}, {"add": {"rule": {"fam=
ily": "ip", "table": "firewalld", "chain": "nat_PRE_public", "expr": [{"jum=
p": {"target": "nat_PRE_public_post"}}]}}}, {"add": {"chain": {"family": "i=
p6", "table": "firewalld", "name": "nat_PRE_public"}}}, {"add": {"chain": {=
"family": "ip6", "table": "firewalld", "name": "nat_PRE_public_pre"}}}, {"a=
dd": {"chain": {"family": "ip6", "table": "firewalld", "name": "nat_PRE_pub=
lic_log"}}}, {"add": {"chain": {"family": "ip6", "table": "firewalld", "nam=
e": "nat_PRE_public_deny"}}}, {"add": {"chain": {"family": "ip6", "table": =
"firewalld", "name": "nat_PRE_public_allow"}}}, {"add": {"chain": {"family"=
: "ip6", "table": "firewalld", "name": "nat_PRE_public_post"}}}, {"add": {"=
rule": {"family": "ip6", "table": "firewalld", "chain": "nat_PRE_public", "=
expr": [{"jump": {"target": "nat_PRE_public_pre"}}]}}}, {"add": {"rule": {"=
family": "ip6", "table": "firewalld", "chain": "nat_PRE_public", "expr": [{=
"jump": {"target": "nat_PRE_public_log"}}]}}}, {"add": {"rule": {"family": =
"ip6", "table": "firewalld", "chain": "nat_PRE_public", "expr": [{"jump": {=
"target": "nat_PRE_public_deny"}}]}}}, {"add": {"rule": {"family": "ip6", "=
table": "firewalld", "chain": "nat_PRE_public", "expr": [{"jump": {"target"=
: "nat_PRE_public_allow"}}]}}}, {"add": {"rule": {"family": "ip6", "table":=
 "firewalld", "chain": "nat_PRE_public", "expr": [{"jump": {"target": "nat_=
PRE_public_post"}}]}}}, {"add": {"chain": {"family": "inet", "table": "fire=
walld", "name": "mangle_PRE_public"}}}, {"add": {"chain": {"family": "inet"=
, "table": "firewalld", "name": "mangle_PRE_public_pre"}}}, {"add": {"chain=
": {"family": "inet", "table": "firewalld", "name": "mangle_PRE_public_log"=
}}}, {"add": {"chain": {"family": "inet", "table": "firewalld", "name": "ma=
ngle_PRE_public_deny"}}}, {"add": {"chain": {"family": "inet", "table": "fi=
rewalld", "name": "mangle_PRE_public_allow"}}}, {"add": {"chain": {"family"=
: "inet", "table": "firewalld", "name": "mangle_PRE_public_post"}}}, {"add"=
: {"rule": {"family": "inet", "table": "firewalld", "chain": "mangle_PRE_pu=
blic", "expr": [{"jump": {"target": "mangle_PRE_public_pre"}}]}}}, {"add": =
{"rule": {"family": "inet", "table": "firewalld", "chain": "mangle_PRE_publ=
ic", "expr": [{"jump": {"target": "mangle_PRE_public_log"}}]}}}, {"add": {"=
rule": {"family": "inet", "table": "firewalld", "chain": "mangle_PRE_public=
", "expr": [{"jump": {"target": "mangle_PRE_public_deny"}}]}}}, {"add": {"r=
ule": {"family": "inet", "table": "firewalld", "chain": "mangle_PRE_public"=
, "expr": [{"jump": {"target": "mangle_PRE_public_allow"}}]}}}, {"add": {"r=
ule": {"family": "inet", "table": "firewalld", "chain": "mangle_PRE_public"=
, "expr": [{"jump": {"target": "mangle_PRE_public_post"}}]}}}, {"add": {"ru=
le": {"family": "inet", "table": "firewalld", "chain": "filter_IN_public", =
"index": 4, "expr": [{"match": {"left": {"meta": {"key": "l4proto"}}, "op":=
 "=3D=3D", "right": {"set": ["icmp", "icmpv6"]}}}, {"accept": null}]}}}, {"=
add": {"rule": {"family": "inet", "table": "firewalld", "chain": "filter_FW=
DI_public", "index": 4, "expr": [{"match": {"left": {"meta": {"key": "l4pro=
to"}}, "op": "=3D=3D", "right": {"set": ["icmp", "icmpv6"]}}}, {"accept": n=
ull}]}}}, {"add": {"rule": {"family": "inet", "table": "firewalld", "chain"=
: "filter_INPUT_ZONES", "expr": [{"goto": {"target": "filter_IN_public"}}]}=
}}, {"add": {"rule": {"family": "inet", "table": "firewalld", "chain": "fil=
ter_FORWARD_OUT_ZONES", "expr": [{"goto": {"target": "filter_FWDO_public"}}=
]}}}, {"add": {"rule": {"family": "ip", "table": "firewalld", "chain": "nat=
_POSTROUTING_ZONES", "expr": [{"goto": {"target": "nat_POST_public"}}]}}}, =
{"add": {"rule": {"family": "ip6", "table": "firewalld", "chain": "nat_POST=
ROUTING_ZONES", "expr": [{"goto": {"target": "nat_POST_public"}}]}}}, {"add=
": {"rule": {"family": "inet", "table": "firewalld", "chain": "filter_FORWA=
RD_IN_ZONES", "expr": [{"goto": {"target": "filter_FWDI_public"}}]}}}, {"ad=
d": {"rule": {"family": "ip", "table": "firewalld", "chain": "nat_PREROUTIN=
G_ZONES", "expr": [{"goto": {"target": "nat_PRE_public"}}]}}}, {"add": {"ru=
le": {"family": "ip6", "table": "firewalld", "chain": "nat_PREROUTING_ZONES=
", "expr": [{"goto": {"target": "nat_PRE_public"}}]}}}, {"add": {"rule": {"=
family": "inet", "table": "firewalld", "chain": "mangle_PREROUTING_ZONES", =
"expr": [{"goto": {"target": "mangle_PRE_public"}}]}}}, {"add": {"chain": {=
"family": "inet", "table": "firewalld", "name": "filter_IN_policy_allow-hos=
t-ipv6"}}}, {"add": {"chain": {"family": "inet", "table": "firewalld", "nam=
e": "filter_IN_policy_allow-host-ipv6_pre"}}}, {"add": {"chain": {"family":=
 "inet", "table": "firewalld", "name": "filter_IN_policy_allow-host-ipv6_lo=
g"}}}, {"add": {"chain": {"family": "inet", "table": "firewalld", "name": "=
filter_IN_policy_allow-host-ipv6_deny"}}}, {"add": {"chain": {"family": "in=
et", "table": "firewalld", "name": "filter_IN_policy_allow-host-ipv6_allow"=
}}}, {"add": {"chain": {"family": "inet", "table": "firewalld", "name": "fi=
lter_IN_policy_allow-host-ipv6_post"}}}, {"add": {"rule": {"family": "inet"=
, "table": "firewalld", "chain": "filter_IN_policy_allow-host-ipv6", "expr"=
: [{"jump": {"target": "filter_IN_policy_allow-host-ipv6_pre"}}]}}}, {"add"=
: {"rule": {"family": "inet", "table": "firewalld", "chain": "filter_IN_pol=
icy_allow-host-ipv6", "expr": [{"jump": {"target": "filter_IN_policy_allow-=
host-ipv6_log"}}]}}}, {"add": {"rule": {"family": "inet", "table": "firewal=
ld", "chain": "filter_IN_policy_allow-host-ipv6", "expr": [{"jump": {"targe=
t": "filter_IN_policy_allow-host-ipv6_deny"}}]}}}, {"add": {"rule": {"famil=
y": "inet", "table": "firewalld", "chain": "filter_IN_policy_allow-host-ipv=
6", "expr": [{"jump": {"target": "filter_IN_policy_allow-host-ipv6_allow"}}=
]}}}, {"add": {"rule": {"family": "inet", "table": "firewalld", "chain": "f=
ilter_IN_policy_allow-host-ipv6", "expr": [{"jump": {"target": "filter_IN_p=
olicy_allow-host-ipv6_post"}}]}}}, {"add": {"chain": {"family": "ip", "tabl=
e": "firewalld", "name": "nat_PRE_policy_allow-host-ipv6"}}}, {"add": {"cha=
in": {"family": "ip", "table": "firewalld", "name": "nat_PRE_policy_allow-h=
ost-ipv6_pre"}}}, {"add": {"chain": {"family": "ip", "table": "firewalld", =
"name": "nat_PRE_policy_allow-host-ipv6_log"}}}, {"add": {"chain": {"family=
": "ip", "table": "firewalld", "name": "nat_PRE_policy_allow-host-ipv6_deny=
"}}}, {"add": {"chain": {"family": "ip", "table": "firewalld", "name": "nat=
_PRE_policy_allow-host-ipv6_allow"}}}, {"add": {"chain": {"family": "ip", "=
table": "firewalld", "name": "nat_PRE_policy_allow-host-ipv6_post"}}}, {"ad=
d": {"rule": {"family": "ip", "table": "firewalld", "chain": "nat_PRE_polic=
y_allow-host-ipv6", "expr": [{"jump": {"target": "nat_PRE_policy_allow-host=
-ipv6_pre"}}]}}}, {"add": {"rule": {"family": "ip", "table": "firewalld", "=
chain": "nat_PRE_policy_allow-host-ipv6", "expr": [{"jump": {"target": "nat=
_PRE_policy_allow-host-ipv6_log"}}]}}}, {"add": {"rule": {"family": "ip", "=
table": "firewalld", "chain": "nat_PRE_policy_allow-host-ipv6", "expr": [{"=
jump": {"target": "nat_PRE_policy_allow-host-ipv6_deny"}}]}}}, {"add": {"ru=
le": {"family": "ip", "table": "firewalld", "chain": "nat_PRE_policy_allow-=
host-ipv6", "expr": [{"jump": {"target": "nat_PRE_policy_allow-host-ipv6_al=
low"}}]}}}, {"add": {"rule": {"family": "ip", "table": "firewalld", "chain"=
: "nat_PRE_policy_allow-host-ipv6", "expr": [{"jump": {"target": "nat_PRE_p=
olicy_allow-host-ipv6_post"}}]}}}, {"add": {"chain": {"family": "ip6", "tab=
le": "firewalld", "name": "nat_PRE_policy_allow-host-ipv6"}}}, {"add": {"ch=
ain": {"family": "ip6", "table": "firewalld", "name": "nat_PRE_policy_allow=
-host-ipv6_pre"}}}, {"add": {"chain": {"family": "ip6", "table": "firewalld=
", "name": "nat_PRE_policy_allow-host-ipv6_log"}}}, {"add": {"chain": {"fam=
ily": "ip6", "table": "firewalld", "name": "nat_PRE_policy_allow-host-ipv6_=
deny"}}}, {"add": {"chain": {"family": "ip6", "table": "firewalld", "name":=
 "nat_PRE_policy_allow-host-ipv6_allow"}}}, {"add": {"chain": {"family": "i=
p6", "table": "firewalld", "name": "nat_PRE_policy_allow-host-ipv6_post"}}}=
, {"add": {"rule": {"family": "ip6", "table": "firewalld", "chain": "nat_PR=
E_policy_allow-host-ipv6", "expr": [{"jump": {"target": "nat_PRE_policy_all=
ow-host-ipv6_pre"}}]}}}, {"add": {"rule": {"family": "ip6", "table": "firew=
alld", "chain": "nat_PRE_policy_allow-host-ipv6", "expr": [{"jump": {"targe=
t": "nat_PRE_policy_allow-host-ipv6_log"}}]}}}, {"add": {"rule": {"family":=
 "ip6", "table": "firewalld", "chain": "nat_PRE_policy_allow-host-ipv6", "e=
xpr": [{"jump": {"target": "nat_PRE_policy_allow-host-ipv6_deny"}}]}}}, {"a=
dd": {"rule": {"family": "ip6", "table": "firewalld", "chain": "nat_PRE_pol=
icy_allow-host-ipv6", "expr": [{"jump": {"target": "nat_PRE_policy_allow-ho=
st-ipv6_allow"}}]}}}, {"add": {"rule": {"family": "ip6", "table": "firewall=
d", "chain": "nat_PRE_policy_allow-host-ipv6", "expr": [{"jump": {"target":=
 "nat_PRE_policy_allow-host-ipv6_post"}}]}}}, {"add": {"chain": {"family": =
"inet", "table": "firewalld", "name": "mangle_PRE_policy_allow-host-ipv6"}}=
}, {"add": {"chain": {"family": "inet", "table": "firewalld", "name": "mang=
le_PRE_policy_allow-host-ipv6_pre"}}}, {"add": {"chain": {"family": "inet",=
 "table": "firewalld", "name": "mangle_PRE_policy_allow-host-ipv6_log"}}}, =
{"add": {"chain": {"family": "inet", "table": "firewalld", "name": "mangle_=
PRE_policy_allow-host-ipv6_deny"}}}, {"add": {"chain": {"family": "inet", "=
table": "firewalld", "name": "mangle_PRE_policy_allow-host-ipv6_allow"}}}, =
{"add": {"chain": {"family": "inet", "table": "firewalld", "name": "mangle_=
PRE_policy_allow-host-ipv6_post"}}}, {"add": {"rule": {"family": "inet", "t=
able": "firewalld", "chain": "mangle_PRE_policy_allow-host-ipv6", "expr": [=
{"jump": {"target": "mangle_PRE_policy_allow-host-ipv6_pre"}}]}}}, {"add": =
{"rule": {"family": "inet", "table": "firewalld", "chain": "mangle_PRE_poli=
cy_allow-host-ipv6", "expr": [{"jump": {"target": "mangle_PRE_policy_allow-=
host-ipv6_log"}}]}}}, {"add": {"rule": {"family": "inet", "table": "firewal=
ld", "chain": "mangle_PRE_policy_allow-host-ipv6", "expr": [{"jump": {"targ=
et": "mangle_PRE_policy_allow-host-ipv6_deny"}}]}}}, {"add": {"rule": {"fam=
ily": "inet", "table": "firewalld", "chain": "mangle_PRE_policy_allow-host-=
ipv6", "expr": [{"jump": {"target": "mangle_PRE_policy_allow-host-ipv6_allo=
w"}}]}}}, {"add": {"rule": {"family": "inet", "table": "firewalld", "chain"=
: "mangle_PRE_policy_allow-host-ipv6", "expr": [{"jump": {"target": "mangle=
_PRE_policy_allow-host-ipv6_post"}}]}}}, {"insert": {"rule": {"family": "in=
et", "table": "firewalld", "chain": "filter_INPUT_POLICIES_pre", "expr": [{=
"jump": {"target": "filter_IN_policy_allow-host-ipv6"}}]}}}, {"insert": {"r=
ule": {"family": "ip", "table": "firewalld", "chain": "nat_PREROUTING_POLIC=
IES_pre", "expr": [{"jump": {"target": "nat_PRE_policy_allow-host-ipv6"}}]}=
}}, {"insert": {"rule": {"family": "ip6", "table": "firewalld", "chain": "n=
at_PREROUTING_POLICIES_pre", "expr": [{"jump": {"target": "nat_PRE_policy_a=
llow-host-ipv6"}}]}}}, {"insert": {"rule": {"family": "inet", "table": "fir=
ewalld", "chain": "mangle_PREROUTING_POLICIES_pre", "expr": [{"jump": {"tar=
get": "mangle_PRE_policy_allow-host-ipv6"}}]}}}, {"add": {"rule": {"family"=
: "inet", "table": "firewalld", "chain": "filter_IN_policy_allow-host-ipv6_=
allow", "expr": [{"match": {"left": {"meta": {"key": "nfproto"}}, "op": "=
=3D=3D", "right": "ipv6"}}, {"match": {"left": {"payload": {"protocol": "ic=
mpv6", "field": "type"}}, "op": "=3D=3D", "right": "nd-neighbor-advert"}}, =
{"accept": null}]}}}, {"add": {"rule": {"family": "inet", "table": "firewal=
ld", "chain": "filter_IN_policy_allow-host-ipv6_allow", "expr": [{"match": =
{"left": {"meta": {"key": "nfproto"}}, "op": "=3D=3D", "right": "ipv6"}}, {=
"match": {"left": {"payload": {"protocol": "icmpv6", "field": "type"}}, "op=
": "=3D=3D", "right": "nd-neighbor-solicit"}}, {"accept": null}]}}}, {"add"=
: {"rule": {"family": "inet", "table": "firewalld", "chain": "filter_IN_pol=
icy_allow-host-ipv6_allow", "expr": [{"match": {"left": {"meta": {"key": "n=
fproto"}}, "op": "=3D=3D", "right": "ipv6"}}, {"match": {"left": {"payload"=
: {"protocol": "icmpv6", "field": "type"}}, "op": "=3D=3D", "right": "nd-ro=
uter-advert"}}, {"accept": null}]}}}, {"add": {"rule": {"family": "inet", "=
table": "firewalld", "chain": "filter_IN_policy_allow-host-ipv6_allow", "ex=
pr": [{"match": {"left": {"meta": {"key": "nfproto"}}, "op": "=3D=3D", "rig=
ht": "ipv6"}}, {"match": {"left": {"payload": {"protocol": "icmpv6", "field=
": "type"}}, "op": "=3D=3D", "right": "nd-redirect"}}, {"accept": null}]}}}=
]}</div>
&nbsp;<br /><br />-- <br />Regards,<br />Sateesh

--HTmDo2eGfxbVnwjg2q4x--

