Return-Path: <jim@halfman.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DC35E01452
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 04:47:41 -0700 (PDT)
Received: by vcbfo14 with SMTP id fo14so2438525vcb.35
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 04:47:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-type:x-gm-message-state;
	bh=dGXKmL+lGOc+VxTcpdAYHg6jYl7TjPoMgJexJwuxRss=;
	b=DcL3EwMuQwwfek+5A0Cwf19GsoRMPz3sjR8e5hsPYCbWO9tib/j67/KflVLN4FPj7r
	qYinYdK3sPYKABJwVNTQbdZcgXcXULWXRM2CRsAweYyIkkh6Mn9YGVRSNOzPIGJOJcc7
	2tGmnusOXjE1dsVbzj0xp5v6SHVfU14pQLGQBjxpizlTnGVbuQt9/xh4lPBX7dw2gvLF
	MjowNOAgIiesxTC0GgiZpixBeWdW/ukZymo1w4+Efg7Uz5ZCHmHCSKNg9AOyoF8bBVNA
	AC6SVGLI5tZbK5io0DsxFWjqKc0NKlhnrgwkBswIx+f7lk9yQCtyUzzdaPFO6iFvc8io
	TJtA==
Received: by 10.220.223.212 with SMTP id il20mr7615547vcb.71.1340624861041;
	Mon, 25 Jun 2012 04:47:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.52.114.65 with HTTP; Mon, 25 Jun 2012 04:47:20 -0700 (PDT)
In-Reply-To: <CAG+EMXjrph3Bnxc=62BAZ1PwL4by4J6YdipEtoHutyA31kkKhw@mail.gmail.com>
References: <2372513.aqW0HuKdxJ@helios>
	<CAG+EMXjrph3Bnxc=62BAZ1PwL4by4J6YdipEtoHutyA31kkKhw@mail.gmail.com>
From: Jim Kosem <jim@halfman.com>
Date: Mon, 25 Jun 2012 12:47:20 +0100
Message-ID: <CAG+EMXhyVDuRqfFAFpOG5oNfCsbE+quWrWcneCeh55_hX4qUsA@mail.gmail.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQnk1HRLHp5h+yg5a1qcyL1i7YGeOD9nkjcN5wjAtDqsgTPWMp7G3nMzFrqLB6Z9RRoXKaj5
Subject: Re: Web Hob design update
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 25 Jun 2012 11:47:42 -0000
Content-Type: multipart/alternative; boundary=14dae9cdbf619e944204c34a8c78

--14dae9cdbf619e944204c34a8c78
Content-Type: text/plain; charset=UTF-8

---------- Forwarded message ----------
From: Jim Kosem <jim@halfman.com>
Date: 25 June 2012 12:14
Subject: Re: Re: [yocto] Web Hob design update
To: jack@embed.me.uk
Cc: Paul Eggleton <paul.eggleton@intel.com>, Belen Barros Pena <
belen.barros.pena@intel.com>


Hi,

Paul forwarded me your questions about the WebHob design and just wanted to
get back to you.

I'm not sure if there will be an included web server with WebHob. These
issues and others are being sorted out in the development team who will be
doing the rollout of WebHob. Right now, we're concentrating on design and
usability and including the methods, features and requirements to design a
WebHob that would work for teams who would use WebHob to create builds with
Yocto.

We're using Twitter Bootstrap to make the front end development easier and
quicker for the prototype. We could imagine carrying a lot of it forward to
the actual production WebHob, but a lot of this front end development is
yet to happen. Right now we're concentrating on making a clickable HTML5
prototype. This includes quite a bit of JQuery as well.

There are many cases like what happens when two people edit at the same
time that we have to sort out actually.I imagine there would have to be
some sort of locked state perhaps or state where the config is yours
personally until you're done and then is committed to the history.

--
Jim Kosem

Skype: jkosem
Gtalk: jim@halfman.com
Mobile: +44 7757 559081

Note: I read and reply to email only a couple of times a day. If you need
something quicker, please use Skype, GTalk or if its urgent call my mobile.



On 22 June 2012 16:08, Paul Eggleton <paul.eggleton@linux.intel.com> wrote:

>
> ----------  Forwarded Message  ----------
>
> Subject: Re: [yocto] Web Hob design update
> Date: Friday 22 June 2012, 15:59:50
> From: Jack Mitchell <ml@communistcode.co.uk>
> To: yocto@yoctoproject.org
>
> On 22/06/12 15:16, Jim Kosem wrote:
> > Hi,
> >
> > The update of the WebHob design is up on the wiki
> > https://wiki.yoctoproject.org/wiki/Yocto_Web_Hob_Design
> >
> > There's a PDF of all the screens of the latest version (v.1.9) of the
> > application
> > <https://wiki.yoctoproject.org/wiki/images/0/01/Webhob.1.pdf>, a link
> > to the GitHub <https://github.com/jkosem/Yocto-WebHob-Design> we have
> > setup for the HTML5 prototype development and a screencast of the
> > v.1.8
> >
> <
> https://wiki.yoctoproject.org/wiki/images/c/cb/Yocto_webHob.1.9_screencast.0.2.mov
> >
> > showing our design thinking around WebHob and our vision for how it
> > will work.
> >
> > As always, feedback is welcome. Thanks.
> >
> > --
> > Jim Kosem
> >
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
> I like the design screens in the PDF, however it looks like it will be a
> LOT of work! Just one question, how is it intended that this will be
> setup? Will it be a standalone application with included web server
> (twisted-web? I assume it will be python based...).
>
> Are you intending to use Twitter's bootstrap (as that is what the design
> screens resemble)? How about initial implementation, will it be using
> websockets or event driven AJAX? What happens when two people try to
> edit things at the same time? Is there going to be a separate
> database/configuration files or will it be editing config files directly?
>
> I'm not being awkward here, it's just the project I've been working on
> the last 6 months is using some very similar technology and these are
> some of the design decisions I've made (and still attempting to make!),
> so it's more interest and understanding design decisions than anything
> else.
>
> Regards,
>
> --
>
>   Jack Mitchell (jack@embed.me.uk)
>   Embedded Systems Engineer
>   http://www.embed.me.uk
>
> --
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> -----------------------------------------
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--14dae9cdbf619e944204c34a8c78
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<br><div class=3D"gmail_quote">---------- Forwarded message ----------<br>F=
rom: <b class=3D"gmail_sendername">Jim Kosem</b> <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:jim@halfman.com" target=3D"_blank">jim@halfman.com</a>&gt;</s=
pan><br>

Date: 25 June 2012 12:14<br>
Subject: Re: Re: [yocto] Web Hob design update<br>To: <a href=3D"mailto:jac=
k@embed.me.uk" target=3D"_blank">jack@embed.me.uk</a><br>Cc: Paul Eggleton =
&lt;<a href=3D"mailto:paul.eggleton@intel.com" target=3D"_blank">paul.eggle=
ton@intel.com</a>&gt;, Belen Barros Pena &lt;<a href=3D"mailto:belen.barros=
.pena@intel.com" target=3D"_blank">belen.barros.pena@intel.com</a>&gt;<br>


<br><br>Hi,<div><br></div><div>Paul forwarded me your questions about the W=
ebHob design and just wanted to get back to you.</div><div><br></div><div>I=
&#39;m not sure if there will be an included web server with WebHob. These =
issues and others are being sorted out in the development team who will be =
doing the rollout of WebHob. Right now, we&#39;re concentrating on design a=
nd usability and including the methods, features and requirements to design=
 a WebHob that would work for teams who would use WebHob to create builds w=
ith Yocto.</div>



<div><br></div><div>We&#39;re using Twitter Bootstrap to make the front end=
 development easier and quicker for the prototype. We could imagine carryin=
g a lot of it forward to the actual production WebHob, but a lot of this fr=
ont end development is yet to happen. Right now we&#39;re concentrating on =
making a clickable HTML5 prototype. This includes quite a bit of JQuery as =
well.</div>



<div><br></div><div>There are many cases like what happens when two people =
edit at the same time that we have to sort out actually.I imagine there wou=
ld have to be some sort of locked state perhaps or state where the config i=
s yours personally until you&#39;re done and then is committed to the histo=
ry.<br clear=3D"all">



<div><br></div>--<div>Jim Kosem</div><div><br></div><div>Skype: jkosem</div=
><div>Gtalk: <a href=3D"mailto:jim@halfman.com" target=3D"_blank">jim@halfm=
an.com</a></div><div>Mobile: <a href=3D"tel:%2B44%207757%20559081" value=3D=
"+447757559081" target=3D"_blank">+44 7757 559081</a></div>


<div>







<p>Note: I read and reply to email only a couple of times a day. If you nee=
d something quicker, please use Skype, GTalk or if its urgent call my mobil=
e.</p></div><div><div><br>
<br><br><div class=3D"gmail_quote">On 22 June 2012 16:08, Paul Eggleton <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=
=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">



<br>
---------- =C2=A0Forwarded Message =C2=A0----------<br>
<br>
Subject: Re: [yocto] Web Hob design update<br>
Date: Friday 22 June 2012, 15:59:50<br>
From: Jack Mitchell &lt;<a href=3D"mailto:ml@communistcode.co.uk" target=3D=
"_blank">ml@communistcode.co.uk</a>&gt;<br>
To: <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yocto=
project.org</a><br>
<br>
On 22/06/12 15:16, Jim Kosem wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; The update of the WebHob design is up on the wiki<br>
&gt; <a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Web_Hob_Design" ta=
rget=3D"_blank">https://wiki.yoctoproject.org/wiki/Yocto_Web_Hob_Design</a>=
<br>
&gt;<br>
&gt; There&#39;s a PDF of all the screens of the latest version (v.1.9) of =
the<br>
&gt; application<br>
&gt; &lt;<a href=3D"https://wiki.yoctoproject.org/wiki/images/0/01/Webhob.1=
.pdf" target=3D"_blank">https://wiki.yoctoproject.org/wiki/images/0/01/Webh=
ob.1.pdf</a>&gt;, a link<br>
&gt; to the GitHub &lt;<a href=3D"https://github.com/jkosem/Yocto-WebHob-De=
sign" target=3D"_blank">https://github.com/jkosem/Yocto-WebHob-Design</a>&g=
t; we have<br>
&gt; setup for the HTML5 prototype development and a screencast of the<br>
&gt; v.1.8<br>
&gt;<br>
&lt;<a href=3D"https://wiki.yoctoproject.org/wiki/images/c/cb/Yocto_webHob.=
1.9_screencast.0.2.mov" target=3D"_blank">https://wiki.yoctoproject.org/wik=
i/images/c/cb/Yocto_webHob.1.9_screencast.0.2.mov</a>&gt;<br>
&gt; showing our design thinking around WebHob and our vision for how it<br=
>
&gt; will work.<br>
&gt;<br>
&gt; As always, feedback is welcome. Thanks.<br>
&gt;<br>
&gt; --<br>
&gt; Jim Kosem<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
I like the design screens in the PDF, however it looks like it will be a<br=
>
LOT of work! Just one question, how is it intended that this will be<br>
setup? Will it be a standalone application with included web server<br>
(twisted-web? I assume it will be python based...).<br>
<br>
Are you intending to use Twitter&#39;s bootstrap (as that is what the desig=
n<br>
screens resemble)? How about initial implementation, will it be using<br>
websockets or event driven AJAX? What happens when two people try to<br>
edit things at the same time? Is there going to be a separate<br>
database/configuration files or will it be editing config files directly?<b=
r>
<br>
I&#39;m not being awkward here, it&#39;s just the project I&#39;ve been wor=
king on<br>
the last 6 months is using some very similar technology and these are<br>
some of the design decisions I&#39;ve made (and still attempting to make!),=
<br>
so it&#39;s more interest and understanding design decisions than anything =
else.<br>
<br>
Regards,<br>
<br>
--<br>
<br>
 =C2=A0 Jack Mitchell (<a href=3D"mailto:jack@embed.me.uk" target=3D"_blank=
">jack@embed.me.uk</a>)<br>
 =C2=A0 Embedded Systems Engineer<br>
 =C2=A0 <a href=3D"http://www.embed.me.uk" target=3D"_blank">http://www.emb=
ed.me.uk</a><br>
<br>
--<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
-----------------------------------------<br>
<span><font color=3D"#888888">--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div></div></div>
</div><br>

--14dae9cdbf619e944204c34a8c78--
