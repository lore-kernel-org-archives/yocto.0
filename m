Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85336E00B81; Tue,  3 Nov 2015 06:34:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtownsend1973[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f53.google.com (mail-lf0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67EBAE00A9C
	for <yocto@yoctoproject.org>; Tue,  3 Nov 2015 06:34:34 -0800 (PST)
Received: by lfbn126 with SMTP id n126so19934839lfb.2
	for <yocto@yoctoproject.org>; Tue, 03 Nov 2015 06:34:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=HZf5k3VoPpdrT/cm09iNb5kCxS7NLacrxPuxdjOtC50=;
	b=jpQ9DgmglLNWLZpMdWMe5q/XK55LzDsXZKdodfjg3jWtu/MKk1+NaxfaM0AvIqD2Zd
	SJ2Dy+NexYOb680OpGaKTIMT8xi3yh9TECKM76gQme99ou1uUQIM90qNXN56hAQ2EZZu
	tQynRhGUiWXs+A5Q/W77ElC5/e+11HgwWgTPsjq/xU1MqC53Pj6eE/wBduBE8Pba1fga
	hI5GI79A+wZpurocr6XKq3skVMRUwy6WiUTAPPVBjQc+Dkz9glTg7Jxz2zKsROCT+t77
	1CWDDGMtzxbzPL67isHA2NYs/i2CF7mR5rWmfrtjc7dMMmq4uvLK4oU8Srj827J10Haf
	yg3w==
MIME-Version: 1.0
X-Received: by 10.25.19.155 with SMTP id 27mr6954720lft.120.1446561273073;
	Tue, 03 Nov 2015 06:34:33 -0800 (PST)
Received: by 10.25.218.5 with HTTP; Tue, 3 Nov 2015 06:34:33 -0800 (PST)
In-Reply-To: <46665729.FfZ08QW5SE@peggleto-mobl.ger.corp.intel.com>
References: <CABatt_zq+Bt3w=PyTYfSM9X5TUyOYXBuVTpK8a0JH-L2HAApMQ@mail.gmail.com>
	<46665729.FfZ08QW5SE@peggleto-mobl.ger.corp.intel.com>
Date: Tue, 3 Nov 2015 14:34:33 +0000
Message-ID: <CABatt_wJb_j_YOptOeirf03SWO2znr9cXqzCzgFxxT-s_vq29Q@mail.gmail.com>
From: Martin Townsend <mtownsend1973@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: populate_sdk and debian packages problem
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
X-List-Received-Date: Tue, 03 Nov 2015 14:34:36 -0000
Content-Type: multipart/alternative; boundary=001a11407a16d3db770523a3caaa

--001a11407a16d3db770523a3caaa
Content-Type: text/plain; charset=UTF-8

Hi Paul,

I don't know if it worked before, we were using daisy with an external
toolchain and populate_sdk wasn't working.  I've wanted to go to Fido and
use the built toolchain so I bit the bullet as all looks good except
populate_sdk with dpkg.  Anyway, I'll file a bug as it looks like there is
a problem.

In the meantime if someone could point me in the direction of which class
files to look at that would be great as I need to get this working asap and
I don't mind doing some ground work.

Cheers,
Martin.

On Tue, Nov 3, 2015 at 2:20 PM, Paul Eggleton <paul.eggleton@linux.intel.com
> wrote:

> Hi Martin,
>
> On Monday 02 November 2015 18:53:04 Martin Townsend wrote:
> > I've just moved everything to fido and everything builds fine.  One of
> the
> > reasons for moving to Fido was to use the built toolchain and create an
> SDK
> > using populate_sdk but it is failing with the following message:
> > ERROR: Unable to install packages. Command
> >
> '/home/martin/ws_poweroasis/build/am43-devboard-aquila/bia-tmp-glibc/sysroot
> > s/x86_64-linux/usr/bin/apt-get install --force-yes
> --allow-unauthenticated
> > nativesdk-packagegroup-sdk-host
> > packagegroup-cross-canadian-am43-devboard-aquila' returned 100:
> > Reading package lists...
> > Building dependency tree...
> > Reading state information...
> > W: Unable to read
> >
> /home/martin/ws_poweroasis/build/am43-devboard-aquila/bia-tmp-glibc/work/am4
> >
> 3_devboard_aquila-oe-linux-gnueabi/bia-image/1.0-r0/apt-sdk/preferences.d/ -
> > DirectoryExists (2: No such file or directory)
> > E: Unable to locate package nativesdk-packagegroup-sdk-host
> >
> > I checked the nativesdk-packagegroup-sdk-host build and it's empty.
> >
> > After a bit of searching I found that a similar problem exists in Daisy
> and
> > it was down to debian packages which I am using so I chaged to use the
> > default IPK and the error message disappears.
> >
> > Is this a regression? or are Debian packages not supported for SDK?
>
> If it worked before then it's a regression. I'm afraid deb packaging is the
> least well-tested of the three packaging options, from time to time it does
> break unfortunately. Could you please file a bug at
> bugzilla.yoctoproject.org ?
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--001a11407a16d3db770523a3caaa
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi Paul,<br><br></div></div>I don&#39;=
t know if it worked before, we were using daisy with an external toolchain =
and populate_sdk wasn&#39;t working.=C2=A0 I&#39;ve wanted to go to Fido an=
d use the built toolchain so I bit the bullet as all looks good except popu=
late_sdk with dpkg.=C2=A0 Anyway, I&#39;ll file a bug as it looks like ther=
e is a problem.<br><br>In the meantime if someone could point me in the dir=
ection of which class files to look at that would be great as I need to get=
 this working asap and I don&#39;t mind doing some ground work.<br><br></di=
v>Cheers,<br></div>Martin.<br></div><div class=3D"gmail_extra"><br><div cla=
ss=3D"gmail_quote">On Tue, Nov 3, 2015 at 2:20 PM, Paul Eggleton <span dir=
=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_bl=
ank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">Hi Martin,<br>
<span class=3D""><br>
On Monday 02 November 2015 18:53:04 Martin Townsend wrote:<br>
&gt; I&#39;ve just moved everything to fido and everything builds fine.=C2=
=A0 One of the<br>
&gt; reasons for moving to Fido was to use the built toolchain and create a=
n SDK<br>
&gt; using populate_sdk but it is failing with the following message:<br>
&gt; ERROR: Unable to install packages. Command<br>
&gt; &#39;/home/martin/ws_poweroasis/build/am43-devboard-aquila/bia-tmp-gli=
bc/sysroot<br>
</span>&gt; s/x86_64-linux/usr/bin/apt-get install --force-yes --allow-unau=
thenticated<br>
<span class=3D"">&gt; nativesdk-packagegroup-sdk-host<br>
&gt; packagegroup-cross-canadian-am43-devboard-aquila&#39; returned 100:<br=
>
&gt; Reading package lists...<br>
&gt; Building dependency tree...<br>
&gt; Reading state information...<br>
&gt; W: Unable to read<br>
&gt; /home/martin/ws_poweroasis/build/am43-devboard-aquila/bia-tmp-glibc/wo=
rk/am4<br>
&gt; 3_devboard_aquila-oe-linux-gnueabi/bia-image/1.0-r0/apt-sdk/preference=
s.d/ -<br>
&gt; DirectoryExists (2: No such file or directory)<br>
&gt; E: Unable to locate package nativesdk-packagegroup-sdk-host<br>
&gt;<br>
&gt; I checked the nativesdk-packagegroup-sdk-host build and it&#39;s empty=
.<br>
&gt;<br>
&gt; After a bit of searching I found that a similar problem exists in Dais=
y and<br>
&gt; it was down to debian packages which I am using so I chaged to use the=
<br>
&gt; default IPK and the error message disappears.<br>
&gt;<br>
&gt; Is this a regression? or are Debian packages not supported for SDK?<br=
>
<br>
</span>If it worked before then it&#39;s a regression. I&#39;m afraid deb p=
ackaging is the<br>
least well-tested of the three packaging options, from time to time it does=
<br>
break unfortunately. Could you please file a bug at <a href=3D"http://bugzi=
lla.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">bugzilla.yoctopr=
oject.org</a> ?<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--001a11407a16d3db770523a3caaa--
