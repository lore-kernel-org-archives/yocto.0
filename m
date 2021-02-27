Received: from hmr112.pwrz.at (hmr112.pwrz.at [194.30.191.129])
 by mx.groups.io with SMTP id smtpd.web12.4480.1614436456516221459
 for <yocto@lists.yoctoproject.org>;
 Sat, 27 Feb 2021 06:34:18 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@voxel.at header.s=default header.b=q4ZCaoFb;
 spf=pass (domain: voxel.at, ip: 194.30.191.129, mailfrom: simon@voxel.at)
Received: from srv345.pwrz.at (unknown [10.10.30.15])
	by hmr112.pwrz.at (Postfix) with ESMTP id 7D81340290;
	Sat, 27 Feb 2021 15:34:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by srv345.pwrz.at (Postfix) with ESMTP id 2CCAFD139B;
	Sat, 27 Feb 2021 15:34:13 +0100 (CET)
X-Virus-Scanned: amavisd-new at pwrz.at
Received: from srv345.pwrz.at ([127.0.0.1])
	by localhost (srv345.pwrz.at [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LGx9r1ToVe_H; Sat, 27 Feb 2021 15:34:07 +0100 (CET)
Received: from srv371.pwrz.at (srv371.pwrz.at [80.122.189.136])
	by srv345.pwrz.at (Postfix) with ESMTP id 4878DD0C87;
	Sat, 27 Feb 2021 15:34:07 +0100 (CET)
Received: from [192.168.23.244] (cpe90-146-33-81.liwest.at [90.146.33.81])
	by srv371.pwrz.at (Postfix) with ESMTPSA id CBA272C139A;
	Sat, 27 Feb 2021 15:34:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=voxel.at; s=default;
	t=1614436492; bh=XJJv7W3rYsT0ihXqaZ4zajz0cwi7/lnR0tQxEQXO6D4=;
	l=13232;
	h=Subject:To:References:From:Organization:Message-ID:Date:
	 User-Agent:MIME-Version:In-Reply-To:Content-Type:Content-Language:
	 X-PPP-Message-ID:X-PPP-Vhost;
	b=q4ZCaoFbLyYlzrj/ESPAFzlrSUze0+iCrRj6nLtbdwWfbLbgSBF5Ej5F7E/ZMYJFO
	 bOFE6LmLVcP3oIWBvqEqBb/c4JTakS3N3Z9NrTc3dju7L5xY/Q8ru51ApHtmzejuE7
	 AZ8zgQ2qkAR1XWuxHiv8XjY0OLjR8LM0f7rgxgX0=
Subject: Re: [yocto] Dunfell, nodejs and typescript - short experience report
To: TRO <thomas.roos@industronic.de>, yocto@lists.yoctoproject.org
References: <dfb4f6fa-18d2-0be0-94a6-043b0a34ec2a@voxel.at>
 <31558.1614164554395492064@lists.yoctoproject.org>
From: "Simon Vogl" <simon@voxel.at>
Organization: VoXel Interaction Design
Message-ID: <d9cf8225-1f2c-61c1-8ebe-fd307a257fce@voxel.at>
Date: Sat, 27 Feb 2021 15:34:06 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.16; rv:78.0)
 Gecko/20100101 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <31558.1614164554395492064@lists.yoctoproject.org>
X-PPP-Message-ID: <20210227143451.32264.90617@srv371.pwrz.at>
X-PPP-Vhost: voxel.at
X-Groupsio-MsgNum: 52500
Content-Type: multipart/mixed; boundary="------------19E7DD2F29EB80FAD84E4FE0"
Content-Language: it

--------------19E7DD2F29EB80FAD84E4FE0
Content-Type: multipart/alternative;
 boundary="------------EA38E34912AF445D319067B1"

--------------EA38E34912AF445D319067B1
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Sure, please find the bbclass file attached to this mail. All it does is=20
to inherit npm and overwrite configure with an extended copy .

Meanwhile, I saw another issue popping up: It seems that multiple=20
indirect dependencies to a package with different versions create=20
inconsitent license checksum entries. In my case, several packages=20
depend on 'xtend' in versions 4.0.0 to 4.0.2, the license file picked is=
=20
package.json which contains the version, of course, and causes=20
conflicts. Oh my.

Simon



Am 24.02.21 um 12:02 schrieb TRO:
>
> Hi Simon,
> I'm dealing actually with the same problem. Would you like to share=20
> your=C2=A0 "configure in my own subclass"?
>
> I'm also thinking there is a need for a bbclass which actually is not=20
> using gyp, instead it should be able to "npm run build".
>
> There is alsa a patch for speeding up npm npmsw fetcher=20
> https://www.mail-archive.com/openembedded-core@lists.openembedded.org/ms=
g142406.html
> cheers Thomas
>
>
>=20
>
--=20
VoXel Interaction Design  |  www.voxel.at
DI Dr.techn. Simon Vogl   |  simon@voxel.at
Tomaschekweg 46           |  +43 650 2323 555
A-4040 Linz - Austria     |
Office address: Industriezeile 35, 4020 Linz (2nd floor)


--------------EA38E34912AF445D319067B1
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <p>Sure, please find the bbclass file attached to this mail. All it
      does is to inherit npm and overwrite configure with an extended
      copy .</p>
    <p>Meanwhile, I saw another issue popping up: It seems that multiple
      indirect dependencies to a package with different versions create
      inconsitent license checksum entries. In my case, several packages
      depend on 'xtend' in versions 4.0.0 to 4.0.2, the license file
      picked is package.json which contains the version, of course, and
      causes conflicts. Oh my.</p>
    <p>Simon<br>
    </p>
    <p><br>
    </p>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">Am 24.02.21 um 12:02 schrieb TRO:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:31558.1614164554395492064@lists.yoctoproject.org">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUT=
F-8">
      <p>Hi Simon,<br>
        I'm dealing actually with the same problem. Would you like to
        share your=C2=A0 "configure in my own subclass"?</p>
      <p>I'm also thinking there is a need for a bbclass which actually
        is not using gyp, instead it should be able to "npm run build".<br=
>
        <br>
        There is alsa a patch for speeding up npm npmsw fetcher
<a class=3D"moz-txt-link-freetext" href=3D"https://www.mail-archive.com/op=
enembedded-core@lists.openembedded.org/msg142406.html">https://www.mail-arc=
hive.com/openembedded-core@lists.openembedded.org/msg142406.html</a><br>
        cheers Thomas</p>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">


</pre>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
VoXel Interaction Design  |  <a class=3D"moz-txt-link-abbreviated" href=3D=
"http://www.voxel.at">www.voxel.at</a>
DI Dr.techn. Simon Vogl   |  <a class=3D"moz-txt-link-abbreviated" href=3D=
"mailto:simon@voxel.at">simon@voxel.at</a>
Tomaschekweg 46           |  +43 650 2323 555
A-4040 Linz - Austria     |  
Office address: Industriezeile 35, 4020 Linz (2nd floor)</pre>
  </body>
</html>

--------------EA38E34912AF445D319067B1--

--------------19E7DD2F29EB80FAD84E4FE0
Content-Type: text/plain; charset=UTF-8; x-mac-type="0"; x-mac-creator="0";
 name="npm_run_build.bbclass"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="npm_run_build.bbclass"

IyBDb3B5cmlnaHQgKEMpIDIwMjAgU2F2b2lyLUZhaXJlIExpbnV4CiMKIyBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllcjogR1BMLTIuMC1vbmx5CiMKIyBUaGlzIGJiY2xhc3MgYnVpbGRzIGFuZCBpbnN0
YWxscyBhbiBucG0gcGFja2FnZSB0byB0aGUgdGFyZ2V0LiBUaGUgcGFja2FnZQojIHNvdXJjZXMg
ZmlsZXMgc2hvdWxkIGJlIGZldGNoZWQgaW4gdGhlIGNhbGxpbmcgcmVjaXBlIGJ5IHVzaW5nIHRo
ZSBTUkNfVVJJCiMgdmFyaWFibGUuIFRoZSAke1N9IHZhcmlhYmxlIHNob3VsZCBiZSB1cGRhdGVk
IGRlcGVuZGluZyBvZiB5b3VyIGZldGNoZXIuCiMKIyBVc2FnZToKIyAgU1JDX1VSSSA9ICIuLi4i
CiMgIGluaGVyaXQgbnBtX3J1bl9idWlsZAojCiMgLi4uIGZvciB0aGUgcmVzdCBzZWUgbnBtLmJi
Y2xhc3MKCgppbmhlcml0IG5wbQoKcHl0aG9uIG5wbV9ydW5fYnVpbGRfZG9fY29uZmlndXJlKCkg
ewogICAgIiIiCiAgICBTdGVwIG9uZTogY29uZmlndXJlIHRoZSBucG0gY2FjaGUgYW5kIHRoZSBt
YWluIG5wbSBwYWNrYWdlCgogICAgRXZlcnkgZGVwZW5kZW5jaWVzIGhhdmUgYmVlbiBmZXRjaGVk
IGFuZCBwYXRjaGVkIGluIHRoZSBzb3VyY2UgZGlyZWN0b3J5LgogICAgVGhleSBoYXZlIHRvIGJl
IHBhY2tlZCAodGhpcyByZW1vdmUgdW5uZWVkZWQgZmlsZXMpIGFuZCBhZGRlZCB0byB0aGUgbnBt
CiAgICBjYWNoZSB0byBiZSBhdmFpbGFibGUgZm9yIHRoZSBuZXh0IHN0ZXAuCgogICAgVGhlIG1h
aW4gcGFja2FnZSBhbmQgaXRzIGFzc29jaWF0ZWQgbWFuaWZlc3QgZmlsZSBhbmQgc2hyaW5rd3Jh
cCBmaWxlIGhhdmUKICAgIHRvIGJlIGNvbmZpZ3VyZWQgdG8gdGFrZSBpbnRvIGFjY291bnQgdGhl
c2UgY2FjaGVkIGRlcGVuZGVuY2llcy4KCiAgICBbU1ZdIGNvcGllZCBmcm9tIG5wbS5iYmNsYXNz
IGFuZCBleHRlbmRlZCB0byBydW4gbnBtIGksIG5wbSBydW4gYnVpbGQgYmVmb3JlIAogICAgcGFj
a2luZyB0aGUgbWFpbiBwYWNrYWdlLgogICAgIiIiCiAgICBpbXBvcnQgYmFzZTY0CiAgICBpbXBv
cnQgY29weQogICAgaW1wb3J0IGpzb24KICAgIGltcG9ydCByZQogICAgaW1wb3J0IHNobGV4CiAg
ICBpbXBvcnQgdGVtcGZpbGUKICAgIGZyb20gYmIuZmV0Y2gyLm5wbSBpbXBvcnQgTnBtRW52aXJv
bm1lbnQKICAgIGZyb20gYmIuZmV0Y2gyLm5wbSBpbXBvcnQgbnBtX3VucGFjawogICAgZnJvbSBi
Yi5mZXRjaDIubnBtc3cgaW1wb3J0IGZvcmVhY2hfZGVwZW5kZW5jaWVzCiAgICBmcm9tIGJiLnBy
b2dyZXNzIGltcG9ydCBPdXRPZlByb2dyZXNzSGFuZGxlcgoKICAgIGJiLnV0aWxzLnJlbW92ZShk
LmdldFZhcigiTlBNX0NBQ0hFIiksIHJlY3Vyc2U9VHJ1ZSkKICAgIGJiLnV0aWxzLnJlbW92ZShk
LmdldFZhcigiTlBNX1BBQ0tBR0UiKSwgcmVjdXJzZT1UcnVlKQoKICAgIGVudiA9IE5wbUVudmly
b25tZW50KGQsIGNvbmZpZ3M9bnBtX2dsb2JhbF9jb25maWdzKGQpKQoKICAgIGRlZiBfbnBtX2Nh
Y2hlX2FkZCh0YXJiYWxsKToKICAgICAgICAiIiJSdW4gJ25wbSBjYWNoZSBhZGQnIGZvciBhIHNw
ZWNpZmllZCB0YXJiYWxsIiIiCiAgICAgICAgY21kID0gIm5wbSBjYWNoZSBhZGQgJXMiICUgc2hs
ZXgucXVvdGUodGFyYmFsbCkKICAgICAgICBlbnYucnVuKGNtZCkKCiAgICBkZWYgX25wbV9pbnRl
Z3JpdHkodGFyYmFsbCk6CiAgICAgICAgIiIiUmV0dXJuIHRoZSBucG0gaW50ZWdyaXR5IG9mIGEg
c3BlY2lmaWVkIHRhcmJhbGwiIiIKICAgICAgICBzaGE1MTIgPSBiYi51dGlscy5zaGE1MTJfZmls
ZSh0YXJiYWxsKQogICAgICAgIHJldHVybiAic2hhNTEyLSIgKyBiYXNlNjQuYjY0ZW5jb2RlKGJ5
dGVzLmZyb21oZXgoc2hhNTEyKSkuZGVjb2RlKCkKCiAgICBkZWYgX25wbV92ZXJzaW9uKHRhcmJh
bGwpOgogICAgICAgICIiIlJldHVybiB0aGUgdmVyc2lvbiBvZiBhIHNwZWNpZmllZCB0YXJiYWxs
IiIiCiAgICAgICAgcmVnZXggPSByIi0oXGQrXC5cZCtcLlxkKygtLiopPyhcKy4qKT8pXC50Z3oi
CiAgICAgICAgcmV0dXJuIHJlLnNlYXJjaChyZWdleCwgdGFyYmFsbCkuZ3JvdXAoMSkKCiAgICBk
ZWYgX25wbXN3X2RlcGVuZGVuY3lfZGljdChvcmlnLCBkZXB0cmVlKToKICAgICAgICAiIiIKICAg
ICAgICBSZXR1cm4gdGhlIHN1YiBkaWN0aW9uYXJ5IGluIHRoZSAnb3JpZycgZGljdGlvbmFyeSBj
b3JyZXNwb25kaW5nIHRvIHRoZQogICAgICAgICdkZXB0cmVlJyBkZXBlbmRlbmN5IHRyZWUuIFRo
aXMgZnVuY3Rpb24gZm9sbG93cyB0aGUgc2hyaW5rd3JhcCBmaWxlCiAgICAgICAgZm9ybWF0Lgog
ICAgICAgICIiIgogICAgICAgIHB0ciA9IG9yaWcKICAgICAgICBmb3IgZGVwIGluIGRlcHRyZWU6
CiAgICAgICAgICAgIGlmICJkZXBlbmRlbmNpZXMiIG5vdCBpbiBwdHI6CiAgICAgICAgICAgICAg
ICBwdHJbImRlcGVuZGVuY2llcyJdID0ge30KICAgICAgICAgICAgcHRyID0gcHRyWyJkZXBlbmRl
bmNpZXMiXQogICAgICAgICAgICBpZiBkZXAgbm90IGluIHB0cjoKICAgICAgICAgICAgICAgIHB0
cltkZXBdID0ge30KICAgICAgICAgICAgcHRyID0gcHRyW2RlcF0KICAgICAgICByZXR1cm4gcHRy
CgogICAgIyBNYW5hZ2UgdGhlIG1hbmlmZXN0IGZpbGUgYW5kIHNocmlua3dyYXAgZmlsZXMKICAg
IG9yaWdfbWFuaWZlc3RfZmlsZSA9IGQuZXhwYW5kKCIke1N9L3BhY2thZ2UuanNvbiIpCiAgICBv
cmlnX3Nocmlua3dyYXBfZmlsZSA9IGQuZXhwYW5kKCIke1N9L25wbS1zaHJpbmt3cmFwLmpzb24i
KQogICAgY2FjaGVkX21hbmlmZXN0X2ZpbGUgPSBkLmV4cGFuZCgiJHtOUE1fUEFDS0FHRX0vcGFj
a2FnZS5qc29uIikKICAgIGNhY2hlZF9zaHJpbmt3cmFwX2ZpbGUgPSBkLmV4cGFuZCgiJHtOUE1f
UEFDS0FHRX0vbnBtLXNocmlua3dyYXAuanNvbiIpCgogICAgd2l0aCBvcGVuKG9yaWdfbWFuaWZl
c3RfZmlsZSwgInIiKSBhcyBmOgogICAgICAgIG9yaWdfbWFuaWZlc3QgPSBqc29uLmxvYWQoZikK
CiAgICBjYWNoZWRfbWFuaWZlc3QgPSBjb3B5LmRlZXBjb3B5KG9yaWdfbWFuaWZlc3QpCiAgICBj
YWNoZWRfbWFuaWZlc3QucG9wKCJkZXBlbmRlbmNpZXMiLCBOb25lKQogICAgY2FjaGVkX21hbmlm
ZXN0LnBvcCgiZGV2RGVwZW5kZW5jaWVzIiwgTm9uZSkKCiAgICB3aXRoIG9wZW4ob3JpZ19zaHJp
bmt3cmFwX2ZpbGUsICJyIikgYXMgZjoKICAgICAgICBvcmlnX3Nocmlua3dyYXAgPSBqc29uLmxv
YWQoZikKCiAgICBjYWNoZWRfc2hyaW5rd3JhcCA9IGNvcHkuZGVlcGNvcHkob3JpZ19zaHJpbmt3
cmFwKQogICAgY2FjaGVkX3Nocmlua3dyYXAucG9wKCJkZXBlbmRlbmNpZXMiLCBOb25lKQoKICAg
ICMgTWFuYWdlIHRoZSBkZXBlbmRlbmNpZXMKICAgIHByb2dyZXNzID0gT3V0T2ZQcm9ncmVzc0hh
bmRsZXIoZCwgciJeKFxkKykvKFxkKykkIikKICAgIHByb2dyZXNzX3RvdGFsID0gMSAjIGFsc28g
Y291bnQgdGhlIG1haW4gcGFja2FnZQogICAgcHJvZ3Jlc3NfZG9uZSA9IDAKCiAgICBkZWYgX2Nv
dW50X2RlcGVuZGVuY3kobmFtZSwgcGFyYW1zLCBkZXB0cmVlKToKICAgICAgICBub25sb2NhbCBw
cm9ncmVzc190b3RhbAogICAgICAgIHByb2dyZXNzX3RvdGFsICs9IDEKCiAgICBkZWYgX2NhY2hl
X2RlcGVuZGVuY3kobmFtZSwgcGFyYW1zLCBkZXB0cmVlKToKICAgICAgICBkZXN0c3ViZGlycyA9
IFtvcy5wYXRoLmpvaW4oIm5vZGVfbW9kdWxlcyIsIGRlcCkgZm9yIGRlcCBpbiBkZXB0cmVlXQog
ICAgICAgIGRlc3RzdWZmaXggPSBvcy5wYXRoLmpvaW4oKmRlc3RzdWJkaXJzKQogICAgICAgIHdp
dGggdGVtcGZpbGUuVGVtcG9yYXJ5RGlyZWN0b3J5KCkgYXMgdG1wZGlyOgogICAgICAgICAgICAj
IEFkZCB0aGUgZGVwZW5kZW5jeSB0byB0aGUgbnBtIGNhY2hlCiAgICAgICAgICAgIGRlc3RkaXIg
PSBvcy5wYXRoLmpvaW4oZC5nZXRWYXIoIlMiKSwgZGVzdHN1ZmZpeCkKICAgICAgICAgICAgdGFy
YmFsbCA9IG5wbV9wYWNrKGVudiwgZGVzdGRpciwgdG1wZGlyKQogICAgICAgICAgICBfbnBtX2Nh
Y2hlX2FkZCh0YXJiYWxsKQogICAgICAgICAgICAjIEFkZCBpdHMgc2lnbmF0dXJlIHRvIHRoZSBj
YWNoZWQgc2hyaW5rd3JhcAogICAgICAgICAgICBkZXAgPSBfbnBtc3dfZGVwZW5kZW5jeV9kaWN0
KGNhY2hlZF9zaHJpbmt3cmFwLCBkZXB0cmVlKQogICAgICAgICAgICBkZXBbInZlcnNpb24iXSA9
IF9ucG1fdmVyc2lvbih0YXJiYWxsKQogICAgICAgICAgICBkZXBbImludGVncml0eSJdID0gX25w
bV9pbnRlZ3JpdHkodGFyYmFsbCkKICAgICAgICAgICAgaWYgcGFyYW1zLmdldCgiZGV2IiwgRmFs
c2UpOgogICAgICAgICAgICAgICAgZGVwWyJkZXYiXSA9IFRydWUKICAgICAgICAgICAgIyBEaXNw
bGF5IHByb2dyZXNzCiAgICAgICAgICAgIG5vbmxvY2FsIHByb2dyZXNzX2RvbmUKICAgICAgICAg
ICAgcHJvZ3Jlc3NfZG9uZSArPSAxCiAgICAgICAgICAgIHByb2dyZXNzLndyaXRlKCIlZC8lZCIg
JSAocHJvZ3Jlc3NfZG9uZSwgcHJvZ3Jlc3NfdG90YWwpKQoKICAgIGRldiA9IGJiLnV0aWxzLnRv
X2Jvb2xlYW4oZC5nZXRWYXIoIk5QTV9JTlNUQUxMX0RFViIpLCBGYWxzZSkKICAgIGZvcmVhY2hf
ZGVwZW5kZW5jaWVzKG9yaWdfc2hyaW5rd3JhcCwgX2NvdW50X2RlcGVuZGVuY3ksIGRldikKICAg
IGZvcmVhY2hfZGVwZW5kZW5jaWVzKG9yaWdfc2hyaW5rd3JhcCwgX2NhY2hlX2RlcGVuZGVuY3ks
IGRldikKCiAgICAjIENvbmZpZ3VyZSB0aGUgbWFpbiBwYWNrYWdlCiAgICB3aXRoIHRlbXBmaWxl
LlRlbXBvcmFyeURpcmVjdG9yeSgpIGFzIHRtcGRpcjoKICAgICAgICAjIGluc3RhbGwgYWxsIChu
YXRpdmUpIGJ1aWxkIGRlcGVuZGVuY2llczoKICAgICAgICBwcmludCgiUlVOTklORyBOUE0gQlVJ
TEQgU1RFUCAlcyIgJSBvcy5nZXRjd2QoKSApCiAgICAgICAgcmV0ID0gb3Muc3lzdGVtKCJucG0g
aSIpCiAgICAgICAgcHJpbnQoInJldCAlZCIgJSByZXQpCiAgICAgICAgIyBydW4gYnVpbGQgc3Rl
cDoKICAgICAgICBvdXQgPSBlbnYucnVuKCJucG0gcnVuIGJ1aWxkIiwgYXJncz1bXSwgd29ya2Rp
cj1kLmdldFZhcigiUyIpKQogICAgICAgIHByaW50KG91dCkKICAgICAgICB0YXJiYWxsID0gbnBt
X3BhY2soZW52LCBkLmdldFZhcigiUyIpLCB0bXBkaXIpCiAgICAgICAgbnBtX3VucGFjayh0YXJi
YWxsLCBkLmdldFZhcigiTlBNX1BBQ0tBR0UiKSwgZCkKCiAgICAjIENvbmZpZ3VyZSB0aGUgY2Fj
aGVkIG1hbmlmZXN0IGZpbGUgYW5kIGNhY2hlZCBzaHJpbmt3cmFwIGZpbGUKICAgIGRlZiBfdXBk
YXRlX21hbmlmZXN0KGRlcGtleSk6CiAgICAgICAgZm9yIG5hbWUgaW4gb3JpZ19tYW5pZmVzdC5n
ZXQoZGVwa2V5LCB7fSk6CiAgICAgICAgICAgIHZlcnNpb24gPSBjYWNoZWRfc2hyaW5rd3JhcFsi
ZGVwZW5kZW5jaWVzIl1bbmFtZV1bInZlcnNpb24iXQogICAgICAgICAgICBpZiBkZXBrZXkgbm90
IGluIGNhY2hlZF9tYW5pZmVzdDoKICAgICAgICAgICAgICAgIGNhY2hlZF9tYW5pZmVzdFtkZXBr
ZXldID0ge30KICAgICAgICAgICAgY2FjaGVkX21hbmlmZXN0W2RlcGtleV1bbmFtZV0gPSB2ZXJz
aW9uCgogICAgX3VwZGF0ZV9tYW5pZmVzdCgiZGVwZW5kZW5jaWVzIikKCiAgICBpZiBkZXY6CiAg
ICAgICAgX3VwZGF0ZV9tYW5pZmVzdCgiZGV2RGVwZW5kZW5jaWVzIikKCiAgICB3aXRoIG9wZW4o
Y2FjaGVkX21hbmlmZXN0X2ZpbGUsICJ3IikgYXMgZjoKICAgICAgICBqc29uLmR1bXAoY2FjaGVk
X21hbmlmZXN0LCBmLCBpbmRlbnQ9MikKCiAgICB3aXRoIG9wZW4oY2FjaGVkX3Nocmlua3dyYXBf
ZmlsZSwgInciKSBhcyBmOgogICAgICAgIGpzb24uZHVtcChjYWNoZWRfc2hyaW5rd3JhcCwgZiwg
aW5kZW50PTIpCn0KCkVYUE9SVF9GVU5DVElPTlMgZG9fY29uZmlndXJlCg==

--------------19E7DD2F29EB80FAD84E4FE0--
