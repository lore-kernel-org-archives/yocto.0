Return-Path: <andrei@gherzan.ro>
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14412E0043C
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 15:41:53 -0700 (PDT)
Received: by mail-wi0-f170.google.com with SMTP id hi8so34265wib.3
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 15:41:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=ueBdkyjfBU5lnZiPL7I/9tqek6hhbnGayg6KU3R1AtU=;
	b=hjct1ucNkpFC50nqZ7rCRV3qEuyMVJ5lyVBKoNbFrSqkaSlb/47nQ8kIYm2ud4bdjw
	m1yvPSiK5UKkMHUN+UJF8BT5+wzuMSzSKdr8UoUGpK2Wg5EF8yQ2tlW2ObXEoic4j49D
	KzBDDrVG39f9WD7xs/s1o9ON+0DpU33v64TRcZ8u+xwvuwp0hCd0jOzS60TndYGLIrZ/
	1WITrHvhtRHHnjH2ZfQGaoMV9PW0TDr2U94V2CmiQnK80pGSULxNMRPeSCcpusgBeviu
	745W1u6iiMakzwG9alUexDaKZw7bobHJxVGBUmELQLudMEzWFw0jq3jM4uqpDduoLGTL
	FAiw==
X-Gm-Message-State: ALoCoQnC29cRzOZtx+6nC+yPWmkSkx6yJa4wU5/9WEFEk2Q5UQR8ykYhdu2nCvqHmU1wHqSHJ6Iw
X-Received: by 10.180.104.33 with SMTP id gb1mr7176778wib.25.1377124912481;
	Wed, 21 Aug 2013 15:41:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.217.91.198 with HTTP; Wed, 21 Aug 2013 15:41:32 -0700 (PDT)
X-Originating-IP: [5.13.215.182]
In-Reply-To: <CANyK_8dY=_=zTK+zq2oLq68=zOQuA9UkF=juJCRexo_rLWbzuA@mail.gmail.com>
References: <1376650116-11855-1-git-send-email-paul@paulbarker.me.uk>
	<CAK18fxE8JuUo3is2LbL42SEOsWfkDmr5CZFDuw9rOx_sgAvqaQ@mail.gmail.com>
	<CANyK_8dY=_=zTK+zq2oLq68=zOQuA9UkF=juJCRexo_rLWbzuA@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 22 Aug 2013 01:41:32 +0300
Message-ID: <CAK18fxHCirAdwfW5HBiDW3GNZt3oG-1xJ8FwHDf1z=baSU-VSw@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: Allow optional compression
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
X-List-Received-Date: Wed, 21 Aug 2013 22:42:01 -0000
Content-Type: multipart/alternative; boundary=f46d0442678e38611d04e47ce120

--f46d0442678e38611d04e47ce120
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Aug 21, 2013 at 11:12 PM, Paul Barker <paul@paulbarker.me.uk> wrote:

> On 20 August 2013 18:11, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > On Fri, Aug 16, 2013 at 1:48 PM, Paul Barker <paul@paulbarker.me.uk>
> wrote:
> >>
> >> +# Compression method to apply to SDIMG after it has been created. May
> be
> >> "none",
> >> +# "gzip", "bzip2" or "xz". Setting this to something other than "none"
> >> will
> >> +# cause SDIMG to be renamed.
> >> +SDIMG_COMPRESSION ?= "none"
> >> +
> >
> >
> > One thing I don't understand here. Where is the SDIMG renamed if for
> example
> > I set by mistake SDIMG_COMPRESSION to something like
> "this-is-a-mistake"? If
> > I check your code this will be ignored as the case won't match any
> keywords.
> >
>
> Setting it to one of the other listed values will cause the SDIMG to
> be re-named. I think the code is as I intended, the documentation
> comment needs to be corrected though.
>
>
You are right. The comment confused me. So only if the COMPRESSION is "gzip",
"bzip2" or "xz" the SDIMG will be renamed. Understood now.

On the other hand, would it make sense to keep both uncompressed and
compressed images?


> Actually I could just have the default be an empty string as anything
> other than the understood compression types is ignored rather than
> treated as an error.
>
>
Indeed. Empty string would work without any issues.


>  > Would you mind adding the variable explanation to README too?
>
> Will do.
>
> I'll give this another spin this weekend.
>

Great. So all we need is a better comment, fix default value and a line or
two in readme.

Another idea. Would be a great feature to have a tool that would configure
the build interactively. Something like:

# configure-build
Want to have SD image compressed compressed? "y/n" y
What compression you want? "x/y/z" x
etc
etc

This script would just edit local.conf. This is because we defined a couple
of variables for this board - i would say pretty many (codecs keys, GPU,
mem etc etc) and it's pretty confusing for people who see this for the
first time. What do you think?

-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--f46d0442678e38611d04e47ce120
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Wed, Aug 21, 2013 at 11:12 PM, Paul Barker <span dir=3D"ltr">&lt=
;<a href=3D"mailto:paul@paulbarker.me.uk" target=3D"_blank">paul@paulbarker=
.me.uk</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div class=3D"im">On 20 August 2013 18:11, Andrei Gherzan =
&lt;<a href=3D"mailto:andrei@gherzan.ro">andrei@gherzan.ro</a>&gt; wrote:<b=
r>


&gt; On Fri, Aug 16, 2013 at 1:48 PM, Paul Barker &lt;<a href=3D"mailto:pau=
l@paulbarker.me.uk">paul@paulbarker.me.uk</a>&gt; wrote:<br>
&gt;&gt;<br>
</div><div class=3D"im">&gt;&gt; +# Compression method to apply to SDIMG af=
ter it has been created. May be<br>
&gt;&gt; &quot;none&quot;,<br>
&gt;&gt; +# &quot;gzip&quot;, &quot;bzip2&quot; or &quot;xz&quot;. Setting =
this to something other than &quot;none&quot;<br>
&gt;&gt; will<br>
&gt;&gt; +# cause SDIMG to be renamed.<br>
&gt;&gt; +SDIMG_COMPRESSION ?=3D &quot;none&quot;<br>
&gt;&gt; +<br>
&gt;<br>
&gt;<br>
&gt; One thing I don&#39;t understand here. Where is the SDIMG renamed if f=
or example<br>
&gt; I set by mistake SDIMG_COMPRESSION to something like &quot;this-is-a-m=
istake&quot;? If<br>
&gt; I check your code this will be ignored as the case won&#39;t match any=
 keywords.<br>
&gt;<br>
<br>
</div>Setting it to one of the other listed values will cause the SDIMG to<=
br>
be re-named. I think the code is as I intended, the documentation<br>
comment needs to be corrected though.<br>
<br></blockquote><div><br></div><div><div>You are right. The comment confus=
ed me. So only if the COMPRESSION is=A0<span style=3D"color:rgb(80,0,80)">&=
quot;gzip&quot;, &quot;bzip2&quot; or &quot;xz&quot; the SDIMG will be rena=
med. Understood now.</span></div>

<div><span style=3D"color:rgb(80,0,80)"><br></span></div><div><span style=
=3D"color:rgb(80,0,80)">On the other hand, would it make sense to keep both=
 uncompressed and compressed images?</span></div></div><div>=A0</div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-w=
idth:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding=
-left:1ex">


Actually I could just have the default be an empty string as anything<br>
other than the understood compression types is ignored rather than<br>
treated as an error.<br>
<div class=3D"im"><br></div></blockquote><div>=A0</div><div style>Indeed. E=
mpty string would work without any issues.</div><div>=A0</div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1p=
x;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1=
ex">

<div class=3D"im">
&gt; Would you mind adding the variable explanation to README too?<br>
<br>
</div>Will do.<br>
<br>
I&#39;ll give this another spin this weekend.<br></blockquote><div><br></di=
v><div style>Great. So all we need is a better comment, fix default value a=
nd a line or two in readme.</div><div style><span style=3D"color:rgb(80,0,8=
0)"><br>

</span></div><div style><font color=3D"#500050">Another idea. Would be a gr=
eat feature to have a tool that would configure the build interactively. So=
mething like:</font></div><div style><font color=3D"#500050"><br></font></d=
iv>

<div style><font color=3D"#500050"># configure-build</font></div><div style=
><font color=3D"#500050">Want to have SD image compressed compressed? &quot=
;y/n&quot; y</font></div><div style><font color=3D"#500050">What compressio=
n you want? &quot;x/y/z&quot; x</font></div>

<div style><font color=3D"#500050">etc</font></div><div style><font color=
=3D"#500050">etc</font></div><div style><font color=3D"#500050"><br></font>=
</div><div style><font color=3D"#500050">This script would just edit local.=
conf.=A0</font><span style=3D"color:rgb(80,0,80)">This is because we define=
d a couple of variables for this board - i would say pretty many (codecs ke=
ys, GPU, mem etc etc) and it&#39;s pretty confusing for people who see this=
 for the first time.=A0</span><span style=3D"color:rgb(80,0,80)">What do yo=
u think?</span></div>

</div><div><br></div>-- <br><div dir=3D"ltr"><div style=3D"text-align:cente=
r"></div><div style=3D"text-align:center"><div align=3D"left" style=3D"font=
-family:&#39;Times New Roman&#39;;font-size:medium"><b style=3D"color:rgb(5=
1,51,51);font-family:Arial;font-size:small;text-align:center">Andrei Gherza=
n</b><font face=3D"Arial" color=3D"#333333" size=3D"-1"><br>

</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.744.478.41=
4 | =A0f: +40.31.816.28.12</font><br></div></div></div>
</div></div>

--f46d0442678e38611d04e47ce120--
