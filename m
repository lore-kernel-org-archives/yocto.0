Return-Path: <lefevre.da@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D7F3E01121; Thu, 14 Jun 2018 05:32:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lefevre.da[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 138D1E00CCC
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 05:32:58 -0700 (PDT)
Received: by mail-it0-f48.google.com with SMTP id 76-v6so8030338itx.4
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 05:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=2is4FJMcpQeXDQEgU48MxBizAEnT9rShrvaO7LrVBtc=;
	b=T+f0MaPN+sqsSXryg0cEZr4NMZ6UM8Ku819J1NtJHA5HMYSpEWXiCCuU2FRxMJ7cQF
	YlgZyObMRAwHG8qVXq4QLd9fjdk9W6tThWWb08pBSO4OVXIF4Ff0TQ4MTArSbSEriFOm
	lFOZFWP20VQCMwLJElA4+Oe1PikV7hqZXaQLNN3EPO5M6w8q5aiIL21sXZbfVBQlpDr0
	OSk4d0Xp1pseCSQ9r96k18/EhtnOxM9AmtnHFLownXKTsMAWJ0Vu8d8Bpi4eZJhGll+7
	PbiUg7zEBZiSMJzfubp8YT2OzzlgsWWH6XkA9T9PvNbiwhyv9g45XF4G3PFpc68t93Vi
	3mIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=2is4FJMcpQeXDQEgU48MxBizAEnT9rShrvaO7LrVBtc=;
	b=JGRdgW6wKdhN71opBEhlFfWCXmJmuxZ6kIq6oZ0PGEMJ3xS2+Jusb4IUCSd++1lrEV
	ZEU0oDL5uM7m14IC7P1RSqwBKrpKNq1OjeHM2HMYDbFnHk3K1k66+80VTP1HfBVaXa/L
	IcTHECg3fQ+/RsjlS9Wfwp80AVckgK/ZRBiAum/cC6lNE+Lcd6XxPjgoZHxdSQpm4ToB
	GA6G8Lhw67jlbwws3gORL8wUkpcTOMSV5SbSEPDODeVGqpdcyINE1abXYMz3unPe98nt
	DjKiCsfk5LuBpoqXSzjJVhySSw/zPv0NjIqX4rsxKcTI7DAjw1su8vBn9xmND9e9Nh6k
	clQA==
X-Gm-Message-State: APt69E0beO9Prsq+ZbN2S6APdSMUb6g+UmpqQv6eLriCcv0kyttX1NXr
	l3Wr9aG8PZCBESCtietRZpj4HgeRvZLhdkImeqd3
X-Google-Smtp-Source: ADUXVKKZJ68fF+Zidfm8LRCL6yrrIeI+Ft6PizdukWSVkmd+1NjlF8ED+z3dwzVyZ3usI5lxF5M0t4daiz3Wrd8mYLY=
X-Received: by 2002:a24:8385:: with SMTP id
	d127-v6mr2097478ite.58.1528979578542; 
	Thu, 14 Jun 2018 05:32:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:5bc3:0:0:0:0:0 with HTTP; Thu, 14 Jun 2018 05:32:57
	-0700 (PDT)
In-Reply-To: <alpine.LFD.2.21.1806140822540.15964@localhost.localdomain>
References: <CA+FhBv_HSm-DBfaJuQjNpAhhCYUFpv_mZHjUfzePRA20wgW=6w@mail.gmail.com>
	<alpine.LFD.2.21.1806140822540.15964@localhost.localdomain>
From: Damien LEFEVRE <lefevre.da@gmail.com>
Date: Thu, 14 Jun 2018 15:32:57 +0300
Message-ID: <CA+FhBv-=wi8zhLQVwDu0A+z-iZKhjBdFvnTKZ8Vjc+nZv9zbtA@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: bbappend extra SRC_URI ignored
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
X-List-Received-Date: Thu, 14 Jun 2018 12:32:59 -0000
Content-Type: multipart/alternative; boundary="000000000000a5e235056e994c0a"

--000000000000a5e235056e994c0a
Content-Type: text/plain; charset="UTF-8"

Typo sorry.

I've tried all possible combination

   - SRC_URI += "file://nvpmodel.conf"
   - SRC_URI_append = " file://nvpmodel.conf"
   - SRC_URI_prepend = "file://nvpmodel.conf "
   - SRC_URI_append_tegra186 = " file://nvpmodel.conf"
   - SRC_URI_prepend_tegra186 = "file://nvpmodel.conf "


-Damien

On Thu, Jun 14, 2018 at 3:24 PM, Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

> On Thu, 14 Jun 2018, Damien LEFEVRE wrote:
>
> > HI,
> > I'm working on meta-tegra layer and I'd like to append a recipe. The
> original recipe looks like
> > this:
> > https://github.com/madisongh/meta-tegra/blob/rocko-l4t-r28.
> 2/recipes-bsp/tegra-binaries/tegra-t
> > ools_28.2.0.bb
> >
> > I've made a tegra-tools_28.2.0.bbappend to change the default PM_CONFIG
> DEFAULT from 2 to 3 to
> > get max performance in nvpmodel.conf configuration file.
> >
> > ```
> > FILESEXTRAPATHS_prepend := "${THISDIR}/files/tegra186:"
> > SRC_URI_prepend_tegra186 += "file://nvpmodel.conf "
>
>   why are you using both a prepend and the "+=" operator on the same
> line?
>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                   http://crashcourse.ca/dokuwiki
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================

--000000000000a5e235056e994c0a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Typo sorry.<div><br></div><div>I&#39;ve tried all possible=
 combination</div><div><ul><li>SRC_URI +=3D &quot;file://nvpmodel.conf&quot=
;</li><li><span style=3D"font-size:small;background-color:rgb(255,255,255);=
text-decoration-style:initial;text-decoration-color:initial;float:none;disp=
lay:inline">SRC_URI_append =3D &quot;=C2=A0file://nvpmodel.conf&quot;</span=
><br></li><li><span style=3D"font-size:small;background-color:rgb(255,255,2=
55);text-decoration-style:initial;text-decoration-color:initial;float:none;=
display:inline"><span style=3D"text-decoration-style:initial;text-decoratio=
n-color:initial;float:none;display:inline">SRC_URI_prepend =3D &quot;file:/=
/nvpmodel.conf &quot;</span></span></li><li>SRC_URI_append_tegra186 =3D &qu=
ot;=C2=A0file://nvpmodel.conf&quot;</li><li>SRC_URI_prepend_<span style=3D"=
font-size:small;background-color:rgb(255,255,255);text-decoration-style:ini=
tial;text-decoration-color:initial;float:none;display:inline">tegra186</spa=
n> =3D &quot;file://nvpmodel.conf &quot;</li></ul><br></div><div>-Damien</d=
iv></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, =
Jun 14, 2018 at 3:24 PM, Robert P. J. Day <span dir=3D"ltr">&lt;<a href=3D"=
mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.ca</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Thu,=
 14 Jun 2018, Damien LEFEVRE wrote:<br>
<br>
&gt; HI,<br>
&gt; I&#39;m working on meta-tegra layer and I&#39;d like to append a recip=
e. The original recipe looks like<br>
&gt; this:<br>
&gt; <a href=3D"https://github.com/madisongh/meta-tegra/blob/rocko-l4t-r28.=
2/recipes-bsp/tegra-binaries/tegra-t" rel=3D"noreferrer" target=3D"_blank">=
https://github.com/madisongh/<wbr>meta-tegra/blob/rocko-l4t-r28.<wbr>2/reci=
pes-bsp/tegra-binaries/<wbr>tegra-t</a><br>
&gt; <a href=3D"http://ools_28.2.0.bb" rel=3D"noreferrer" target=3D"_blank"=
>ools_28.2.0.bb</a>=C2=A0<br>
&gt;<br>
&gt; I&#39;ve made a tegra-tools_28.2.0.bbappend to change the default PM_C=
ONFIG DEFAULT from 2 to 3 to<br>
&gt; get max performance in nvpmodel.conf configuration file.<br>
&gt;<br>
&gt; ```<br>
&gt; FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files/tegra186:&quot;<br=
>
&gt; SRC_URI_prepend_tegra186 +=3D &quot;file://nvpmodel.conf &quot;<br>
<br>
</span>=C2=A0 why are you using both a prepend and the &quot;+=3D&quot; ope=
rator on the same<br>
line?<br>
<br>
rday<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
-- <br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<br>
Robert P. J. Day=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Ottawa, Ontario,=
 CANADA<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"h=
ttp://crashcourse.ca/dokuwiki" rel=3D"noreferrer" target=3D"_blank">http://=
crashcourse.ca/dokuwiki</a><br>
<br>
Twitter:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a=
 href=3D"http://twitter.com/rpjday" rel=3D"noreferrer" target=3D"_blank">ht=
tp://twitter.com/rpjday</a><br>
LinkedIn:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://ca.linkedin.=
com/in/rpjday" rel=3D"noreferrer" target=3D"_blank">http://ca.linkedin.com/=
in/<wbr>rpjday</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D</font></span></blockquote></div><br></div>

--000000000000a5e235056e994c0a--
