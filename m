Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D683E008F5; Wed, 10 Feb 2016 11:04:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA5E0E008B4
	for <yocto@yoctoproject.org>; Wed, 10 Feb 2016 11:04:44 -0800 (PST)
Received: by mail-ig0-f172.google.com with SMTP id y8so21413508igp.0
	for <yocto@yoctoproject.org>; Wed, 10 Feb 2016 11:04:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kergoth-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:content-type; bh=LL5vPK5y+ufT1j0bSnpZo+n1ritw8QcCfUSa6R67JJ8=;
	b=n0qfaXYHd6NkkXsma+3Jn9CUYyAdcoq371LoxsuI5bwz3wryk6TQ1LLz9KU0z25GzR
	XJ7a78qhquvmeFCRsB7A9S0/iDqhJJFNiwqqlXvGxc0iEIluR++ANSf4sKGvAhKlo+ZK
	jZLIX2iEORwYx4Kr9VUovbsjVDpoK3s08IIQVyEtt3EwnNr58uwGm6HYiRH5ApJMDGIQ
	nUwoLrjZybw9RmHY90wDvzWCR+Wf8wU5yZsqIqIoaJ7l6A/o0jCrXw6YK+YQhgAcmvgA
	18x4ATnjPcbYJJxxRl8ALVmRMput6NeSrYJUXMj4lCd4NXxnNDzR1bpN6JyvDTGuPhuj
	nC3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:content-type;
	bh=LL5vPK5y+ufT1j0bSnpZo+n1ritw8QcCfUSa6R67JJ8=;
	b=HRZe/op0QCrMFEFYt+BsqDHeyj7uUUxDUOb+mU8YK4uBdLtXHLQ6XcMBfzpy5szOr/
	Tt8u48WCYjLZp8zSXRHk0tzs8KDUttn27WBB4zYYnppZw8AMJm1Ni10rGJKshycl+JWw
	2wfcm/OGSjPAGZI4U5auLeiRth6JEGqvc1aeRKOV8mIR/s5vcdnFSClD6JVN6X1fxMXA
	2NQAkdjU2vYjBWJQSUxIbaHMbbQCGlUj2Q0srBgdZ2I1W3qqWFx2hh2BPVjKdrxnAdvw
	JuQCZAu/E8AoglLjhfhW9Sb3rWx/dK50C6+uwrCBXTdsCcx1flIr6IY9avQoW0nj90mA
	PqHg==
X-Gm-Message-State: AG10YOTC1//+RwSUW6+QjSrSl0fVcKHqXDYHorjK+OLu2oXTmoqFe/9Py8thgnnLfkaWm3Z4gUItaekCb2Qhpw==
X-Received: by 10.50.78.231 with SMTP id e7mr7369325igx.6.1455131084280; Wed,
	10 Feb 2016 11:04:44 -0800 (PST)
MIME-Version: 1.0
References: <CAAJbk1FY6R1urdH-5oMynmprX4jS1-NkHR2V-z3rnBabN9_ZsQ@mail.gmail.com>
In-Reply-To: <CAAJbk1FY6R1urdH-5oMynmprX4jS1-NkHR2V-z3rnBabN9_ZsQ@mail.gmail.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Wed, 10 Feb 2016 19:04:34 +0000
Message-ID: <CABcZANkwg5mf5qAdjvP1kxjeynM__O2-GrQvESPqmQyAKQME+A@mail.gmail.com>
To: Xi Zhou Zhou <joel.zhou@broadcom.com>, yocto@yoctoproject.org
Subject: Re: Inline Python function name define
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
X-List-Received-Date: Wed, 10 Feb 2016 19:04:49 -0000
Content-Type: multipart/alternative; boundary=089e013c649e615911052b6f1bea

--089e013c649e615911052b6f1bea
Content-Type: text/plain; charset=UTF-8

def foo(d):
    # Do something

FOO = "${@foo(d)}"

On Wed, Feb 10, 2016 at 12:02 PM Xi Zhou Zhou <joel.zhou@broadcom.com>
wrote:

> Hi,
>
> I want to manipulate a variable with inline python function in a recipe.
> The code is something like this.
>
> python newpv() {
>     return 999
> }
>
> PV = "${@newpv()}"
>
>
> The error is "name 'newpv' is not defined"
>
> ERROR: ExpansionError during parsing /home/joelz/poky/build/
> ../meta-test/recipes-bsp/mytest/mytest.bb: Failure expanding variable PV,
> expression was ${@newpv()} which triggered exception NameError: name
> 'newpv' is not defined
>
>
> What's the right way to create inline python function in Yocto recipe?
>
>
> Thanks,
> Joel
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e013c649e615911052b6f1bea
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">def foo(d):<div>=C2=A0 =C2=A0 # Do something</div><div><br=
></div><div>FOO =3D &quot;${@foo(d)}&quot;</div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr">On Wed, Feb 10, 2016 at 12:02 PM Xi Zhou Zhou &l=
t;<a href=3D"mailto:joel.zhou@broadcom.com">joel.zhou@broadcom.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi,<div><br=
></div><div>I want to manipulate a variable with inline python function in =
a recipe.=C2=A0</div><div>The code is something like this.</div><div><br></=
div><blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><=
div><div></div></div></blockquote><div><div style=3D"display:block;padding:=
0.5em;color:rgb(51,51,51);font-family:monospace;background:rgb(248,248,248)=
"><blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><di=
v><div><span style=3D"color:rgb(153,0,0);font-weight:bold">python</span> ne=
wpv() {</div></div><div><div>=C2=A0 =C2=A0 <span style=3D"color:rgb(153,0,0=
);font-weight:bold">return</span> <span style=3D"color:rgb(0,128,128)">999<=
/span></div></div><div><div>}</div></div></blockquote><blockquote style=3D"=
margin:0px 0px 0px 40px;border:none;padding:0px"><div><div>PV =3D <span sty=
le=3D"color:rgb(221,17,68)">&quot;<span style=3D"color:rgb(0,128,128)">${@n=
ewpv()}</span>&quot;</span></div></div></blockquote></div></div><blockquote=
 style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div><div></div>=
</div></blockquote><div><div><br></div><div>The error is &quot;name &#39;ne=
wpv&#39; is not defined&quot;</div><div><br></div></div><blockquote style=
=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div><div></div></div>=
</blockquote><div><div style=3D"display:block;overflow-x:auto;padding:0.5em=
;color:rgb(51,51,51);font-family:monospace;background:rgb(248,248,248)"><bl=
ockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div><di=
v><span style=3D"color:rgb(0,128,128)">ERROR</span>: ExpansionError during =
parsing <span style=3D"color:rgb(0,153,38)">/home/joelz/poky/build/</span>.=
./meta-test/recipes-bsp/mytest/mytest.<span style=3D"color:rgb(0,128,128)">=
bb</span>: Failure expanding variable PV, expression was ${<span>@newpv</sp=
an>()} which triggered exception <span style=3D"color:rgb(0,128,128)">NameE=
rror</span>: name <span style=3D"color:rgb(221,17,68)">&#39;newpv&#39;</spa=
n> <span style=3D"color:rgb(51,51,51);font-weight:bold">is</span> <span sty=
le=3D"color:rgb(51,51,51);font-weight:bold">not</span> defined</div></div><=
/blockquote><div><div><div><div dir=3D"ltr"></div></div></div></div></div><=
/div><div><div><div><div dir=3D"ltr"><br></div><div>What&#39;s the right wa=
y to create inline python function in Yocto recipe?</div><div dir=3D"ltr"><=
br></div><div dir=3D"ltr"><br><div>Thanks,</div><div>Joel</div></div></div>=
</div>
</div></div>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--089e013c649e615911052b6f1bea--
