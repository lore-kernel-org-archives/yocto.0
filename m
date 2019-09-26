Return-Path: <adam.yh.lee@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF449E00DED; Thu, 26 Sep 2019 05:06:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (adam.yh.lee[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.161.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yw1-f52.google.com (mail-yw1-f52.google.com
	[209.85.161.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C12DE006B3
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2019 05:06:54 -0700 (PDT)
Received: by mail-yw1-f52.google.com with SMTP id q7so613144ywe.10
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2019 05:06:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=b1ru8HiDvQVNJYVCvViypMjrhEhbirTh2IsU4idhi5M=;
	b=dCNbl5rZtxYCqa+OeZ4rBZZSNKcO8uQOQjNv++a0BoTmWcbSLUCOZ1Oh4XPKarvfTz
	NAimGV/mBZS8C7lwdEHGSKc148JQOJL8Tr//TFStZcIxnTWLGICI8XjvV0odnyeengbi
	fEkTF+Wa3xXDwrYocr2OgfyA23+be5d3DTNIakbRK0myXnaMM4x4Q0hzUJb60Y5GNHKW
	0mYyEGioFYjKkpVVkpLLutZ6kWQ/kDKwtTiw7+lHkt189n98QjL47GgRD/189innkZwv
	Ef+oaojIjbk5yGuSxVMimm3zfjpECwqrIn/a6+otHARRqmsAovHXHtbcdbiVC0Hkzx9/
	/4NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=b1ru8HiDvQVNJYVCvViypMjrhEhbirTh2IsU4idhi5M=;
	b=klixh5CvPYPLhXgDBvKUZ+AYhcdXAytewxM3vn8TN5QaWUEQovNKkbZeg/xyq034Qh
	M/TE5WKoIRvsKOdDNgr3CbueXvCWOkd/eElqLfja/nh2+znBNLoA66uzZVHXlM7N56dJ
	b/Rpqb0vvYvmzfu8zL5/mcXGWxCmcSFO13vSVtEJ3LkfKMx63FivHfvg+bCBpMDdHmh8
	26rbTAYWIHq2qn+ramVtqj3/LiOZMrAk8+jQlvkOZrjGPoYxoc1oSIEJh3ed0Y/G50nz
	W8zWoR6WvN7iLTz1tZE7o4RmRrQ6IMWQIfk8AEnQq7p/uapjbb/gcCOmos9LQk4g0FB0
	3gsQ==
X-Gm-Message-State: APjAAAVZwxT4Ln3LBmITEZn4nWHfxiJtUzBxeVUsP0Cm+mjbKv8ciqBZ
	5aAG7jFaYbsUk+8OekEt6RpnoxKFBhQdSygQEYrU5sP4Fss=
X-Google-Smtp-Source: APXvYqwMNsTt83QW2QNK59lUU4ruzEcbnFZ2c0NnNgR/SvZhMaQ/e++96nSZs8x25sABnBHcPvf1qlhkZGRF0Y6TUv4=
X-Received: by 2002:a81:9401:: with SMTP id l1mr2386482ywg.421.1569499613282; 
	Thu, 26 Sep 2019 05:06:53 -0700 (PDT)
MIME-Version: 1.0
From: Adam Lee <adam.yh.lee@gmail.com>
Date: Thu, 26 Sep 2019 08:06:42 -0400
Message-ID: <CAFeBWL5MRJZt=upgOOjO=p4UKXUpNGG=JP4-h=JHmJ6ydnr64Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-qt5] qt5.sh in environment-setup.d
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
X-List-Received-Date: Thu, 26 Sep 2019 12:06:55 -0000
Content-Type: multipart/alternative; boundary="000000000000ecc5570593739aea"

--000000000000ecc5570593739aea
Content-Type: text/plain; charset="UTF-8"

I see that sourcing the SDK environment file (
*environment-setup-armv7ahf-neon-oe-linux-gnueabi*) results in a few QT
variables pointing to the machine that generated the SDK (generated through
populate_sdk).

Towards the end of my environment file I have this line:


if [ -d "$OECORE_NATIVE_SYSROOT/environment-setup.d" ]; then
    for envfile in $OECORE_NATIVE_SYSROOT/environment-setup.d/*.sh; do
            . $envfile
    done
fi


The 'environment-setup.d' directory contains 'qt5.sh', which ultimately
relies on STAGING_LIBDIR to resolve. These are the variables:

OE_QMAKE_INCDIR_QT
QMAKESPEC
OE_QMAKE_QT_CONFIG
OE_QMAKE_LIBDIR_QT

I don't know if this is a mistake on my part or a bug in meta-qt5. It may
even be harmless, but I am still surprised to find my build host paths in
the SDK I am distributing across the team.

Can someone please explain what might be going on?

Much regards,

Adam

--000000000000ecc5570593739aea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I see that sourcing the SDK environment file (<i>environme=
nt-setup-armv7ahf-neon-oe-linux-gnueabi</i>) results in a few QT variables =
pointing to the machine that generated the SDK (generated through populate_=
sdk).<div><br></div><div>Towards the end of my environment file I have this=
 line:</div><blockquote style=3D"margin:0px 0px 0px 40px;border:none;paddin=
g:0px"><div><br></div><div>if [ -d &quot;$OECORE_NATIVE_SYSROOT/environment=
-setup.d&quot; ]; then</div><div>=C2=A0 =C2=A0 for envfile in $OECORE_NATIV=
E_SYSROOT/environment-setup.d/*.sh; do</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 . $envfile</div><div>=C2=A0 =C2=A0 done</div><div>fi</div=
></blockquote><div><br></div>The &#39;environment-setup.d&#39; directory co=
ntains &#39;<span class=3D"gmail-il">qt5</span>.sh&#39;, which ultimately r=
elies on=C2=A0STAGING_LIBDIR to resolve. These are the variables:<div><br><=
/div><blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">=
<div>OE_QMAKE_INCDIR_QT</div><div>QMAKESPEC</div><div>OE_QMAKE_QT_CONFIG</d=
iv><div>OE_QMAKE_LIBDIR_QT</div><div><br></div></blockquote>I don&#39;t kno=
w if this is a mistake on my part or a bug in=C2=A0<span class=3D"gmail-il"=
>meta</span>-<span class=3D"gmail-il">qt5</span>. It may even be harmless, =
but I am still surprised to find my build host paths in the SDK I am distri=
buting across the team.<div><br></div><div>Can someone please explain what =
might be going on?</div><div><br></div><div>Much regards,</div><div><br></d=
iv><div>Adam</div></div>

--000000000000ecc5570593739aea--
