Return-Path: <ranshalit@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2789DE00D18; Fri, 10 Nov 2017 00:16:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ranshalit[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 394CDE00CE2
	for <yocto@yoctoproject.org>; Fri, 10 Nov 2017 00:16:25 -0800 (PST)
Received: by mail-wm0-f66.google.com with SMTP id b9so947402wmh.5
	for <yocto@yoctoproject.org>; Fri, 10 Nov 2017 00:16:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=M0vQzlm6VbOOIGKj4jB+7Xy4trNVYujrRKvA2v+zjz0=;
	b=V/XR9UbG7DxPu37e3WUBe01NMkayj+Rp2Foqip3PrGXm2Bw3falqnxp7P9cWlLC7oi
	6l1ejRA2GrOJ8o43/jrHZoe7Vx7x175ntYTsbSRLxXh9lPJWfm3vvz2hNu8uAPlJnOBV
	VR4K9Cn7ZUrDzIi5dsJuDu7h/CDpvVn3apnIwGD6PdpY58966NwEMf9Y6L57Zki3B1sz
	T7Ek4dYfMarq/D+taBBihP00gcdPkgbcbfWviDz4ofXX6T6VUVIcUF7I5c6Sn2eeqqJ4
	XIPWBL+D81w/Wl4heq5J58htpIIlQZgPscapqS60VJDpp8L1WCT//EOJOm+8XR5Otdty
	wZ9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=M0vQzlm6VbOOIGKj4jB+7Xy4trNVYujrRKvA2v+zjz0=;
	b=VXRqYReLv+8zAUNtCEaJRI3H4UFFz58v1fAljAV/oCszY/Z8GK3icYoTKjhOw1VZ4C
	Q7z90w1PR0WLPDntK/rbUfxn/vC3MVgtvKBmTTJih2idvGJPL+6y3qdhRP6aVPnrnEr1
	tXHzpFv2uyQ14rgITiwiM5XOzuyGiWLTEVRBNKV6oLsHbeTyzl62zcYhxUS1lZknLjtV
	Q15J2uscp53K72nAI1Qbit6guy9TpOQV2Md9ulX82QclW6byfYNMlHQKrpfZWyx8KEqj
	amhu/mm+vcV1xGtAWgpIEoljS/DohCtPcecsrToX8+rENXsGZVMBazGgFdg92cpMvf0C
	kSvw==
X-Gm-Message-State: AJaThX4YxU32p3RNyCn1lMrpKgxbokyiV5j3H5ffSCCGgiqMSTP9FaRm
	Hgcl3pzPV9zPweZ9sXsds0zGzm16wkdjCK48z2T3Ug==
X-Google-Smtp-Source: ABhQp+Tfa7w2Ugzkase/AlNi0p8Ho1uqOjn45asCKKSNXKdHM/mYlHEtDr/w9lzttBu1gZ9PYUFbv+XjoudXGErwFqc=
X-Received: by 10.80.218.72 with SMTP id a8mr1404717edk.221.1510301784582;
	Fri, 10 Nov 2017 00:16:24 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.135.197 with HTTP; Fri, 10 Nov 2017 00:16:24 -0800 (PST)
From: Ran Shalit <ranshalit@gmail.com>
Date: Fri, 10 Nov 2017 10:16:24 +0200
Message-ID: <CAJ2oMh+UWj9z5oKWQ-9KR4ktFXL-QcWyGg_5YL0dASQ0+jUt-g@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: recipe name vs. package name
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
X-List-Received-Date: Fri, 10 Nov 2017 08:16:27 -0000
Content-Type: multipart/alternative; boundary="089e082241785fb47e055d9c8924"

--089e082241785fb47e055d9c8924
Content-Type: text/plain; charset="UTF-8"

Hello,

I read somewhere that a recipe can contain more than one package and recipe
name is not the same as package name.
But in
https://wiki.yoctoproject.org/wiki/Building_your_own_recipes_from_first_principles
I see that package name (used in IMAGE_INSTALL_append) is actually the same
as recipe name, and I also don't find inside recipe any mention of package
name,

Can anyone help to understand where the package is actually named in
recipes ?

Thank you,
Ran

--089e082241785fb47e055d9c8924
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I read somewhere that a recipe c=
an contain more than one package and recipe name is not the same as package=
 name.</div><div>But in</div><div><a href=3D"https://wiki.yoctoproject.org/=
wiki/Building_your_own_recipes_from_first_principles">https://wiki.yoctopro=
ject.org/wiki/Building_your_own_recipes_from_first_principles</a><br></div>=
<div>I see that package name (used in IMAGE_INSTALL_append) is actually the=
 same as recipe name, and I also don&#39;t find inside recipe any mention o=
f package name,</div><div><br></div><div>Can anyone help to understand wher=
e the package is actually named in recipes ?</div><div><br></div><div>Thank=
 you,</div><div>Ran</div></div>

--089e082241785fb47e055d9c8924--
