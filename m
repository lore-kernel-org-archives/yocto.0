Return-Path: <ticotimo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6214E00D55; Fri, 22 Dec 2017 20:18:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ticotimo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f169.google.com (mail-ua0-f169.google.com
	[209.85.217.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01278E00D41
	for <yocto@yoctoproject.org>; Fri, 22 Dec 2017 20:18:11 -0800 (PST)
Received: by mail-ua0-f169.google.com with SMTP id i92so20856582uad.7
	for <yocto@yoctoproject.org>; Fri, 22 Dec 2017 20:18:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Rr88+4px3BEL3O+Dtq/qD1bN5NJ5bI9EF+y3INwQKEI=;
	b=OmGBbCXuGJvjdEzFAhSiL0jqi21CpjsFKsl+bLtSCuG7730QguMkDbSTGAdaS5HBAW
	1YIcoqdVx5JejrK7Zix98+AF9aqbdryj11MnIfZof1Ig3ZL047oErH0tJNUe0G7eklHC
	49y6PSt1e/AL3K6jhPJfdlqRrJxfOOOgrXalLAaYDWc8Q0Nm1tkesIknxsSLrFcovG5q
	z0yOOt10a1k66G3syxlj4Qg3Zw5EmLIJEH4A3qwtR50ps44ARGbxyo4VXhyldqczoQQc
	BdJTD4HzOlmiDJKuC+VSyb64GQiocETLnWWbC2JBfyu7hQh3azzbTIEZuSfuZnY6o0T/
	fWbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Rr88+4px3BEL3O+Dtq/qD1bN5NJ5bI9EF+y3INwQKEI=;
	b=CNziqCxsQ28KWYFdmK25kUpcZ4bjSuQsZVHGO7IV6E7E2/EYKRffREwJySfZcotbPq
	DZP3Jx//2wQ69RCpd6kIYLjOARO89QsAJRJUwICgXhdX1bzmZG97RvHIbNFhCF6P44Sv
	N6tE1z02XdazcS+MqD+ElqBotfrf4EhjftsCbPwPaEVuUvWckSM5p9RocwrKX7hwuW17
	o4ylao/E5/m2jl8FNtG6yUvC4Z0LkDuosQODfzc1GflWCTXmytBOu/sLYEc4FrzMy+qs
	BG5bxXvHvtowyBP0UyBTh9Mlp4kUkG/yh7GVcpsW+fPasMchB0DMDl+SwC6uP943vfKc
	2hJA==
X-Gm-Message-State: AKGB3mLSsYOT53f9MoFlglMIZIsNTYOb1l54DfUZM5iBl+SwOP9JAKWu
	O4gP+ZryGOBh+BKb1g70Vnt8DOPR/8FjPKi0Fa7yXg==
X-Google-Smtp-Source: ACJfBoujO+LfrqYIPVRnNjzauRYLLaKI7Fc/tZ2A4Pu/fRhPdS1eUx5PEhV5OitiU44kUr446nqDN3/1CER9HS1kh0k=
X-Received: by 10.176.66.228 with SMTP id j91mr7711720uaj.166.1514002690986;
	Fri, 22 Dec 2017 20:18:10 -0800 (PST)
MIME-Version: 1.0
References: <CAOT_U5Zb+aMyseXVPpjYxG_9TPD2nxa_Rvgu_z7N6qS1kBFGMg@mail.gmail.com>
	<CAOT_U5YOPe5_sSDu7Kn_9_8znPXJd4=VvdW6FiTeLxc9Pjoi-g@mail.gmail.com>
In-Reply-To: <CAOT_U5YOPe5_sSDu7Kn_9_8znPXJd4=VvdW6FiTeLxc9Pjoi-g@mail.gmail.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Sat, 23 Dec 2017 04:18:00 +0000
Message-ID: <CANx9H-B+XqfgyOHyNUBC0eMJ=ivT30BZaPkQE4u6iK0Cs+Yw6Q@mail.gmail.com>
To: Alan Martinovic <alan.martinovic@senic.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Python cryptography failing due to undefined symbol: pthread_atfork
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
X-List-Received-Date: Sat, 23 Dec 2017 04:18:12 -0000
Content-Type: multipart/alternative; boundary="94eb2c05fda895d8ea0560fa3842"

--94eb2c05fda895d8ea0560fa3842
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

My hunch (not tested) is that the recipe needs -pthread added to LDSHARED:
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/distutils.=
bbclass#n82

So try a python3-cryptography_%.bbappend file with =E2=80=9Cexport
LDSHARED=3D"${CCLD} -shared -pthread=E2=80=9D in your own layer

Or try adding that line to python-cryptography.inc and then submit a patch
if it works.
On Fri, Dec 22, 2017 at 9:10 AM Alan Martinovic <alan.martinovic@senic.com>
wrote:

> I have confirmed that no `-pthread` flags are being set for building
> python-cryptography.
>
> Running the following:
>
>     bitbake python-cryptography -c do_compile
>     bitbake python-cryptography -c devshell
>     grep pthread ../temp/run.do_compile
>
> gives no returns.
> Also there isn't a mention of it when doing a build in full
> verbose:
>
>     bitbake python-cryptography -c cleanall
>     bitbake python-cryptography -vvv | vi -
>
>
> On the target the symbol is identified as missing (NOTYPE):
>
>     ~# readelf -a
> /usr/lib/python3.5/site-packages/cryptography/hazmat/bindings/_
> openssl.abi3.so
> | grep pthread_atfork
>     000aebb4  0002d916 R_ARM_JUMP_SLOT   00000000   pthread_atfork
>        729: 00000000     0 NOTYPE  GLOBAL DEFAULT  UND pthread_atfork
>
>
> My current goal is to extend the recipe with the `-pthread` so that
> it's there when
> the '_openssl' extension is being built.
> Still open to suggestions.
>
>
> A thing that seems to be underlying my assumption is that the recipe
> for python-cryptography
> hasn't actually changed between Morty (where it worked) and Rocko...
>
> On Thu, Dec 21, 2017 at 6:17 PM, Alan Martinovic
> <alan.martinovic@senic.com> wrote:
> > Hi there,
> > just did a migration to Rocko and am witnessing"
> >
> >     root@device:~# python3
> >     Python 3.5.3 (default, Dec 20 2017, 02:02:22)
> >     [GCC 7.2.0] on linux
> >     Type "help", "copyright", "credits" or "license" for more
> information.
> >     >>> from cryptography.hazmat.bindings._openssl import ffi, lib
> >     Traceback (most recent call last):
> >       File "<stdin>", line 1, in <module>
> >     ImportError:
> > /usr/lib/python3.5/site-packages/cryptography/hazmat/bindings/_
> openssl.abi3.so:
> > undefined symbol: pthread_atfork
> >
> >
> > Have tried both the recipe that comes with Rocko
> > and master of meta-openembedded.
> >
> > Seems to be the same bug as this one:
> >
> > https://bugs.gentoo.org/630578
> >
> > resolved with this patch:
> >
> >
> https://gitweb.gentoo.org/repo/gentoo.git/commit/?id=3Dc824d1c44fcf4556de=
21d2c8b8ae3732b0fc0c5b
> >
> > Can someone provide hints on what would that translate to
> >  for the python cryptography recipe?
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c05fda895d8ea0560fa3842
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

My hunch (not tested) is that the recipe needs -pthread added to LDSHARED:<=
br><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/clas=
ses/distutils.bbclass#n82">http://git.yoctoproject.org/cgit/cgit.cgi/poky/t=
ree/meta/classes/distutils.bbclass#n82</a><br><br>So try a python3-cryptogr=
aphy_%.bbappend file with =E2=80=9Cexport LDSHARED=3D&quot;${CCLD} -shared =
-pthread=E2=80=9D in your own layer<br><br>Or try adding that line to pytho=
n-cryptography.inc and then submit a patch if it works.<br><div class=3D"gm=
ail_quote"><div dir=3D"ltr">On Fri, Dec 22, 2017 at 9:10 AM Alan Martinovic=
 &lt;<a href=3D"mailto:alan.martinovic@senic.com">alan.martinovic@senic.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">I have confirmed th=
at no `-pthread` flags are being set for building<br>
python-cryptography.<br>
<br>
Running the following:<br>
<br>
=C2=A0 =C2=A0 bitbake python-cryptography -c do_compile<br>
=C2=A0 =C2=A0 bitbake python-cryptography -c devshell<br>
=C2=A0 =C2=A0 grep pthread ../temp/run.do_compile<br>
<br>
gives no returns.<br>
Also there isn&#39;t a mention of it when doing a build in full<br>
verbose:<br>
<br>
=C2=A0 =C2=A0 bitbake python-cryptography -c cleanall<br>
=C2=A0 =C2=A0 bitbake python-cryptography -vvv | vi -<br>
<br>
<br>
On the target the symbol is identified as missing (NOTYPE):<br>
<br>
=C2=A0 =C2=A0 ~# readelf -a<br>
/usr/lib/python3.5/site-packages/cryptography/hazmat/bindings/_<a href=3D"h=
ttp://openssl.abi3.so" rel=3D"noreferrer" target=3D"_blank">openssl.abi3.so=
</a><br>
| grep pthread_atfork<br>
=C2=A0 =C2=A0 000aebb4=C2=A0 0002d916 R_ARM_JUMP_SLOT=C2=A0 =C2=A000000000=
=C2=A0 =C2=A0pthread_atfork<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0729: 00000000=C2=A0 =C2=A0 =C2=A00 NOTYPE=C2=A0 =
GLOBAL DEFAULT=C2=A0 UND pthread_atfork<br>
<br>
<br>
My current goal is to extend the recipe with the `-pthread` so that<br>
it&#39;s there when<br>
the &#39;_openssl&#39; extension is being built.<br>
Still open to suggestions.<br>
<br>
<br>
A thing that seems to be underlying my assumption is that the recipe<br>
for python-cryptography<br>
hasn&#39;t actually changed between Morty (where it worked) and Rocko...<br=
>
<br>
On Thu, Dec 21, 2017 at 6:17 PM, Alan Martinovic<br>
&lt;<a href=3D"mailto:alan.martinovic@senic.com" target=3D"_blank">alan.mar=
tinovic@senic.com</a>&gt; wrote:<br>
&gt; Hi there,<br>
&gt; just did a migration to Rocko and am witnessing&quot;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0root@device:~# python3<br>
&gt;=C2=A0 =C2=A0 =C2=A0Python 3.5.3 (default, Dec 20 2017, 02:02:22)<br>
&gt;=C2=A0 =C2=A0 =C2=A0[GCC 7.2.0] on linux<br>
&gt;=C2=A0 =C2=A0 =C2=A0Type &quot;help&quot;, &quot;copyright&quot;, &quot=
;credits&quot; or &quot;license&quot; for more information.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; from cryptography.hazmat.bindings._ope=
nssl import ffi, lib<br>
&gt;=C2=A0 =C2=A0 =C2=A0Traceback (most recent call last):<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0File &quot;&lt;stdin&gt;&quot;, line 1, in &=
lt;module&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0ImportError:<br>
&gt; /usr/lib/python3.5/site-packages/cryptography/hazmat/bindings/_<a href=
=3D"http://openssl.abi3.so" rel=3D"noreferrer" target=3D"_blank">openssl.ab=
i3.so</a>:<br>
&gt; undefined symbol: pthread_atfork<br>
&gt;<br>
&gt;<br>
&gt; Have tried both the recipe that comes with Rocko<br>
&gt; and master of meta-openembedded.<br>
&gt;<br>
&gt; Seems to be the same bug as this one:<br>
&gt;<br>
&gt; <a href=3D"https://bugs.gentoo.org/630578" rel=3D"noreferrer" target=
=3D"_blank">https://bugs.gentoo.org/630578</a><br>
&gt;<br>
&gt; resolved with this patch:<br>
&gt;<br>
&gt; <a href=3D"https://gitweb.gentoo.org/repo/gentoo.git/commit/?id=3Dc824=
d1c44fcf4556de21d2c8b8ae3732b0fc0c5b" rel=3D"noreferrer" target=3D"_blank">=
https://gitweb.gentoo.org/repo/gentoo.git/commit/?id=3Dc824d1c44fcf4556de21=
d2c8b8ae3732b0fc0c5b</a><br>
&gt;<br>
&gt; Can someone provide hints on what would that translate to<br>
&gt;=C2=A0 for the python cryptography recipe?<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--94eb2c05fda895d8ea0560fa3842--
