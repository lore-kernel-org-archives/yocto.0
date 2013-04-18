Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ea0-f174.google.com (mail-ea0-f174.google.com
	[209.85.215.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCEC0E01487
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 20:21:35 -0700 (PDT)
Received: by mail-ea0-f174.google.com with SMTP id m14so1008628eaj.5
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 20:21:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=Ax438IxFyhtfTVHvCbQ5J4JGJdYXb8MFqOQXhASnZRA=;
	b=cjf9kJ1JdomQw6EQmJjfkCNRqN58LZ07ft6/uWc20QUvO/kB17z9ed/6Spww2MOGqz
	OVNPgaIYoyvq8FfAr6b94QfJ9Nk60lpaazaF9LyUD1tqeQanKOv7FxNqOjDdCeBo/qT3
	bvddAcHNj+uenLhfagrTVL/rO+rJKSKTuCCss=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=Ax438IxFyhtfTVHvCbQ5J4JGJdYXb8MFqOQXhASnZRA=;
	b=Cno6EXN1TyyNoF+GuTAPOlF9tU5vs1Dlzv3ih1CNJ3LybeARiurz4sSjEnHwuIf6EZ
	Gx1Cwrs3fqbUR3m4gR4KG8/sAD8pN1zUSO8IBDi5osE94Nd9eppGhuXk/+iNepr4g2MN
	1BCWacdX63UbDd51MH6e58OnAvNVStX/O3ZRPnUWpgcmYeCr8nFIaUyMhNkyzEvaTl6y
	QBxRl1b0cZAmpvnz+iebMX++BQ1yKgkctgoqFgqvHcm4hPy2+RGiyKySnSqimS5UUFCQ
	txyIpBXwczSIPJSsS/zTJmNz55+ZZTLhiyqC+v8+neSJJmMk967GGJA/677R79S9HX4t
	rY+w==
MIME-Version: 1.0
X-Received: by 10.14.89.69 with SMTP id b45mr25190526eef.10.1366255294448;
	Wed, 17 Apr 2013 20:21:34 -0700 (PDT)
Received: by 10.223.87.73 with HTTP; Wed, 17 Apr 2013 20:21:33 -0700 (PDT)
Received: by 10.223.87.73 with HTTP; Wed, 17 Apr 2013 20:21:33 -0700 (PDT)
In-Reply-To: <CAHUNapRTY=2TtCSFE=OJz_iGwuaJHKv8iHsL3VrJ=jKXSCf=SQ@mail.gmail.com>
References: <CAHUNapTBjAg2U6p3nk8E_dtrJAcJ3BJ-EFYvsCtQ2R71dtGRwg@mail.gmail.com>
	<CAHUNapRTY=2TtCSFE=OJz_iGwuaJHKv8iHsL3VrJ=jKXSCf=SQ@mail.gmail.com>
Date: Wed, 17 Apr 2013 20:21:33 -0700
Message-ID: <CA+gsK-r=iE4CmnUXb79J-T5g6dy5csKZNNpMu5=SnFM4WBdKbg@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Trevor Woerner <twoerner@gmail.com>
X-Gm-Message-State: ALoCoQl7ix0Mv1kxidlJDPb4DkCbOX0XO5CUiGx/3DoWH0sPyxEVia4XIbjqW+k82TcOGoujqRX7
Cc: yocto@yoctoproject.org
Subject: Re: runqemu: Could not initialize SDL(No available video device) - exiting
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
X-List-Received-Date: Thu, 18 Apr 2013 03:21:36 -0000
Content-Type: multipart/alternative; boundary=001a11c1b0c07fca1c04da9a19a9

--001a11c1b0c07fca1c04da9a19a9
Content-Type: text/plain; charset=ISO-8859-1

If you do not have libsdl1.2-dev (Ubuntu) installed on your dev/host system
then qemu will be built without video support.

The newer YP reference manual lists that library as optional for host
systems with graphics support.

Rudi
On Apr 17, 2013 8:15 PM, "Trevor Woerner" <twoerner@gmail.com> wrote:

> On Mon, Apr 15, 2013 at 11:46 PM, Trevor Woerner <twoerner@gmail.com>
> wrote:
> >     Could not initialize SDL(No available video device) - exiting
>
> I was able to "solve" my problem by moving my SSTATE_DIR and starting
> over. Conversely, clobbering my SSTATE_DIR would have solved the issue
> too. That's a lot of sstate that I'd rather not delete; anyone have
> any ideas which package should be cleansstate'd to fix this problem in
> my full SSTATE_DIR? qemu-native?
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11c1b0c07fca1c04da9a19a9
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">If you do not have libsdl1.2-dev (Ubuntu) installed on your =
dev/host system then qemu will be built without video support.</p>
<p dir=3D"ltr">The newer YP reference manual lists that library as optional=
 for host systems with graphics support.</p>
<p dir=3D"ltr">Rudi</p>
<div class=3D"gmail_quote">On Apr 17, 2013 8:15 PM, &quot;Trevor Woerner&qu=
ot; &lt;<a href=3D"mailto:twoerner@gmail.com">twoerner@gmail.com</a>&gt; wr=
ote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
On Mon, Apr 15, 2013 at 11:46 PM, Trevor Woerner &lt;<a href=3D"mailto:twoe=
rner@gmail.com">twoerner@gmail.com</a>&gt; wrote:<br>
&gt; =A0 =A0 Could not initialize SDL(No available video device) - exiting<=
br>
<br>
I was able to &quot;solve&quot; my problem by moving my SSTATE_DIR and star=
ting<br>
over. Conversely, clobbering my SSTATE_DIR would have solved the issue<br>
too. That&#39;s a lot of sstate that I&#39;d rather not delete; anyone have=
<br>
any ideas which package should be cleansstate&#39;d to fix this problem in<=
br>
my full SSTATE_DIR? qemu-native?<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--001a11c1b0c07fca1c04da9a19a9--
