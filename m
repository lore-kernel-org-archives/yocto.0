Return-Path: <pehen.azam@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06B8FE00E10; Sun, 11 Feb 2018 04:52:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pehen.azam[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f177.google.com (mail-qt0-f177.google.com
	[209.85.216.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EABFE00D7B
	for <yocto@yoctoproject.org>; Sun, 11 Feb 2018 04:52:17 -0800 (PST)
Received: by mail-qt0-f177.google.com with SMTP id f4so16003316qtj.6
	for <yocto@yoctoproject.org>; Sun, 11 Feb 2018 04:52:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=JaE3FF2sKOpM+TDxV8W3pXREeU7Eu4hJMSwp3GLn8pQ=;
	b=jvlHYE0/mUin3O+v4wxIaG8bD+WGkFc79+xvUl8I6DUf0EmHdx8wKELO9u9r4BMO9T
	kCnuLeYjruzEy36kf/S0RQtmyE1R83pO6/pD7XFYX7v1ZKM30kZu0K2k7Eanz6xqscUa
	rk5gyLgba6zIT0zearh+pv6SpTgVg5fDuZyuOlfINj+v9cBvHr+Xa13N92B802ktezjl
	wl1tGlOrBBLbZv131RHzis/ZZYcCZ5xob5bgAwMYStmCsSz7KcfTPabpHa5Rp2/NFBk2
	/DcIJNJt+fmZX1UvoVQ/zg3aXnrdm9CCbcKW/sYsfelhEyfFE6vprvgjhyL7wL/jF2d9
	+9rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=JaE3FF2sKOpM+TDxV8W3pXREeU7Eu4hJMSwp3GLn8pQ=;
	b=s1ujrENppi/SzcRGYQyNI1oRwsMkrwhK7bwD2tYFYsMomjlrOFeJTxgf98mMMDNFQl
	DGMVWWTInz7HhxapBfrfXFragjXoTMH1MaDxXDvhXbalWAaJS2LhhrGFMTvzK4AHd37+
	Ikckb4ZTy6Coei9JissVXRoYfDXerjLazS50wHIaOgfNpVcEmHgwkfaZmfTj3sAqBwYG
	DNMGvwap1qnSBXwdl5YvCPPkAvjIjtdA8AKStpjOmChpqaaIn6BhelVV+KVrz1EN+7Q3
	stzyoGGvadtpqPk1FD0kBm/7oVLr3xdn/2cW+5mN1ZSu05oWKDtOgPbHT27NhkQpkAf6
	j60Q==
X-Gm-Message-State: APf1xPDxM2RR4RhWahtLguih39XI2a8c/DiPgULRlvmCDdCVKh3/RazX
	UDUw4zcmV6zLuZ+/fMHp3iDrJ+XyXjoEE7iIwaw=
X-Google-Smtp-Source: AH8x226KCir/THPzQBUPJZW95KCesvhIqqYnN4iQ5FWk5NMrZ1EG5SBGF4wnF5dzp/vW9KaHD4lhjFynacuR246y8wo=
X-Received: by 10.200.39.173 with SMTP id w42mr14122291qtw.206.1518353536507; 
	Sun, 11 Feb 2018 04:52:16 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.101.197 with HTTP; Sun, 11 Feb 2018 04:52:15 -0800 (PST)
Received: by 10.140.101.197 with HTTP; Sun, 11 Feb 2018 04:52:15 -0800 (PST)
In-Reply-To: <CALRtUquAHWAkGOzU7t99X+UfW6CvEwsC_cCq3Wm8Z_GZ5xjwSQ@mail.gmail.com>
References: <CANMO+isJ734rzQwj5mYD9-pAVMEFcekc=5fx+o4UyRUZFfq-Pw@mail.gmail.com>
	<CALRtUquAHWAkGOzU7t99X+UfW6CvEwsC_cCq3Wm8Z_GZ5xjwSQ@mail.gmail.com>
From: Pehen Azam <pehen.azam@gmail.com>
Date: Sun, 11 Feb 2018 13:52:15 +0100
Message-ID: <CANMO+iuf-zPmL025DnLPTrHitoPwoHvXWgK_Jny3R6VTgp0kNg@mail.gmail.com>
To: TEXIER Pierre-Jean <texier.pj2@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Add a module/library to meta-toolchain-qt5 sdk
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
X-List-Received-Date: Sun, 11 Feb 2018 12:52:19 -0000
Content-Type: multipart/alternative; boundary="001a114139502fe7060564ef3b28"

--001a114139502fe7060564ef3b28
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hei Pierre-Jean
Thank you so much. I was struggling with this for a long time.

Regards Pehen

On 9 Feb 2018 3:01 pm, "TEXIER Pierre-Jean" <texier.pj2@gmail.com> wrote:

> Hi Peneh,
>
> 2018-02-09 12:39 GMT+01:00 Pehen Azam <pehen.azam@gmail.com>:
>
>> Hi,
>> I try to add qtcharts to meta-toolchain-qt5. My question is to which
>> recipes/files should I add qtcharts to have qtcharts on meta-toolchain-q=
t5
>> sdk?
>> I need to compile my program with qmake at `/opt/myimage/2.1.2/sysroots/=
x
>> 86_64-pokysdk-linux/usr/bin/qt5/qmake`
>> I am not sure where should I put the qtcharts. Under meta-qt5 or
>> meta-myapplication/recipes-qt or somewhere else
>>  here is poky directory:
>> poky$ tree -L 2
>>
>> .
>>
>> =E2=94=9C=E2=94=80=E2=94=80 bitbake
>>
>> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 ...
>>
>> =E2=94=9C=E2=94=80=E2=94=80 build
>>
>> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 ...
>>
>> =E2=94=9C=E2=94=80=E2=94=80 meta
>>
>> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 ...
>>
>> =E2=94=9C=E2=94=80=E2=94=80 meta-freescale-distro
>>
>> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 ...
>>
>> =E2=94=9C=E2=94=80=E2=94=80 meta-fsl-arm
>>
>> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 ...
>>
>> =E2=94=9C=E2=94=80=E2=94=80 meta-myqtapplication
>>
>> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 classes
>>
>> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 conf
>>
>> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 DOC
>>
>> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 licenses
>>
>> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 meta-patch
>>
>> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 README.md
>>
>> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 recipes-apps
>>
>> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 recipes-bsp
>>
>> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 recipes-connectivity
>>
>> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 recipes-core
>>
>> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 recipes-kernel
>>
>> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 recipes-qt
>>
>> =E2=94=9C=E2=94=80=E2=94=80 meta-openembedded
>>
>> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 ...
>>
>> =E2=94=9C=E2=94=80=E2=94=80 meta-poky
>>
>> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 ...
>>
>> =E2=94=9C=E2=94=80=E2=94=80 meta-qt5
>>
>> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 classes
>>
>> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 conf
>>
>> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 COPYING.MIT
>>
>> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 files
>>
>> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 lib
>>
>> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 licenses
>>
>> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 README
>>
>> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 recipes-connectivity
>>
>> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 recipes-devtools
>>
>> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 recipes-qt
>>
>> =E2=94=9C=E2=94=80=E2=94=80 meta-selftest
>>
>> =E2=94=9C=E2=94=80=E2=94=80 meta-skeleton
>>
>> =E2=94=9C=E2=94=80=E2=94=80 meta-yocto
>>
>> =E2=94=9C=E2=94=80=E2=94=80 meta-yocto-bsp
>>
>> Regards,
>> Peneh
>>
>
>
> If you want to work with qtcharts and meta-toolchain-qt5 (to have a
> correct sysroot),
> you must add this module to the following file: <meta-qt5>
> /recipes-qt/packagegroups/packagegroup-qt5-toolchain-target.bb.
>
> FYI, I pushed a patch last wednesday to support qtcharts and qtmqtt:
> https://patchwork.openembedded.org/patch/147962/
>
> Regards
>
> ---
> Pierre-Jean
>
>>
>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--001a114139502fe7060564ef3b28
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9ImF1dG8iPkhlaSBQaWVycmUtSmVhbjxkaXYgZGlyPSJhdXRvIj5UaGFuayB5b3Ug
c28gbXVjaC4gSSB3YXMgc3RydWdnbGluZyB3aXRoIHRoaXMgZm9yIGEgbG9uZyB0aW1lLjwvZGl2
PjxkaXYgZGlyPSJhdXRvIj7CoDwvZGl2PjxkaXYgZGlyPSJhdXRvIj5SZWdhcmRzIFBlaGVuwqA8
L2Rpdj48L2Rpdj48ZGl2IGNsYXNzPSJnbWFpbF9leHRyYSI+PGJyPjxkaXYgY2xhc3M9ImdtYWls
X3F1b3RlIj5PbiA5IEZlYiAyMDE4IDM6MDEgcG0sICZxdW90O1RFWElFUiBQaWVycmUtSmVhbiZx
dW90OyAmbHQ7PGEgaHJlZj0ibWFpbHRvOnRleGllci5wajJAZ21haWwuY29tIj50ZXhpZXIucGoy
QGdtYWlsLmNvbTwvYT4mZ3Q7IHdyb3RlOjxiciB0eXBlPSJhdHRyaWJ1dGlvbiI+PGJsb2NrcXVv
dGUgY2xhc3M9ImdtYWlsX3F1b3RlIiBzdHlsZT0ibWFyZ2luOjAgMCAwIC44ZXg7Ym9yZGVyLWxl
ZnQ6MXB4ICNjY2Mgc29saWQ7cGFkZGluZy1sZWZ0OjFleCI+PGRpdiBkaXI9Imx0ciI+SGkgUGVu
ZWgsPGRpdiBjbGFzcz0iZ21haWxfZXh0cmEiPjxicj48ZGl2IGNsYXNzPSJnbWFpbF9xdW90ZSI+
MjAxOC0wMi0wOSAxMjozOSBHTVQrMDE6MDAgUGVoZW4gQXphbSA8c3BhbiBkaXI9Imx0ciI+Jmx0
OzxhIGhyZWY9Im1haWx0bzpwZWhlbi5hemFtQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPnBl
aGVuLmF6YW1AZ21haWwuY29tPC9hPiZndDs8L3NwYW4+Ojxicj48YmxvY2txdW90ZSBjbGFzcz0i
Z21haWxfcXVvdGUiIHN0eWxlPSJtYXJnaW46MHB4IDBweCAwcHggMC44ZXg7cGFkZGluZy1sZWZ0
OjFleDtib3JkZXItbGVmdC1jb2xvcjpyZ2IoMjA0LDIwNCwyMDQpO2JvcmRlci1sZWZ0LXdpZHRo
OjFweDtib3JkZXItbGVmdC1zdHlsZTpzb2xpZCI+PGRpdiBkaXI9Imx0ciI+PGRpdiBzdHlsZT0i
Y29sb3I6cmdiKDM0LDM0LDM0KTt0ZXh0LXRyYW5zZm9ybTpub25lO3RleHQtaW5kZW50OjBweDts
ZXR0ZXItc3BhY2luZzpub3JtYWw7Zm9udC1mYW1pbHk6YXJpYWwsc2Fucy1zZXJpZjtmb250LXNp
emU6MTIuOHB4O2ZvbnQtc3R5bGU6bm9ybWFsO2ZvbnQtd2VpZ2h0OjQwMDt3b3JkLXNwYWNpbmc6
MHB4O3doaXRlLXNwYWNlOm5vcm1hbDtiYWNrZ3JvdW5kLWNvbG9yOnJnYigyNTUsMjU1LDI1NSki
PkhpLDwvZGl2PjxkaXYgc3R5bGU9ImNvbG9yOnJnYigzNCwzNCwzNCk7dGV4dC10cmFuc2Zvcm06
bm9uZTt0ZXh0LWluZGVudDowcHg7bGV0dGVyLXNwYWNpbmc6bm9ybWFsO2ZvbnQtZmFtaWx5OmFy
aWFsLHNhbnMtc2VyaWY7Zm9udC1zaXplOjEyLjhweDtmb250LXN0eWxlOm5vcm1hbDtmb250LXdl
aWdodDo0MDA7d29yZC1zcGFjaW5nOjBweDt3aGl0ZS1zcGFjZTpub3JtYWw7YmFja2dyb3VuZC1j
b2xvcjpyZ2IoMjU1LDI1NSwyNTUpIj5JIHRyeSB0byBhZGQgcXRjaGFydHMgdG8gbWV0YS10b29s
Y2hhaW4tcXQ1LiBNeSBxdWVzdGlvbiBpczxzcGFuIGNsYXNzPSJtXy03Mzk1NTg1MzY5OTA3OTI0
MDY2Z21haWwtbV8xODE4ODg1MzU3ODYxNTgzMzUzZ21haWwtY29tbWVudC1jb3B5Ij7CoHRvIHdo
aWNoIHJlY2lwZXMvZmlsZXMgc2hvdWxkIEkgYWRkIA0KcXRjaGFydHMgdG8gaGF2ZSBxdGNoYXJ0
cyBvbiBtZXRhLXRvb2xjaGFpbi1xdDUgc2RrPzwvc3Bhbj48L2Rpdj48ZGl2IHN0eWxlPSJjb2xv
cjpyZ2IoMzQsMzQsMzQpO3RleHQtdHJhbnNmb3JtOm5vbmU7dGV4dC1pbmRlbnQ6MHB4O2xldHRl
ci1zcGFjaW5nOm5vcm1hbDtmb250LWZhbWlseTphcmlhbCxzYW5zLXNlcmlmO2ZvbnQtc2l6ZTox
Mi44cHg7Zm9udC1zdHlsZTpub3JtYWw7Zm9udC13ZWlnaHQ6NDAwO3dvcmQtc3BhY2luZzowcHg7
d2hpdGUtc3BhY2U6bm9ybWFsO2JhY2tncm91bmQtY29sb3I6cmdiKDI1NSwyNTUsMjU1KSI+PHNw
YW4gY2xhc3M9Im1fLTczOTU1ODUzNjk5MDc5MjQwNjZnbWFpbC1tXzE4MTg4ODUzNTc4NjE1ODMz
NTNnbWFpbC1jb21tZW50LWNvcHkiPkkgbmVlZCANCnRvIGNvbXBpbGUgbXkgcHJvZ3JhbSB3aXRo
IHFtYWtlIGF0IGA8Y29kZT4vb3B0L215aW1hZ2UvMi4xLjIvc3lzcm9vdHMveDx3YnI+ODZfNjQt
cG9reXNkay1saW51eC91c3IvYmluL3F0PHdicj41L3FtYWtlPC9jb2RlPjwvc3Bhbj5gPC9kaXY+
PGRpdiBzdHlsZT0iY29sb3I6cmdiKDM0LDM0LDM0KTt0ZXh0LXRyYW5zZm9ybTpub25lO3RleHQt
aW5kZW50OjBweDtsZXR0ZXItc3BhY2luZzpub3JtYWw7Zm9udC1mYW1pbHk6YXJpYWwsc2Fucy1z
ZXJpZjtmb250LXNpemU6MTIuOHB4O2ZvbnQtc3R5bGU6bm9ybWFsO2ZvbnQtd2VpZ2h0OjQwMDt3
b3JkLXNwYWNpbmc6MHB4O3doaXRlLXNwYWNlOm5vcm1hbDtiYWNrZ3JvdW5kLWNvbG9yOnJnYigy
NTUsMjU1LDI1NSkiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTIuOHB4Ij5JIGFtIG5vdCBzdXJl
IHdoZXJlIHNob3VsZCBJIHB1dCB0aGUgcXRjaGFydHMuIFVuZGVyIG1ldGEtcXQ1IG9yIG1ldGEt
bXlhcHBsaWNhdGlvbi9yZWNpcGVzLXF0IG9yIHNvbWV3aGVyZSBlbHNlPC9zcGFuPjwvZGl2Pjxk
aXYgc3R5bGU9ImNvbG9yOnJnYigzNCwzNCwzNCk7dGV4dC10cmFuc2Zvcm06bm9uZTt0ZXh0LWlu
ZGVudDowcHg7bGV0dGVyLXNwYWNpbmc6bm9ybWFsO2ZvbnQtZmFtaWx5OmFyaWFsLHNhbnMtc2Vy
aWY7Zm9udC1zaXplOjEyLjhweDtmb250LXN0eWxlOm5vcm1hbDtmb250LXdlaWdodDo0MDA7d29y
ZC1zcGFjaW5nOjBweDt3aGl0ZS1zcGFjZTpub3JtYWw7YmFja2dyb3VuZC1jb2xvcjpyZ2IoMjU1
LDI1NSwyNTUpIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEyLjhweCI+wqBoZXJlIGlzIHBva3kg
ZGlyZWN0b3J5Ojwvc3Bhbj48YnI+PC9kaXY+PGRpdiBzdHlsZT0iY29sb3I6cmdiKDM0LDM0LDM0
KTt0ZXh0LXRyYW5zZm9ybTpub25lO3RleHQtaW5kZW50OjBweDtsZXR0ZXItc3BhY2luZzpub3Jt
YWw7Zm9udC1mYW1pbHk6YXJpYWwsc2Fucy1zZXJpZjtmb250LXNpemU6MTIuOHB4O2ZvbnQtc3R5
bGU6bm9ybWFsO2ZvbnQtd2VpZ2h0OjQwMDt3b3JkLXNwYWNpbmc6MHB4O3doaXRlLXNwYWNlOm5v
cm1hbDtiYWNrZ3JvdW5kLWNvbG9yOnJnYigyNTUsMjU1LDI1NSkiPjxkaXYgc3R5bGU9ImZvbnQt
c2l6ZToxMi44cHgiPnBva3kkIHRyZWUgLUwgMsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgPC9kaXY+PGRpdiBzdHlsZT0iZm9udC1zaXplOjEyLjhweCI+LsKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgPC9k
aXY+PGRpdiBzdHlsZT0iZm9udC1zaXplOjEyLjhweCI+4pSc4pSA4pSAIGJpdGJha2XCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDwvZGl2PjxkaXYgc3R5bGU9
ImZvbnQtc2l6ZToxMi44cHgiPuKUgsKgIMKg4pSU4pSA4pSAIC4uLsKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgPC9kaXY+PGRpdiBzdHlsZT0iZm9udC1zaXpl
OjEyLjhweCI+4pSc4pSA4pSAIGJ1aWxkwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqA8L2Rpdj48ZGl2IHN0eWxlPSJmb250LXNpemU6MTIuOHB4Ij7ilILC
oCDCoOKUlOKUgOKUgCAuLi7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoDwvZGl2PjxkaXYgc3R5bGU9ImZvbnQtc2l6ZToxMi44cHgiPuKUnOKUgOKUgCBtZXRh
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqDCoDwvZGl2
PjxkaXYgc3R5bGU9ImZvbnQtc2l6ZToxMi44cHgiPuKUgsKgIMKg4pSU4pSA4pSAIC4uLsKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgPC9kaXY+PGRpdiBzdHls
ZT0iZm9udC1zaXplOjEyLjhweCI+4pSc4pSA4pSAIG1ldGEtZnJlZXNjYWxlLWRpc3Ryb8KgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgPC9kaXY+PGRpdiBzdHlsZT0iZm9udC1zaXplOjEyLjhweCI+
4pSCwqAgwqDilJTilIDilIAgLi4uwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqA8L2Rpdj48ZGl2IHN0eWxlPSJmb250LXNpemU6MTIuOHB4Ij7ilJzilIDilIAg
bWV0YS1mc2wtYXJtwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqDCoDwvZGl2
PjxkaXYgc3R5bGU9ImZvbnQtc2l6ZToxMi44cHgiPuKUgsKgIMKg4pSU4pSA4pSAIC4uLsKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgPC9kaXY+PGRpdiBzdHls
ZT0iZm9udC1zaXplOjEyLjhweCI+4pSc4pSA4pSAIG1ldGEtbXlxdGFwcGxpY2F0aW9uwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqDCoDwvZGl2PjxkaXYgc3R5bGU9ImZvbnQtc2l6ZToxMi44cHgi
PuKUgsKgIMKg4pSc4pSA4pSAIGNsYXNzZXPCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoDwvZGl2PjxkaXYgc3R5bGU9ImZvbnQtc2l6ZToxMi44cHgiPuKUgsKgIMKg4pSc
4pSA4pSAIGNvbmbCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoMKg
PC9kaXY+PGRpdiBzdHlsZT0iZm9udC1zaXplOjEyLjhweCI+4pSCwqAgwqDilJzilIDilIAgRE9D
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqA8L2Rpdj48ZGl2
IHN0eWxlPSJmb250LXNpemU6MTIuOHB4Ij7ilILCoCDCoOKUnOKUgOKUgCBsaWNlbnNlc8KgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgwqA8L2Rpdj48ZGl2IHN0eWxlPSJmb250
LXNpemU6MTIuOHB4Ij7ilILCoCDCoOKUnOKUgOKUgCBtZXRhLXBhdGNowqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqDCoDwvZGl2PjxkaXYgc3R5bGU9ImZvbnQtc2l6ZToxMi44cHgi
PuKUgsKgIMKg4pSc4pSA4pSAIFJFQURNRS5tZMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgPC9kaXY+PGRpdiBzdHlsZT0iZm9udC1zaXplOjEyLjhweCI+4pSCwqAgwqDilJzi
lIDilIAgcmVjaXBlcy1hcHBzwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqDCoDwvZGl2
PjxkaXYgc3R5bGU9ImZvbnQtc2l6ZToxMi44cHgiPuKUgsKgIMKg4pSc4pSA4pSAIHJlY2lwZXMt
YnNwwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqA8L2Rpdj48ZGl2IHN0eWxlPSJm
b250LXNpemU6MTIuOHB4Ij7ilILCoCDCoOKUnOKUgOKUgCByZWNpcGVzLWNvbm5lY3Rpdml0ecKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgwqA8L2Rpdj48ZGl2IHN0eWxlPSJmb250LXNpemU6MTIuOHB4Ij7i
lILCoCDCoOKUnOKUgOKUgCByZWNpcGVzLWNvcmXCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoMKgPC9kaXY+PGRpdiBzdHlsZT0iZm9udC1zaXplOjEyLjhweCI+4pSCwqAgwqDilJzilIDi
lIAgcmVjaXBlcy1rZXJuZWzCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoMKgPC9kaXY+PGRp
diBzdHlsZT0iZm9udC1zaXplOjEyLjhweCI+4pSCwqAgwqDilJTilIDilIAgcmVjaXBlcy1xdMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgwqA8L2Rpdj48ZGl2IHN0eWxlPSJmb250
LXNpemU6MTIuOHB4Ij7ilJzilIDilIAgbWV0YS1vcGVuZW1iZWRkZWTCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoDwvZGl2PjxkaXYgc3R5bGU9ImZvbnQtc2l6ZToxMi44cHgiPuKUgsKg
IMKg4pSU4pSA4pSAIC4uLsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgPC9kaXY+PGRpdiBzdHlsZT0iZm9udC1zaXplOjEyLjhweCI+4pSc4pSA4pSAIG1ldGEt
cG9recKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgPC9kaXY+PGRp
diBzdHlsZT0iZm9udC1zaXplOjEyLjhweCI+4pSCwqAgwqDilJTilIDilIAgLi4uwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqA8L2Rpdj48ZGl2IHN0eWxlPSJm
b250LXNpemU6MTIuOHB4Ij7ilJzilIDilIAgbWV0YS1xdDXCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoMKgPC9kaXY+PGRpdiBzdHlsZT0iZm9udC1zaXplOjEyLjhw
eCI+4pSCwqAgwqDilJzilIDilIAgY2xhc3Nlc8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgPC9kaXY+PGRpdiBzdHlsZT0iZm9udC1zaXplOjEyLjhweCI+4pSCwqAgwqDi
lJzilIDilIAgY29uZsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
wqA8L2Rpdj48ZGl2IHN0eWxlPSJmb250LXNpemU6MTIuOHB4Ij7ilILCoCDCoOKUnOKUgOKUgCBD
T1BZSU5HLk1JVMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgPC9kaXY+PGRpdiBz
dHlsZT0iZm9udC1zaXplOjEyLjhweCI+4pSCwqAgwqDilJzilIDilIAgZmlsZXPCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDwvZGl2PjxkaXYgc3R5bGU9ImZvbnQt
c2l6ZToxMi44cHgiPuKUgsKgIMKg4pSc4pSA4pSAIGxpYsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgPC9kaXY+PGRpdiBzdHlsZT0iZm9udC1zaXplOjEyLjhw
eCI+4pSCwqAgwqDilJzilIDilIAgbGljZW5zZXPCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoMKgPC9kaXY+PGRpdiBzdHlsZT0iZm9udC1zaXplOjEyLjhweCI+4pSCwqAgwqDi
lJzilIDilIAgUkVBRE1FwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqDC
oDwvZGl2PjxkaXYgc3R5bGU9ImZvbnQtc2l6ZToxMi44cHgiPuKUgsKgIMKg4pSc4pSA4pSAIHJl
Y2lwZXMtY29ubmVjdGl2aXR5wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqDCoDwvZGl2PjxkaXYgc3R5bGU9
ImZvbnQtc2l6ZToxMi44cHgiPuKUgsKgIMKg4pSc4pSA4pSAIHJlY2lwZXMtZGV2dG9vbHPCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoMKgPC9kaXY+PGRpdiBzdHlsZT0iZm9udC1zaXplOjEyLjhw
eCI+4pSCwqAgwqDilJTilIDilIAgcmVjaXBlcy1xdMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgwqA8L2Rpdj48ZGl2IHN0eWxlPSJmb250LXNpemU6MTIuOHB4Ij7ilJzilIDilIAg
bWV0YS1zZWxmdGVzdMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgPC9kaXY+
PGRpdiBzdHlsZT0iZm9udC1zaXplOjEyLjhweCI+4pSc4pSA4pSAIG1ldGEtc2tlbGV0b27CoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDwvZGl2PjxkaXYgc3R5bGU9ImZvbnQt
c2l6ZToxMi44cHgiPuKUnOKUgOKUgCBtZXRhLXlvY3RvwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqDCoDwvZGl2PjxkaXYgc3R5bGU9ImZvbnQtc2l6ZToxMi44cHgiPuKU
nOKUgOKUgCBtZXRhLXlvY3RvLWJzcDwvZGl2PjxkaXYgc3R5bGU9ImZvbnQtc2l6ZToxMi44cHgi
Pjxicj48L2Rpdj48L2Rpdj48ZGl2IHN0eWxlPSJjb2xvcjpyZ2IoMzQsMzQsMzQpO3RleHQtdHJh
bnNmb3JtOm5vbmU7dGV4dC1pbmRlbnQ6MHB4O2xldHRlci1zcGFjaW5nOm5vcm1hbDtmb250LWZh
bWlseTphcmlhbCxzYW5zLXNlcmlmO2ZvbnQtc2l6ZToxMi44cHg7Zm9udC1zdHlsZTpub3JtYWw7
Zm9udC13ZWlnaHQ6NDAwO3dvcmQtc3BhY2luZzowcHg7d2hpdGUtc3BhY2U6bm9ybWFsO2JhY2tn
cm91bmQtY29sb3I6cmdiKDI1NSwyNTUsMjU1KSI+UmVnYXJkcyw8L2Rpdj48ZGl2IHN0eWxlPSJj
b2xvcjpyZ2IoMzQsMzQsMzQpO3RleHQtdHJhbnNmb3JtOm5vbmU7dGV4dC1pbmRlbnQ6MHB4O2xl
dHRlci1zcGFjaW5nOm5vcm1hbDtmb250LWZhbWlseTphcmlhbCxzYW5zLXNlcmlmO2ZvbnQtc2l6
ZToxMi44cHg7Zm9udC1zdHlsZTpub3JtYWw7Zm9udC13ZWlnaHQ6NDAwO3dvcmQtc3BhY2luZzow
cHg7d2hpdGUtc3BhY2U6bm9ybWFsO2JhY2tncm91bmQtY29sb3I6cmdiKDI1NSwyNTUsMjU1KSI+
UGVuZWg8L2Rpdj48L2Rpdj48L2Jsb2NrcXVvdGU+PGRpdj48YnI+PC9kaXY+PGRpdj48YnI+PC9k
aXY+PGRpdj5JZiB5b3Ugd2FudCB0byB3b3JrIHdpdGggcXRjaGFydHMgYW5kIG1ldGEtdG9vbGNo
YWluLXF0NSAodG8gaGF2ZSBhIGNvcnJlY3Qgc3lzcm9vdCksPGJyPnlvdSBtdXN0IGFkZCB0aGlz
IG1vZHVsZSB0byB0aGUgZm9sbG93aW5nIGZpbGU6ICZsdDttZXRhLXF0NSZndDsgL3JlY2lwZXMt
cXQvcGFja2FnZWdyb3Vwcy88YSBocmVmPSJodHRwOi8vcGFja2FnZWdyb3VwLXF0NS10b29sY2hh
aW4tdGFyZ2V0LmJiIiB0YXJnZXQ9Il9ibGFuayI+cGFjazx3YnI+YWdlZ3JvdXAtcXQ1LXRvb2xj
aGFpbi10YXJnZXQuPHdicj5iYjwvYT4uPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5GWUksIEkg
cHVzaGVkIGEgcGF0Y2ggbGFzdCB3ZWRuZXNkYXkgdG8gc3VwcG9ydCBxdGNoYXJ0cyBhbmQgcXRt
cXR0OiA8YSBocmVmPSJodHRwczovL3BhdGNod29yay5vcGVuZW1iZWRkZWQub3JnL3BhdGNoLzE0
Nzk2Mi8iIHRhcmdldD0iX2JsYW5rIj5odHRwczovL3BhdGNod29yay48d2JyPm9wZW5lbWJlZGRl
ZC5vcmcvcGF0Y2gvMTQ3OTYyLzwvYT48d2JyPsKgPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5S
ZWdhcmRzPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj4tLS08L2Rpdj48ZGl2PlBpZXJyZS1KZWFu
PC9kaXY+PGJsb2NrcXVvdGUgY2xhc3M9ImdtYWlsX3F1b3RlIiBzdHlsZT0ibWFyZ2luOjBweCAw
cHggMHB4IDAuOGV4O3BhZGRpbmctbGVmdDoxZXg7Ym9yZGVyLWxlZnQtY29sb3I6cmdiKDIwNCwy
MDQsMjA0KTtib3JkZXItbGVmdC13aWR0aDoxcHg7Ym9yZGVyLWxlZnQtc3R5bGU6c29saWQiPjxk
aXYgZGlyPSJsdHIiPjxkaXYgc3R5bGU9ImNvbG9yOnJnYigzNCwzNCwzNCk7dGV4dC10cmFuc2Zv
cm06bm9uZTt0ZXh0LWluZGVudDowcHg7bGV0dGVyLXNwYWNpbmc6bm9ybWFsO2ZvbnQtZmFtaWx5
OmFyaWFsLHNhbnMtc2VyaWY7Zm9udC1zaXplOjEyLjhweDtmb250LXN0eWxlOm5vcm1hbDtmb250
LXdlaWdodDo0MDA7d29yZC1zcGFjaW5nOjBweDt3aGl0ZS1zcGFjZTpub3JtYWw7YmFja2dyb3Vu
ZC1jb2xvcjpyZ2IoMjU1LDI1NSwyNTUpIj48YnI+PC9kaXY+PGRpdiBjbGFzcz0ibV8tNzM5NTU4
NTM2OTkwNzkyNDA2NmdtYWlsLW1fMTgxODg4NTM1Nzg2MTU4MzM1M2dtYWlsLXlqNnFvIiBzdHls
ZT0iY29sb3I6cmdiKDM0LDM0LDM0KTt0ZXh0LXRyYW5zZm9ybTpub25lO3RleHQtaW5kZW50OjBw
eDtsZXR0ZXItc3BhY2luZzpub3JtYWw7Zm9udC1mYW1pbHk6YXJpYWwsc2Fucy1zZXJpZjtmb250
LXNpemU6MTIuOHB4O2ZvbnQtc3R5bGU6bm9ybWFsO2ZvbnQtd2VpZ2h0OjQwMDt3b3JkLXNwYWNp
bmc6MHB4O3doaXRlLXNwYWNlOm5vcm1hbDtiYWNrZ3JvdW5kLWNvbG9yOnJnYigyNTUsMjU1LDI1
NSkiPjwvZGl2PjxiciBjbGFzcz0ibV8tNzM5NTU4NTM2OTkwNzkyNDA2NmdtYWlsLW1fMTgxODg4
NTM1Nzg2MTU4MzM1M2dtYWlsLUFwcGxlLWludGVyY2hhbmdlLW5ld2xpbmUiPjxicj48L2Rpdj4N
Cjxicj4tLTxicj4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fXzx3YnI+X19fX19fX19f
X19fX19fX188YnI+DQp5b2N0byBtYWlsaW5nIGxpc3Q8YnI+DQo8YSBocmVmPSJtYWlsdG86eW9j
dG9AeW9jdG9wcm9qZWN0Lm9yZyIgdGFyZ2V0PSJfYmxhbmsiPnlvY3RvQHlvY3RvcHJvamVjdC5v
cmc8L2E+PGJyPg0KPGEgaHJlZj0iaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3Rp
bmZvL3lvY3RvIiByZWw9Im5vcmVmZXJyZXIiIHRhcmdldD0iX2JsYW5rIj5odHRwczovL2xpc3Rz
LnlvY3RvcHJvamVjdC5vcmc8d2JyPi9saXN0aW5mby95b2N0bzwvYT48YnI+DQo8YnI+PC9ibG9j
a3F1b3RlPjwvZGl2Pjxicj48L2Rpdj48L2Rpdj4NCjwvYmxvY2txdW90ZT48L2Rpdj48L2Rpdj4N
Cg==

--001a114139502fe7060564ef3b28--
