Return-Path: <fede.vitali@gmail.com>
Received: from mail-ob0-f180.google.com (mail-ob0-f180.google.com
	[209.85.214.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 633E8E00C1F
	for <yocto@yoctoproject.org>; Fri, 18 Apr 2014 01:28:54 -0700 (PDT)
Received: by mail-ob0-f180.google.com with SMTP id wm4so1541480obc.39
	for <yocto@yoctoproject.org>; Fri, 18 Apr 2014 01:28:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=PPkHBBbMgBjzEIVa5iStUkoKWEUqcpwtnX1ZFeqjL7k=;
	b=vfD9iNNT20YqAK7HlIsjs1HLLTEGyq9GWfJdgZo5/CYClLNqqNP03o/0hnigiYPZYy
	kk5yTe/77orvVGB7G18RUECm5u7JtKoGFVBm1JAZNJyVvQH2zl+vtTWOPqyyHIDurW20
	bQAVJMFeWVwULC3h42heT9kSt5KZih+0W0Tn2wdn+JnI3S8R7h4bmXmIU4ryhNQM+j7J
	i4Fw7DPNisGatlyqIaKtLBrwQSwJxSjIbrziy50YgYy6u3GrQLlTjh+h/mBruuO4Vr+E
	QmRE/lbk5sCl4+/eeCKGVhqmQGN0IzkrH9QXTUsxqzUh3mw/FdIc3kmpeAxJF2Clkmw9
	RjCA==
MIME-Version: 1.0
X-Received: by 10.60.125.195 with SMTP id ms3mr16075911oeb.3.1397809733968;
	Fri, 18 Apr 2014 01:28:53 -0700 (PDT)
Received: by 10.76.101.112 with HTTP; Fri, 18 Apr 2014 01:28:53 -0700 (PDT)
In-Reply-To: <CA+gsK-ohM-Tg47h6gZmRRn3qmpFrBBVROTw5RHBS1fvgRdD88g@mail.gmail.com>
References: <CAD78y+6HxrYWCyVh6xbGS=4MXB1WSBzQLSpBo2kKakJ8TZgghA@mail.gmail.com>
	<CA+gsK-pDrPezFHvKKefiAFb+_YXnbadG2KkB7mQEC3JGMstUBg@mail.gmail.com>
	<CAD78y+6zPm-NkcQr3v0dFem9Q6d63SLX9hc2heVnrwmQLNKxCA@mail.gmail.com>
	<CA+gsK-ohM-Tg47h6gZmRRn3qmpFrBBVROTw5RHBS1fvgRdD88g@mail.gmail.com>
Date: Fri, 18 Apr 2014 10:28:53 +0200
Message-ID: <CAD78y+77SK9WzuUUSDcNVp+pkN46Q9SiM8OQkDQVMCGAkd4GPQ@mail.gmail.com>
From: Federico Vitali <fede.vitali@gmail.com>
To: Rudolf Streif <rstreif@linuxfoundation.org>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Question about remote debugging via gdbserver
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
X-List-Received-Date: Fri, 18 Apr 2014 08:28:55 -0000
Content-Type: multipart/alternative; boundary=047d7b33cf28a8292e04f74cf02a

--047d7b33cf28a8292e04f74cf02a
Content-Type: text/plain; charset=UTF-8

Goodmorning Rudolf,

thank you again for your time.

I have not explained my goal very well, so I try to explain with a specific
example.
I'm working with gstreamer for a project I'm following for my company.
Let's take
the gstreamer "hello world" application, here is the source code:

http://gstreamer.freedesktop.org/data/doc/gstreamer/head/manual/html/chapter-helloworld.html#section-helloworld

I've succesfully built and deployed the application. I can debug and follow
the code of the application line
by line with eclipse. Now, if I want to enter into a function of gstreamer
libs (e.g. gst_pipeline_new),
what should I have to do?

Federico





2014-04-16 21:22 GMT+02:00 Rudolf Streif <rstreif@linuxfoundation.org>:

> Hi Federico,
>
> I knew that I can add source paths to the debugger.
>>
> Ok, if that's not the issue what exactly is not working for you?
>
>
>> I see in your debug profiles that you have some binaries eg "ls". Did you
>> import that binary from sysrootfs on your build machine? Can you please
>> tell me the steps before adding the path?
>>
> No, that's actually sample code of a simple ls application that I use for
> teaching a class on Linux APIs.
>
> Cheers,
> Rudi
>

--047d7b33cf28a8292e04f74cf02a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Goodmorning Rudolf,<div><br></div><div>thank you again for=
 your time.<br><div><br></div><div>I have not explained my goal very well, =
so I try to explain with a specific example.</div><div>I&#39;m working with=
 gstreamer for a project I&#39;m following for my company. Let&#39;s take</=
div>
<div>the gstreamer &quot;hello world&quot; application, here is the source =
code:</div><div><br></div><div><a href=3D"http://gstreamer.freedesktop.org/=
data/doc/gstreamer/head/manual/html/chapter-helloworld.html#section-hellowo=
rld">http://gstreamer.freedesktop.org/data/doc/gstreamer/head/manual/html/c=
hapter-helloworld.html#section-helloworld</a><br>
</div><div><br></div><div>I&#39;ve succesfully built and deployed the appli=
cation. I can debug and follow the code of the application line</div><div>b=
y line with eclipse. Now, if I want to enter into a function of gstreamer l=
ibs (e.g.=C2=A0<span style=3D"color:rgb(0,0,0)">gst_pipeline_new),</span></=
div>
<div><span style=3D"color:rgb(0,0,0)">what should I have to do?</span></div=
><div><span style=3D"color:rgb(0,0,0)"><br></span></div><div><font color=3D=
"#000000">Federico</font></div><div><br></div><div><br></div><div><br></div=
></div>
</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">2014-04=
-16 21:22 GMT+02:00 Rudolf Streif <span dir=3D"ltr">&lt;<a href=3D"mailto:r=
streif@linuxfoundation.org" target=3D"_blank">rstreif@linuxfoundation.org</=
a>&gt;</span>:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi Federico,<div><br></div>=
<div class=3D"gmail_extra"><div class=3D"gmail_quote"><div class=3D""><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex">
<p>I knew that I can add source paths to the debugger.<br>

</p></blockquote></div><div>Ok, if that&#39;s not the issue what exactly is=
 not working for you?</div><div class=3D""><div>=C2=A0</div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">
<p>I see in your debug profiles that you have some binaries eg &quot;ls&quo=
t;. Did you import that binary from sysrootfs on your build machine? Can yo=
u please tell me the steps before adding the path?</p>
</blockquote></div><div>No, that&#39;s actually sample code of a simple ls =
application that I use for teaching a class on Linux APIs.</div><div><br></=
div><div>Cheers,</div><div>Rudi</div></div>
</div></div>
</blockquote></div><br></div>

--047d7b33cf28a8292e04f74cf02a--
