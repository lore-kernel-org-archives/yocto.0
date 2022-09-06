Return-Path: <paulo@eero.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D55A6C6FA94
	for <webhook@archiver.kernel.org>; Tue,  6 Sep 2022 14:20:25 +0000 (UTC)
Subject: Update upstream kirkstone branches
To: yocto@lists.yoctoproject.org
From: paulo@eero.com
X-Originating-Location: =?utf-8?b?U8OjbyBQYXVsbywgU2FvIFBhdWxvLCBCUiAoMjAw?=
 =?utf-8?b?LjE0OC4xMTcuMTA0KQ==?=
X-Originating-Platform: Linux Firefox 104
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 06 Sep 2022 07:20:23 -0700
Message-ID: <isVB.1662474023926890292.lmGR@lists.yoctoproject.org>
Content-Type: multipart/mixed; boundary="GOUUhtTHZomDIN7brZk4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Sep 2022 14:20:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57993

--GOUUhtTHZomDIN7brZk4
Content-Type: multipart/alternative; boundary="3ZVZuDMGxBBZHD9jEJMA"

--3ZVZuDMGxBBZHD9jEJMA
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all!

I've been just recently working with Yocto at my new position and just ran =
into an issue that was already solved on Yocto's main branches for both ope=
nembedded and poky layers.
There's a problem with npm on upstream kirkstone, where the fetching of dep=
endencies fails due to stale or wrong metadata being read. This seems to ha=
ve affected quite a few people (from what I browsed online), and found a so=
lution which is already merged to the main branches for both poky and opene=
mbedded layers, done by Enrico Sholtz.
The patches are https://patchwork.yoctoproject.org/project/oe-core/list/?se=
ries=3D4303 for poky and the patch file attached to this message.

I've applied these changes to kirkstone and it solved the issues as promise=
d and explained by Enrico on https://lists.openembedded.org/g/openembedded-=
core/topic/91903472

I'd like to know how would one proceed to add these changes to upstream Yoc=
to, since it would benefit a lot of people using this new LTS version of th=
e project.

Thanks in advance,

Paulo Andrade.

--3ZVZuDMGxBBZHD9jEJMA
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello all!</p>
<p>I've been just recently working with Yocto at my new position and just r=
an into an issue that was already solved on Yocto's main branches for both =
openembedded and poky layers.<br />There's a problem with npm on upstream k=
irkstone, where the fetching of dependencies fails due to stale or wrong me=
tadata being read. This seems to have affected quite a few people (from wha=
t I browsed online), and found a solution which is already merged to the ma=
in branches for both poky and openembedded layers, done by Enrico Sholtz.<b=
r />The patches are <a href=3D"https://patchwork.yoctoproject.org/project/o=
e-core/list/?series=3D4303" target=3D"_blank" rel=3D"noopener">https://patc=
hwork.yoctoproject.org/project/oe-core/list/?series=3D4303</a> for poky and=
 the patch file attached to this message.</p>
<p>I've applied these changes to kirkstone and it solved the issues as prom=
ised and explained by Enrico on <a href=3D"https://lists.openembedded.org/g=
/openembedded-core/topic/91903472" target=3D"_blank" rel=3D"noopener">https=
://lists.openembedded.org/g/openembedded-core/topic/91903472</a><br /><br /=
>I'd like to know how would one proceed to add these changes to upstream Yo=
cto, since it would benefit a lot of people using this new LTS version of t=
he project.<br /><br />Thanks in advance,</p>
<p>&nbsp;</p>
<p>Paulo Andrade.</p>

--3ZVZuDMGxBBZHD9jEJMA--

--GOUUhtTHZomDIN7brZk4
Content-Type: text/x-patch; name="meta-openembedded-patch.patch"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="meta-openembedded-patch.patch"

Y29tbWl0IDViZmZhM2YyZjJjNjk4ZGE1M2ZhNWM0YWQ0NDE4ZmMzMDg3ZmU0OGQKQXV0aG9yOiBF
bnJpY28gU2Nob2x6IDxlbnJpY28uc2Nob2x6QHNpZ21hLWNoZW1uaXR6LmRlPgpEYXRlOiAgIFRo
dSBNYXkgMTkgMTI6MjM6MDcgMjAyMiArMDIwMAoKICAgIG5vZGVqcy1vZS1jYWNoZS1uYXRpdmU6
IGluaXRpYWwgY2hlY2tpbgogICAgCiAgICBUaGlzIGltcGxlbWVudHMgYW4gJ25wbSBjYWNoZSBh
ZGQnIGxpa2UgZnVuY3Rpb25hbGl0eSBidXQgYWxsb3dzIHRvCiAgICBzcGVjaWZ5IHRoZSBrZXkg
b2YgdGhlIGRhdGEgYW5kIHNldHMgbWV0YWRhdGEgd2hpY2ggYXJlIHJlcXVpcmVkIHRvCiAgICBm
aW5kIHRoZSBkYXRhLgogICAgCiAgICBJdCBpcyB1c2VkIHRvIGNhY2hlIGluZm9ybWF0aW9uIGFz
IGRvbmUgZHVyaW5nICducG0gaW5zdGFsbCcuCiAgICAKICAgIEtleWZvcm1hdCBhbmQgbWV0YWRh
dGEgYXJlIG5vZGVqcyB2ZXJzaW9uIHNwZWNpZmljLgogICAgCiAgICBTaWduZWQtb2ZmLWJ5OiBF
bnJpY28gU2Nob2x6IDxlbnJpY28uc2Nob2x6QHNpZ21hLWNoZW1uaXR6LmRlPgogICAgU2lnbmVk
LW9mZi1ieTogS2hlbSBSYWogPHJhai5raGVtQGdtYWlsLmNvbT4KCmRpZmYgLS1naXQgYS9tZXRh
LW9lL3JlY2lwZXMtZGV2dG9vbHMvbm9kZWpzL25vZGVqcy1vZS1jYWNoZS0xNi4xNC9vZS1ucG0t
Y2FjaGUgYi9tZXRhLW9lL3JlY2lwZXMtZGV2dG9vbHMvbm9kZWpzL25vZGVqcy1vZS1jYWNoZS0x
Ni4xNC9vZS1ucG0tY2FjaGUKbmV3IGZpbGUgbW9kZSAxMDA3NTUKaW5kZXggMDAwMDAwMDAwLi5m
NTk2MjA3NjQKLS0tIC9kZXYvbnVsbAorKysgYi9tZXRhLW9lL3JlY2lwZXMtZGV2dG9vbHMvbm9k
ZWpzL25vZGVqcy1vZS1jYWNoZS0xNi4xNC9vZS1ucG0tY2FjaGUKQEAgLTAsMCArMSw3NyBAQAor
IyEvdXNyL2Jpbi9lbnYgbm9kZQorCisvLy8gVXNhZ2U6IG9lLW5wbS1jYWNoZSA8Y2FjaGUtZGly
PiA8dHlwZT4gPGtleT4gPGZpbGUtbmFtZT4KKy8vLyAgICA8dHlwZT4gLi4uIG1ldGEgLSBtZXRh
aW5mb3JtYXRpb24gYWJvdXQgcGFja2FnZQorLy8vICAgICAgICAgICAgICAgdGd6ICAtIHRhcmJh
bGwKKworY29uc3QgcHJvY2VzcyA9IHJlcXVpcmUoIm5vZGU6cHJvY2VzcyIpOworCittb2R1bGUu
cGF0aHMudW5zaGlmdCgiQEBsaWJkaXJAQC9ub2RlX21vZHVsZXMvbnBtL25vZGVfbW9kdWxlcyIp
OworCitjb25zdCBjYWNhY2hlID0gcmVxdWlyZSgnY2FjYWNoZScpCitjb25zdCBmcyA9IHJlcXVp
cmUoJ2ZzJykKKworLy8gYXJndlswXSBpcyAnbm9kZScsIGFyZ3ZbMV0gaXMgdGhpcyBzY3JpcHQK
K2NvbnN0IGNhY2hlX2RpciA9IHByb2Nlc3MuYXJndlsyXQorY29uc3QgdHlwZSAgICAgID0gcHJv
Y2Vzcy5hcmd2WzNdCitjb25zdCBrZXkgICAgICAgPSBwcm9jZXNzLmFyZ3ZbNF0KK2NvbnN0IGZp
bGUgICAgICA9IHByb2Nlc3MuYXJndls1XQorCitjb25zdCBkYXRhID0gZnMucmVhZEZpbGVTeW5j
KGZpbGUpCisKKy8vIG1ldGFkYXRhIGNvbnRlbnQgaXMgaGlnaGx5IG5vZGVqcyBkZXBlbmRlbnQ7
IHdoZW4gY2FjaGUgZW50cmllcyBhcmUgbm90CisvLyBmb3VuZCwgcGxhY2UgZGVidWcgc3RhdGVt
ZW50cyBpbiAnbWFrZS1mZXRjaC1oYXBwZW4vbGliL2NhY2hlL3BvbGljeS5qcycKKy8vIChDYWNo
ZVBvbGljeTo6c2F0aXNmaWVzKCkpCitjb25zdCB4bGF0ZSA9IHsKKyAgICAnbWV0YSc6IHsKKwkn
a2V5X3ByZWZpeCc6ICdtYWtlLWZldGNoLWhhcHBlbjpyZXF1ZXN0LWNhY2hlOicsCisJJ21ldGFk
YXRhJzogZnVuY3Rpb24oKSB7CisJICAgIHJldHVybiB7CisJCXRpbWU6IERhdGUubm93KCksCisJ
CXVybDogIGtleSwKKwkJcmVxSGVhZGVyczogeworCQkgICAgJ2FjY2VwdCc6ICdhcHBsaWNhdGlv
bi92bmQubnBtLmluc3RhbGwtdjEranNvbjsgcT0xLjAsIGFwcGxpY2F0aW9uL2pzb247IHE9MC44
LCAqLyonLAorCQl9LAorCQlyZXNIZWFkZXJzOiB7CisJCSAgICAiY29udGVudC10eXBlIjogImFw
cGxpY2F0aW9uL2pzb24iLAorCQkgICAgInN0YXR1cyI6IDIwMCwKKwkJfSwKKwkJb3B0aW9uczog
eworCQkgICAgY29tcHJlc3M6IHRydWUsCisJCX0KKwkgICAgfTsKKwl9LAorICAgIH0sCisKKyAg
ICAndGd6JzogeworCSdrZXlfcHJlZml4JzogJ21ha2UtZmV0Y2gtaGFwcGVuOnJlcXVlc3QtY2Fj
aGU6JywKKwknbWV0YWRhdGEnOiBmdW5jdGlvbigpIHsKKwkgICAgcmV0dXJuIHsKKwkJdGltZTog
RGF0ZS5ub3coKSwKKwkJdXJsOiAga2V5LAorCQlyZXFIZWFkZXJzOiB7CisJCSAgICAnYWNjZXB0
JzogJyovKicsCisJCX0sCisJCXJlc0hlYWRlcnM6IHsKKwkJICAgICJjb250ZW50LXR5cGUiOiAi
YXBwbGljYXRpb24vb2N0ZXQtc3RyZWFtIiwKKwkJICAgICJzdGF0dXMiOiAyMDAsCisJCX0sCisJ
CW9wdGlvbnM6IHsKKwkJICAgIGNvbXByZXNzOiB0cnVlLAorCQl9LAorCSAgICB9OworCX0sCisg
ICAgfSwKK307CisKK2NvbnN0IGluZm8gPSB4bGF0ZVt0eXBlXTsKK2xldCBvcHRzID0ge30KKwor
aWYgKGluZm8ubWV0YWRhdGEpIHsKKyAgICBvcHRzWydtZXRhZGF0YSddID0gaW5mby5tZXRhZGF0
YSgpOworfQorCitjYWNhY2hlLnB1dChjYWNoZV9kaXIsIGluZm8ua2V5X3ByZWZpeCArIGtleSwg
ZGF0YSwgb3B0cykKKyAgICAudGhlbihpbnRlZ3JpdHkgPT4geworCWNvbnNvbGUubG9nKGBTYXZl
ZCBjb250ZW50IG9mICR7a2V5fSAoJHtmaWxlfSkuYCk7Cit9KQpkaWZmIC0tZ2l0IGEvbWV0YS1v
ZS9yZWNpcGVzLWRldnRvb2xzL25vZGVqcy9ub2RlanMtb2UtY2FjaGUtbmF0aXZlXzE2LjE0LmJi
IGIvbWV0YS1vZS9yZWNpcGVzLWRldnRvb2xzL25vZGVqcy9ub2RlanMtb2UtY2FjaGUtbmF0aXZl
XzE2LjE0LmJiCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMC4uYTYxZGQ1MDE4
Ci0tLSAvZGV2L251bGwKKysrIGIvbWV0YS1vZS9yZWNpcGVzLWRldnRvb2xzL25vZGVqcy9ub2Rl
anMtb2UtY2FjaGUtbmF0aXZlXzE2LjE0LmJiCkBAIC0wLDAgKzEsMjEgQEAKK0RFU0NSSVBUSU9O
ID0gIk9FIGhlbHBlciBmb3IgbWFuaXB1bGF0aW5nIG5wbSBjYWNoZSIKK0xJQ0VOU0UgPSAiQXBh
Y2hlLTIuMCIKK0xJQ19GSUxFU19DSEtTVU0gPSAiZmlsZTovLyR7Q09NTU9OX0xJQ0VOU0VfRElS
fS9BcGFjaGUtMi4wO21kNT04OWFlYTRlMTdkOTlhN2NhY2RiZWVkNDZhMDA5NmIxMCIKKworU1JD
X1VSSSA9ICJcCisgICAgZmlsZTovL29lLW5wbS1jYWNoZSBcCisiCisKK2luaGVyaXQgbmF0aXZl
CisKK0IgPSAiJHtXT1JLRElSfS9idWlsZCIKKworZG9fY29uZmlndXJlKCkgeworICAgIHNlZCAt
ZSAncyFAQGxpYmRpckBAISR7bGliZGlyfSFnJyA8ICcke1dPUktESVJ9L29lLW5wbS1jYWNoZScg
PiAnJHtCfS9vZS1ucG0tY2FjaGUnCit9CisKK2RvX2luc3RhbGwoKSB7CisgICAgaW5zdGFsbCAt
RCAtcCAtbSAwNzU1ICR7Qn0vb2UtbnBtLWNhY2hlICR7RH0ke2JpbmRpcn0vb2UtbnBtLWNhY2hl
Cit9CisKK1JERVBFTkRTOiR7UE59ID0gIm5vZGVqcy1uYXRpdmUiCg==

--GOUUhtTHZomDIN7brZk4--

