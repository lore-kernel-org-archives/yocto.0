Return-Path: <ncrypticus@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC1BBE00744; Thu, 11 Sep 2014 10:30:38 -0700 (PDT)
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
	*      [74.125.82.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7ECAE006DB
	for <yocto@yoctoproject.org>; Thu, 11 Sep 2014 10:30:35 -0700 (PDT)
Received: by mail-we0-f176.google.com with SMTP id q58so7167604wes.35
	for <yocto@yoctoproject.org>; Thu, 11 Sep 2014 10:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Z/RgpCwfyAsTkQKP+KzK8+X47IO2qxJ6nzCkCSJ3Ohs=;
	b=DPjtXweDalRtQHBlHR0+c4EtAebk4VcecV1ufE7h2b6Rcrcx7trlsv8/e4GdHeM/jY
	8DpvgTHUEV8zcsYkKeL68vcxuO7T/am6Q75E0PNZ64w8Dj8Y9PRrgjCcsIqraAgwzSZ+
	wxTpdBETm1/ejG1bnVTJiMgY0hw6fk2H4nmBvn0TsMgP9u3Xq0k1TFAwDQ5wjujcjm9S
	OJnTgAhdDaKbqUNuIwHV6pBbyozHqjo6FdL7TdI7xSYPqC5ahbMQO5ZX1FYREpdZTWdT
	9Uel+5ormOD3SGr+LYoU6flCJ+1YCHodowRdAW1ZKBlyZSMRo0T0AVGxUG4Qzfo8eMDK
	Up+g==
MIME-Version: 1.0
X-Received: by 10.180.38.114 with SMTP id f18mr4345644wik.24.1410456634141;
	Thu, 11 Sep 2014 10:30:34 -0700 (PDT)
Received: by 10.194.10.202 with HTTP; Thu, 11 Sep 2014 10:30:34 -0700 (PDT)
In-Reply-To: <CAP71WjxpvupOpEx=OJvAt1=qXgX7J7O2nOHi5ST-_iOJhoymnw@mail.gmail.com>
References: <CAMSG=xW13=_vydq4ytYT_G2FTz+RH9EoTYpQqf667QO1mb_=pg@mail.gmail.com>
	<CAP71WjzYhpLsxEYHb+4OvfHYAMx7X+1oUMzX=3ySeH_M91==RA@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983FE8C08@ORSMSX101.amr.corp.intel.com>
	<CAP71Wjx8Ck2hzrUE-XnDiBzkxoewPTT8pXaUKkoFh4EVgYv0Kg@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983FE9C4D@ORSMSX101.amr.corp.intel.com>
	<CAP71WjxpvupOpEx=OJvAt1=qXgX7J7O2nOHi5ST-_iOJhoymnw@mail.gmail.com>
Date: Thu, 11 Sep 2014 10:30:34 -0700
Message-ID: <CAMSG=xWNHq6raYS0W5+TSOF6_d3XA9xauVqngLcjzhifpJhUPQ@mail.gmail.com>
From: Nemicolopterus Crypticus <ncrypticus@gmail.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: EXTERNALSRC
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
X-List-Received-Date: Thu, 11 Sep 2014 17:30:38 -0000
Content-Type: multipart/alternative; boundary=e89a8f6439c6a633a20502cd8669

--e89a8f6439c6a633a20502cd8669
Content-Type: text/plain; charset=UTF-8

Ah - thank you! It's very clear now. Yes I think the formatting will make
it more clear. Examples also help :)

Something's still not working the way I'm expecting, though. According to
this
<http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#ref-classes-externalsrc>
:
"...this class expects the source code to support recipe builds that use
the B
<http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-B>
variable
to point to the directory in which the OpenEmbedded build system places the
generated objects built from the recipes."

In my recipe, I have not set EXTERNALSRC_BUILD, so B is the default output
directory I'm expecting.  However, I'm still seeing generated objects show
up in my source tree.  Since I'm using automake, I see aclocal.m4,
autom4te.cache, and other automake artifacts.  Is there any way to get
these to show up in my build tree after they've been generated and used by
autotools?

Alternatively, is there an easy way to remove particular newly-created
artifacts from the source tree?


On Tue, Sep 9, 2014 at 10:10 PM, Nicolas Dechesne <
nicolas.dechesne@linaro.org> wrote:

> On Wed, Sep 10, 2014 at 7:07 AM, Rifenbark, Scott M
> <scott.m.rifenbark@intel.com> wrote:
> > I should have used a formatting tag in the manual source to indicate
> "myrecipe" as user input.  Without the formatting, it implies that
> "myrecipe" is literal when it is not.  I guess the example is not
> technically wrong if the recipe is actually named "myrecipe".  I like your
> added information about setting it in the recipe.  I will add that as well.
>
> ah. ok. i see!
>

--e89a8f6439c6a633a20502cd8669
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ah - thank you! It&#39;s very clear now. Yes I think the f=
ormatting will make it more clear. Examples also help :)<div><br></div><div=
>Something&#39;s still not working the way I&#39;m expecting, though. Accor=
ding to <a href=3D"http://www.yoctoproject.org/docs/current/ref-manual/ref-=
manual.html#ref-classes-externalsrc">this</a>:</div><div><span style=3D"col=
or:rgb(51,51,51);font-family:Verdana,Sans,sans-serif;font-size:medium;line-=
height:24px">&quot;...this class expects the source code to support recipe =
builds that use the=C2=A0</span><a class=3D"" href=3D"http://www.yoctoproje=
ct.org/docs/current/ref-manual/ref-manual.html#var-B" title=3D"B" style=3D"=
color:rgb(68,68,68);font-family:Verdana,Sans,sans-serif;font-size:medium;li=
ne-height:24px"><code class=3D"" style=3D"font-family:Courier,monospace">B<=
/code></a><span style=3D"color:rgb(51,51,51);font-family:Verdana,Sans,sans-=
serif;font-size:medium;line-height:24px">=C2=A0variable to point to the dir=
ectory in which the OpenEmbedded build system places the generated objects =
built from the recipes.&quot;</span><br></div><div><span style=3D"color:rgb=
(51,51,51);font-family:Verdana,Sans,sans-serif;font-size:medium;line-height=
:24px"><br></span></div><div><font color=3D"#333333" face=3D"Verdana, Sans,=
 sans-serif" size=3D"3"><span style=3D"line-height:24px">In my recipe, I ha=
ve not set EXTERNALSRC_BUILD, so B is the default output directory I&#39;m =
expecting. =C2=A0However, I&#39;m still seeing generated objects show up in=
 my source tree. =C2=A0Since I&#39;m using automake, I see aclocal.m4, auto=
m4te.cache, and other automake artifacts. =C2=A0Is there any way to get the=
se to show up in my build tree after they&#39;ve been generated and used by=
 autotools?</span></font></div><div><font color=3D"#333333" face=3D"Verdana=
, Sans, sans-serif" size=3D"3"><span style=3D"line-height:24px"><br></span>=
</font></div><div><font color=3D"#333333" face=3D"Verdana, Sans, sans-serif=
" size=3D"3"><span style=3D"line-height:24px">Alternatively, is there an ea=
sy way to remove particular newly-created artifacts from the source tree?</=
span></font></div><div><font color=3D"#333333" face=3D"Verdana, Sans, sans-=
serif" size=3D"3"><span style=3D"line-height:24px">=C2=A0</span></font></di=
v></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, S=
ep 9, 2014 at 10:10 PM, Nicolas Dechesne <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:nicolas.dechesne@linaro.org" target=3D"_blank">nicolas.dechesne@linar=
o.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=
=3D"">On Wed, Sep 10, 2014 at 7:07 AM, Rifenbark, Scott M<br>
&lt;<a href=3D"mailto:scott.m.rifenbark@intel.com">scott.m.rifenbark@intel.=
com</a>&gt; wrote:<br>
&gt; I should have used a formatting tag in the manual source to indicate &=
quot;myrecipe&quot; as user input.=C2=A0 Without the formatting, it implies=
 that &quot;myrecipe&quot; is literal when it is not.=C2=A0 I guess the exa=
mple is not technically wrong if the recipe is actually named &quot;myrecip=
e&quot;.=C2=A0 I like your added information about setting it in the recipe=
.=C2=A0 I will add that as well.<br>
<br>
</span>ah. ok. i see!<br>
</blockquote></div><br></div>

--e89a8f6439c6a633a20502cd8669--
