Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 872C0E00C87; Mon, 15 Jul 2019 07:43:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
	[209.85.222.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94503E003E1
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2019 07:43:26 -0700 (PDT)
Received: by mail-qk1-f196.google.com with SMTP id 201so11769126qkm.9
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2019 07:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=bTv76HeKC7WYHzNJBx+gpY1oZlBJ4DW9AuPl4MqMB6U=;
	b=mkt0e44195J68BJs7T+y3ZmkBk1HUUlA1MEcEfiIcy/Q8/5xzroMRTPJx5vELnD6G5
	+LD0jYGdoK0HjFf9C96mhweuNkQ0NV9gBdp1ZYqXW3Y9GQvvvZg2/5fCSU0MUsImgsA7
	De8MhcaubTXtj58v9bRs5XLVEh9t3H+SjC1KjK6Lcvzf2OziNA0BVXKIK3OLgqeXDaOL
	4VuA+fLZO7HnkBa8Gc959/KF8iXCoTRV4McfYd/XoLNmIeoAJTknYjjJnZ8dMR7Go+T/
	FZBHqlKw0QabaK7fwmZJww8yjesMdpjI+WivCol3pW7iD1hxoqdkKEFEwvNtH2vTGbZk
	pyOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=bTv76HeKC7WYHzNJBx+gpY1oZlBJ4DW9AuPl4MqMB6U=;
	b=Ke63qyRhJiqPEjc9KGdlPzlqC7w6gmFeKVZ7Rk5pvdOKRP2BIzXIbg8xWH6jFVjpWJ
	4rYtPBnQFBLpnjsagv7Yee0FU7QrOGpHcpdV0XXVXbNN5VpA/FqwlcQCEUb/zz82hnHA
	TeQCfKXnIFqtZrISh++DQaAm4nM/zBRb1wwZvQcMIEYMPhVKAUkiGvaEur+KjWl5UqTH
	V6TY0AUu7y9VpSY6s6abzF661gtkSucak58QkZRkynxiQLDcGbSb0FJ3sr9gi0cxepqk
	YITWvJexX+emR830/KLTK9TXB+BM3pREhx7/iygQwsAuNRN5RSE3r/HF8//Le1xbWGXe
	jpJg==
X-Gm-Message-State: APjAAAWlymA5LuFnws7Lmgn7lMsfZP3XP9Qa0pNmjXN/mokBUyaGIJbS
	3Xi0f+hnYSbqOI+FoO9unEQhCtKdKajWsyUwUU8=
X-Google-Smtp-Source: APXvYqza7V6UpyV2fQS36k3EYjU2m6bBU4BK76fSPw8ZMcrryQsQxnOdSOQvTm3jrXnGtBLOZ6372OCt6UY/U/enxpE=
X-Received: by 2002:a37:7083:: with SMTP id l125mr16269091qkc.71.1563201805738;
	Mon, 15 Jul 2019 07:43:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAG+Ob8ZcYRYaFcyFopckNiTMR8ZTJW5vcM1cO+DZM7-0aR3+rA@mail.gmail.com>
	<CAMKF1soen1zoyD=eE73Vod4pG_OBSSVLb2mpWE50VVsjObas2w@mail.gmail.com>
	<CAG+Ob8ZWhYpp9qh2+6nvsJouf9usOCTWsP_7836T6FHh1F8vAA@mail.gmail.com>
In-Reply-To: <CAG+Ob8ZWhYpp9qh2+6nvsJouf9usOCTWsP_7836T6FHh1F8vAA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 15 Jul 2019 07:43:10 -0700
Message-ID: <CAMKF1srC+oqXp6skipS_ch_S4XWORn7ErYTTJBXcBUbpXBN+NQ@mail.gmail.com>
To: Onur Eser <onureser12@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [Meta-Qt5] "Unknown Module: declarative" Error While Creating Toolchain
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
X-List-Received-Date: Mon, 15 Jul 2019 14:43:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 15, 2019 at 1:06 AM Onur Eser <onureser12@gmail.com> wrote:
>
> Hi Khem,
> Thank you for your answer. I have built a toolchain as exactly as you sai=
d, days ago.
> But it was giving error Unknown Modules: widgets when I try to compile. M=
e and my
> BSP found that this is a know Qt layer issue that will not be solved til =
an update is pushed to meta-qt5 layer.

What is complete error here and which recipe is it coming from ?
it looks like that package needs QtWidgets

> Thank you anyway, I am trying to native compile over Debian.
> Have a great week!
> Onur
>
> Khem Raj <raj.khem@gmail.com>, 15 Tem 2019 Pzt, 03:55 tarihinde =C5=9Funu=
 yazd=C4=B1:
>>
>> On Mon, Jul 8, 2019 at 10:59 PM Onur Eser <onureser12@gmail.com> wrote:
>> >
>> > Hello All,
>> >
>> > I have talked to my BSP provider and they have solved the conflict fil=
es issue with an update. Now I am able to create and boot a Yocto Image wit=
h Meta-Qt5 recipes and 'dev_pkgs' in it. But still cannot create a toolchai=
n. Nor with I guess it is trying to compile something before qtdeclarative,=
 but these 'something' depends on qtdeclarative.
>> >
>> > My image is core image is Weston. I added the line 'inherit populate_s=
dk_qt5' to my core-image-weston.bb file. And tried both commands 'bitbake m=
eta-toolchain-qt5' and 'bitbake -c populate_sdk core-image-weston'. The res=
ult is the same.
>> >
>> > I cut just the error part of my output:
>> >
>> > | cd qdeclarativefolderlistmodel/ && ( test -e Makefile || /home/closx=
/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+git=
AUTOINC+b2476dcd53-r0/recipe-sysroot-native/usr/bin/qt5/qmake -o Makefile /=
home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquick1/=
5.10.1+gitAUTOINC+b2476dcd53-r0/git/tests/auto/declarative/qdeclarativefold=
erlistmodel/qdeclarativefolderlistmodel.pro ) && make -f Makefile
>> > | Project ERROR: Unknown module(s) in QT: declarative widgets
>> > | Makefile:88: recipe for target 'sub-qdeclarativecomponent-make_first=
' failed
>> > | make[2]: *** [sub-qdeclarativecomponent-make_first] Error 3
>> > | make[2]: *** Waiting for unfinished jobs....
>> > | Project ERROR: Unknown module(s) in QT: declarative
>> > | Project ERROR: Unknown module(s) in QT: declarative
>> > | Makefile:113: recipe for target 'sub-qdeclarativecontext-make_first'=
 failed
>> > | make[2]: *** [sub-qdeclarativecontext-make_first] Error 3
>> > | Project ERROR: Unknown module(s) in QT: declarative
>> > | Makefile:138: recipe for target 'sub-qdeclarativeengine-make_first' =
failed
>> > | make[2]: *** [sub-qdeclarativeengine-make_first] Error 3
>> > | Makefile:63: recipe for target 'sub-parserstress-make_first' failed
>> > | make[2]: *** [sub-parserstress-make_first] Error 3
>> > | make[2]: Entering directory '/home/closx/poky/build/tmp/work/cortexa=
9hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/=
tests/manual/declarative'
>> > | make[2]: Nothing to be done for 'first'.
>> > | make[2]: Leaving directory '/home/closx/poky/build/tmp/work/cortexa9=
hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/t=
ests/manual/declarative'
>> > | make[1]: Leaving directory '/home/closx/poky/build/tmp/work/cortexa9=
hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/t=
ests/manual'
>> > | Project ERROR: Unknown module(s) in QT: declarative
>> > | Makefile:163: recipe for target 'sub-qdeclarativeerror-make_first' f=
ailed
>> > | make[2]: *** [sub-qdeclarativeerror-make_first] Error 3
>> > | Project ERROR: Unknown module(s) in QT: declarative
>> > | Makefile:188: recipe for target 'sub-qdeclarativefolderlistmodel-mak=
e_first' failed
>> > | make[2]: *** [sub-qdeclarativefolderlistmodel-make_first] Error 3
>> > | make[2]: Leaving directory '/home/closx/poky/build/tmp/work/cortexa9=
hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/t=
ests/auto/declarative'
>> > | Makefile:45: recipe for target 'sub-declarative-make_first' failed
>> > | make[1]: *** [sub-declarative-make_first] Error 2
>> > | make[1]: Leaving directory '/home/closx/poky/build/tmp/work/cortexa9=
hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/t=
ests/auto'
>> > | Makefile:45: recipe for target 'sub-auto-make_first' failed
>> > | make: *** [sub-auto-make_first] Error 2
>> > | ERROR: oe_runmake failed
>> > | WARNING: exit code 1 from a shell command.
>> > | ERROR: Function failed: do_compile_ptest_base (log file is located a=
t /home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquic=
k1/5.10.1+gitAUTOINC+b2476dcd53-r0/temp/log.do_compile_ptest_base.29566)
>> > ERROR: Task (/home/closx/poky/meta-qt5/recipes-qt/qt5/qtquick1_git.bb:=
do_compile_ptest_base) failed with exit code '1'
>> >
>> > What do you guys think the reason of this issue may be? Any solution o=
ffers?
>> >
>> > My full output:
>> > https://paste.ee/p/PupWr#Epvqnw9FoasgQEBhIXqQ8hH7veMcRybX
>> >
>> > Another source issue again?
>> > Have a lovely day!
>>
>> qtquick1 has been removed but I am guessting you are on an older
>> release. Can you try adding DEPENDS +=3D "qtdeclarative"  to qtquick1
>> recipe and see if that helps ?
>> secondly you can stop build ptest for this package since thats where
>> its failing, that might be a workaround.
>>
>> > Onur
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto

