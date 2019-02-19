Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B630E00B43; Mon, 18 Feb 2019 23:36:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.68 listed in list.dnswl.org]
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
	[209.85.221.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C558CE00901
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2019 23:36:37 -0800 (PST)
Received: by mail-wr1-f68.google.com with SMTP id v13so20967292wrw.5
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2019 23:36:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=dXBBrheIfN53xOVuU7rAas5ZVO6YFK5XrMcgOGXc+R0=;
	b=Z02Nk6SW0wL26q52W+AYHXbGQKjKgEMXkpCTo63pq2N3Vo1rYpsFGWwMJXhzFas4hb
	fE39sDFEA9+iliGMqnrrld5JvbqVDHJJ6qzRi+CkqiBYkjjlu1OTEuwlChloOAEFe7vX
	YF9sDHdZsEHILiPWi3dbdWVXMHRQ8ilmVqT4eexvD7xp9xJscjyELje7KqRQK1lmvIqO
	o1LnWoQwJ1b75VnErYRqWULEGgrfb5Z5iEIm0hs7CvRr+wbtb+OhkUghri7ZXojkoDKc
	WW2xHc1orZfa0Vgwn0TEsrsqG3ECawMtXkCz/HpvsrSM7GPSq3FGV5bgHhkA8bkAtENO
	jymA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=dXBBrheIfN53xOVuU7rAas5ZVO6YFK5XrMcgOGXc+R0=;
	b=CAKQJTg+6eWCubJryNSoR1pKiocq9/vCCn7hq40hh7RFgCGgRpf/rlyldZWyVsAPac
	K+P0GMVPvKf+Nqb5+DCLK4GB1HzobaxTUQ/tOif8hgdwlznyP7JcoXWv47Emak8BrPd4
	mx0oDqDqf8NlpTxdhCawUu4XlR1z4g5gu+bWjDlSTMxvwQnK+pWJFiVrAILfOEFz6b4Z
	QJCGrk47SFf7dcZo13uJHXzhs1EZdomy7fS1f7tkhXA9aAjk5JHExc5pAEn99jJukI2n
	EowsybNTOcJ7KWlEYmM86TmEZKEvRkToq+gmVs0+94sFAxwtvtzmaPOosI5H85nl1rRq
	wKPQ==
X-Gm-Message-State: AHQUAuZcrN1YxGdxjsNHVuBqgAdFrgi/g/I2X1CM2jpV2xgUXpFVlLk6
	kG7U1Urk+P5An0xu+bhcMuavuUTBgvDYUV+z9zSbYqmm/I0=
X-Google-Smtp-Source: AHgI3IZXmJQGRH/fyj4C346qR/plOG1cCo/z6DLfZiYTb7ChBbuhI5k8Pwhjaeu7TN5VWIfeznaR8Efih4bngtDtoSE=
X-Received: by 2002:adf:f40d:: with SMTP id g13mr19424349wro.18.1550561796897; 
	Mon, 18 Feb 2019 23:36:36 -0800 (PST)
MIME-Version: 1.0
References: <CAAfyv34zsYSumJ9ka5GczozkG5UNqF977R7Ar8hizOq0QKXa=w@mail.gmail.com>
	<6159d263af9714c2e5a021eaa3e24e261474a66c.camel@gmail.com>
In-Reply-To: <6159d263af9714c2e5a021eaa3e24e261474a66c.camel@gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Tue, 19 Feb 2019 08:36:25 +0100
Message-ID: <CAAfyv35g4ucKO5Y09F_wE+wEvAfaJkCjAukApFzy_9q0M3Z2JA@mail.gmail.com>
To: Joshua Watt <jpewhacker@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: readonly rootfs - storing data in separate partition
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
X-List-Received-Date: Tue, 19 Feb 2019 07:36:38 -0000
Content-Type: multipart/alternative; boundary="0000000000001b40cd05823a4d94"

--0000000000001b40cd05823a4d94
Content-Type: text/plain; charset="UTF-8"

On Mon, Feb 18, 2019 at 6:05 PM Joshua Watt <jpewhacker@gmail.com> wrote:

> On Mon, 2019-02-18 at 17:36 +0100, Belisko Marek wrote:
>
> Hi,
>
> I plan to use readonly rootfs option and store some custom data in
> separate partition (like hostname, wpa_supplicant.conf etc). I have wic
> file which create rootfs + then rest is for data storage. I can adjust
> various recipes to symlink to /data partition. My question is if there
> exists some mechanism how to store some pieces in non-rootfs partition? I
> know some projects which put those extra files to deploy dir and then by dd
> create dummy storage nd put files there and finally create partition from
> that. Thanks a log for any pointers.
>
>
> We do this a lot using volatiles files. The best documentation is the core
> volatiles file:
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-core/initscripts/initscripts-1.0/volatiles
>
Can this be used when systemd is init manager? Thanks.

>
>
> BR,
>
> marek
>
> --
>
> Joshua Watt <JPEWhacker@gmail.com>
>

BR,

/marek

--0000000000001b40cd05823a4d94
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, Feb 18, 2019 at 6:05 PM Joshua Wa=
tt &lt;<a href=3D"mailto:jpewhacker@gmail.com">jpewhacker@gmail.com</a>&gt;=
 wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div style=3D"text-align:left;direction:ltr"><div>On Mon=
, 2019-02-18 at 17:36 +0100, Belisko Marek wrote:</div><blockquote type=3D"=
cite" style=3D"margin:0px 0px 0px 0.8ex;border-left:2px solid rgb(114,159,2=
07);padding-left:1ex"><div dir=3D"ltr">Hi,<div><br></div><div>I plan to use=
 readonly rootfs option and store some custom data in separate partition (l=
ike hostname, wpa_supplicant.conf etc). I have wic file which create rootfs=
=C2=A0+ then rest is for data storage. I can adjust various recipes to syml=
ink to /data partition. My question is if there exists some mechanism how t=
o store some pieces in non-rootfs partition? I know some projects which put=
 those extra files to deploy dir and then by dd create dummy storage nd put=
 files there and finally create partition from that. Thanks a log for any p=
ointers.</div></div></blockquote><div><br></div><div>We do this a lot using=
 volatiles files. The best documentation is the core volatiles file: <a hre=
f=3D"https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-core=
/initscripts/initscripts-1.0/volatiles" target=3D"_blank">https://git.yocto=
project.org/cgit/cgit.cgi/poky/tree/meta/recipes-core/initscripts/initscrip=
ts-1.0/volatiles</a></div></div></blockquote><div>Can this be used when sys=
temd is init manager? Thanks.</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div style=3D"text-align:left;direction:ltr"><div><br></div><blo=
ckquote type=3D"cite" style=3D"margin:0px 0px 0px 0.8ex;border-left:2px sol=
id rgb(114,159,207);padding-left:1ex"><div dir=3D"ltr"><div><br></div><div>=
BR,</div><div><br></div><div>marek<br clear=3D"all"><div><br></div></div></=
div></blockquote><div><span><pre>-- <br></pre>Joshua Watt &lt;<a href=3D"ma=
ilto:JPEWhacker@gmail.com" target=3D"_blank">JPEWhacker@gmail.com</a>&gt;</=
span></div></div>
</blockquote></div><br clear=3D"all"><div>BR,</div><div><br></div><div>/mar=
ek</div><div dir=3D"ltr" class=3D"gmail_signature"><br><br></div></div>

--0000000000001b40cd05823a4d94--
