Return-Path: <malus.brandywine@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4736BE00A54; Mon,  8 Apr 2019 10:09:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (malus.brandywine[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.54 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com
	[209.85.166.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3CD3E00798
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2019 10:08:59 -0700 (PDT)
Received: by mail-io1-f54.google.com with SMTP id c4so11681161ioh.9
	for <yocto@yoctoproject.org>; Mon, 08 Apr 2019 10:08:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=SsqNjVv/C9QOZ7pziNgOYtFHEC3sddYJ5oTo023QH2M=;
	b=UxPlbTi0PYS+zKw1CE+dFOJ3bmdLu/tra2bze5TjxjQEoI4EF4gfOGGa/L4mQVGIDm
	Qc5avdbobRGNoko0GvTgfIPZFObvXGTMQRIUtL3ZHE7dDNWrDom40KPvbfKRBScLETmj
	Ey6xX5x/fvvo5w7wIzL9UKOi264AnS6dqrzyihN0hMAq2iXHXFF9clWaKqL3l0BAVBAI
	uhhLsPHZaflDB5k/Uq6Cwhwm4zpGzAec7DQd5DC6XpWeoQxbA9l7c6ayrX+Tzp/OppP3
	x0GBeVJ1xlz6/6R3nhLiTL58p8oP0+UGW1cH0TOmPKciwuXx/ttH4EE5Z2sbVy3eaZ8q
	Db5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=SsqNjVv/C9QOZ7pziNgOYtFHEC3sddYJ5oTo023QH2M=;
	b=DzUiFnTn6kGgutHLVO2PJ03DwNWVAjiIpjQapkxaWeGtUf9h5KryVKZK2yz6rWqNgX
	ydeeK9sj1gJ+8r9t8PZ5cxO0jmhZVj96jhlYk964ATDWZH6qlSn6WQajCNa7Vu32Po+0
	oixF4qyQYQBEgfeuLHw6sMRlcqQV+ZOd6sB+UwjwYt/hXt8swX7nIM/rjwsgGIfMlkeP
	CIHlJ/Bcrxs4J4s0dwT6BWfHRyB2+cIvs+mYH/UnTNva5sL4ERMwJNFLy/03uvBTgmoe
	EnOcQOsSua0CV75PNNAANJ5LbhddbNIreU4hIo3BZqXPq4PUgIMRuyQ7eG97Kqs7ITw0
	O3Pg==
X-Gm-Message-State: APjAAAUsDk1JYmAXbGkr368U6L82gThgXGnowhURR0qCMkiF4xZokJ66
	NpDScFd3actXalZCYCqbfrQ6nRmkcdTpOxuzlIU=
X-Google-Smtp-Source: APXvYqxP/qfq7x3YZFZncTx0xLHNjeBKRuTsw2eqzCh5di7nnCGzU5dCIOk+Tk417Zprkmw9YIyOe0lcl5JKF8CYG78=
X-Received: by 2002:a6b:8f4f:: with SMTP id r76mr19930768iod.161.1554743339256;
	Mon, 08 Apr 2019 10:08:59 -0700 (PDT)
MIME-Version: 1.0
References: <6bf22911-f264-f7b2-13a3-a914f9b3d2dd@gmail.com>
In-Reply-To: <6bf22911-f264-f7b2-13a3-a914f9b3d2dd@gmail.com>
From: Nataliya Korovkina <malus.brandywine@gmail.com>
Date: Mon, 8 Apr 2019 13:08:48 -0400
Message-ID: <CADz_WD7TRFmcu9YQ+mJ6_nHbKQ5eXp8Fii_AK7ZPDJwhTOVX2A@mail.gmail.com>
To: Karshi Hasanov <karshi.hasanov@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Installation help
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
X-List-Received-Date: Mon, 08 Apr 2019 17:09:00 -0000
Content-Type: multipart/alternative; boundary="000000000000740e3c058607e4a5"

--000000000000740e3c058607e4a5
Content-Type: text/plain; charset="UTF-8"

Hello Karshi,

I had the same message. I added:

CONNECTIVITY_CHECK_URIS=""

in conf/local.conf as a QUICK FIX. I hope someone has better solution,
please?

Thanks,
Nataliya


On Mon, Apr 8, 2019 at 12:43 PM Karshi Hasanov <karshi.hasanov@gmail.com>
wrote:

> Hi all,
>
> I have followed the
>
>
> https://www.yoctoproject.org/docs/2.6.1/brief-yoctoprojectqs/brief-yoctoprojectqs.html
>
> when issue the "bitbake core-image-minimal"
>
> I am keep getting this error:
>
> ERROR:  OE-core's config sanity checker detected a potential
> misconfiguration.
>      Either fix the cause of this error or at your own risk disable the
> checker (see sanity.conf).
>      Following is the list of potential problems / advisories:
>
>      Fetcher failure for URL: 'https://www.example.com/'. URL
> https://www.example.com/ doesn't work.
>      Please ensure your host's network is configured correctly,
>      or set BB_NO_NETWORK = "1" to disable network access if
>      all required sources are on local disk.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


-- 


Nataliya Korovkina

--000000000000740e3c058607e4a5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hello Karshi,<div><br></div><div>I had th=
e same message. I added:</div><div><br></div><div>CONNECTIVITY_CHECK_URIS=
=3D&quot;&quot;</div><div><br></div><div>in conf/local.conf as a QUICK FIX.=
 I hope someone has better solution, please?</div><div><br></div><div>Thank=
s,</div><div>Nataliya</div><div><br></div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 8, 2019 at 12:43 PM K=
arshi Hasanov &lt;<a href=3D"mailto:karshi.hasanov@gmail.com">karshi.hasano=
v@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">Hi all,<br>
<br>
I have followed the<br>
<br>
<a href=3D"https://www.yoctoproject.org/docs/2.6.1/brief-yoctoprojectqs/bri=
ef-yoctoprojectqs.html" rel=3D"noreferrer" target=3D"_blank">https://www.yo=
ctoproject.org/docs/2.6.1/brief-yoctoprojectqs/brief-yoctoprojectqs.html</a=
><br>
<br>
when issue the &quot;bitbake core-image-minimal&quot;<br>
<br>
I am keep getting this error:<br>
<br>
ERROR:=C2=A0 OE-core&#39;s config sanity checker detected a potential <br>
misconfiguration.<br>
=C2=A0=C2=A0=C2=A0=C2=A0 Either fix the cause of this error or at your own =
risk disable the <br>
checker (see sanity.conf).<br>
=C2=A0=C2=A0=C2=A0=C2=A0 Following is the list of potential problems / advi=
sories:<br>
<br>
=C2=A0=C2=A0=C2=A0=C2=A0 Fetcher failure for URL: &#39;<a href=3D"https://w=
ww.example.com/" rel=3D"noreferrer" target=3D"_blank">https://www.example.c=
om/</a>&#39;. URL <br>
<a href=3D"https://www.example.com/" rel=3D"noreferrer" target=3D"_blank">h=
ttps://www.example.com/</a> doesn&#39;t work.<br>
=C2=A0=C2=A0=C2=A0=C2=A0 Please ensure your host&#39;s network is configure=
d correctly,<br>
=C2=A0=C2=A0=C2=A0=C2=A0 or set BB_NO_NETWORK =3D &quot;1&quot; to disable =
network access if<br>
=C2=A0=C2=A0=C2=A0=C2=A0 all required sources are on local disk.<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><br><div>=
<br></div><div>Nataliya Korovkina</div><div><br></div></div></div></div></d=
iv></div>

--000000000000740e3c058607e4a5--
