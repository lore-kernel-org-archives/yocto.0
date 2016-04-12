Return-Path: <challinan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 592E4E00E44; Mon, 11 Apr 2016 18:52:57 -0700 (PDT)
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
	*      [209.85.214.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f177.google.com (mail-ob0-f177.google.com
	[209.85.214.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C769E00970
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 18:52:55 -0700 (PDT)
Received: by mail-ob0-f177.google.com with SMTP id tz8so2548642obc.0
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 18:52:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=gwUOH5b7N5kCefgXDcvN64CxnKBxb4VvRDWmDwaN5bU=;
	b=LKHambtgA1JIkAgwSndeOqIfSQGo7DUeBlXTk9PXmiyVBs/4qNInVvCwhCvzGTcYPC
	W0UP/CrnNKjyiU3M7xTxiZLTHAA6on8F6jKDIXm5txtnp4u4clDdGK6pcRwxH0F3L/39
	71XyEXIBjD+iyTsmjhVp0u3UYeSY+b8H5m6p2OwoTTeyYUbF63MHxjwI+6dzmK6EPGjI
	hXOzptp73ztebEWkmT4cpV3oIaC0YvX64J8i5h5KDpwvY1el6XflRXwKWvTDTx/nyHl4
	RlETb/ftykQCKBTWRl0dZrgTdAHI+vsbbIjaMmJaLq02KSiRq+q4YAo1ZA2p1MuRmKLh
	n6yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=gwUOH5b7N5kCefgXDcvN64CxnKBxb4VvRDWmDwaN5bU=;
	b=cbACEQoLL4r8uk1w20MWxiKiWUPbuXT7mE7+9x3p7AOabGE9Ar9KPCIa6xNTQ4fcJM
	JG3uVdeb4IQ2pAB2oEtKfnvsLbqcKdAtViCBzhZLOdresoG5pvU2meTp+19dQ3aphi9U
	2GCDZyo+oZJSB8O8ueK2uMZctzmfzuYyBod7utYGUdiC07VQARLFS1/yZhw18HujG2Ya
	lgvLcyE7t8OR4MzJq6dZGKABC0EKYTuyaHandbHzZCubpKusTetW85ddpcrrwwcgOZyO
	TbVg1ZFgGFbBVGxGdHvhe1hrhxIwq60CFXLTPUzrLfLSeeevOY96GcaCgS5nv6flo2gg
	E9Zg==
X-Gm-Message-State: AOPr4FWAkREkfFwRg3d8qQaOF6J129h+3ke84OU+9Lb/pRR8uJ/q21aBop2sFH8GyaY1XnvkWcJUUr3VNTygCA==
MIME-Version: 1.0
X-Received: by 10.182.105.136 with SMTP id gm8mr243975obb.31.1460425975194;
	Mon, 11 Apr 2016 18:52:55 -0700 (PDT)
Received: by 10.202.71.199 with HTTP; Mon, 11 Apr 2016 18:52:55 -0700 (PDT)
In-Reply-To: <CALRMKQodeu99iu=6Sg1xMAkK3cchbTt0JEGBTy-4TwALttx-XQ@mail.gmail.com>
References: <CALRMKQqW=aUg-uwNqyBEvX2RdB4oh+_j-t_KBpKp1a2cCgskjQ@mail.gmail.com>
	<CAJ86T=WaPSiWoy0zNiaV8GnWd_7zJ1L2-qJNFU=MUbgidDy31Q@mail.gmail.com>
	<CALRMKQodeu99iu=6Sg1xMAkK3cchbTt0JEGBTy-4TwALttx-XQ@mail.gmail.com>
Date: Mon, 11 Apr 2016 21:52:55 -0400
Message-ID: <CAME0jBTj6rHSAxP_yBEGHrmG8R1vAsMbt6Xj9PVm+qBRWbUB5Q@mail.gmail.com>
From: Chris Hallinan <challinan@gmail.com>
To: Ronald Oakes <ronaldo@brc2.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: A lot of, seemingly, hung tasks
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
X-List-Received-Date: Tue, 12 Apr 2016 01:52:57 -0000
Content-Type: multipart/alternative; boundary=089e0129526478ea3305303feb3b

--089e0129526478ea3305303feb3b
Content-Type: text/plain; charset=UTF-8

I have very occasionally hit hung tasks, but I was usually able to identify
the exact task which was hanging, it was never "many".  Note that some
tasks which may appear "hung" may be waiting for a dependency to complete.
You could try some brute force debugging...set these in local.conf:

BB_NUMBER_THREADS = "1"
PARALLEL_MAKE = "-j1"

Then try building again, and yes it will take a long time.

if something is actually hanging, it would be useful to know what task, not
only the bitbake "task" but the actual process as reported by ps.  A
bitbake "task" can spawn many processes as it works to complete it's job.

In the past, once I found the hanging process, strace usually helped me
discover why.

You mention a "low-end" 2-core machine...RAM is everything.  If you're
running Linux out of memory, you get what you deserve <grin>

Remember, poky-tiny refers to the resulting distribution you are building,
not the machine you want to build it on ;)

-Chris



On Mon, Apr 11, 2016 at 9:38 PM, Ronald Oakes <ronaldo@brc2.com> wrote:

> It looks like it is hanging fairly consistently during the
> gcc-cross-initial-x86_64-5.2.0-r0 do_compile or do_install steps.
> I've tried stopping, cleaning, and just building
> gcc-cross-initial-x86_64, but it still hangs.
>
> I'm going to try a 32 bit build just to see if I can get past this.
>
> Ron Oakes
>
> On Mon, Apr 11, 2016 at 12:35 PM, Andre McCurdy <armccurdy@gmail.com>
> wrote:
> > On Mon, Apr 11, 2016 at 11:22 AM, Ronald Oakes <ronaldo@brc2.com> wrote:
> >> Over the weekend, I upgraded my connected development platform to
> >> Debian 8.4.0 from Centos 7.
> >>
> >> However, today I have yet to make a successful poky-tiny build for
> >> either coreI7-64 or qemux86-64.  In each case, I've aborted the build
> >> after one or more tasks has stopped doing anything for 30 minutes or
> >> more.
> >>
> >> I define "stopped doing anything" as having not touched a file in 30
> >> minutes, while the CPU utilization (on this 2 core, low end, ASUS
> >> VivoPC) drops very low.
> >>
> >> I've tried re-running the offending recipes and tasks individually,
> >> and cleaning and restarting from scratch, but I keep ending up with
> >> something hung.
> >>
> >> Any ideas what is up, and, more importantly, what I should do to
> resolve it?
> >
> > Have you used bitbake with the "--debug" option or run "ps axf" or
> > similar to see which tasks or commands are hanging?
> >
> >> Ron Oakes
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
Life is like Linux - it never stands still.

--089e0129526478ea3305303feb3b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have very occasionally hit hung tasks, but I was usually=
 able to identify the exact task which was hanging, it was never &quot;many=
&quot;.=C2=A0 Note that some tasks which may appear &quot;hung&quot; may be=
 waiting for a dependency to complete.=C2=A0 You could try some brute force=
 debugging...set these in local.conf:<div><br><div>BB_NUMBER_THREADS =3D &q=
uot;1&quot;</div><div>PARALLEL_MAKE =3D &quot;-j1&quot;</div><div><br></div=
><div>Then try building again, and yes it will take a long time.</div><div>=
<br></div><div>if something is actually hanging, it would be useful to know=
 what task, not only the bitbake &quot;task&quot; but the actual process as=
 reported by ps.=C2=A0 A bitbake &quot;task&quot; can spawn many processes =
as it works to complete it&#39;s job.</div><div><br></div><div>In the past,=
 once I found the hanging process, strace usually helped me discover why.</=
div><div><br></div><div>You mention a &quot;low-end&quot; 2-core machine...=
RAM is everything.=C2=A0 If you&#39;re running Linux out of memory, you get=
 what you deserve &lt;grin&gt;</div><div><br></div><div>Remember, poky-tiny=
 refers to the resulting distribution you are building, not the machine you=
 want to build it on ;)</div><div><br></div><div>-Chris</div><div><br></div=
><div><br></div></div></div><div class=3D"gmail_extra"><br><div class=3D"gm=
ail_quote">On Mon, Apr 11, 2016 at 9:38 PM, Ronald Oakes <span dir=3D"ltr">=
&lt;<a href=3D"mailto:ronaldo@brc2.com" target=3D"_blank">ronaldo@brc2.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">It looks like it is=
 hanging fairly consistently during the<br>
gcc-cross-initial-x86_64-5.2.0-r0 do_compile or do_install steps.<br>
I&#39;ve tried stopping, cleaning, and just building<br>
gcc-cross-initial-x86_64, but it still hangs.<br>
<br>
I&#39;m going to try a 32 bit build just to see if I can get past this.<br>
<br>
Ron Oakes<br>
<br>
On Mon, Apr 11, 2016 at 12:35 PM, Andre McCurdy &lt;<a href=3D"mailto:armcc=
urdy@gmail.com">armccurdy@gmail.com</a>&gt; wrote:<br>
&gt; On Mon, Apr 11, 2016 at 11:22 AM, Ronald Oakes &lt;<a href=3D"mailto:r=
onaldo@brc2.com">ronaldo@brc2.com</a>&gt; wrote:<br>
&gt;&gt; Over the weekend, I upgraded my connected development platform to<=
br>
&gt;&gt; Debian 8.4.0 from Centos 7.<br>
&gt;&gt;<br>
&gt;&gt; However, today I have yet to make a successful poky-tiny build for=
<br>
&gt;&gt; either coreI7-64 or qemux86-64.=C2=A0 In each case, I&#39;ve abort=
ed the build<br>
&gt;&gt; after one or more tasks has stopped doing anything for 30 minutes =
or<br>
&gt;&gt; more.<br>
&gt;&gt;<br>
&gt;&gt; I define &quot;stopped doing anything&quot; as having not touched =
a file in 30<br>
&gt;&gt; minutes, while the CPU utilization (on this 2 core, low end, ASUS<=
br>
&gt;&gt; VivoPC) drops very low.<br>
&gt;&gt;<br>
&gt;&gt; I&#39;ve tried re-running the offending recipes and tasks individu=
ally,<br>
&gt;&gt; and cleaning and restarting from scratch, but I keep ending up wit=
h<br>
&gt;&gt; something hung.<br>
&gt;&gt;<br>
&gt;&gt; Any ideas what is up, and, more importantly, what I should do to r=
esolve it?<br>
&gt;<br>
&gt; Have you used bitbake with the &quot;--debug&quot; option or run &quot=
;ps axf&quot; or<br>
&gt; similar to see which tasks or commands are hanging?<br>
&gt;<br>
&gt;&gt; Ron Oakes<br>
<span class=3D"HOEnZb"><font color=3D"#888888">&gt;&gt; --<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; yocto mailing list<br>
&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a><br>
&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"n=
oreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto<=
/a><br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div class=3D"gmail_signature">Life is like Linux - it never stands still=
.<br><br></div>
</div>

--089e0129526478ea3305303feb3b--
