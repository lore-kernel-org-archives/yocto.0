Return-Path: <jfabernathy@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE743E01206
	for <yocto@yoctoproject.org>; Tue, 22 May 2012 08:15:12 -0700 (PDT)
Received: by obbef5 with SMTP id ef5so14154479obb.35
	for <yocto@yoctoproject.org>; Tue, 22 May 2012 08:15:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=2d4EfsjNKeWOw5ZT52FYSOvQULI9MCGvv3iMgse0d9Q=;
	b=QLjNWH1wHWZt1AY83THM0fVOG08mudKT+DaIEvJHnNQIwSb5+DCT4ZmBwFDdwmBciE
	cMXBoJbUGJKg+xZF1p+CKLAk5NSXOG3Ax4geXUAp+3KS9a6Rjmq7jLWbUHdYISwzLkQ9
	sxCUC2iJhi0Ib3x2BuuQSVGxIcEjim8Id5CPO3laXx66WydIRaPQeAfsdkbeuQMfQMMz
	Auy2zH2K/FWmdhC3iGH3EGTlAQGQopvfTsyZspY/bTliTIUXWfXlMRSn71eWzPZ/Mhvf
	BC+KGaTWP5RE/u5fYQLinuEqrLFfjaczIYzLgKEmvNC/SQFrjFqooacDyjYtGGzo6uXq
	Vqzw==
MIME-Version: 1.0
Received: by 10.182.36.102 with SMTP id p6mr22720935obj.77.1337699712385; Tue,
	22 May 2012 08:15:12 -0700 (PDT)
Received: by 10.76.151.198 with HTTP; Tue, 22 May 2012 08:15:12 -0700 (PDT)
In-Reply-To: <CADzUK1JN25KdSu3QbjFO1ike1ZQ=82Nk8m_F2VrgZpaS8eG=uA@mail.gmail.com>
References: <4FBB7BDE.4090008@gmail.com>
	<CADzUK1JN25KdSu3QbjFO1ike1ZQ=82Nk8m_F2VrgZpaS8eG=uA@mail.gmail.com>
Date: Tue, 22 May 2012 11:15:12 -0400
Message-ID: <CANFv2Ek7Fim1tDVQcxu99GL0jriOFo=_zHCz-b7BUACXfjwyng@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: Autif Khan <autif.mlist@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: runqemu qemux86
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
X-List-Received-Date: Tue, 22 May 2012 15:15:13 -0000
Content-Type: multipart/alternative; boundary=f46d044517952c426004c0a17cc7

--f46d044517952c426004c0a17cc7
Content-Type: text/plain; charset=ISO-8859-1

On Tue, May 22, 2012 at 10:45 AM, Autif Khan <autif.mlist@gmail.com> wrote:

>  On Tue, May 22, 2012 at 7:43 AM, jfabernathy <jfabernathy@gmail.com>
> wrote:
> > when testing an image using runqemu qemux86, can you get networking to
> > work?? mine comes up disabled.  I want to test an application that
> requires
> > Internet access.
>
> Yes, I am able to get networking to work out of the box (bitbake
> core-image-sato, etc.) Internetworking does not work out of the box.
>
> This is accomplished over tun/tap devices - I do not know much about
> these virtual networking devices - they have never failed for me :-)
>
> The IP address of the emulated machine is 192.168.7.2 - The IP address
> of host machine is 192.168.7.1
>
> You can not (out of the box) communicate with machines other than the
> host machine - so that would included internet etc.
>
> So, if you have an ssh server or a web-server running on the host
> machine - you can ssh to the host machine or browse a webpage using
> the browser. Alternatively, you can run a proxy server on the build
> machine and use it to get to the internet.
>
> You can run ifconfig to see if the network is configured properly on
> the emulated machine in the terminal. It should show 192.168.7.2 - if
> you do not see this - you do not have networking working.
>

I can see the tap0 interface on my host at 192.168.7.1 by using ifconfig.
I can also see the eth0 on the qemu machine at 192.168.7.2

However, my host has an ip of 10.0.1.54 with a AP gateway at 10.0.1.1.

Somehow I need to connect the networks and I'm not sure exactly how to do
that so that DNS servers get used and the traffic all flows.

Jim A

--f46d044517952c426004c0a17cc7
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br>
<div class=3D"gmail_quote">On Tue, May 22, 2012 at 10:45 AM, Autif Khan <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:autif.mlist@gmail.com" target=3D"_blan=
k">autif.mlist@gmail.com</a>&gt;</span> wrote:<br>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">
<div class=3D"HOEnZb">
<div class=3D"h5">On Tue, May 22, 2012 at 7:43 AM, jfabernathy &lt;<a href=
=3D"mailto:jfabernathy@gmail.com">jfabernathy@gmail.com</a>&gt; wrote:<br>&=
gt; when testing an image using runqemu qemux86, can you get networking to<=
br>
&gt; work?? mine comes up disabled. =A0I want to test an application that r=
equires<br>&gt; Internet access.<br><br></div></div>Yes, I am able to get n=
etworking to work out of the box (bitbake<br>core-image-sato, etc.) Interne=
tworking does not work out of the box.<br>
<br>This is accomplished over tun/tap devices - I do not know much about<br=
>these virtual networking devices - they have never failed for me :-)<br><b=
r>The IP address of the emulated machine is 192.168.7.2 - The IP address<br=
>
of host machine is 192.168.7.1<br><br>You can not (out of the box) communic=
ate with machines other than the<br>host machine - so that would included i=
nternet etc.<br><br>So, if you have an ssh server or a web-server running o=
n the host<br>
machine - you can ssh to the host machine or browse a webpage using<br>the =
browser. Alternatively, you can run a proxy server on the build<br>machine =
and use it to get to the internet.<br><br>You can run ifconfig to see if th=
e network is configured properly on<br>
the emulated machine in the terminal. It should show 192.168.7.2 - if<br>yo=
u do not see this - you do not have networking working.<br></blockquote></d=
iv>
<div><br>I can see the tap0 interface on my host at 192.168.7.1 by using if=
config.</div>
<div>I can also see the eth0 on the qemu machine at 192.168.7.2</div>
<div>=A0</div>
<div>However, my host has an ip of 10.0.1.54 with a AP gateway at 10.0.1.1.=
</div>
<div>=A0</div>
<div>Somehow I need to connect the networks and I&#39;m not sure exactly ho=
w to do that so that DNS servers get used and the traffic all flows.</div>
<div>=A0</div>
<div>Jim A</div>
<div>=A0</div>

--f46d044517952c426004c0a17cc7--
