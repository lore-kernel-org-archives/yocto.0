Return-Path: <valentin.lebescond@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD09BE00B30; Fri, 23 Oct 2015 11:35:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (valentin.lebescond[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.43 listed in list.dnswl.org]
Received: from mail-lf0-f43.google.com (mail-lf0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF13CE00B23
	for <yocto@yoctoproject.org>; Fri, 23 Oct 2015 11:35:41 -0700 (PDT)
Received: by lfbn126 with SMTP id n126so58560430lfb.2
	for <yocto@yoctoproject.org>; Fri, 23 Oct 2015 11:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:content-type; bh=i2sXi1ALbA2YJjyiFN9myZ9vF4Gqr8CiodxqKniIG68=;
	b=S7A/Oyyvn7n7jKwzKQT2Pd52b6kpzL9i6JvI5GKCr0I4YRh/1aJvqUL05m+DbJXKRU
	yW69UQrES9yu8IokHSNhlacfQ3UBuv+OC/kCJzH4DiznAMWTAJfxZnB072DaOL8FsD91
	LIs7zaiR2G0UcPWUKgqrIMxsurD8wMTbbtp8Rqg7u83EEPAZWjEp1U+/pC80NJeFPSgf
	JtGTNdKVHxojaK2sIiXFQQKp86xfkU+uJYshR94ZpDRTh5kRD6B56dC3AhndmxMK9PY0
	40BkI7PWi0Cj+LkK7HGeH9eVbQ63hvI1XX2PzdA1UFR0knGdRo+johfIr1PtoDelMq57
	a9zQ==
X-Received: by 10.112.150.201 with SMTP id uk9mr12039047lbb.102.1445625339185; 
	Fri, 23 Oct 2015 11:35:39 -0700 (PDT)
MIME-Version: 1.0
References: <C748A84D-1FB6-46DA-BAD1-6FE6E0A82E76@gmail.com>
In-Reply-To: <C748A84D-1FB6-46DA-BAD1-6FE6E0A82E76@gmail.com>
From: Valentin Le bescond <valentin.lebescond@gmail.com>
Date: Fri, 23 Oct 2015 18:35:29 +0000
Message-ID: <CAP2S6e5K7eyjCM_Urzwoti5Zi=agvBTYad248a_bZa=EQ1CBiw@mail.gmail.com>
To: durotimi1234@gmail.com, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: External Build
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
X-List-Received-Date: Fri, 23 Oct 2015 18:35:44 -0000
Content-Type: multipart/alternative; boundary=047d7b3435dad210680522c9e059

--047d7b3435dad210680522c9e059
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

Just to clarify things, what do you call "poky" and what do you call "the
build"?

I am interested by the answer to this one ...

Le ven. 23 oct. 2015 =C3=A0 20:01,  <durotimi1234@gmail.com> a =C3=A9crit :

> Hello everyone,
>
> I am a novice to Linux and poky and I am having a bit of a challenge with
> completing the quickstart steps. I have installed poky on my host compute=
r
> but I want to
> install the build directory on an external harddrive. Every time I run
> through the steps I run into an error, no matter what I do.
> Is it possible to install poky on the local drive and have a build on an
> external drive? Is there a workaround?
> Any advice will be helpful.
>
>
> Thanks,
> Durotimi.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
--=20
Valentin LE BESCOND

--047d7b3435dad210680522c9e059
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Hi,</p>
<p dir=3D"ltr">Just to clarify things, what do you call &quot;poky&quot;=C2=
=A0and what do you call &quot;the build&quot;? </p>
<p dir=3D"ltr">I am interested by the answer to this one ... </p>

<br><div class=3D"gmail_quote"><div dir=3D"ltr">Le=C2=A0ven. 23 oct. 2015 =
=C3=A0 20:01,=C2=A0 &lt;<a href=3D"mailto:durotimi1234@gmail.com" target=3D=
"_blank">durotimi1234@gmail.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex"><div dir=3D"auto"><span style=3D"background-color:=
rgba(255,255,255,0)">Hello everyone,</span><br><p><span style=3D"background=
-color:rgba(255,255,255,0)">I am a novice to Linux and poky and I am having=
 a bit of a challenge with completing the quickstart steps. I have installe=
d poky on my host computer but I want to=C2=A0<br>install the build directo=
ry on an external harddrive. Every time I run through the steps I run into =
an error, no matter what I do.<br>Is it possible to install poky on the loc=
al drive and have a build on an external drive? Is there a workaround?<br>A=
ny advice will be helpful.</span></p><p><span style=3D"background-color:rgb=
a(255,255,255,0)"><br>Thanks,<br>Durotimi.</span></p></div>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><div dir=3D"ltr">-- <br></div><div dir=3D"ltr"><div>Vale=
ntin LE BESCOND<br></div></div>

--047d7b3435dad210680522c9e059--
