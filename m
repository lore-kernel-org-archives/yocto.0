Subject: Dunfell 3.1.1 gcc-sanitizers build failure
To: yocto@lists.yoctoproject.org
From: "MikeB" <mabnhdev@gmail.com>
X-Originating-Location: Raleigh, North Carolina, US (107.13.78.59)
X-Originating-Platform: Windows Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 30 Jun 2020 14:56:46 -0700
Message-ID: <dlSN.1593554206630147499.1cxR@lists.yoctoproject.org>
X-Groupsio-MsgNum: 49793
Content-Type: multipart/mixed; boundary="SASxXHKtC1Q55DeNavzU"

--SASxXHKtC1Q55DeNavzU
Content-Type: multipart/alternative; boundary="OT8HrIpoIWd81xRTaxkL"

--OT8HrIpoIWd81xRTaxkL
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I recently tried upgrading from 3.1.0 to 3.1.1.=C2=A0 I'm not sure if this =
is a bug or just my problem.=C2=A0 I maintain five different architectures =
and all five have the same failure in gcc-sanitizers as I'm trying to build=
 the SDK.

| cat: /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work-shared/=
gcc-9.3.0-r0/gcc-9.3.0/gcc/defaults.h: No such file or directory
| WARNING: /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work/aar=
ch64-poky-linux/gcc-sanitizers/9.3.0-r0/temp/run.do_configure.31505:1 exit =
1 from 'grep -v "\#endif.*GCC_DEFAULTS_H" > /data/mabnhdev/exos-yocto-dunfe=
ll/build/exos-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/gcc=
-9.3.0/build.aarch64-poky-linux.aarch64-poky-linux/gcc/defaults.h.new'
| ERROR: Execution of '/data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/=
tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/temp/run.do_configure.3=
1505' failed with exit code 1:
| cat: /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work-shared/=
gcc-9.3.0-r0/gcc-9.3.0/gcc/defaults.h: No such file or directory
| WARNING: /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work/aar=
ch64-poky-linux/gcc-sanitizers/9.3.0-r0/temp/run.do_configure.31505:1 exit =
1 from 'grep -v "\#endif.*GCC_DEFAULTS_H" > /data/mabnhdev/exos-yocto-dunfe=
ll/build/exos-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/gcc=
-9.3.0/build.aarch64-poky-linux.aarch64-poky-linux/gcc/defaults.h.new'

At first, I thought this may be a dependency issue because I inherit "rm_w=
ork" to tidy up; but I tried a build without it - i.e. keeping all work aro=
und - and got the same failure.

I've attached the full error log.=C2=A0 Any troubleshooting advice would b=
e appreciated.

--OT8HrIpoIWd81xRTaxkL
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I recently tried upgrading from 3.1.0 to 3.1.1.&nbsp; I'm not sure if this =
is a bug or just my problem.&nbsp; I maintain five different architectures =
and all five have the same failure in gcc-sanitizers as I'm trying to build=
 the SDK.<br /><br />
<div>| cat: /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work-sh=
ared/gcc-9.3.0-r0/gcc-9.3.0/gcc/defaults.h: No such file or directory</div>
<div>| WARNING: /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/wor=
k/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/temp/run.do_configure.31505:1 =
exit 1 from 'grep -v "\#endif.*GCC_DEFAULTS_H" &gt; /data/mabnhdev/exos-yoc=
to-dunfell/build/exos-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.=
0-r0/gcc-9.3.0/build.aarch64-poky-linux.aarch64-poky-linux/gcc/defaults.h.n=
ew'</div>
<div>| ERROR: Execution of '/data/mabnhdev/exos-yocto-dunfell/build/exos-a=
rm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/temp/run.do_config=
ure.31505' failed with exit code 1:</div>
<div>| cat: /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work-sh=
ared/gcc-9.3.0-r0/gcc-9.3.0/gcc/defaults.h: No such file or directory</div>
<div>| WARNING: /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/wor=
k/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/temp/run.do_configure.31505:1 =
exit 1 from 'grep -v "\#endif.*GCC_DEFAULTS_H" &gt; /data/mabnhdev/exos-yoc=
to-dunfell/build/exos-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.=
0-r0/gcc-9.3.0/build.aarch64-poky-linux.aarch64-poky-linux/gcc/defaults.h.n=
ew'</div>
<div>&nbsp;</div>
At first, I thought this may be a dependency issue because I inherit "rm_w=
ork" to tidy up; but I tried a build without it - i.e. keeping all work aro=
und - and got the same failure.<br /><br />I've attached the full error log=
.&nbsp; Any troubleshooting advice would be appreciated.

--OT8HrIpoIWd81xRTaxkL--

--SASxXHKtC1Q55DeNavzU
Content-Type: application/octet-stream; name="log.do_configure.31505"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="log.do_configure.31505"

REVCVUc6IEV4ZWN1dGluZyBzaGVsbCBmdW5jdGlvbiBhdXRvdG9vbHNfcHJlY29uZmlndXJlCkRF
QlVHOiBTaGVsbCBmdW5jdGlvbiBhdXRvdG9vbHNfcHJlY29uZmlndXJlIGZpbmlzaGVkCkRFQlVH
OiBFeGVjdXRpbmcgcHl0aG9uIGZ1bmN0aW9uIGF1dG90b29sc19hY2xvY2FscwpERUJVRzogU0lU
RSBmaWxlcyBbJ2VuZGlhbi1saXR0bGUnLCAnYml0LTY0JywgJ2FybS1jb21tb24nLCAnYXJtLTY0
JywgJ2NvbW1vbi1saW51eCcsICdjb21tb24tZ2xpYmMnLCAnYWFyY2g2NC1saW51eCcsICdjb21t
b24nXQpERUJVRzogUHl0aG9uIGZ1bmN0aW9uIGF1dG90b29sc19hY2xvY2FscyBmaW5pc2hlZApE
RUJVRzogRXhlY3V0aW5nIHB5dGhvbiBmdW5jdGlvbiBnY2NfbXVsdGlsaWJfc2V0dXAKREVCVUc6
IFB5dGhvbiBmdW5jdGlvbiBnY2NfbXVsdGlsaWJfc2V0dXAgZmluaXNoZWQKREVCVUc6IEV4ZWN1
dGluZyBweXRob24gZnVuY3Rpb24gZXh0cmFjdF9zdGFzaGVkX2J1aWxkZGlyCkRFQlVHOiBzZWQg
LWUgJ3M6XlteL10qLzovZGF0YS9tYWJuaGRldi9leG9zLXlvY3RvLWR1bmZlbGwvYnVpbGQvZXhv
cy1hcm02NC90bXAvd29yay9hYXJjaDY0LXBva3ktbGludXgvZ2NjLXNhbml0aXplcnMvOS4zLjAt
cjAvZ2NjLTkuMy4wL2J1aWxkLmFhcmNoNjQtcG9reS1saW51eC5hYXJjaDY0LXBva3ktbGludXgv
OmcnIC9kYXRhL21hYm5oZGV2L2V4b3MteW9jdG8tZHVuZmVsbC9idWlsZC9leG9zLWFybTY0L3Rt
cC9zeXNyb290cy1jb21wb25lbnRzL3g4Nl82NC9nY2Mtc3Rhc2hlZC1idWlsZGRpci1hYXJjaDY0
LXBva3ktbGludXgvZml4bWVwYXRoIHwgeGFyZ3Mgc2VkIC1pIC1lICdzOkZJWE1FU1RBR0lOR0RJ
UlRBUkdFVDovZGF0YS9tYWJuaGRldi9leG9zLXlvY3RvLWR1bmZlbGwvYnVpbGQvZXhvcy1hcm02
NC90bXAvd29yay9hYXJjaDY0LXBva3ktbGludXgvZ2NjLXNhbml0aXplcnMvOS4zLjAtcjAvcmVj
aXBlLXN5c3Jvb3Q6ZzsgczpGSVhNRVNUQUdJTkdESVJIT1NUOi9kYXRhL21hYm5oZGV2L2V4b3Mt
eW9jdG8tZHVuZmVsbC9idWlsZC9leG9zLWFybTY0L3RtcC93b3JrL2FhcmNoNjQtcG9reS1saW51
eC9nY2Mtc2FuaXRpemVycy85LjMuMC1yMC9yZWNpcGUtc3lzcm9vdC1uYXRpdmU6ZycgLWUgJ3M6
RklYTUVfUFNFVURPX1NZU1JPT1Q6L2RhdGEvbWFibmhkZXYvZXhvcy15b2N0by1kdW5mZWxsL2J1
aWxkL2V4b3MtYXJtNjQvdG1wL3N5c3Jvb3RzLWNvbXBvbmVudHMveDg2XzY0L3BzZXVkby1uYXRp
dmU6ZycgLWUgJ3M6RklYTUVfSE9TVFRPT0xTX0RJUjovZGF0YS9tYWJuaGRldi9leG9zLXlvY3Rv
LWR1bmZlbGwvYnVpbGQvZXhvcy1hcm02NC90bXAvaG9zdHRvb2xzOmcnIC1lICdzOkZJWE1FX1BL
R0RBVEFfRElSOi9kYXRhL21hYm5oZGV2L2V4b3MteW9jdG8tZHVuZmVsbC9idWlsZC9leG9zLWFy
bTY0L3RtcC9wa2dkYXRhL2V4b3MtYXJtNjQ6ZycgLWUgJ3M6RklYTUVfUFNFVURPX0xPQ0FMU1RB
VEVESVI6L2RhdGEvbWFibmhkZXYvZXhvcy15b2N0by1kdW5mZWxsL2J1aWxkL2V4b3MtYXJtNjQv
dG1wL3dvcmsvYWFyY2g2NC1wb2t5LWxpbnV4L2djYy1zYW5pdGl6ZXJzLzkuMy4wLXIwL3BzZXVk
by86ZycgLWUgJ3M6RklYTUVfTE9HRklGTzovZGF0YS9tYWJuaGRldi9leG9zLXlvY3RvLWR1bmZl
bGwvYnVpbGQvZXhvcy1hcm02NC90bXAvd29yay9hYXJjaDY0LXBva3ktbGludXgvZ2NjLXNhbml0
aXplcnMvOS4zLjAtcjAvdGVtcC9maWZvLjMxNTA1OmcnCkRFQlVHOiBQeXRob24gZnVuY3Rpb24g
ZXh0cmFjdF9zdGFzaGVkX2J1aWxkZGlyIGZpbmlzaGVkCkRFQlVHOiBFeGVjdXRpbmcgc2hlbGwg
ZnVuY3Rpb24gZG9fY29uZmlndXJlCmNhdDogL2RhdGEvbWFibmhkZXYvZXhvcy15b2N0by1kdW5m
ZWxsL2J1aWxkL2V4b3MtYXJtNjQvdG1wL3dvcmstc2hhcmVkL2djYy05LjMuMC1yMC9nY2MtOS4z
LjAvZ2NjL2RlZmF1bHRzLmg6IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkKV0FSTklORzogL2Rh
dGEvbWFibmhkZXYvZXhvcy15b2N0by1kdW5mZWxsL2J1aWxkL2V4b3MtYXJtNjQvdG1wL3dvcmsv
YWFyY2g2NC1wb2t5LWxpbnV4L2djYy1zYW5pdGl6ZXJzLzkuMy4wLXIwL3RlbXAvcnVuLmRvX2Nv
bmZpZ3VyZS4zMTUwNToxIGV4aXQgMSBmcm9tICdncmVwIC12ICJcI2VuZGlmLipHQ0NfREVGQVVM
VFNfSCIgPiAvZGF0YS9tYWJuaGRldi9leG9zLXlvY3RvLWR1bmZlbGwvYnVpbGQvZXhvcy1hcm02
NC90bXAvd29yay9hYXJjaDY0LXBva3ktbGludXgvZ2NjLXNhbml0aXplcnMvOS4zLjAtcjAvZ2Nj
LTkuMy4wL2J1aWxkLmFhcmNoNjQtcG9reS1saW51eC5hYXJjaDY0LXBva3ktbGludXgvZ2NjL2Rl
ZmF1bHRzLmgubmV3JwpFUlJPUjogRXhlY3V0aW9uIG9mICcvZGF0YS9tYWJuaGRldi9leG9zLXlv
Y3RvLWR1bmZlbGwvYnVpbGQvZXhvcy1hcm02NC90bXAvd29yay9hYXJjaDY0LXBva3ktbGludXgv
Z2NjLXNhbml0aXplcnMvOS4zLjAtcjAvdGVtcC9ydW4uZG9fY29uZmlndXJlLjMxNTA1JyBmYWls
ZWQgd2l0aCBleGl0IGNvZGUgMToKY2F0OiAvZGF0YS9tYWJuaGRldi9leG9zLXlvY3RvLWR1bmZl
bGwvYnVpbGQvZXhvcy1hcm02NC90bXAvd29yay1zaGFyZWQvZ2NjLTkuMy4wLXIwL2djYy05LjMu
MC9nY2MvZGVmYXVsdHMuaDogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeQpXQVJOSU5HOiAvZGF0
YS9tYWJuaGRldi9leG9zLXlvY3RvLWR1bmZlbGwvYnVpbGQvZXhvcy1hcm02NC90bXAvd29yay9h
YXJjaDY0LXBva3ktbGludXgvZ2NjLXNhbml0aXplcnMvOS4zLjAtcjAvdGVtcC9ydW4uZG9fY29u
ZmlndXJlLjMxNTA1OjEgZXhpdCAxIGZyb20gJ2dyZXAgLXYgIlwjZW5kaWYuKkdDQ19ERUZBVUxU
U19IIiA+IC9kYXRhL21hYm5oZGV2L2V4b3MteW9jdG8tZHVuZmVsbC9idWlsZC9leG9zLWFybTY0
L3RtcC93b3JrL2FhcmNoNjQtcG9reS1saW51eC9nY2Mtc2FuaXRpemVycy85LjMuMC1yMC9nY2Mt
OS4zLjAvYnVpbGQuYWFyY2g2NC1wb2t5LWxpbnV4LmFhcmNoNjQtcG9reS1saW51eC9nY2MvZGVm
YXVsdHMuaC5uZXcnCgo=

--SASxXHKtC1Q55DeNavzU--
