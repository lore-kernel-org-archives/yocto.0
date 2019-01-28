Return-Path: <yann.cardaillac@smile.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BDE3E00CD6; Mon, 28 Jan 2019 04:26:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	T_REMOTE_IMAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.66 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
	[209.85.208.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21F55E00CB9
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2019 04:26:16 -0800 (PST)
Received: by mail-ed1-f66.google.com with SMTP id p6so12895434eds.0
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2019 04:26:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=smile-fr.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=Hz6oNaAMi78LUL+TFhnKs4qB57c9YSdk93Fetqs4EH4=;
	b=xkwwG1zb8SAyu/E/75jRYwcaF0j2Amip7CvizmPahREh5xsC4urpCyqL9YIn96EHnM
	5QGKpvgo/QQOZxGrPTUbZLrYSEHzZqfhrE3eVWP81pHeUqX4uvRNTdQ6quD06/TAvqPK
	/Vk7uu5QniF/qSdsTar7hMP7TCGROelhuau0npEfToDB7oriwRB1C4mGKd8LLw2t91OU
	/+gRaQil61M8mcWOOxPc+HTk/WQXtHc4vvcKnQ7PP6MyGLSPJyHax42cxb2SMU5S7AAe
	yMkhih5HyQDE+N6z+FmXq2EtzR2JmPczqrZxL7a3pC5Wb11CtTIiHPy3H4mILrFgGDif
	c4hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Hz6oNaAMi78LUL+TFhnKs4qB57c9YSdk93Fetqs4EH4=;
	b=pfhk7Djwl0r5USb6vJCGSVzEjdQT0x80Tfyl11pdtAsp8nlIuISUpiPhx3tVgAs24Y
	XrB67tgBekC6Dyqmb79njvRESDFVhUvqcL8ZfZnMlO4pvheEGiD7WHpFkOxbSiHnhA/0
	7d6ex9sS70J+9l/Vh94Jw/bzjoFFHPdu4YKSKeHXzMBziulpAFG2daGT846JHZtB1J0Y
	AvGRQ1mthc9RSQ563TSH7Ftx8TjEAC4Rn24ON/XIi6uL9+bzoXYcs6KP9L7TXVDjlZvK
	51amBgHEMmO93BPYisgwRmCZ8bAa1YUwQmp0193h7C+cvQaAQ5czXl1GPaNxe56FPUc5
	gPRQ==
X-Gm-Message-State: AJcUukdHgoKRSVaoJzL65xTYFGMcZ87h+4pcfv0oaxUayARgc1UlZcyN
	sBUAw8aa8cjGCc4LmyywSMmFqCCRt9sevz01MlU3hnVaOm0=
X-Google-Smtp-Source: ALg8bN68XRqASu3+cxZPIQVlUAUV6uVO2cNqmYbfc6AF1G+0NAj+Bh1wx8NU/Z4L1jgyCAg42D5XS6WM81ZicM9DtTc=
X-Received: by 2002:a17:906:4bd9:: with SMTP id
	x25mr7945170ejv.171.1548678375928; 
	Mon, 28 Jan 2019 04:26:15 -0800 (PST)
MIME-Version: 1.0
From: Yann CARDAILLAC <yann.cardaillac@smile.fr>
Date: Mon, 28 Jan 2019 13:26:05 +0100
Message-ID: <CAA984JVuDni0rnaCEgAmP6egiv+3MP=SdAjLh0Aec2KJRBLKtw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Fixing devtool issue with kernel bbhappen do_patch recipe
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
X-List-Received-Date: Mon, 28 Jan 2019 12:26:18 -0000
X-Groupsio-MsgNum: 43917
Content-Type: multipart/mixed; boundary="00000000000078427d058083c83c"

--00000000000078427d058083c83c
Content-Type: multipart/alternative; boundary="000000000000784278058083c83a"

--000000000000784278058083c83a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

We found a possible bug with boucman_work as mentionned in the IRC.

It seems that when using the SDK there's an issue with the generated file
workspace/appends/linux-yocto_4.18.bbappend (or equivalent depending on
kernel and distro).

In the do_patch rule, if some script are intended to be applied in another
language than python it will fail. I had the case with my BSP (phytec). We
had to change the rule with :

do_patch[noexec] =3D "1"

so that the rule is not executed which was what was probably intended with
the former :

do_patch() {
    :
}

Here's the patch we would use to fix that. It patch the scipt
scripts/lib/devtool/standard.py so that it properly generate the bbappend
file. Please, do not hesitate to give me any feedback on my patch.

Regards,

--=20
[image: SMILE] <http://www.smile.eu/>

20 rue des Jardins
92600 Asni=C3=A8res-sur-Seine
*Yann CARDAILLAC*
Ing=C3=A9nieur Linux Embarqu=C3=A9

[image: email] yann.cardaillac@smile.fr
[image: url] http://www.smile.eu

[image: Twitter] <https://twitter.com/GroupeSmile> [image: Facebook]
<https://www.facebook.com/smileopensource> [image: LinkedIn]
<https://www.linkedin.com/company/smile> [image: Github]
<https://github.com/Smile-SA>


[image: eco] Pour la plan=C3=A8te, n'imprimez ce mail que si c'est n=C3=A9c=
essaire

--000000000000784278058083c83a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div>Hi all,</div><div><br></div><div>We found a possible bug wit=
h boucman_work as mentionned in the IRC.<br></div><div><br></div><div>It se=
ems that when using the SDK there&#39;s an issue with the generated file wo=
rkspace/appends/linux-yocto_4.18.bbappend (or equivalent depending on kerne=
l and distro).<br></div><div><br></div><div>In the do_patch rule, if some s=
cript are intended to be applied in another language than python it will fa=
il. I had the case with my BSP (phytec). We had to change the rule with :<b=
r></div><div><br></div><div>do_patch[noexec] =3D &quot;1&quot;<br><br></div=
><div>so that the rule is not executed which was what was probably intended=
 with the former :</div><div><br></div><div>do_patch() {<br>=C2=A0=C2=A0=C2=
=A0 :<br>}<br><br></div><div>Here&#39;s the patch we would use to fix that.=
 It patch the scipt scripts/lib/devtool/standard.py so that it properly gen=
erate the bbappend file. Please, do not hesitate to give me any feedback on=
 my patch. <br></div><div><br></div><div>Regards,<br></div><div><br>-- <br>=
<div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr">

                    <div style=3D"display:block"><div>
   =20
    <font face=3D"Raleway, regular">
    <table style=3D"padding:20px" border=3D"0">
        <tbody>
        <tr>
            <td style=3D"font-size:13px;color:rgb(255,128,84);text-align:ce=
nter;padding-right:30px">
                <a href=3D"http://www.smile.eu/" target=3D"_blank">
                    <img style=3D"max-width: 100%; height: auto;" src=3D"ht=
tp://ftp.smile.fr/client/Communication/signature/img/Logo-new.png" alt=3D"S=
MILE">
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
                    Ing=C3=A9nieur Linux Embarqu=C3=A9<br>
                   =20
                </div><br>
                <div style=3D"color:rgb(59,127,254);font-size:13px">
                    <span style=3D"white-space:nowrap"><img style=3D"margin=
-right: 5px;" src=3D"http://ftp.smile.fr/client/Communication/signature/img=
/mail.png" alt=3D"email" width=3D"12" height=3D"10">
                        <a href=3D"mailto:yann.cardaillac@smile.fr" style=
=3D"color:rgb(59,127,254);font-size:13px;text-decoration:none" target=3D"_b=
lank">yann.cardaillac@smile.fr</a>
                    </span>
                     <br>
                                                    <span style=3D"white-sp=
ace:nowrap"><img style=3D"margin-right: 5px;" src=3D"http://ftp.smile.fr/cl=
ient/Communication/signature/img/web.png" alt=3D"url" width=3D"12" height=
=3D"12">
<a href=3D"http://www.smile.eu" style=3D"color:rgb(59,127,254);font-size:13=
px;text-decoration:none" target=3D"_blank">http://www.smile.eu</a> =20
                  </span>
                                </div>

                <br>
                <div>
                    <span><a style=3D"margin-right:5px" href=3D"https://twi=
tter.com/GroupeSmile" target=3D"_blank"><img src=3D"http://ftp.smile.fr/cli=
ent/Communication/signature/img/rs-twitter.png" alt=3D"Twitter" style=3D"ma=
x-width: 100%; height: auto;"></a></span>
                    <span><a style=3D"margin-right:5px" href=3D"https://www=
.facebook.com/smileopensource" target=3D"_blank"><img src=3D"http://ftp.smi=
le.fr/client/Communication/signature/img/rs-facebook.png" alt=3D"Facebook" =
style=3D"max-width: 100%; height: auto;"></a></span>
                    <span><a style=3D"margin-right:5px" href=3D"https://www=
.linkedin.com/company/smile" target=3D"_blank"><img src=3D"http://ftp.smile=
.fr/client/Communication/signature/img/rs-linkedin.png" alt=3D"LinkedIn" st=
yle=3D"max-width: 100%; height: auto;"></a></span>
                    <span><a style=3D"margin-right:5px" href=3D"https://git=
hub.com/Smile-SA" target=3D"_blank"><img src=3D"http://ftp.smile.fr/client/=
Communication/signature/img/rs-github.png" alt=3D"Github" style=3D"max-widt=
h: 100%; height: auto;"></a></span>
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
</div></div></div></div></div></div></div></div></div></div>

--000000000000784278058083c83a--

--00000000000078427d058083c83c
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-correct-do_patch-for-kernel-bbappend-in-sdk.patch"
Content-Disposition: attachment; 
	filename="0001-correct-do_patch-for-kernel-bbappend-in-sdk.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_jrgaz3kl0>
X-Attachment-Id: f_jrgaz3kl0

RnJvbSAzZGQwM2QzYTE5MmUwODhmOWRiOTk0NDM5Y2M1NTExZDY3MzMzYmU1IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiB5Y25ha2Fqc3BoIDx5Y2FyZGFpbGxhY0BsYXBvc3RlLm5ldD4K
RGF0ZTogTW9uLCAyOCBKYW4gMjAxOSAxMjozMDowMyArMDEwMApTdWJqZWN0OiBbUEFUQ0hdIGNv
cnJlY3QgZG9fcGF0Y2ggZm9yIGtlcm5lbCBiYmFwcGVuZCBpbiBzZGsKCi0tLQogc2NyaXB0cy9s
aWIvZGV2dG9vbC9zdGFuZGFyZC5weSB8IDQgKy0tLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NjcmlwdHMvbGliL2RldnRvb2wv
c3RhbmRhcmQucHkgYi9zY3JpcHRzL2xpYi9kZXZ0b29sL3N0YW5kYXJkLnB5CmluZGV4IGI3ZDRk
NDcuLmVhMDliYmYgMTAwNjQ0Ci0tLSBhL3NjcmlwdHMvbGliL2RldnRvb2wvc3RhbmRhcmQucHkK
KysrIGIvc2NyaXB0cy9saWIvZGV2dG9vbC9zdGFuZGFyZC5weQpAQCAtODQ5LDkgKzg0OSw3IEBA
IGRlZiBtb2RpZnkoYXJncywgY29uZmlnLCBiYXNlcGF0aCwgd29ya3NwYWNlKToKICAgICAgICAg
ICAgIGlmIGJiLmRhdGEuaW5oZXJpdHNfY2xhc3MoJ2tlcm5lbCcsIHJkKToKICAgICAgICAgICAg
ICAgICBmLndyaXRlKCdTUkNUUkVFQ09WRVJFRFRBU0tTID0gImRvX3ZhbGlkYXRlX2JyYW5jaGVz
IGRvX2tlcm5lbF9jaGVja291dCAnCiAgICAgICAgICAgICAgICAgICAgICAgICAnZG9fZmV0Y2gg
ZG9fdW5wYWNrIGRvX2tlcm5lbF9jb25maWdtZSBkb19rZXJuZWxfY29uZmlnY2hlY2siXG4nKQot
ICAgICAgICAgICAgICAgIGYud3JpdGUoJ1xuZG9fcGF0Y2goKSB7XG4nCi0gICAgICAgICAgICAg
ICAgICAgICAgICAnICAgIDpcbicKLSAgICAgICAgICAgICAgICAgICAgICAgICd9XG4nKQorICAg
ICAgICAgICAgICAgIGYud3JpdGUoJ1xuZG9fcGF0Y2hbbm9leGVjXSA9ICIxIlxuJykKICAgICAg
ICAgICAgICAgICBmLndyaXRlKCdcbmRvX2NvbmZpZ3VyZV9hcHBlbmQoKSB7XG4nCiAgICAgICAg
ICAgICAgICAgICAgICAgICAnICAgIGNwICR7Qn0vLmNvbmZpZyAke1N9Ly5jb25maWcuYmFzZWxp
bmVcbicKICAgICAgICAgICAgICAgICAgICAgICAgICcgICAgbG4gLXNmVCAke0J9Ly5jb25maWcg
JHtTfS8uY29uZmlnLm5ld1xuJwotLSAKMi43LjQKCg==

--00000000000078427d058083c83c--
