Return-Path: <lukas.weiss@janitza.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A601BC25B74
	for <webhook@archiver.kernel.org>; Tue, 21 May 2024 13:39:05 +0000 (UTC)
Subject: Git Auth error on ls-remote (git-remote-https) since update to Yocto-5.0
To: yocto@lists.yoctoproject.org
From: =?UTF-8?B?THVrYXMgV2Vpw58=?= <lukas.weiss@janitza.de>
X-Originating-Location: Schoeffengrund, Hesse, DE (195.145.150.162)
X-Originating-Platform: Linux Chrome 124
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 21 May 2024 06:38:56 -0700
Message-ID: <jYQv.1716298736518064029.eGIf@lists.yoctoproject.org>
Content-Type: multipart/mixed; boundary="SAvrdyNxzM6QllFGcYyg"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 May 2024 13:39:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63152

--SAvrdyNxzM6QllFGcYyg
Content-Type: multipart/alternative; boundary="ckdzbllLmk4Dm3br9w3M"

--ckdzbllLmk4Dm3br9w3M
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello there,
i just updated our Yocto Project to latest 5.0 release. First tests went we=
ll, but now after a subsequent repo-update (tag=3Dyocto-5.0) i have problem=
s with call of most bitbake calls because of an error in some recipes with =
code in our own repository: Clean build runs without problems, but when i r=
un fetch for any recipe, i get the following error:

>=20
> $ bitbake -C fetch myapp
> ...
> bb.data_smart.ExpansionError: Failure expanding variable
> fetcher_hashes_dummyfunc[vardepvalue], expression was
> ${@bb.fetch.get_hashvalue(d)} which triggered exception FetchError:
> Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/11510/bus"; export
> GIT_SSH=3D"/home/admin/workspaces/yocto/build/conf/ssh_util/yocto_ssh.sh"=
;
> export PATH=3D"(...)"; export HOME=3D"/home/admin"; git -c gc.autoDetach=
=3Dfalse
> -c core.pager=3Dcat -c safe.bareRepository=3Dall ls-remote
> https://gitreader:XXXXXXXXXX@repo.srv/swupdate.git failed with exit code
> 128, output:
> fatal: Authentication failed for 'https://repo.srv/swupdate.git/'

(shortened, full output see attachment; anonymized)

My Recipe of swupdate uses
>=20
> SRC_URI =3D
> "git://repo.srv/swupdate.git;protocol=3Dhttps;user=3D${AUTH_SCM_USER}:${A=
UTH_SCM_PASSWD};branch=3D${BRANCH}"
>=20

I have multiple Recipes using this scheme, most are working, three not. I c=
an not find a difference. When i run the given command ( green ) with hosts=
 git, everything works fine (so it is not really a auth problem!)

I figured out, that the problem belongs to the git ls-remote command of the=
 git-remote-https program in recipes recipe-sysroot-native dir ( u-boot-pla=
t/2019.01-/recipe-sysroot-native/usr/share/git-core/git-remote-https ). I c=
an even reproduce this, when i run the ls-remote git command manually with =
my hosts git, with GIT_EXEC_PATH -Env variable set to the git-core dir in r=
ecipe-sysroot-native.=C2=A0 When i replace the git-remote-https program wit=
h the hosts one, everything runs fine.

Any ideas what is going wrong here?

PS: I didn't have the Problem on older Yocto-Versions.

--ckdzbllLmk4Dm3br9w3M
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello there,&nbsp;<br />i just updated our Yocto Project to latest 5.0 rele=
ase. First tests went well, but now after a subsequent repo-update (tag=3Dy=
octo-5.0) i have problems with call of most bitbake calls because of an err=
or in some recipes with code in our own repository: Clean build runs withou=
t problems, but when i run <em>fetch</em> for any recipe, i get the followi=
ng error:<br />
<blockquote>$ bitbake -C fetch myapp<br />...<br />bb.data_smart.ExpansionE=
rror: Failure expanding variable fetcher_hashes_dummyfunc[vardepvalue], exp=
ression was ${@bb.fetch.get_hashvalue(d)} which triggered exception FetchEr=
ror: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export DBUS=
_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/11510/bus"; export GIT_SSH=3D=
"/home/admin/workspaces/yocto/build/conf/ssh_util/yocto_ssh.sh"; export PAT=
H=3D"(...)"; export HOME=3D"/home/admin"; <span style=3D"color: #169179;">g=
it -c gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dal=
l ls-remote https://gitreader:XXXXXXXXXX@repo.srv/swupdate.git</span> &nbsp=
;failed with exit code 128, output:<br /><span style=3D"color: #ba372a;">fa=
tal: Authentication failed for 'https://repo.srv/swupdate.git/'</span></blo=
ckquote>
(shortened, full output see attachment; anonymized)<br /><br />My Recipe of=
 swupdate uses
<blockquote>SRC_URI =3D "git://repo.srv/swupdate.git;protocol=3Dhttps;user=
=3D${AUTH_SCM_USER}:${AUTH_SCM_PASSWD};branch=3D${BRANCH}"</blockquote>
I have multiple Recipes using this scheme, most are working, three not. I c=
an not find a difference. When i run the given command (<span style=3D"colo=
r: #169179;">green</span>) with hosts git, everything works fine (so it is =
not <em>really</em> a auth problem!)<br /><br />I figured out, that the pro=
blem belongs to the <em>git ls-remote</em> command of the <em>git-remote-ht=
tps</em> program in recipes <em>recipe-sysroot-native</em> dir (<em>u-boot-=
plat/2019.01-/recipe-sysroot-native/usr/share/git-core/git-remote-https</em=
>). I can even reproduce this, when i run the <em>ls-remote</em> git comman=
d manually with my hosts git, with <em>GIT_EXEC_PATH</em>-Env variable set =
to the <em>git-core</em> dir in <em>recipe-sysroot-native</em>.&nbsp; When =
i replace the <em>git-remote-https</em> program with the hosts one, everyth=
ing runs fine.&nbsp;<br /><br />Any ideas what is going wrong here?<br /><b=
r />PS: I didn't have the Problem on older Yocto-Versions.

--ckdzbllLmk4Dm3br9w3M--

--SAvrdyNxzM6QllFGcYyg
Content-Type: text/plain; name="bitbake.txt"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="bitbake.txt"

JCBiaXRiYWtlIC1DIGZldGNoIG15YXBwCkxvYWRpbmcgY2FjaGU6IDEwMCUgfCMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyN8IFRpbWU6
IDA6MDA6MDAKTG9hZGVkIDQ3NTMgZW50cmllcyBmcm9tIGRlcGVuZGVuY3kgY2FjaGUuCldBUk5J
Tkc6IC9ob21lL2FkbWluL3dvcmtzcGFjZXMveW9jdG8vYnVpbGQvLi4vc291cmNlcy9tZXRhLXBs
YXQvcmVjaXBlcy1zdXBwb3J0L3N3dXBkYXRlL3N3dXBkYXRlX2dpdC5iYjogRXhjZXB0aW9uIGR1
cmluZyBidWlsZF9kZXBlbmRlbmNpZXMgZm9yIGZldGNoZXJfaGFzaGVzX2R1bW15ZnVuYyAgLS06
LS06LS0KV0FSTklORzogL2hvbWUvYWRtaW4vd29ya3NwYWNlcy95b2N0by9idWlsZC8uLi9zb3Vy
Y2VzL21ldGEtcGxhdC9yZWNpcGVzLXN1cHBvcnQvc3d1cGRhdGUvc3d1cGRhdGVfZ2l0LmJiOiBF
cnJvciBkdXJpbmcgZmluYWxpc2Ugb2YgL2hvbWUvYWRtaW4vd29ya3NwYWNlcy95b2N0by9idWls
ZC8uLi9zb3VyY2VzL21ldGEtcGxhdC9yZWNpcGVzLXN1cHBvcnQvc3d1cGRhdGUvc3d1cGRhdGVf
Z2l0LmJiCldBUk5JTkc6IC9ob21lL2FkbWluL3dvcmtzcGFjZXMveW9jdG8vYnVpbGQvLi4vc291
cmNlcy9tZXRhLXBsYXQvcmVjaXBlcy1ic3AvbGludXgtcGxhdC9saW51eC1wbGF0XzQuNi5iYjog
RXhjZXB0aW9uIGR1cmluZyBidWlsZF9kZXBlbmRlbmNpZXMgZm9yIGZldGNoZXJfaGFzaGVzX2R1
bW15ZnVuYwpXQVJOSU5HOiAvaG9tZS9hZG1pbi93b3Jrc3BhY2VzL3lvY3RvL2J1aWxkLy4uL3Nv
dXJjZXMvbWV0YS1wbGF0L3JlY2lwZXMtYnNwL2xpbnV4LXBsYXQvbGludXgtcGxhdF80LjYuYmI6
IEVycm9yIGR1cmluZyBmaW5hbGlzZSBvZiAvaG9tZS9hZG1pbi93b3Jrc3BhY2VzL3lvY3RvL2J1
aWxkLy4uL3NvdXJjZXMvbWV0YS1wbGF0L3JlY2lwZXMtYnNwL2xpbnV4LXBsYXQvbGludXgtcGxh
dF80LjYuYmIKV0FSTklORzogL2hvbWUvYWRtaW4vd29ya3NwYWNlcy95b2N0by9idWlsZC8uLi9z
b3VyY2VzL21ldGEtcGxhdC9yZWNpcGVzLWJzcC91LWJvb3QtcGxhdC91LWJvb3QtcGxhdF8yMDE5
LjAxLmJiOiBFeGNlcHRpb24gZHVyaW5nIGJ1aWxkX2RlcGVuZGVuY2llcyBmb3IgZmV0Y2hlcl9o
YXNoZXNfZHVtbXlmdW5jCldBUk5JTkc6IC9ob21lL2FkbWluL3dvcmtzcGFjZXMveW9jdG8vYnVp
bGQvLi4vc291cmNlcy9tZXRhLXBsYXQvcmVjaXBlcy1ic3AvdS1ib290LXBsYXQvdS1ib290LXBs
YXRfMjAxOS4wMS5iYjogRXJyb3IgZHVyaW5nIGZpbmFsaXNlIG9mIC9ob21lL2FkbWluL3dvcmtz
cGFjZXMveW9jdG8vYnVpbGQvLi4vc291cmNlcy9tZXRhLXBsYXQvcmVjaXBlcy1ic3AvdS1ib290
LXBsYXQvdS1ib290LXBsYXRfMjAxOS4wMS5iYgpFUlJPUjogRXhwYW5zaW9uRXJyb3IgZHVyaW5n
IHBhcnNpbmcgL2hvbWUvYWRtaW4vd29ya3NwYWNlcy95b2N0by9idWlsZC8uLi9zb3VyY2VzL21l
dGEtcGxhdC9yZWNpcGVzLXN1cHBvcnQvc3d1cGRhdGUvc3d1cGRhdGVfZ2l0LmJiClRyYWNlYmFj
ayAobW9zdCByZWNlbnQgY2FsbCBsYXN0KToKICBGaWxlICIvaG9tZS9hZG1pbi93b3Jrc3BhY2Vz
L3lvY3RvL3NvdXJjZXMvcG9reS9iaXRiYWtlL2xpYi9iYi9mZXRjaDIvX19pbml0X18ucHkiLCBs
aW5lIDEyNDgsIGluIHNyY3Jldl9pbnRlcm5hbF9oZWxwZXIodWQ9PGJiLmZldGNoMi5GZXRjaERh
dGEgb2JqZWN0IGF0IDB4N2ZjM2Y5YzczNjkwPiwgZD08YmIuZGF0YV9zbWFydC5EYXRhU21hcnQg
b2JqZWN0IGF0IDB4N2ZjNDA0ZTg0ZDkwPiwgbmFtZT0nZGVmYXVsdCcpOgogICAgICAgICAgICAg
ZC5zZXRWYXIoIl9fQkJBVVRPUkVWX0FDVEVEX1VQT04iLCBUcnVlKQogICAgPiAgICAgICAgc3Jj
cmV2ID0gdWQubWV0aG9kLmxhdGVzdF9yZXZpc2lvbih1ZCwgZCwgbmFtZSkKICAgICAKICBGaWxl
ICIvaG9tZS9hZG1pbi93b3Jrc3BhY2VzL3lvY3RvL3NvdXJjZXMvcG9reS9iaXRiYWtlL2xpYi9i
Yi9mZXRjaDIvX19pbml0X18ucHkiLCBsaW5lIDE2NzAsIGluIEdpdC5sYXRlc3RfcmV2aXNpb24o
dWQ9PGJiLmZldGNoMi5GZXRjaERhdGEgb2JqZWN0IGF0IDB4N2ZjM2Y5YzczNjkwPiwgZD08YmIu
ZGF0YV9zbWFydC5EYXRhU21hcnQgb2JqZWN0IGF0IDB4N2ZjNDA0ZTg0ZDkwPiwgbmFtZT0nZGVm
YXVsdCcpOgogICAgICAgICAgICAgZXhjZXB0IEtleUVycm9yOgogICAgPiAgICAgICAgICAgIHJl
dnNba2V5XSA9IHJldiA9IHNlbGYuX2xhdGVzdF9yZXZpc2lvbih1ZCwgZCwgbmFtZSkKICAgICAg
ICAgICAgICAgICByZXR1cm4gcmV2CiAgRmlsZSAiL2hvbWUvYWRtaW4vd29ya3NwYWNlcy95b2N0
by9zb3VyY2VzL3Bva3kvYml0YmFrZS9saWIvYmIvZmV0Y2gyL2dpdC5weSIsIGxpbmUgODUwLCBp
biBHaXQuX2xhdGVzdF9yZXZpc2lvbih1ZD08YmIuZmV0Y2gyLkZldGNoRGF0YSBvYmplY3QgYXQg
MHg3ZmMzZjljNzM2OTA+LCBkPTxiYi5kYXRhX3NtYXJ0LkRhdGFTbWFydCBvYmplY3QgYXQgMHg3
ZmM0MDRlODRkOTA+LCBuYW1lPSdkZWZhdWx0Jyk6CiAgICAgCiAgICA+ICAgICAgICBvdXRwdXQg
PSBzZWxmLl9sc3JlbW90ZSh1ZCwgZCwgIiIpCiAgICAgICAgICAgICAjIFRhZ3Mgb2YgdGhlIGZv
cm0gXnt9IG1heSBub3Qgd29yaywgbmVlZCB0byBmYWxsYmFjayB0byBvdGhlciBmb3JtCiAgRmls
ZSAiL2hvbWUvYWRtaW4vd29ya3NwYWNlcy95b2N0by9zb3VyY2VzL3Bva3kvYml0YmFrZS9saWIv
YmIvZmV0Y2gyL2dpdC5weSIsIGxpbmUgODMzLCBpbiBHaXQuX2xzcmVtb3RlKHVkPTxiYi5mZXRj
aDIuRmV0Y2hEYXRhIG9iamVjdCBhdCAweDdmYzNmOWM3MzY5MD4sIGQ9PGJiLmRhdGFfc21hcnQu
RGF0YVNtYXJ0IG9iamVjdCBhdCAweDdmYzQwNGU4NGQ5MD4sIHNlYXJjaD0nJyk6CiAgICAgICAg
ICAgICAgICAgICAgIGJiLmZldGNoMi5jaGVja19uZXR3b3JrX2FjY2VzcyhkLCBjbWQsIHJlcG91
cmwpCiAgICA+ICAgICAgICAgICAgb3V0cHV0ID0gcnVuZmV0Y2hjbWQoY21kLCBkLCBUcnVlKQog
ICAgICAgICAgICAgICAgIGlmIG5vdCBvdXRwdXQ6CiAgRmlsZSAiL2hvbWUvYWRtaW4vd29ya3Nw
YWNlcy95b2N0by9zb3VyY2VzL3Bva3kvYml0YmFrZS9saWIvYmIvZmV0Y2gyL19faW5pdF9fLnB5
IiwgbGluZSA5NjAsIGluIHJ1bmZldGNoY21kKGNtZD0nZXhwb3J0IFBTRVVET19ESVNBQkxFRD0x
OyBleHBvcnQgREJVU19TRVNTSU9OX0JVU19BRERSRVNTPSJ1bml4OnBhdGg9L3J1bi91c2VyLzEx
NTEwL2J1cyI7IGV4cG9ydCBHSVRfU1NIPSIvaG9tZS9hZG1pbi93b3Jrc3BhY2VzL3lvY3RvL2J1
aWxkL2NvbmYvc3NoX3V0aWwveW9jdG9fc3NoLnNoIjsgZXhwb3J0IFBBVEg9Ii9ob21lL2FkbWlu
L3dvcmtzcGFjZXMveW9jdG8vYnVpbGQvdG1wL3N5c3Jvb3RzLXVuaW5hdGl2ZS94ODZfNjQtbGlu
dXgtcGxhdC91c3IvYmluOi9ob21lL2FkbWluL3dvcmtzcGFjZXMveW9jdG8vc291cmNlcy9wb2t5
L3NjcmlwdHM6L2hvbWUvYWRtaW4vd29ya3NwYWNlcy95b2N0by9idWlsZC90bXAvd29yay9hcm12
NWUtcGxhdC1saW51eC1wbGF0LWdudWVhYmkvc3d1cGRhdGUvZ2l0L3JlY2lwZS1zeXNyb290LW5h
dGl2ZS91c3IvYmluL2FybS1wbGF0LWxpbnV4LXBsYXQtZ251ZWFiaTovaG9tZS9hZG1pbi93b3Jr
c3BhY2VzL3lvY3RvL2J1aWxkL3RtcC93b3JrL2FybXY1ZS1wbGF0LWxpbnV4LXBsYXQtZ251ZWFi
aS9zd3VwZGF0ZS9naXQvcmVjaXBlLXN5c3Jvb3QvdXNyL2Jpbi9jcm9zc3NjcmlwdHM6L2hvbWUv
YWRtaW4vd29ya3NwYWNlcy95b2N0by9idWlsZC90bXAvd29yay9hcm12NWUtcGxhdC1saW51eC1w
bGF0LWdudWVhYmkvc3d1cGRhdGUvZ2l0L3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3Ivc2Jpbjov
aG9tZS9hZG1pbi93b3Jrc3BhY2VzL3lvY3RvL2J1aWxkL3RtcC93b3JrL2FybXY1ZS1wbGF0LWxp
bnV4LXBsYXQtZ251ZWFiaS9zd3VwZGF0ZS9naXQvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL3Vzci9i
aW46L2hvbWUvYWRtaW4vd29ya3NwYWNlcy95b2N0by9idWlsZC90bXAvd29yay9hcm12NWUtcGxh
dC1saW51eC1wbGF0LWdudWVhYmkvc3d1cGRhdGUvZ2l0L3JlY2lwZS1zeXNyb290LW5hdGl2ZS9z
YmluOi9ob21lL2FkbWluL3dvcmtzcGFjZXMveW9jdG8vYnVpbGQvdG1wL3dvcmsvYXJtdjVlLXBs
YXQtbGludXgtcGxhdC1nbnVlYWJpL3N3dXBkYXRlL2dpdC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUv
YmluOi9ob21lL2FkbWluL3dvcmtzcGFjZXMveW9jdG8vc291cmNlcy9wb2t5L2JpdGJha2UvYmlu
Oi9ob21lL2FkbWluL3dvcmtzcGFjZXMveW9jdG8vYnVpbGQvdG1wL2hvc3R0b29scyI7IGV4cG9y
dCBIT01FPSIvaG9tZS9hZG1pbiI7IGdpdCAtYyBnYy5hdXRvRGV0YWNoPWZhbHNlIC1jIGNvcmUu
cGFnZXI9Y2F0IC1jIHNhZmUuYmFyZVJlcG9zaXRvcnk9YWxsIGxzLXJlbW90ZSBodHRwczovL2dp
dHJlYWRlcjpYWFhYWFhYWFhYQHJlcG8uc3J2L3N3dXBkYXRlLmdpdCAnLCBkPTxiYi5kYXRhX3Nt
YXJ0LkRhdGFTbWFydCBvYmplY3QgYXQgMHg3ZmM0MDRlODRkOTA+LCBxdWlldD1UcnVlLCBjbGVh
bnVwPVtdLCBsb2c9Tm9uZSwgd29ya2Rpcj1Ob25lKToKICAgICAKICAgID4gICAgICAgIHJhaXNl
IEZldGNoRXJyb3IoZXJyb3JfbWVzc2FnZSkKICAgICAKYmIuZGF0YV9zbWFydC5FeHBhbnNpb25F
cnJvcjogRmFpbHVyZSBleHBhbmRpbmcgdmFyaWFibGUgZmV0Y2hlcl9oYXNoZXNfZHVtbXlmdW5j
W3ZhcmRlcHZhbHVlXSwgZXhwcmVzc2lvbiB3YXMgJHtAYmIuZmV0Y2guZ2V0X2hhc2h2YWx1ZShk
KX0gd2hpY2ggdHJpZ2dlcmVkIGV4Y2VwdGlvbiBGZXRjaEVycm9yOiBGZXRjaGVyIGZhaWx1cmU6
IEZldGNoIGNvbW1hbmQgZXhwb3J0IFBTRVVET19ESVNBQkxFRD0xOyBleHBvcnQgREJVU19TRVNT
SU9OX0JVU19BRERSRVNTPSJ1bml4OnBhdGg9L3J1bi91c2VyLzExNTEwL2J1cyI7IGV4cG9ydCBH
SVRfU1NIPSIvaG9tZS9hZG1pbi93b3Jrc3BhY2VzL3lvY3RvL2J1aWxkL2NvbmYvc3NoX3V0aWwv
eW9jdG9fc3NoLnNoIjsgZXhwb3J0IFBBVEg9Ii9ob21lL2FkbWluL3dvcmtzcGFjZXMveW9jdG8v
YnVpbGQvdG1wL3N5c3Jvb3RzLXVuaW5hdGl2ZS94ODZfNjQtbGludXgtcGxhdC91c3IvYmluOi9o
b21lL2FkbWluL3dvcmtzcGFjZXMveW9jdG8vc291cmNlcy9wb2t5L3NjcmlwdHM6L2hvbWUvYWRt
aW4vd29ya3NwYWNlcy95b2N0by9idWlsZC90bXAvd29yay9hcm12NWUtcGxhdC1saW51eC1wbGF0
LWdudWVhYmkvc3d1cGRhdGUvZ2l0L3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3IvYmluL2FybS1w
bGF0LWxpbnV4LXBsYXQtZ251ZWFiaTovaG9tZS9hZG1pbi93b3Jrc3BhY2VzL3lvY3RvL2J1aWxk
L3RtcC93b3JrL2FybXY1ZS1wbGF0LWxpbnV4LXBsYXQtZ251ZWFiaS9zd3VwZGF0ZS9naXQvcmVj
aXBlLXN5c3Jvb3QvdXNyL2Jpbi9jcm9zc3NjcmlwdHM6L2hvbWUvYWRtaW4vd29ya3NwYWNlcy95
b2N0by9idWlsZC90bXAvd29yay9hcm12NWUtcGxhdC1saW51eC1wbGF0LWdudWVhYmkvc3d1cGRh
dGUvZ2l0L3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3Ivc2JpbjovaG9tZS9hZG1pbi93b3Jrc3Bh
Y2VzL3lvY3RvL2J1aWxkL3RtcC93b3JrL2FybXY1ZS1wbGF0LWxpbnV4LXBsYXQtZ251ZWFiaS9z
d3VwZGF0ZS9naXQvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL3Vzci9iaW46L2hvbWUvYWRtaW4vd29y
a3NwYWNlcy95b2N0by9idWlsZC90bXAvd29yay9hcm12NWUtcGxhdC1saW51eC1wbGF0LWdudWVh
Ymkvc3d1cGRhdGUvZ2l0L3JlY2lwZS1zeXNyb290LW5hdGl2ZS9zYmluOi9ob21lL2FkbWluL3dv
cmtzcGFjZXMveW9jdG8vYnVpbGQvdG1wL3dvcmsvYXJtdjVlLXBsYXQtbGludXgtcGxhdC1nbnVl
YWJpL3N3dXBkYXRlL2dpdC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvYmluOi9ob21lL2FkbWluL3dv
cmtzcGFjZXMveW9jdG8vc291cmNlcy9wb2t5L2JpdGJha2UvYmluOi9ob21lL2FkbWluL3dvcmtz
cGFjZXMveW9jdG8vYnVpbGQvdG1wL2hvc3R0b29scyI7IGV4cG9ydCBIT01FPSIvaG9tZS9hZG1p
biI7IGdpdCAtYyBnYy5hdXRvRGV0YWNoPWZhbHNlIC1jIGNvcmUucGFnZXI9Y2F0IC1jIHNhZmUu
YmFyZVJlcG9zaXRvcnk9YWxsIGxzLXJlbW90ZSBodHRwczovL2dpdHJlYWRlcjpYWFhYWFhYWFhY
QHJlcG8uc3J2L3N3dXBkYXRlLmdpdCAgZmFpbGVkIHdpdGggZXhpdCBjb2RlIDEyOCwgb3V0cHV0
OgpmYXRhbDogQXV0aGVudGljYXRpb24gZmFpbGVkIGZvciAnaHR0cHM6Ly9yZXBvLnNydi9zd3Vw
ZGF0ZS5naXQvJwoKVGhlIHZhcmlhYmxlIGRlcGVuZGVuY3kgY2hhaW4gZm9yIHRoZSBmYWlsdXJl
IGlzOiBmZXRjaGVyX2hhc2hlc19kdW1teWZ1bmNbdmFyZGVwdmFsdWVdCgpFUlJPUjogUGFyc2lu
ZyBoYWx0ZWQgZHVlIHRvIGVycm9ycywgc2VlIGVycm9yIG1lc3NhZ2VzIGFib3ZlCgpTdW1tYXJ5
OiBUaGVyZSB3ZXJlIDYgV0FSTklORyBtZXNzYWdlcy4KU3VtbWFyeTogVGhlcmUgd2VyZSAyIEVS
Uk9SIG1lc3NhZ2VzLCByZXR1cm5pbmcgYSBub24temVybyBleGl0IGNvZGUuCg==

--SAvrdyNxzM6QllFGcYyg--

