Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5623AE00E00; Wed,  4 Sep 2019 06:54:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.170 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
	[209.85.160.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F502E00DE6
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2019 06:54:41 -0700 (PDT)
Received: by mail-qt1-f170.google.com with SMTP id b2so20945415qtq.5
	for <yocto@yoctoproject.org>; Wed, 04 Sep 2019 06:54:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=OaQOM1/OZspw1ENRN6PHpaRqTtaSdD3NhPxdj/j7E4A=;
	b=iVV48O91LgQI3/0q0tuHhpdo+8xtH385zqGDviZ+1FLq+2D3YLuNXx0YM0iCKNiNt7
	UF9EN6Bl19f6OxSUkwzmGqC/hg0KISkGs4GnXDKrQeCdPZtlOVurXyOs0ERVoXzursj0
	6R0g/DFeVNBwj2QJBlKC9/91bO1RmOPAfHPkL3PHIbZPZVqtGmhzqXlxjb25Jf8ZlXsU
	/wCi1bszEFsVpN7Mr6yVE6OmDYgk0USoB+SPghF911iMWj6eYXcbSOzVoJPevJLRJpgD
	uxCTCBnpHwNPwuvoWIFjavjG9nAk8wj+DTX/FUC/u1mlXKagco0lZ5BtsjT30IhlcAXk
	DB0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=OaQOM1/OZspw1ENRN6PHpaRqTtaSdD3NhPxdj/j7E4A=;
	b=mpWEAfKqIDNc3XL0y+4rW5SGtSxQJwAqnpr2LwbsH1kM6RPWZP0D9jLL49dFJZsV9H
	O/WtCbABEApxiyi0IA3mPrRbKg8aFS52TVGT5gewQKXJHxaRvdHlHvh774bD5ZDf/Tid
	KFMe4GwcCZciW70KTyEqW+XJXuRiYrwTAXniTYHTjd4+7a4Qx8fV1UUXrgICwtvGPWEY
	d7/RwBuDkLL2WDhkmKUSynOwXLfEzwSKDVKQw7qaXNfcmMJBAmRyB8KdZGicagf9KWas
	3BTY5y0wxWX1GAoDP/zekacBG7qOZqSJxtK3+oOLLxgs4attD81g6hLV+rmKpY1EJpC1
	cCFA==
X-Gm-Message-State: APjAAAXoY0ba3nTxlWZ8jo5pNwExi5QVqX5ygFT5lTF7ZqqXnpulXIxe
	7YfsZ44pV5WV8+W3fW5LRz37Iq6Fvm+llVaIc/o/CbB9
X-Google-Smtp-Source: APXvYqwTlm7+6lsUHzpe2H5MObypnwdvbmLXRELm8Cz9QuzLm9xttr7gMr5A7ffiTeg++fblu2AsfklFCb14g3MdrRs=
X-Received: by 2002:ac8:460d:: with SMTP id p13mr30955843qtn.378.1567605280397;
	Wed, 04 Sep 2019 06:54:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAAjAsiw9Az8N1W=kY_PA92uPU==E+Bob0W_E8icqcGYxnnVhsg@mail.gmail.com>
In-Reply-To: <CAAjAsiw9Az8N1W=kY_PA92uPU==E+Bob0W_E8icqcGYxnnVhsg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 4 Sep 2019 06:54:29 -0700
Message-ID: <CAMKF1soFzHWLyGS4jcur6mdUL18dkUt0qYnbiwygOosy-f3X2w@mail.gmail.com>
To: Matteo Facchinetti <matteo.facchinetti@sirius-es.it>
Cc: yocto@yoctoproject.org
Subject: Re: in-tree module dependency
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
X-List-Received-Date: Wed, 04 Sep 2019 13:54:42 -0000
Content-Type: multipart/alternative; boundary="000000000000e2e0b50591ba8b5f"

--000000000000e2e0b50591ba8b5f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 4, 2019 at 2:58 AM Matteo Facchinetti <
matteo.facchinetti@sirius-es.it> wrote:

> Hi,
>
> I have a problem with a custom kernel module's recipe that depends to an
> other module (in-tree).
> My kernel module recipes built seems OK, but I have a problem when doing
> the rootfs image stage.
>
> Error:
>  Problem: package packagegroup-console-sirlinux-1.0-r0.0.noarch requires
> canopen-sync, but none of the providers can be installed
>   - package canopen-sync-git-r0.2.neo_sirius requires
> kernel-module-canopen-sync-4.9.51-yocto-standard, but none of the provide=
rs
> can be installed
>   - conflicting requests
>   - nothing provides kernel-module-xeno-can-4.9.51-yocto-standard needed
> by kernel-module-canopen-sync-4.9.51-yocto-standard-git-r0.2.neo_sirius
>

It seems this modules is not built can you check if that=E2=80=99s the case=
 ? You
might look for ipk or rpm in deploy area with this name

>
> ERROR: sirlinux4-image-qt4e-1.0-r0 do_rootfs: Function failed: do_rootfs
> ERROR: Logfile of failure stored in:
> /workspace/neo-sirius_sirlinux4/build/tmp/work/neo_sirius-poky-linux-gnue=
abi/sirlinux4-image-qt4e/1.0-r0/temp/log.do_rootfs.9126
> ERROR: Task
> (/workspace/neo-sirius_sirlinux4/meta-sirlinux/recipes-qt4/images/sirlinu=
x4-image-qt4e.bb:do_rootfs)
> failed with exit code '1'
>
>
> I don't understand how exactly the modules dependencies works...
> Initially, I suppose that PROVIDES variable was updated automatically wit=
h
> the correct modules names when compiled like module from kernel but now, =
I
> don't know if I have to specify it manually or is there any other way?
>
> Regards,
> Matteo
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000e2e0b50591ba8b5f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Sep 4, 2019 at 2:58 AM Matteo Facchinetti &lt;<a hr=
ef=3D"mailto:matteo.facchinetti@sirius-es.it">matteo.facchinetti@sirius-es.=
it</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">=
Hi,<br><br>I have a problem with a custom kernel module&#39;s recipe that d=
epends to an other module (in-tree).<br>My kernel module recipes built seem=
s OK, but I have a problem when doing the rootfs image stage.<br><br>Error:=
 <br>=C2=A0Problem: package packagegroup-console-sirlinux-1.0-r0.0.noarch r=
equires canopen-sync, but none of the providers can be installed<br>=C2=A0 =
- package canopen-sync-git-r0.2.neo_sirius requires kernel-module-canopen-s=
ync-4.9.51-yocto-standard, but none of the providers can be installed<br>=
=C2=A0 - conflicting requests<br>=C2=A0 - nothing provides kernel-module-xe=
no-can-4.9.51-yocto-standard needed by kernel-module-canopen-sync-4.9.51-yo=
cto-standard-git-r0.2.neo_sirius<br></div></blockquote><div dir=3D"auto"><b=
r></div><div dir=3D"auto">It seems this modules is not built can you check =
if that=E2=80=99s the case ? You might look for ipk or rpm in deploy area w=
ith this name=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><b=
r>ERROR: sirlinux4-image-qt4e-1.0-r0 do_rootfs: Function failed: do_rootfs<=
br>ERROR: Logfile of failure stored in: /workspace/neo-sirius_sirlinux4/bui=
ld/tmp/work/neo_sirius-poky-linux-gnueabi/sirlinux4-image-qt4e/1.0-r0/temp/=
log.do_rootfs.9126<br>ERROR: Task (/workspace/neo-sirius_sirlinux4/meta-sir=
linux/recipes-qt4/images/sirlinux4-image-qt4e.bb:do_rootfs) failed with exi=
t code &#39;1&#39;<br><br><br>I don&#39;t understand how exactly the module=
s dependencies works...<br>Initially, I suppose that PROVIDES variable was =
updated automatically with the correct modules names when compiled like mod=
ule from kernel but now, I don&#39;t know if I have to specify it manually =
or is there any other way?<br><br>Regards,<br>Matteo</div><div dir=3D"ltr">=
<br></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--000000000000e2e0b50591ba8b5f--
