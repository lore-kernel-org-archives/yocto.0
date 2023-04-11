Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64E6BC76196
	for <webhook@archiver.kernel.org>; Tue, 11 Apr 2023 07:13:20 +0000 (UTC)
Subject: Re: Missing .o files.
To: yocto@lists.yoctoproject.org
From: "MOHAMMED HASSAN" <hassanchattarki@gmail.com>
X-Originating-Location: Hyderabad, Telangana, IN (183.82.123.98)
X-Originating-Platform: Linux Chrome 110
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 11 Apr 2023 00:13:13 -0700
References: <CAMKF1srFjLA0S+TOprWbfOV4er40E2KQ7GOkW7S=2_JgeKy0yw@mail.gmail.com>
In-Reply-To: <CAMKF1srFjLA0S+TOprWbfOV4er40E2KQ7GOkW7S=2_JgeKy0yw@mail.gmail.com>
Message-ID: <10320.1681197193406830686@lists.yoctoproject.org>
Content-Type: multipart/mixed; boundary="1We3lEPdeYghXGNps4J8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Apr 2023 07:13:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59672

--1We3lEPdeYghXGNps4J8
Content-Type: multipart/alternative; boundary="3jhdswXrGRbfsyxDUTQI"

--3jhdswXrGRbfsyxDUTQI
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Khem,
Thanks for all your support.
I added the following lines in my recipe file.
do_install() {
install -d ${D}${bindir}
# install -m 0755 /home/mohan/amlogic/meta-c/recipes-example/zigbee/files/g=
ecko_sdk_suite/v3.2/build/Z3GatewayHostm/build/exe ${D}
install -m 0755 /home/mohan/amlogic/meta-c/recipes-example/zigbee/files/gec=
ko_sdk_suite/v3.2/build/Z3GatewayHostm/build/exe/hostforEdge3 ${D}${bindir}
# chmod 0755 /home/mohan/amlogic/meta-c/recipes-example/zigbee/files/gecko_=
sdk_suite/v3.2/build/Z3GatewayHostm/build/exe/hostforEdge3
# cp /home/mohan/amlogic/meta-c/recipes-example/zigbee/files/gecko_sdk_suit=
e/v3.2/build/Z3GatewayHostm/build/exe/hostforEdge3 ${D}${bindir}
}

bitbake zigbee works fine but bitbake lib32-amlogic-yocto returns the error=
 message.

ERROR: lib32-zigbee-0.1-r0 do_package: Fatal errors occurred in subprocesse=
s:
Command '['arm-pokymllib32-linux-gnueabi-objcopy', '--only-keep-debug', '/h=
ome/mohan/amlogic/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/=
lib32-zigbee/0.1-r0/package/usr/bin/hostforEdge3', '/home/mohan/amlogic/bui=
ld/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-zigbee/0.1-r0/p=
ackage/usr/bin/.debug/hostforEdge3']' returned non-zero exit status 1.
Subprocess output:arm-pokymllib32-linux-gnueabi-objcopy: /home/mohan/amlogi=
c/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-zigbee/0.1=
-r0/package/usr/bin/hostforEdge3: file format not recognized

ERROR: Logfile of failure stored in: /home/mohan/amlogic/build/tmp/work/arm=
v7at2hf-neon-pokymllib32-linux-gnueabi/lib32-zigbee/0.1-r0/temp/log.do_pack=
age.246282
ERROR: Task (virtual:multilib:lib32:/home/mohan/amlogic/meta-c/recipes-exam=
ple/zigbee/zigbee_0.1.bb:do_package) failed with exit code '1'
NOTE: Tasks Summary: Attempted 5830 tasks of which 5825 didn't need to be r=
erun and 1 failed.

Is it because of the compiler in the makefile?
Is it possible to bypass this error.

Please guide.
Thanks and Regards,
Hassan

--3jhdswXrGRbfsyxDUTQI
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Khem,<br />Thanks for all your support.<br />I added the following lines=
 in my recipe file.<br />
<div>do_install() {</div>
<div><span style=3D"white-space: pre;"> </span>install -d ${D}${bindir}</di=
v>
<div>#<span style=3D"white-space: pre;"> </span>install -m 0755 /home/mohan=
/amlogic/meta-c/recipes-example/zigbee/files/gecko_sdk_suite/v3.2/build/Z3G=
atewayHostm/build/exe ${D}</div>
<div><span style=3D"white-space: pre;"> </span>install -m 0755 /home/mohan/=
amlogic/meta-c/recipes-example/zigbee/files/gecko_sdk_suite/v3.2/build/Z3Ga=
tewayHostm/build/exe/hostforEdge3 ${D}${bindir}</div>
<div>#<span style=3D"white-space: pre;"> </span>chmod 0755 /home/mohan/amlo=
gic/meta-c/recipes-example/zigbee/files/gecko_sdk_suite/v3.2/build/Z3Gatewa=
yHostm/build/exe/hostforEdge3</div>
<div>#<span style=3D"white-space: pre;"> </span>cp /home/mohan/amlogic/meta=
-c/recipes-example/zigbee/files/gecko_sdk_suite/v3.2/build/Z3GatewayHostm/b=
uild/exe/hostforEdge3 ${D}${bindir}</div>
<div>}<br /><br />bitbake zigbee works fine but bitbake lib32-amlogic-yocto=
 returns the error message.<br /><br />
<div>ERROR: lib32-zigbee-0.1-r0 do_package: Fatal errors occurred in subpro=
cesses:</div>
<div>Command '['arm-pokymllib32-linux-gnueabi-objcopy', '--only-keep-debug'=
, '/home/mohan/amlogic/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnu=
eabi/lib32-zigbee/0.1-r0/package/usr/bin/hostforEdge3', '/home/mohan/amlogi=
c/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-zigbee/0.1=
-r0/package/usr/bin/.debug/hostforEdge3']' returned non-zero exit status 1.=
</div>
<div>Subprocess output:arm-pokymllib32-linux-gnueabi-objcopy: /home/mohan/a=
mlogic/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-zigbe=
e/0.1-r0/package/usr/bin/hostforEdge3: file format not recognized</div>
<div>&nbsp;</div>
<div>ERROR: Logfile of failure stored in: /home/mohan/amlogic/build/tmp/wor=
k/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-zigbee/0.1-r0/temp/log.do=
_package.246282</div>
<div>ERROR: Task (virtual:multilib:lib32:/home/mohan/amlogic/meta-c/recipes=
-example/zigbee/zigbee_0.1.bb:do_package) failed with exit code '1'</div>
<div>NOTE: Tasks Summary: Attempted 5830 tasks of which 5825 didn't need to=
 be rerun and 1 failed.<br /><br />Is it because of the compiler in the mak=
efile?<br />Is it possible to bypass this error.<br /><br />Please guide.<b=
r />Thanks and Regards,<br />Hassan</div>
<div>&nbsp;</div>
</div>

--3jhdswXrGRbfsyxDUTQI--

--1We3lEPdeYghXGNps4J8
Content-Type: application/octet-stream; name="log.do_package"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="log.do_package"

REVCVUc6IEV4ZWN1dGluZyBweXRob24gZnVuY3Rpb24gc3N0YXRlX3Rhc2tfcHJlZnVuYwpERUJV
RzogUHl0aG9uIGZ1bmN0aW9uIHNzdGF0ZV90YXNrX3ByZWZ1bmMgZmluaXNoZWQKREVCVUc6IEV4
ZWN1dGluZyBweXRob24gZnVuY3Rpb24gZXh0ZW5kX3JlY2lwZV9zeXNyb290Ck5PVEU6IERpcmVj
dCBkZXBlbmRlbmNpZXMgYXJlIFsnL2hvbWUvbW9oYW4vYW1sb2dpYy9wb2t5L21ldGEvcmVjaXBl
cy1kZXZ0b29scy9xdWlsdC9xdWlsdC1uYXRpdmVfMC42Ni5iYjpkb19wb3B1bGF0ZV9zeXNyb290
JywgJ3ZpcnR1YWw6bXVsdGlsaWI6bGliMzI6L2hvbWUvbW9oYW4vYW1sb2dpYy9wb2t5L21ldGEv
cmVjaXBlcy1kZXZ0b29scy9nY2MvZ2NjLWNyb3NzXzkuMy5iYjpkb19wb3B1bGF0ZV9zeXNyb290
JywgJ3ZpcnR1YWw6bmF0aXZlOi9ob21lL21vaGFuL2FtbG9naWMvcG9reS9tZXRhL3JlY2lwZXMt
ZGV2dG9vbHMvcGF0Y2gvcGF0Y2hfMi43LjYuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICd2aXJ0
dWFsOm11bHRpbGliOmxpYjMyOi9ob21lL21vaGFuL2FtbG9naWMvcG9reS9tZXRhL3JlY2lwZXMt
Y29yZS9uY3Vyc2VzL25jdXJzZXNfNi4yLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVh
bDptdWx0aWxpYjpsaWIzMjovaG9tZS9tb2hhbi9hbWxvZ2ljL3Bva3kvbWV0YS9yZWNpcGVzLWNv
cmUvZ2xpYmMvZ2xpYmNfMi4zMS5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJ3ZpcnR1YWw6bXVs
dGlsaWI6bGliMzI6L2hvbWUvbW9oYW4vYW1sb2dpYy9tZXRhLWdwbHYyL3JlY2lwZXMtY29yZS9y
ZWFkbGluZS9yZWFkbGluZV81LjIuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICd2aXJ0dWFsOm5h
dGl2ZTovaG9tZS9tb2hhbi9hbWxvZ2ljL3Bva3kvbWV0YS9yZWNpcGVzLWRldnRvb2xzL2R3YXJm
c3JjZmlsZXMvZHdhcmZzcmNmaWxlcy5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJ3ZpcnR1YWw6
bXVsdGlsaWI6bGliMzI6L2hvbWUvbW9oYW4vYW1sb2dpYy9wb2t5L21ldGEvcmVjaXBlcy1kZXZ0
b29scy9nY2MvZ2NjLXJ1bnRpbWVfOS4zLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVh
bDpuYXRpdmU6L2hvbWUvbW9oYW4vYW1sb2dpYy9wb2t5L21ldGEvcmVjaXBlcy1kZXZ0b29scy9y
cG0vcnBtXzQuMTQuMi4xLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6
L2hvbWUvbW9oYW4vYW1sb2dpYy9wb2t5L21ldGEvcmVjaXBlcy1kZXZ0b29scy9wc2V1ZG8vcHNl
dWRvX2dpdC5iYjpkb19wb3B1bGF0ZV9zeXNyb290J10KTk9URTogSW5zdGFsbGVkIGludG8gc3lz
cm9vdDogW10KTk9URTogU2tpcHBpbmcgYXMgYWxyZWFkeSBleGlzdHMgaW4gc3lzcm9vdDogWydx
dWlsdC1uYXRpdmUnLCAnbGliMzItZ2NjLWNyb3NzLWFybScsICdwYXRjaC1uYXRpdmUnLCAnbGli
MzItbmN1cnNlcycsICdsaWIzMi1nbGliYycsICdsaWIzMi1yZWFkbGluZScsICdkd2FyZnNyY2Zp
bGVzLW5hdGl2ZScsICdsaWIzMi1nY2MtcnVudGltZScsICdycG0tbmF0aXZlJywgJ3BzZXVkby1u
YXRpdmUnLCAnbGliMzItYmludXRpbHMtY3Jvc3MtYXJtJywgJ3RleGluZm8tZHVtbXktbmF0aXZl
JywgJ2xpYnRvb2wtbmF0aXZlJywgJ2xpYm1wYy1uYXRpdmUnLCAnemxpYi1uYXRpdmUnLCAnYXV0
b21ha2UtbmF0aXZlJywgJ2F1dG9jb25mLW5hdGl2ZScsICdmbGV4LW5hdGl2ZScsICdnbnUtY29u
ZmlnLW5hdGl2ZScsICdtcGZyLW5hdGl2ZScsICd4ei1uYXRpdmUnLCAnbGliMzItbGludXgtbGli
Yy1oZWFkZXJzJywgJ2dtcC1uYXRpdmUnLCAncHl0aG9uMy1uYXRpdmUnLCAncG9wdC1uYXRpdmUn
LCAnbGliYXJjaGl2ZS1uYXRpdmUnLCAnZ2V0dGV4dC1taW5pbWFsLW5hdGl2ZScsICdkYnVzLW5h
dGl2ZScsICdwa2djb25maWctbmF0aXZlJywgJ2ZpbGUtbmF0aXZlJywgJ3BlcmwtbmF0aXZlJywg
J2RiLW5hdGl2ZScsICdvcGVuc3NsLW5hdGl2ZScsICdiemlwMi1uYXRpdmUnLCAnZWxmdXRpbHMt
bmF0aXZlJywgJ2F0dHItbmF0aXZlJywgJ2xpYjMyLW9wa2ctdXRpbHMnLCAnbGliMzItbGliZ2Nj
JywgJ200LW5hdGl2ZScsICdzcWxpdGUzLW5hdGl2ZScsICd1dGlsLWxpbnV4LW5hdGl2ZScsICdn
ZGJtLW5hdGl2ZScsICdsaWJ0aXJwYy1uYXRpdmUnLCAnbGlibnNsMi1uYXRpdmUnLCAnbGliZmZp
LW5hdGl2ZScsICdyZWFkbGluZS1uYXRpdmUnLCAnZTJmc3Byb2dzLW5hdGl2ZScsICdsem8tbmF0
aXZlJywgJ2V4cGF0LW5hdGl2ZScsICdsaWJwY3JlMi1uYXRpdmUnLCAnbmN1cnNlcy1uYXRpdmUn
LCAnbGliY2FwLW5nLW5hdGl2ZSddCkRFQlVHOiBQeXRob24gZnVuY3Rpb24gZXh0ZW5kX3JlY2lw
ZV9zeXNyb290IGZpbmlzaGVkCkRFQlVHOiBFeGVjdXRpbmcgcHl0aG9uIGZ1bmN0aW9uIGRvX3Bh
Y2thZ2UKREVCVUc6IEV4ZWN1dGluZyBweXRob24gZnVuY3Rpb24gcGFja2FnZV9jb252ZXJ0X3By
X2F1dG9pbmMKREVCVUc6IFB5dGhvbiBmdW5jdGlvbiBwYWNrYWdlX2NvbnZlcnRfcHJfYXV0b2lu
YyBmaW5pc2hlZApERUJVRzogRXhlY3V0aW5nIHB5dGhvbiBmdW5jdGlvbiBwYWNrYWdlX3ByZXBh
cmVfcGtnZGF0YQpOT1RFOiBJbnN0YWxsZWQgaW50byBwa2dkYXRhLXN5c3Jvb3Q6IFsnbGliMzIt
Z2xpYmMnLCAnbGliMzItcmVhZGxpbmUnLCAnbGliMzItZ2NjLXJ1bnRpbWUnLCAnbGliMzItbmN1
cnNlcycsICdsaWIzMi1saW51eC1saWJjLWhlYWRlcnMnLCAnbGliMzItbGliZ2NjJywgJ2xpYjMy
LW9wa2ctdXRpbHMnXQpERUJVRzogUHl0aG9uIGZ1bmN0aW9uIHBhY2thZ2VfcHJlcGFyZV9wa2dk
YXRhIGZpbmlzaGVkCkRFQlVHOiBFeGVjdXRpbmcgcHl0aG9uIGZ1bmN0aW9uIHBlcmZvcm1fcGFj
a2FnZWNvcHkKREVCVUc6IFB5dGhvbiBmdW5jdGlvbiBwZXJmb3JtX3BhY2thZ2Vjb3B5IGZpbmlz
aGVkCkRFQlVHOiBFeGVjdXRpbmcgcHl0aG9uIGZ1bmN0aW9uIHNwbGl0X2FuZF9zdHJpcF9maWxl
cwpFUlJPUjogRmF0YWwgZXJyb3JzIG9jY3VycmVkIGluIHN1YnByb2Nlc3NlczoKQ29tbWFuZCAn
Wydhcm0tcG9reW1sbGliMzItbGludXgtZ251ZWFiaS1vYmpjb3B5JywgJy0tb25seS1rZWVwLWRl
YnVnJywgJy9ob21lL21vaGFuL2FtbG9naWMvYnVpbGQvdG1wL3dvcmsvYXJtdjdhdDJoZi1uZW9u
LXBva3ltbGxpYjMyLWxpbnV4LWdudWVhYmkvbGliMzItemlnYmVlLzAuMS1yMC9wYWNrYWdlL3Vz
ci9iaW4vaG9zdGZvckVkZ2UzJywgJy9ob21lL21vaGFuL2FtbG9naWMvYnVpbGQvdG1wL3dvcmsv
YXJtdjdhdDJoZi1uZW9uLXBva3ltbGxpYjMyLWxpbnV4LWdudWVhYmkvbGliMzItemlnYmVlLzAu
MS1yMC9wYWNrYWdlL3Vzci9iaW4vLmRlYnVnL2hvc3Rmb3JFZGdlMyddJyByZXR1cm5lZCBub24t
emVybyBleGl0IHN0YXR1cyAxLgpTdWJwcm9jZXNzIG91dHB1dDphcm0tcG9reW1sbGliMzItbGlu
dXgtZ251ZWFiaS1vYmpjb3B5OiAvaG9tZS9tb2hhbi9hbWxvZ2ljL2J1aWxkL3RtcC93b3JrL2Fy
bXY3YXQyaGYtbmVvbi1wb2t5bWxsaWIzMi1saW51eC1nbnVlYWJpL2xpYjMyLXppZ2JlZS8wLjEt
cjAvcGFja2FnZS91c3IvYmluL2hvc3Rmb3JFZGdlMzogZmlsZSBmb3JtYXQgbm90IHJlY29nbml6
ZWQKCkRFQlVHOiBQeXRob24gZnVuY3Rpb24gc3BsaXRfYW5kX3N0cmlwX2ZpbGVzIGZpbmlzaGVk
CkRFQlVHOiBQeXRob24gZnVuY3Rpb24gZG9fcGFja2FnZSBmaW5pc2hlZAo=

--1We3lEPdeYghXGNps4J8--

