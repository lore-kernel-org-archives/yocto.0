Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFB43E00CD5; Mon,  4 Sep 2017 06:25:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=AC_DIV_BONANZA,BAYES_00,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.51 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 AC_DIV_BONANZA RAW: Too many divs in a row... spammy template
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2C81E00CC4
	for <yocto@yoctoproject.org>; Mon,  4 Sep 2017 06:25:04 -0700 (PDT)
Received: by mail-wm0-f51.google.com with SMTP id v2so4975307wmf.0
	for <yocto@yoctoproject.org>; Mon, 04 Sep 2017 06:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=4A3yjZ4WjJZHs6eWiThIAvCo6iSXZ+evBIjqtrYBydQ=;
	b=lcDvrRYVGQDRqBt5DVsxN8TVKDgkYhktnIpFB2DrCD0UuQHXPuvROOf11NSCkmmPHo
	NV37Qziv9KLdCGzwBOVvyb+GeRrYNhgAdELcu08L0dU2GFWyWK82WMlb4Ph39Gg5P+ir
	Sq/G64E+shkO++xKOHD9KXpcQq3st39+P4pxWlD1G+8zw7hO+koulO6o6tTuCRvjeLLL
	J9giiShfrr+AVfBgEDAFoRbCGOa1WfWulbeLdk9A1Wcyofn9N946yaFGyxH60croMg3P
	i8SqECbXSK4dyRrOyPk2C29+ARAOy/j/nqGZqtw6gn5AO5ZknD+c0eSyafMyA99YfuC5
	gtFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=4A3yjZ4WjJZHs6eWiThIAvCo6iSXZ+evBIjqtrYBydQ=;
	b=ielxm/3yZEPuRg+PvrfDCxi74ze+iICYKxGlXyx2FVXQe+e5OFidK/R+8w5pg3UZZz
	Znv1svgRzxmdIgTTW4fo729E36rx4bBTkOTGW4Bblb/sk7KYU0LO6EGn2mIjxP996Y6c
	erXSGFcLlq8q6BC2hKz7IMJuHWLNFxVnKqseUOoFCEuqJo6EbXZGd+EGhdhx7EzSC9Av
	m+9UJ/sg5PIp8MMNrmMuxbqselixodvoNX6Bpdw0hOJthPHVFnkrcw1iIwR9xMSFaZUh
	AxmVXOlrtGfdwiahUNTEH1eSpRdvKxQq9EkMe5iyT6o98ocpTm1BsLOm6QZzqXGQKxDl
	OdwQ==
X-Gm-Message-State: AHPjjUjVc2v+SIRVCRBB3zGF1P9GsVeV/zBtNkUZOVso9A4CWFhDJp/1
	GI4dxjgci0LcjlD0IGI34FfrtV5KtA==
X-Google-Smtp-Source: ADKCNb46VEvZZ4ykCsUGhUl1mlDf1J1Xgt26Qw+ntrP7eaKIO1NCbY4OvfERx9uIE6xU0N07KEiBsHSVHCU6nWlWAAQ=
X-Received: by 10.28.105.92 with SMTP id e89mr266089wmc.65.1504531503330; Mon,
	04 Sep 2017 06:25:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.218.197 with HTTP; Mon, 4 Sep 2017 06:25:02 -0700 (PDT)
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 4 Sep 2017 15:25:02 +0200
Message-ID: <CAGAf8Lyitxw_adOzO7Rru6ho1zPOZ3k+Ese_bMsw=UJQrhbh7Q@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: The differences between rpm 4.x and rpm 5.x in Morty (Poky 2.2)
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
X-List-Received-Date: Mon, 04 Sep 2017 13:25:06 -0000
Content-Type: multipart/alternative; boundary="001a114788decf39b405585d09f7"

--001a114788decf39b405585d09f7
Content-Type: text/plain; charset="UTF-8"

Hello,

After first attempt to understand how to manage the whole YOCTO build, I
did understand that lot of reading should be done on my behalf, in order to
catch up with the whole bitbake architecture, but not only... A bit of
history is also required.

Now, since I am now managing the huge poky (Morty 2.2) tree, in order to
assemble Qt framework on the top of Xorg (for the starters I would like to
see how all of this comes/behaves together), I have managed to build LXDE
(using Xorg as underlying architecture) load for iMX6, and ported it to the
appropriate HW platform.

While doing that I have encountered several problems but was able to solve
these bugs with the suggestions I got from the caring people from this list
(to try to tweak the recipes). Well... :-)

Now, I am facing a bigger problem, since in the initial tree load I did not
put (excluded) any package manager (both smartpm and opkg, trying to get
rid of rpm 5.x dependencies, naively). The one I aim for is actually one
which I know the best, and this is DNF. It came into Pyro (2.3.1).

After I reprogrammed eMMC, and checked LXDE with Morty features for
designated iMX6 HW , I decided to add DNF into the tree, and replace rpm
5.x (in meta/recipes-devtools) with rpm 4.x (since DNF requires rpm 4.x
support, as I read from the documentation).

Unfortunately, this did not work for me (lot of errors trying to recompile,
since rpm 5.x is missing). For Morty I sense that I need to have both rpm
packages (since lot of another packages depend (???) from rpm 5.x). I
understood that these were changed to depend from rpm 4.x in Pyro Poky
2.3.1 (if I am not mistaken)?!

How can I achieve this for Morty? I know that I need to place DNF recipes
into recipes-devtools/.

Where should I place rpm 4.x, so it'll have only DNF to be dependent from
it?

Any quick hints (material, emails, threads to read)?

Thank you,
Zoran

--001a114788decf39b405585d09f7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div><div><div>Hello,<b=
r><br></div>After first attempt to understand how to manage the whole YOCTO=
 build, I did understand that lot of reading should be done on my behalf, i=
n order to catch up with the whole bitbake architecture, but not only... A =
bit of history is also required.<br><br></div>Now, since I am now managing =
the huge poky (Morty 2.2) tree, in order to assemble Qt framework on the to=
p of Xorg (for the starters I would like to see how all of this comes/behav=
es together), I have managed to build LXDE (using Xorg as underlying archit=
ecture) load for iMX6, and ported it to the appropriate HW platform.<br><br=
></div>While doing that I have encountered several problems but was able to=
 solve these bugs with the suggestions I got from the caring people from th=
is list (to try to tweak the recipes). Well... :-)<br><br></div>Now, I am f=
acing a bigger problem, since in the initial tree load I did not put (exclu=
ded) any package manager (both smartpm and opkg, trying to get rid of rpm 5=
.x dependencies, naively). The one I aim for is actually one which I know t=
he best, and this is DNF. It came into Pyro (2.3.1).<br><br></div>After I r=
eprogrammed eMMC, and checked LXDE with Morty features for designated iMX6 =
HW , I decided to add DNF into the tree, and replace rpm 5.x (in meta/recip=
es-devtools) with rpm 4.x (since DNF requires rpm 4.x support, as I read fr=
om the documentation).<br><br></div>Unfortunately, this did not work for me=
 (lot of errors trying to recompile, since rpm 5.x is missing). For Morty I=
 sense that I need to have both rpm packages (since lot of another packages=
 depend (???) from rpm 5.x). I understood that these were changed to depend=
 from rpm 4.x in Pyro Poky 2.3.1 (if I am not mistaken)?!<br><br></div>How =
can I achieve this for Morty? I know that I need to place DNF recipes into =
recipes-devtools/.<br><br></div>Where should I place rpm 4.x, so it&#39;ll =
have only DNF to be dependent from it?<br></div><div><br></div><div>Any qui=
ck hints (material, emails, threads to read)?<br></div><div><br></div>Thank=
 you,<br></div>Zoran<br><br></div>

--001a114788decf39b405585d09f7--
