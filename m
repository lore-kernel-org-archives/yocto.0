Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 315CEE008E4; Wed, 21 Mar 2018 02:21:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mans.zigher[at]gmail.com)
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.45 listed in list.dnswl.org]
Received: from mail-oi0-f45.google.com (mail-oi0-f45.google.com
	[209.85.218.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB584E0070F
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 02:21:49 -0700 (PDT)
Received: by mail-oi0-f45.google.com with SMTP id t16-v6so3735724oih.3
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 02:21:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=fJNA954Jdix4MQST+ZDBEPi3wKgUzkXZk5dM6ACIzQU=;
	b=S3L1v0SbIPQBvhD5E7IVQdBgU/itwsowSBdYED4Ta6L9Oyw68N755MF0/B5Jrfm03l
	uV/yYuZWIy+eJLg2U0htUGrvwjBUzQA3oj5WOqCqlcL7LO3xhAKaJxZFSW8AngfiKqIk
	32JZ/G2jq44cno+fS+rb2rFmjKYZx6z6B7xedePPuGfzDzqTNH814cBBEgHE9oEBwwqz
	LGSy9FLUUgtCfMI8zlBgFx3+Dfhccd4byVYQSBz2a1itreL7j7cfeCEsLZAoVTgFiRNd
	eUNjmZeYwPTEIeVINiFLNBUL+gU318KmsaozSig6Cw646f7LuzpYMAkxQtWalmSuQQOS
	Wgsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=fJNA954Jdix4MQST+ZDBEPi3wKgUzkXZk5dM6ACIzQU=;
	b=Vz9nXTShDVopziEWBprgXiFlRI8e/coTpDX7/Pre+b6rU0XuhOORE2OUoJltabOeIx
	9BqcFU/yQnKb4hEbFVv7YT/D09V29X1biuANGO3pTUBfRhy84rKIizqe/tHomMzR/Lcj
	tmXn5F777WXM2O5npnqixT+/m8riATpTID6jPcyT5kajMmK8GYOpV5sAv1Cf79if//bi
	iReSDtFFBdfV3EyP4MDwQOdYIlZ5ZvBp9p68mC2u9FUen4ndTBx9h9ccicdwA8VfEY9B
	4rX2EAEHBkoxR+hAy8f0VBd2kGeoDb0foqpqdqY204zzzMz7P6MIaWNm6Ecnzcx6+ZRl
	Ev+w==
X-Gm-Message-State: AElRT7GVrUsXQPw467Lg4hGXEjGLl0ZSPfb/JCv6KDbbrBmhHBSPAiW8
	vz08xx+HNBZ8aWE8Lwuf4iT8MidQjVUSjn3CK/Cyag==
X-Google-Smtp-Source: AG47ELus9xYOgyDtKbgSc164hXBJSzrYsYoO30J9EbFTtjgsSj8LMgJafQ0dIDSMe3E7dpyHDnGN87/IIpSxs6YK+WY=
X-Received: by 10.202.206.148 with SMTP id e142mr4720271oig.194.1521624108774; 
	Wed, 21 Mar 2018 02:21:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.77.209 with HTTP; Wed, 21 Mar 2018 02:21:48 -0700 (PDT)
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Wed, 21 Mar 2018 10:21:48 +0100
Message-ID: <CAEhQi8=O=zKz_vKdqZuOoRBh88BtKvd9pbwxgNLrqvd3aeHnOg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: do_compile, the basehash value changed from...
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
X-List-Received-Date: Wed, 21 Mar 2018 09:21:50 -0000
Content-Type: multipart/alternative; boundary="001a113acc527c387e0567e8b845"

--001a113acc527c387e0567e8b845
Content-Type: text/plain; charset="UTF-8"

Hi,

I am seeing the following error

os-release.bb.do_compile, the basehash value changed from
b66b4812ebcc321e17478af74dc47349 to 5a21625fe0f3f42b68a1b06498b804a9. The
metadata is not deterministic and this needs to be fixed.

It appears from nowhere and I need to clean the sstate and tmp to get it to
disappear. I can build several times and then from nowhere it appears.
Where should I look to solve this? Any ideas?

BR
Mans Zigher

--001a113acc527c387e0567e8b845
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-=
serif;font-size:12.8px;font-style:normal;font-variant-ligatures:normal;font=
-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start=
;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;ba=
ckground-color:rgb(255,255,255);text-decoration-style:initial;text-decorati=
on-color:initial;float:none;display:inline">Hi,</span><div style=3D"color:r=
gb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-style:norma=
l;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-de=
coration-style:initial;text-decoration-color:initial"><br></div><div style=
=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-=
style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-we=
ight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transf=
orm:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,2=
55);text-decoration-style:initial;text-decoration-color:initial">I am seein=
g the following error</div><div style=3D"color:rgb(34,34,34);font-family:ar=
ial,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:no=
rmal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-al=
ign:start;text-indent:0px;text-transform:none;white-space:normal;word-spaci=
ng:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text=
-decoration-color:initial"><br></div><div style=3D"color:rgb(34,34,34);font=
-family:arial,sans-serif;font-size:12.8px;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norm=
al;text-align:start;text-indent:0px;text-transform:none;white-space:normal;=
word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:in=
itial;text-decoration-color:initial"><div>os-release.bb.do_compile, the bas=
ehash value changed from b66b4812ebcc321e17478af74dc473<wbr>49 to 5a21625fe=
0f3f42b68a1b06498b804<wbr>a9. The metadata is not deterministic and this ne=
eds to be fixed.</div></div><div style=3D"color:rgb(34,34,34);font-family:a=
rial,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:start;text-indent:0px;text-transform:none;white-space:normal;word-spac=
ing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;tex=
t-decoration-color:initial"><br></div><div style=3D"color:rgb(34,34,34);fon=
t-family:arial,sans-serif;font-size:12.8px;font-style:normal;font-variant-l=
igatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:nor=
mal;text-align:start;text-indent:0px;text-transform:none;white-space:normal=
;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:i=
nitial;text-decoration-color:initial">It appears from nowhere and I need to=
 clean the sstate and tmp to get it to disappear. I can build several times=
 and then from nowhere it appears. Where should I look to solve this? Any i=
deas?</div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;f=
ont-size:12.8px;font-style:normal;font-variant-ligatures:normal;font-varian=
t-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-i=
ndent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgroun=
d-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-colo=
r:initial"><br></div><div style=3D"color:rgb(34,34,34);font-family:arial,sa=
ns-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:normal;f=
ont-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:st=
art;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px=
;background-color:rgb(255,255,255);text-decoration-style:initial;text-decor=
ation-color:initial">BR</div><div style=3D"color:rgb(34,34,34);font-family:=
arial,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:=
normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-=
align:start;text-indent:0px;text-transform:none;white-space:normal;word-spa=
cing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;te=
xt-decoration-color:initial">Mans Zigher=C2=A0=C2=A0</div><br></div>

--001a113acc527c387e0567e8b845--
