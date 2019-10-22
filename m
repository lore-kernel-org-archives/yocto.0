Return-Path: <yann.cardaillac@smile.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7B92E00D35; Tue, 22 Oct 2019 06:26:04 -0700 (PDT)
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
	*      [209.85.221.50 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AC68E00C9B
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2019 06:26:00 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id l10so17655076wrb.2
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2019 06:26:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=smile-fr.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=8kfhwiIAc7GRRe8Cs9OFiCCEgIrLh4s/U2iWbBiTBB4=;
	b=1BUCVccQ6Tkbr/nvEJ16AiSnauCRi+R7PzbIagVOHbKvrdzheooI5dWUb4onEKAX1s
	kGENWYrkWzESkSqJlSkpT5Vrvbk9nKSpPv/mWD+SEwy7J8PSFxRWXt3HsN1zAHt8FUmw
	CmWewuLKyduK0w/AAfMgladAtZF2cMM9xuSAYgSWv27pL4Qhv+fpO40TCOBPM3AwsrNZ
	IYLJLMwgSnHCXhhFRqaY6hnv98vOPmRd+gZ8XMhU3HAew9Rjgn1uI2llOC292RCWvIK2
	AoFt+PatXTSuk85DerObyvmsMfO6k47KhbXrRl5vqyHl46aoqJbhoQG8HLc4AKh8kNdC
	uzvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=8kfhwiIAc7GRRe8Cs9OFiCCEgIrLh4s/U2iWbBiTBB4=;
	b=FMMu0/nPAY2E3fJKWNnu37BMr6G7nOjX/TrTYiZlcxm8P2H4MXPgvo8sK3aZ/kS3Oh
	CQBUBBMPC5m6LUo7PLlCuxwyYzh+c1yeIjpEDQ+VMJb65R3gnN2z/FTSOnErpOZCbIg+
	uVa+vNhgK0mAwmgNFPOiI8CXkKMGuY4ilQjueKFuNac0gAauRNiSHLoy8qPGpBvdAuOb
	kE0XZUbs1BpDLkNerNHc4u5HIzNiu6Ri3H2KJJ7XlYF/YoUOKI0jSzysFko6dFoZe+Ef
	jaHgSNgdHHxzYpkQMFdAna/yD5PUiFgq5qE0ZUQNU6/vBfmd+HedUnrEN4i8r7SIDYk0
	tgXw==
X-Gm-Message-State: APjAAAW4KaUnMmnf48251vKnjfkBBn9btoTy8RnPssNax8gfVbmNqMZm
	9inQkiLjulBsSFB/RBXH+V85ID8eubpQfFS9AC5Pdg==
X-Google-Smtp-Source: APXvYqzmfsBKmdroqgO5AE06c7FWVgiGldMXs/HG9mfrj9UtBi8JQdQBcC5EBt6ZHIyg/4G2Ag1MAZ3my/cmvLRCqcw=
X-Received: by 2002:adf:9185:: with SMTP id 5mr1909380wri.389.1571750759400;
	Tue, 22 Oct 2019 06:25:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAA984JVEEC2F9EQ7jOiZsVVwFEcgMYWKnUxfnGEN0dUXPHti1g@mail.gmail.com>
	<2189115.Upo427RBWa@linux.fritz.box>
In-Reply-To: <2189115.Upo427RBWa@linux.fritz.box>
From: Yann CARDAILLAC <yann.cardaillac@smile.fr>
Date: Tue, 22 Oct 2019 15:25:48 +0200
Message-ID: <CAA984JVPt_iwehB6EjcWBC507Efkjgs0Muz0g6Hczw_3mVygGA@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web] Add SPDX Identifier
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
X-List-Received-Date: Tue, 22 Oct 2019 13:26:04 -0000
X-Groupsio-MsgNum: 47013
Content-Type: multipart/mixed; boundary="000000000000b0db8d05957fbdfc"

--000000000000b0db8d05957fbdfc
Content-Type: multipart/alternative; boundary="000000000000b0db8a05957fbdfa"

--000000000000b0db8a05957fbdfa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 21, 2019 at 9:37 PM Paul Eggleton <paul.eggleton@linux.intel.co=
m>
wrote:

> On Tuesday, 22 October 2019 4:15:03 AM NZDT Yann CARDAILLAC wrote:
> > https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13527
> >
> > I'm beginning the work of updating the layerindex-web repo, this one is=
 a
> > bit tricky, how should I treat the files generated using Django ?
>
> I believe the correct license for Django-derived files is BSD-3-Clause:
>
>   https://github.com/django/django/blob/master/LICENSE
>
> > I've yet to do html, txt and sh files, do you have any advices before I
> > start?
>
> Note that some of the templates used for authentication originally came
> from
> here:
>
>   https://github.com/macdhuibh/django-registration-templates
>
> The LICENSE file indicates MIT for those though.
>
> The txt files are tricky because any stray newlines will affect
> formatting. I
> would probably avoid touching them.
>
> I did not yet add MIT to html files, I don't really know if that makes
sense or not?  I didn't do that because it seemed a bit weird to me, but I
don't know what to think of that. Most of the time you'll find copyright on
the footer of the page, but I'm not sure about Licensing those.

So here is a first iteration of the patch without htmls file licensed.

Regards,

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

--000000000000b0db8a05957fbdfa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Mon, Oct 21, 2019 at 9:37 PM Paul Eggl=
eton &lt;<a href=3D"mailto:paul.eggleton@linux.intel.com">paul.eggleton@lin=
ux.intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">
On Tuesday, 22 October 2019 4:15:03 AM NZDT Yann CARDAILLAC wrote:<br>
&gt; <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13527" =
rel=3D"noreferrer" target=3D"_blank">https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D13527</a><br>
&gt; <br>
&gt; I&#39;m beginning the work of updating the layerindex-web repo, this o=
ne is a<br>
&gt; bit tricky, how should I treat the files generated using Django ?<br>
<br>
I believe the correct license for Django-derived files is BSD-3-Clause:<br>
<br>
=C2=A0 <a href=3D"https://github.com/django/django/blob/master/LICENSE" rel=
=3D"noreferrer" target=3D"_blank">https://github.com/django/django/blob/mas=
ter/LICENSE</a><br>=C2=A0
<br>
&gt; I&#39;ve yet to do html, txt and sh files, do you have any advices bef=
ore I<br>
&gt; start?<br>
<br>
Note that some of the templates used for authentication originally came fro=
m <br>
here:<br>
<br>
=C2=A0 <a href=3D"https://github.com/macdhuibh/django-registration-template=
s" rel=3D"noreferrer" target=3D"_blank">https://github.com/macdhuibh/django=
-registration-templates</a><br>
<br>
The LICENSE file indicates MIT for those though.<br>
<br>
The txt files are tricky because any stray newlines will affect formatting.=
 I <br>
would probably avoid touching them.<br>
<br></blockquote><div>I did not yet add MIT to html files, I don&#39;t real=
ly know if that makes sense or not?=C2=A0 I didn&#39;t do that because it s=
eemed a bit weird to me, but I don&#39;t know what to think of that. Most o=
f the time you&#39;ll find copyright on the footer of the page, but I&#39;m=
 not sure about Licensing those. <br></div></div><div class=3D"gmail_quote"=
><br></div><div class=3D"gmail_quote">So here is a first iteration of the p=
atch without htmls file licensed. <br></div><div class=3D"gmail_quote"><br>=
</div><div class=3D"gmail_quote">Regards,<br></div><div class=3D"gmail_quot=
e"><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"=
ltr"><div><div dir=3D"ltr">

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
                    Ing=C3=A9nieur Syst=C3=A8mes Embarqu=C3=A9s<br>
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
</div></div></div></div></div></div></div>

--000000000000b0db8a05957fbdfa--

--000000000000b0db8d05957fbdfc
Content-Type: text/x-patch; charset="US-ASCII"; name="0001-add-SPDX-License-identifier.patch"
Content-Disposition: attachment; 
	filename="0001-add-SPDX-License-identifier.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_k21vnns50>
X-Attachment-Id: f_k21vnns50

RnJvbSBlNDZjZDAyNDRhYTgxMzQzMTgyMzZhMmYxYWVlOTY2ODJlMDk3MTViIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBZYW5uIENBUkRBSUxMQUMgPHlhbm4uY2FyZGFpbGxhY0BzbWls
ZS5mcj4KRGF0ZTogVHVlLCAyMiBPY3QgMjAxOSAxNToxNzoyMSArMDIwMApTdWJqZWN0OiBbUEFU
Q0hdIGFkZCBTUERYIExpY2Vuc2UgaWRlbnRpZmllcgoKU2lnbmVkLW9mZi1ieTogWWFubiBDQVJE
QUlMTEFDIDx5YW5uLmNhcmRhaWxsYWNAc21pbGUuZnI+Ci0tLQogX19pbml0X18ucHkgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMiArKwogY2hl
Y2tfcmVxdWlyZW1lbnRzLnNoICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHwgMSArCiBkb2NrZXIvY29ubmVjdGl2aXR5X2NoZWNrLnNoICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfCAxICsKIGRvY2tlci9naXQtcHJveHkgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDEgKwogZG9ja2VyL21pZ3JhdGUuc2gg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMSArCiBkb2Nr
ZXIvcmVmcmVzaGxheWVycy5zaCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgfCAxICsKIGRvY2tlci9zZXR0aW5ncy5weSAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB8IDEgKwogZG9ja2VyL3VwZGF0ZWxheWVycy5zaCAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMSArCiBkb2NrZXJzZXR1cC5weSAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAxICsKIGxheWVy
aW5kZXgvX19pbml0X18ucHkgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB8IDEgKwogbGF5ZXJpbmRleC9hZG1pbi5weSAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgMSArCiBsYXllcmluZGV4L2F1dGhfZm9ybXMucHkgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAxICsKIGxheWVyaW5kZXgvYXV0aF92aWV3
cy5weSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDEgKwogbGF5ZXJp
bmRleC9idWxrY2hhbmdlLnB5ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwgMSArCiBsYXllcmluZGV4L2NvbnRleHRfcHJvY2Vzc29ycy5weSAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgfCAxICsKIGxheWVyaW5kZXgvZm9ybXMucHkgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDEgKwogbGF5ZXJpbmRleC9sYXllcmNvbmZw
YXJzZS5weSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMSArCiBsYXllcmlu
ZGV4L21pZGRsZXdhcmUucHkgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
fCAxICsKIGxheWVyaW5kZXgvbWlncmF0aW9ucy8wMDAxX2luaXRpYWwucHkgICAgICAgICAgICAg
ICAgICAgICAgICAgICB8IDEgKwogbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMDJfZGlzdHJvLnB5
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMSArCiBsYXllcmluZGV4L21pZ3JhdGlvbnMv
MDAwM19hdXRvXzIwMTYxMDExXzAzMDQucHkgICAgICAgICAgICAgICAgfCAxICsKIGxheWVyaW5k
ZXgvbWlncmF0aW9ucy8wMDA0X2xheWVyZGVwZW5kZW5jeV9yZXF1aXJlZC5weSAgICAgICAgICB8
IDEgKwogbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMDVfbGF5ZXJ1cGRhdGUucHkgICAgICAgICAg
ICAgICAgICAgICAgIHwgMSArCiBsYXllcmluZGV4L21pZ3JhdGlvbnMvMDAwNl9jaGFuZ2VfYnJh
bmNoX21ldGEucHkgICAgICAgICAgICAgICAgfCAxICsKIGxheWVyaW5kZXgvbWlncmF0aW9ucy8w
MDA3X2xheWVyaXRlbV9zdGF0dXNfbm91cGRhdGUucHkgICAgICAgICB8IDEgKwogbGF5ZXJpbmRl
eC9taWdyYXRpb25zLzAwMDhfeXBfY29tcGF0aWJsZS5weSAgICAgICAgICAgICAgICAgICAgIHwg
MSArCiBsYXllcmluZGV4L21pZ3JhdGlvbnMvMDAwOV9sYXllcmJyYW5jaF9jb2xsZWN0aW9uLnB5
ICAgICAgICAgICAgfCAxICsKIGxheWVyaW5kZXgvbWlncmF0aW9ucy8wMDEwX2FkZF9kZXBlbmRl
bmNpZXMucHkgICAgICAgICAgICAgICAgICB8IDEgKwogbGF5ZXJpbmRleC9taWdyYXRpb25zLzAw
MTFfc291cmNlLnB5ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMSArCiBsYXllcmluZGV4
L21pZ3JhdGlvbnMvMDAxMl9sYXllcml0ZW1fdmNzX2NvbW1pdF91cmwucHkgICAgICAgICAgfCAx
ICsKIGxheWVyaW5kZXgvbWlncmF0aW9ucy8wMDEzX3BhdGNoLnB5ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICB8IDEgKwogbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMTRfc2l0ZW5vdGljZS5w
eSAgICAgICAgICAgICAgICAgICAgICAgIHwgMSArCiBsYXllcmluZGV4L21pZ3JhdGlvbnMvMDAx
NV9jb21wYXJpc29uLnB5ICAgICAgICAgICAgICAgICAgICAgICAgfCAxICsKIGxheWVyaW5kZXgv
bWlncmF0aW9ucy8wMDE2X2NsYXNzaWNyZWNpcGVfZGVsZXRlLnB5ICAgICAgICAgICAgICB8IDEg
KwogbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMTdfY2xhc3NpY3JlY2lwZV9uZWVkc19hdHRlbnRp
b24ucHkgICAgIHwgMSArCiBsYXllcmluZGV4L21pZ3JhdGlvbnMvMDAxOF9sYXllcnJlY2lwZWV4
dHJhdXJsLnB5ICAgICAgICAgICAgICAgfCAxICsKIGxheWVyaW5kZXgvbWlncmF0aW9ucy8wMDE5
X2xheWVyaXRlbV9jbGFzc2ljX2NvbXBhcmlzb24ucHkgICAgICB8IDEgKwogbGF5ZXJpbmRleC9t
aWdyYXRpb25zLzAwMjBfdXBkYXRlX21hbnVhbC5weSAgICAgICAgICAgICAgICAgICAgIHwgMSAr
CiBsYXllcmluZGV4L21pZ3JhdGlvbnMvMDAyMV9sYXllcnVwZGF0ZV9hZGRfbGF5ZXJfYnJhbmNo
LnB5ICAgICAgfCAxICsKIGxheWVyaW5kZXgvbWlncmF0aW9ucy8wMDIyX2xheWVydXBkYXRlX3Nl
dF9sYXllcl9icmFuY2gucHkgICAgICB8IDEgKwogbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMjNf
bGF5ZXJ1cGRhdGVfbGF5ZXJfYnJhbmNoX2ZpbmFsaXNlLnB5IHwgMSArCiBsYXllcmluZGV4L21p
Z3JhdGlvbnMvMDAyNF9sYXllcnVwZGF0ZV92Y3NfcmV2cy5weSAgICAgICAgICAgICAgfCAxICsK
IGxheWVyaW5kZXgvbWlncmF0aW9ucy8wMDI1X3VwZGF0ZV9yZXRjb2RlLnB5ICAgICAgICAgICAg
ICAgICAgICB8IDEgKwogbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMjZfaW5jZmlsZS5weSAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgMSArCiBsYXllcmluZGV4L21pZ3JhdGlvbnMvMDAyN19w
YXRjaF9hcHBseV9vcmRlci5weSAgICAgICAgICAgICAgICAgfCAxICsKIGxheWVyaW5kZXgvbWln
cmF0aW9ucy8wMDI4X2JyYW5jaF9oaWRkZW4ucHkgICAgICAgICAgICAgICAgICAgICB8IDEgKwog
bGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMzBfc2VjdXJpdHlxdWVzdGlvbi5weSAgICAgICAgICAg
ICAgICAgIHwgMSArCiBsYXllcmluZGV4L21pZ3JhdGlvbnMvMDAzMV9zZWN1cml0eXF1ZXN0aW9u
X3BvcHVsYXRlLnB5ICAgICAgICAgfCAxICsKIGxheWVyaW5kZXgvbWlncmF0aW9ucy8wMDMyX3Bh
dGNoZGlzcG9zaXRpb24ucHkgICAgICAgICAgICAgICAgICB8IDEgKwogbGF5ZXJpbmRleC9taWdy
YXRpb25zLzAwMzRfc291cmNlX3NoYTI1NnN1bS5weSAgICAgICAgICAgICAgICAgIHwgMSArCiBs
YXllcmluZGV4L21pZ3JhdGlvbnMvMDAzNl9sYXllcmJyYW5jaF9sb2NhbF9wYXRoLnB5ICAgICAg
ICAgICAgfCAxICsKIGxheWVyaW5kZXgvbWlncmF0aW9ucy8wMDM3X3BhdGNoX2FwcGxpZWQucHkg
ICAgICAgICAgICAgICAgICAgICB8IDEgKwogbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMzhfcGF0
Y2hfc3RyaXBsZXZlbC5weSAgICAgICAgICAgICAgICAgIHwgMSArCiBsYXllcmluZGV4L21pZ3Jh
dGlvbnMvMDA0MV9yZWNpcGVfY29uZmlnb3B0cy5weSAgICAgICAgICAgICAgICAgfCAxICsKIGxh
eWVyaW5kZXgvbWlncmF0aW9ucy8wMDQyX3JlY2lwZV9wZV9wci5weSAgICAgICAgICAgICAgICAg
ICAgICB8IDEgKwogbGF5ZXJpbmRleC9taWdyYXRpb25zL19faW5pdF9fLnB5ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwgMiArKwogbGF5ZXJpbmRleC9tb2RlbHMucHkgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMSArCiBsYXllcmluZGV4L3F1ZXJ5
c2V0aGVscGVyLnB5ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAxICsKIGxh
eWVyaW5kZXgvcmVjaXBlZGVzYy5weSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB8IDEgKwogbGF5ZXJpbmRleC9yZWNpcGVwYXJzZS5weSAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwgMSArCiBsYXllcmluZGV4L3Jlc3RwZXJtLnB5ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAxICsKIGxheWVyaW5kZXgvcmVzdHZp
ZXdzLnB5ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDEgKwogbGF5
ZXJpbmRleC9zZWN1cml0eXF1ZXN0aW9ucy5weSAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHwgMSArCiBsYXllcmluZGV4L3N0YXRpYy9jc3MvYWRkaXRpb25hbC5jc3MgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfCAxICsKIGxheWVyaW5kZXgvdGFza3MucHkgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDEgKwogbGF5ZXJpbmRleC90ZW1wbGF0
ZXRhZ3MvX19pbml0X18ucHkgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMSArCiBsYXll
cmluZGV4L3RlbXBsYXRldGFncy9leHRyYWZpbHRlcnMucHkgICAgICAgICAgICAgICAgICAgICAg
ICAgfCAxICsKIGxheWVyaW5kZXgvdG9vbHMvZmVkb3JhLWZldGNoLnB5ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB8IDEgKwogbGF5ZXJpbmRleC90b29scy9maXh1cF9kdXBsaWNhdGVz
LnB5ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMSArCiBsYXllcmluZGV4L3Rvb2xzL2dp
dGh1Yi1mZXRjaC5weSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAxICsKIGxheWVy
aW5kZXgvdG9vbHMvaW1wb3J0X2NsYXNzaWMucHkgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB8IDEgKwogbGF5ZXJpbmRleC90b29scy9pbXBvcnRfY2xhc3NpY193aWtpLnB5ICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgMSArCiBsYXllcmluZGV4L3Rvb2xzL2ltcG9ydF9sYXllci5weSAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAxICsKIGxheWVyaW5kZXgvdG9vbHMvaW1w
b3J0X2xheWVycy5weSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDEgKwogbGF5ZXJp
bmRleC90b29scy9pbXBvcnRfb3RoZXJkaXN0cm8ucHkgICAgICAgICAgICAgICAgICAgICAgICAg
IHwgMSArCiBsYXllcmluZGV4L3Rvb2xzL2ltcG9ydF9wcm9qZWN0LnB5ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgfCAxICsKIGxheWVyaW5kZXgvdG9vbHMvaW1wb3J0X3dpa2lfbGF5ZXJz
LnB5ICAgICAgICAgICAgICAgICAgICAgICAgICB8IDEgKwogbGF5ZXJpbmRleC90b29scy9pbml0
aWFsX2RiX2R1bXAuc2ggICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMSArCiBsYXllcmlu
ZGV4L3Rvb2xzL3NpdGVfbmFtZS5weSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
fCAxICsKIGxheWVyaW5kZXgvdG9vbHMvdXBkYXRlX2NsYXNzaWNfc3RhdHVzLnB5ICAgICAgICAg
ICAgICAgICAgICAgICB8IDEgKwogbGF5ZXJpbmRleC90b29scy93ZWJhcGktdGVzdC5weSAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMSArCiBsYXllcmluZGV4L3VwZGF0ZS5weSAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAxICsKIGxheWVyaW5k
ZXgvdXBkYXRlX2xheWVyLnB5ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8
IDEgKwogbGF5ZXJpbmRleC91cmxzLnB5ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwgMSArCiBsYXllcmluZGV4L3VybHNfYnJhbmNoLnB5ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAxICsKIGxheWVyaW5kZXgvdXRpbHMucHkgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDEgKwogbGF5ZXJpbmRl
eC92aWV3cy5weSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwg
MSArCiBtYW5hZ2UucHkgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfCAxICsKIHBhc3N3b3JkX3ZhbGlkYXRpb24ucHkgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB8IDEgKwogcnJzL19faW5pdF9fLnB5ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMSArCiBycnMvYWRtaW4u
cHkgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAx
ICsKIHJycy9hcHBzLnB5ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICB8IDEgKwogcnJzL2NvbnRleHRfcHJvY2Vzc29ycy5weSAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgMSArCiBycnMvbWlncmF0aW9ucy8wMDAxX2luaXRp
YWwucHkgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAxICsKIHJycy9taWdyYXRp
b25zLzAwMDJfbWFpbnRlbmFuY2VwbGFuLnB5ICAgICAgICAgICAgICAgICAgICAgICAgICB8IDEg
KwogcnJzL21pZ3JhdGlvbnMvMDAwM19yZWxlYXNlX3BsYW4ucHkgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHwgMSArCiBycnMvbWlncmF0aW9ucy8wMDA0X21haW50X3BsYW5fZGVmYXVsdC5w
eSAgICAgICAgICAgICAgICAgICAgICAgfCAxICsKIHJycy9taWdyYXRpb25zLzAwMDVfcmVsZWFz
ZV9wbGFuX25vbm51bGwucHkgICAgICAgICAgICAgICAgICAgICB8IDEgKwogcnJzL21pZ3JhdGlv
bnMvMDAwNl9tYWludHBsYW5fZW1haWwucHkgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMSAr
CiBycnMvbWlncmF0aW9ucy8wMDA3X3B5dGhvbjIzLnB5ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfCAxICsKIHJycy9taWdyYXRpb25zLzAwMDhfdXBncmFkZV9pbmZvLnB5ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB8IDEgKwogcnJzL21pZ3JhdGlvbnMvMDAwOV9ybWhfbGF5
ZXJicmFuY2gucHkgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMSArCiBycnMvbWlncmF0aW9u
cy8wMDEwX3JlY2lwZW1haW50ZW5hbmNlbGluay5weSAgICAgICAgICAgICAgICAgICAgfCAxICsK
IHJycy9taWdyYXRpb25zLzAwMTFfcmVsZWFzZV9uYW1lX3VuaXF1ZS5weSAgICAgICAgICAgICAg
ICAgICAgICB8IDEgKwogcnJzL21pZ3JhdGlvbnMvMDAxMl9yZXVwX2xheWVyYnJhbmNoX2ZpZWxk
LnB5ICAgICAgICAgICAgICAgICAgIHwgMSArCiBycnMvbWlncmF0aW9ucy8wMDEzX3JldXBfbGF5
ZXJicmFuY2hfcG9wdWxhdGUucHkgICAgICAgICAgICAgICAgfCAxICsKIHJycy9taWdyYXRpb25z
LzAwMTRfcmV1cF9sYXllcmJyYW5jaF9ub25udWxsLnB5ICAgICAgICAgICAgICAgICB8IDEgKwog
cnJzL21pZ3JhdGlvbnMvMDAxNV9ybWhfbGF5ZXJicmFuY2hfcG9wdWxhdGUucHkgICAgICAgICAg
ICAgICAgIHwgMSArCiBycnMvbWlncmF0aW9ucy8wMDE2X3JtaF9sYXllcmJyYW5jaF9ub25udWxs
LnB5ICAgICAgICAgICAgICAgICAgfCAxICsKIHJycy9taWdyYXRpb25zLzAwMTdfbWFpbnRlbmFu
Y2VwbGFuX21haW50YWluZXJfc3R5bGUucHkgICAgICAgICB8IDEgKwogcnJzL21pZ3JhdGlvbnMv
MDAxOF9ybWhfdW5pcXVlLnB5ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMSArCiBy
cnMvbWlncmF0aW9ucy8wMDE5X21haW50cGxhbl9hZG1pbl9kZWxldGVfbnVsbC5weSAgICAgICAg
ICAgICAgfCAxICsKIHJycy9taWdyYXRpb25zL19faW5pdF9fLnB5ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB8IDEgKwogcnJzL21vZGVscy5weSAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMSArCiBycnMvc3RhdGljL2Nzcy9y
cnMtYWRkaXRpb25hbC5jc3MgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAxICsKIHJy
cy90b29scy9jb21tb24ucHkgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB8IDEgKwogcnJzL3Rvb2xzL2RhaWx5X3J1bi5zaCAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwgMSArCiBycnMvdG9vbHMvaGlzdG9yeXRvb2wucHkgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAxICsKIHJycy90b29scy9ycnNfZGlz
dHJvcy5weSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDEgKwogcnJz
L3Rvb2xzL3Jyc19tYWludGFpbmVyX2hpc3RvcnkucHkgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHwgMSArCiBycnMvdG9vbHMvcnJzX3VwZ3JhZGVfaGlzdG9yeS5weSAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfCAxICsKIHJycy90b29scy9ycnNfdXBzdHJlYW1fZW1haWwucHkg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDEgKwogcnJzL3Rvb2xzL3Jyc191cHN0
cmVhbV9oaXN0b3J5LnB5ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMSArCiBycnMv
dG9vbHMvdXBncmFkZV9oaXN0b3J5X2ludGVybmFsLnB5ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgfCAxICsKIHJycy91cmxzLnB5ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB8IDEgKwogcnJzL3ZpZXdzLnB5ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMSArCiBycnMvd3NnaS5weSAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAxICsKIHNldHRp
bmdzLnB5ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB8IDEgKwogdGVzdHMvdGVzdF91cGRhdGUucHkgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgMSArCiB1cmxzLnB5ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAxICsKIHdzZ2kucHkgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDEgKwogMTMxIGZp
bGVzIGNoYW5nZWQsIDEzMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvX19pbml0X18ucHkg
Yi9fX2luaXRfXy5weQppbmRleCBlNjlkZTI5Li5lNzdmNmNmIDEwMDY0NAotLS0gYS9fX2luaXRf
Xy5weQorKysgYi9fX2luaXRfXy5weQpAQCAtMCwwICsxLDIgQEAKKyMgU1BEWC1MaWNlbnNlLUlk
ZW50aWZpZXI6IE1JVAorCmRpZmYgLS1naXQgYS9jaGVja19yZXF1aXJlbWVudHMuc2ggYi9jaGVj
a19yZXF1aXJlbWVudHMuc2gKaW5kZXggOGQ4ZTZmNS4uMmYzOTQ4OCAxMDA2NDQKLS0tIGEvY2hl
Y2tfcmVxdWlyZW1lbnRzLnNoCisrKyBiL2NoZWNrX3JlcXVpcmVtZW50cy5zaApAQCAtMSw0ICsx
LDUgQEAKICMhL2Jpbi9zaAorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCiAKICMgU2Ny
aXB0IHRvIGJlIHVzZWQgb24gYSByZWd1bGFyIGJhc2lzIHRvIHByZXZlbnQgcmVxdWlyZW1lbnRz
LnR4dAogIyBmcm9tIGdvaW5nIHN0YWxlCmRpZmYgLS1naXQgYS9kb2NrZXIvY29ubmVjdGl2aXR5
X2NoZWNrLnNoIGIvZG9ja2VyL2Nvbm5lY3Rpdml0eV9jaGVjay5zaAppbmRleCA1OWIyNmI4Li5k
YjI3ZjljIDEwMDc1NQotLS0gYS9kb2NrZXIvY29ubmVjdGl2aXR5X2NoZWNrLnNoCisrKyBiL2Rv
Y2tlci9jb25uZWN0aXZpdHlfY2hlY2suc2gKQEAgLTEsNCArMSw1IEBACiAjIS9iaW4vc2gKKyMg
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAogCiAjIFJ1biBhIGZldyBjb25uZWN0aXZpdHkg
Y2hlY2tzCiBlY2hvICJDaGVja2luZyBleHRlcm5hbCBjb25uZWN0aXZpdHkuLi4iCmRpZmYgLS1n
aXQgYS9kb2NrZXIvZ2l0LXByb3h5IGIvZG9ja2VyL2dpdC1wcm94eQppbmRleCA2YTZhNTI2Li5k
NDY2ODVlIDEwMDc1NQotLS0gYS9kb2NrZXIvZ2l0LXByb3h5CisrKyBiL2RvY2tlci9naXQtcHJv
eHkKQEAgLTEsNCArMSw1IEBACiAjIS9iaW4vYmFzaAorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
cjogTUlUCiAKICMgVGhpcyBzaW1wbGUgcHJveHkgc2NyaXB0IChmb3IgZ2l0KSByZXNpZGVzIGF0
IC9vcHQvYmluIGluIHRoZSBsYXllcnNhcHAKICMgY29udGFpbmVyLiBJZiB5b3UgdXNlIGl0LCB1
bmNvbW1lbnQgdGhlIGFwcHJvcHJpYXRlIGxpbmUgaW4gLmdpdHByb3h5CmRpZmYgLS1naXQgYS9k
b2NrZXIvbWlncmF0ZS5zaCBiL2RvY2tlci9taWdyYXRlLnNoCmluZGV4IGNhMTUzNjguLmM1M2Yy
ODQgMTAwNzU1Ci0tLSBhL2RvY2tlci9taWdyYXRlLnNoCisrKyBiL2RvY2tlci9taWdyYXRlLnNo
CkBAIC0xLDIgKzEsMyBAQAogIyEvYmluL2Jhc2gKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6
IE1JVAogcHl0aG9uMyAvb3B0L2xheWVyaW5kZXgvbWFuYWdlLnB5IG1pZ3JhdGUgIiRAIgpkaWZm
IC0tZ2l0IGEvZG9ja2VyL3JlZnJlc2hsYXllcnMuc2ggYi9kb2NrZXIvcmVmcmVzaGxheWVycy5z
aAppbmRleCAwYzU1MGJkLi5mNTBiMTFmIDEwMDc1NQotLS0gYS9kb2NrZXIvcmVmcmVzaGxheWVy
cy5zaAorKysgYi9kb2NrZXIvcmVmcmVzaGxheWVycy5zaApAQCAtMSwzICsxLDQgQEAKICMhL2Jp
bi9iYXNoCisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKIHVwZGF0ZT0vb3B0L2xheWVy
aW5kZXgvbGF5ZXJpbmRleC91cGRhdGUucHkKICR1cGRhdGUgLXEgLXIKZGlmZiAtLWdpdCBhL2Rv
Y2tlci9zZXR0aW5ncy5weSBiL2RvY2tlci9zZXR0aW5ncy5weQppbmRleCAyODIxZDgyLi5kNWZl
YzQyIDEwMDY0NAotLS0gYS9kb2NrZXIvc2V0dGluZ3MucHkKKysrIGIvZG9ja2VyL3NldHRpbmdz
LnB5CkBAIC0xLDMgKzEsNCBAQAorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogQlNELTMtQ2xh
dXNlCiAjIERqYW5nbyBzZXR0aW5ncyBmb3IgbGF5ZXJpbmRleCBwcm9qZWN0LgogIwogIyBCYXNl
ZCBvbiBzZXR0aW5ncy5weSBmcm9tIHRoZSBEamFuZ28gcHJvamVjdCB0ZW1wbGF0ZQpkaWZmIC0t
Z2l0IGEvZG9ja2VyL3VwZGF0ZWxheWVycy5zaCBiL2RvY2tlci91cGRhdGVsYXllcnMuc2gKaW5k
ZXggMjE2NDBiYS4uNjQ3YjIyZiAxMDA3NTUKLS0tIGEvZG9ja2VyL3VwZGF0ZWxheWVycy5zaAor
KysgYi9kb2NrZXIvdXBkYXRlbGF5ZXJzLnNoCkBAIC0xLDMgKzEsNCBAQAogIyEvYmluL2Jhc2gK
KyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAogdXBkYXRlPS9vcHQvbGF5ZXJpbmRleC9s
YXllcmluZGV4L3VwZGF0ZS5weQogJHVwZGF0ZSAtcQpkaWZmIC0tZ2l0IGEvZG9ja2Vyc2V0dXAu
cHkgYi9kb2NrZXJzZXR1cC5weQppbmRleCAzY2M4YjJkLi4zY2JiZmUwIDEwMDc1NQotLS0gYS9k
b2NrZXJzZXR1cC5weQorKysgYi9kb2NrZXJzZXR1cC5weQpAQCAtMSw0ICsxLDUgQEAKICMhL3Vz
ci9iaW4vZW52IHB5dGhvbjMKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAogCiAjIExh
eWVyIGluZGV4IERvY2tlciBzZXR1cCBzY3JpcHQKICMKZGlmZiAtLWdpdCBhL2xheWVyaW5kZXgv
X19pbml0X18ucHkgYi9sYXllcmluZGV4L19faW5pdF9fLnB5CmluZGV4IGU2OWRlMjkuLjU0OGQy
ZDQgMTAwNjQ0Ci0tLSBhL2xheWVyaW5kZXgvX19pbml0X18ucHkKKysrIGIvbGF5ZXJpbmRleC9f
X2luaXRfXy5weQpAQCAtMCwwICsxIEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQK
ZGlmZiAtLWdpdCBhL2xheWVyaW5kZXgvYWRtaW4ucHkgYi9sYXllcmluZGV4L2FkbWluLnB5Cmlu
ZGV4IGI4OWVmNTYuLjE1NDY2NGMgMTAwNjQ0Ci0tLSBhL2xheWVyaW5kZXgvYWRtaW4ucHkKKysr
IGIvbGF5ZXJpbmRleC9hZG1pbi5weQpAQCAtMSwzICsxLDQgQEAKKyMgU1BEWC1MaWNlbnNlLUlk
ZW50aWZpZXI6IE1JVAogIyBsYXllcmluZGV4LXdlYiAtIGFkbWluIGludGVyZmFjZSBkZWZpbml0
aW9ucwogIwogIyBDb3B5cmlnaHQgKEMpIDIwMTMgSW50ZWwgQ29ycG9yYXRpb24KZGlmZiAtLWdp
dCBhL2xheWVyaW5kZXgvYXV0aF9mb3Jtcy5weSBiL2xheWVyaW5kZXgvYXV0aF9mb3Jtcy5weQpp
bmRleCBmYzNkMmQxLi43NDdmODI4IDEwMDY0NAotLS0gYS9sYXllcmluZGV4L2F1dGhfZm9ybXMu
cHkKKysrIGIvbGF5ZXJpbmRleC9hdXRoX2Zvcm1zLnB5CkBAIC0xLDMgKzEsNCBAQAorIyBTUERY
LUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCiAjIGxheWVyaW5kZXgtd2ViIC0gZXh0ZW5kZWQgYXV0
aGVudGljYXRpb24gZm9ybXMKICMKICMgQ29weXJpZ2h0IChDKSAyMDE4IEludGVsIENvcnBvcmF0
aW9uCmRpZmYgLS1naXQgYS9sYXllcmluZGV4L2F1dGhfdmlld3MucHkgYi9sYXllcmluZGV4L2F1
dGhfdmlld3MucHkKaW5kZXggZDEwYzc1MC4uYWU5YTMwYyAxMDA2NDQKLS0tIGEvbGF5ZXJpbmRl
eC9hdXRoX3ZpZXdzLnB5CisrKyBiL2xheWVyaW5kZXgvYXV0aF92aWV3cy5weQpAQCAtMSwzICsx
LDQgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAogIyBsYXllcmluZGV4LXdlYiAt
IGV4dGVuZGVkIGF1dGhlbnRpY2F0aW9uIHZpZXdzCiAjCiAjIENvcHlyaWdodCAoQykgMjAxOCBJ
bnRlbCBDb3Jwb3JhdGlvbgpkaWZmIC0tZ2l0IGEvbGF5ZXJpbmRleC9idWxrY2hhbmdlLnB5IGIv
bGF5ZXJpbmRleC9idWxrY2hhbmdlLnB5CmluZGV4IDNkMWVlMmIuLjFiN2I5YjMgMTAwNjQ0Ci0t
LSBhL2xheWVyaW5kZXgvYnVsa2NoYW5nZS5weQorKysgYi9sYXllcmluZGV4L2J1bGtjaGFuZ2Uu
cHkKQEAgLTEsNCArMSw1IEBACiAjIS91c3IvYmluL2VudiBweXRob24KKyMgU1BEWC1MaWNlbnNl
LUlkZW50aWZpZXI6IE1JVAogCiAjIGxheWVyaW5kZXgtd2ViIC0gYnVsayBjaGFuZ2UgaW1wbGVt
ZW50YXRpb24KICMKZGlmZiAtLWdpdCBhL2xheWVyaW5kZXgvY29udGV4dF9wcm9jZXNzb3JzLnB5
IGIvbGF5ZXJpbmRleC9jb250ZXh0X3Byb2Nlc3NvcnMucHkKaW5kZXggMzM1MmU2My4uMTNlZDBi
OCAxMDA2NDQKLS0tIGEvbGF5ZXJpbmRleC9jb250ZXh0X3Byb2Nlc3NvcnMucHkKKysrIGIvbGF5
ZXJpbmRleC9jb250ZXh0X3Byb2Nlc3NvcnMucHkKQEAgLTEsMyArMSw0IEBACisjIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiBNSVQKICMgbGF5ZXJpbmRleC13ZWIgLSBjdXN0b20gY29udGV4dCBw
cm9jZXNzb3IKICMKICMgQ29weXJpZ2h0IChDKSAyMDEzLCAyMDE4IEludGVsIENvcnBvcmF0aW9u
CmRpZmYgLS1naXQgYS9sYXllcmluZGV4L2Zvcm1zLnB5IGIvbGF5ZXJpbmRleC9mb3Jtcy5weQpp
bmRleCAxM2JhM2FhLi4wYzRkNGFhIDEwMDY0NAotLS0gYS9sYXllcmluZGV4L2Zvcm1zLnB5Cisr
KyBiL2xheWVyaW5kZXgvZm9ybXMucHkKQEAgLTEsMyArMSw0IEBACisjIFNQRFgtTGljZW5zZS1J
ZGVudGlmaWVyOiBNSVQKICMgbGF5ZXJpbmRleC13ZWIgLSBmb3JtIGRlZmluaXRpb25zCiAjCiAj
IENvcHlyaWdodCAoQykgMjAxMywgMjAxNi0yMDE5IEludGVsIENvcnBvcmF0aW9uCmRpZmYgLS1n
aXQgYS9sYXllcmluZGV4L2xheWVyY29uZnBhcnNlLnB5IGIvbGF5ZXJpbmRleC9sYXllcmNvbmZw
YXJzZS5weQppbmRleCBhODEyMTQwLi4xODU4MWRlIDEwMDY0NAotLS0gYS9sYXllcmluZGV4L2xh
eWVyY29uZnBhcnNlLnB5CisrKyBiL2xheWVyaW5kZXgvbGF5ZXJjb25mcGFyc2UucHkKQEAgLTEs
MyArMSw0IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKICMgVXRpbGl0eSBmdW5j
dGlvbnMgZm9yIHBhcnNpbmcgbGF5ZXIuY29uZiB1c2luZyBiaXRiYWtlIHdpdGhpbiBsYXllcmlu
ZGV4LXdlYgogIwogIyBDb3B5cmlnaHQgKEMpIDIwMTYgV2luZCBSaXZlciBTeXN0ZW1zCmRpZmYg
LS1naXQgYS9sYXllcmluZGV4L21pZGRsZXdhcmUucHkgYi9sYXllcmluZGV4L21pZGRsZXdhcmUu
cHkKaW5kZXggY2VhMjA3ZS4uZDg1Nzg0YiAxMDA2NDQKLS0tIGEvbGF5ZXJpbmRleC9taWRkbGV3
YXJlLnB5CisrKyBiL2xheWVyaW5kZXgvbWlkZGxld2FyZS5weQpAQCAtMSwzICsxLDQgQEAKKyMg
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAogIyBsYXllcmluZGV4LXdlYiAtIG1pZGRsZXdh
cmUgZGVmaW5pdGlvbnMKICMKICMgQ29weXJpZ2h0IChDKSAyMDE5IEludGVsIENvcnBvcmF0aW9u
CmRpZmYgLS1naXQgYS9sYXllcmluZGV4L21pZ3JhdGlvbnMvMDAwMV9pbml0aWFsLnB5IGIvbGF5
ZXJpbmRleC9taWdyYXRpb25zLzAwMDFfaW5pdGlhbC5weQppbmRleCBkMDhhMWFhLi5iMjQ4NzQ2
IDEwMDY0NAotLS0gYS9sYXllcmluZGV4L21pZ3JhdGlvbnMvMDAwMV9pbml0aWFsLnB5CisrKyBi
L2xheWVyaW5kZXgvbWlncmF0aW9ucy8wMDAxX2luaXRpYWwucHkKQEAgLTEsMyArMSw0IEBACisj
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKICMgLSotIGNvZGluZzogdXRmLTggLSotCiBm
cm9tIF9fZnV0dXJlX18gaW1wb3J0IHVuaWNvZGVfbGl0ZXJhbHMKIApkaWZmIC0tZ2l0IGEvbGF5
ZXJpbmRleC9taWdyYXRpb25zLzAwMDJfZGlzdHJvLnB5IGIvbGF5ZXJpbmRleC9taWdyYXRpb25z
LzAwMDJfZGlzdHJvLnB5CmluZGV4IDczMjAwN2QuLjg2Mjc3YWIgMTAwNjQ0Ci0tLSBhL2xheWVy
aW5kZXgvbWlncmF0aW9ucy8wMDAyX2Rpc3Ryby5weQorKysgYi9sYXllcmluZGV4L21pZ3JhdGlv
bnMvMDAwMl9kaXN0cm8ucHkKQEAgLTEsMyArMSw0IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlm
aWVyOiBNSVQKICMgLSotIGNvZGluZzogdXRmLTggLSotCiBmcm9tIF9fZnV0dXJlX18gaW1wb3J0
IHVuaWNvZGVfbGl0ZXJhbHMKIApkaWZmIC0tZ2l0IGEvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAw
MDNfYXV0b18yMDE2MTAxMV8wMzA0LnB5IGIvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMDNfYXV0
b18yMDE2MTAxMV8wMzA0LnB5CmluZGV4IGUwY2NkZmYuLmY1MmQwNmMgMTAwNjQ0Ci0tLSBhL2xh
eWVyaW5kZXgvbWlncmF0aW9ucy8wMDAzX2F1dG9fMjAxNjEwMTFfMDMwNC5weQorKysgYi9sYXll
cmluZGV4L21pZ3JhdGlvbnMvMDAwM19hdXRvXzIwMTYxMDExXzAzMDQucHkKQEAgLTEsMyArMSw0
IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKICMgLSotIGNvZGluZzogdXRmLTgg
LSotCiBmcm9tIF9fZnV0dXJlX18gaW1wb3J0IHVuaWNvZGVfbGl0ZXJhbHMKIApkaWZmIC0tZ2l0
IGEvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMDRfbGF5ZXJkZXBlbmRlbmN5X3JlcXVpcmVkLnB5
IGIvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMDRfbGF5ZXJkZXBlbmRlbmN5X3JlcXVpcmVkLnB5
CmluZGV4IDA3MDBmY2UuLjZmMmI4ZTUgMTAwNjQ0Ci0tLSBhL2xheWVyaW5kZXgvbWlncmF0aW9u
cy8wMDA0X2xheWVyZGVwZW5kZW5jeV9yZXF1aXJlZC5weQorKysgYi9sYXllcmluZGV4L21pZ3Jh
dGlvbnMvMDAwNF9sYXllcmRlcGVuZGVuY3lfcmVxdWlyZWQucHkKQEAgLTEsMyArMSw0IEBACisj
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKICMgLSotIGNvZGluZzogdXRmLTggLSotCiBm
cm9tIF9fZnV0dXJlX18gaW1wb3J0IHVuaWNvZGVfbGl0ZXJhbHMKIApkaWZmIC0tZ2l0IGEvbGF5
ZXJpbmRleC9taWdyYXRpb25zLzAwMDVfbGF5ZXJ1cGRhdGUucHkgYi9sYXllcmluZGV4L21pZ3Jh
dGlvbnMvMDAwNV9sYXllcnVwZGF0ZS5weQppbmRleCAzY2Y0YWIyLi5iMDI1Mjg1IDEwMDY0NAot
LS0gYS9sYXllcmluZGV4L21pZ3JhdGlvbnMvMDAwNV9sYXllcnVwZGF0ZS5weQorKysgYi9sYXll
cmluZGV4L21pZ3JhdGlvbnMvMDAwNV9sYXllcnVwZGF0ZS5weQpAQCAtMSwzICsxLDQgQEAKKyMg
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAogIyAtKi0gY29kaW5nOiB1dGYtOCAtKi0KIGZy
b20gX19mdXR1cmVfXyBpbXBvcnQgdW5pY29kZV9saXRlcmFscwogCmRpZmYgLS1naXQgYS9sYXll
cmluZGV4L21pZ3JhdGlvbnMvMDAwNl9jaGFuZ2VfYnJhbmNoX21ldGEucHkgYi9sYXllcmluZGV4
L21pZ3JhdGlvbnMvMDAwNl9jaGFuZ2VfYnJhbmNoX21ldGEucHkKaW5kZXggOGE5ZGM0My4uODMx
OTVkZCAxMDA2NDQKLS0tIGEvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMDZfY2hhbmdlX2JyYW5j
aF9tZXRhLnB5CisrKyBiL2xheWVyaW5kZXgvbWlncmF0aW9ucy8wMDA2X2NoYW5nZV9icmFuY2hf
bWV0YS5weQpAQCAtMSwzICsxLDQgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAog
IyAtKi0gY29kaW5nOiB1dGYtOCAtKi0KIGZyb20gX19mdXR1cmVfXyBpbXBvcnQgdW5pY29kZV9s
aXRlcmFscwogCmRpZmYgLS1naXQgYS9sYXllcmluZGV4L21pZ3JhdGlvbnMvMDAwN19sYXllcml0
ZW1fc3RhdHVzX25vdXBkYXRlLnB5IGIvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMDdfbGF5ZXJp
dGVtX3N0YXR1c19ub3VwZGF0ZS5weQppbmRleCBlOTE3YjBlLi4yYWRjNjk2IDEwMDY0NAotLS0g
YS9sYXllcmluZGV4L21pZ3JhdGlvbnMvMDAwN19sYXllcml0ZW1fc3RhdHVzX25vdXBkYXRlLnB5
CisrKyBiL2xheWVyaW5kZXgvbWlncmF0aW9ucy8wMDA3X2xheWVyaXRlbV9zdGF0dXNfbm91cGRh
dGUucHkKQEAgLTEsMyArMSw0IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKICMg
LSotIGNvZGluZzogdXRmLTggLSotCiBmcm9tIF9fZnV0dXJlX18gaW1wb3J0IHVuaWNvZGVfbGl0
ZXJhbHMKIApkaWZmIC0tZ2l0IGEvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMDhfeXBfY29tcGF0
aWJsZS5weSBiL2xheWVyaW5kZXgvbWlncmF0aW9ucy8wMDA4X3lwX2NvbXBhdGlibGUucHkKaW5k
ZXggYjRiYjM2OC4uOWQyNTc3YiAxMDA2NDQKLS0tIGEvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAw
MDhfeXBfY29tcGF0aWJsZS5weQorKysgYi9sYXllcmluZGV4L21pZ3JhdGlvbnMvMDAwOF95cF9j
b21wYXRpYmxlLnB5CkBAIC0xLDMgKzEsNCBAQAorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
TUlUCiAjIC0qLSBjb2Rpbmc6IHV0Zi04IC0qLQogZnJvbSBfX2Z1dHVyZV9fIGltcG9ydCB1bmlj
b2RlX2xpdGVyYWxzCiAKZGlmZiAtLWdpdCBhL2xheWVyaW5kZXgvbWlncmF0aW9ucy8wMDA5X2xh
eWVyYnJhbmNoX2NvbGxlY3Rpb24ucHkgYi9sYXllcmluZGV4L21pZ3JhdGlvbnMvMDAwOV9sYXll
cmJyYW5jaF9jb2xsZWN0aW9uLnB5CmluZGV4IGJmNjI3NmYuLjhiNTE5YjEgMTAwNjQ0Ci0tLSBh
L2xheWVyaW5kZXgvbWlncmF0aW9ucy8wMDA5X2xheWVyYnJhbmNoX2NvbGxlY3Rpb24ucHkKKysr
IGIvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMDlfbGF5ZXJicmFuY2hfY29sbGVjdGlvbi5weQpA
QCAtMSwzICsxLDQgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAogIyAtKi0gY29k
aW5nOiB1dGYtOCAtKi0KIGZyb20gX19mdXR1cmVfXyBpbXBvcnQgdW5pY29kZV9saXRlcmFscwog
CmRpZmYgLS1naXQgYS9sYXllcmluZGV4L21pZ3JhdGlvbnMvMDAxMF9hZGRfZGVwZW5kZW5jaWVz
LnB5IGIvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMTBfYWRkX2RlcGVuZGVuY2llcy5weQppbmRl
eCAxNmNkNzc2Li5lNTMzYjZiIDEwMDY0NAotLS0gYS9sYXllcmluZGV4L21pZ3JhdGlvbnMvMDAx
MF9hZGRfZGVwZW5kZW5jaWVzLnB5CisrKyBiL2xheWVyaW5kZXgvbWlncmF0aW9ucy8wMDEwX2Fk
ZF9kZXBlbmRlbmNpZXMucHkKQEAgLTEsMyArMSw0IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlm
aWVyOiBNSVQKICMgLSotIGNvZGluZzogdXRmLTggLSotCiBmcm9tIF9fZnV0dXJlX18gaW1wb3J0
IHVuaWNvZGVfbGl0ZXJhbHMKIApkaWZmIC0tZ2l0IGEvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAw
MTFfc291cmNlLnB5IGIvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMTFfc291cmNlLnB5CmluZGV4
IDUxNWU3MWMuLjAyMWRiYTMgMTAwNjQ0Ci0tLSBhL2xheWVyaW5kZXgvbWlncmF0aW9ucy8wMDEx
X3NvdXJjZS5weQorKysgYi9sYXllcmluZGV4L21pZ3JhdGlvbnMvMDAxMV9zb3VyY2UucHkKQEAg
LTEsMyArMSw0IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKICMgLSotIGNvZGlu
ZzogdXRmLTggLSotCiBmcm9tIF9fZnV0dXJlX18gaW1wb3J0IHVuaWNvZGVfbGl0ZXJhbHMKIApk
aWZmIC0tZ2l0IGEvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMTJfbGF5ZXJpdGVtX3Zjc19jb21t
aXRfdXJsLnB5IGIvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMTJfbGF5ZXJpdGVtX3Zjc19jb21t
aXRfdXJsLnB5CmluZGV4IDE4MzZhYmEuLmE5YmQ5MmUgMTAwNjQ0Ci0tLSBhL2xheWVyaW5kZXgv
bWlncmF0aW9ucy8wMDEyX2xheWVyaXRlbV92Y3NfY29tbWl0X3VybC5weQorKysgYi9sYXllcmlu
ZGV4L21pZ3JhdGlvbnMvMDAxMl9sYXllcml0ZW1fdmNzX2NvbW1pdF91cmwucHkKQEAgLTEsMyAr
MSw0IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKICMgLSotIGNvZGluZzogdXRm
LTggLSotCiBmcm9tIF9fZnV0dXJlX18gaW1wb3J0IHVuaWNvZGVfbGl0ZXJhbHMKIApkaWZmIC0t
Z2l0IGEvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMTNfcGF0Y2gucHkgYi9sYXllcmluZGV4L21p
Z3JhdGlvbnMvMDAxM19wYXRjaC5weQppbmRleCA5ZTcxODBlLi4zNTg4NGQxIDEwMDY0NAotLS0g
YS9sYXllcmluZGV4L21pZ3JhdGlvbnMvMDAxM19wYXRjaC5weQorKysgYi9sYXllcmluZGV4L21p
Z3JhdGlvbnMvMDAxM19wYXRjaC5weQpAQCAtMSwzICsxLDQgQEAKKyMgU1BEWC1MaWNlbnNlLUlk
ZW50aWZpZXI6IE1JVAogIyAtKi0gY29kaW5nOiB1dGYtOCAtKi0KIGZyb20gX19mdXR1cmVfXyBp
bXBvcnQgdW5pY29kZV9saXRlcmFscwogCmRpZmYgLS1naXQgYS9sYXllcmluZGV4L21pZ3JhdGlv
bnMvMDAxNF9zaXRlbm90aWNlLnB5IGIvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMTRfc2l0ZW5v
dGljZS5weQppbmRleCA2MzA3MDBjLi43Mjg5MmJjIDEwMDY0NAotLS0gYS9sYXllcmluZGV4L21p
Z3JhdGlvbnMvMDAxNF9zaXRlbm90aWNlLnB5CisrKyBiL2xheWVyaW5kZXgvbWlncmF0aW9ucy8w
MDE0X3NpdGVub3RpY2UucHkKQEAgLTEsMyArMSw0IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlm
aWVyOiBNSVQKICMgLSotIGNvZGluZzogdXRmLTggLSotCiBmcm9tIF9fZnV0dXJlX18gaW1wb3J0
IHVuaWNvZGVfbGl0ZXJhbHMKIApkaWZmIC0tZ2l0IGEvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAw
MTVfY29tcGFyaXNvbi5weSBiL2xheWVyaW5kZXgvbWlncmF0aW9ucy8wMDE1X2NvbXBhcmlzb24u
cHkKaW5kZXggN2QyNGYxMy4uMGRmY2E1MCAxMDA2NDQKLS0tIGEvbGF5ZXJpbmRleC9taWdyYXRp
b25zLzAwMTVfY29tcGFyaXNvbi5weQorKysgYi9sYXllcmluZGV4L21pZ3JhdGlvbnMvMDAxNV9j
b21wYXJpc29uLnB5CkBAIC0xLDMgKzEsNCBAQAorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
TUlUCiAjIC0qLSBjb2Rpbmc6IHV0Zi04IC0qLQogZnJvbSBfX2Z1dHVyZV9fIGltcG9ydCB1bmlj
b2RlX2xpdGVyYWxzCiAKZGlmZiAtLWdpdCBhL2xheWVyaW5kZXgvbWlncmF0aW9ucy8wMDE2X2Ns
YXNzaWNyZWNpcGVfZGVsZXRlLnB5IGIvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMTZfY2xhc3Np
Y3JlY2lwZV9kZWxldGUucHkKaW5kZXggZTliZTkwMy4uMjVmYmQ5YyAxMDA2NDQKLS0tIGEvbGF5
ZXJpbmRleC9taWdyYXRpb25zLzAwMTZfY2xhc3NpY3JlY2lwZV9kZWxldGUucHkKKysrIGIvbGF5
ZXJpbmRleC9taWdyYXRpb25zLzAwMTZfY2xhc3NpY3JlY2lwZV9kZWxldGUucHkKQEAgLTEsMyAr
MSw0IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKICMgLSotIGNvZGluZzogdXRm
LTggLSotCiBmcm9tIF9fZnV0dXJlX18gaW1wb3J0IHVuaWNvZGVfbGl0ZXJhbHMKIApkaWZmIC0t
Z2l0IGEvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMTdfY2xhc3NpY3JlY2lwZV9uZWVkc19hdHRl
bnRpb24ucHkgYi9sYXllcmluZGV4L21pZ3JhdGlvbnMvMDAxN19jbGFzc2ljcmVjaXBlX25lZWRz
X2F0dGVudGlvbi5weQppbmRleCA2ZDlkMjA5Li5lMmU2ODEyIDEwMDY0NAotLS0gYS9sYXllcmlu
ZGV4L21pZ3JhdGlvbnMvMDAxN19jbGFzc2ljcmVjaXBlX25lZWRzX2F0dGVudGlvbi5weQorKysg
Yi9sYXllcmluZGV4L21pZ3JhdGlvbnMvMDAxN19jbGFzc2ljcmVjaXBlX25lZWRzX2F0dGVudGlv
bi5weQpAQCAtMSwzICsxLDQgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAogIyAt
Ki0gY29kaW5nOiB1dGYtOCAtKi0KIGZyb20gX19mdXR1cmVfXyBpbXBvcnQgdW5pY29kZV9saXRl
cmFscwogCmRpZmYgLS1naXQgYS9sYXllcmluZGV4L21pZ3JhdGlvbnMvMDAxOF9sYXllcnJlY2lw
ZWV4dHJhdXJsLnB5IGIvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMThfbGF5ZXJyZWNpcGVleHRy
YXVybC5weQppbmRleCBhOWY3Y2RmLi5mOTMyYjJlIDEwMDY0NAotLS0gYS9sYXllcmluZGV4L21p
Z3JhdGlvbnMvMDAxOF9sYXllcnJlY2lwZWV4dHJhdXJsLnB5CisrKyBiL2xheWVyaW5kZXgvbWln
cmF0aW9ucy8wMDE4X2xheWVycmVjaXBlZXh0cmF1cmwucHkKQEAgLTEsMyArMSw0IEBACisjIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiBCU0QtMy1DbGF1c2UKICMgLSotIGNvZGluZzogdXRmLTgg
LSotCiAjIEdlbmVyYXRlZCBieSBEamFuZ28gMS4xMS4xMiBvbiAyMDE4LTA1LTE1IDA0OjEwCiBm
cm9tIF9fZnV0dXJlX18gaW1wb3J0IHVuaWNvZGVfbGl0ZXJhbHMKZGlmZiAtLWdpdCBhL2xheWVy
aW5kZXgvbWlncmF0aW9ucy8wMDE5X2xheWVyaXRlbV9jbGFzc2ljX2NvbXBhcmlzb24ucHkgYi9s
YXllcmluZGV4L21pZ3JhdGlvbnMvMDAxOV9sYXllcml0ZW1fY2xhc3NpY19jb21wYXJpc29uLnB5
CmluZGV4IDY0YzFlN2EuLjJjOGU1ZDIgMTAwNjQ0Ci0tLSBhL2xheWVyaW5kZXgvbWlncmF0aW9u
cy8wMDE5X2xheWVyaXRlbV9jbGFzc2ljX2NvbXBhcmlzb24ucHkKKysrIGIvbGF5ZXJpbmRleC9t
aWdyYXRpb25zLzAwMTlfbGF5ZXJpdGVtX2NsYXNzaWNfY29tcGFyaXNvbi5weQpAQCAtMSwzICsx
LDQgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEJTRC0zLUNsYXVzZQogIyAtKi0gY29k
aW5nOiB1dGYtOCAtKi0KICMgR2VuZXJhdGVkIGJ5IERqYW5nbyAxLjExLjEyIG9uIDIwMTgtMDUt
MTUgMDU6MjUKIGZyb20gX19mdXR1cmVfXyBpbXBvcnQgdW5pY29kZV9saXRlcmFscwpkaWZmIC0t
Z2l0IGEvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMjBfdXBkYXRlX21hbnVhbC5weSBiL2xheWVy
aW5kZXgvbWlncmF0aW9ucy8wMDIwX3VwZGF0ZV9tYW51YWwucHkKaW5kZXggMTQyM2E4Mi4uNWNi
ZGE2ZCAxMDA2NDQKLS0tIGEvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMjBfdXBkYXRlX21hbnVh
bC5weQorKysgYi9sYXllcmluZGV4L21pZ3JhdGlvbnMvMDAyMF91cGRhdGVfbWFudWFsLnB5CkBA
IC0xLDMgKzEsNCBAQAorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogQlNELTMtQ2xhdXNlCiAj
IC0qLSBjb2Rpbmc6IHV0Zi04IC0qLQogIyBHZW5lcmF0ZWQgYnkgRGphbmdvIDEuMTEuMTIgb24g
MjAxOC0wNi0wNyAwNDo1NQogZnJvbSBfX2Z1dHVyZV9fIGltcG9ydCB1bmljb2RlX2xpdGVyYWxz
CmRpZmYgLS1naXQgYS9sYXllcmluZGV4L21pZ3JhdGlvbnMvMDAyMV9sYXllcnVwZGF0ZV9hZGRf
bGF5ZXJfYnJhbmNoLnB5IGIvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMjFfbGF5ZXJ1cGRhdGVf
YWRkX2xheWVyX2JyYW5jaC5weQppbmRleCA1NzNjN2NiLi45YmRjZjU2IDEwMDY0NAotLS0gYS9s
YXllcmluZGV4L21pZ3JhdGlvbnMvMDAyMV9sYXllcnVwZGF0ZV9hZGRfbGF5ZXJfYnJhbmNoLnB5
CisrKyBiL2xheWVyaW5kZXgvbWlncmF0aW9ucy8wMDIxX2xheWVydXBkYXRlX2FkZF9sYXllcl9i
cmFuY2gucHkKQEAgLTEsMyArMSw0IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBCU0Qt
My1DbGF1c2UKICMgLSotIGNvZGluZzogdXRmLTggLSotCiAjIEdlbmVyYXRlZCBieSBEamFuZ28g
MS4xMS4xMiBvbiAyMDE4LTA4LTEzIDIyOjQ0CiBmcm9tIF9fZnV0dXJlX18gaW1wb3J0IHVuaWNv
ZGVfbGl0ZXJhbHMKZGlmZiAtLWdpdCBhL2xheWVyaW5kZXgvbWlncmF0aW9ucy8wMDIyX2xheWVy
dXBkYXRlX3NldF9sYXllcl9icmFuY2gucHkgYi9sYXllcmluZGV4L21pZ3JhdGlvbnMvMDAyMl9s
YXllcnVwZGF0ZV9zZXRfbGF5ZXJfYnJhbmNoLnB5CmluZGV4IGUwZTQ3MjkuLjhkNjgwMTIgMTAw
NjQ0Ci0tLSBhL2xheWVyaW5kZXgvbWlncmF0aW9ucy8wMDIyX2xheWVydXBkYXRlX3NldF9sYXll
cl9icmFuY2gucHkKKysrIGIvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMjJfbGF5ZXJ1cGRhdGVf
c2V0X2xheWVyX2JyYW5jaC5weQpAQCAtMSwzICsxLDQgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IEJTRC0zLUNsYXVzZQogIyAtKi0gY29kaW5nOiB1dGYtOCAtKi0KICMgR2VuZXJhdGVk
IGJ5IERqYW5nbyAxLjExLjEyIG9uIDIwMTgtMDgtMTMgMjM6MDUKIGZyb20gX19mdXR1cmVfXyBp
bXBvcnQgdW5pY29kZV9saXRlcmFscwpkaWZmIC0tZ2l0IGEvbGF5ZXJpbmRleC9taWdyYXRpb25z
LzAwMjNfbGF5ZXJ1cGRhdGVfbGF5ZXJfYnJhbmNoX2ZpbmFsaXNlLnB5IGIvbGF5ZXJpbmRleC9t
aWdyYXRpb25zLzAwMjNfbGF5ZXJ1cGRhdGVfbGF5ZXJfYnJhbmNoX2ZpbmFsaXNlLnB5CmluZGV4
IGJhNmI3MmYuLmI0MzZjNGQgMTAwNjQ0Ci0tLSBhL2xheWVyaW5kZXgvbWlncmF0aW9ucy8wMDIz
X2xheWVydXBkYXRlX2xheWVyX2JyYW5jaF9maW5hbGlzZS5weQorKysgYi9sYXllcmluZGV4L21p
Z3JhdGlvbnMvMDAyM19sYXllcnVwZGF0ZV9sYXllcl9icmFuY2hfZmluYWxpc2UucHkKQEAgLTEs
MyArMSw0IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBCU0QtMy1DbGF1c2UKICMgLSot
IGNvZGluZzogdXRmLTggLSotCiAjIEdlbmVyYXRlZCBieSBEamFuZ28gMS4xMS4xMiBvbiAyMDE4
LTA4LTEzIDIzOjA2CiBmcm9tIF9fZnV0dXJlX18gaW1wb3J0IHVuaWNvZGVfbGl0ZXJhbHMKZGlm
ZiAtLWdpdCBhL2xheWVyaW5kZXgvbWlncmF0aW9ucy8wMDI0X2xheWVydXBkYXRlX3Zjc19yZXZz
LnB5IGIvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMjRfbGF5ZXJ1cGRhdGVfdmNzX3JldnMucHkK
aW5kZXggMGQ2OTA0My4uMDMyMjMzMiAxMDA2NDQKLS0tIGEvbGF5ZXJpbmRleC9taWdyYXRpb25z
LzAwMjRfbGF5ZXJ1cGRhdGVfdmNzX3JldnMucHkKKysrIGIvbGF5ZXJpbmRleC9taWdyYXRpb25z
LzAwMjRfbGF5ZXJ1cGRhdGVfdmNzX3JldnMucHkKQEAgLTEsMyArMSw0IEBACisjIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiBCU0QtMy1DbGF1c2UKICMgLSotIGNvZGluZzogdXRmLTggLSotCiAj
IEdlbmVyYXRlZCBieSBEamFuZ28gMS4xMS4xMiBvbiAyMDE4LTA4LTEzIDIzOjI0CiBmcm9tIF9f
ZnV0dXJlX18gaW1wb3J0IHVuaWNvZGVfbGl0ZXJhbHMKZGlmZiAtLWdpdCBhL2xheWVyaW5kZXgv
bWlncmF0aW9ucy8wMDI1X3VwZGF0ZV9yZXRjb2RlLnB5IGIvbGF5ZXJpbmRleC9taWdyYXRpb25z
LzAwMjVfdXBkYXRlX3JldGNvZGUucHkKaW5kZXggZDFhZDgxNC4uNzJmMTViOCAxMDA2NDQKLS0t
IGEvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMjVfdXBkYXRlX3JldGNvZGUucHkKKysrIGIvbGF5
ZXJpbmRleC9taWdyYXRpb25zLzAwMjVfdXBkYXRlX3JldGNvZGUucHkKQEAgLTEsMyArMSw0IEBA
CisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBCU0QtMy1DbGF1c2UKICMgLSotIGNvZGluZzog
dXRmLTggLSotCiAjIEdlbmVyYXRlZCBieSBEamFuZ28gMS4xMS4xMiBvbiAyMDE4LTA5LTE4IDAw
OjQ2CiBmcm9tIF9fZnV0dXJlX18gaW1wb3J0IHVuaWNvZGVfbGl0ZXJhbHMKZGlmZiAtLWdpdCBh
L2xheWVyaW5kZXgvbWlncmF0aW9ucy8wMDI2X2luY2ZpbGUucHkgYi9sYXllcmluZGV4L21pZ3Jh
dGlvbnMvMDAyNl9pbmNmaWxlLnB5CmluZGV4IDI3MTY4ZGQuLjJmMjBhMjUgMTAwNjQ0Ci0tLSBh
L2xheWVyaW5kZXgvbWlncmF0aW9ucy8wMDI2X2luY2ZpbGUucHkKKysrIGIvbGF5ZXJpbmRleC9t
aWdyYXRpb25zLzAwMjZfaW5jZmlsZS5weQpAQCAtMSwzICsxLDQgQEAKKyMgU1BEWC1MaWNlbnNl
LUlkZW50aWZpZXI6IEJTRC0zLUNsYXVzZQogIyAtKi0gY29kaW5nOiB1dGYtOCAtKi0KICMgR2Vu
ZXJhdGVkIGJ5IERqYW5nbyAxLjExLjEyIG9uIDIwMTgtMTEtMDUgMTk6NTAKIGZyb20gX19mdXR1
cmVfXyBpbXBvcnQgdW5pY29kZV9saXRlcmFscwpkaWZmIC0tZ2l0IGEvbGF5ZXJpbmRleC9taWdy
YXRpb25zLzAwMjdfcGF0Y2hfYXBwbHlfb3JkZXIucHkgYi9sYXllcmluZGV4L21pZ3JhdGlvbnMv
MDAyN19wYXRjaF9hcHBseV9vcmRlci5weQppbmRleCBlZmQ3NzVjLi45YWQzN2M0IDEwMDY0NAot
LS0gYS9sYXllcmluZGV4L21pZ3JhdGlvbnMvMDAyN19wYXRjaF9hcHBseV9vcmRlci5weQorKysg
Yi9sYXllcmluZGV4L21pZ3JhdGlvbnMvMDAyN19wYXRjaF9hcHBseV9vcmRlci5weQpAQCAtMSwz
ICsxLDQgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEJTRC0zLUNsYXVzZQogIyAtKi0g
Y29kaW5nOiB1dGYtOCAtKi0KICMgR2VuZXJhdGVkIGJ5IERqYW5nbyAxLjExLjE2IG9uIDIwMTkt
MDItMTMgMDI6NDIKIGZyb20gX19mdXR1cmVfXyBpbXBvcnQgdW5pY29kZV9saXRlcmFscwpkaWZm
IC0tZ2l0IGEvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMjhfYnJhbmNoX2hpZGRlbi5weSBiL2xh
eWVyaW5kZXgvbWlncmF0aW9ucy8wMDI4X2JyYW5jaF9oaWRkZW4ucHkKaW5kZXggYzY0Yzc1Yi4u
Yjk0MmZlNCAxMDA2NDQKLS0tIGEvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMjhfYnJhbmNoX2hp
ZGRlbi5weQorKysgYi9sYXllcmluZGV4L21pZ3JhdGlvbnMvMDAyOF9icmFuY2hfaGlkZGVuLnB5
CkBAIC0xLDMgKzEsNCBAQAorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogQlNELTMtQ2xhdXNl
CiAjIC0qLSBjb2Rpbmc6IHV0Zi04IC0qLQogIyBHZW5lcmF0ZWQgYnkgRGphbmdvIDEuMTEuMTIg
b24gMjAxOC0wNi0yMSAwNToxNQogZnJvbSBfX2Z1dHVyZV9fIGltcG9ydCB1bmljb2RlX2xpdGVy
YWxzCmRpZmYgLS1naXQgYS9sYXllcmluZGV4L21pZ3JhdGlvbnMvMDAzMF9zZWN1cml0eXF1ZXN0
aW9uLnB5IGIvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMzBfc2VjdXJpdHlxdWVzdGlvbi5weQpp
bmRleCA0ZjRkYjBmLi4yNjVmMmQyIDEwMDY0NAotLS0gYS9sYXllcmluZGV4L21pZ3JhdGlvbnMv
MDAzMF9zZWN1cml0eXF1ZXN0aW9uLnB5CisrKyBiL2xheWVyaW5kZXgvbWlncmF0aW9ucy8wMDMw
X3NlY3VyaXR5cXVlc3Rpb24ucHkKQEAgLTEsMyArMSw0IEBACisjIFNQRFgtTGljZW5zZS1JZGVu
dGlmaWVyOiBCU0QtMy1DbGF1c2UKICMgLSotIGNvZGluZzogdXRmLTggLSotCiAjIEdlbmVyYXRl
ZCBieSBEamFuZ28gMS4xMS4xNyBvbiAyMDE5LTAxLTA4IDIyOjMwCiBmcm9tIF9fZnV0dXJlX18g
aW1wb3J0IHVuaWNvZGVfbGl0ZXJhbHMKZGlmZiAtLWdpdCBhL2xheWVyaW5kZXgvbWlncmF0aW9u
cy8wMDMxX3NlY3VyaXR5cXVlc3Rpb25fcG9wdWxhdGUucHkgYi9sYXllcmluZGV4L21pZ3JhdGlv
bnMvMDAzMV9zZWN1cml0eXF1ZXN0aW9uX3BvcHVsYXRlLnB5CmluZGV4IDg4YTJhNTYuLmE4OGIw
ZjIgMTAwNjQ0Ci0tLSBhL2xheWVyaW5kZXgvbWlncmF0aW9ucy8wMDMxX3NlY3VyaXR5cXVlc3Rp
b25fcG9wdWxhdGUucHkKKysrIGIvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMzFfc2VjdXJpdHlx
dWVzdGlvbl9wb3B1bGF0ZS5weQpAQCAtMSwzICsxLDQgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IEJTRC0zLUNsYXVzZQogIyAtKi0gY29kaW5nOiB1dGYtOCAtKi0KICMgR2VuZXJhdGVk
IGJ5IERqYW5nbyAxLjExLjE3IG9uIDIwMTktMDEtMDMgMDE6MjUKIGZyb20gX19mdXR1cmVfXyBp
bXBvcnQgdW5pY29kZV9saXRlcmFscwpkaWZmIC0tZ2l0IGEvbGF5ZXJpbmRleC9taWdyYXRpb25z
LzAwMzJfcGF0Y2hkaXNwb3NpdGlvbi5weSBiL2xheWVyaW5kZXgvbWlncmF0aW9ucy8wMDMyX3Bh
dGNoZGlzcG9zaXRpb24ucHkKaW5kZXggOWRhN2JmMS4uMzViM2E3MyAxMDA2NDQKLS0tIGEvbGF5
ZXJpbmRleC9taWdyYXRpb25zLzAwMzJfcGF0Y2hkaXNwb3NpdGlvbi5weQorKysgYi9sYXllcmlu
ZGV4L21pZ3JhdGlvbnMvMDAzMl9wYXRjaGRpc3Bvc2l0aW9uLnB5CkBAIC0xLDMgKzEsNCBAQAor
IyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogQlNELTMtQ2xhdXNlCiAjIC0qLSBjb2Rpbmc6IHV0
Zi04IC0qLQogIyBHZW5lcmF0ZWQgYnkgRGphbmdvIDEuMTEuMTYgb24gMjAxOS0wMy0yMSAyMDoz
NwogZnJvbSBfX2Z1dHVyZV9fIGltcG9ydCB1bmljb2RlX2xpdGVyYWxzCmRpZmYgLS1naXQgYS9s
YXllcmluZGV4L21pZ3JhdGlvbnMvMDAzNF9zb3VyY2Vfc2hhMjU2c3VtLnB5IGIvbGF5ZXJpbmRl
eC9taWdyYXRpb25zLzAwMzRfc291cmNlX3NoYTI1NnN1bS5weQppbmRleCAyMzQ5Mjk3Li45NGM2
MjFiIDEwMDY0NAotLS0gYS9sYXllcmluZGV4L21pZ3JhdGlvbnMvMDAzNF9zb3VyY2Vfc2hhMjU2
c3VtLnB5CisrKyBiL2xheWVyaW5kZXgvbWlncmF0aW9ucy8wMDM0X3NvdXJjZV9zaGEyNTZzdW0u
cHkKQEAgLTEsMyArMSw0IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBCU0QtMy1DbGF1
c2UKICMgLSotIGNvZGluZzogdXRmLTggLSotCiAjIEdlbmVyYXRlZCBieSBEamFuZ28gMS4xMS4x
NiBvbiAyMDE5LTA0LTAxIDAzOjIwCiBmcm9tIF9fZnV0dXJlX18gaW1wb3J0IHVuaWNvZGVfbGl0
ZXJhbHMKZGlmZiAtLWdpdCBhL2xheWVyaW5kZXgvbWlncmF0aW9ucy8wMDM2X2xheWVyYnJhbmNo
X2xvY2FsX3BhdGgucHkgYi9sYXllcmluZGV4L21pZ3JhdGlvbnMvMDAzNl9sYXllcmJyYW5jaF9s
b2NhbF9wYXRoLnB5CmluZGV4IGQxZDJhZjIuLjk2ODUzZGEgMTAwNjQ0Ci0tLSBhL2xheWVyaW5k
ZXgvbWlncmF0aW9ucy8wMDM2X2xheWVyYnJhbmNoX2xvY2FsX3BhdGgucHkKKysrIGIvbGF5ZXJp
bmRleC9taWdyYXRpb25zLzAwMzZfbGF5ZXJicmFuY2hfbG9jYWxfcGF0aC5weQpAQCAtMSwzICsx
LDQgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEJTRC0zLUNsYXVzZQogIyAtKi0gY29k
aW5nOiB1dGYtOCAtKi0KICMgR2VuZXJhdGVkIGJ5IERqYW5nbyAxLjExLjE2IG9uIDIwMTktMDQt
MDIgMjA6MjIKIGZyb20gX19mdXR1cmVfXyBpbXBvcnQgdW5pY29kZV9saXRlcmFscwpkaWZmIC0t
Z2l0IGEvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMzdfcGF0Y2hfYXBwbGllZC5weSBiL2xheWVy
aW5kZXgvbWlncmF0aW9ucy8wMDM3X3BhdGNoX2FwcGxpZWQucHkKaW5kZXggMmIyYmRkYi4uYjA5
N2Q5MCAxMDA2NDQKLS0tIGEvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMzdfcGF0Y2hfYXBwbGll
ZC5weQorKysgYi9sYXllcmluZGV4L21pZ3JhdGlvbnMvMDAzN19wYXRjaF9hcHBsaWVkLnB5CkBA
IC0xLDMgKzEsNCBAQAorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogQlNELTMtQ2xhdXNlCiAj
IC0qLSBjb2Rpbmc6IHV0Zi04IC0qLQogIyBHZW5lcmF0ZWQgYnkgRGphbmdvIDEuMTEuMTYgb24g
MjAxOS0wNC0wMyAxMjoyMAogZnJvbSBfX2Z1dHVyZV9fIGltcG9ydCB1bmljb2RlX2xpdGVyYWxz
CmRpZmYgLS1naXQgYS9sYXllcmluZGV4L21pZ3JhdGlvbnMvMDAzOF9wYXRjaF9zdHJpcGxldmVs
LnB5IGIvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwMzhfcGF0Y2hfc3RyaXBsZXZlbC5weQppbmRl
eCBiNWIyMmUyLi43ZWUyODgyIDEwMDY0NAotLS0gYS9sYXllcmluZGV4L21pZ3JhdGlvbnMvMDAz
OF9wYXRjaF9zdHJpcGxldmVsLnB5CisrKyBiL2xheWVyaW5kZXgvbWlncmF0aW9ucy8wMDM4X3Bh
dGNoX3N0cmlwbGV2ZWwucHkKQEAgLTEsMyArMSw0IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlm
aWVyOiBCU0QtMy1DbGF1c2UKICMgLSotIGNvZGluZzogdXRmLTggLSotCiAjIEdlbmVyYXRlZCBi
eSBEamFuZ28gMS4xMS4xNiBvbiAyMDE5LTA0LTAzIDEyOjIyCiBmcm9tIF9fZnV0dXJlX18gaW1w
b3J0IHVuaWNvZGVfbGl0ZXJhbHMKZGlmZiAtLWdpdCBhL2xheWVyaW5kZXgvbWlncmF0aW9ucy8w
MDQxX3JlY2lwZV9jb25maWdvcHRzLnB5IGIvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwNDFfcmVj
aXBlX2NvbmZpZ29wdHMucHkKaW5kZXggMDBhOTY0NC4uMjU3NDA0NSAxMDA2NDQKLS0tIGEvbGF5
ZXJpbmRleC9taWdyYXRpb25zLzAwNDFfcmVjaXBlX2NvbmZpZ29wdHMucHkKKysrIGIvbGF5ZXJp
bmRleC9taWdyYXRpb25zLzAwNDFfcmVjaXBlX2NvbmZpZ29wdHMucHkKQEAgLTEsMyArMSw0IEBA
CisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBCU0QtMy1DbGF1c2UKICMgLSotIGNvZGluZzog
dXRmLTggLSotCiAjIEdlbmVyYXRlZCBieSBEamFuZ28gMS4xMS4xNiBvbiAyMDE5LTA0LTE1IDAw
OjE4CiBmcm9tIF9fZnV0dXJlX18gaW1wb3J0IHVuaWNvZGVfbGl0ZXJhbHMKZGlmZiAtLWdpdCBh
L2xheWVyaW5kZXgvbWlncmF0aW9ucy8wMDQyX3JlY2lwZV9wZV9wci5weSBiL2xheWVyaW5kZXgv
bWlncmF0aW9ucy8wMDQyX3JlY2lwZV9wZV9wci5weQppbmRleCA1NTgzNjk2Li41OTI0NmZmIDEw
MDY0NAotLS0gYS9sYXllcmluZGV4L21pZ3JhdGlvbnMvMDA0Ml9yZWNpcGVfcGVfcHIucHkKKysr
IGIvbGF5ZXJpbmRleC9taWdyYXRpb25zLzAwNDJfcmVjaXBlX3BlX3ByLnB5CkBAIC0xLDMgKzEs
NCBAQAorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogQlNELTMtQ2xhdXNlCiAjIC0qLSBjb2Rp
bmc6IHV0Zi04IC0qLQogIyBHZW5lcmF0ZWQgYnkgRGphbmdvIDEuMTEuMjQgb24gMjAxOS0wOS0y
NCAyMTozNAogZnJvbSBfX2Z1dHVyZV9fIGltcG9ydCB1bmljb2RlX2xpdGVyYWxzCmRpZmYgLS1n
aXQgYS9sYXllcmluZGV4L21pZ3JhdGlvbnMvX19pbml0X18ucHkgYi9sYXllcmluZGV4L21pZ3Jh
dGlvbnMvX19pbml0X18ucHkKaW5kZXggZTY5ZGUyOS4uZTc3ZjZjZiAxMDA2NDQKLS0tIGEvbGF5
ZXJpbmRleC9taWdyYXRpb25zL19faW5pdF9fLnB5CisrKyBiL2xheWVyaW5kZXgvbWlncmF0aW9u
cy9fX2luaXRfXy5weQpAQCAtMCwwICsxLDIgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6
IE1JVAorCmRpZmYgLS1naXQgYS9sYXllcmluZGV4L21vZGVscy5weSBiL2xheWVyaW5kZXgvbW9k
ZWxzLnB5CmluZGV4IDMzMmJhMzkuLjRlNDJjZGMgMTAwNjQ0Ci0tLSBhL2xheWVyaW5kZXgvbW9k
ZWxzLnB5CisrKyBiL2xheWVyaW5kZXgvbW9kZWxzLnB5CkBAIC0xLDMgKzEsNCBAQAorIyBTUERY
LUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCiAjIGxheWVyaW5kZXgtd2ViIC0gbW9kZWwgZGVmaW5p
dGlvbnMKICMKICMgQ29weXJpZ2h0IChDKSAyMDEzLTIwMTggSW50ZWwgQ29ycG9yYXRpb24KZGlm
ZiAtLWdpdCBhL2xheWVyaW5kZXgvcXVlcnlzZXRoZWxwZXIucHkgYi9sYXllcmluZGV4L3F1ZXJ5
c2V0aGVscGVyLnB5CmluZGV4IDVhODU2ZWUuLmE1NTA5MjIgMTAwNjQ0Ci0tLSBhL2xheWVyaW5k
ZXgvcXVlcnlzZXRoZWxwZXIucHkKKysrIGIvbGF5ZXJpbmRleC9xdWVyeXNldGhlbHBlci5weQpA
QCAtMSwzICsxLDQgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAogaW1wb3J0IG9w
ZXJhdG9yCiBpbXBvcnQgZnVuY3Rvb2xzCiBmcm9tIGRqYW5nby5kYi5tb2RlbHMgaW1wb3J0IFEs
IENoYXJGaWVsZApkaWZmIC0tZ2l0IGEvbGF5ZXJpbmRleC9yZWNpcGVkZXNjLnB5IGIvbGF5ZXJp
bmRleC9yZWNpcGVkZXNjLnB5CmluZGV4IDI2MjgwZWUuLjlmN2VmODggMTAwNjQ0Ci0tLSBhL2xh
eWVyaW5kZXgvcmVjaXBlZGVzYy5weQorKysgYi9sYXllcmluZGV4L3JlY2lwZWRlc2MucHkKQEAg
LTEsNCArMSw1IEBACiAjIS91c3IvYmluL2VudiBweXRob24KKyMgU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IE1JVAogCiAjIFRlc3Qgc2NyaXB0CiAjCmRpZmYgLS1naXQgYS9sYXllcmluZGV4L3Jl
Y2lwZXBhcnNlLnB5IGIvbGF5ZXJpbmRleC9yZWNpcGVwYXJzZS5weQppbmRleCAzOTkwMDkxLi43
MTBhZmUwIDEwMDY0NAotLS0gYS9sYXllcmluZGV4L3JlY2lwZXBhcnNlLnB5CisrKyBiL2xheWVy
aW5kZXgvcmVjaXBlcGFyc2UucHkKQEAgLTEsMyArMSw0IEBACisjIFNQRFgtTGljZW5zZS1JZGVu
dGlmaWVyOiBNSVQKICMgVXRpbGl0eSBmdW5jdGlvbnMgZm9yIHBhcnNpbmcgcmVjaXBlcyB1c2lu
ZyBiaXRiYWtlIHdpdGhpbiBsYXllcmluZGV4LXdlYgogIwogIyBDb3B5cmlnaHQgKEMpIDIwMTMg
SW50ZWwgQ29ycG9yYXRpb24KZGlmZiAtLWdpdCBhL2xheWVyaW5kZXgvcmVzdHBlcm0ucHkgYi9s
YXllcmluZGV4L3Jlc3RwZXJtLnB5CmluZGV4IGZiOWY3MTUuLjUzZGNmMTAgMTAwNjQ0Ci0tLSBh
L2xheWVyaW5kZXgvcmVzdHBlcm0ucHkKKysrIGIvbGF5ZXJpbmRleC9yZXN0cGVybS5weQpAQCAt
MSwzICsxLDQgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAogZnJvbSByZXN0X2Zy
YW1ld29yayBpbXBvcnQgcGVybWlzc2lvbnMKIAogY2xhc3MgUmVhZE9ubHlQZXJtaXNzaW9uKHBl
cm1pc3Npb25zLkJhc2VQZXJtaXNzaW9uKToKZGlmZiAtLWdpdCBhL2xheWVyaW5kZXgvcmVzdHZp
ZXdzLnB5IGIvbGF5ZXJpbmRleC9yZXN0dmlld3MucHkKaW5kZXggN2RlNGNkNy4uZTdiM2I5NyAx
MDA2NDQKLS0tIGEvbGF5ZXJpbmRleC9yZXN0dmlld3MucHkKKysrIGIvbGF5ZXJpbmRleC9yZXN0
dmlld3MucHkKQEAgLTEsMyArMSw0IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQK
ICMgT3BlbkVtYmVkZGVkIExheWVyIEluZGV4IFJFU1QgQVBJIGltcGxlbWVudGF0aW9uCiAjCiAj
IENvcHlyaWdodCAoQykgMjAxNCwgMjAxNi0yMDE5IEludGVsIENvcnBvcmF0aW9uCmRpZmYgLS1n
aXQgYS9sYXllcmluZGV4L3NlY3VyaXR5cXVlc3Rpb25zLnB5IGIvbGF5ZXJpbmRleC9zZWN1cml0
eXF1ZXN0aW9ucy5weQppbmRleCBhNmEwZTFjLi4wNWI1YTM1IDEwMDY0NAotLS0gYS9sYXllcmlu
ZGV4L3NlY3VyaXR5cXVlc3Rpb25zLnB5CisrKyBiL2xheWVyaW5kZXgvc2VjdXJpdHlxdWVzdGlv
bnMucHkKQEAgLTEsMyArMSw0IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKIHNl
Y3VyaXR5X3F1ZXN0aW9ucyA9IFsiV2hhdCB3YXMgdGhlIG5hbWUgb2YgeW91ciBmaXJzdCBwZXQ/
IiwKICAgICAgICAgICAgICAgICAgICAgICAgIldoYXQgd2FzIHRoZSBsYXN0IG5hbWUgb2YgeW91
ciB0aGlyZCBncmFkZSB0ZWFjaGVyPyIsCiAgICAgICAgICAgICAgICAgICAgICAgICJXaGF0IGlz
IHlvdXIgZmF2b3JpdGUgcGl6emEgdG9wcGluZz8iLApkaWZmIC0tZ2l0IGEvbGF5ZXJpbmRleC9z
dGF0aWMvY3NzL2FkZGl0aW9uYWwuY3NzIGIvbGF5ZXJpbmRleC9zdGF0aWMvY3NzL2FkZGl0aW9u
YWwuY3NzCmluZGV4IGVhNGU1NTUuLmQ4NWMzMWMgMTAwNjQ0Ci0tLSBhL2xheWVyaW5kZXgvc3Rh
dGljL2Nzcy9hZGRpdGlvbmFsLmNzcworKysgYi9sYXllcmluZGV4L3N0YXRpYy9jc3MvYWRkaXRp
b25hbC5jc3MKQEAgLTEsMyArMSw0IEBACisvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlU
ICovCiBodG1sIHsKICAgICBvdmVyZmxvdy15OiBzY3JvbGw7CiB9CmRpZmYgLS1naXQgYS9sYXll
cmluZGV4L3Rhc2tzLnB5IGIvbGF5ZXJpbmRleC90YXNrcy5weQppbmRleCBhZTYyYjkxLi4zODA0
NmIzIDEwMDY0NAotLS0gYS9sYXllcmluZGV4L3Rhc2tzLnB5CisrKyBiL2xheWVyaW5kZXgvdGFz
a3MucHkKQEAgLTEsMyArMSw0IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKICMg
Q2VsZXJ5IHRhc2sgZGVmaW5pdGlvbnMgZm9yIHRoZSBsYXllciBpbmRleCBhcHAKICMKICMgQ29w
eXJpZ2h0IChDKSAyMDE4IEludGVsIENvcnBvcmF0aW9uCmRpZmYgLS1naXQgYS9sYXllcmluZGV4
L3RlbXBsYXRldGFncy9fX2luaXRfXy5weSBiL2xheWVyaW5kZXgvdGVtcGxhdGV0YWdzL19faW5p
dF9fLnB5CmluZGV4IGU2OWRlMjkuLjU0OGQyZDQgMTAwNjQ0Ci0tLSBhL2xheWVyaW5kZXgvdGVt
cGxhdGV0YWdzL19faW5pdF9fLnB5CisrKyBiL2xheWVyaW5kZXgvdGVtcGxhdGV0YWdzL19faW5p
dF9fLnB5CkBAIC0wLDAgKzEgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVApkaWZm
IC0tZ2l0IGEvbGF5ZXJpbmRleC90ZW1wbGF0ZXRhZ3MvZXh0cmFmaWx0ZXJzLnB5IGIvbGF5ZXJp
bmRleC90ZW1wbGF0ZXRhZ3MvZXh0cmFmaWx0ZXJzLnB5CmluZGV4IGQ3OWY5YTEuLjRiN2E3OGUg
MTAwNjQ0Ci0tLSBhL2xheWVyaW5kZXgvdGVtcGxhdGV0YWdzL2V4dHJhZmlsdGVycy5weQorKysg
Yi9sYXllcmluZGV4L3RlbXBsYXRldGFncy9leHRyYWZpbHRlcnMucHkKQEAgLTEsMyArMSw0IEBA
CisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKIGZyb20gZGphbmdvIGltcG9ydCB0ZW1w
bGF0ZQogZnJvbSAuLiBpbXBvcnQgdXRpbHMKIApkaWZmIC0tZ2l0IGEvbGF5ZXJpbmRleC90b29s
cy9mZWRvcmEtZmV0Y2gucHkgYi9sYXllcmluZGV4L3Rvb2xzL2ZlZG9yYS1mZXRjaC5weQppbmRl
eCA0OTIwODJhLi5jZWY2NmYxIDEwMDc1NQotLS0gYS9sYXllcmluZGV4L3Rvb2xzL2ZlZG9yYS1m
ZXRjaC5weQorKysgYi9sYXllcmluZGV4L3Rvb2xzL2ZlZG9yYS1mZXRjaC5weQpAQCAtMSw0ICsx
LDUgQEAKICMhL3Vzci9iaW4vZW52IHB5dGhvbjMKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6
IE1JVAogCiAjIEZlZG9yYSBQYWd1cmUgKGUuZy4gaHR0cHM6Ly9zcmMuZmVkb3JhcHJvamVjdC5v
cmcvKSBmZXRjaCB1dGlsaXR5CiAKZGlmZiAtLWdpdCBhL2xheWVyaW5kZXgvdG9vbHMvZml4dXBf
ZHVwbGljYXRlcy5weSBiL2xheWVyaW5kZXgvdG9vbHMvZml4dXBfZHVwbGljYXRlcy5weQppbmRl
eCA1YWJlMmMyLi40OTM5ZTAxIDEwMDY0NAotLS0gYS9sYXllcmluZGV4L3Rvb2xzL2ZpeHVwX2R1
cGxpY2F0ZXMucHkKKysrIGIvbGF5ZXJpbmRleC90b29scy9maXh1cF9kdXBsaWNhdGVzLnB5CkBA
IC0xLDQgKzEsNSBAQAogIyEvdXNyL2Jpbi9lbnYgcHl0aG9uMworIyBTUERYLUxpY2Vuc2UtSWRl
bnRpZmllcjogTUlUCiAKICMgRml4IHJlY2lwZXMgdGhhdCB3ZXJlIG1vdmVkIG91dAogIwpkaWZm
IC0tZ2l0IGEvbGF5ZXJpbmRleC90b29scy9naXRodWItZmV0Y2gucHkgYi9sYXllcmluZGV4L3Rv
b2xzL2dpdGh1Yi1mZXRjaC5weQppbmRleCAxMWM5NzdhLi40YjY0MDZmIDEwMDc1NQotLS0gYS9s
YXllcmluZGV4L3Rvb2xzL2dpdGh1Yi1mZXRjaC5weQorKysgYi9sYXllcmluZGV4L3Rvb2xzL2dp
dGh1Yi1mZXRjaC5weQpAQCAtMSw0ICsxLDUgQEAKICMhL3Vzci9iaW4vZW52IHB5dGhvbjMKKyMg
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAogCiAjIEdpdGh1YiBmZXRjaCB1dGlsaXR5CiAK
ZGlmZiAtLWdpdCBhL2xheWVyaW5kZXgvdG9vbHMvaW1wb3J0X2NsYXNzaWMucHkgYi9sYXllcmlu
ZGV4L3Rvb2xzL2ltcG9ydF9jbGFzc2ljLnB5CmluZGV4IGZjYTA1NGMuLmZlYTNhNmQgMTAwNzU1
Ci0tLSBhL2xheWVyaW5kZXgvdG9vbHMvaW1wb3J0X2NsYXNzaWMucHkKKysrIGIvbGF5ZXJpbmRl
eC90b29scy9pbXBvcnRfY2xhc3NpYy5weQpAQCAtMSw0ICsxLDUgQEAKICMhL3Vzci9iaW4vZW52
IHB5dGhvbjMKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAogCiAjIEltcG9ydCBPRS1D
bGFzc2ljIHJlY2lwZSBkYXRhIGludG8gdGhlIGxheWVyIGluZGV4IGRhdGFiYXNlCiAjCmRpZmYg
LS1naXQgYS9sYXllcmluZGV4L3Rvb2xzL2ltcG9ydF9jbGFzc2ljX3dpa2kucHkgYi9sYXllcmlu
ZGV4L3Rvb2xzL2ltcG9ydF9jbGFzc2ljX3dpa2kucHkKaW5kZXggYmZlYmNkOS4uMjlkNzAzYSAx
MDA3NTUKLS0tIGEvbGF5ZXJpbmRleC90b29scy9pbXBvcnRfY2xhc3NpY193aWtpLnB5CisrKyBi
L2xheWVyaW5kZXgvdG9vbHMvaW1wb3J0X2NsYXNzaWNfd2lraS5weQpAQCAtMSw0ICsxLDUgQEAK
ICMhL3Vzci9iaW4vZW52IHB5dGhvbgorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCiAK
ICMgSW1wb3J0IG1pZ3JhdGlvbiBpbmZvIGZyb20gT0UtQ2xhc3NpYyByZWNpcGVzIHdpa2kgcGFn
ZSBpbnRvIE9FCiAjIGxheWVyIGluZGV4IGRhdGFiYXNlCmRpZmYgLS1naXQgYS9sYXllcmluZGV4
L3Rvb2xzL2ltcG9ydF9sYXllci5weSBiL2xheWVyaW5kZXgvdG9vbHMvaW1wb3J0X2xheWVyLnB5
CmluZGV4IGFjZTU4ZTUuLjU5NTU0NDMgMTAwNzU1Ci0tLSBhL2xheWVyaW5kZXgvdG9vbHMvaW1w
b3J0X2xheWVyLnB5CisrKyBiL2xheWVyaW5kZXgvdG9vbHMvaW1wb3J0X2xheWVyLnB5CkBAIC0x
LDQgKzEsNSBAQAogIyEvdXNyL2Jpbi9lbnYgcHl0aG9uMworIyBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllcjogTUlUCiAKICMgSW1wb3J0IGEgbGF5ZXIgaW50byB0aGUgZGF0YWJhc2UKICMKZGlmZiAt
LWdpdCBhL2xheWVyaW5kZXgvdG9vbHMvaW1wb3J0X2xheWVycy5weSBiL2xheWVyaW5kZXgvdG9v
bHMvaW1wb3J0X2xheWVycy5weQppbmRleCAzNTQ4NTY4Li44NmIyNjk5IDEwMDc1NQotLS0gYS9s
YXllcmluZGV4L3Rvb2xzL2ltcG9ydF9sYXllcnMucHkKKysrIGIvbGF5ZXJpbmRleC90b29scy9p
bXBvcnRfbGF5ZXJzLnB5CkBAIC0xLDQgKzEsNSBAQAogIyEvdXNyL2Jpbi9lbnYgcHl0aG9uMwor
IyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCiAKICMgSW1wb3J0IGxheWVycyBmcm9tIGFu
b3RoZXIgbGF5ZXIgaW5kZXggaW5zdGFuY2UKICMKZGlmZiAtLWdpdCBhL2xheWVyaW5kZXgvdG9v
bHMvaW1wb3J0X290aGVyZGlzdHJvLnB5IGIvbGF5ZXJpbmRleC90b29scy9pbXBvcnRfb3RoZXJk
aXN0cm8ucHkKaW5kZXggNDZlZWVjYS4uMGViNTFiNiAxMDA3NTUKLS0tIGEvbGF5ZXJpbmRleC90
b29scy9pbXBvcnRfb3RoZXJkaXN0cm8ucHkKKysrIGIvbGF5ZXJpbmRleC90b29scy9pbXBvcnRf
b3RoZXJkaXN0cm8ucHkKQEAgLTEsNCArMSw1IEBACiAjIS91c3IvYmluL2VudiBweXRob24zCisj
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKIAogIyBJbXBvcnQgb3RoZXIgZGlzdHJvIGlu
Zm9ybWF0aW9uCiAjCmRpZmYgLS1naXQgYS9sYXllcmluZGV4L3Rvb2xzL2ltcG9ydF9wcm9qZWN0
LnB5IGIvbGF5ZXJpbmRleC90b29scy9pbXBvcnRfcHJvamVjdC5weQppbmRleCAyN2EwZGUzLi44
ZTViZThhIDEwMDc1NQotLS0gYS9sYXllcmluZGV4L3Rvb2xzL2ltcG9ydF9wcm9qZWN0LnB5Cisr
KyBiL2xheWVyaW5kZXgvdG9vbHMvaW1wb3J0X3Byb2plY3QucHkKQEAgLTEsNCArMSw1IEBACiAj
IS91c3IvYmluL3B5dGhvbjMKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAogCiAjIElt
cG9ydCBhIHByb2plY3QgaW50byB0aGUgZGF0YWJhc2UuCiAjICBUaGlzIHdpbGwgc2NhbiB0aHJv
dWdoIHRoZSBkaXJlY3RvcmllcyBpbiBhIHByb2plY3QgYW5kIGZpbmQgYW55IGxheWVyIGFuZApk
aWZmIC0tZ2l0IGEvbGF5ZXJpbmRleC90b29scy9pbXBvcnRfd2lraV9sYXllcnMucHkgYi9sYXll
cmluZGV4L3Rvb2xzL2ltcG9ydF93aWtpX2xheWVycy5weQppbmRleCA3MWYyNmVhLi41MDJhNjc5
IDEwMDc1NQotLS0gYS9sYXllcmluZGV4L3Rvb2xzL2ltcG9ydF93aWtpX2xheWVycy5weQorKysg
Yi9sYXllcmluZGV4L3Rvb2xzL2ltcG9ydF93aWtpX2xheWVycy5weQpAQCAtMSw0ICsxLDUgQEAK
ICMhL3Vzci9iaW4vZW52IHB5dGhvbgorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCiAK
ICMgSW1wb3J0IGxheWVyIGluZGV4IHdpa2kgcGFnZSBpbnRvIGRhdGFiYXNlCiAjCmRpZmYgLS1n
aXQgYS9sYXllcmluZGV4L3Rvb2xzL2luaXRpYWxfZGJfZHVtcC5zaCBiL2xheWVyaW5kZXgvdG9v
bHMvaW5pdGlhbF9kYl9kdW1wLnNoCmluZGV4IDE2NzUwOTIuLmE2MzhhYWMgMTAwNzU1Ci0tLSBh
L2xheWVyaW5kZXgvdG9vbHMvaW5pdGlhbF9kYl9kdW1wLnNoCisrKyBiL2xheWVyaW5kZXgvdG9v
bHMvaW5pdGlhbF9kYl9kdW1wLnNoCkBAIC0xLDQgKzEsNSBAQAogIyEvYmluL3NoCisjIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiBNSVQKIAogIyBEdW1wIGRhdGFiYXNlIHdpdGhvdXQgdXNlciB0
YWJsZXMgKGZvciB0aGUgcHVycG9zZSBvZiBjcmVhdGluZyBhIGR1bXAKICMgdGhhdCBjYW4gYmUg
aW1wb3J0ZWQgaW50byBhIGZyZXNoIGRhdGFiYXNlKQpkaWZmIC0tZ2l0IGEvbGF5ZXJpbmRleC90
b29scy9zaXRlX25hbWUucHkgYi9sYXllcmluZGV4L3Rvb2xzL3NpdGVfbmFtZS5weQppbmRleCA4
MzZhMGMxLi44ZDc0NzEyIDEwMDc1NQotLS0gYS9sYXllcmluZGV4L3Rvb2xzL3NpdGVfbmFtZS5w
eQorKysgYi9sYXllcmluZGV4L3Rvb2xzL3NpdGVfbmFtZS5weQpAQCAtMSw0ICsxLDUgQEAKICMh
L3Vzci9iaW4vZW52IHB5dGhvbgorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCiAKICMg
VXBkYXRlcyBzaXRlIG5hbWUgaW4gRGphbmdvIGRhdGFiYXNlCiAjCmRpZmYgLS1naXQgYS9sYXll
cmluZGV4L3Rvb2xzL3VwZGF0ZV9jbGFzc2ljX3N0YXR1cy5weSBiL2xheWVyaW5kZXgvdG9vbHMv
dXBkYXRlX2NsYXNzaWNfc3RhdHVzLnB5CmluZGV4IDRlZGZjNzUuLjZhMjQzOWQgMTAwNzU1Ci0t
LSBhL2xheWVyaW5kZXgvdG9vbHMvdXBkYXRlX2NsYXNzaWNfc3RhdHVzLnB5CisrKyBiL2xheWVy
aW5kZXgvdG9vbHMvdXBkYXRlX2NsYXNzaWNfc3RhdHVzLnB5CkBAIC0xLDQgKzEsNSBAQAogIyEv
dXNyL2Jpbi9lbnYgcHl0aG9uCisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKIAogIyBV
cGRhdGUgY292ZXIgaW5mbyBmb3IgT0UtQ2xhc3NpYyAvIG90aGVyIGRpc3RybyByZWNpcGVzIGlu
IE9FIGxheWVyIGluZGV4IGRhdGFiYXNlCiAjCmRpZmYgLS1naXQgYS9sYXllcmluZGV4L3Rvb2xz
L3dlYmFwaS10ZXN0LnB5IGIvbGF5ZXJpbmRleC90b29scy93ZWJhcGktdGVzdC5weQppbmRleCAy
MGZjMzZiLi5lOTZhNmM4IDEwMDc1NQotLS0gYS9sYXllcmluZGV4L3Rvb2xzL3dlYmFwaS10ZXN0
LnB5CisrKyBiL2xheWVyaW5kZXgvdG9vbHMvd2ViYXBpLXRlc3QucHkKQEAgLTEsNCArMSw1IEBA
CiAjIS91c3IvYmluL2VudiBweXRob24zCisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQK
IAogIyBMYXllcmluZGV4IHdlYiBBUEkgdGVzdCB1dGlsaXR5CiAKZGlmZiAtLWdpdCBhL2xheWVy
aW5kZXgvdXBkYXRlLnB5IGIvbGF5ZXJpbmRleC91cGRhdGUucHkKaW5kZXggODUxYjc2Yy4uYmYw
YjFhNyAxMDA3NTUKLS0tIGEvbGF5ZXJpbmRleC91cGRhdGUucHkKKysrIGIvbGF5ZXJpbmRleC91
cGRhdGUucHkKQEAgLTEsNCArMSw1IEBACiAjIS91c3IvYmluL2VudiBweXRob24zCisjIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiBNSVQKIAogIyBGZXRjaCBsYXllciByZXBvc2l0b3JpZXMgYW5k
IHVwZGF0ZSBsYXllciBpbmRleCBkYXRhYmFzZQogIwpkaWZmIC0tZ2l0IGEvbGF5ZXJpbmRleC91
cGRhdGVfbGF5ZXIucHkgYi9sYXllcmluZGV4L3VwZGF0ZV9sYXllci5weQppbmRleCBmY2FlNTRm
Li45YzljYTY5IDEwMDY0NAotLS0gYS9sYXllcmluZGV4L3VwZGF0ZV9sYXllci5weQorKysgYi9s
YXllcmluZGV4L3VwZGF0ZV9sYXllci5weQpAQCAtMSw0ICsxLDUgQEAKICMhL3Vzci9iaW4vZW52
IHB5dGhvbgorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCiAKICMgVXBkYXRlIGxheWVy
IGluZGV4IGRhdGFiYXNlIGZvciBhIHNpbmdsZSBsYXllcgogIwpkaWZmIC0tZ2l0IGEvbGF5ZXJp
bmRleC91cmxzLnB5IGIvbGF5ZXJpbmRleC91cmxzLnB5CmluZGV4IDg5ZTcwYTIuLmEwM2FkNTIg
MTAwNjQ0Ci0tLSBhL2xheWVyaW5kZXgvdXJscy5weQorKysgYi9sYXllcmluZGV4L3VybHMucHkK
QEAgLTEsMyArMSw0IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKICMgbGF5ZXJp
bmRleC13ZWIgLSBVUkwgZGVmaW5pdGlvbnMKICMKICMgQ29weXJpZ2h0IChDKSAyMDEzLCAyMDE4
IEludGVsIENvcnBvcmF0aW9uCmRpZmYgLS1naXQgYS9sYXllcmluZGV4L3VybHNfYnJhbmNoLnB5
IGIvbGF5ZXJpbmRleC91cmxzX2JyYW5jaC5weQppbmRleCAyZmE5MjVhLi4xZDkxYTMyIDEwMDY0
NAotLS0gYS9sYXllcmluZGV4L3VybHNfYnJhbmNoLnB5CisrKyBiL2xheWVyaW5kZXgvdXJsc19i
cmFuY2gucHkKQEAgLTEsMyArMSw0IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQK
ICMgbGF5ZXJpbmRleC13ZWIgLSBCcmFuY2gtYmFzZWQgVVJMIGRlZmluaXRpb25zCiAjCiAjIENv
cHlyaWdodCAoQykgMjAxMy0yMDE2IEludGVsIENvcnBvcmF0aW9uCmRpZmYgLS1naXQgYS9sYXll
cmluZGV4L3V0aWxzLnB5IGIvbGF5ZXJpbmRleC91dGlscy5weQppbmRleCAyYTE2ODliLi4xNTM2
NTI0IDEwMDY0NAotLS0gYS9sYXllcmluZGV4L3V0aWxzLnB5CisrKyBiL2xheWVyaW5kZXgvdXRp
bHMucHkKQEAgLTEsMyArMSw0IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKICMg
VXRpbGl0aWVzIGZvciBsYXllcmluZGV4LXdlYgogIwogIyBDb3B5cmlnaHQgKEMpIDIwMTMgSW50
ZWwgQ29ycG9yYXRpb24KZGlmZiAtLWdpdCBhL2xheWVyaW5kZXgvdmlld3MucHkgYi9sYXllcmlu
ZGV4L3ZpZXdzLnB5CmluZGV4IDJkYWNmNTEuLjc0M2UyYjEgMTAwNjQ0Ci0tLSBhL2xheWVyaW5k
ZXgvdmlld3MucHkKKysrIGIvbGF5ZXJpbmRleC92aWV3cy5weQpAQCAtMSwzICsxLDQgQEAKKyMg
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAogIyBsYXllcmluZGV4LXdlYiAtIHZpZXcgZGVm
aW5pdGlvbnMKICMKICMgQ29weXJpZ2h0IChDKSAyMDEzLTIwMTggSW50ZWwgQ29ycG9yYXRpb24K
ZGlmZiAtLWdpdCBhL21hbmFnZS5weSBiL21hbmFnZS5weQppbmRleCBhODE1ZmEzLi43ZGEyZTQ3
IDEwMDc1NQotLS0gYS9tYW5hZ2UucHkKKysrIGIvbWFuYWdlLnB5CkBAIC0xLDQgKzEsNSBAQAog
IyEvdXNyL2Jpbi9lbnYgcHl0aG9uMworIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogQlNELTMt
Q2xhdXNlCiAKICMgbGF5ZXJpbmRleC13ZWIgLSBEamFuZ28gbWFuYWdlbWVudCBzY3JpcHQKICMK
ZGlmZiAtLWdpdCBhL3Bhc3N3b3JkX3ZhbGlkYXRpb24ucHkgYi9wYXNzd29yZF92YWxpZGF0aW9u
LnB5CmluZGV4IDg2NjkyNTAuLjdlN2Q5NDcgMTAwNjQ0Ci0tLSBhL3Bhc3N3b3JkX3ZhbGlkYXRp
b24ucHkKKysrIGIvcGFzc3dvcmRfdmFsaWRhdGlvbi5weQpAQCAtMSwzICsxLDQgQEAKKyMgU1BE
WC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAogZnJvbSBkamFuZ28uY29yZS5leGNlcHRpb25zIGlt
cG9ydCBWYWxpZGF0aW9uRXJyb3IKIGZyb20gZGphbmdvLnV0aWxzLnRyYW5zbGF0aW9uIGltcG9y
dCB1Z2V0dGV4dCBhcyBfCiAKZGlmZiAtLWdpdCBhL3Jycy9fX2luaXRfXy5weSBiL3Jycy9fX2lu
aXRfXy5weQppbmRleCAzZWFiMmZlLi5mOWUwYjY4IDEwMDY0NAotLS0gYS9ycnMvX19pbml0X18u
cHkKKysrIGIvcnJzL19faW5pdF9fLnB5CkBAIC0xLDIgKzEsMyBAQAorIyBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllcjogTUlUCiAKIGRlZmF1bHRfYXBwX2NvbmZpZyA9ICdycnMuYXBwcy5SZWNpcGVS
ZXBvcnRpbmdTeXN0ZW1Db25maWcnCmRpZmYgLS1naXQgYS9ycnMvYWRtaW4ucHkgYi9ycnMvYWRt
aW4ucHkKaW5kZXggNWY3NTAyNi4uZjdlY2E0MyAxMDA2NDQKLS0tIGEvcnJzL2FkbWluLnB5Cisr
KyBiL3Jycy9hZG1pbi5weQpAQCAtMSwzICsxLDQgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZp
ZXI6IE1JVAogIyBycnMtd2ViIC0gYWRtaW4gaW50ZXJmYWNlIGRlZmluaXRpb25zCiAjCiAjIENv
cHlyaWdodCAoQykgMjAxNCBJbnRlbCBDb3Jwb3JhdGlvbgpkaWZmIC0tZ2l0IGEvcnJzL2FwcHMu
cHkgYi9ycnMvYXBwcy5weQppbmRleCBlYTI1MDYwLi41NGNmNjdkIDEwMDY0NAotLS0gYS9ycnMv
YXBwcy5weQorKysgYi9ycnMvYXBwcy5weQpAQCAtMSwzICsxLDQgQEAKKyMgU1BEWC1MaWNlbnNl
LUlkZW50aWZpZXI6IE1JVAogZnJvbSBkamFuZ28uYXBwcyBpbXBvcnQgQXBwQ29uZmlnCiAKIApk
aWZmIC0tZ2l0IGEvcnJzL2NvbnRleHRfcHJvY2Vzc29ycy5weSBiL3Jycy9jb250ZXh0X3Byb2Nl
c3NvcnMucHkKaW5kZXggMGQ3OWJkMS4uYzY5NWFkYyAxMDA2NDQKLS0tIGEvcnJzL2NvbnRleHRf
cHJvY2Vzc29ycy5weQorKysgYi9ycnMvY29udGV4dF9wcm9jZXNzb3JzLnB5CkBAIC0xLDMgKzEs
NCBAQAorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCiAjIHJycy13ZWIgLSBjdXN0b20g
Y29udGV4dCBwcm9jZXNzb3IKICMKICMgQ29weXJpZ2h0IChDKSAyMDE0IEludGVsIENvcnBvcmF0
aW9uCmRpZmYgLS1naXQgYS9ycnMvbWlncmF0aW9ucy8wMDAxX2luaXRpYWwucHkgYi9ycnMvbWln
cmF0aW9ucy8wMDAxX2luaXRpYWwucHkKaW5kZXggZTYwYjkzNC4uMDMwZWViNSAxMDA2NDQKLS0t
IGEvcnJzL21pZ3JhdGlvbnMvMDAwMV9pbml0aWFsLnB5CisrKyBiL3Jycy9taWdyYXRpb25zLzAw
MDFfaW5pdGlhbC5weQpAQCAtMSwzICsxLDQgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6
IE1JVAogIyAtKi0gY29kaW5nOiB1dGYtOCAtKi0KIGZyb20gX19mdXR1cmVfXyBpbXBvcnQgdW5p
Y29kZV9saXRlcmFscwogCmRpZmYgLS1naXQgYS9ycnMvbWlncmF0aW9ucy8wMDAyX21haW50ZW5h
bmNlcGxhbi5weSBiL3Jycy9taWdyYXRpb25zLzAwMDJfbWFpbnRlbmFuY2VwbGFuLnB5CmluZGV4
IGI2NzE4ZGMuLjJiNjQ1ZjkgMTAwNjQ0Ci0tLSBhL3Jycy9taWdyYXRpb25zLzAwMDJfbWFpbnRl
bmFuY2VwbGFuLnB5CisrKyBiL3Jycy9taWdyYXRpb25zLzAwMDJfbWFpbnRlbmFuY2VwbGFuLnB5
CkBAIC0xLDMgKzEsNCBAQAorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCiAjIC0qLSBj
b2Rpbmc6IHV0Zi04IC0qLQogZnJvbSBfX2Z1dHVyZV9fIGltcG9ydCB1bmljb2RlX2xpdGVyYWxz
CiAKZGlmZiAtLWdpdCBhL3Jycy9taWdyYXRpb25zLzAwMDNfcmVsZWFzZV9wbGFuLnB5IGIvcnJz
L21pZ3JhdGlvbnMvMDAwM19yZWxlYXNlX3BsYW4ucHkKaW5kZXggOTM0YWM0Yi4uNTkzODFiYyAx
MDA2NDQKLS0tIGEvcnJzL21pZ3JhdGlvbnMvMDAwM19yZWxlYXNlX3BsYW4ucHkKKysrIGIvcnJz
L21pZ3JhdGlvbnMvMDAwM19yZWxlYXNlX3BsYW4ucHkKQEAgLTEsMyArMSw0IEBACisjIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiBNSVQKICMgLSotIGNvZGluZzogdXRmLTggLSotCiBmcm9tIF9f
ZnV0dXJlX18gaW1wb3J0IHVuaWNvZGVfbGl0ZXJhbHMKIApkaWZmIC0tZ2l0IGEvcnJzL21pZ3Jh
dGlvbnMvMDAwNF9tYWludF9wbGFuX2RlZmF1bHQucHkgYi9ycnMvbWlncmF0aW9ucy8wMDA0X21h
aW50X3BsYW5fZGVmYXVsdC5weQppbmRleCAxZDE5MmQwLi4yYTg2NjlhIDEwMDY0NAotLS0gYS9y
cnMvbWlncmF0aW9ucy8wMDA0X21haW50X3BsYW5fZGVmYXVsdC5weQorKysgYi9ycnMvbWlncmF0
aW9ucy8wMDA0X21haW50X3BsYW5fZGVmYXVsdC5weQpAQCAtMSwzICsxLDQgQEAKKyMgU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXI6IE1JVAogIyAtKi0gY29kaW5nOiB1dGYtOCAtKi0KIGZyb20gX19m
dXR1cmVfXyBpbXBvcnQgdW5pY29kZV9saXRlcmFscwogCmRpZmYgLS1naXQgYS9ycnMvbWlncmF0
aW9ucy8wMDA1X3JlbGVhc2VfcGxhbl9ub25udWxsLnB5IGIvcnJzL21pZ3JhdGlvbnMvMDAwNV9y
ZWxlYXNlX3BsYW5fbm9ubnVsbC5weQppbmRleCBjNzk3YWU1Li5hNDc4Y2Y4IDEwMDY0NAotLS0g
YS9ycnMvbWlncmF0aW9ucy8wMDA1X3JlbGVhc2VfcGxhbl9ub25udWxsLnB5CisrKyBiL3Jycy9t
aWdyYXRpb25zLzAwMDVfcmVsZWFzZV9wbGFuX25vbm51bGwucHkKQEAgLTEsMyArMSw0IEBACisj
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKICMgLSotIGNvZGluZzogdXRmLTggLSotCiBm
cm9tIF9fZnV0dXJlX18gaW1wb3J0IHVuaWNvZGVfbGl0ZXJhbHMKIApkaWZmIC0tZ2l0IGEvcnJz
L21pZ3JhdGlvbnMvMDAwNl9tYWludHBsYW5fZW1haWwucHkgYi9ycnMvbWlncmF0aW9ucy8wMDA2
X21haW50cGxhbl9lbWFpbC5weQppbmRleCAxNjFhZjA1Li4wOGZiMWNmIDEwMDY0NAotLS0gYS9y
cnMvbWlncmF0aW9ucy8wMDA2X21haW50cGxhbl9lbWFpbC5weQorKysgYi9ycnMvbWlncmF0aW9u
cy8wMDA2X21haW50cGxhbl9lbWFpbC5weQpAQCAtMSwzICsxLDQgQEAKKyMgU1BEWC1MaWNlbnNl
LUlkZW50aWZpZXI6IE1JVAogIyAtKi0gY29kaW5nOiB1dGYtOCAtKi0KIGZyb20gX19mdXR1cmVf
XyBpbXBvcnQgdW5pY29kZV9saXRlcmFscwogCmRpZmYgLS1naXQgYS9ycnMvbWlncmF0aW9ucy8w
MDA3X3B5dGhvbjIzLnB5IGIvcnJzL21pZ3JhdGlvbnMvMDAwN19weXRob24yMy5weQppbmRleCBh
N2E3MGZiLi5jMDc0ZjdmIDEwMDY0NAotLS0gYS9ycnMvbWlncmF0aW9ucy8wMDA3X3B5dGhvbjIz
LnB5CisrKyBiL3Jycy9taWdyYXRpb25zLzAwMDdfcHl0aG9uMjMucHkKQEAgLTEsMyArMSw0IEBA
CisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKICMgLSotIGNvZGluZzogdXRmLTggLSot
CiBmcm9tIF9fZnV0dXJlX18gaW1wb3J0IHVuaWNvZGVfbGl0ZXJhbHMKIApkaWZmIC0tZ2l0IGEv
cnJzL21pZ3JhdGlvbnMvMDAwOF91cGdyYWRlX2luZm8ucHkgYi9ycnMvbWlncmF0aW9ucy8wMDA4
X3VwZ3JhZGVfaW5mby5weQppbmRleCBjYmFjZmMzLi4yZjJkOWRiIDEwMDY0NAotLS0gYS9ycnMv
bWlncmF0aW9ucy8wMDA4X3VwZ3JhZGVfaW5mby5weQorKysgYi9ycnMvbWlncmF0aW9ucy8wMDA4
X3VwZ3JhZGVfaW5mby5weQpAQCAtMSwzICsxLDQgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZp
ZXI6IE1JVAogIyAtKi0gY29kaW5nOiB1dGYtOCAtKi0KIGZyb20gX19mdXR1cmVfXyBpbXBvcnQg
dW5pY29kZV9saXRlcmFscwogCmRpZmYgLS1naXQgYS9ycnMvbWlncmF0aW9ucy8wMDA5X3JtaF9s
YXllcmJyYW5jaC5weSBiL3Jycy9taWdyYXRpb25zLzAwMDlfcm1oX2xheWVyYnJhbmNoLnB5Cmlu
ZGV4IGIyYTdiODYuLjBjZDc4YTggMTAwNjQ0Ci0tLSBhL3Jycy9taWdyYXRpb25zLzAwMDlfcm1o
X2xheWVyYnJhbmNoLnB5CisrKyBiL3Jycy9taWdyYXRpb25zLzAwMDlfcm1oX2xheWVyYnJhbmNo
LnB5CkBAIC0xLDMgKzEsNCBAQAorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCiAjIC0q
LSBjb2Rpbmc6IHV0Zi04IC0qLQogZnJvbSBfX2Z1dHVyZV9fIGltcG9ydCB1bmljb2RlX2xpdGVy
YWxzCiAKZGlmZiAtLWdpdCBhL3Jycy9taWdyYXRpb25zLzAwMTBfcmVjaXBlbWFpbnRlbmFuY2Vs
aW5rLnB5IGIvcnJzL21pZ3JhdGlvbnMvMDAxMF9yZWNpcGVtYWludGVuYW5jZWxpbmsucHkKaW5k
ZXggMmQ5NGY0NC4uMDkyMTNmZSAxMDA2NDQKLS0tIGEvcnJzL21pZ3JhdGlvbnMvMDAxMF9yZWNp
cGVtYWludGVuYW5jZWxpbmsucHkKKysrIGIvcnJzL21pZ3JhdGlvbnMvMDAxMF9yZWNpcGVtYWlu
dGVuYW5jZWxpbmsucHkKQEAgLTEsMyArMSw0IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
OiBNSVQKICMgLSotIGNvZGluZzogdXRmLTggLSotCiBmcm9tIF9fZnV0dXJlX18gaW1wb3J0IHVu
aWNvZGVfbGl0ZXJhbHMKIApkaWZmIC0tZ2l0IGEvcnJzL21pZ3JhdGlvbnMvMDAxMV9yZWxlYXNl
X25hbWVfdW5pcXVlLnB5IGIvcnJzL21pZ3JhdGlvbnMvMDAxMV9yZWxlYXNlX25hbWVfdW5pcXVl
LnB5CmluZGV4IDBjMjQ0MmQuLjZkZWVmMzQgMTAwNjQ0Ci0tLSBhL3Jycy9taWdyYXRpb25zLzAw
MTFfcmVsZWFzZV9uYW1lX3VuaXF1ZS5weQorKysgYi9ycnMvbWlncmF0aW9ucy8wMDExX3JlbGVh
c2VfbmFtZV91bmlxdWUucHkKQEAgLTEsMyArMSw0IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlm
aWVyOiBNSVQKICMgLSotIGNvZGluZzogdXRmLTggLSotCiBmcm9tIF9fZnV0dXJlX18gaW1wb3J0
IHVuaWNvZGVfbGl0ZXJhbHMKIApkaWZmIC0tZ2l0IGEvcnJzL21pZ3JhdGlvbnMvMDAxMl9yZXVw
X2xheWVyYnJhbmNoX2ZpZWxkLnB5IGIvcnJzL21pZ3JhdGlvbnMvMDAxMl9yZXVwX2xheWVyYnJh
bmNoX2ZpZWxkLnB5CmluZGV4IDE4YWViYmQuLjQ2Mjg3ZTUgMTAwNjQ0Ci0tLSBhL3Jycy9taWdy
YXRpb25zLzAwMTJfcmV1cF9sYXllcmJyYW5jaF9maWVsZC5weQorKysgYi9ycnMvbWlncmF0aW9u
cy8wMDEyX3JldXBfbGF5ZXJicmFuY2hfZmllbGQucHkKQEAgLTEsMyArMSw0IEBACisjIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiBNSVQKICMgLSotIGNvZGluZzogdXRmLTggLSotCiBmcm9tIF9f
ZnV0dXJlX18gaW1wb3J0IHVuaWNvZGVfbGl0ZXJhbHMKIApkaWZmIC0tZ2l0IGEvcnJzL21pZ3Jh
dGlvbnMvMDAxM19yZXVwX2xheWVyYnJhbmNoX3BvcHVsYXRlLnB5IGIvcnJzL21pZ3JhdGlvbnMv
MDAxM19yZXVwX2xheWVyYnJhbmNoX3BvcHVsYXRlLnB5CmluZGV4IGY1ZTg4YTcuLmVjMzJiZjYg
MTAwNjQ0Ci0tLSBhL3Jycy9taWdyYXRpb25zLzAwMTNfcmV1cF9sYXllcmJyYW5jaF9wb3B1bGF0
ZS5weQorKysgYi9ycnMvbWlncmF0aW9ucy8wMDEzX3JldXBfbGF5ZXJicmFuY2hfcG9wdWxhdGUu
cHkKQEAgLTEsMyArMSw0IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKICMgLSot
IGNvZGluZzogdXRmLTggLSotCiBmcm9tIF9fZnV0dXJlX18gaW1wb3J0IHVuaWNvZGVfbGl0ZXJh
bHMKIApkaWZmIC0tZ2l0IGEvcnJzL21pZ3JhdGlvbnMvMDAxNF9yZXVwX2xheWVyYnJhbmNoX25v
bm51bGwucHkgYi9ycnMvbWlncmF0aW9ucy8wMDE0X3JldXBfbGF5ZXJicmFuY2hfbm9ubnVsbC5w
eQppbmRleCAxZWU2ZWU5Li4xNTA0Zjg4IDEwMDY0NAotLS0gYS9ycnMvbWlncmF0aW9ucy8wMDE0
X3JldXBfbGF5ZXJicmFuY2hfbm9ubnVsbC5weQorKysgYi9ycnMvbWlncmF0aW9ucy8wMDE0X3Jl
dXBfbGF5ZXJicmFuY2hfbm9ubnVsbC5weQpAQCAtMSwzICsxLDQgQEAKKyMgU1BEWC1MaWNlbnNl
LUlkZW50aWZpZXI6IE1JVAogIyAtKi0gY29kaW5nOiB1dGYtOCAtKi0KIGZyb20gX19mdXR1cmVf
XyBpbXBvcnQgdW5pY29kZV9saXRlcmFscwogCmRpZmYgLS1naXQgYS9ycnMvbWlncmF0aW9ucy8w
MDE1X3JtaF9sYXllcmJyYW5jaF9wb3B1bGF0ZS5weSBiL3Jycy9taWdyYXRpb25zLzAwMTVfcm1o
X2xheWVyYnJhbmNoX3BvcHVsYXRlLnB5CmluZGV4IDVjM2Q1ZTMuLjc4NmNmMjkgMTAwNjQ0Ci0t
LSBhL3Jycy9taWdyYXRpb25zLzAwMTVfcm1oX2xheWVyYnJhbmNoX3BvcHVsYXRlLnB5CisrKyBi
L3Jycy9taWdyYXRpb25zLzAwMTVfcm1oX2xheWVyYnJhbmNoX3BvcHVsYXRlLnB5CkBAIC0xLDMg
KzEsNCBAQAorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCiAjIC0qLSBjb2Rpbmc6IHV0
Zi04IC0qLQogZnJvbSBfX2Z1dHVyZV9fIGltcG9ydCB1bmljb2RlX2xpdGVyYWxzCiAKZGlmZiAt
LWdpdCBhL3Jycy9taWdyYXRpb25zLzAwMTZfcm1oX2xheWVyYnJhbmNoX25vbm51bGwucHkgYi9y
cnMvbWlncmF0aW9ucy8wMDE2X3JtaF9sYXllcmJyYW5jaF9ub25udWxsLnB5CmluZGV4IDVjMTky
ZmQuLmZlZTJiM2MgMTAwNjQ0Ci0tLSBhL3Jycy9taWdyYXRpb25zLzAwMTZfcm1oX2xheWVyYnJh
bmNoX25vbm51bGwucHkKKysrIGIvcnJzL21pZ3JhdGlvbnMvMDAxNl9ybWhfbGF5ZXJicmFuY2hf
bm9ubnVsbC5weQpAQCAtMSwzICsxLDQgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1J
VAogIyAtKi0gY29kaW5nOiB1dGYtOCAtKi0KIGZyb20gX19mdXR1cmVfXyBpbXBvcnQgdW5pY29k
ZV9saXRlcmFscwogCmRpZmYgLS1naXQgYS9ycnMvbWlncmF0aW9ucy8wMDE3X21haW50ZW5hbmNl
cGxhbl9tYWludGFpbmVyX3N0eWxlLnB5IGIvcnJzL21pZ3JhdGlvbnMvMDAxN19tYWludGVuYW5j
ZXBsYW5fbWFpbnRhaW5lcl9zdHlsZS5weQppbmRleCAyNDNkNDNhLi45ZGRmOWRkIDEwMDY0NAot
LS0gYS9ycnMvbWlncmF0aW9ucy8wMDE3X21haW50ZW5hbmNlcGxhbl9tYWludGFpbmVyX3N0eWxl
LnB5CisrKyBiL3Jycy9taWdyYXRpb25zLzAwMTdfbWFpbnRlbmFuY2VwbGFuX21haW50YWluZXJf
c3R5bGUucHkKQEAgLTEsMyArMSw0IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBCU0Qt
My1DbGF1c2UKICMgLSotIGNvZGluZzogdXRmLTggLSotCiAjIEdlbmVyYXRlZCBieSBEamFuZ28g
MS4xMS4xMiBvbiAyMDE4LTA0LTE4IDAyOjI2CiBmcm9tIF9fZnV0dXJlX18gaW1wb3J0IHVuaWNv
ZGVfbGl0ZXJhbHMKZGlmZiAtLWdpdCBhL3Jycy9taWdyYXRpb25zLzAwMThfcm1oX3VuaXF1ZS5w
eSBiL3Jycy9taWdyYXRpb25zLzAwMThfcm1oX3VuaXF1ZS5weQppbmRleCBlMzc4MzU3Li4xYTE1
ZDgzIDEwMDY0NAotLS0gYS9ycnMvbWlncmF0aW9ucy8wMDE4X3JtaF91bmlxdWUucHkKKysrIGIv
cnJzL21pZ3JhdGlvbnMvMDAxOF9ybWhfdW5pcXVlLnB5CkBAIC0xLDMgKzEsNCBAQAorIyBTUERY
LUxpY2Vuc2UtSWRlbnRpZmllcjogQlNELTMtQ2xhdXNlCiAjIC0qLSBjb2Rpbmc6IHV0Zi04IC0q
LQogIyBHZW5lcmF0ZWQgYnkgRGphbmdvIDEuMTEuMTIgb24gMjAxOC0wNC0xOCAwNTo0MgogZnJv
bSBfX2Z1dHVyZV9fIGltcG9ydCB1bmljb2RlX2xpdGVyYWxzCmRpZmYgLS1naXQgYS9ycnMvbWln
cmF0aW9ucy8wMDE5X21haW50cGxhbl9hZG1pbl9kZWxldGVfbnVsbC5weSBiL3Jycy9taWdyYXRp
b25zLzAwMTlfbWFpbnRwbGFuX2FkbWluX2RlbGV0ZV9udWxsLnB5CmluZGV4IDUzNjMxODEuLjcx
ZTEzODcgMTAwNjQ0Ci0tLSBhL3Jycy9taWdyYXRpb25zLzAwMTlfbWFpbnRwbGFuX2FkbWluX2Rl
bGV0ZV9udWxsLnB5CisrKyBiL3Jycy9taWdyYXRpb25zLzAwMTlfbWFpbnRwbGFuX2FkbWluX2Rl
bGV0ZV9udWxsLnB5CkBAIC0xLDMgKzEsNCBAQAorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
QlNELTMtQ2xhdXNlCiAjIC0qLSBjb2Rpbmc6IHV0Zi04IC0qLQogIyBHZW5lcmF0ZWQgYnkgRGph
bmdvIDEuMTEuMTYgb24gMjAxOS0wMi0yNSAyMjo1MAogZnJvbSBfX2Z1dHVyZV9fIGltcG9ydCB1
bmljb2RlX2xpdGVyYWxzCmRpZmYgLS1naXQgYS9ycnMvbWlncmF0aW9ucy9fX2luaXRfXy5weSBi
L3Jycy9taWdyYXRpb25zL19faW5pdF9fLnB5CmluZGV4IGU2OWRlMjkuLjU0OGQyZDQgMTAwNjQ0
Ci0tLSBhL3Jycy9taWdyYXRpb25zL19faW5pdF9fLnB5CisrKyBiL3Jycy9taWdyYXRpb25zL19f
aW5pdF9fLnB5CkBAIC0wLDAgKzEgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVApk
aWZmIC0tZ2l0IGEvcnJzL21vZGVscy5weSBiL3Jycy9tb2RlbHMucHkKaW5kZXggMmZmNmY4ZS4u
NWFlYjY2ZiAxMDA2NDQKLS0tIGEvcnJzL21vZGVscy5weQorKysgYi9ycnMvbW9kZWxzLnB5CkBA
IC0xLDMgKzEsNCBAQAorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCiAjIHJycy13ZWIg
LSBtb2RlbCBkZWZpbml0aW9ucwogIwogIyBDb3B5cmlnaHQgKEMpIDIwMTQgSW50ZWwgQ29ycG9y
YXRpb24KZGlmZiAtLWdpdCBhL3Jycy9zdGF0aWMvY3NzL3Jycy1hZGRpdGlvbmFsLmNzcyBiL3Jy
cy9zdGF0aWMvY3NzL3Jycy1hZGRpdGlvbmFsLmNzcwppbmRleCAwMTE3YThkLi4yMDMwMWFlIDEw
MDY0NAotLS0gYS9ycnMvc3RhdGljL2Nzcy9ycnMtYWRkaXRpb25hbC5jc3MKKysrIGIvcnJzL3N0
YXRpYy9jc3MvcnJzLWFkZGl0aW9uYWwuY3NzCkBAIC0xLDMgKzEsNCBAQAorLyogU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXI6IE1JVCAqLwogLnJlY2lwZV9jb2x1bW4gewogICAgIG1heC13aWR0aDog
MTUwcHg7CiAgICAgd29yZC13cmFwOiBicmVhay13b3JkOwpkaWZmIC0tZ2l0IGEvcnJzL3Rvb2xz
L2NvbW1vbi5weSBiL3Jycy90b29scy9jb21tb24ucHkKaW5kZXggNzk5NjgyOC4uMDc5NzllZiAx
MDA2NDQKLS0tIGEvcnJzL3Rvb2xzL2NvbW1vbi5weQorKysgYi9ycnMvdG9vbHMvY29tbW9uLnB5
CkBAIC0xLDMgKzEsNCBAQAorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCiAjIENvbW1v
biBmdW5jdGlvbmFsaXR5IGZvciBSUlMgdG9vbHMuIAogIwogIyBDb3B5cmlnaHQgKEMpIDIwMTUg
SW50ZWwgQ29ycG9yYXRpb24KZGlmZiAtLWdpdCBhL3Jycy90b29scy9kYWlseV9ydW4uc2ggYi9y
cnMvdG9vbHMvZGFpbHlfcnVuLnNoCmluZGV4IDk5ZjBjMDEuLmI0NTViOGIgMTAwNzU1Ci0tLSBh
L3Jycy90b29scy9kYWlseV9ydW4uc2gKKysrIGIvcnJzL3Rvb2xzL2RhaWx5X3J1bi5zaApAQCAt
MSw0ICsxLDUgQEAKICMhL2Jpbi9iYXNoCisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQK
IAogcnJzX2Rpcj1fX1JSU19QQVRIX18KIHZlbnZfYWN0aXZhdGU9X19WRU5WX0FDVElWQVRFX18K
ZGlmZiAtLWdpdCBhL3Jycy90b29scy9oaXN0b3J5dG9vbC5weSBiL3Jycy90b29scy9oaXN0b3J5
dG9vbC5weQppbmRleCAwNjQ1NmQxLi5jZjRmZTNiIDEwMDc1NQotLS0gYS9ycnMvdG9vbHMvaGlz
dG9yeXRvb2wucHkKKysrIGIvcnJzL3Rvb2xzL2hpc3Rvcnl0b29sLnB5CkBAIC0xLDQgKzEsNSBA
QAogIyEvdXNyL2Jpbi9lbnYgcHl0aG9uMworIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlU
CiAKICMgUlJTIFVwc3RyZWFtIGhpc3RvcnkgZXhwb3J0L2ltcG9ydCB0b29sCiAjCmRpZmYgLS1n
aXQgYS9ycnMvdG9vbHMvcnJzX2Rpc3Ryb3MucHkgYi9ycnMvdG9vbHMvcnJzX2Rpc3Ryb3MucHkK
aW5kZXggZTgwMzMyOC4uMTgyNGQyOSAxMDA3NTUKLS0tIGEvcnJzL3Rvb2xzL3Jyc19kaXN0cm9z
LnB5CisrKyBiL3Jycy90b29scy9ycnNfZGlzdHJvcy5weQpAQCAtMSw0ICsxLDUgQEAKICMhL3Vz
ci9iaW4vZW52IHB5dGhvbjMKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAogCiAjIFVw
ZGF0ZSBjdXJyZW50IGRpc3RybyBpbmZvcm1hdGlvbiBmb3IgcmVjaXBlcy4KICMKZGlmZiAtLWdp
dCBhL3Jycy90b29scy9ycnNfbWFpbnRhaW5lcl9oaXN0b3J5LnB5IGIvcnJzL3Rvb2xzL3Jyc19t
YWludGFpbmVyX2hpc3RvcnkucHkKaW5kZXggZmFhYTdjMC4uZGUyMzQzZiAxMDA3NTUKLS0tIGEv
cnJzL3Rvb2xzL3Jyc19tYWludGFpbmVyX2hpc3RvcnkucHkKKysrIGIvcnJzL3Rvb2xzL3Jyc19t
YWludGFpbmVyX2hpc3RvcnkucHkKQEAgLTEsNCArMSw1IEBACiAjIS91c3IvYmluL2VudiBweXRo
b24zCisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKIAogIyBTdGFuZGFsb25lIHNjcmlw
dCB3aGljaCByZWJ1aWxkcyB0aGUgaGlzdG9yeSBvZiBtYWludGFpbmVyc2hpcAogIwpkaWZmIC0t
Z2l0IGEvcnJzL3Rvb2xzL3Jyc191cGdyYWRlX2hpc3RvcnkucHkgYi9ycnMvdG9vbHMvcnJzX3Vw
Z3JhZGVfaGlzdG9yeS5weQppbmRleCBhZWJmNWFhLi43MThmZDg3IDEwMDc1NQotLS0gYS9ycnMv
dG9vbHMvcnJzX3VwZ3JhZGVfaGlzdG9yeS5weQorKysgYi9ycnMvdG9vbHMvcnJzX3VwZ3JhZGVf
aGlzdG9yeS5weQpAQCAtMSw0ICsxLDUgQEAKICMhL3Vzci9iaW4vZW52IHB5dGhvbjMKKyMgU1BE
WC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAogCiAjIFN0YW5kYWxvbmUgc2NyaXB0IHdoaWNoIHJl
YnVpbGRzIHRoZSBoaXN0b3J5IG9mIGFsbCB0aGUgdXBncmFkZXMuCiAjCmRpZmYgLS1naXQgYS9y
cnMvdG9vbHMvcnJzX3Vwc3RyZWFtX2VtYWlsLnB5IGIvcnJzL3Rvb2xzL3Jyc191cHN0cmVhbV9l
bWFpbC5weQppbmRleCAwYzNkYmUyLi4wZjdlNjRjIDEwMDc1NQotLS0gYS9ycnMvdG9vbHMvcnJz
X3Vwc3RyZWFtX2VtYWlsLnB5CisrKyBiL3Jycy90b29scy9ycnNfdXBzdHJlYW1fZW1haWwucHkK
QEAgLTEsNCArMSw1IEBACiAjIS91c3IvYmluL2VudiBweXRob24zCisjIFNQRFgtTGljZW5zZS1J
ZGVudGlmaWVyOiBNSVQKICMgLSotIGNvZGluZzogdXRmLTggLSotCiAKICMgU2VuZCBlbWFpbCB0
byBtYWludGFpbmVycyBhYm91dCB0aGUgY3VycmVudCBzdGF0dXMgb2YgdGhlIHJlY2lwZXMuCmRp
ZmYgLS1naXQgYS9ycnMvdG9vbHMvcnJzX3Vwc3RyZWFtX2hpc3RvcnkucHkgYi9ycnMvdG9vbHMv
cnJzX3Vwc3RyZWFtX2hpc3RvcnkucHkKaW5kZXggZTkzNDZhMS4uYTlhYzc1YyAxMDA3NTUKLS0t
IGEvcnJzL3Rvb2xzL3Jyc191cHN0cmVhbV9oaXN0b3J5LnB5CisrKyBiL3Jycy90b29scy9ycnNf
dXBzdHJlYW1faGlzdG9yeS5weQpAQCAtMSw0ICsxLDUgQEAKICMhL3Vzci9iaW4vZW52IHB5dGhv
bjMKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAogCiAjIEdldCB1cHN0cmVhbSBpbmZv
cm1hdGlvbiBmb3IgcmVjaXBlcy4KICMKZGlmZiAtLWdpdCBhL3Jycy90b29scy91cGdyYWRlX2hp
c3RvcnlfaW50ZXJuYWwucHkgYi9ycnMvdG9vbHMvdXBncmFkZV9oaXN0b3J5X2ludGVybmFsLnB5
CmluZGV4IGFiY2MyZjIuLmM4NTdkOGQgMTAwNjQ0Ci0tLSBhL3Jycy90b29scy91cGdyYWRlX2hp
c3RvcnlfaW50ZXJuYWwucHkKKysrIGIvcnJzL3Rvb2xzL3VwZ3JhZGVfaGlzdG9yeV9pbnRlcm5h
bC5weQpAQCAtMSwzICsxLDQgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAogIyBJ
bnRlcm5hbCBzY3JpcHQgY2FsbGVkIGJ5IHJyc191cGdyYWRlX2hpc3RvcnkucHkKICMKICMgVG8g
ZGV0ZWN0IHBhY2thZ2UgdmVyc2lvbnMgb2YgdGhlIHJlY2lwZXMgdGhlIHNjcmlwdCB1c2VzIHRo
ZSBuYW1lIG9mIHRoZSByZWNpcGUuCmRpZmYgLS1naXQgYS9ycnMvdXJscy5weSBiL3Jycy91cmxz
LnB5CmluZGV4IDMwZDg2YjcuLmI0MzFiY2UgMTAwNjQ0Ci0tLSBhL3Jycy91cmxzLnB5CisrKyBi
L3Jycy91cmxzLnB5CkBAIC0xLDMgKzEsNCBAQAorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
TUlUCiBmcm9tIGRqYW5nby5jb25mLnVybHMgaW1wb3J0IGluY2x1ZGUsIHVybAogCiBmcm9tIHJy
cy5tb2RlbHMgaW1wb3J0IFJlbGVhc2UsIE1pbGVzdG9uZQpkaWZmIC0tZ2l0IGEvcnJzL3ZpZXdz
LnB5IGIvcnJzL3ZpZXdzLnB5CmluZGV4IGExNmY1M2MuLjcyZDQ2ZTcgMTAwNjQ0Ci0tLSBhL3Jy
cy92aWV3cy5weQorKysgYi9ycnMvdmlld3MucHkKQEAgLTEsMyArMSw0IEBACisjIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiBNSVQKIGltcG9ydCB1cmxsaWIKIAogaW1wb3J0IGNzdgpkaWZmIC0t
Z2l0IGEvcnJzL3dzZ2kucHkgYi9ycnMvd3NnaS5weQppbmRleCAxZDdlN2I3Li41MTRjMmIwIDEw
MDY0NAotLS0gYS9ycnMvd3NnaS5weQorKysgYi9ycnMvd3NnaS5weQpAQCAtMSwzICsxLDQgQEAK
KyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAogaW1wb3J0IG9zCiAKIG9zLmVudmlyb24u
c2V0ZGVmYXVsdCgiREpBTkdPX1NFVFRJTkdTX01PRFVMRSIsICJzZXR0aW5ncyIpCmRpZmYgLS1n
aXQgYS9zZXR0aW5ncy5weSBiL3NldHRpbmdzLnB5CmluZGV4IGU5YmY2Y2MuLmQ2OWVkMWQgMTAw
NjQ0Ci0tLSBhL3NldHRpbmdzLnB5CisrKyBiL3NldHRpbmdzLnB5CkBAIC0xLDMgKzEsNCBAQAor
IyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogQlNELTMtQ2xhdXNlCiAjIERqYW5nbyBzZXR0aW5n
cyBmb3IgbGF5ZXJpbmRleCBwcm9qZWN0LgogIwogIyBCYXNlZCBvbiBzZXR0aW5ncy5weSBmcm9t
IHRoZSBEamFuZ28gcHJvamVjdCB0ZW1wbGF0ZQpkaWZmIC0tZ2l0IGEvdGVzdHMvdGVzdF91cGRh
dGUucHkgYi90ZXN0cy90ZXN0X3VwZGF0ZS5weQppbmRleCBlMDA3NzVkLi5hZTc5Y2NjIDEwMDY0
NAotLS0gYS90ZXN0cy90ZXN0X3VwZGF0ZS5weQorKysgYi90ZXN0cy90ZXN0X3VwZGF0ZS5weQpA
QCAtMSwzICsxLDQgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAogIyBsYXllcmlu
ZGV4LXdlYiAtIHRlc3RzIGZvciB1cGRhdGUgc2NyaXB0CiAjCiAjIENvcHlyaWdodCAoQykgMjAx
OCBJbnRlbCBDb3Jwb3JhdGlvbgpkaWZmIC0tZ2l0IGEvdXJscy5weSBiL3VybHMucHkKaW5kZXgg
NDEzMjRkYS4uYWZiZWRlZCAxMDA2NDQKLS0tIGEvdXJscy5weQorKysgYi91cmxzLnB5CkBAIC0x
LDMgKzEsNCBAQAorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogQlNELTMtQ2xhdXNlCiAjIGxh
eWVyaW5kZXgtd2ViIC0gVVJMcwogIwogIyBCYXNlZCBvbiB0aGUgRGphbmdvIHByb2plY3QgdGVt
cGxhdGUKZGlmZiAtLWdpdCBhL3dzZ2kucHkgYi93c2dpLnB5CmluZGV4IDk5ZjA5MTUuLjNhYTQx
ZGQgMTAwNjQ0Ci0tLSBhL3dzZ2kucHkKKysrIGIvd3NnaS5weQpAQCAtMSwzICsxLDQgQEAKKyMg
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAogaW1wb3J0IG9zLCBzeXMKIG9zLmVudmlyb24u
c2V0ZGVmYXVsdCgiREpBTkdPX1NFVFRJTkdTX01PRFVMRSIsICJzZXR0aW5ncyIpCiBzeXMucGF0
aC5hcHBlbmQoJy92YXIvd3d3L2h0bWwvbGF5ZXJpbmRleCcpCi0tIAoyLjcuNAoK

--000000000000b0db8d05957fbdfc--
