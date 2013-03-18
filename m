Return-Path: <navani.srivastava@gmail.com>
Received: from mail-ob0-f172.google.com (mail-ob0-f172.google.com
	[209.85.214.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89414E006AD
	for <yocto@yoctoproject.org>; Sun, 17 Mar 2013 21:31:01 -0700 (PDT)
Received: by mail-ob0-f172.google.com with SMTP id tb18so4931760obb.17
	for <yocto@yoctoproject.org>; Sun, 17 Mar 2013 21:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=gii991laFFzskyUkVHGsCu2FCY0UghUdRurR4mhp7OY=;
	b=FB9cgjgo5bZnmuTdaVZjWBBYu3MKoD4xk53SOaxqeCqKRoJTzw0qF7mIEBAnwsbszb
	7L2f5HCYoJFCeqBXuUkixS+sgqUcCQLzxVIpRjVctZppYEJZIIXRwuY2gdS2su+IbBKo
	9zW9igzFrG42FAhzJU5cFHBYbfG0MEPlIT9yCMOJPfVB7o0Xl7AAxOfTHFXRZbgxENiZ
	56NyXRKLmmZFZVl3c56xptXJ6tc/j6tojIf/1jnOM6DL+wcil+fAqIdsvW9CBwwg+Tsn
	/VXerAbQLMWFU+g9CzOP5Db8npSyccnKlzRdhwR760ccdy1NZs6XKTcZigMuLQVHL1z2
	x+MQ==
MIME-Version: 1.0
X-Received: by 10.60.7.67 with SMTP id h3mr6198577oea.69.1363581060882; Sun,
	17 Mar 2013 21:31:00 -0700 (PDT)
Received: by 10.182.121.99 with HTTP; Sun, 17 Mar 2013 21:31:00 -0700 (PDT)
Received: by 10.182.121.99 with HTTP; Sun, 17 Mar 2013 21:31:00 -0700 (PDT)
In-Reply-To: <7E022AA2-E447-4C9A-8186-5F19D3DFD859@gmail.com>
References: <9BACABF0C6B14A4D8C33B42A795119BE1B6F3998@POCITMSEXMB05.LntUniverse.com>
	<CA+Z6RkUxVBDJqRT0kcwyqNROhjVsxKkRugB3EMVWAadsDL2-Pw@mail.gmail.com>
	<7E022AA2-E447-4C9A-8186-5F19D3DFD859@gmail.com>
Date: Mon, 18 Mar 2013 10:01:00 +0530
Message-ID: <CA+Z6RkVCZ-zGXvaMjEi+C79BNuUUQOu4gMZsYkHoXUxzXBpWxg@mail.gmail.com>
From: Navani Srivastava <navani.srivastava@gmail.com>
To: Prana <pranap@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SDK creation
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
X-List-Received-Date: Mon, 18 Mar 2013 04:31:01 -0000
Content-Type: multipart/alternative; boundary=e89a8f924078c1aa5404d82b7466

--e89a8f924078c1aa5404d82b7466
Content-Type: text/plain; charset=ISO-8859-1

Hi,

Thanks for your reply.. But including this option didn't helped me..
On Mar 15, 2013 12:17 PM, "Prana" <pranap@gmail.com> wrote:

> Try adding this to your machine.conf
>
> PREFERRED_VERSION_qt4-embedded <http://qt4-embedded_4.8.1.bb> = "4.8.1"
>
> Thx,
>
> Prana
>
>
> Sent from my iPhone
>
> On Mar 15, 2013, at 12:06 AM, Navani Srivastava <
> navani.srivastava@gmail.com> wrote:
>
> Hi,
>
>  I wish to create SDK with meta-toolchain-qte recipe.  As two versions are
> provided by Poky-8.0. How can I direct compilation of SDK for
> qt4-embedded_4.8.1.bb ?
>
>
>
> Right now I am getting following error-
>
> ERROR: Multiple .bb files are due to be built which each provide
> qt4-embedded (/home/user/danny/meta/recipes-qt/qt4/qt4-embedded_4.8.1.bb/home/user/danny/meta/recipes-qt/qt4/
> qt4-embedded_4.8.3.bb).
>
> Thanks and Regards
> Navani Kamal Srivastava
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--e89a8f924078c1aa5404d82b7466
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p>
<p>Thanks for your reply.. But including this option didn&#39;t helped me.=
.</p>
<div class=3D"gmail_quote">On Mar 15, 2013 12:17 PM, &quot;Prana&quot; &lt=
;<a href=3D"mailto:pranap@gmail.com">pranap@gmail.com</a>&gt; wrote:<br typ=
e=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">
<div bgcolor=3D"#FFFFFF"><div>Try adding this to your machine.conf</div><d=
iv><pre><font face=3D"Helvetica"><span style=3D"white-space:normal">PREFERR=
ED_VERSION_</span></font><font color=3D"#000000" face=3D"Helvetica" style=
=3D"white-space:normal"><a href=3D"http://qt4-embedded_4.8.1.bb" style=3D"=
white-space:normal" target=3D"_blank">qt4-embedded</a>=A0</font><span style=
=
=3D"font-family:Helvetica;white-space:normal">=3D &quot;4.8.1&quot;</span>=
</pre>
<pre><span style=3D"font-family:Helvetica;white-space:normal">Thx,</span><=
/pre><pre><span style=3D"font-family:Helvetica;white-space:normal">Prana</s=
pan></pre><br></div><div><br>On Mar 15, 2013, at 12:06 AM, Navani Srivastav=
a &lt;<a href=3D"mailto:navani.srivastava@gmail.com" target=3D"_blank">nava=
ni.srivastava@gmail.com</a>&gt; wrote:<br>
<br></div><div></div><blockquote type=3D"cite"><div><p>Hi,</p>
<p>=A0I wish to create SDK with meta-toolchain-qte recipe.=A0 As two versi=
ons are provided by Poky-8.0. How can I direct compilation of SDK for <a hr=
ef=3D"http://qt4-embedded_4.8.1.bb" target=3D"_blank">qt4-embedded_4.8.1.bb=
</a> ?</p>

<p>=A0</p>
<p>Right now I am getting following error-</p>
<p>ERROR: Multiple .bb files are due to be built which each provide qt4-em=
bedded (/home/user/danny/meta/recipes-qt/qt4/<a href=3D"http://qt4-embedded=
_4.8.1.bb" target=3D"_blank">qt4-embedded_4.8.1.bb</a> /home/user/danny/met=
a/recipes-qt/qt4/<a href=3D"http://qt4-embedded_4.8.3.bb" target=3D"_blank"=
>qt4-embedded_4.8.3.bb</a>).</p>


<p>Thanks and Regards<br>
Navani Kamal Srivastava<br>
</p>
</div></blockquote><blockquote type=3D"cite"><div><span>__________________=
_____________________________</span><br><span>yocto mailing list</span><br>=
<span><a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoc=
toproject.org</a></span><br>
<span><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"=
_blank">https://lists.yoctoproject.org/listinfo/yocto</a></span><br></div><=
/blockquote></div></blockquote></div>

--e89a8f924078c1aa5404d82b7466--
