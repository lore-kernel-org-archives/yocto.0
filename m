Subject: strange formatting of command output on core-image-base
To: yocto@lists.yoctoproject.org
From: stefan.wenninger@evopro-ag.de
X-Originating-Location: Regensburg, Bavaria, DE (88.133.236.129)
X-Originating-Platform: Windows Chrome 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 20 May 2020 03:23:51 -0700
Message-ID: <Mhgx.1589970231695626350.vE1J@lists.yoctoproject.org>
X-Groupsio-MsgNum: 49445
Content-Type: multipart/mixed; boundary="C0bwn2DLZbr6H9QWkVP3"

--C0bwn2DLZbr6H9QWkVP3
Content-Type: multipart/alternative; boundary="KtQZjlhMOBBWgvfJOXgY"

--KtQZjlhMOBBWgvfJOXgY
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I recently switched form an image based on fsl-image-qt5 to one based on c=
ore-image-base.
The new image works fine in every regard except that the output of some co=
mmands looks weird.

I have attached the output of commands "nmcli" and "systemctl status dbus"=
. Once executed on the fsl-image-qt5 based system and once on the core-imag=
e-base based system (_weird.txt).
There are two main points I gather from that weird output:
1. There are some codes like "[[32m"+"[[0m" or "[[0;1;32m"+"[[0m", which I=
 assume are colour codes, that are printed and not applied.
2. The output appears to be opened in a vi-like editor?! It clears and fil=
ls the entire terminal page and seems to display an input mode at the botto=
m.

Both of these aspects are non-existent on the fsl-image-qt5 based system. =
There, colours are displayed normally and the output is just printed right =
beneath my command call.

I have discovered that I can get these two commands to work properly on th=
e core-image-base based system, if I pipe their output into cat: "nmcli | c=
at".

My assumption for the colour codes is that, the core-image-base system use=
s a different text encoding, or a different style of colour codes and there=
fore does not recognize the ones presented by nmcli.
I have tried to install the ttf-dejavu-* fonts that are present on the fsl=
-image-qt system. I also verfied that both systems seem to be using POSIX a=
s their LANG setting ("locale" produces the same output on both).
I have no idea why the output is presented in what seems to be a vi editor=
 though. Both systems have their EDITOR variable set to "vi".

Am I missing some kind of package or setting in my image?

I am at my wits' end and would greatly appreciate anyone trying to shed so=
me light on what is going on here.
Stefan Wenninger

--KtQZjlhMOBBWgvfJOXgY
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br />I recently switched form an image based on fsl-image-qt5 to one ba=
sed on core-image-base.<br />The new image works fine in every regard excep=
t that the output of some commands looks weird.<br /><br />I have attached =
the output of commands "nmcli" and "systemctl status dbus". Once executed o=
n the fsl-image-qt5 based system and once on the core-image-base based syst=
em (_weird.txt).<br />There are two main points I gather from that weird ou=
tput:<br />1. There are some codes like "[[32m"+"[[0m" or "[[0;1;32m"+"[[0m=
", which I assume are colour codes, that are printed and not applied.<br />=
2. The output appears to be opened in a vi-like editor?! It clears and fill=
s the entire terminal page and seems to display an input mode at the bottom=
.<br /><br />Both of these aspects are non-existent on the fsl-image-qt5 ba=
sed system. There, colours are displayed normally and the output is just pr=
inted right beneath my command call.<br /><br />I have discovered that I ca=
n get these two commands to work properly on the core-image-base based syst=
em, if I pipe their output into cat: "nmcli | cat".<br /><br />My assumptio=
n for the colour codes is that, the core-image-base system uses a different=
 text encoding, or a different style of colour codes and therefore does not=
 recognize the ones presented by nmcli.<br />I have tried to install the tt=
f-dejavu-* fonts that are present on the fsl-image-qt system. I also verfie=
d that both systems seem to be using POSIX as their LANG setting ("locale" =
produces the same output on both).<br />I have no idea why the output is pr=
esented in what seems to be a vi editor though. Both systems have their EDI=
TOR variable set to "vi".<br /><br />Am I missing some kind of package or s=
etting in my image?<br /><br />I am at my wits' end and would greatly appre=
ciate anyone trying to shed some light on what is going on here.<br />Stefa=
n Wenninger<br />

--KtQZjlhMOBBWgvfJOXgY--

--C0bwn2DLZbr6H9QWkVP3
Content-Type: text/plain; name="nmcli_weird.txt"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="nmcli_weird.txt"

W1szMm1ldGgwOiBjb25uZWN0ZWQgdG8gc3RhdGljLWV0aGVybmV0W1swbQ0KICAgICAgICAiZXRo
MCINCiAgICAgICAgZXRoZXJuZXQgKGZlYyksIEY4OkRDOjdBOjM4OjVFOjg4LCBodywgbXR1IDE1
MDANCiAgICAgICAgaXA0IGRlZmF1bHQNCiAgICAgICAgaW5ldDQgMTAuMzAuNC4yMDQvMjQNCiAg
ICAgICAgcm91dGU0IDEwLjMwLjQuMC8yNA0KICAgICAgICByb3V0ZTQgMC4wLjAuMC8wDQogICAg
ICAgIHJvdXRlNiBmZjAwOjovOA0KDQpbWzMxbXdsYW4wOiBkaXNjb25uZWN0ZWRbWzBtDQogICAg
ICAgICJ3bGFuMCINCiAgICAgICAgd2lmaSAoYnJjbWZtYWMpLCBFNjpFRToyNDo3ODpCODpCOCwg
aHcsIG10dSAxNTAwDQoNCltbMm1sbzogdW5tYW5hZ2VkW1swbQ0KICAgICAgICAibG8iDQogICAg
ICAgIGxvb3BiYWNrICh1bmtub3duKSwgMDA6MDA6MDA6MDA6MDA6MDAsIHN3LCBtdHUgNjU1MzYN
Cg0KVXNlICJubWNsaSBkZXZpY2Ugc2hvdyIgdG8gZ2V0IGNvbXBsZXRlIGluZm9ybWF0aW9uIGFi
b3V0IGtub3duIGRldmljZXMgYW5kDQoibm1jbGkgY29ubmVjdGlvbiBzaG93IiB0byBnZXQgYW4g
b3ZlcnZpZXcgb24gYWN0aXZlIGNvbm5lY3Rpb24gcHJvZmlsZXMuDQoNCkNvbnN1bHQgbm1jbGko
MSkgYW5kIG5tY2xpLWV4YW1wbGVzKDUpIG1hbnVhbCBwYWdlcyBmb3IgY29tcGxldGUgdXNhZ2Ug
ZGV0YWlscy4NCg0Kfg0Kfg0Kfg0Kfg0Kfg0Kfg0Kfg0Kfg0Kfg0Kfg0Kfg0Kfg0Kfg0Kfg0Kfg0K
fg0Kfg0Kfg0Kfg0Kfg0Kfg0Kfg0Kfg0Kfg0Kfg0Kfg0Kfg0Kfg0Kfg0Kfg0Kfg0Kfg0Kfg0Kfg0K
fg0Kc3RhbmRhcmQgaW5wdXQNCg==

--C0bwn2DLZbr6H9QWkVP3
Content-Type: text/plain; name="systemctl_weird.txt"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="systemctl_weird.txt"

W1swOzE7MzJt4pePW1swbSBkYnVzLnNlcnZpY2UgLSBELUJ1cyBTeXN0ZW0gTWVzc2FnZSBCdXMN
CiAgIExvYWRlZDogbG9hZGVkICgvbGliL3N5c3RlbWQvc3lzdGVtL2RidXMuc2VydmljZTsgc3Rh
dGljOyB2ZW5kb3IgcHJlc2V0OiBlbmFibGVkKQ0KICAgQWN0aXZlOiBbWzA7MTszMm1hY3RpdmUg
KHJ1bm5pbmcpW1swbSBzaW5jZSBXZWQgMjAyMC0wNC0yMiAwODozMjozNCBVVEM7IDE0bWluIGFn
bw0KICAgICBEb2NzOiBtYW46ZGJ1cy1kYWVtb24oMSkNCiBNYWluIFBJRDogMjYxIChkYnVzLWRh
ZW1vbikNCiAgICBUYXNrczogMSAobGltaXQ6IDM1ODIpDQogICBDR3JvdXA6IC9zeXN0ZW0uc2xp
Y2UvZGJ1cy5zZXJ2aWNlDQogICAgICAgICAgIOKUlOKUgDI2MSAvdXNyL2Jpbi9kYnVzLWRhZW1v
biAtLXN5c3RlbSAtLWFkZHJlc3M9c3lzdGVtZDogLS1ub2ZvcmsgLS1ub3BpZGZpbGUgLS1zeXN0
ZW1kLWFjdGl2YXRpb24gLS1zeXNsb2ctb25seQ0KDQpBcHIgMjIgMDg6MzI6MzQgaW14OG1xLXZh
ci1kYXJ0IHN5c3RlbWRbMV06IFN0YXJ0ZWQgRC1CdXMgU3lzdGVtIE1lc3NhZ2UgQnVzLg0KDQp+
DQp+DQp+DQp+DQp+DQp+DQp+DQp+DQp+DQp+DQp+DQp+DQp+DQp+DQp+DQp+DQp+DQp+DQp+DQp+
DQp+DQp+DQp+DQp+DQp+DQp+DQp+DQp+DQp+DQp+DQp+DQp+DQp+DQp+DQp+DQp+DQp+DQp+DQp+
DQp+DQp+DQp+DQp+DQp+DQp+DQp+DQp+DQpzdGFuZGFyZCBpbnB1dA0K

--C0bwn2DLZbr6H9QWkVP3
Content-Type: text/plain; name="nmcli.txt"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="nmcli.txt"

ZXRoMDogY29ubmVjdGVkIHRvIHN0YXRpYy1ldGhlcm5ldA0KICAgICAgICAiZXRoMCINCiAgICAg
ICAgZXRoZXJuZXQgKGZlYyksIEY4OkRDOjdBOjM4OjVFOjZGLCBodywgbXR1IDE1MDANCiAgICAg
ICAgaXA0IGRlZmF1bHQNCiAgICAgICAgaW5ldDQgMTAuMzAuNC4yMDQvMjQNCiAgICAgICAgcm91
dGU0IDEwLjMwLjQuMC8yNA0KICAgICAgICByb3V0ZTQgMC4wLjAuMC8wDQogICAgICAgIHJvdXRl
NiBmZjAwOjovOA0KDQp3bGFuMDogZGlzY29ubmVjdGVkDQogICAgICAgICJ3bGFuMCINCiAgICAg
ICAgd2lmaSAoYnJjbWZtYWMpLCBDMjpBQzpGODozMzoxNTo1QSwgaHcsIG10dSAxNTAwDQoNCmxv
OiB1bm1hbmFnZWQNCiAgICAgICAgImxvIg0KICAgICAgICBsb29wYmFjayAodW5rbm93biksIDAw
OjAwOjAwOjAwOjAwOjAwLCBzdywgbXR1IDY1NTM2DQoNClVzZSAibm1jbGkgZGV2aWNlIHNob3ci
IHRvIGdldCBjb21wbGV0ZSBpbmZvcm1hdGlvbiBhYm91dCBrbm93biBkZXZpY2VzIGFuZA0KIm5t
Y2xpIGNvbm5lY3Rpb24gc2hvdyIgdG8gZ2V0IGFuIG92ZXJ2aWV3IG9uIGFjdGl2ZSBjb25uZWN0
aW9uIHByb2ZpbGVzLg0KDQpDb25zdWx0IG5tY2xpKDEpIGFuZCBubWNsaS1leGFtcGxlcyg1KSBt
YW51YWwgcGFnZXMgZm9yIGNvbXBsZXRlIHVzYWdlIGRldGFpbHMuDQo=

--C0bwn2DLZbr6H9QWkVP3
Content-Type: text/plain; name="systemctl.txt"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="systemctl.txt"

4pePIGRidXMuc2VydmljZSAtIEQtQnVzIFN5c3RlbSBNZXNzYWdlIEJ1cw0KICAgTG9hZGVkOiBs
b2FkZWQgKC9saWIvc3lzdGVtZC9zeXN0ZW0vZGJ1cy5zZXJ2aWNlOyBzdGF0aWM7IHZlbmRvciBw
cmVzZXQ6IGVuYWJsZWQpDQogICBBY3RpdmU6IGFjdGl2ZSAocnVubmluZykgc2luY2UgVGh1IDIw
MjAtMDEtMTYgMTM6MTk6MDcgVVRDOyAybWluIDRzIGFnbw0KICAgICBEb2NzOiBtYW46ZGJ1cy1k
YWVtb24oMSkNCiBNYWluIFBJRDogMzYzIChkYnVzLWRhZW1vbikNCiAgICBUYXNrczogMSAobGlt
aXQ6IDM1ODIpDQogICBDR3JvdXA6IC9zeXN0ZW0uc2xpY2UvZGJ1cy5zZXJ2aWNlDQogICAgICAg
ICAgIOKUlOKUgDM2MyAvdXNyL2Jpbi9kYnVzLWRhZW1vbiAtLXN5c3RlbSAtLWFkZHJlc3M9c3lz
dGVtZDogLS1ub2ZvcmsgLS1ub3BpZGZpbGUgLS1zeXN0ZW1kLWFjdGl2YXRpb24gLS1zeXNsb2ct
b25seQ0KDQpKYW4gMTYgMTM6MTk6MDcgaW14OG1xLXZhci1kYXJ0IHN5c3RlbWRbMV06IFN0YXJ0
ZWQgRC1CdXMgU3lzdGVtIE1lc3NhZ2UgQnVzLg0K

--C0bwn2DLZbr6H9QWkVP3--
