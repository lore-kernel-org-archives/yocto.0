Return-Path: <yann.cardaillac@smile.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A49C7E00DA5; Mon, 21 Oct 2019 05:46:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	T_REMOTE_IMAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.53 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
	[209.85.221.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A06BE00BA2
	for <yocto@yoctoproject.org>; Mon, 21 Oct 2019 05:46:28 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id w18so13282504wrt.3
	for <yocto@yoctoproject.org>; Mon, 21 Oct 2019 05:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=smile-fr.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=UzDFklVJ4tA3E+Zz/Q1Jc4Z/9/R7JZIL1z86ZoCAzYQ=;
	b=Y650hL+ZVWtvNaU+fWIPVq5WVQ58GUzzXGzs0GlaJgvAbPq9RXeP8uhdVkChxbckch
	192jUo3LDpT0iTnrdI9wke5//EP6YCH/lYP27QCOcBfs0Lz59O8EvrT4ZebDbLa5auiC
	q78wZtnWhvyEC7aHEK4KLszkPEj85aFxy9M17VXgnojEeWqSTTT5V/MGUwsZv2JnF2/7
	qdF9Nxm5M1PgW1l6X6FXPYZELr/0Q6nKYMwBZ6ImJdL7PsLkOq6JBBHilRzDdha/4XZU
	cVM0Wc7GUkCSuZwGfKUBx5zDxuOJHg8I1Y1itjDMZpwrqtavVC66JhXaosBSbl3TS63t
	6TZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=UzDFklVJ4tA3E+Zz/Q1Jc4Z/9/R7JZIL1z86ZoCAzYQ=;
	b=Tt+Zz7J4syGCT+IKPhIldDWHJ9ne9rbV0kKrXPIJcFSKElSM6pLyRhxwFS5VfHsncA
	fn08wr7SDAA6ZgxRPL9KRIcnf2cYqUKhddWb94W9XPCmtyuoUAwlenYDEgNh4GafI12d
	d41urivX+75cbViecgqqiEFBrKvdDcqZGvvMALvpf1g+hQauI9JZgvqehbtlXmuCx3RV
	1LNs+9N6HPCaypCpo3XxGOHj/JKuVVFhpJBqkKOFyIyVNc4M16krp0OZYifZsXsYStvg
	dN4Pkkh0Hsr6mkFkwPIl5jZM4DDjdCCHhxjLm2ea4gmaD89mJcQZ+IunJLWy3xETgJ40
	WzPQ==
X-Gm-Message-State: APjAAAUahlVVxeivszDCkX9UMPuCxicEihUxiAamwUDKjaZ9JG/0NA9R
	vpJZynILeCqJ6cJRkbr15xqOyUhv5NrrYViQIObuhW9IGa0=
X-Google-Smtp-Source: APXvYqz/Cd9X2A3UeoPDsluhq+4eq6p597JLqKgg9GaqipKW1QoX/8RPaC+20nE2/u6ZpK1uPul+mD1ObIyV9cjmQMk=
X-Received: by 2002:a05:6000:11c5:: with SMTP id
	i5mr14971331wrx.303.1571661986094; 
	Mon, 21 Oct 2019 05:46:26 -0700 (PDT)
MIME-Version: 1.0
From: Yann CARDAILLAC <yann.cardaillac@smile.fr>
Date: Mon, 21 Oct 2019 14:46:15 +0200
Message-ID: <CAA984JVLuoFG_60hnUgmuaf4gQ=HrWEiBHpC=Vt2MpKZyPEXdw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [PATCH] [auto-upgrade-helper] Add SPDX identifier to auto-upgrade-helper
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
X-List-Received-Date: Mon, 21 Oct 2019 12:46:34 -0000
X-Groupsio-MsgNum: 46998
Content-Type: multipart/mixed; boundary="0000000000006386f205956b127a"

--0000000000006386f205956b127a
Content-Type: multipart/alternative; boundary="0000000000006386f005956b1278"

--0000000000006386f005956b1278
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi guys,

I'm working on bug :
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13531

I've add GPLV2-or-later to all the sources, is there any modification you
want to add?

Best regards,

Yann CARDAILLAC
--=20
[image: SMILE] <http://www.smile.eu/>

20 rue des Jardins
92600 Asni=C3=A8res-sur-Seine
*Yann CARDAILLAC*
Ing=C3=A9nieur Syst=C3=A8mes Embarqu=C3=A9s

[image: email] yann.cardaillac@smile.fr
[image: url] http://www.smile.eu

[image: Twitter] <https://twitter.com/GroupeSmile> [image: Facebook]
<https://www.facebook.com/smileopensource> [image: LinkedIn]
<https://www.linkedin.com/company/smile> [image: Github]
<https://github.com/Smile-SA>


[image: eco] Pour la plan=C3=A8te, n'imprimez ce mail que si c'est n=C3=A9c=
essaire

--0000000000006386f005956b1278
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi guys, <br></div><div><br></div><div>I&#39;m workin=
g on bug :<br></div><div><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D13531">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D135=
31</a></div><div><br></div><div>I&#39;ve add GPLV2-or-later to all the sour=
ces, is there any modification you want to add?</div><div><br></div><div>Be=
st regards,</div><div><br></div><div>Yann CARDAILLAC<br></div>-- <br><div d=
ir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><di=
v dir=3D"ltr"><div><div dir=3D"ltr">

                    <div style=3D"display:block"><div>
   =20
    <font face=3D"Raleway, regular">
    <table style=3D"padding:20px" border=3D"0">
        <tbody>
        <tr>
            <td style=3D"font-size:13px;color:rgb(255,128,84);text-align:ce=
nter;padding-right:30px">
                <a href=3D"http://www.smile.eu/" target=3D"_blank">
                    <img style=3D"max-width:100%;height:auto" src=3D"http:/=
/ftp.smile.fr/client/Communication/signature/img/Logo-new.png" alt=3D"SMILE=
">
                </a><br><br>
                    <p>20 rue des Jardins<br>
92600 Asni=C3=A8res-sur-Seine</p>
            </td>
            <td style=3D"border-left:1px solid rgb(59,127,254);padding-left=
:20px;font-size:13px;color:rgb(255,128,84)">
                <div style=3D"color:rgb(255,128,84);font-size:14px">
                    <b>Yann CARDAILLAC</b>
                </div>
                <div style=3D"color:rgb(59,127,254);font-size:13px">
                    Ing=C3=A9nieur Syst=C3=A8mes Embarqu=C3=A9s<br>
                   =20
                </div><br>
                <div style=3D"color:rgb(59,127,254);font-size:13px">
                    <span style=3D"white-space:nowrap"><img style=3D"margin=
-right:5px" src=3D"http://ftp.smile.fr/client/Communication/signature/img/m=
ail.png" alt=3D"email" width=3D"12" height=3D"10">
                        <a href=3D"mailto:yann.cardaillac@smile.fr" style=
=3D"color:rgb(59,127,254);font-size:13px;text-decoration:none" target=3D"_b=
lank">yann.cardaillac@smile.fr</a>
                    </span>
                     <br>
                                                    <span style=3D"white-sp=
ace:nowrap"><img style=3D"margin-right:5px" src=3D"http://ftp.smile.fr/clie=
nt/Communication/signature/img/web.png" alt=3D"url" width=3D"12" height=3D"=
12">
<a href=3D"http://www.smile.eu" style=3D"color:rgb(59,127,254);font-size:13=
px;text-decoration:none" target=3D"_blank">http://www.smile.eu</a> =20
                  </span>
                                </div>

                <br>
                <div>
                    <span><a style=3D"margin-right:5px" href=3D"https://twi=
tter.com/GroupeSmile" target=3D"_blank"><img src=3D"http://ftp.smile.fr/cli=
ent/Communication/signature/img/rs-twitter.png" alt=3D"Twitter" style=3D"ma=
x-width:100%;height:auto"></a></span>
                    <span><a style=3D"margin-right:5px" href=3D"https://www=
.facebook.com/smileopensource" target=3D"_blank"><img src=3D"http://ftp.smi=
le.fr/client/Communication/signature/img/rs-facebook.png" alt=3D"Facebook" =
style=3D"max-width:100%;height:auto"></a></span>
                    <span><a style=3D"margin-right:5px" href=3D"https://www=
.linkedin.com/company/smile" target=3D"_blank"><img src=3D"http://ftp.smile=
.fr/client/Communication/signature/img/rs-linkedin.png" alt=3D"LinkedIn" st=
yle=3D"max-width:100%;height:auto"></a></span>
                    <span><a style=3D"margin-right:5px" href=3D"https://git=
hub.com/Smile-SA" target=3D"_blank"><img src=3D"http://ftp.smile.fr/client/=
Communication/signature/img/rs-github.png" alt=3D"Github" style=3D"max-widt=
h:100%;height:auto"></a></span>
                </div>
            </td>
        </tr>
        </tbody>
    </table>
    <br>
   =20
    <br>
    <div style=3D"color:rgb(163,172,181);font-size:10px">
        <img src=3D"http://ftp.smile.fr/client/Communication/signature/img/=
eco.png" alt=3D"eco" width=3D"13" height=3D"11">
            Pour la plan=C3=A8te, n&#39;imprimez ce mail que si c&#39;est n=
=C3=A9cessaire
    </div>
    </font>
</div></div></div></div></div></div></div>

--0000000000006386f005956b1278--

--0000000000006386f205956b127a
Content-Type: text/x-patch; charset="US-ASCII"; name="0001-add-SPDX-Licence-identifier.patch"
Content-Disposition: attachment; 
	filename="0001-add-SPDX-Licence-identifier.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_k20exwf70>
X-Attachment-Id: f_k20exwf70

RnJvbSBkOTAzMTZhMjM4MzRjNTYzMWIzNTJlMTIzZWJmYmZiM2IxYmQwMmU1IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBZYW5uIENBUkRBSUxMQUMgPHlhbm4uY2FyZGFpbGxhY0BzbWls
ZS5mcj4KRGF0ZTogTW9uLCAyMSBPY3QgMjAxOSAxNDo0MDozNSArMDIwMApTdWJqZWN0OiBbUEFU
Q0hdIGFkZCBTUERYIExpY2VuY2UgaWRlbnRpZmllcgoKU2lnbmVkLW9mZi1ieTogWWFubiBDQVJE
QUlMTEFDIDx5YW5uLmNhcmRhaWxsYWNAc21pbGUuZnI+Ci0tLQogbW9kdWxlcy9idWlsZGhpc3Rv
cnkucHkgICAgICAgfCAxICsKIG1vZHVsZXMvZXJyb3JzLnB5ICAgICAgICAgICAgIHwgMSArCiBt
b2R1bGVzL3N0YXRpc3RpY3MucHkgICAgICAgICB8IDEgKwogbW9kdWxlcy9zdGVwcy5weSAgICAg
ICAgICAgICAgfCAxICsKIG1vZHVsZXMvdGVzdGltYWdlLnB5ICAgICAgICAgIHwgMSArCiBtb2R1
bGVzL3V0aWxzL19faW5pdF9fLnB5ICAgICB8IDEgKwogbW9kdWxlcy91dGlscy9iaXRiYWtlLnB5
ICAgICAgfCAxICsKIG1vZHVsZXMvdXRpbHMvZGV2dG9vbC5weSAgICAgIHwgMSArCiBtb2R1bGVz
L3V0aWxzL2VtYWlsaGFuZGxlci5weSB8IDEgKwogbW9kdWxlcy91dGlscy9naXQucHkgICAgICAg
ICAgfCAxICsKIHVwZ3JhZGVoZWxwZXIucHkgICAgICAgICAgICAgIHwgMSArCiAxMSBmaWxlcyBj
aGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspCiBtb2RlIGNoYW5nZSAxMDA3NTUgPT4gMTAwNjQ0IHVw
Z3JhZGVoZWxwZXIucHkKCmRpZmYgLS1naXQgYS9tb2R1bGVzL2J1aWxkaGlzdG9yeS5weSBiL21v
ZHVsZXMvYnVpbGRoaXN0b3J5LnB5CmluZGV4IGU3OGRhMDUuLjRmZGMzNmMgMTAwNjQ0Ci0tLSBh
L21vZHVsZXMvYnVpbGRoaXN0b3J5LnB5CisrKyBiL21vZHVsZXMvYnVpbGRoaXN0b3J5LnB5CkBA
IC0xLDQgKzEsNSBAQAogIyEvdXNyL2Jpbi9lbnYgcHl0aG9uCisjIFNQRFgtTGljZW5zZS1JZGVu
dGlmaWVyOiBHUEwtMi4wLW9yLWxhdGVyCiAjIHZpbTogc2V0IHRzPTQgc3c9NCBldDoKICMKICMg
Q29weXJpZ2h0IChjKSAyMDE1IEludGVsIENvcnBvcmF0aW9uCmRpZmYgLS1naXQgYS9tb2R1bGVz
L2Vycm9ycy5weSBiL21vZHVsZXMvZXJyb3JzLnB5CmluZGV4IGFkNTYyMTUuLmZhNTQzZjcgMTAw
NjQ0Ci0tLSBhL21vZHVsZXMvZXJyb3JzLnB5CisrKyBiL21vZHVsZXMvZXJyb3JzLnB5CkBAIC0x
LDQgKzEsNSBAQAogIyEvdXNyL2Jpbi9lbnYgcHl0aG9uCisjIFNQRFgtTGljZW5zZS1JZGVudGlm
aWVyOiBHUEwtMi4wLW9yLWxhdGVyCiAjIHZpbTogc2V0IHRzPTQgc3c9NCBldDoKICMKICMgQ29w
eXJpZ2h0IChjKSAyMDEzIC0gMjAxNCBJbnRlbCBDb3Jwb3JhdGlvbgpkaWZmIC0tZ2l0IGEvbW9k
dWxlcy9zdGF0aXN0aWNzLnB5IGIvbW9kdWxlcy9zdGF0aXN0aWNzLnB5CmluZGV4IGRiODNjNWIu
LjMyM2QwNDIgMTAwNjQ0Ci0tLSBhL21vZHVsZXMvc3RhdGlzdGljcy5weQorKysgYi9tb2R1bGVz
L3N0YXRpc3RpY3MucHkKQEAgLTEsNCArMSw1IEBACiAjIS91c3IvYmluL2VudiBweXRob24KKyMg
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb3ItbGF0ZXIKICMgdmltOiBzZXQgdHM9
NCBzdz00IGV0OgogIwogIyBDb3B5cmlnaHQgKGMpIDIwMTMgLSAyMDE0IEludGVsIENvcnBvcmF0
aW9uCmRpZmYgLS1naXQgYS9tb2R1bGVzL3N0ZXBzLnB5IGIvbW9kdWxlcy9zdGVwcy5weQppbmRl
eCA4N2Q3NTg0Li4xNDY1Yjc4IDEwMDY0NAotLS0gYS9tb2R1bGVzL3N0ZXBzLnB5CisrKyBiL21v
ZHVsZXMvc3RlcHMucHkKQEAgLTEsNCArMSw1IEBACiAjIS91c3IvYmluL2VudiBweXRob24KKyMg
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb3ItbGF0ZXIKICMgdmltOiBzZXQgdHM9
NCBzdz00IGV0OgogIwogIyBDb3B5cmlnaHQgKGMpIDIwMTMgLSAyMDE1IEludGVsIENvcnBvcmF0
aW9uCmRpZmYgLS1naXQgYS9tb2R1bGVzL3Rlc3RpbWFnZS5weSBiL21vZHVsZXMvdGVzdGltYWdl
LnB5CmluZGV4IDM1ZTIzYzkuLjQyNzJjODQgMTAwNjQ0Ci0tLSBhL21vZHVsZXMvdGVzdGltYWdl
LnB5CisrKyBiL21vZHVsZXMvdGVzdGltYWdlLnB5CkBAIC0xLDMgKzEsNCBAQAorIyBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vci1sYXRlcgogIyB2aW06IHNldCB0cz00IHN3PTQg
ZXQ6CiAjCiAjIENvcHlyaWdodCAoYykgMjAxNSBJbnRlbCBDb3Jwb3JhdGlvbgpkaWZmIC0tZ2l0
IGEvbW9kdWxlcy91dGlscy9fX2luaXRfXy5weSBiL21vZHVsZXMvdXRpbHMvX19pbml0X18ucHkK
aW5kZXggZTY5ZGUyOS4uMzE1YzA2YiAxMDA2NDQKLS0tIGEvbW9kdWxlcy91dGlscy9fX2luaXRf
Xy5weQorKysgYi9tb2R1bGVzL3V0aWxzL19faW5pdF9fLnB5CkBAIC0wLDAgKzEgQEAKKyMgU1BE
WC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb3ItbGF0ZXIKZGlmZiAtLWdpdCBhL21vZHVs
ZXMvdXRpbHMvYml0YmFrZS5weSBiL21vZHVsZXMvdXRpbHMvYml0YmFrZS5weQppbmRleCAyYWUz
YTFjLi40ODM1Y2E2IDEwMDY0NAotLS0gYS9tb2R1bGVzL3V0aWxzL2JpdGJha2UucHkKKysrIGIv
bW9kdWxlcy91dGlscy9iaXRiYWtlLnB5CkBAIC0xLDQgKzEsNSBAQAogIyEvdXNyL2Jpbi9lbnYg
cHl0aG9uCisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9yLWxhdGVyCiAjIHZp
bTogc2V0IHRzPTQgc3c9NCBldDoKICMKICMgQ29weXJpZ2h0IChjKSAyMDEzIC0gMjAxNCBJbnRl
bCBDb3Jwb3JhdGlvbgpkaWZmIC0tZ2l0IGEvbW9kdWxlcy91dGlscy9kZXZ0b29sLnB5IGIvbW9k
dWxlcy91dGlscy9kZXZ0b29sLnB5CmluZGV4IDdmNWI1ZDQuLjBkMjdiYjAgMTAwNjQ0Ci0tLSBh
L21vZHVsZXMvdXRpbHMvZGV2dG9vbC5weQorKysgYi9tb2R1bGVzL3V0aWxzL2RldnRvb2wucHkK
QEAgLTEsMyArMSw0IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9yLWxh
dGVyCiBpbXBvcnQgb3MKIGltcG9ydCBsb2dnaW5nIGFzIGxvZwogZnJvbSBsb2dnaW5nIGltcG9y
dCBkZWJ1ZyBhcyBECmRpZmYgLS1naXQgYS9tb2R1bGVzL3V0aWxzL2VtYWlsaGFuZGxlci5weSBi
L21vZHVsZXMvdXRpbHMvZW1haWxoYW5kbGVyLnB5CmluZGV4IDg0MzYzNjQuLjA2NmYwMTMgMTAw
NjQ0Ci0tLSBhL21vZHVsZXMvdXRpbHMvZW1haWxoYW5kbGVyLnB5CisrKyBiL21vZHVsZXMvdXRp
bHMvZW1haWxoYW5kbGVyLnB5CkBAIC0xLDQgKzEsNSBAQAogIyEvdXNyL2Jpbi9lbnYgcHl0aG9u
CisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9yLWxhdGVyCiAjIHZpbTogc2V0
IHRzPTQgc3c9NCBldDoKICMKICMgQ29weXJpZ2h0IChjKSAyMDEzIC0gMjAxNCBJbnRlbCBDb3Jw
b3JhdGlvbgpkaWZmIC0tZ2l0IGEvbW9kdWxlcy91dGlscy9naXQucHkgYi9tb2R1bGVzL3V0aWxz
L2dpdC5weQppbmRleCA3NDlkMjRkLi5hYmRjYzQ3IDEwMDY0NAotLS0gYS9tb2R1bGVzL3V0aWxz
L2dpdC5weQorKysgYi9tb2R1bGVzL3V0aWxzL2dpdC5weQpAQCAtMSw0ICsxLDUgQEAKICMhL3Vz
ci9iaW4vZW52IHB5dGhvbgorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vci1s
YXRlcgogIyB2aW06IHNldCB0cz00IHN3PTQgZXQ6CiAjCiAjIENvcHlyaWdodCAoYykgMjAxMyAt
IDIwMTQgSW50ZWwgQ29ycG9yYXRpb24KZGlmZiAtLWdpdCBhL3VwZ3JhZGVoZWxwZXIucHkgYi91
cGdyYWRlaGVscGVyLnB5Cm9sZCBtb2RlIDEwMDc1NQpuZXcgbW9kZSAxMDA2NDQKaW5kZXggYmRk
NmQ0ZS4uMmNmYTk0YQotLS0gYS91cGdyYWRlaGVscGVyLnB5CisrKyBiL3VwZ3JhZGVoZWxwZXIu
cHkKQEAgLTEsNCArMSw1IEBACiAjIS91c3IvYmluL2VudiBweXRob24zCisjIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9yLWxhdGVyCiAjIHZpbTogc2V0IHRzPTQgc3c9NCBldDoK
ICMKICMgQ29weXJpZ2h0IChjKSAyMDEzIC0gMjAxNCBJbnRlbCBDb3Jwb3JhdGlvbgotLSAKMi43
LjQKCg==

--0000000000006386f205956b127a--
