Return-Path: <ian_welch@trimble.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AEF35E009A0; Fri,  2 Jun 2017 15:52:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.54 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90FE3E0082A
	for <yocto@yoctoproject.org>; Fri,  2 Jun 2017 15:52:26 -0700 (PDT)
Received: by mail-oi0-f54.google.com with SMTP id h4so108410423oib.3
	for <yocto@yoctoproject.org>; Fri, 02 Jun 2017 15:52:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=trimble-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=dY4zh+uzdiJrCA/dMJUSskcDSvI25JGgGD3oAVxw91Q=;
	b=Vi9iFN+HDkucBir9bZ1WrdiTXaekaZVZ2A1+/wc1Ll1OHhQXVkT+tyhlyko2BUolrN
	oWWk6z9SBfSiZV5ecj4ucllp7yblrJftepyOGBf0c6tVAidIflfZgw+Wf+IWwlZl9rZx
	Kgi37xqb4HU8ciyrwT4JTl5/x+3TCBmCoOThOb8w7+swK7LpZx/+1XPXq6SXf6nKvX4e
	w8dQb18PHKeVgHwYAYI8//uyhv6NxwGM3k2f75jlq+kj5UNPij6FQLMnc2FbsZQMvwrw
	fZnEVb5/hY3DoPOpkSP1rB5tKTRl63Jt7AlRFK0/+Ez+GfS+V/Z+HnQeUBWJ0hWKLX9+
	hA7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=dY4zh+uzdiJrCA/dMJUSskcDSvI25JGgGD3oAVxw91Q=;
	b=DeW7WCpSWbpx137lxNArlzW081FxoH0rDESBhDfnxHn/Zn9fTMp8ZIWrfUaN2S2xgM
	EchyKFKf9rjXwBMISsdINTt8nd5Hj5Q7RhuLjyOujJyx2Ow7Pl3EwCMJgpM0flnpZeay
	weLy0GYylENqr6M8twGyl2C81ZuzmhV6/vktM7OINk4ZuHJkDlnt3/5A9Vm/jJ4Wafb5
	/pPN0KPppsV3NzHIH3I3MHXUVE0aoiQZZcG25JHVMIbdGoqdsqsYtlB1NCZ9TVwUAIDT
	PrroQLZrKnyeLLAIzBWRcHF4piQWyl+CwO+0P2LghkeSGDVhDp3GTEwfh0lg8I0eNLW5
	+//w==
X-Gm-Message-State: AODbwcBa/wttkZ7cm4yBm8GcfhyXam/DAjuTP+T/5VUciFLtcKP3WkFw
	W5r3T3bEad/bzf3l+z5XJStVRCMjyHax
X-Received: by 10.157.82.88 with SMTP id q24mr5470393otg.52.1496443946008;
	Fri, 02 Jun 2017 15:52:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.91.84 with HTTP; Fri, 2 Jun 2017 15:52:05 -0700 (PDT)
In-Reply-To: <CAMKF1sq-LT+R6HhjjaRdjkpkqsc9+7RVaz9VO7khDahH0Pzf1Q@mail.gmail.com>
References: <CACgq_DpBjavUgXrG9XazuGT8a7td2EyaosQCaqjcwXxkdh5pLw@mail.gmail.com>
	<CAMKF1sq-LT+R6HhjjaRdjkpkqsc9+7RVaz9VO7khDahH0Pzf1Q@mail.gmail.com>
From: Ian Welch <ian_welch@trimble.com>
Date: Fri, 2 Jun 2017 16:52:05 -0600
Message-ID: <CACgq_DoUx-xTF9-cM9Qcv3igeC=TnxQE7PWqJe=HK=CVdDpdjw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: File permissions on package_ipk.bbclass
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
X-List-Received-Date: Fri, 02 Jun 2017 22:52:30 -0000
Content-Type: multipart/alternative; boundary="f4030435bc18d477b3055102014b"

--f4030435bc18d477b3055102014b
Content-Type: text/plain; charset="UTF-8"

Thanks Raj.

We are looking at using `sudo` but this may have a ripple effect in our
other build scripts. I was hoping there was a more elegant way to handle
this.

We are using version Yocto v1.7

~Ian

On Fri, Jun 2, 2017 at 3:14 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Fri, Jun 2, 2017 at 1:57 PM, Ian Welch <ian_welch@trimble.com> wrote:
> > Hello,
> >      We are using the package_ipk.bbclass to create packages for opkg
> that
> > will be installed on our embedded hardware (target). We are also using
> > Jenkins as a CI server to run bitbake. We have discovered that when we
> > install packages built on Jenkins we get all kinds of file permissions
> > errors after installing the ipks on our target system. I have tracked the
> > issue down to bitbake being run by a user called "jenkins" on our Jenkins
> > system. The permissions of the files are all "jenkins:jenkins" prior to
> the
> > do_package task running which results in these permissions getting
> packaged
> > into the .ipk files.
> >
> > Is there a way to change the ownership of the files prior to being
> packaged?
> > I'm thinking of something like a package_ipk.bbappend file or environment
> > variable?
> >
>
> pseudo should have taken care of this.
> what release are you on ?
>
> > Cheers,
> >
> > --
> >
> > Ian Welch
> > Trimble Navigation
> > 10368 Westmoor Drive | Westminster, CO 80021
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>



-- 

Ian Welch
Engineering Manager, Civil Engineering & Construction
10368 Westmoor Drive | Westminster, CO 80021
+1-303-635-8750 Direct | +1-720-320-5181 Mobile

--f4030435bc18d477b3055102014b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Raj.<div><br></div><div>We are looking at using `su=
do` but this may have a ripple effect in our other build scripts. I was hop=
ing there was a more elegant way to handle this.=C2=A0</div><div><br></div>=
<div>We are using version Yocto v1.7</div><div><br></div><div>~Ian</div></d=
iv><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Jun 2,=
 2017 at 3:14 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem=
@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><span class=3D"">On Fri, Jun 2, 2017 at 1:57 =
PM, Ian Welch &lt;<a href=3D"mailto:ian_welch@trimble.com">ian_welch@trimbl=
e.com</a>&gt; wrote:<br>
&gt; Hello,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 We are using the package_ipk.bbclass to create pac=
kages for opkg that<br>
&gt; will be installed on our embedded hardware (target). We are also using=
<br>
&gt; Jenkins as a CI server to run bitbake. We have discovered that when we=
<br>
&gt; install packages built on Jenkins we get all kinds of file permissions=
<br>
&gt; errors after installing the ipks on our target system. I have tracked =
the<br>
&gt; issue down to bitbake being run by a user called &quot;jenkins&quot; o=
n our Jenkins<br>
&gt; system. The permissions of the files are all &quot;jenkins:jenkins&quo=
t; prior to the<br>
&gt; do_package task running which results in these permissions getting pac=
kaged<br>
&gt; into the .ipk files.<br>
&gt;<br>
&gt; Is there a way to change the ownership of the files prior to being pac=
kaged?<br>
&gt; I&#39;m thinking of something like a package_ipk.bbappend file or envi=
ronment<br>
&gt; variable?<br>
&gt;<br>
<br>
</span>pseudo should have taken care of this.<br>
what release are you on ?<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; Cheers,<br>
&gt;<br>
&gt; --<br>
&gt;<br>
&gt; Ian Welch<br>
&gt; Trimble Navigation<br>
&gt; 10368 Westmoor Drive | Westminster, CO 80021<br>
&gt;<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
&gt;<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div di=
r=3D"ltr"><img src=3D"http://trl.trimble.com/docushare/dsweb/Get/Document-8=
07363/trimbletagline.png"><br><span style=3D"font-family:sans-serif;font-si=
ze:13px;line-height:18.5714px;font-weight:bold;color:rgb(54,53,69)">Ian Wel=
ch<br></span><span style=3D"font-family:sans-serif;font-size:13px;line-heig=
ht:18.5714px;color:rgb(54,53,69)">Engineering Manager, Civil Engineering &a=
mp; Construction<br></span><span style=3D"font-family:sans-serif;font-size:=
13px;line-height:18.5714px;color:rgb(54,53,69)">10368 Westmoor Drive=C2=A0|=
=C2=A0</span><span style=3D"font-family:sans-serif;font-size:13px;line-heig=
ht:18.5714px;color:rgb(54,53,69)">Westminster, CO 80021<br></span><span sty=
le=3D"font-family:sans-serif;font-size:13px;line-height:18.5714px;color:rgb=
(54,53,69)">+1-303-635-8750 Direct |=C2=A0</span><span style=3D"font-family=
:sans-serif;font-size:13px;line-height:18.5714px;color:rgb(54,53,69)">+1-72=
0-320-5181 Mobile=C2=A0</span><br></div></div>
</div>

--f4030435bc18d477b3055102014b--
