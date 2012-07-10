Return-Path: <andrei@gherzan.ro>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD60BE00280
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2012 02:45:49 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so12491097ghb.35
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2012 02:45:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=nk0E/PNSrKtBwQ2RSy7wXQpU8iTyzRo8VDVOB5vvHJ0=;
	b=ENB2xBI28SGyRdFJMYNpgS911NZlHnwhlDyH8loa0G4VvyjYkuPeAIogZMprGchDgD
	7U8BZhjEmw3OXY8/UdkEX/zGBKBGhqifc0OiOcs7NY7Q8j8QMWIIw5OFVfMfUFYxAXDe
	dVV//9icXOITYFGjgeeNPTLw5ymX+yQzQ8iWjadjxM1mpNLMoo4eXwUJf7KZkM/sYv/M
	4ZfjEvwF14IG/ceBMgYRFCw7FugCAbpZVKiPMukrZEKoo/M02NQeoPzHoqE5rqkZyuYZ
	qKZ8Bp9+jRaFSDC65AaaorqyKwAzK3BTKXvRCe4dMqGDRdeORXVL3E/CuOBrBDoABDcG
	v85Q==
Received: by 10.42.244.6 with SMTP id lo6mr22146085icb.8.1341913548377; Tue,
	10 Jul 2012 02:45:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.98.162 with HTTP; Tue, 10 Jul 2012 02:45:28 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <2286431.Uqbs7UEu3k@helios>
References: <CAE8H0+Wurdc2aHZZ=MEgW1UioSfbnR7jzKQ__ZKfS=CyjqXmoA@mail.gmail.com>
	<CAE8H0+X2QfEQ9jT8LOWHQPnMq5RMpLM=naXGSnPdAmHngwAdjA@mail.gmail.com>
	<BFDF841C-B14F-4690-B53B-996F47C9CC74@keylevel.com>
	<2286431.Uqbs7UEu3k@helios>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 10 Jul 2012 12:45:28 +0300
Message-ID: <CAK18fxFkZAsyL1+DRPyYzMGy5RX5V9p4RfLgJQWxjaBkhraxfw@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Gm-Message-State: ALoCoQlp2zKdOlpLXxQwd28YdnKjHlfIaSCd6ZTYaAglJPkdCN8WwnD/pgY7f3a9BS+wiFqvyAA/
Cc: yocto@yoctoproject.org
Subject: Re: Raspberry Pi mailing list?
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
X-List-Received-Date: Tue, 10 Jul 2012 09:45:49 -0000
Content-Type: multipart/alternative; boundary=90e6ba6e85a65ecf8904c47698ac

--90e6ba6e85a65ecf8904c47698ac
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Jul 10, 2012 at 12:35 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Monday 09 July 2012 20:21:32 Chris Tapp wrote:
> > > The first sign of trouble was an error message saying there were no
> > > recipes for netbase-4.7 (for which meta-raspberrypi had a .bbappend).
> > > Noting that meta was at netbase-5.0 and that the .bbappend at a glance
> > > did not look to be version specific, I renamed the meta-raspberrypi
> > > recipe and directory to netbase-5.0, and the build was off and
> > > running.
> >
> > Sounds reasonable. 4.7 is the version that's in 'Denzil'.
>
> FYI Andrei has now created a denzil branch in meta-raspberrypi which will
> match up with denzil in OE-Core/Poky. I'm not sure if the problem is still
> there but there may still be an issue building a kernel for the RPi with
> the
> toolchain in master - Chris and I have been sticking to denzil for the
> moment
> for that reason.
>
>
Both should work now. Denzil and master.

@g

--90e6ba6e85a65ecf8904c47698ac
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote">On Tue, Jul 10, 2012 at 12:35 PM, Paul Eggleton =
<span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" targ=
et=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex">

On Monday 09 July 2012 20:21:32 Chris Tapp wrote:<br>
&gt; &gt; The first sign of trouble was an error message saying there were =
no<br>
&gt; &gt; recipes for netbase-4.7 (for which meta-raspberrypi had a .bbappe=
nd).<br>
&gt; &gt; Noting that meta was at netbase-5.0 and that the .bbappend at a g=
lance<br>
&gt; &gt; did not look to be version specific, I renamed the meta-raspberry=
pi<br>
&gt; &gt; recipe and directory to netbase-5.0, and the build was off and<br=
>
&gt; &gt; running.<br>
&gt;<br>
&gt; Sounds reasonable. 4.7 is the version that&#39;s in &#39;Denzil&#39;.<=
br>
<br>
FYI Andrei has now created a denzil branch in meta-raspberrypi which will<b=
r>
match up with denzil in OE-Core/Poky. I&#39;m not sure if the problem is st=
ill<br>
there but there may still be an issue building a kernel for the RPi with th=
e<br>
toolchain in master - Chris and I have been sticking to denzil for the mome=
nt<br>
for that reason.<br>
<br></blockquote><div><br></div><div>Both should work now. Denzil and maste=
r.=A0</div><div><br></div><div>@g</div></div>

--90e6ba6e85a65ecf8904c47698ac--
