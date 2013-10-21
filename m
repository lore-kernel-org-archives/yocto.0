Return-Path: <vidal.develone@gmail.com>
Received: from mail-qe0-f47.google.com (mail-qe0-f47.google.com
	[209.85.128.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D1FCE0172F
	for <yocto@yoctoproject.org>; Mon, 21 Oct 2013 06:09:25 -0700 (PDT)
Received: by mail-qe0-f47.google.com with SMTP id b4so3696232qen.6
	for <yocto@yoctoproject.org>; Mon, 21 Oct 2013 06:09:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=M9mC8U1MXPIQ/0qaAPN4envzuy6VVS5pyRqJJqNQqmQ=;
	b=cATcq/D8lq+Jm0lQ04+W6c0Qo79dIYCwqEl8euGbjdgPGVXa1m/KnggHDyrYCsacLv
	JKDtErR9mQiRKhkp5d45zgItleUHt7/X8HcfwjYgCp8M84qrSWB9V/qIgLsJ25pQLwU/
	89zIALZCqA6RxiJ0FOfriqcIpEk+uLq9PqbLeIgBQeH0ccQL9yHX4UpEpAUVEbRjUw33
	Aag28Ir1JoIGRvEyDeuRYmbqIokyzkzCyoElBpz3MhylyvYTZFOv34zouxa8cfeEHe1O
	vg5mmGbdk4NIdtWVnh90hBpQUyry/iBBGT3NFdqBc+h5FEZSGmgPxdDYKI+bqeSv2PQ4
	RpTw==
MIME-Version: 1.0
X-Received: by 10.49.116.19 with SMTP id js19mr22615342qeb.34.1382360964714;
	Mon, 21 Oct 2013 06:09:24 -0700 (PDT)
Received: by 10.96.26.37 with HTTP; Mon, 21 Oct 2013 06:09:24 -0700 (PDT)
In-Reply-To: <5263DD06.1050309@balister.org>
References: <CANwz6nzVxrMqvM19MfT8AFD0NvWCuYDitSQTJon-YHMZ_8d01Q@mail.gmail.com>
	<5263DD06.1050309@balister.org>
Date: Mon, 21 Oct 2013 07:09:24 -0600
Message-ID: <CANwz6nw=OvJHiXb6cf8bGCwZ0+4VyZSXFV0nmMOttdMhXBaxQg@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: Philip Balister <philip@balister.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: threads set in local.conf
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
X-List-Received-Date: Mon, 21 Oct 2013 13:09:26 -0000
Content-Type: multipart/alternative; boundary=047d7b62221a40f36d04e93ffe40

--047d7b62221a40f36d04e93ffe40
Content-Type: text/plain; charset=ISO-8859-1

Hello All,
As Philip suggested adding more RAM helps
The system model name: AMD Phenom(tm) II X6 1090T Processor w/16GB of RAM.
In 1 hour it ran 4391 of 8016 tasks or 54% This was a
core-image-sato-sdk-ex (my receipe) with gnuplot, gsl, boost,
qt-mobility-x11, java, and gnuradio.The full build  was taking close to 4
hours with 6 threads and 8GB of RAM.
Regards


On Sun, Oct 20, 2013 at 7:39 AM, Philip Balister <philip@balister.org>wrote:

> On 10/19/2013 08:59 AM, Edward Vidal wrote:
> > Hello all,
> > Is this loading what others on a similar system are experiencing (see
> > below)?
> >
> > I first was setting my threads to 6 on a AMD 6 core system.
> > In the mega-manual i found
> > 5.4. Configuring the local.conf File
> >
> > Briefly, set BB_NUMBER_THREADS and PARALLEL_MAKE to twice your host
> > processor's number of cores.
> >
> > I am creating an image with 8017 tasks for the beagleboard.
> > I set threads to 12 and now the build is proceeding much more rapid than
> > when threads were set to 6.  In 30 minutes the build has completed 2435
> > tasks or about 25%.
> > I am seeing a fairly high load 35. 30. 24 and the fan is been at high
> speed
> > since the build  started.  The system has 8G of memory and now it is
> using
> > and it was using about  13800 of swap space.
> >
> > Any and all help will be appreciated.
>
> I'm not sure what problem you are trying to solve here.
>
> I'd suggest adding more RAM though, that will ease the disk usage.
>
> Philip
>
>
> > Thanks
> >
> >
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--047d7b62221a40f36d04e93ffe40
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hello All,<br></div>As Philip suggeste=
d adding more RAM helps <br></div>The system model name: AMD Phenom(tm) II =
X6 1090T Processor w/16GB of RAM.<br></div>In 1 hour it ran 4391 of 8016 ta=
sks or 54% This was a core-image-sato-sdk-ex (my receipe) with gnuplot, gsl=
, boost, qt-mobility-x11, java, and gnuradio.The full build=A0 was taking c=
lose to 4 hours with 6 threads and 8GB of RAM.<br>
</div>Regards<br></div><div class=3D"gmail_extra"><br><br><div class=3D"gma=
il_quote">On Sun, Oct 20, 2013 at 7:39 AM, Philip Balister <span dir=3D"ltr=
">&lt;<a href=3D"mailto:philip@balister.org" target=3D"_blank">philip@balis=
ter.org</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On 1=
0/19/2013 08:59 AM, Edward Vidal wrote:<br>
&gt; Hello all,<br>
&gt; Is this loading what others on a similar system are experiencing (see<=
br>
&gt; below)?<br>
&gt;<br>
&gt; I first was setting my threads to 6 on a AMD 6 core system.<br>
&gt; In the mega-manual i found<br>
&gt; 5.4. Configuring the local.conf File<br>
&gt;<br>
&gt; Briefly, set BB_NUMBER_THREADS and PARALLEL_MAKE to twice your host<br=
>
&gt; processor&#39;s number of cores.<br>
&gt;<br>
&gt; I am creating an image with 8017 tasks for the beagleboard.<br>
&gt; I set threads to 12 and now the build is proceeding much more rapid th=
an<br>
&gt; when threads were set to 6. =A0In 30 minutes the build has completed 2=
435<br>
&gt; tasks or about 25%.<br>
&gt; I am seeing a fairly high load 35. 30. 24 and the fan is been at high =
speed<br>
&gt; since the build =A0started. =A0The system has 8G of memory and now it =
is using<br>
&gt; and it was using about =A013800 of swap space.<br>
&gt;<br>
&gt; Any and all help will be appreciated.<br>
<br>
</div></div>I&#39;m not sure what problem you are trying to solve here.<br>
<br>
I&#39;d suggest adding more RAM though, that will ease the disk usage.<br>
<br>
Philip<br>
<br>
<br>
&gt; Thanks<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</blockquote></div><br></div>

--047d7b62221a40f36d04e93ffe40--
