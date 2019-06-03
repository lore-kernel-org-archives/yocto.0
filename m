Return-Path: <joaohf@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0155FE00D44; Mon,  3 Jun 2019 04:23:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (joaohf[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.45 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
	[209.85.208.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22922E00D33
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2019 04:23:36 -0700 (PDT)
Received: by mail-ed1-f45.google.com with SMTP id a8so26424927edx.3
	for <yocto@yoctoproject.org>; Mon, 03 Jun 2019 04:23:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=ctJr/WtE0Igt/fSKv8owP4YjaGKkVL9BAktlwO9e8ig=;
	b=Od4JmlUua/IGQaMKup5o+E1issmwcQbxMIN0I+cN9FDAfUgp5cb0flX4KM/JdL2dfI
	zyf7idnObo8rOQ0V43QU1WP8As6UgMnYamcwnc4glupT1kOIrOEVQQQm/JPhWkH0Uhz6
	fkDSmncYKC0TjL4IsjiAl7c6B62ih1UH+cM0s45I9gvaHdvlA4c0haQPt7rQJaGfXgZf
	pd4o9ie/g/gUdMovfWXF2hNLhAi6TVVeCmcZ6TUoNy/28vo0k/U4bnNGwaKDFKNQIWVq
	mxNlfJpKtj5Rss/61BGohFY0+3Lp4GJOcsOR9DGZ3OTg/F5+gcIH8B22XTix1R03KE9R
	8aSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ctJr/WtE0Igt/fSKv8owP4YjaGKkVL9BAktlwO9e8ig=;
	b=JyjN+v/bWLO87kB+zvPui9eYi/uii3RtNq+JupH+PjP0LLqri+KXDmtP9DGVpf2wp8
	znc/cW/Y6Iz7fgUQQtCimeZHdYoGAp7ddMMO3GYD6YmrGHHSClX8YibzCQ9TNfGzrxrL
	Pfj8hE34oHRu4pQX7sxLkXOrR8iL9g32RFODk5dtwi8lJ+UVE8fjUw2r7IT9GudAFk+A
	3kWw8it7VKklykEq7h5zq+harTartWngLFbN+TN7Ih+esUOEuO9tDXViQy9Efby4IfzR
	fevkh6VTJBsjW5Ti2ugnTFKY7UMhj1CtOEBMKFQg/ZtRB/W5hkOyxsWFwSvBxWI02OC0
	Au5g==
X-Gm-Message-State: APjAAAXgN44GdSGBJEgxJ7ary4k5SR5HUg1YaZwjzMIF6QoQOnlxSx6d
	8N9D5MrTNcr4ksc7pKkdeQM+mJkOb0a/9gaaHUNuYw==
X-Google-Smtp-Source: APXvYqy9sAH7RDxZe9FvYJXnhlzbW8MNHDL1JrDxzhI7schHWNalT+0OMS3Jdm1xbChFtgH/3HDvgW4moRb8rAucpVI=
X-Received: by 2002:a50:b4b8:: with SMTP id w53mr27592147edd.255.1559561015849;
	Mon, 03 Jun 2019 04:23:35 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Jo=C3=A3o_Henrique_Freitas?= <joaohf@gmail.com>
Date: Mon, 3 Jun 2019 13:23:24 +0200
Message-ID: <CANFVK78ctFWHod+_T+f7McxR9vuSpKj7jghhipyJLe0R16BB6g@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: EMQ recipe
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
X-List-Received-Date: Mon, 03 Jun 2019 11:23:38 -0000
Content-Type: multipart/alternative; boundary="0000000000005af777058a699844"

--0000000000005af777058a699844
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm the author of a Yocto Project layer called meta-erlang. I would like to
announce that now is possible to use Yocto Project which build a embedded
Linux distro and on top of that install the EMQ (a mqtt broker) or EMQ
edge. I've created the recipe and all the patches necessary to do that.

My main target is to bring software made with Erlang/Elixir possible to run
in Yocto/Openembedded ecosystem.

Just in case, if you have a embedded project and are planing to run emq
edge, for example. This could be feasible for you.

Check it:

 - https://layers.openembedded.org/layerindex/branch/master/recipes/?q=emq
 - http://joaohf.github.io/meta-erlang/#/guides-emqx
 - https://github.com/joaohf/meta-erlang
 - https://www.yoctoproject.org/
 - https://www.emqx.io/

Best regards,

--0000000000005af777058a699844
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div style=3D"font-family:sans-serif;font-size:12.8px" di=
r=3D"auto"><div style=3D"margin:16px 0px"><div><div dir=3D"auto">Hi,<br><br=
>I&#39;m the author of a Yocto Project layer called meta-erlang. I would li=
ke to announce that now is possible to use Yocto Project which build a embe=
dded Linux distro and on top of that install the EMQ (a mqtt broker) or EMQ=
 edge. I&#39;ve created the recipe and all the patches necessary to do that=
.<br><br>My main target is to bring software made with Erlang/Elixir possib=
le to run in Yocto/Openembedded ecosystem.<br><br>Just in case, if you have=
 a embedded project and are planing to run emq edge, for example. This coul=
d be feasible for you.<br><br>Check it:<br><br>=C2=A0-=C2=A0<a href=3D"http=
s://layers.openembedded.org/layerindex/branch/master/recipes/?q=3Demq" styl=
e=3D"text-decoration-line:none;color:rgb(66,133,244)">https://layers.openem=
bedded.org/layerindex/branch/master/recipes/?q=3Demq</a><br>=C2=A0-=C2=A0<a=
 href=3D"http://joaohf.github.io/meta-erlang/#/guides-emqx" style=3D"text-d=
ecoration-line:none;color:rgb(66,133,244)">http://joaohf.github.io/meta-erl=
ang/#/guides-emqx</a><br>=C2=A0-=C2=A0<a href=3D"https://github.com/joaohf/=
meta-erlang" style=3D"text-decoration-line:none;color:rgb(66,133,244)">http=
s://github.com/joaohf/meta-erlang</a><br>=C2=A0-=C2=A0<a href=3D"https://ww=
w.yoctoproject.org/" style=3D"text-decoration-line:none;color:rgb(66,133,24=
4)">https://www.yoctoproject.org/</a><br>=C2=A0-=C2=A0<a href=3D"https://ww=
w.emqx.io/" style=3D"text-decoration-line:none;color:rgb(66,133,244)">https=
://www.emqx.io/</a><br><br>Best regards,</div></div></div><div style=3D"hei=
ght:0px"></div></div><br></div>

--0000000000005af777058a699844--
