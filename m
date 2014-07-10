Return-Path: <allenkll@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 550E6E0059F; Thu, 10 Jul 2014 06:46:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9481E00571
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 06:46:37 -0700 (PDT)
Received: by mail-wi0-f178.google.com with SMTP id f8so4073697wiw.5
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 06:46:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=smPNjTGnLhAO5dA1L+YfcNqjHyd1XVgWkFZRV4ByiW8=;
	b=duJihxstK9ckF+1PtW6c1VcgUPe/pR7FfSK7OwZrjAoreomygCl4uXGkI0atZtIr9J
	IsmtsUS4EZf9Mn8YGikghr0zYpyxNPcq668dAJNb8rQq7VU0kitE4HknFGsttsdiWp0A
	1BTZlbNi4jZtDueiQ0kAl0tpTWvFeJvlDZPIRjfKV1Mo6LBWzM/8XZ7tD6TfzuhtvIie
	ScwtXc78mqavyllu1IFkW6wqeyeykxM4ZyAS+lIQj2vqpu3sP7HymgZVcVuXDopu938u
	TutItsDr0IMsh9JXr8GUqYminnsU6ob70xcODqkaRXYvZbbIduvCxsVbxDzZ2uK/ssE0
	3YFw==
MIME-Version: 1.0
X-Received: by 10.194.133.1 with SMTP id oy1mr56378854wjb.87.1404999997065;
	Thu, 10 Jul 2014 06:46:37 -0700 (PDT)
Sender: allenkll@gmail.com
Received: by 10.216.186.134 with HTTP; Thu, 10 Jul 2014 06:46:37 -0700 (PDT)
In-Reply-To: <CAP71Wjw6FZ94P3c8jT+sqgqwKvvjF6ko6PGM9AP3Mo4NTpxQRg@mail.gmail.com>
References: <CAO-21LPnS-BJyZw-SEiSveK5sP=sZaDnMRd9PHVVe5WG6NQG_A@mail.gmail.com>
	<CAP71Wjw6FZ94P3c8jT+sqgqwKvvjF6ko6PGM9AP3Mo4NTpxQRg@mail.gmail.com>
Date: Thu, 10 Jul 2014 08:46:37 -0500
X-Google-Sender-Auth: 6AQOQn2HjA8JBN-Z9iwHHugY7h8
Message-ID: <CAO-21LM7hApyatcYRqxgw9qAcG1zreQWnYjtUYabJfOfRfMM3A@mail.gmail.com>
From: "Allen Kennedy Jr." <allen@kennedystuff.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Environment Variables being unset by bitbake?
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
X-List-Received-Date: Thu, 10 Jul 2014 13:46:49 -0000
Content-Type: multipart/alternative; boundary=089e01228d46bc106404fdd70dac

--089e01228d46bc106404fdd70dac
Content-Type: text/plain; charset=UTF-8

Nicholas,
  Thanks for your response.  I tried the following permutations:
I added this: BB_ENV_EXTRAWHITE += " JAVA_HOME" to the top of my recipe.
I added this: BB_ENV_EXTRAWHITE += "JAVA_HOME" to the top of my recipe.
I added this: BB_ENV_EXTRAWHITE = "JAVA_HOME" to the top of my recipe.
I added this: export BB_ENV_EXTRAWHITE="JAVA_HOME" to the top of my recipe
I added this: export BB_ENV_EXTRAWHITE="JAVA_HOME" to a function in my
recipe

All with no joy.  I did a bit of google-fu and came up with this one:
on the command line: BB_ENV_EXTRAWHITE="JAVA_HOME" bitbake myRecipe

Which almost works, but not really.  my bbnote in my recipe exclaims: NOTE:
java is here: /usr/local/java/jdk
which is right, but then in the shell script that gets called after that,
the first lines are:
if [ -z "$JAVA_HOME" ]; then
    echo "JAVA_HOME is not set"
    exit 1
fi

Which turns out the error that JAVA_HOME is not set.

again, this shell script works perfectly fine outside of the bitbake system.

Any other ideas?
thanks,
-allen




On Thu, Jul 10, 2014 at 3:29 AM, Nicolas Dechesne <
nicolas.dechesne@linaro.org> wrote:

> On Wed, Jul 9, 2014 at 10:58 PM, Allen Kennedy Jr.
> <allen@kennedystuff.com> wrote:
> > Any ideas why or how this is getting unset, and how to fix?
> > I couldn't find any documentation that talks about this.
>
> by the way, this is not a bug, and doesn't need to be 'fixed'. this is
> purposely done this way to avoid leaking too much information from
> your environment into the build environment. bitbake tries to isolate
> as much as possible from the host.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e01228d46bc106404fdd70dac
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Nicholas,<br></div>=C2=A0 Thanks for your respon=
se.=C2=A0 I tried the following permutations:<br>I added this: BB_ENV_EXTRA=
WHITE +=3D &quot; JAVA_HOME&quot; to the top of my recipe.<br>I added this:=
 BB_ENV_EXTRAWHITE +=3D &quot;JAVA_HOME&quot; to the top of my recipe.<br>
I added this: BB_ENV_EXTRAWHITE =3D &quot;JAVA_HOME&quot; to the top of my =
recipe.<br>I added this: export BB_ENV_EXTRAWHITE=3D&quot;JAVA_HOME&quot; t=
o the top of my recipe<br>I added this: export BB_ENV_EXTRAWHITE=3D&quot;JA=
VA_HOME&quot; to a function in my recipe<br>
<br></div><div>All with no joy.=C2=A0 I did a bit of google-fu and came up =
with this one:<br></div><div>on the command line: BB_ENV_EXTRAWHITE=3D&quot=
;JAVA_HOME&quot; bitbake myRecipe<br><br></div><div>Which almost works, but=
 not really.=C2=A0 my bbnote in my recipe exclaims: NOTE: java is here: /us=
r/local/java/jdk<br>
</div><div>which is right, but then in the shell script that gets called af=
ter that, the first lines are:<br>if [ -z &quot;$JAVA_HOME&quot; ]; then<br=
>=C2=A0=C2=A0=C2=A0 echo &quot;JAVA_HOME is not set&quot;<br>=C2=A0=C2=A0=
=C2=A0 exit 1<br>fi<br><br></div>
<div>Which turns out the error that JAVA_HOME is not set.<br><br></div><div=
>again, this shell script works perfectly fine outside of the bitbake syste=
m.<br><br></div><div>Any other ideas?<br></div><div>thanks,<br></div><div>
-allen<br></div><div><br></div><div><br></div></div><div class=3D"gmail_ext=
ra"><br><br><div class=3D"gmail_quote">On Thu, Jul 10, 2014 at 3:29 AM, Nic=
olas Dechesne <span dir=3D"ltr">&lt;<a href=3D"mailto:nicolas.dechesne@lina=
ro.org" target=3D"_blank">nicolas.dechesne@linaro.org</a>&gt;</span> wrote:=
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On Wed, Jul 9, 2014 at 10:58=
 PM, Allen Kennedy Jr.<br>
&lt;<a href=3D"mailto:allen@kennedystuff.com">allen@kennedystuff.com</a>&gt=
; wrote:<br>
&gt; Any ideas why or how this is getting unset, and how to fix?<br>
&gt; I couldn&#39;t find any documentation that talks about this.<br>
<br>
</div>by the way, this is not a bug, and doesn&#39;t need to be &#39;fixed&=
#39;. this is<br>
purposely done this way to avoid leaking too much information from<br>
your environment into the build environment. bitbake tries to isolate<br>
as much as possible from the host.<br>
<div class=3D"HOEnZb"><div class=3D"h5">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div>

--089e01228d46bc106404fdd70dac--
