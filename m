Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E8C7E00CE8; Thu, 21 Dec 2017 06:10:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, TRACKER_ID autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.170 listed in list.dnswl.org]
	*  1.3 TRACKER_ID BODY: Incorporates a tracking ID number
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f170.google.com (mail-wr0-f170.google.com
	[209.85.128.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82DE0E008FB
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 06:10:25 -0800 (PST)
Received: by mail-wr0-f170.google.com with SMTP id u19so18891926wrc.3
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 06:10:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=22kWSzDR0VDPVi2O5F5/CdfeJU9cc/T1ZDzYLVgfON8=;
	b=Bh0jFtXFaZOo4sszX4jGlyIdRXCj0y9F69rM4scbm8S3DHzRf8n7/7G/VrKwbnQ66C
	vEUL1yNzJJsYMwAc4ywoQQmz840wxf8AqcSL7XGwGta36dQyppBxHWuqnHLAJ6gRDp+l
	TYKACGO/rttYyK0AwtPd8bU+4L5kRRR0SJuuIms7TnaT+djoc0ZrvKo1vnzjQTPW9u1D
	wyHZN5WA/46zdDnZe/CRZfWhfhYSNZjPGKB+E7eXnPZdHwp9Az7H/SCAZUwvZHMP0hG9
	hnZy455TP0t5M0d/8JsDcTLnjPegT9xFcBGEliq5371ytv5qZQeUu7e9dpDnvZxaAbdA
	YRhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=22kWSzDR0VDPVi2O5F5/CdfeJU9cc/T1ZDzYLVgfON8=;
	b=EnrApsrErn7yoetJ1olLAWxPm5iX8eIzKatmpnMgRxnrKRG+7FlL6zc/W4l3hQQh9c
	ytUj0iqOdxxkXVpaudghwS1GEKitE92KULLxQ9QHLG7o5zeUZ2z/k1FIaBdNUV0WHiKF
	kucJ1bBt2UFizzO7sWzve7LsuUDq0PuBno+6SDLnykxDhUJnmCpafpKcnLjOjQNRdLcX
	T9SJ2GXKR5PYE3KLCcqgbwOopR21ET1locSiu4F2MxvlsyRYY5+ahtlN4JZCPi7H2ZVx
	VlU7AGeMU9i7Oa7GkcJafWrwkkbueBGkMyI2TOIC8MCecVK7PBNjChF50ow2KLeliRN6
	D2TQ==
X-Gm-Message-State: AKGB3mLGnkLMnFVn9u0XvnrBDEMqJcEkAsOMx3wBTUdoW/L7R4eWo7fb
	DmLic2s52XZpTVom2j46jVa7bne9KINlLKC0Ja0=
X-Google-Smtp-Source: ACJfBosUvn5VkYsX1waiID9btYSuGLXlQavyY7Fy6+0JuE872he2VQtVF31AwC+gII2A+6xBH+Z4VkDUZQCI33MDv8g=
X-Received: by 10.223.188.66 with SMTP id a2mr12686744wrh.249.1513865424549;
	Thu, 21 Dec 2017 06:10:24 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.97.215 with HTTP; Thu, 21 Dec 2017 06:10:23 -0800 (PST)
In-Reply-To: <CAJ86T=U69e50Ea=nyMJKjN7Aign36evdRQAeKUUctzsztamo+w@mail.gmail.com>
References: <CAGAf8Lxkhv8ZKz9etCG17PykQ3Yo5s4a_uLMK9ccJNavK4urYA@mail.gmail.com>
	<CAJ86T=U69e50Ea=nyMJKjN7Aign36evdRQAeKUUctzsztamo+w@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 21 Dec 2017 15:10:23 +0100
Message-ID: <CAGAf8LwOt7Z7WLM-B4rA-x0Tx7xM0SrQeQUZ3odfmje-WiORNw@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Some trivial question about git update-ref refs/heads/rocko ...
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
X-List-Received-Date: Thu, 21 Dec 2017 14:10:26 -0000
Content-Type: multipart/alternative; boundary="089e0820b7c8de3b840560da42ff"

--089e0820b7c8de3b840560da42ff
Content-Type: text/plain; charset="UTF-8"

Hello Andre,

> To switch from rocko to master, try:
>
>  git fetch origin
>  git checkout -B master origin/master

This did the trick... Thank you!

I always thought that I actually initially fetched master release, but it
appears that I fetched rocko as genesis release.

The conclusion/fact given above sustains, because of the following info in
the: .../.git/refs/heads/ (CLI transcript follows):

[user@localhost poky]$ pwd
/home/user/YOCTO/oe_core_embedded/poky
[user@localhost poky]$* cd .git/refs/heads*
[user@localhost heads]$ ls -al
total 16
drwxrwxr-x. 2 user user 4096 Dec 21 06:10 .
drwxrwxr-x. 5 user user 4096 Oct 18 12:49 ..
-rw-rw-r--. 1 user user   41 *Dec 21 06:10 master*
-rw-rw-r--. 1 user user   41 *Oct 18 12:49 rocko*
[user@localhost heads]$ cat rocko
65d23bd7986615fdfb0f1717b615534a2a14ab80
[user@localhost heads]$ cat master
*370483fce1c2429c81b19dcf8a36394dc3fc3d92 <<===== MASTER current HEAD!*
[user@localhost heads]$

Genesis was on October 18th, 2018 (git clone -b rocko git://
git.yoctoproject.org/poky.git), so the command:
git checkout -B master origin/master created today (Dec 21st, 2018) master
HEAD file in .../.git/refs/heads .

Then I again bitbake core-image-sato, worked as a charm.

Thank you again,
Zoran

On Wed, Dec 20, 2017 at 11:45 PM, Andre McCurdy <armccurdy@gmail.com> wrote:

> On Wed, Dec 20, 2017 at 8:32 AM, Zoran Stojsavljevic
> <zoran.stojsavljevic@gmail.com> wrote:
> > I am trying to upgrade my poky distro with current HEAD:
> > 65d23bd7986615fdfb0f1717b615534a2a14ab80
> >
> > It is ~ one month old.
> >
> > And to the latest HEAD:370483fce1c2429c81b19dcf8a36394dc3fc3d92
> > http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=
> 370483fce1c2429c81b19dcf8a36394dc3fc3d92
> >
> > The transcript what I do is below:
> > [user@localhost poky]$ pwd
> > /home/user/YOCTO/oe_core_embedded/poky
> > [user@localhost poky]$ git update-ref refs/heads/rocko
> > 370483fce1c2429c81b19dcf8a36394dc3fc3d92
> > fatal: update_ref failed for ref 'refs/heads/rocko': cannot update ref
> > 'refs/heads/rocko': trying to write ref 'refs/heads/rocko' with
> nonexistent
> > object 370483fce1c2429c81b19dcf8a36394dc3fc3d92
> > [user@localhost poky]$ git update-ref refs/heads/rocko HEAD
> > 370483fce1c2429c81b19dcf8a36394dc3fc3d92
> > fatal: update_ref failed for ref 'refs/heads/rocko': cannot lock ref
> > 'refs/heads/rocko': is at 65d23bd7986615fdfb0f1717b615534a2a14ab80 but
> > expected 370483fce1c2429c81b19dcf8a36394dc3fc3d92
> > [user@localhost poky]$
> >
> > What I am doing wrong?!
>
> To switch from rocko to master, try:
>
>   git fetch origin
>   git checkout -B master origin/master
>

--089e0820b7c8de3b840560da42ff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Andre,<div><br></div><div><span style=3D"font-size:1=
2.8px">&gt; To switch from rocko to master, try:</span><br style=3D"font-si=
ze:12.8px">&gt;<br style=3D"font-size:12.8px"><span style=3D"font-size:12.8=
px">&gt;=C2=A0 git fetch origin</span><br style=3D"font-size:12.8px"><span =
style=3D"font-size:12.8px">&gt;=C2=A0 git checkout -B master origin/master<=
/span><br></div><div><span style=3D"font-size:12.8px"><br></span></div><div=
><span style=3D"font-size:12.8px">This did the trick... Thank you!</span></=
div><div><span style=3D"font-size:12.8px"><br></span></div><div><span style=
=3D"font-size:12.8px">I always thought that I actually initially fetched ma=
ster release, but it appears that I fetched rocko as genesis release.</span=
></div><div><span style=3D"font-size:12.8px"><br></span></div><div><span st=
yle=3D"font-size:12.8px">The conclusion/fact given above sustains, because =
of the following info in the: .../.git/</span><span style=3D"color:rgb(80,0=
,80);font-size:12.8px">refs/heads/ (CLI transcript follows):</span></div><d=
iv><span style=3D"color:rgb(80,0,80);font-size:12.8px"><br></span></div><di=
v><div><font color=3D"#500050"><span style=3D"font-size:12.8px">[user@local=
host poky]$ pwd</span></font></div><div><font color=3D"#500050"><span style=
=3D"font-size:12.8px">/home/user/YOCTO/oe_core_<wbr>embedded/poky</span></f=
ont></div><div><span style=3D"font-size:12.8px"><font color=3D"#500050">[us=
er@localhost poky]$</font><b><i><u><font color=3D"#ff0000"> cd .git/refs/he=
ads</font></u></i></b></span></div><div><font color=3D"#500050"><span style=
=3D"font-size:12.8px">[user@localhost heads]$ ls -al</span></font></div><di=
v><font color=3D"#500050"><span style=3D"font-size:12.8px">total 16</span><=
/font></div><div><font color=3D"#500050"><span style=3D"font-size:12.8px">d=
rwxrwxr-x. 2 user user 4096 Dec 21 06:10 .</span></font></div><div><font co=
lor=3D"#500050"><span style=3D"font-size:12.8px">drwxrwxr-x. 5 user user 40=
96 Oct 18 12:49 ..</span></font></div><div><span style=3D"font-size:12.8px"=
><font color=3D"#500050">-rw-rw-r--. 1 user user=C2=A0 =C2=A041 </font><b><=
i><u><font color=3D"#ff0000">Dec 21 06:10 master</font></u></i></b></span><=
/div><div><span style=3D"font-size:12.8px"><font color=3D"#500050">-rw-rw-r=
--. 1 user user=C2=A0 =C2=A041 </font><b><i><u><font color=3D"#ff0000">Oct =
18 12:49 rocko</font></u></i></b></span></div><div><font color=3D"#500050">=
<span style=3D"font-size:12.8px">[user@localhost heads]$ cat rocko</span></=
font></div><div><font color=3D"#500050"><span style=3D"font-size:12.8px">65=
d23bd7986615fdfb0f1717b61553<wbr>4a2a14ab80</span></font></div><div><font c=
olor=3D"#500050"><span style=3D"font-size:12.8px">[user@localhost heads]$ c=
at master</span></font></div><div><font color=3D"#500050"><span style=3D"fo=
nt-size:12.8px"><b><i><u>370483fce1c2429c81b19dcf8a3639<wbr>4dc3fc3d92 &lt;=
&lt;=3D=3D=3D=3D=3D MASTER current HEAD!</u></i></b></span></font></div><di=
v><font color=3D"#500050"><span style=3D"font-size:12.8px">[user@localhost =
heads]$=C2=A0</span></font></div></div><div><font color=3D"#500050"><span s=
tyle=3D"font-size:12.8px"><br></span></font></div><div><font color=3D"#5000=
50"><span style=3D"font-size:12.8px">Genesis was on October 18th, 2018 (</s=
pan></font><span style=3D"font-size:13px;background-color:rgb(255,255,255)"=
><font color=3D"#000000" face=3D"verdana, sans-serif">git clone -b rocko gi=
t://<a href=3D"http://git.yoctoproject.org/poky.git">git.yoctoproject.org/p=
oky.git</a></font></span><font color=3D"#500050"><span style=3D"font-size:1=
2.8px">), so the command:</span></font></div><div><span style=3D"font-size:=
12.8px">git checkout -B master origin/master=C2=A0</span><span style=3D"fon=
t-size:12.8px">created today (Dec 21st, 2018) master HEAD file in .../</spa=
n><span style=3D"font-size:12.8px"><font color=3D"#000000">.git/refs/heads =
.</font></span></div><div><span style=3D"color:rgb(80,0,80);font-size:12.8p=
x"><br></span></div><div><span style=3D"color:rgb(80,0,80);font-size:12.8px=
">Then I again bitbake core-image-sato, worked as a charm.</span></div><div=
><br></div><div>Thank you again,</div><div>Zoran</div></div><div class=3D"g=
mail_extra"><br><div class=3D"gmail_quote">On Wed, Dec 20, 2017 at 11:45 PM=
, Andre McCurdy <span dir=3D"ltr">&lt;<a href=3D"mailto:armccurdy@gmail.com=
" target=3D"_blank">armccurdy@gmail.com</a>&gt;</span> wrote:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex"><span class=3D"">On Wed, Dec 20, 2017 at 8:32 AM, Zora=
n Stojsavljevic<br>
&lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com">zoran.stojsavljevic@gm=
ail.com</a><wbr>&gt; wrote:<br>
&gt; I am trying to upgrade my poky distro with current HEAD:<br>
&gt; 65d23bd7986615fdfb0f1717b61553<wbr>4a2a14ab80<br>
&gt;<br>
&gt; It is ~ one month old.<br>
&gt;<br>
&gt; And to the latest HEAD:<wbr>370483fce1c2429c81b19dcf8a3639<wbr>4dc3fc3=
d92<br>
&gt; <a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=
=3D370483fce1c2429c81b19dcf8a36394dc3fc3d92" rel=3D"noreferrer" target=3D"_=
blank">http://git.yoctoproject.org/<wbr>cgit/cgit.cgi/poky/commit/?id=3D<wb=
r>370483fce1c2429c81b19dcf8a3639<wbr>4dc3fc3d92</a><br>
&gt;<br>
&gt; The transcript what I do is below:<br>
&gt; [user@localhost poky]$ pwd<br>
&gt; /home/user/YOCTO/oe_core_<wbr>embedded/poky<br>
&gt; [user@localhost poky]$ git update-ref refs/heads/rocko<br>
&gt; 370483fce1c2429c81b19dcf8a3639<wbr>4dc3fc3d92<br>
&gt; fatal: update_ref failed for ref &#39;refs/heads/rocko&#39;: cannot up=
date ref<br>
&gt; &#39;refs/heads/rocko&#39;: trying to write ref &#39;refs/heads/rocko&=
#39; with nonexistent<br>
&gt; object 370483fce1c2429c81b19dcf8a3639<wbr>4dc3fc3d92<br>
&gt; [user@localhost poky]$ git update-ref refs/heads/rocko HEAD<br>
&gt; 370483fce1c2429c81b19dcf8a3639<wbr>4dc3fc3d92<br>
&gt; fatal: update_ref failed for ref &#39;refs/heads/rocko&#39;: cannot lo=
ck ref<br>
&gt; &#39;refs/heads/rocko&#39;: is at 65d23bd7986615fdfb0f1717b61553<wbr>4=
a2a14ab80 but<br>
&gt; expected 370483fce1c2429c81b19dcf8a3639<wbr>4dc3fc3d92<br>
&gt; [user@localhost poky]$<br>
&gt;<br>
&gt; What I am doing wrong?!<br>
<br>
</span>To switch from rocko to master, try:<br>
<br>
=C2=A0 git fetch origin<br>
=C2=A0 git checkout -B master origin/master<br>
</blockquote></div><br></div>

--089e0820b7c8de3b840560da42ff--
