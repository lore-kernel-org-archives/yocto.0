Received: from camel.birch.relay.mailchannels.net (camel.birch.relay.mailchannels.net [23.83.209.29])
 by mx.groups.io with SMTP id smtpd.web09.11562.1626580901221437338
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Jul 2021 21:01:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@scalardata.com header.s=scalardata.com header.b=tDf8SZLQ;
 spf=pass (domain: scalardata.com, ip: 23.83.209.29, mailfrom: simon.haines@scalardata.com)
X-Sender-Id: dreamhost|x-authsender|simon.haines@scalardata.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id E18745A13BF
	for <yocto@lists.yoctoproject.org>; Sun, 18 Jul 2021 04:01:39 +0000 (UTC)
Received: from pdx1-sub0-mail-a61.g.dreamhost.com (100-96-27-225.trex.outbound.svc.cluster.local [100.96.27.225])
	(Authenticated sender: dreamhost)
	by relay.mailchannels.net (Postfix) with ESMTPA id 856685A1223
	for <yocto@lists.yoctoproject.org>; Sun, 18 Jul 2021 04:01:39 +0000 (UTC)
X-Sender-Id: dreamhost|x-authsender|simon.haines@scalardata.com
Received: from pdx1-sub0-mail-a61.g.dreamhost.com (pop.dreamhost.com
 [64.90.62.162])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384)
	by 100.96.27.225 (trex/6.3.3);
	Sun, 18 Jul 2021 04:01:39 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: dreamhost|x-authsender|simon.haines@scalardata.com
X-MailChannels-Auth-Id: dreamhost
X-Thoughtful-Invention: 7983959d28598aa5_1626580899780_2157206240
X-MC-Loop-Signature: 1626580899780:1022011775
X-MC-Ingress-Time: 1626580899780
Received: from pdx1-sub0-mail-a61.g.dreamhost.com (localhost [127.0.0.1])
	by pdx1-sub0-mail-a61.g.dreamhost.com (Postfix) with ESMTP id 446E97F128
	for <yocto@lists.yoctoproject.org>; Sat, 17 Jul 2021 21:01:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=scalardata.com; h=
	mime-version:from:date:message-id:subject:to:content-type; s=
	scalardata.com; bh=QGtASd0JOd+MXXyxWntFmnhTQyg=; b=tDf8SZLQVYSOw
	CTqRGGRJfoLUdZpnbEJVVfm1a/aUaGzbw4MhDu7skwe2LXgxH08tksEPjsBauPB0
	JLH5olHT37zfIDRmpcb1DH0vQPTYD7F7VELRcGRCmICTo2Pid92PDXDx+zL7AYWl
	mX4VGuWCAogRFa/pGCBimO6slgraVw=
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: simon.haines@scalardata.com)
	by pdx1-sub0-mail-a61.g.dreamhost.com (Postfix) with ESMTPSA id 2E2707F120
	for <yocto@lists.yoctoproject.org>; Sat, 17 Jul 2021 21:01:38 -0700 (PDT)
Received: by mail-io1-f45.google.com with SMTP id w22so7520782ioc.6
        for <yocto@lists.yoctoproject.org>; Sat, 17 Jul 2021 21:01:38 -0700 (PDT)
X-Gm-Message-State: AOAM530oWi97PGVBQJgAnWy9b7fwW+PeNcxo6TB96ptkGyKb9ckngIbR
	DZitxyodHSVqNq/EHeM4w6XtFtmU/ZR2FXCpaQ==
X-Google-Smtp-Source: ABdhPJyAgTD+ECqd4ON31g7uCRAQONHRghLQJOknWwWNWk2xBPnjn8bqf3+kcqC+FUTg6IOECb46t0uo9DDO5Px+AB0=
X-Received: by 2002:a5e:d80e:: with SMTP id l14mr13623646iok.79.1626580898297;
 Sat, 17 Jul 2021 21:01:38 -0700 (PDT)
MIME-Version: 1.0
X-DH-BACKEND: pdx1-sub0-mail-a61
From: "Simon Haines" <simon.haines@scalardata.com>
Date: Sun, 18 Jul 2021 14:01:27 +1000
X-Gmail-Original-Message-ID: <CACrbFVdaFGVGaSw0+WHSxb4Z05khof1y67wc_XDOWEzPqXLQNQ@mail.gmail.com>
Message-ID: <CACrbFVdaFGVGaSw0+WHSxb4Z05khof1y67wc_XDOWEzPqXLQNQ@mail.gmail.com>
Subject: Exception: NotADirectoryError building Hardknott
To: yocto@lists.yoctoproject.org
X-Groupsio-MsgNum: 54141
Content-Type: multipart/mixed; boundary="000000000000a44f4d05c75de002"

--000000000000a44f4d05c75de002
Content-Type: multipart/alternative; boundary="000000000000a44f4c05c75de000"

--000000000000a44f4c05c75de000
Content-Type: text/plain; charset="UTF-8"

I can't seem to find any information about this error, but I keep getting
variations of this when building hardknott:

Exception: NotADirectoryError: [Errno 20] Not a directory:
'/home/yocto/rpi64/build/tmp/sysroots-components/x86_64/gmp-native/usr/lib/pkgconfig/gmpxx.pc'
->
'/home/yocto/rpi64/build/tmp/work/x86_64-linux/libmpc-native/1.2.1-r0/recipe-sysroot-native/usr/lib/pkgconfig/gmpxx.pc'

I'm building in a container, and I've tried building the tip of the
hardknott branch, the hardknott-3.3.1 tag, and the release tarball (
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3/poky-hardknott-25.0.0.tar.bz2).
All fail with the NotADirectory exception in different recipes. I've
attached logs from building the hardknott-3.3.1 tag and from the release
tarball.

The additional layers I'm using are (cloned from the tip of their
respective hardknott branches):
meta-openembedded
meta-raspberrypi
meta-security

It must be something with my setup because I've searched everywhere for
this issue and I can't find anything. Does this sound familiar to anyone?
Simon.

--000000000000a44f4c05c75de000
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I can&#39;t seem to find any information about this e=
rror, but I keep getting variations of this when building hardknott:</div><=
div><br></div><div>Exception: NotADirectoryError: [Errno 20] Not a director=
y: &#39;/home/yocto/rpi64/build/tmp/sysroots-components/x86_64/gmp-native/u=
sr/lib/pkgconfig/gmpxx.pc&#39; -&gt; &#39;/home/yocto/rpi64/build/tmp/work/=
x86_64-linux/libmpc-native/1.2.1-r0/recipe-sysroot-native/usr/lib/pkgconfig=
/gmpxx.pc&#39;</div><div><br></div><div>I&#39;m building in a container, an=
d I&#39;ve tried building the tip of the hardknott branch, the hardknott-3.=
3.1 tag, and the release tarball (<a href=3D"http://downloads.yoctoproject.=
org/releases/yocto/yocto-3.3/poky-hardknott-25.0.0.tar.bz2">http://download=
s.yoctoproject.org/releases/yocto/yocto-3.3/poky-hardknott-25.0.0.tar.bz2</=
a>). All fail with the NotADirectory exception in different recipes. I&#39;=
ve attached logs from building the hardknott-3.3.1 tag and from the release=
 tarball.<br></div><div><br></div><div>The additional layers I&#39;m using =
are (cloned from the tip of their respective hardknott branches):</div><div=
>meta-openembedded<br></div><div>meta-raspberrypi</div><div>meta-security<b=
r></div><div><br></div><div>It must be something with my setup because I&#3=
9;ve searched everywhere for this issue and I can&#39;t find anything. Does=
 this sound familiar to anyone?</div><div>Simon.</div><div><br></div><div><=
br></div></div>

--000000000000a44f4c05c75de000--

--000000000000a44f4d05c75de002
Content-Type: application/octet-stream; 
	name="hardknott-3.3.1-log.do_unpack.386192"
Content-Disposition: attachment; 
	filename="hardknott-3.3.1-log.do_unpack.386192"
Content-Transfer-Encoding: base64
Content-ID: <f_kr8o1qry0>
X-Attachment-Id: f_kr8o1qry0

REVCVUc6IEV4ZWN1dGluZyBweXRob24gZnVuY3Rpb24gZXh0ZW5kX3JlY2lwZV9zeXNyb290Ck5P
VEU6IERpcmVjdCBkZXBlbmRlbmNpZXMgYXJlIFsndmlydHVhbDpuYXRpdmU6L2hvbWUveW9jdG8v
cG9reS1oYXJka25vdHQvbWV0YS9yZWNpcGVzLWV4dGVuZGVkL3h6L3h6XzUuMi41LmJiOmRvX3Bv
cHVsYXRlX3N5c3Jvb3QnXQpFUlJPUjogRXJyb3IgZXhlY3V0aW5nIGEgcHl0aG9uIGZ1bmN0aW9u
IGluIGV4ZWNfcHl0aG9uX2Z1bmMoKSBhdXRvZ2VuZXJhdGVkOgoKVGhlIHN0YWNrIHRyYWNlIG9m
IHB5dGhvbiBjYWxscyB0aGF0IHJlc3VsdGVkIGluIHRoaXMgZXhjZXB0aW9uL2ZhaWx1cmUgd2Fz
OgpGaWxlOiAnZXhlY19weXRob25fZnVuYygpIGF1dG9nZW5lcmF0ZWQnLCBsaW5lbm86IDIsIGZ1
bmN0aW9uOiA8bW9kdWxlPgogICAgIDAwMDE6CiAqKiogMDAwMjpleHRlbmRfcmVjaXBlX3N5c3Jv
b3QoZCkKICAgICAwMDAzOgpGaWxlOiAnL2hvbWUveW9jdG8vcG9reS1oYXJka25vdHQvbWV0YS9j
bGFzc2VzL3N0YWdpbmcuYmJjbGFzcycsIGxpbmVubzogNTgyLCBmdW5jdGlvbjogZXh0ZW5kX3Jl
Y2lwZV9zeXNyb290CiAgICAgMDU3ODogICAgICAgICAgICAgICAgICAgIGlmICIvYmluLyIgaW4g
bCBvciAiL3NiaW4vIiBpbiBsOgogICAgIDA1Nzk6ICAgICAgICAgICAgICAgICAgICAgICAgIyBk
ZWZlciAvKmJpbi8qIGZpbGVzIHVudGlsIGxhc3QgaW4gY2FzZSB0aGV5IG5lZWQgbGlicwogICAg
IDA1ODA6ICAgICAgICAgICAgICAgICAgICAgICAgYmluZmlsZXNbbF0gPSAodGFyZ2V0ZGlyLCBk
ZXN0KQogICAgIDA1ODE6ICAgICAgICAgICAgICAgICAgICBlbHNlOgogKioqIDA1ODI6ICAgICAg
ICAgICAgICAgICAgICAgICAgc3RhZ2luZ19jb3B5ZmlsZShsLCB0YXJnZXRkaXIsIGRlc3QsIHBv
c3RpbnN0cywgc2VlbmRpcnMpCiAgICAgMDU4MzoKICAgICAwNTg0OiAgICAjIEhhbmRsZSBkZWZl
cnJlZCBiaW5maWxlcwogICAgIDA1ODU6ICAgIGZvciBsIGluIGJpbmZpbGVzOgogICAgIDA1ODY6
ICAgICAgICAodGFyZ2V0ZGlyLCBkZXN0KSA9IGJpbmZpbGVzW2xdCkZpbGU6ICcvaG9tZS95b2N0
by9wb2t5LWhhcmRrbm90dC9tZXRhL2NsYXNzZXMvc3RhZ2luZy5iYmNsYXNzJywgbGluZW5vOiAx
NTcsIGZ1bmN0aW9uOiBzdGFnaW5nX2NvcHlmaWxlCiAgICAgMDE1MzogICAgICAgIG9zLnN5bWxp
bmsobGlua3RvLCBkZXN0KQogICAgIDAxNTQ6ICAgICAgICAjYmIud2FybihjKQogICAgIDAxNTU6
ICAgIGVsc2U6CiAgICAgMDE1NjogICAgICAgIHRyeToKICoqKiAwMTU3OiAgICAgICAgICAgIG9z
LmxpbmsoYywgZGVzdCkKICAgICAwMTU4OiAgICAgICAgZXhjZXB0IE9TRXJyb3IgYXMgZXJyOgog
ICAgIDAxNTk6ICAgICAgICAgICAgaWYgZXJyLmVycm5vID09IGVycm5vLkVYREVWOgogICAgIDAx
NjA6ICAgICAgICAgICAgICAgIGJiLnV0aWxzLmNvcHlmaWxlKGMsIGRlc3QpCiAgICAgMDE2MTog
ICAgICAgICAgICBlbHNlOgpFeGNlcHRpb246IE5vdEFEaXJlY3RvcnlFcnJvcjogW0Vycm5vIDIw
XSBOb3QgYSBkaXJlY3Rvcnk6ICcvaG9tZS95b2N0by9ycGk2NC9idWlsZC90bXAvc3lzcm9vdHMt
Y29tcG9uZW50cy94ODZfNjQveHotbmF0aXZlL3Vzci9saWIvcGtnY29uZmlnL2xpYmx6bWEucGMn
IC0+ICcvaG9tZS95b2N0by9ycGk2NC9idWlsZC90bXAvd29yay94ODZfNjQtbGludXgvdW5pZmRl
Zi1uYXRpdmUvMi4xMi1yMC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL2xpYi9wa2djb25maWcv
bGlibHptYS5wYycKCkRFQlVHOiBQeXRob24gZnVuY3Rpb24gZXh0ZW5kX3JlY2lwZV9zeXNyb290
IGZpbmlzaGVkCg==

--000000000000a44f4d05c75de002
Content-Type: application/octet-stream; 
	name="release-tarball-log.do_prepare_recipe_sysroot.27932"
Content-Disposition: attachment; 
	filename="release-tarball-log.do_prepare_recipe_sysroot.27932"
Content-Transfer-Encoding: base64
Content-ID: <f_kr8o2ot11>
X-Attachment-Id: f_kr8o2ot11

REVCVUc6IEV4ZWN1dGluZyBweXRob24gZnVuY3Rpb24gZG9fcHJlcGFyZV9yZWNpcGVfc3lzcm9v
dApERUJVRzogRXhlY3V0aW5nIHB5dGhvbiBmdW5jdGlvbiBleHRlbmRfcmVjaXBlX3N5c3Jvb3QK
Tk9URTogRGlyZWN0IGRlcGVuZGVuY2llcyBhcmUgWyd2aXJ0dWFsOm5hdGl2ZTovaG9tZS95b2N0
by9wb2t5LWhhcmRrbm90dC0yNS4wLjAvbWV0YS9yZWNpcGVzLWRldnRvb2xzL2F1dG9tYWtlL2F1
dG9tYWtlXzEuMTYuMy5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJy9ob21lL3lvY3RvL3Bva3kt
aGFyZGtub3R0LTI1LjAuMC9tZXRhL3JlY2lwZXMtZXh0ZW5kZWQvdGV4aW5mby1kdW1teS1uYXRp
dmUvdGV4aW5mby1kdW1teS1uYXRpdmUuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvaG9tZS95
b2N0by9wb2t5LWhhcmRrbm90dC0yNS4wLjAvbWV0YS9yZWNpcGVzLWRldnRvb2xzL2xpYnRvb2wv
bGlidG9vbC1uYXRpdmVfMi40LjYuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICd2aXJ0dWFsOm5h
dGl2ZTovaG9tZS95b2N0by9wb2t5LWhhcmRrbm90dC0yNS4wLjAvbWV0YS9yZWNpcGVzLWRldnRv
b2xzL2F1dG9jb25mL2F1dG9jb25mXzIuNzEuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICd2aXJ0
dWFsOm5hdGl2ZTovaG9tZS95b2N0by9wb2t5LWhhcmRrbm90dC0yNS4wLjAvbWV0YS9yZWNpcGVz
LXN1cHBvcnQvZ21wL2dtcF82LjIuMS5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJ3ZpcnR1YWw6
bmF0aXZlOi9ob21lL3lvY3RvL3Bva3ktaGFyZGtub3R0LTI1LjAuMC9tZXRhL3JlY2lwZXMtc3Vw
cG9ydC9tcGZyL21wZnJfNC4xLjAuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCddCkVSUk9SOiBFcnJv
ciBleGVjdXRpbmcgYSBweXRob24gZnVuY3Rpb24gaW4gZXhlY19weXRob25fZnVuYygpIGF1dG9n
ZW5lcmF0ZWQ6CgpUaGUgc3RhY2sgdHJhY2Ugb2YgcHl0aG9uIGNhbGxzIHRoYXQgcmVzdWx0ZWQg
aW4gdGhpcyBleGNlcHRpb24vZmFpbHVyZSB3YXM6CkZpbGU6ICdleGVjX3B5dGhvbl9mdW5jKCkg
YXV0b2dlbmVyYXRlZCcsIGxpbmVubzogMiwgZnVuY3Rpb246IDxtb2R1bGU+CiAgICAgMDAwMToK
ICoqKiAwMDAyOmV4dGVuZF9yZWNpcGVfc3lzcm9vdChkKQogICAgIDAwMDM6CkZpbGU6ICcvaG9t
ZS95b2N0by9wb2t5LWhhcmRrbm90dC0yNS4wLjAvbWV0YS9jbGFzc2VzL3N0YWdpbmcuYmJjbGFz
cycsIGxpbmVubzogNTgyLCBmdW5jdGlvbjogZXh0ZW5kX3JlY2lwZV9zeXNyb290CiAgICAgMDU3
ODogICAgICAgICAgICAgICAgICAgIGlmICIvYmluLyIgaW4gbCBvciAiL3NiaW4vIiBpbiBsOgog
ICAgIDA1Nzk6ICAgICAgICAgICAgICAgICAgICAgICAgIyBkZWZlciAvKmJpbi8qIGZpbGVzIHVu
dGlsIGxhc3QgaW4gY2FzZSB0aGV5IG5lZWQgbGlicwogICAgIDA1ODA6ICAgICAgICAgICAgICAg
ICAgICAgICAgYmluZmlsZXNbbF0gPSAodGFyZ2V0ZGlyLCBkZXN0KQogICAgIDA1ODE6ICAgICAg
ICAgICAgICAgICAgICBlbHNlOgogKioqIDA1ODI6ICAgICAgICAgICAgICAgICAgICAgICAgc3Rh
Z2luZ19jb3B5ZmlsZShsLCB0YXJnZXRkaXIsIGRlc3QsIHBvc3RpbnN0cywgc2VlbmRpcnMpCiAg
ICAgMDU4MzoKICAgICAwNTg0OiAgICAjIEhhbmRsZSBkZWZlcnJlZCBiaW5maWxlcwogICAgIDA1
ODU6ICAgIGZvciBsIGluIGJpbmZpbGVzOgogICAgIDA1ODY6ICAgICAgICAodGFyZ2V0ZGlyLCBk
ZXN0KSA9IGJpbmZpbGVzW2xdCkZpbGU6ICcvaG9tZS95b2N0by9wb2t5LWhhcmRrbm90dC0yNS4w
LjAvbWV0YS9jbGFzc2VzL3N0YWdpbmcuYmJjbGFzcycsIGxpbmVubzogMTU3LCBmdW5jdGlvbjog
c3RhZ2luZ19jb3B5ZmlsZQogICAgIDAxNTM6ICAgICAgICBvcy5zeW1saW5rKGxpbmt0bywgZGVz
dCkKICAgICAwMTU0OiAgICAgICAgI2JiLndhcm4oYykKICAgICAwMTU1OiAgICBlbHNlOgogICAg
IDAxNTY6ICAgICAgICB0cnk6CiAqKiogMDE1NzogICAgICAgICAgICBvcy5saW5rKGMsIGRlc3Qp
CiAgICAgMDE1ODogICAgICAgIGV4Y2VwdCBPU0Vycm9yIGFzIGVycjoKICAgICAwMTU5OiAgICAg
ICAgICAgIGlmIGVyci5lcnJubyA9PSBlcnJuby5FWERFVjoKICAgICAwMTYwOiAgICAgICAgICAg
ICAgICBiYi51dGlscy5jb3B5ZmlsZShjLCBkZXN0KQogICAgIDAxNjE6ICAgICAgICAgICAgZWxz
ZToKRXhjZXB0aW9uOiBOb3RBRGlyZWN0b3J5RXJyb3I6IFtFcnJubyAyMF0gTm90IGEgZGlyZWN0
b3J5OiAnL2hvbWUveW9jdG8vcnBpNjQvYnVpbGQvdG1wL3N5c3Jvb3RzLWNvbXBvbmVudHMveDg2
XzY0L2dtcC1uYXRpdmUvdXNyL2xpYi9wa2djb25maWcvZ21weHgucGMnIC0+ICcvaG9tZS95b2N0
by9ycGk2NC9idWlsZC90bXAvd29yay94ODZfNjQtbGludXgvbGlibXBjLW5hdGl2ZS8xLjIuMS1y
MC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL2xpYi9wa2djb25maWcvZ21weHgucGMnCgpERUJV
RzogUHl0aG9uIGZ1bmN0aW9uIGV4dGVuZF9yZWNpcGVfc3lzcm9vdCBmaW5pc2hlZApERUJVRzog
UHl0aG9uIGZ1bmN0aW9uIGRvX3ByZXBhcmVfcmVjaXBlX3N5c3Jvb3QgZmluaXNoZWQK

--000000000000a44f4d05c75de002--
