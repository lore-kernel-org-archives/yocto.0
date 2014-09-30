Return-Path: <challinan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA84DE00876; Tue, 30 Sep 2014 11:22:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (challinan[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f45.google.com (mail-oi0-f45.google.com
	[209.85.218.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA268E0034C
	for <yocto@yoctoproject.org>; Tue, 30 Sep 2014 11:22:10 -0700 (PDT)
Received: by mail-oi0-f45.google.com with SMTP id i138so6451902oig.18
	for <yocto@yoctoproject.org>; Tue, 30 Sep 2014 11:22:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=v4EVigwQFli+XZjliMVHEZsS7EWgjfyU2c2QUpRjJ/Q=;
	b=rHIHawGBDjpdtFJC3GY3wFp62wDdab6rxsflTrm/rJ6nvs7mONolFqGWtsnRanyxAq
	J/djcbqMi1eXcf4dkt9rPou8NUB6A3ol/VDyd2O3vpyUUk2HHz7OhlzyTaSyAwLChPoo
	s+ZRg3VtwqavwcimPs8xJK3teijIdJd4SnkW+cN6eUec1vfIXo19bFC62zSpN0XhQIib
	PrMpCjeoHoglFOAd2Kp2gArKMpA31HAnOPZkvvJCXPLJKkq0bIPmohMCNZ44Ve/+IpAG
	hoTDYVxGzU1Y70X8nKCSnRhFFm1tR9Xg8uWEWhSOiZn7kGVHq+/50EMu3da7FYFhz7AI
	vkng==
MIME-Version: 1.0
X-Received: by 10.182.142.40 with SMTP id rt8mr6093793obb.80.1412101330182;
	Tue, 30 Sep 2014 11:22:10 -0700 (PDT)
Received: by 10.202.105.78 with HTTP; Tue, 30 Sep 2014 11:22:10 -0700 (PDT)
In-Reply-To: <CA+YB3rZasuoA8fysS3ZkbcRm9xidC7NA=Y1YAY=FYw278frkCQ@mail.gmail.com>
References: <CA+YB3rZasuoA8fysS3ZkbcRm9xidC7NA=Y1YAY=FYw278frkCQ@mail.gmail.com>
Date: Tue, 30 Sep 2014 14:22:10 -0400
Message-ID: <CAME0jBRVVXpK7pJBuRiONC2Uqsasz3TFnPgnp0h92H2n+_Wiqg@mail.gmail.com>
From: Chris Hallinan <challinan@gmail.com>
To: Jeff Osier-Mixon <jefro@jefro.net>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: YP documentation survey
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
X-List-Received-Date: Tue, 30 Sep 2014 18:22:16 -0000
Content-Type: multipart/alternative; boundary=001a11c2de6e2c287205044c761f

--001a11c2de6e2c287205044c761f
Content-Type: text/plain; charset=ISO-8859-1

You forgot the fourth question:

- Who reads the docs?  ;)

In all seriousness, the YP has some of the best docs I've ever seen come
out of an open source project.

My only comment: make it easier to build the latest docs from git.  I seem
to always hit errors, and I've seen other posts about that, too. I just did
a quick make DOC=mega-manual on Daisy, and it failed with:
"tar: mega-manual.html: Cannot stat: No such file or directory"

make DOC=dev-manual failed due to missing dependencies, and in the 30
seconds I spent while writing this e-mail, I couldn't figure out what to
install on my U14.04 host to satisfy it.

I don't have much use/fondness for html docs.  Give me a searchable PDF any
day.

Another suggestion might be to include a setup script that makes sure the
proper packages are installed.

All in all, I give the docs a straight 'A' for being well written,
informative, and nearly always relatively current, but then, I don't read
the docs... ;)

My $0.02

Let the comments fly ;)

-Chris






On Tue, Sep 30, 2014 at 1:43 PM, Jeff Osier-Mixon <jefro@jefro.net> wrote:

> Hello - this is the first in a series of short surveys to find out how
> the Yocto Project core team can continue to deliver world-class tools,
> templates, and processes for creating embedded Linux operating
> systems. We will try to keep the surveys short, but we strongly
> encourage you to provide information and opinions on all questions.
> The more information you provide, the better the Yocto Project will
> be.
>
> We appreciate all responses, either on the survey, on this thread, or
> privately back to me. If you respond privately, your comments will be
> kept anonymous unless otherwise specified.
>
> We're starting with documentation.
>
> https://www.surveymonkey.com/r/SJVQT5M
>
> - Does the Yocto Project documentation serve your needs?
>
> - What do you like best about the documentation?
>
> - What do you notice that is missing?
>
>
> Thanks
> --
> Jeff Osier-Mixon @Intel
> Yocto Project Community Manager http://yoctoproject.org
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
Life is like Linux - it never stands still.

--001a11c2de6e2c287205044c761f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You forgot the fourth question:<div><br></div><div>- Who r=
eads the docs? =A0;)</div><div><br></div><div>In all seriousness, the YP ha=
s some of the best docs I&#39;ve ever seen come out of an open source proje=
ct. =A0</div><div><br></div><div>My only comment: make it easier to build t=
he latest docs from git.=A0 I seem to always hit errors, and I&#39;ve seen =
other posts about that, too. I just did a quick make DOC=3Dmega-manual on D=
aisy, and it failed with:</div><div>&quot;tar: mega-manual.html: Cannot sta=
t: No such file or directory&quot; =A0</div><div><br></div><div>make DOC=3D=
dev-manual failed due to missing dependencies, and in the 30 seconds I spen=
t while writing this e-mail, I couldn&#39;t figure out what to install on m=
y U14.04 host to satisfy it.</div><div><br></div><div>I don&#39;t have much=
 use/fondness for html docs.=A0 Give me a searchable PDF any day.</div><div=
><br></div><div>Another suggestion might be to include a setup script that =
makes sure the proper packages are installed.</div><div><br></div><div>All =
in all, I give the docs a straight &#39;A&#39; for being well written, info=
rmative, and nearly always relatively current, but then, I don&#39;t read t=
he docs... ;)</div><div><br></div><div>My $0.02</div><div><br></div><div>Le=
t the comments fly ;)</div><div><br></div><div>-Chris</div><div><br></div><=
div><br></div><div><br></div><div><br></div><div><br></div>







</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Sep=
 30, 2014 at 1:43 PM, Jeff Osier-Mixon <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:jefro@jefro.net" target=3D"_blank">jefro@jefro.net</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">Hello - this is the first in a series o=
f short surveys to find out how<br>
the Yocto Project core team can continue to deliver world-class tools,<br>
templates, and processes for creating embedded Linux operating<br>
systems. We will try to keep the surveys short, but we strongly<br>
encourage you to provide information and opinions on all questions.<br>
The more information you provide, the better the Yocto Project will<br>
be.<br>
<br>
We appreciate all responses, either on the survey, on this thread, or<br>
privately back to me. If you respond privately, your comments will be<br>
kept anonymous unless otherwise specified.<br>
<br>
We&#39;re starting with documentation.<br>
<br>
<a href=3D"https://www.surveymonkey.com/r/SJVQT5M" target=3D"_blank">https:=
//www.surveymonkey.com/r/SJVQT5M</a><br>
<br>
- Does the Yocto Project documentation serve your needs?<br>
<br>
- What do you like best about the documentation?<br>
<br>
- What do you notice that is missing?<br>
<br>
<br>
Thanks<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
Jeff Osier-Mixon @Intel<br>
Yocto Project Community Manager <a href=3D"http://yoctoproject.org" target=
=3D"_blank">http://yoctoproject.org</a><br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r>Life is like Linux - it never stands still.<br><br>
</div>

--001a11c2de6e2c287205044c761f--
