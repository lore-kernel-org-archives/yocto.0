Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A235E00B85; Thu, 22 May 2014 06:50:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.sueiro[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.169 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-qc0-f169.google.com (unknown [209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0C41E0077C
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 06:50:23 -0700 (PDT)
Received: by mail-qc0-f169.google.com with SMTP id e16so5786955qcx.0
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 06:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=YQbk0aXv4rUqSpx/Lp7rwl/4WjDdm1iZMceZ18DDBCY=;
	b=lIRX8yHU+9KdZwFf3fPeVYD/aDOag1dtFWEMTcxdRN4gd5oqunvnLSS3eQzFJhp6Ww
	g3Xua3zRnVIxnGNlamGSB+6s5US76HOYRrdAJlC/gXIsyFUeKLgYvSWAZObM6Nh9o/Zw
	v6jrQXOMG6K86wTrhfDwvibhjpQn0ysNjUEBy6Ktwo2+Nm1i1vwTWSUA4vQVo5asrvUo
	KeSbgPtAftQdKZTrmu7KHVXueBU6Aq4qN82NN2o72G4eXs5oK+I4itxBfDnXLrGO1WAh
	8dDy22plZHGK0vLOUz0/xKQoSRmMgEXpOwesUbXXywho6dEXo4RZu+Jsoy3zwT4tkoJe
	4Ezw==
X-Received: by 10.140.19.76 with SMTP id 70mr32281981qgg.82.1400766623309;
	Thu, 22 May 2014 06:50:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.48.112 with HTTP; Thu, 22 May 2014 06:50:03 -0700 (PDT)
In-Reply-To: <CAMKF1srHA4_sdwUJk2dfsHet6HkV5MZOEhqZrkp5QST4-kWmcQ@mail.gmail.com>
References: <ll4sg1$jb0$1@ger.gmane.org>
	<20140516120420.GA3995@ad.chargestorm.se>
	<ll4vid$196$1@ger.gmane.org> <ll50j2$f2p$1@ger.gmane.org>
	<CAMKF1srHA4_sdwUJk2dfsHet6HkV5MZOEhqZrkp5QST4-kWmcQ@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Thu, 22 May 2014 10:50:03 -0300
Message-ID: <CAMCfZKGM7JmHRvLYpeAeZukOUGDyEzzvvuQ9a_RpJS0t7r9wCw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Neuer User <auslands-kv@gmx.de>
Subject: Re: Help with building app recipe
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
X-List-Received-Date: Thu, 22 May 2014 13:50:27 -0000
Content-Type: multipart/alternative; boundary=001a1134f3bcfeeb7e04f9fd6456

--001a1134f3bcfeeb7e04f9fd6456
Content-Type: text/plain; charset=ISO-8859-1

Folks,

I'm trying to accomplish this in a 64bits host machine. But I'm getting
errors the following error on compile task:

| In file included from
/<snip>/tmp/sysroots/x86_64-linux/usr/include/python3.3m/Python.h:50:0,
|                  from ../../git/src/qpython_priv.h:22,
|                  from moc_qpython_priv.cpp:9:
| /<snip>/sysroots/x86_64-linux/usr/include/python3.3m/pyport.h:820:2:
error: #error "LONG_BIT definition appears wrong for platform (bad
gcc/glibc config?)."
|  #error "LONG_BIT definition appears wrong for platform (bad gcc/glibc
config?)."
|   ^


Searching on Google it says that this is a known bug when trying to
cross-compile Python stuff for 32bits machines on 64bits hosts.

It seems that the guys from Buildroot could get this solved:
http://lists.busybox.net/pipermail/buildroot/2011-August/045257.html
I'm trying to find the "magical" patch to how to get this fixed.

Also found this link too:
http://blog.devork.be/2009/02/compiling-32-bit-python-on-amd64.html

But I'm not quite sure how to get this fixed on Yocto. Should it need to be
fixed on the pyotherside, or python3, or python3-native recipe?


Any directions are appreciated.



Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/


On Sat, May 17, 2014 at 2:18 AM, Khem Raj <raj.khem@gmail.com> wrote:

> On Fri, May 16, 2014 at 5:33 AM, Neuer User <auslands-kv@gmx.de> wrote:
> > If I change the sed line to "#!/usr/bin/env python3", that would
> > probably work then. But would it break something else?
>
> would be fine.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1134f3bcfeeb7e04f9fd6456
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Folks,<div><br></div><div>I&#39;m trying to accomplish thi=
s in a 64bits host machine. But I&#39;m getting errors the following error =
on compile task:</div><div><br></div><div><blockquote style=3D"margin:0px 0=
px 0px 40px;border:none;padding:0px">

<div><div class=3D"gmail_extra" style=3D"font-family:arial,sans-serif;font-=
size:13px"><div class=3D"gmail_extra"><font face=3D"arial, sans-serif">| In=
 file included from /&lt;snip&gt;/tmp/sysroots/x86_64-linux/usr/include/pyt=
hon3.3m/Python.h:50:0,</font></div>

</div><div class=3D"gmail_extra" style=3D"font-family:arial,sans-serif;font=
-size:13px"><div class=3D"gmail_extra"><font face=3D"arial, sans-serif">| =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0from ../../git/src/qpython_priv.h:22,</f=
ont></div></div><div class=3D"gmail_extra" style=3D"font-family:arial,sans-=
serif;font-size:13px">

<div class=3D"gmail_extra"><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0from moc_qpython_priv.cpp:9:</font></div></div><div =
class=3D"gmail_extra" style=3D"font-family:arial,sans-serif;font-size:13px"=
><div class=3D"gmail_extra">

<font face=3D"arial, sans-serif">| /</font>&lt;snip&gt;<font face=3D"arial,=
 sans-serif">/sysroots/x86_64-linux/usr/include/python3.3m/pyport.h:820:2: =
error: #error &quot;LONG_BIT definition appears wrong for platform (bad gcc=
/glibc config?).&quot;</font></div>

</div><div class=3D"gmail_extra" style=3D"font-family:arial,sans-serif;font=
-size:13px"><div class=3D"gmail_extra"><font face=3D"arial, sans-serif">| =
=A0#error &quot;LONG_BIT definition appears wrong for platform (bad gcc/gli=
bc config?).&quot;</font></div>

</div><div class=3D"gmail_extra" style=3D"font-family:arial,sans-serif;font=
-size:13px"><div class=3D"gmail_extra"><font face=3D"arial, sans-serif">| =
=A0 ^</font></div></div></div></blockquote><font face=3D"arial, sans-serif"=
><div><font face=3D"arial, sans-serif"><br>

</font></div>Searching on Google it says that this is a known bug when tryi=
ng to cross-compile Python stuff for 32bits machines on 64bits hosts.</font=
></div><div><font face=3D"arial, sans-serif"><br></font><div><div class=3D"=
gmail_extra" style>

<div class=3D"gmail_extra" style=3D"font-family:arial,sans-serif;font-size:=
13px"><font face=3D"arial, sans-serif">It seems that the guys from Buildroo=
t could get this solved:</font></div><div class=3D"gmail_extra" style><font=
 face=3D"arial, sans-serif" style><a href=3D"http://lists.busybox.net/piper=
mail/buildroot/2011-August/045257.html">http://lists.busybox.net/pipermail/=
buildroot/2011-August/045257.html</a><br>

</font></div><div class=3D"gmail_extra" style>I&#39;m trying to find the &q=
uot;magical&quot; patch to how to get this fixed.</div><div class=3D"gmail_=
extra" style><br></div><div class=3D"gmail_extra" style>Also found this lin=
k too:</div>

<div class=3D"gmail_extra" style><a href=3D"http://blog.devork.be/2009/02/c=
ompiling-32-bit-python-on-amd64.html">http://blog.devork.be/2009/02/compili=
ng-32-bit-python-on-amd64.html</a><br></div><div class=3D"gmail_extra" styl=
e>

<br></div><div class=3D"gmail_extra" style>But I&#39;m not quite sure how t=
o get this fixed on Yocto. Should it need to be fixed on the pyotherside, o=
r python3, or python3-native recipe?</div><div class=3D"gmail_extra" style>

<br></div><div class=3D"gmail_extra" style><br></div><div class=3D"gmail_ex=
tra" style>Any directions are appreciated.</div><div class=3D"gmail_extra" =
style><br></div><div class=3D"gmail_extra" style><font face=3D"arial, sans-=
serif" style><br>

</font></div><div class=3D"gmail_extra" style><font face=3D"arial, sans-ser=
if" style><br></font></div></div></div></div><div class=3D"gmail_extra"><di=
v><div dir=3D"ltr"><div>Regards,</div><div><br></div>--<br>*dS<br>Diego Sue=
iro<br>

<br>Administrador do Embarcados<br><a href=3D"http://www.embarcados.com.br/=
?utm_source=3Dassinatura_diego&amp;utm_medium=3De-mail&amp;utm_campaign=3DA=
ssinatura%20Email%20Diego" target=3D"_blank">www.embarcados.com.br</a><br><=
br>/*long live rock &#39;n roll*/<br>

</div></div>
<br><br><div class=3D"gmail_quote">On Sat, May 17, 2014 at 2:18 AM, Khem Ra=
j <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_bl=
ank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">

<div class=3D"">On Fri, May 16, 2014 at 5:33 AM, Neuer User &lt;<a href=3D"=
mailto:auslands-kv@gmx.de">auslands-kv@gmx.de</a>&gt; wrote:<br>
&gt; If I change the sed line to &quot;#!/usr/bin/env python3&quot;, that w=
ould<br>
&gt; probably work then. But would it break something else?<br>
<br>
</div>would be fine.<br>
<div class=3D"HOEnZb"><div class=3D"h5">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div></div>

--001a1134f3bcfeeb7e04f9fd6456--
