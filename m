Return-Path: <onureser12@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 877D0E00D35; Thu,  4 Jul 2019 02:53:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (onureser12[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.48 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com
	[209.85.166.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0830FE00B3F
	for <yocto@yoctoproject.org>; Thu,  4 Jul 2019 02:53:02 -0700 (PDT)
Received: by mail-io1-f48.google.com with SMTP id j6so11649934ioa.5
	for <yocto@yoctoproject.org>; Thu, 04 Jul 2019 02:53:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=gKxS2WJkpx+s1h5Xu0vxxN9PKJDs2amR5RKCHcvjYFw=;
	b=b7ax75RSDa0xcfJ9HZr2+aFY0SoB1RcIcKARzOAAatbRhAbXfmzhzTkLTG7azE6Ia8
	dUDXtpES/lHMkdX76uG+yKIZw80sNM87z2TMrgMNctpRZN8dgcsIbTZXXwwG0e0ej8NE
	v2X1VedzQ8w+L/oUYlSrijbpMQHuR+ADsgVFZ5dQHXfH/ERwmLZN0nFyS9snKtN0Oouv
	ZJZCoM8zIajJ82q2ovaN2pdpd9rXZEL6opJo6mEcPHKZ62m9JBSmQNr1VWqgFmGKqJiC
	xijaSr+TCy8nd+YT+Uw8EK6ddwZGcyRBWtsb2MG5DHme388ryqNZu1SCZ9SLx9X+xvUE
	v9+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=gKxS2WJkpx+s1h5Xu0vxxN9PKJDs2amR5RKCHcvjYFw=;
	b=oBHfIhpws0fhkqzK/bHXzrTUWcQ5ZYvETWRY/rQmSnl6abdecBcMI0Q5QpB6ZP9pUp
	N332UEICGRTmbNuyWUkHtQgiT3O9wEq58xJB1cTH8TMHJBjGBE2+5/uMAO6lr3+GB0az
	iQfwz57h1U96ESO08q9EAbamRQKj/0ZXWv97fSjsojRZGWVY4DfdBbBKfKIHvcxuaJYS
	bRsMRKfhLUwdg1DIf7y3ZiOdSh67VL4eQXr+NXb/t+7p8uwqtqTlTAYVqt0uNT/3Sv+Y
	E06NXGE28p4d+v0kDEbmfEWl8PsjUX58+on/tD1Ko8LAjwQiOkm9H8VsRxJdpxTIA50A
	5tiw==
X-Gm-Message-State: APjAAAV2ceRjvT4l8pbVXJVoE0Zvt8pVvGOUyPOARsclGIgn6kZiQSfX
	R2DzvfC3WplCsmAQH4JPNiKSzQIirjVVVp4RqxY=
X-Google-Smtp-Source: APXvYqx67PVpVjt29wZ5l87Gy7MvSTOEX4zHR7CrR2KrkR7oki/aNnty91821bPZqLlYRq8DiZpTqGekDAVdH/I1Grw=
X-Received: by 2002:a02:bca:: with SMTP id 193mr48481702jad.46.1562233982526; 
	Thu, 04 Jul 2019 02:53:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAG+Ob8YjxmmHaEJ-N80QzNKcrP8=5PbMewVApk4tW7J994KfJg@mail.gmail.com>
	<CAGAf8LxzH6BLd43+di7Wy3pRJnNiqPimRW0c6CQWnpTo2X9Xsg@mail.gmail.com>
In-Reply-To: <CAGAf8LxzH6BLd43+di7Wy3pRJnNiqPimRW0c6CQWnpTo2X9Xsg@mail.gmail.com>
From: Onur Eser <onureser12@gmail.com>
Date: Thu, 4 Jul 2019 12:52:51 +0300
Message-ID: <CAG+Ob8b2zq-qftVPV+UBMvZh6CYrw4saHVT1EfCcL3phLRoiuw@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Json-Glib failed to build during the building of Weston image
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
X-List-Received-Date: Thu, 04 Jul 2019 09:53:03 -0000
Content-Type: multipart/alternative; boundary="00000000000095ab9b058cd7f1aa"

--00000000000095ab9b058cd7f1aa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Zoran,
Using weston just for testing GPU acceleration. Then will be converted to
X11.
SYS info:
closx@closx-pc:~$ uname -a
Linux closx-pc 4.15.0-54-generic #58~16.04.1-Ubuntu SMP Mon Jun 24 13:21:41
UTC 2019 x86_64 x86_64 x86_64 GNU/Linux

Onur

Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>, 4 Tem 2019 Per, 12:43
tarihinde =C5=9Funu yazd=C4=B1:

> Hello Onur,
>
> Why Weston protocol? Why not classical X11 Client Server in user
> space? Which DeskTop are U using in Ur YOCTO build?
>
> Thank you,
> Zoran
> _______
>
>
>
> On Thu, Jul 4, 2019 at 10:46 AM Onur Eser <onureser12@gmail.com> wrote:
> >
> > Hello Yocto Community!
> > When I was trying to build core-image-weston with meta-qt5 and
> meta-fsl-arm layer for my imx6 (Humming Board 2 - Armv7) board, it gave a=
n
> error on compilation of the "jason-glib". I would suprised if my image wa=
s
> builded without errors. I never could have finished a Yocto or Qt-cross
> building in my life...
> >
> > So, my error log is,
> >
> > Got pkgconfig variable girdir :
> > Program g-ir-scanner found: YES
> (/home/closx/poky/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/j=
son-glib/1.4.2-r0/recipe-sysroot-native/usr/bin/g-ir-scanner)
> > Adding test "array".
> > Adding test "boxed".
> > Adding test "builder".
> > Adding test "generator".
> > Adding test "gvariant".
> > Adding test "invalid".
> > Adding test "node".
> > Adding test "object".
> > Adding test "parser".
> > Adding test "path".
> > Adding test "reader".
> > Adding test "serialize-simple".
> > Adding test "serialize-complex".
> > Adding test "serialize-full".
> > ERROR: meson failed
> > WARNING: exit code 1 from a shell command.
> > ERROR: Function failed: do_configure (log file is located at
> /home/closx/poky/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/js=
on-glib/1.4.2-r0/temp/log.do_configure.13333)
> >
> > Thanks,
> > Have a good day!
> > Onur
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000095ab9b058cd7f1aa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Zoran,</div><div>Using weston just for testing =
GPU acceleration. Then will be converted to X11.</div><div>SYS info:</div><=
div>closx@closx-pc:~$ uname -a<br>Linux closx-pc 4.15.0-54-generic #58~16.0=
4.1-Ubuntu SMP Mon Jun 24 13:21:41 UTC 2019 x86_64 x86_64 x86_64 GNU/Linux<=
/div><div><br></div><div>Onur<br></div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">Zoran Stojsavljevic &lt;<a href=3D"m=
ailto:zoran.stojsavljevic@gmail.com">zoran.stojsavljevic@gmail.com</a>&gt;,=
 4 Tem 2019 Per, 12:43 tarihinde =C5=9Funu yazd=C4=B1:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">Hello Onur,<br>
<br>
Why Weston protocol? Why not classical X11 Client Server in user<br>
space? Which DeskTop are U using in Ur YOCTO build?<br>
<br>
Thank you,<br>
Zoran<br>
_______<br>
<br>
<br>
<br>
On Thu, Jul 4, 2019 at 10:46 AM Onur Eser &lt;<a href=3D"mailto:onureser12@=
gmail.com" target=3D"_blank">onureser12@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello Yocto Community!<br>
&gt; When I was trying to build core-image-weston with meta-qt5 and meta-fs=
l-arm layer for my imx6 (Humming Board 2 - Armv7) board, it gave an error o=
n compilation of the &quot;jason-glib&quot;. I would suprised if my image w=
as builded without errors. I never could have finished a Yocto or Qt-cross =
building in my life...<br>
&gt;<br>
&gt; So, my error log is,<br>
&gt;<br>
&gt; Got pkgconfig variable girdir :<br>
&gt; Program g-ir-scanner found: YES (/home/closx/poky/build/tmp-glibc/work=
/cortexa9hf-neon-oe-linux-gnueabi/json-glib/1.4.2-r0/recipe-sysroot-native/=
usr/bin/g-ir-scanner)<br>
&gt; Adding test &quot;array&quot;.<br>
&gt; Adding test &quot;boxed&quot;.<br>
&gt; Adding test &quot;builder&quot;.<br>
&gt; Adding test &quot;generator&quot;.<br>
&gt; Adding test &quot;gvariant&quot;.<br>
&gt; Adding test &quot;invalid&quot;.<br>
&gt; Adding test &quot;node&quot;.<br>
&gt; Adding test &quot;object&quot;.<br>
&gt; Adding test &quot;parser&quot;.<br>
&gt; Adding test &quot;path&quot;.<br>
&gt; Adding test &quot;reader&quot;.<br>
&gt; Adding test &quot;serialize-simple&quot;.<br>
&gt; Adding test &quot;serialize-complex&quot;.<br>
&gt; Adding test &quot;serialize-full&quot;.<br>
&gt; ERROR: meson failed<br>
&gt; WARNING: exit code 1 from a shell command.<br>
&gt; ERROR: Function failed: do_configure (log file is located at /home/clo=
sx/poky/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/json-glib/1.4=
.2-r0/temp/log.do_configure.13333)<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Have a good day!<br>
&gt; Onur<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div>

--00000000000095ab9b058cd7f1aa--
