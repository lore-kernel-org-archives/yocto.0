Return-Path: <scancool@yahoo.com>
Received: from nm2-vm0.bullet.mail.bf1.yahoo.com
	(nm2-vm0.bullet.mail.bf1.yahoo.com [98.139.213.127])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 2A63DE003BC
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 18:03:00 -0800 (PST)
Received: from [98.139.214.32] by nm2.bullet.mail.bf1.yahoo.com with NNFMP;
	15 Feb 2013 02:02:59 -0000
Received: from [98.139.212.243] by tm15.bullet.mail.bf1.yahoo.com with NNFMP;
	15 Feb 2013 02:02:59 -0000
Received: from [127.0.0.1] by omp1052.mail.bf1.yahoo.com with NNFMP;
	15 Feb 2013 02:02:59 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 521531.41532.bm@omp1052.mail.bf1.yahoo.com
Received: (qmail 30282 invoked by uid 60001); 15 Feb 2013 02:02:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1360893779; bh=asfGHpSYkEQcRgWXIsO+atitkWY/H0aFX72B19kFK4o=;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:Message-ID:Date:From:Subject:To:MIME-Version:Content-Type;
	b=sbWvXPqeldzoUVB1kKgfIEKVlYyleemCr98jxN/GkIGlytQZj2QgiL8NdhaDyUK30HzclhbL5rxDf1evTsje/HOZ2D7S8RpWT1N/xU1Hu+coZJ3AFBKOannXeaXJd9LJanqhE4aHZnxZZdfD/LB29RZZuL21xb2q97J6djvT4+Q=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:Message-ID:Date:From:Subject:To:MIME-Version:Content-Type;
	b=2R2S3XhFnASmo78SKL4e+NgEJBUlCTbllp/5/+4CUCLSuSC37OsbyoZ7uUf/9P20D09TxgfL04nEIZ0I8TZY5pXLHSwHz2B/77L91y9+sPt0HG+lLgEO/UpCP3TZVwXqUKoiAlSMYRhrNS+QTsHsoSzCGf9VftBLI9OPgCQk+Yw=;
X-YMail-OSG: 3RqCvr0VM1mHKRJaj6fSurAuOIvNJTs.uc1AwcT1bkRrOrU
	MGg78rPMKwl5Nv5IywsSGbo9ALluJR6o.bZheATKAMN2B4oxC1vfyMquAsaW
	lptlVWwQck6PQajtEer3BQGoMl9cLjti_H2K6KrDVdEkd_T5JtHHupEoVREe
	DFsZsI6Cyuyg7J6tS.tPo4Cjpj1soOoV6DC08vtPklRAD8fwOdYOTR2uqWo4
	JSzPD7.eacqfidxAhvD_9yGgLea3NsX8wQHriupCDXOmhhVOnpNGZyVgo0nL
	PdImSVEs0C7odlZRCV7cCouxz9iC4k1hank7Om8fpj0Pwx5B81sS98qBZvIg
	BeA1VupbK7km5ksmnEzbNmqYGDu1xEobmEA28mIuK_37gu2eLz0H3922uUGr
	bJa6rxH7ms87qmU970AggQEsqTWNNq1XLE3losBNqmn_yG_vr13GxP18Rdbq
	mRe5qvjMMhlyX05V2GyF1Lrl6nyHSCxNGPKmLdBMpoKjUZubKeTzReFK8wB1
	oYDG94mtEzvhuwkw-
Received: from [68.226.113.30] by web140006.mail.bf1.yahoo.com via HTTP;
	Thu, 14 Feb 2013 18:02:59 PST
X-Rocket-MIMEInfo: 001.001,
	SSBoYWQgYXR0Y2hlZCB0aGUgd3JvbmcgZmlsZSBhbmQgSSBzZWUgd2h5IGl0IGZhaWxzLCBidXQgSSBkb250IGtub3cgd2hlcmUgY2FuIEkgZmluZCB0aGlzIGZpbGVzLCBjYXVzZSBlZ2xpYmMgaXMgYWxyZWFkeSBzZWxlY3RlZC4NCg0KZXJyb3I6IEZhaWxlZCBkZXBlbmRlbmNpZXM6DQrCoMKgwqAgZWdsaWJjLWJpbmFyeS1sb2NhbGVkYXRhLXVrLXVhLmtvaTh1IGlzIG5lZWRlZCBieSBsb2NhbGUtYmFzZS11ay11YS5rb2k4LXUtMi4xMy1yMjAuYXJtdjV0ZQ0KwqDCoMKgIGVnbGliYy1iaW5hcnktbG9jYWwBMAEBAQE-
X-Mailer: YahooMailClassic/15.1.2 YahooMailWebService/0.8.133.508
Message-ID: <1360893779.9004.YahooMailClassic@web140006.mail.bf1.yahoo.com>
Date: Thu, 14 Feb 2013 18:02:59 -0800 (PST)
From: Andre Bella <scancool@yahoo.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Subject: Re: fails after adding package
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 15 Feb 2013 02:03:00 -0000
X-Groupsio-MsgNum: 12138
Content-Type: multipart/mixed; boundary="789641336-790400451-1360893779=:9004"

--789641336-790400451-1360893779=:9004
Content-Type: multipart/alternative; boundary="789641336-1894501728-1360893779=:9004"

--789641336-1894501728-1360893779=:9004
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

I had attched the wrong file and I see why it fails, but I dont know where =
can I find this files, cause eglibc is already selected.

error: Failed dependencies:
=A0=A0=A0 eglibc-binary-localedata-uk-ua.koi8u is needed by locale-base-uk-=
ua.koi8-u-2.13-r20.armv5te
=A0=A0=A0 eglibc-binary-localedata-de-at.iso88591 is needed by locale-base-=
de-at.iso-8859-1-2.13-r20.armv5te
=A0=A0=A0 eglibc-binary-localedata-tr-cy.iso88599 is needed by locale-base-=
tr-cy.iso-8859-9-2.13-r20.armv5te
=A0=A0=A0 eglibc-binary-localedata-ru-ua.koi8u is needed by locale-base-ru-=
ua.koi8-u-2.13-r20.armv5te
=A0=A0=A0 eglibc-binary-localedata-gl-es.iso88591 is needed by locale-base-=
gl-es.iso-8859-1-2.13-r20.armv5te
=A0=A0=A0 eglibc-binary-localedata-ms-my.iso88591 is needed by locale-base-=
ms-my.iso-8859-1-2.13-r20.armv5te
=A0=A0=A0 eglibc-binary-localedata-vi-vn.tcvn57121 is needed by locale-base=
-vi-vn.tcvn5712-1-2.13-r20.armv5te
=A0=A0=A0 eglibc-binary-localedata-da-dk.iso88591 is needed by locale-base-=
da-dk.iso-8859-1-2.13-r20.armv5te
=A0=A0=A0 eglibc-binary-localedata-nn-no.iso88591 is needed by locale-base-=
nn-no.iso-8859-1-2.13-r20.armv5te
=A0=A0=A0 eglibc-binary-localedata-hu-hu.iso88592 is needed by locale-base-=
hu-hu.iso-8859-2-2.13-r20.armv5te
=A0=A0=A0 eglibc-binary-localedata-pl-pl.iso88592 is needed by locale-base-=
pl-pl.iso-8859-2-2.13-r20.armv5te
=A0=A0=A0 eglibc-binary-localedata-sv-fi.iso88591 is needed by locale-base-=
sv-fi.iso-88ERROR: Function failed: do_rootfs (see /home/icemetal/fsl-commu=
nity-bsp/build/tmp/work/imx233_olinuxino_micro-poky-linux-gnueabi/hob-image=
-1.0-r0/temp/log.do_rootfs.10499 for further information)
59-1-2.13-r20.armv5te



--- On Thu, 2/14/13, Andre Bella <scancool@yahoo.com> wrote:

From: Andre Bella <scancool@yahoo.com>
Subject: [yocto] fails after adding package
To: yocto@yoctoproject.org
Date: Thursday, February 14, 2013, 6:55 PM

Hello again I'm still learning yocto, so I had build an image using hob, an=
d after the core-image-minimal was build I added a package (nano) and build=
 again, but this time came with an error, (attachment)
what does this error means? how do you usually add packages?
I had tried many times, always the same error.

-----Inline Attachment Follows-----

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

--789641336-1894501728-1360893779=:9004
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<table cellspacing=3D"0" cellpadding=3D"0" border=3D"0" ><tr><td valign=3D"=
top" style=3D"font: inherit;">I had attched the wrong file and I see why it=
 fails, but I dont know where can I find this files, cause eglibc is alread=
y selected.<br><br>error: Failed dependencies:<br>&nbsp;&nbsp;&nbsp; eglibc=
-binary-localedata-uk-ua.koi8u is needed by locale-base-uk-ua.koi8-u-2.13-r=
20.armv5te<br>&nbsp;&nbsp;&nbsp; eglibc-binary-localedata-de-at.iso88591 is=
 needed by locale-base-de-at.iso-8859-1-2.13-r20.armv5te<br>&nbsp;&nbsp;&nb=
sp; eglibc-binary-localedata-tr-cy.iso88599 is needed by locale-base-tr-cy.=
iso-8859-9-2.13-r20.armv5te<br>&nbsp;&nbsp;&nbsp; eglibc-binary-localedata-=
ru-ua.koi8u is needed by locale-base-ru-ua.koi8-u-2.13-r20.armv5te<br>&nbsp=
;&nbsp;&nbsp; eglibc-binary-localedata-gl-es.iso88591 is needed by locale-b=
ase-gl-es.iso-8859-1-2.13-r20.armv5te<br>&nbsp;&nbsp;&nbsp; eglibc-binary-l=
ocaledata-ms-my.iso88591 is needed by
 locale-base-ms-my.iso-8859-1-2.13-r20.armv5te<br>&nbsp;&nbsp;&nbsp; eglibc=
-binary-localedata-vi-vn.tcvn57121 is needed by locale-base-vi-vn.tcvn5712-=
1-2.13-r20.armv5te<br>&nbsp;&nbsp;&nbsp; eglibc-binary-localedata-da-dk.iso=
88591 is needed by locale-base-da-dk.iso-8859-1-2.13-r20.armv5te<br>&nbsp;&=
nbsp;&nbsp; eglibc-binary-localedata-nn-no.iso88591 is needed by locale-bas=
e-nn-no.iso-8859-1-2.13-r20.armv5te<br>&nbsp;&nbsp;&nbsp; eglibc-binary-loc=
aledata-hu-hu.iso88592 is needed by locale-base-hu-hu.iso-8859-2-2.13-r20.a=
rmv5te<br>&nbsp;&nbsp;&nbsp; eglibc-binary-localedata-pl-pl.iso88592 is nee=
ded by locale-base-pl-pl.iso-8859-2-2.13-r20.armv5te<br>&nbsp;&nbsp;&nbsp; =
eglibc-binary-localedata-sv-fi.iso88591 is needed by locale-base-sv-fi.iso-=
88ERROR: Function failed: do_rootfs (see /home/icemetal/fsl-community-bsp/b=
uild/tmp/work/imx233_olinuxino_micro-poky-linux-gnueabi/hob-image-1.0-r0/te=
mp/log.do_rootfs.10499 for further
 information)<br>59-1-2.13-r20.armv5te<br><br><br><br>--- On <b>Thu, 2/14/1=
3, Andre Bella <i>&lt;scancool@yahoo.com&gt;</i></b> wrote:<br><blockquote =
style=3D"border-left: 2px solid rgb(16, 16, 255); margin-left: 5px; padding=
-left: 5px;"><br>From: Andre Bella &lt;scancool@yahoo.com&gt;<br>Subject: [=
yocto] fails after adding package<br>To: yocto@yoctoproject.org<br>Date: Th=
ursday, February 14, 2013, 6:55 PM<br><br><div id=3D"yiv1580329623"><table =
border=3D"0" cellpadding=3D"0" cellspacing=3D"0"><tbody><tr><td style=3D"fo=
nt:inherit;" valign=3D"top">Hello again I'm still learning yocto, so I had =
build an image using hob, and after the core-image-minimal was build I adde=
d a package (nano) and build again, but this time came with an error, (atta=
chment)<br>what does this error means? how do you usually add packages?<br>=
I had tried many times, always the same error.<br></td></tr></tbody></table=
></div><br>-----Inline Attachment Follows-----<br><br><div
 class=3D"plainMail">_______________________________________________<br>yoc=
to mailing list<br><a ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"/mc=
/compose?to=3Dyocto@yoctoproject.org">yocto@yoctoproject.org</a><br><a href=
=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">https:=
//lists.yoctoproject.org/listinfo/yocto</a><br></div></blockquote></td></tr=
></table>

--789641336-1894501728-1360893779=:9004--

--789641336-790400451-1360893779=:9004
Content-Type: application/octet-stream; name="log.do_rootfs.7896"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="log.do_rootfs.7896"

R2VuZXJhdGluZyBzb2x2ZSBkYiBmb3IgL2hvbWUvaWNlbWV0YWwvZnNsLWNvbW11bml0eS1ic3Av
YnVpbGQvdG1wL2RlcGxveS9ycG0vaW14MjMzX29saW51eGlub19taWNyby4uLgogICB0b3RhbDog
ICAgICAgICAgICAgICAxICAgICAgMC4wMDAwMDAgTUIgICAgICAyLjM3NjAxNyBzZWNzCiAgIGZp
bmdlcnByaW50OiAgICAgICAxNDQgICAgICAwLjA0MTY3MiBNQiAgICAgIDAuNDgxODk4IHNlY3MK
ICAgaW5zdGFsbDogICAgICAgICAgICA0OCAgICAgIDAuMDAwMDAwIE1CICAgICAgMC4yNzAwMTAg
c2VjcwogICBkYmFkZDogICAgICAgICAgICAgIDQ4ICAgICAgMC4wMDAwMDAgTUIgICAgICAwLjI2
Mzg3MCBzZWNzCiAgIGRiZ2V0OiAgICAgICAgICAgMTIxNDEgICAgICAwLjAwMDAwMCBNQiAgICAg
IDAuMDEwMDkwIHNlY3MKICAgZGJwdXQ6ICAgICAgICAgICAgICA0OCAgICAgIDIuNTQwODI4IE1C
ICAgICAgMC4yMTEyMDIgc2VjcwogICByZWFkaGRyOiAgICAgICAgICAgNDgxICAgICAgNS4wNDEy
MjQgTUIgICAgICAxLjExMzExMiBzZWNzCiAgIGhkcmxvYWQ6ICAgICAgICAgICAyNDAgICAgICA3
LjU3MTIwNCBNQiAgICAgIDAuMDAzNjUxIHNlY3MKICAgaGRyZ2V0OiAgICAgICAgICAgNzc1OCAg
ICAgIDAuMDAwMDAwIE1CICAgICAgMC4wMzI3Nzcgc2VjcwpHZW5lcmF0aW5nIHNvbHZlIGRiIGZv
ciAvaG9tZS9pY2VtZXRhbC9mc2wtY29tbXVuaXR5LWJzcC9idWlsZC90bXAvZGVwbG95L3JwbS9h
cm12NXRlLi4uCiAgIHRvdGFsOiAgICAgICAgICAgICAgIDEgICAgICAwLjAwMDAwMCBNQiAgICAg
OTYuNTI3MzczIHNlY3MKICAgZmluZ2VycHJpbnQ6ICAgICAxMTAwNCAgICAgIDAuMTE1ODgwIE1C
ICAgICAgMi43MDE0ODggc2VjcwogICBpbnN0YWxsOiAgICAgICAgICAzNjY4ICAgICAgMC4wMDAw
MDAgTUIgICAgIDE2Ljc5OTE1NSBzZWNzCiAgIGRiYWRkOiAgICAgICAgICAgIDM2NjggICAgICAw
LjAwMDAwMCBNQiAgICAgMTYuMzg0OTMxIHNlY3MKICAgZGJnZXQ6ICAgICAgICAgICAzNzI1OCAg
ICAgIDAuMDAwMDAwIE1CICAgICAgMC4xODUxNTYgc2VjcwogICBkYnB1dDogICAgICAgICAgICAz
NjY4ICAgICAxNy40ODcyMjQgTUIgICAgIDE0LjQ4NjE1NyBzZWNzCiAgIHJlYWRoZHI6ICAgICAg
ICAgMzY2ODEgICAgIDM1LjE0MDA2NiBNQiAgICAgNTguMjMwNDE1IHNlY3MKICAgaGRybG9hZDog
ICAgICAgICAxODg2MCAgICAgNTQuMDEwOTU4IE1CICAgICAgMC4zNzkzOTIgc2VjcwogICBoZHJn
ZXQ6ICAgICAgICAgNjUyNzk0ICAgICAgMC4wMDAwMDAgTUIgICAgICAxLjg1OTQ3NyBzZWNzCkdl
bmVyYXRpbmcgc29sdmUgZGIgZm9yIC9ob21lL2ljZW1ldGFsL2ZzbC1jb21tdW5pdHktYnNwL2J1
aWxkL3RtcC9kZXBsb3kvcnBtL2FsbC4uLgogICB0b3RhbDogICAgICAgICAgICAgICAxICAgICAg
MC4wMDAwMDAgTUIgICAgICAwLjUwMTY5OCBzZWNzCiAgIGZpbmdlcnByaW50OiAgICAgICAgMzkg
ICAgICAwLjAwMDc2OCBNQiAgICAgIDAuMTExOTAxIHNlY3MKICAgaW5zdGFsbDogICAgICAgICAg
ICAxMyAgICAgIDAuMDAwMDAwIE1CICAgICAgMC4xNDI5NjEgc2VjcwogICBkYmFkZDogICAgICAg
ICAgICAgIDEzICAgICAgMC4wMDAwMDAgTUIgICAgICAwLjExMjk4MSBzZWNzCiAgIGRiZ2V0OiAg
ICAgICAgICAgICAxMDIgICAgICAwLjAwMDAwMCBNQiAgICAgIDAuMDAwNDE3IHNlY3MKICAgZGJw
dXQ6ICAgICAgICAgICAgICAxMyAgICAgIDAuMDY4MTcyIE1CICAgICAgMC4wMzEwMDMgc2Vjcwog
ICByZWFkaGRyOiAgICAgICAgICAgMTMxICAgICAgMC4xMzczMDQgTUIgICAgICAwLjA3MTM5OCBz
ZWNzCiAgIGhkcmxvYWQ6ICAgICAgICAgICAgNzEgICAgICAwLjIxOTAwNCBNQiAgICAgIDAuMDAw
ODc1IHNlY3MKICAgaGRyZ2V0OiAgICAgICAgICAgMTkyOCAgICAgIDAuMDAwMDAwIE1CICAgICAg
MC4wMDQ0MzEgc2VjcwpHZW5lcmF0aW5nIHNvbHZlIGRiIGZvciAvaG9tZS9pY2VtZXRhbC9mc2wt
Y29tbXVuaXR5LWJzcC9idWlsZC90bXAvZGVwbG95L3JwbS9hbGwuLi4KICAgdG90YWw6ICAgICAg
ICAgICAgICAgMSAgICAgIDAuMDAwMDAwIE1CICAgICAgMC4xNDI1MDkgc2VjcwogICBmaW5nZXJw
cmludDogICAgICAgIDM5ICAgICAgMC4wMDA3NjggTUIgICAgICAwLjAwMjU3NyBzZWNzCiAgIGlu
c3RhbGw6ICAgICAgICAgICAgMTMgICAgICAwLjAwMDAwMCBNQiAgICAgIDAuMDYzNDYyIHNlY3MK
ICAgZGJhZGQ6ICAgICAgICAgICAgICAxMyAgICAgIDAuMDAwMDAwIE1CICAgICAgMC4wNTcwNjgg
c2VjcwogICBkYmdldDogICAgICAgICAgICAgMTAyICAgICAgMC4wMDAwMDAgTUIgICAgICAwLjAw
MDI2NSBzZWNzCiAgIGRicHV0OiAgICAgICAgICAgICAgMTMgICAgICAwLjA2ODE3MiBNQiAgICAg
IDAuMDIxMzU2IHNlY3MKICAgcmVhZGhkcjogICAgICAgICAgIDEzMSAgICAgIDAuMTM3MzA0IE1C
ICAgICAgMC4wMDA2NTcgc2VjcwogICBoZHJsb2FkOiAgICAgICAgICAgIDcxICAgICAgMC4yMTkw
MDQgTUIgICAgICAwLjAwMDU3NSBzZWNzCiAgIGhkcmdldDogICAgICAgICAgIDE5MjggICAgICAw
LjAwMDAwMCBNQiAgICAgIDAuMDAzMTg0IHNlY3MKUHJvY2Vzc2luZyBidXN5Ym94Li4uClByb2Nl
c3NpbmcgbmFuby1sb2NhbGUtdmkuLi4KUHJvY2Vzc2luZyBsaWJ6LWRldi4uLgpQcm9jZXNzaW5n
IGxpbnV4LWxpYmMtaGVhZGVycy1pbXgtZGV2Li4uClByb2Nlc3NpbmcgbmFuby1sb2NhbGUtbmIu
Li4KUHJvY2Vzc2luZyBzeXN2aW5pdC4uLgpQcm9jZXNzaW5nIGxpYmdjYy1zLWRldi4uLgpQcm9j
ZXNzaW5nIGxvY2FsZS1iYXNlLXVrLXVhLmtvaTgtdS4uLgpQcm9jZXNzaW5nIGxpYmM2LWRiZy4u
LgpQcm9jZXNzaW5nIGxpYnBlcmw1Li4uClByb2Nlc3NpbmcgbGliZ2RibTQuLi4KUHJvY2Vzc2lu
ZyBuYW5vLWxvY2FsZS1ubi4uLgpQcm9jZXNzaW5nIG5hbm8tbG9jYWxlLW5sLi4uClByb2Nlc3Np
bmcgZWdsaWJjLWJpbmFyeS1sb2NhbGVkYXRhLWJnLWJnLi4uClByb2Nlc3NpbmcgZWdsaWJjLWJp
bmFyeS1sb2NhbGVkYXRhLWl0LWl0Li4uClByb2Nlc3NpbmcgZWdsaWJjLWJpbmFyeS1sb2NhbGVk
YXRhLW5sLW5sK2V1cm8uLi4KUHJvY2Vzc2luZyBuYW5vLWxvY2FsZS1pdC4uLgpQcm9jZXNzaW5n
IGxpYm1lbnV3NS4uLgpQcm9jZXNzaW5nIGVnbGliYy1iaW5hcnktbG9jYWxlZGF0YS1wdC1ici4u
LgpQcm9jZXNzaW5nIGxvY2FsZS1iYXNlLWRlLWF0Lmlzby04ODU5LTEuLi4KUHJvY2Vzc2luZyBu
YW5vLWxvY2FsZS1pZC4uLgpQcm9jZXNzaW5nIGxvY2FsZS1iYXNlLXJ3LXJ3Li4uClByb2Nlc3Np
bmcgZWdsaWJjLWJpbmFyeS1sb2NhbGVkYXRhLWVzLW14Li4uClByb2Nlc3NpbmcgYmFzaC1kYmcu
Li4KUHJvY2Vzc2luZyBsb2NhbGUtYmFzZS10ci1jeS5pc28tODg1OS05Li4uClByb2Nlc3Npbmcg
bGlidGluZm81Li4uClByb2Nlc3NpbmcgbmFuby1kYmcuLi4KUHJvY2Vzc2luZyBuYW5vLWxvY2Fs
ZS1lcy4uLgpQcm9jZXNzaW5nIGxvY2FsZS1iYXNlLW5sLW5sK2V1cm8uLi4KUHJvY2Vzc2luZyBl
Z2xpYmMtYmluYXJ5LWxvY2FsZWRhdGEtcm8tcm8uLi4KUHJvY2Vzc2luZyBsb2NhbGUtYmFzZS1w
dC1ici4uLgpQcm9jZXNzaW5nIGVnbGliYy1iaW5hcnktbG9jYWxlZGF0YS1jYS1lcy4uLgpQcm9j
ZXNzaW5nIGxpYm5jdXJzZXN3NS4uLgpQcm9jZXNzaW5nIHVkZXYuLi4KUHJvY2Vzc2luZyBlZ2xp
YmMtYmluYXJ5LWxvY2FsZWRhdGEtcnctcncuLi4KUHJvY2Vzc2luZyBlZ2xpYmMtYmluYXJ5LWxv
Y2FsZWRhdGEtY3MtY3ouLi4KUHJvY2Vzc2luZyBsaWJjNi4uLgpQcm9jZXNzaW5nIGxvY2FsZS1i
YXNlLWZyLWNhLi4uClByb2Nlc3NpbmcgbGliZ2NjMS4uLgpQcm9jZXNzaW5nIG5hbm8tbG9jYWxl
LXRyLi4uClByb2Nlc3NpbmcgbG9jYWxlLWJhc2UtYmctYmcuLi4KUHJvY2Vzc2luZyBuY3Vyc2Vz
LXRlcm1pbmZvLWJhc2UuLi4KUHJvY2Vzc2luZyBsb2NhbGUtYmFzZS1ydS11YS5rb2k4LXUuLi4K
UHJvY2Vzc2luZyBsb2NhbGUtYmFzZS1nbC1lcy5pc28tODg1OS0xLi4uClByb2Nlc3NpbmcgdXBk
YXRlLWFsdGVybmF0aXZlcy1jd29ydGguLi4KUHJvY2Vzc2luZyBuYW5vLi4uClByb2Nlc3Npbmcg
bmFuby1sb2NhbGUtZGUuLi4KUHJvY2Vzc2luZyBuYW5vLWxvY2FsZS1nbC4uLgpQcm9jZXNzaW5n
IG5hbm8tbG9jYWxlLWdhLi4uClByb2Nlc3NpbmcgbGliY2lkbjEuLi4KUHJvY2Vzc2luZyBsb2Nh
bGUtYmFzZS1ldS1lcy4uLgpQcm9jZXNzaW5nIGxpYnRpYzUuLi4KUHJvY2Vzc2luZyBuYW5vLWxv
Y2FsZS16aC10dy4uLgpQcm9jZXNzaW5nIG5hbm8tZG9jLi4uClByb2Nlc3NpbmcgdGFzay1jb3Jl
LWJvb3QuLi4KUHJvY2Vzc2luZyBsb2NhbGUtYmFzZS1lcy1teC4uLgpQcm9jZXNzaW5nIGxvY2Fs
ZS1iYXNlLW1zLW15Lmlzby04ODU5LTEuLi4KUHJvY2Vzc2luZyBsaWJjNi1kZXYuLi4KUHJvY2Vz
c2luZyBiYXNoLi4uClByb2Nlc3NpbmcgZWdsaWJjLWJpbmFyeS1sb2NhbGVkYXRhLWlkLWlkLi4u
ClByb2Nlc3NpbmcgbG9jYWxlLWJhc2Utdmktdm4udGN2bjU3MTItMS4uLgpQcm9jZXNzaW5nIG5h
bm8tbG9jYWxlLWZyLi4uClByb2Nlc3NpbmcgcGVybC1kYmcuLi4KUHJvY2Vzc2luZyBsaWJuY3Vy
c2VzNS4uLgpQcm9jZXNzaW5nIG5hbm8tbG9jYWxlLWZpLi4uClByb2Nlc3NpbmcgZWdsaWJjLWJp
bmFyeS1sb2NhbGVkYXRhLWdhLWllK2V1cm8uLi4KUHJvY2Vzc2luZyBsb2NhbGUtYmFzZS1pdC1p
dC4uLgpQcm9jZXNzaW5nIGVnbGliYy1iaW5hcnktbG9jYWxlZGF0YS1uYi1uby4uLgpQcm9jZXNz
aW5nIGxvY2FsZS1iYXNlLXpoLXR3Li4uClByb2Nlc3NpbmcgbGlidXVpZDEuLi4KUHJvY2Vzc2lu
ZyBsb2NhbGUtYmFzZS1yby1yby4uLgpQcm9jZXNzaW5nIGxpYmZvcm13NS4uLgpQcm9jZXNzaW5n
IGVnbGliYy1iaW5hcnktbG9jYWxlZGF0YS1ldS1lcy4uLgpQcm9jZXNzaW5nIGxpYmdkYm0tY29t
cGF0NC4uLgpQcm9jZXNzaW5nIGxvY2FsZS1iYXNlLWRhLWRrLmlzby04ODU5LTEuLi4KUHJvY2Vz
c2luZyBuYW5vLWxvY2FsZS1ydy4uLgpQcm9jZXNzaW5nIG5hbm8tbG9jYWxlLXJ1Li4uClByb2Nl
c3NpbmcgbmFuby1sb2NhbGUtZXUuLi4KUHJvY2Vzc2luZyBsb2NhbGUtYmFzZS16aC1jbi4uLgpQ
cm9jZXNzaW5nIHBlcmwuLi4KUHJvY2Vzc2luZyBwZXJsLWRldi4uLgpQcm9jZXNzaW5nIG5hbm8t
bG9jYWxlLXB0LWJyLi4uClByb2Nlc3NpbmcgbmV0YmFzZS4uLgpQcm9jZXNzaW5nIGJhc2gtZGV2
Li4uClByb2Nlc3NpbmcgbmFuby1sb2NhbGUtcm8uLi4KUHJvY2Vzc2luZyBsb2NhbGUtYmFzZS1m
aS1maS4uLgpQcm9jZXNzaW5nIG5hbm8tZGV2Li4uClByb2Nlc3NpbmcgYnVzeWJveC1zeXNsb2cu
Li4KUHJvY2Vzc2luZyBuYW5vLWxvY2FsZS1iZy4uLgpQcm9jZXNzaW5nIG5jdXJzZXMuLi4KUHJv
Y2Vzc2luZyBtb2R1bGUtaW5pdC10b29scy1kZXBtb2QuLi4KUHJvY2Vzc2luZyBsaWJnZGJtLWRl
di4uLgpQcm9jZXNzaW5nIGxvY2FsZS1iYXNlLW5uLW5vLmlzby04ODU5LTEuLi4KUHJvY2Vzc2lu
ZyBuYW5vLWxvY2FsZS1tcy4uLgpQcm9jZXNzaW5nIGxpYnRpY3c1Li4uClByb2Nlc3NpbmcgbGli
Z2NjLXMtZGJnLi4uClByb2Nlc3Npbmcgc3lzdmluaXQtaW5pdHRhYi4uLgpQcm9jZXNzaW5nIGxv
Y2FsZS1iYXNlLWdhLWllK2V1cm8uLi4KUHJvY2Vzc2luZyB0aW55bG9naW4uLi4KUHJvY2Vzc2lu
ZyBuYW5vLWxvY2FsZS16aC1jbi4uLgpQcm9jZXNzaW5nIGVnbGliYy1leHRyYS1uc3MuLi4KUHJv
Y2Vzc2luZyBsaWJtZW51NS4uLgpQcm9jZXNzaW5nIGluaXRzY3JpcHRzLi4uClByb2Nlc3Npbmcg
bG9jYWxlLWJhc2UtbmItbm8uLi4KUHJvY2Vzc2luZyBuYW5vLWxvY2FsZS1kYS4uLgpQcm9jZXNz
aW5nIGxpYnBhbmVsNS4uLgpQcm9jZXNzaW5nIGxpYmdkYm0tZGJnLi4uClByb2Nlc3NpbmcgbmFu
by1sb2NhbGUtaHUuLi4KUHJvY2Vzc2luZyBsaWJ0aHJlYWQtZGIxLi4uClByb2Nlc3NpbmcgYnVz
eWJveC11ZGhjcGMuLi4KUHJvY2Vzc2luZyBlZ2xpYmMtYmluYXJ5LWxvY2FsZWRhdGEtZnItY2Eu
Li4KUHJvY2Vzc2luZyBiYXNlLWZpbGVzLi4uClByb2Nlc3NpbmcgbmFuby1sb2NhbGUtY2EuLi4K
UHJvY2Vzc2luZyBsb2NhbGUtYmFzZS1odS1odS5pc28tODg1OS0yLi4uClByb2Nlc3NpbmcgdWRl
di11dGlscy4uLgpQcm9jZXNzaW5nIGxpYmJsa2lkMS4uLgpQcm9jZXNzaW5nIG5hbm8tbG9jYWxl
LXVrLi4uClByb2Nlc3NpbmcgZWdsaWJjLWJpbmFyeS1sb2NhbGVkYXRhLXpoLWNuLi4uClByb2Nl
c3NpbmcgbmFuby1sb2NhbGUtY3MuLi4KUHJvY2Vzc2luZyBsaWJ6MS4uLgpQcm9jZXNzaW5nIG5h
bm8tbG9jYWxlLXBsLi4uClByb2Nlc3NpbmcgZWdsaWJjLWJpbmFyeS1sb2NhbGVkYXRhLWZpLWZp
Li4uClByb2Nlc3NpbmcgbW9kdXRpbHMtaW5pdHNjcmlwdHMuLi4KUHJvY2Vzc2luZyBsb2NhbGUt
YmFzZS1wbC1wbC5pc28tODg1OS0yLi4uClByb2Nlc3Npbmcgc3lzdmluaXQtcGlkb2YuLi4KUHJv
Y2Vzc2luZyBlZ2xpYmMtYmluYXJ5LWxvY2FsZWRhdGEtemgtdHcuLi4KUHJvY2Vzc2luZyBsaWJ6
LWRiZy4uLgpQcm9jZXNzaW5nIHV0aWwtbGludXgtYmxraWQuLi4KUHJvY2Vzc2luZyBsaWJwYW5l
bHc1Li4uClByb2Nlc3NpbmcgbmFuby1sb2NhbGUtc3YuLi4KUHJvY2Vzc2luZyBuY3Vyc2VzLWRl
di4uLgpQcm9jZXNzaW5nIG5hbm8tbG9jYWxlLXNyLi4uClByb2Nlc3NpbmcgbGliZm9ybTUuLi4K
UHJvY2Vzc2luZyBsb2NhbGUtYmFzZS1jYS1lcy4uLgpQcm9jZXNzaW5nIGVnbGliYy1iaW5hcnkt
bG9jYWxlZGF0YS1zci1ycy4uLgpQcm9jZXNzaW5nIG5jdXJzZXMtdGVybWluZm8uLi4KUHJvY2Vz
c2luZyBsb2NhbGUtYmFzZS1zci1ycy4uLgpQcm9jZXNzaW5nIGxvY2FsZS1iYXNlLXN2LWZpLmlz
by04ODU5LTEuLi4KUHJvY2Vzc2luZyBsb2NhbGUtYmFzZS1pZC1pZC4uLgpQcm9jZXNzaW5nIGxv
Y2FsZS1iYXNlLWNzLWN6Li4uClByb2Nlc3NpbmcgYmFzZS1wYXNzd2QuLi4KZXJyb3I6IEZhaWxl
ZCBkZXBlbmRlbmNpZXM6CgllZ2xpYmMtYmluYXJ5LWxvY2FsZWRhdGEtdWstdWEua29pOHUgaXMg
bmVlZGVkIGJ5IGxvY2FsZS1iYXNlLXVrLXVhLmtvaTgtdS0yLjEzLXIyMC5hcm12NXRlCgllZ2xp
YmMtYmluYXJ5LWxvY2FsZWRhdGEtZGUtYXQuaXNvODg1OTEgaXMgbmVlZGVkIGJ5IGxvY2FsZS1i
YXNlLWRlLWF0Lmlzby04ODU5LTEtMi4xMy1yMjAuYXJtdjV0ZQoJZWdsaWJjLWJpbmFyeS1sb2Nh
bGVkYXRhLXRyLWN5Lmlzbzg4NTk5IGlzIG5lZWRlZCBieSBsb2NhbGUtYmFzZS10ci1jeS5pc28t
ODg1OS05LTIuMTMtcjIwLmFybXY1dGUKCWVnbGliYy1iaW5hcnktbG9jYWxlZGF0YS1ydS11YS5r
b2k4dSBpcyBuZWVkZWQgYnkgbG9jYWxlLWJhc2UtcnUtdWEua29pOC11LTIuMTMtcjIwLmFybXY1
dGUKCWVnbGliYy1iaW5hcnktbG9jYWxlZGF0YS1nbC1lcy5pc284ODU5MSBpcyBuZWVkZWQgYnkg
bG9jYWxlLWJhc2UtZ2wtZXMuaXNvLTg4NTktMS0yLjEzLXIyMC5hcm12NXRlCgllZ2xpYmMtYmlu
YXJ5LWxvY2FsZWRhdGEtbXMtbXkuaXNvODg1OTEgaXMgbmVlZGVkIGJ5IGxvY2FsZS1iYXNlLW1z
LW15Lmlzby04ODU5LTEtMi4xMy1yMjAuYXJtdjV0ZQoJZWdsaWJjLWJpbmFyeS1sb2NhbGVkYXRh
LXZpLXZuLnRjdm41NzEyMSBpcyBuZWVkZWQgYnkgbG9jYWxlLWJhc2Utdmktdm4udGN2bjU3MTIt
MS0yLjEzLXIyMC5hcm12NXRlCgllZ2xpYmMtYmluYXJ5LWxvY2FsZWRhdGEtZGEtZGsuaXNvODg1
OTEgaXMgbmVlZGVkIGJ5IGxvY2FsZS1iYXNlLWRhLWRrLmlzby04ODU5LTEtMi4xMy1yMjAuYXJt
djV0ZQoJZWdsaWJjLWJpbmFyeS1sb2NhbGVkYXRhLW5uLW5vLmlzbzg4NTkxIGlzIG5lZWRlZCBi
eSBsb2NhbGUtYmFzZS1ubi1uby5pc28tODg1OS0xLTIuMTMtcjIwLmFybXY1dGUKCWVnbGliYy1i
aW5hcnktbG9jYWxlZGF0YS1odS1odS5pc284ODU5MiBpcyBuZWVkZWQgYnkgbG9jYWxlLWJhc2Ut
aHUtaHUuaXNvLTg4NTktMi0yLjEzLXIyMC5hcm12NXRlCgllZ2xpYmMtYmluYXJ5LWxvY2FsZWRh
dGEtcGwtcGwuaXNvODg1OTIgaXMgbmVlZGVkIGJ5IGxvY2FsZS1iYXNlLXBsLXBsLmlzby04ODU5
LTItMi4xMy1yMjAuYXJtdjV0ZQoJZWdsaWJjLWJpbmFyeS1sb2NhbGVkYXRhLXN2LWZpLmlzbzg4
NTkxIGlzIG5lZWRlZCBieSBsb2NhbGUtYmFzZS1zdi1maS5pc28tODhFUlJPUjogRnVuY3Rpb24g
ZmFpbGVkOiBkb19yb290ZnMgKHNlZSAvaG9tZS9pY2VtZXRhbC9mc2wtY29tbXVuaXR5LWJzcC9i
dWlsZC90bXAvd29yay9pbXgyMzNfb2xpbnV4aW5vX21pY3JvLXBva3ktbGludXgtZ251ZWFiaS9o
b2ItaW1hZ2UtMS4wLXIwL3RlbXAvbG9nLmRvX3Jvb3Rmcy43ODk2IGZvciBmdXJ0aGVyIGluZm9y
bWF0aW9uKQo1OS0xLTIuMTMtcjIwLmFybXY1dGUK

--789641336-790400451-1360893779=:9004--
