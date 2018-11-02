Return-Path: <peter@berginkonsult.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A6CDE00C10; Fri,  2 Nov 2018 00:29:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [46.30.210.183 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Fri, 02 Nov 2018 00:29:57 PDT
Received: from mailrelay2-1.pub.mailoutpod1-cph3.one.com
	(mailrelay2-1.pub.mailoutpod1-cph3.one.com [46.30.210.183])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A44F3E00901
	for <yocto@yoctoproject.org>; Fri,  2 Nov 2018 00:29:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=berginkonsult.se; s=20140924;
	h=content-type:mime-version:date:message-id:to:subject:from:from;
	bh=XieKEYXYHzJtcEyBtNtfc6vDU58Fga0dH6iJbQRH6xw=;
	b=H6eLUVCN0tkeAjQA2meUz8gAquBMH+GotvzstokHnD+3sgkNhECan3kLHxZY2rF8+SZ7t1P57IMpi
	ukpvgeeGYyG3WBAetRp28HKb020TEseRb0KXuzJGl7Ekc13WXTmQIfYIkFugrodskkXIJjVvUjbXHG
	yxUBWoSDjX5SxuVk=
X-HalOne-Cookie: e80a782bdd2b8a79c5f43d0b5e3bb9d5bfc4a881
X-HalOne-ID: f3bc72c4-de70-11e8-9b9e-d0431ea8a290
Received: from [192.168.100.114] (unknown [82.196.108.162])
	by mailrelay2.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id f3bc72c4-de70-11e8-9b9e-d0431ea8a290;
	Fri, 02 Nov 2018 07:28:54 +0000 (UTC)
From: Peter Bergin <peter@berginkonsult.se>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <0f39aeec-de33-54c1-d1c3-e5953cec912e@berginkonsult.se>
Date: Fri, 2 Nov 2018 08:28:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
Subject: Can not build SDK in rocko 'nothing provides /usr/bin/python...'
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 02 Nov 2018 07:29:59 -0000
Content-Type: multipart/alternative;
	boundary="------------CA3B53438D536EEAC9F4F490"
Content-Language: en-US

--------------CA3B53438D536EEAC9F4F490
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi,

I'm working in rocko branch and trying to build a SDK with kernel-devsrc =

on a standard qemux86 machine. During task populate_sdk I get the=20
following error:

ERROR: core-image-base-1.0-r0 do_populate_sdk: Could not invoke dnf. Comm=
and '/work/yocto/rocko/qemux86/tmp/work/qemux86-poky-linux/core-image-bas=
e/1.0-r0/recipe-sysroot-native/usr/bin/dnf -y -c /work/yocto/rocko/qemux8=
6/tmp/work/qemux86-poky-linux/core-image-base/1.0-r0/sdk/image/opt/poky/2=
=2E4.3/sysroots/i586-poky-linux/etc/dnf/dnf.conf --setopt=3Dreposdir=3D/w=
ork/yocto/rocko/qemux86/tmp/work/qemux86-poky-linux/core-image-base/1.0-r=
0/sdk/image/opt/poky/2.4.3/sysroots/i586-poky-linux/etc/yum.repos.d --rep=
ofrompath=3Doe-repo,/work/yocto/rocko/qemux86/tmp/work/qemux86-poky-linux=
/core-image-base/1.0-r0/oe-sdk-repo --installroot=3D/work/yocto/rocko/qem=
ux86/tmp/work/qemux86-poky-linux/core-image-base/1.0-r0/sdk/image/opt/pok=
y/2.4.3/sysroots/i586-poky-linux --setopt=3Dlogdir=3D/work/yocto/rocko/qe=
mux86/tmp/work/qemux86-poky-linux/core-image-base/1.0-r0/temp --nogpgchec=
k install packagegroup-core-standalone-sdk-target run-postinsts psplash p=
ackagegroup-base-extended packagegroup-core-boot linux-libc-headers-dev k=
ernel-devsrc' returned 1:
Added oe-repo repo from /work/yocto/rocko/qemux86/tmp/work/qemux86-poky-l=
inux/core-image-base/1.0-r0/oe-sdk-repo
Last metadata expiration check: 0:00:00 ago on Fri 02 Nov 2018 07:14:37 A=
M UTC.
Error:
 =C2=A0Problem: conflicting requests
 =C2=A0 - nothing provides /usr/bin/python needed by kernel-devsrc-1.0-r0=
=2Eqemux86

ERROR: core-image-base-1.0-r0 do_populate_sdk: Function failed: do_popula=
te_sdk
ERROR: Logfile of failure stored in: /work/yocto/rocko/qemux86/tmp/work/q=
emux86-poky-linux/core-image-base/1.0-r0/temp/log.do_populate_sdk.25760
ERROR: Task (/work/yocto/rocko/layers/poky/meta/recipes-core/images/core-=
image-base.bb:do_populate_sdk) failed with exit code '1'

Any ideas about what the problem is and how to fix?

My addition to standard Yocto configuration is:

TOOLCHAIN_TARGET_TASK_append =3D " \
 =C2=A0=C2=A0=C2=A0 kernel-devsrc \
 =C2=A0=C2=A0=C2=A0 linux-libc-headers-dev \
"

I first build image with 'bitbake core-image-base' then I got the error=20
when building SDK with 'bitbake core-image-base -c populate_sdk'


Thanks,
/Peter

--------------CA3B53438D536EEAC9F4F490
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGh0bWw+CiAgPGhlYWQ+CgogICAgPG1ldGEgaHR0cC1lcXVpdj0iY29udGVudC10eXBlIiBj
b250ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9VVRGLTgiPgogIDwvaGVhZD4KICA8Ym9keSBi
Z2NvbG9yPSIjRkZGRkZGIiB0ZXh0PSIjMDAwMDAwIj4KICAgIEhpLDxicj4KICAgIDxicj4K
ICAgIEknbSB3b3JraW5nIGluIHJvY2tvIGJyYW5jaCBhbmQgdHJ5aW5nIHRvIGJ1aWxkIGEg
U0RLIHdpdGgKICAgIGtlcm5lbC1kZXZzcmMgb24gYSBzdGFuZGFyZCBxZW11eDg2IG1hY2hp
bmUuIER1cmluZyB0YXNrCiAgICBwb3B1bGF0ZV9zZGsgSSBnZXQgdGhlIGZvbGxvd2luZyBl
cnJvcjo8YnI+CiAgICA8YnI+CiAgICA8cHJlPkVSUk9SOiBjb3JlLWltYWdlLWJhc2UtMS4w
LXIwIGRvX3BvcHVsYXRlX3NkazogQ291bGQgbm90IGludm9rZSBkbmYuIENvbW1hbmQgJy93
b3JrL3lvY3RvL3JvY2tvL3FlbXV4ODYvdG1wL3dvcmsvcWVtdXg4Ni1wb2t5LWxpbnV4L2Nv
cmUtaW1hZ2UtYmFzZS8xLjAtcjAvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL3Vzci9iaW4vZG5m
IC15IC1jIC93b3JrL3lvY3RvL3JvY2tvL3FlbXV4ODYvdG1wL3dvcmsvcWVtdXg4Ni1wb2t5
LWxpbnV4L2NvcmUtaW1hZ2UtYmFzZS8xLjAtcjAvc2RrL2ltYWdlL29wdC9wb2t5LzIuNC4z
L3N5c3Jvb3RzL2k1ODYtcG9reS1saW51eC9ldGMvZG5mL2RuZi5jb25mIC0tc2V0b3B0PXJl
cG9zZGlyPS93b3JrL3lvY3RvL3JvY2tvL3FlbXV4ODYvdG1wL3dvcmsvcWVtdXg4Ni1wb2t5
LWxpbnV4L2NvcmUtaW1hZ2UtYmFzZS8xLjAtcjAvc2RrL2ltYWdlL29wdC9wb2t5LzIuNC4z
L3N5c3Jvb3RzL2k1ODYtcG9reS1saW51eC9ldGMveXVtLnJlcG9zLmQgLS1yZXBvZnJvbXBh
dGg9b2UtcmVwbywvd29yay95b2N0by9yb2Nrby9xZW11eDg2L3RtcC93b3JrL3FlbXV4ODYt
cG9reS1saW51eC9jb3JlLWltYWdlLWJhc2UvMS4wLXIwL29lLXNkay1yZXBvIC0taW5zdGFs
bHJvb3Q9L3dvcmsveW9jdG8vcm9ja28vcWVtdXg4Ni90bXAvd29yay9xZW11eDg2LXBva3kt
bGludXgvY29yZS1pbWFnZS1iYXNlLzEuMC1yMC9zZGsvaW1hZ2Uvb3B0L3Bva3kvMi40LjMv
c3lzcm9vdHMvaTU4Ni1wb2t5LWxpbnV4IC0tc2V0b3B0PWxvZ2Rpcj0vd29yay95b2N0by9y
b2Nrby9xZW11eDg2L3RtcC93b3JrL3FlbXV4ODYtcG9reS1saW51eC9jb3JlLWltYWdlLWJh
c2UvMS4wLXIwL3RlbXAgLS1ub2dwZ2NoZWNrIGluc3RhbGwgcGFja2FnZWdyb3VwLWNvcmUt
c3RhbmRhbG9uZS1zZGstdGFyZ2V0IHJ1bi1wb3N0aW5zdHMgcHNwbGFzaCBwYWNrYWdlZ3Jv
dXAtYmFzZS1leHRlbmRlZCBwYWNrYWdlZ3JvdXAtY29yZS1ib290IGxpbnV4LWxpYmMtaGVh
ZGVycy1kZXYga2VybmVsLWRldnNyYycgcmV0dXJuZWQgMToKQWRkZWQgb2UtcmVwbyByZXBv
IGZyb20gL3dvcmsveW9jdG8vcm9ja28vcWVtdXg4Ni90bXAvd29yay9xZW11eDg2LXBva3kt
bGludXgvY29yZS1pbWFnZS1iYXNlLzEuMC1yMC9vZS1zZGstcmVwbwpMYXN0IG1ldGFkYXRh
IGV4cGlyYXRpb24gY2hlY2s6IDA6MDA6MDAgYWdvIG9uIEZyaSAwMiBOb3YgMjAxOCAwNzox
NDozNyBBTSBVVEMuCkVycm9yOiAKwqBQcm9ibGVtOiBjb25mbGljdGluZyByZXF1ZXN0cwrC
oCAtIG5vdGhpbmcgcHJvdmlkZXMgL3Vzci9iaW4vcHl0aG9uIG5lZWRlZCBieSBrZXJuZWwt
ZGV2c3JjLTEuMC1yMC5xZW11eDg2CgpFUlJPUjogY29yZS1pbWFnZS1iYXNlLTEuMC1yMCBk
b19wb3B1bGF0ZV9zZGs6IEZ1bmN0aW9uIGZhaWxlZDogZG9fcG9wdWxhdGVfc2RrCkVSUk9S
OiBMb2dmaWxlIG9mIGZhaWx1cmUgc3RvcmVkIGluOiAvd29yay95b2N0by9yb2Nrby9xZW11
eDg2L3RtcC93b3JrL3FlbXV4ODYtcG9reS1saW51eC9jb3JlLWltYWdlLWJhc2UvMS4wLXIw
L3RlbXAvbG9nLmRvX3BvcHVsYXRlX3Nkay4yNTc2MApFUlJPUjogVGFzayAoL3dvcmsveW9j
dG8vcm9ja28vbGF5ZXJzL3Bva3kvbWV0YS9yZWNpcGVzLWNvcmUvaW1hZ2VzL2NvcmUtaW1h
Z2UtYmFzZS5iYjpkb19wb3B1bGF0ZV9zZGspIGZhaWxlZCB3aXRoIGV4aXQgY29kZSAnMScK
CjwvcHJlPgogICAgQW55IGlkZWFzIGFib3V0IHdoYXQgdGhlIHByb2JsZW0gaXMgYW5kIGhv
dyB0byBmaXg/PGJyPgogICAgPGJyPgogICAgTXkgYWRkaXRpb24gdG8gc3RhbmRhcmQgWW9j
dG8gY29uZmlndXJhdGlvbiBpczo8YnI+CiAgICA8YnI+CiAgICA8cHJlPlRPT0xDSEFJTl9U
QVJHRVRfVEFTS19hcHBlbmQgPSAiIFwKwqDCoMKgIGtlcm5lbC1kZXZzcmMgXArCoMKgwqAg
bGludXgtbGliYy1oZWFkZXJzLWRldiBcCiI8L3ByZT4KICAgIEkgZmlyc3QgYnVpbGQgaW1h
Z2Ugd2l0aCAnYml0YmFrZSBjb3JlLWltYWdlLWJhc2UnIHRoZW4gSSBnb3QgdGhlCiAgICBl
cnJvciB3aGVuIGJ1aWxkaW5nIFNESyB3aXRoICdiaXRiYWtlIGNvcmUtaW1hZ2UtYmFzZSAt
YwogICAgcG9wdWxhdGVfc2RrJzxicj4KICAgIDxicj4KICAgIDxicj4KICAgIFRoYW5rcyw8
YnI+CiAgICAvUGV0ZXI8YnI+CiAgPC9ib2R5Pgo8L2h0bWw+Cg==

--------------CA3B53438D536EEAC9F4F490--
