Return-Path: <itay.sperling@argus-sec.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67B0DE00BE2; Wed, 16 Oct 2019 00:14:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_IMAGE_ONLY_24, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, T_REMOTE_IMAGE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 1.6 HTML_IMAGE_ONLY_24 BODY: HTML: images with 2000-2400 bytes of
	words *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.51 listed in list.dnswl.org]
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com
	[209.85.167.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76145E00782
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2019 00:14:19 -0700 (PDT)
Received: by mail-lf1-f51.google.com with SMTP id t8so16482417lfc.13
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2019 00:14:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=argus-sec.com; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=pMGzeTYGkwFq7zgOlSjyK1/sPY+weHTOvW8l3ok72VU=;
	b=p/j9Ox/bQUIXi0ZGaltfuI8Aofwb2MdCjxONAuLw2oS+taCCy29cY7n/FtePswf94y
	m5KBmfOqpR1ncMEj0zGN3+B6XSy/X36rCeiyrl7KnothXhmUFritidApw1Vb0y34Sbq1
	UCohAeZU9KaAXNTI5S1PUYph5+EPNf0Y9yYvgbQf4aN0IV3mMS/hDbuY73z+YUefupLZ
	vyPYmBY3nQxm1pGVq+wbhRzvFaMEeSuYIOR9cWpRrZ0NXj1DCbuQwKOFnEpL3aqiGwci
	Hd0Vsjc0y+J00kHk363nhMBvt37CHWO+//+1LpJKbd5kfwrstGlXaLEMxlCxUlnjx1xs
	pJ4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=pMGzeTYGkwFq7zgOlSjyK1/sPY+weHTOvW8l3ok72VU=;
	b=K9Dc4BTytA7Xaj6Wm2BERGKYzviBtvw79TdrE6NYbRP6frpyChJ/XHE6w29LgxG6oB
	fNAg+S9s720WZcbkau5hz3nPChtG5Uek2utSzQNkyc1eHJH1oNLd4KF5aUX4l6AYL0fz
	oOEl1/9iex40dlO0p+kpd4uo7rB9jx/85Yow6t0eWQozzSr1mClmgK1iJtgXXIURlmqB
	APKXrZZ2rK8Rg7IbjxK8JCSveV7iepCkP0mj2h7hIKHy/N+MB5EbJaiBRJz3NdyumQyf
	GFDxnytlLeDpvhm+lM0CvrRJucEWEJUuq+IwW/uaAuKeSauYKzEFoj5sBzhdcKHVQQNR
	LMsw==
X-Gm-Message-State: APjAAAWBLnwTyvrKedXgqc6QFWt8J916Wgg2/tR7w2QHkKJ6HZf6iSaR
	UrJw/0oFhRmsqPSi958NWMJzVLqOUieahr/+3UKuEhXaAS4=
X-Google-Smtp-Source: APXvYqy4VflM/OO9x8xD9fJEFIosAfwvTh/gAzlUZ/SSnNlQrlBjdt9DhEMeGnQbJIn74QK26EB28CV7sJVYqXyVzEo=
X-Received: by 2002:a19:640c:: with SMTP id y12mr25006880lfb.78.1571210058082; 
	Wed, 16 Oct 2019 00:14:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAHyAnn0L4Z6t3UFXKi08K1DkKbrWwDHMmgMmgWrFAd5oTpRdKw@mail.gmail.com>
In-Reply-To: <CAHyAnn0L4Z6t3UFXKi08K1DkKbrWwDHMmgMmgWrFAd5oTpRdKw@mail.gmail.com>
From: Itay Sperling <itay.sperling@argus-sec.com>
Date: Wed, 16 Oct 2019 10:14:01 +0300
Message-ID: <CAHyAnn1d=3OFADTF2PXq2aen=rYH3qzQaqN6kJXYfpNKdLHgBA@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Thu, 17 Oct 2019 08:07:18 -0700
Subject: meta-selinux | meson-enable-selinux breaks
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
X-List-Received-Date: Wed, 16 Oct 2019 07:14:20 -0000
X-Groupsio-MsgNum: 46960
Content-Type: multipart/mixed; boundary="000000000000614a37059501d966"

--000000000000614a37059501d966
Content-Type: multipart/alternative; boundary="000000000000614a35059501d964"

--000000000000614a35059501d964
Content-Type: text/plain; charset="UTF-8"

Hi,
I just built Yocto (warrior) with meta-selinux and got this error:

> meson.build:1:0: ERROR:  Value disabled is not boolean (true or false).


It appears the file *classes/meson-enable-selinux.bbclass* has incorrect
values.

Attached a patch that fixes the problem.

Itay

[image: Argus Logo]
*Itay Sperling* *|* Software Engineer, *Argus **Cyber Security Ltd.*
itay.sperling@argus-sec.com *|*
www.argus-sec.com *|*

--000000000000614a35059501d964
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div dir=3D"ltr" class=3D"gmail_signature" data-smart=
mail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Hi,<br></di=
v></div></div></div></div><div class=3D"gmail_quote"><div dir=3D"ltr">I jus=
t built Yocto (warrior) with meta-selinux and got this error:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">meson.build:1:0: ERROR: =C2=A0Value=
 disabled is not boolean (true or false).</blockquote><br>It appears the fi=
le <i>classes/meson-enable-selinux.bbclass</i>=C2=A0has incorrect values.<b=
r><br>Attached a patch that fixes=C2=A0the problem.<br><br>Itay<br><br clea=
r=3D"all"><div><div dir=3D"ltr" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr"><div><div dir=3D"ltr"><table style=3D"font-size:13px;color:rgb(0,0=
,0);font-family:helvetica,arial"><tbody><tr><td style=3D"padding:0px 5px 0p=
x 0px;border-width:0px 1px 0px 0px;border-right-style:solid;border-right-co=
lor:rgb(204,204,204)"><img src=3D"https://argus-sec.com/wp-content/uploads/=
2016/06/email-signature.png" alt=3D"Argus Logo" title=3D"Argus Logo" style=
=3D"vertical-align:middle;border:none;margin-right:0px;width:120px;height:5=
0px;max-height:50px"></td><td style=3D"padding:0px 0px 0px 5px;border:0px;o=
utline:0px"><table cellspacing=3D"0" cellpadding=3D"0" border=3D"0"><tbody>=
<tr><td><span style=3D"color:rgb(0,114,177)"><b>Itay Sperling</b>=C2=A0</sp=
an><b style=3D"color:rgb(136,136,136)">|</b>=C2=A0<font color=3D"#888888"><=
span style=3D"font-size:12px">Software Engineer,=C2=A0</span></font><font c=
olor=3D"#888888"><span style=3D"font-size:12px"></span></font><span style=
=3D"color:rgb(136,136,136);font-size:11px"><i><b>Argus=C2=A0</b></i></span>=
<span style=3D"color:rgb(136,136,136);font-size:11px"><i><b>Cyber Security =
Ltd.</b></i></span></td></tr><tr><td><span style=3D"font-size:11px"><a href=
=3D"mailto:itay.sperling@argus-sec.com" style=3D"color:rgb(128,128,128)" ta=
rget=3D"_blank">itay.sperling@argus-sec.com</a><font color=3D"#808080">=C2=
=A0</font><b style=3D"color:rgb(169,169,169)">|</b><font color=3D"#0000ff">=
=C2=A0</font></span></td></tr><tr><td style=3D"font-size:11px"><a href=3D"h=
ttps://www.argus-sec.com/" style=3D"color:rgb(128,128,128)" target=3D"_blan=
k">www.argus-sec.com</a>=C2=A0<span style=3D"color:rgb(169,169,169)"><b>|</=
b></span>=C2=A0</td></tr></tbody></table></td></tr></tbody></table></div></=
div></div></div></div></div>
</div></div>

--000000000000614a35059501d964--

--000000000000614a37059501d966
Content-Type: application/x-patch; name="meson-enable-selinux-boolean.patch"
Content-Disposition: attachment; 
	filename="meson-enable-selinux-boolean.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_k1rz64gz0>
X-Attachment-Id: f_k1rz64gz0

RnJvbSBmYjE2YzQzM2FkYTU1MjgzZjkyNTlmZTU3OGEwNzNkYzU1NjZiYzc3IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBJdGF5IFNwZXJsaW5nIDxpdGF5LnNwZXJsaW5nQGFyZ3VzLXNl
Yy5jb20+CkRhdGU6IFR1ZSwgMTUgT2N0IDIwMTkgMTY6Mjc6MjEgKzAzMDAKU3ViamVjdDogbWVz
b24gdmFsdWVzICdkaXNhYmxlZCcgYW5kICdlbmFibGVkJyBhcmUgbm90IHZhbGlkLgoKRVJST1I6
ICBWYWx1ZSBkaXNhYmxlZCBpcyBub3QgYm9vbGVhbiAodHJ1ZSBvciBmYWxzZSkuCi0tLQogY2xh
c3Nlcy9tZXNvbi1lbmFibGUtc2VsaW51eC5iYmNsYXNzIHwgMiArLQogMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvY2xhc3Nlcy9tZXNv
bi1lbmFibGUtc2VsaW51eC5iYmNsYXNzIGIvY2xhc3Nlcy9tZXNvbi1lbmFibGUtc2VsaW51eC5i
YmNsYXNzCmluZGV4IDkxYzJhMmIuLjc3YTc2M2EgMTAwNjQ0Ci0tLSBhL2NsYXNzZXMvbWVzb24t
ZW5hYmxlLXNlbGludXguYmJjbGFzcworKysgYi9jbGFzc2VzL21lc29uLWVuYWJsZS1zZWxpbnV4
LmJiY2xhc3MKQEAgLTEsNCArMSw0IEBACiBpbmhlcml0IHNlbGludXgKIAogUEFDS0FHRUNPTkZJ
R19hcHBlbmQgPSAiICR7QHRhcmdldF9zZWxpbnV4KGQpfSIKLVBBQ0tBR0VDT05GSUdbc2VsaW51
eF0gPSAiLURzZWxpbnV4PWVuYWJsZWQsLURzZWxpbnV4PWRpc2FibGVkLGxpYnNlbGludXgsIgor
UEFDS0FHRUNPTkZJR1tzZWxpbnV4XSA9ICItRHNlbGludXg9dHJ1ZSwtRHNlbGludXg9ZmFsc2Us
bGlic2VsaW51eCwiCi0tIAoyLjE3LjEKCg==

--000000000000614a37059501d966--
