Return-Path: <ncrypticus@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D955E0054C; Tue,  9 Sep 2014 08:19:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ncrypticus[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 739D6E0034C
	for <yocto@yoctoproject.org>; Tue,  9 Sep 2014 08:19:30 -0700 (PDT)
Received: by mail-wi0-f170.google.com with SMTP id em10so662908wid.5
	for <yocto@yoctoproject.org>; Tue, 09 Sep 2014 08:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=46M9TwyW/h8LjdZK/wWClqZsBE4ze54l/p+a9zjjKvk=;
	b=NpglH0x50HwoLYayW2GNYxGzlf+lguYqO5CFkOyekHRTiv/0XiXQYU+URFYNrss0UT
	RQSvDdHoQvRmcepi0Mv9mCKk4O/hFWE2QCh93FmM9jJE3eOwy0gV6QnPlfWGZn+bmQFA
	2Q/0VaqCnrDSWX5AFzPbtUp40I3/vSy1RUxJgBAcj6elXs7eyhE6GkTUeRmnf8Oa8wgR
	QDQI5MOl87FHtpS8fCd8y6yhEpX+Li/W7rrJcUqEycCBIvHQtoI+otIsGwgltsDlRrs4
	z4gZUcHb+EUAu4UrVk6ZC7zaK1J98BuIuyPh+0UGKwV2wsbyfH2pOsTgDCBMVbrihTSl
	goDg==
MIME-Version: 1.0
X-Received: by 10.180.149.197 with SMTP id uc5mr30155912wib.75.1410275968895; 
	Tue, 09 Sep 2014 08:19:28 -0700 (PDT)
Received: by 10.194.10.202 with HTTP; Tue, 9 Sep 2014 08:19:28 -0700 (PDT)
In-Reply-To: <CAJTo0Lat0QQw1RQzGGxpuyH1Uwo_x9b2WmVnYgs8httK2D=23A@mail.gmail.com>
References: <CAMSG=xUsOJqQLABzm-W2Stwc5xdGTP1pGKMA7Z4TiS5ftLtx1A@mail.gmail.com>
	<CAJTo0Lat0QQw1RQzGGxpuyH1Uwo_x9b2WmVnYgs8httK2D=23A@mail.gmail.com>
Date: Tue, 9 Sep 2014 08:19:28 -0700
Message-ID: <CAMSG=xW4=usCp5tUwiGfa3CeacL045JZhKF-YXg1xbajzGX1Vg@mail.gmail.com>
From: Nemicolopterus Crypticus <ncrypticus@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ExpansionError during parsing
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
X-List-Received-Date: Tue, 09 Sep 2014 15:19:38 -0000
Content-Type: multipart/alternative; boundary=001a11c38114294fc90502a376e8

--001a11c38114294fc90502a376e8
Content-Type: text/plain; charset=UTF-8

Ah I see - that makes sense, thank you.

I found this:
http://www.yoctoproject.org/docs/1.6/bitbake-user-manual/bitbake-user-manual.html#functions

But I'm not sure how to tell whether a given do_<task> function is a shell
function or a python function. Is there a way to find that out?

Also thanks for the hint about S or B - those may indeed be helpful!

On Tue, Sep 9, 2014 at 2:43 AM, Burton, Ross <ross.burton@intel.com> wrote:

> On 9 September 2014 01:22, Nemicolopterus Crypticus
> <ncrypticus@gmail.com> wrote:
> > do_install_prepend(){
> >      bb.build.exec_func('do_change_dir', d)
> > }
> >
> > do_change_dir(){
> >      cd <a directory>
> >  }
>
> do_install is a shell function, so bitbake is parsing your python code as
> shell.
>
> You want to do this:
>
> do_install_prepend() {
>   cd <somewhere>
> }
>
> If you need to do this though, have a look to see if setting S or B is
> sufficient.
>
> Ross
>

--001a11c38114294fc90502a376e8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ah I see - that makes sense, thank you.<div><br></div><div=
>I found this:=C2=A0<a href=3D"http://www.yoctoproject.org/docs/1.6/bitbake=
-user-manual/bitbake-user-manual.html#functions">http://www.yoctoproject.or=
g/docs/1.6/bitbake-user-manual/bitbake-user-manual.html#functions</a></div>=
<div><br></div><div>But I&#39;m not sure how to tell whether a given do_&lt=
;task&gt; function is a shell function or a python function. Is there a way=
 to find that out?=C2=A0</div><div><br></div><div>Also thanks for the hint =
about S or B - those may indeed be helpful!</div></div><div class=3D"gmail_=
extra"><br><div class=3D"gmail_quote">On Tue, Sep 9, 2014 at 2:43 AM, Burto=
n, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" targ=
et=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">On 9 September 2014 01:22, Nemicolopterus Crypticus<br>
<span class=3D"">&lt;<a href=3D"mailto:ncrypticus@gmail.com">ncrypticus@gma=
il.com</a>&gt; wrote:<br>
&gt; do_install_prepend(){<br>
&gt;=C2=A0 =C2=A0 =C2=A0 bb.build.exec_func(&#39;do_change_dir&#39;, d)<br>
&gt; }<br>
&gt;<br>
&gt; do_change_dir(){<br>
&gt;=C2=A0 =C2=A0 =C2=A0 cd &lt;a directory&gt;<br>
&gt;=C2=A0 }<br>
<br>
</span>do_install is a shell function, so bitbake is parsing your python co=
de as shell.<br>
<br>
You want to do this:<br>
<br>
do_install_prepend() {<br>
=C2=A0 cd &lt;somewhere&gt;<br>
}<br>
<br>
If you need to do this though, have a look to see if setting S or B is<br>
sufficient.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--001a11c38114294fc90502a376e8--
