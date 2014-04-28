Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-lb0-f173.google.com (mail-lb0-f173.google.com
	[209.85.217.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9801E00B70
	for <yocto@yoctoproject.org>; Mon, 28 Apr 2014 11:30:35 -0700 (PDT)
Received: by mail-lb0-f173.google.com with SMTP id l4so5359080lbv.32
	for <yocto@yoctoproject.org>; Mon, 28 Apr 2014 11:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=DOLTQOu+vcIRfYel3IV0wiD90eRecT/4+rkswCDyUDs=;
	b=Q1PJdvl7/O5Zog+X+9tgcOWS7rtPKAxUXJsXWuedpdyjT0+GcrPt2kFulnpFk/sZGP
	hq06jy84LTpQaP45Q5fkG6v0dgzyIANqb88H9S9IyvJMitmNuhzsfn/kCyV4YFRtTk7B
	LMwGBpN3YxfwUnIGAGi1Q15Q+A6fKmM0I3lBM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=DOLTQOu+vcIRfYel3IV0wiD90eRecT/4+rkswCDyUDs=;
	b=FaOArFKsgCH96jQo80MxtZLUqK0ePBgl5AkU1QFYffwKDhFBsI2ILOl6BPOt9VHRuq
	/U1kE4KqjL7O8WQm9pmU5L/2nhwII/4OpuoPeeezm871TSx1J1fr+rS4JfgfAcHGTUBG
	T6SXd27xEQ3KgtSIYjM1L1/saCecCy0sxSBpcONP6DWZ1PKgFyp7LYZJqNRccGmxS8i2
	yxheQ83dWaSSk5Ro2nr4829bznkzKS4k3psgPWgqDU6MjT1uXuLuR9qIi3zTp7upwtjA
	jeRwp1NqtvAwDSlJ5Am97RdfquIUFr5iQwknxEz+YVcOB/I1wCsiKcpwt7i+AfZaDH9R
	OnOQ==
X-Gm-Message-State: ALoCoQmn7qux0SfM6Ek5ubTvQYOrQD1rrNLEy08inongpJuKVBv317pZ+lEQQoGoSzFEPkDWVjve
MIME-Version: 1.0
X-Received: by 10.112.46.225 with SMTP id y1mr19187797lbm.12.1398709834333;
	Mon, 28 Apr 2014 11:30:34 -0700 (PDT)
Received: by 10.112.45.65 with HTTP; Mon, 28 Apr 2014 11:30:34 -0700 (PDT)
In-Reply-To: <CAD78y+77SK9WzuUUSDcNVp+pkN46Q9SiM8OQkDQVMCGAkd4GPQ@mail.gmail.com>
References: <CAD78y+6HxrYWCyVh6xbGS=4MXB1WSBzQLSpBo2kKakJ8TZgghA@mail.gmail.com>
	<CA+gsK-pDrPezFHvKKefiAFb+_YXnbadG2KkB7mQEC3JGMstUBg@mail.gmail.com>
	<CAD78y+6zPm-NkcQr3v0dFem9Q6d63SLX9hc2heVnrwmQLNKxCA@mail.gmail.com>
	<CA+gsK-ohM-Tg47h6gZmRRn3qmpFrBBVROTw5RHBS1fvgRdD88g@mail.gmail.com>
	<CAD78y+77SK9WzuUUSDcNVp+pkN46Q9SiM8OQkDQVMCGAkd4GPQ@mail.gmail.com>
Date: Mon, 28 Apr 2014 11:30:34 -0700
Message-ID: <CA+gsK-pd3LS_y2a6L662dEww55UmRsgUX+=NepR7LpKbHxKWVw@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Federico Vitali <fede.vitali@gmail.com>
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
X-List-Received-Date: Mon, 28 Apr 2014 18:30:37 -0000
Content-Type: multipart/alternative; boundary=001a11349474d1d54204f81e82af

--001a11349474d1d54204f81e82af
Content-Type: text/plain; charset=ISO-8859-1

Hi Frederico,

Sorry for the delayed response.

If you want to step into code for which the debugger does not have the
source info Eclipse should actually tell you. But as a prerequisite you
will need to install the dev and debug packages for gstreamer (and
eventually others) to the root file system you are using on your
development host. For that you need to tell YP to include them which you do
by adding dev-pkg and dbg-pkg to EXTRA_IMAGE_INSTALL in the conf/local.conf
file of your build environment.

Rudi


On Fri, Apr 18, 2014 at 1:28 AM, Federico Vitali <fede.vitali@gmail.com>wrote:

> Goodmorning Rudolf,
>
> thank you again for your time.
>
> I have not explained my goal very well, so I try to explain with a
> specific example.
> I'm working with gstreamer for a project I'm following for my company.
> Let's take
> the gstreamer "hello world" application, here is the source code:
>
>
> http://gstreamer.freedesktop.org/data/doc/gstreamer/head/manual/html/chapter-helloworld.html#section-helloworld
>
> I've succesfully built and deployed the application. I can debug and
> follow the code of the application line
> by line with eclipse. Now, if I want to enter into a function of gstreamer
> libs (e.g. gst_pipeline_new),
> what should I have to do?
>
> Federico
>
>
>
>
>
> 2014-04-16 21:22 GMT+02:00 Rudolf Streif <rstreif@linuxfoundation.org>:
>
> Hi Federico,
>>
>> I knew that I can add source paths to the debugger.
>>>
>> Ok, if that's not the issue what exactly is not working for you?
>>
>>
>>> I see in your debug profiles that you have some binaries eg "ls". Did
>>> you import that binary from sysrootfs on your build machine? Can you please
>>> tell me the steps before adding the path?
>>>
>> No, that's actually sample code of a simple ls application that I use for
>> teaching a class on Linux APIs.
>>
>> Cheers,
>> Rudi
>>
>
>

--001a11349474d1d54204f81e82af
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Frederico,<div><br></div><div>Sorry for the delayed res=
ponse.</div><div><br></div><div>If you want to step into code for which the=
 debugger does not have the source info Eclipse should actually tell you. B=
ut as a prerequisite you will need to install the dev and debug packages fo=
r gstreamer (and eventually others) to the root file system you are using o=
n your development host. For that you need to tell YP to include them which=
 you do by adding dev-pkg and dbg-pkg to EXTRA_IMAGE_INSTALL in the conf/lo=
cal.conf file of your build environment.</div>
<div><br></div><div>Rudi</div><div class=3D"gmail_extra"><br><br><div class=
=3D"gmail_quote">On Fri, Apr 18, 2014 at 1:28 AM, Federico Vitali <span dir=
=3D"ltr">&lt;<a href=3D"mailto:fede.vitali@gmail.com" target=3D"_blank">fed=
e.vitali@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Goodmorning Rudolf,<div><br=
></div><div>thank you again for your time.<br><div><br></div><div>I have no=
t explained my goal very well, so I try to explain with a specific example.=
</div>
<div>I&#39;m working with gstreamer for a project I&#39;m following for my =
company. Let&#39;s take</div>
<div>the gstreamer &quot;hello world&quot; application, here is the source =
code:</div><div><br></div><div><a href=3D"http://gstreamer.freedesktop.org/=
data/doc/gstreamer/head/manual/html/chapter-helloworld.html#section-hellowo=
rld" target=3D"_blank">http://gstreamer.freedesktop.org/data/doc/gstreamer/=
head/manual/html/chapter-helloworld.html#section-helloworld</a><br>

</div><div><br></div><div>I&#39;ve succesfully built and deployed the appli=
cation. I can debug and follow the code of the application line</div><div>b=
y line with eclipse. Now, if I want to enter into a function of gstreamer l=
ibs (e.g.=A0<span style>gst_pipeline_new),</span></div>

<div><span style>what should I have to do?</span></div><div><span style><br=
></span></div><div><font color=3D"#000000">Federico</font></div><div><br></=
div><div><br></div><div><br></div></div>
</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">2014-04=
-16 21:22 GMT+02:00 Rudolf Streif <span dir=3D"ltr">&lt;<a href=3D"mailto:r=
streif@linuxfoundation.org" target=3D"_blank">rstreif@linuxfoundation.org</=
a>&gt;</span>:<div>
<div class=3D"h5"><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi Federico,<div><br></div>=
<div class=3D"gmail_extra"><div class=3D"gmail_quote"><div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">

<p>I knew that I can add source paths to the debugger.<br>

</p></blockquote></div><div>Ok, if that&#39;s not the issue what exactly is=
 not working for you?</div><div><div>=A0</div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">

<p>I see in your debug profiles that you have some binaries eg &quot;ls&quo=
t;. Did you import that binary from sysrootfs on your build machine? Can yo=
u please tell me the steps before adding the path?</p>
</blockquote></div><div>No, that&#39;s actually sample code of a simple ls =
application that I use for teaching a class on Linux APIs.</div><div><br></=
div><div>Cheers,</div><div>Rudi</div></div>
</div></div>
</blockquote></div></div></div><br></div>
</blockquote></div><br><br clear=3D"all"><div><br></div><div dir=3D"ltr"><d=
iv><font face=3D"garamond, serif"><span style=3D"border-collapse:collapse;c=
olor:rgb(102,102,102);font-family:arial,sans-serif;font-size:13px"><br></sp=
an></font></div>
</div>
</div></div>

--001a11349474d1d54204f81e82af--
