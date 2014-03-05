Return-Path: <mgloff@emacinc.com>
Received: from mail-we0-f179.google.com (mail-we0-f179.google.com
	[74.125.82.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 988D0E009C8
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 11:56:33 -0800 (PST)
Received: by mail-we0-f179.google.com with SMTP id x48so1849827wes.38
	for <yocto@yoctoproject.org>; Wed, 05 Mar 2014 11:56:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=qkjgThg/4wIBoDEP65k+uuLkDrieWOnrPYdeFG0/tcg=;
	b=NNrm2jEg9DQCeMOVfFXJpGYYlNfqGWzJF4iphIlCMU2H4KUqZpqdBVaFONRnVSQBRq
	5GjG5qyqzi8cCNoNPDHJr0+mskXjlJ7CvaQL+fyO5+CHakXJRcmhmlkLDJuk2mjfGFNH
	uBti8JFoK4KqsYIQylGpb2v+KVmCeMq12EBMBx7R/hymALTWixnUMkREbbMgPQvCVnrm
	aLIG/4+c7l5xudY5lD6uFwY66GsqqN/rADjbXTeXU8aWmCpA6kt9pXw/+DiD+GsZ5kYA
	MmJdQ/+Xx4xv+ixkwHgPea6KGNyE42zZFCjiEB1ZVueUVb1vcSuwz5sllfQ/ZrDr4XWS
	FOmg==
X-Gm-Message-State: ALoCoQnbor+/S9HYnA/S0NL4SvJHuZh2A/uGWb1V8VJJdsIH5lAca8rcwae6Tvb437AdnkBowJl5
MIME-Version: 1.0
X-Received: by 10.194.143.40 with SMTP id sb8mr3815281wjb.15.1394049392349;
	Wed, 05 Mar 2014 11:56:32 -0800 (PST)
Received: by 10.216.163.1 with HTTP; Wed, 5 Mar 2014 11:56:32 -0800 (PST)
In-Reply-To: <5862546.U5rd1cKvZu@peggleto-mobl5.ger.corp.intel.com>
References: <CALXw4G5VUNySyWoOoFbKHnMUWFjZfQKwQCu0T0cWtwGOAMQnow@mail.gmail.com>
	<126717450.ayqcFG2vtF@peggleto-mobl5.ger.corp.intel.com>
	<CALXw4G5Ti_rZ+LWVYivbqeEAyFn2fOTDtYD9kvMBcq94R0X_xg@mail.gmail.com>
	<5862546.U5rd1cKvZu@peggleto-mobl5.ger.corp.intel.com>
Date: Wed, 5 Mar 2014 13:56:32 -0600
Message-ID: <CALXw4G7jdBF9HSaJrfExrOgW-UaG1k=U+fMXYwN2i1hpkZkZOg@mail.gmail.com>
From: Michael Gloff <mgloff@emacinc.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Toolchain
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
X-List-Received-Date: Wed, 05 Mar 2014 19:56:35 -0000
Content-Type: multipart/alternative; boundary=089e0115e78cd4aa9b04f3e16adc

--089e0115e78cd4aa9b04f3e16adc
Content-Type: text/plain; charset=ISO-8859-1

Thanks,
Not a big deal at all to build the toolchain with a different machine name.
Just curious.

Michael Gloff


On Wed, Mar 5, 2014 at 11:45 AM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Wednesday 05 March 2014 11:00:31 Michael Gloff wrote:
> > On Mon, Mar 3, 2014 at 12:52 PM, Paul Eggleton
> > <paul.eggleton@linux.intel.com> wrote:
> > > On Sunday 02 March 2014 19:58:41 Michael Gloff wrote:
> > > > Is there a reason why the toolchain cannot be built with a machine
> name
> > > > that contains capital letters? Seems weird, everything else builds
> fine,
> > > > but meta-toolchain fails complaining about caps.
> > >
> > > Although machine names are traditionally all lower case in our build
> > > system, there's no deliberate restriction in place that enforces this.
> > >
> > > Would you be able to provide more details, such as the version of the
> > > build system you are using, the exact capital letters you used in the
> > > machine name, and the error you received?
> >
> > The error is below. Machine name: PMX-090T. This is on dora 1.5.1
> >
> > ERROR: Function failed: opkg-build execution failed
> > ERROR: Logfile of failure stored in:
> >
> /opt/oe/build/tmp/work/i686-nativesdk-emacsdk-linux/meta-environment-PMX-090
> > T/1.0-r8/temp/log.do_package_write_ipk.15358
> > Log data follows:
> > | DEBUG: Executing python function sstate_task_prefunc
> > | DEBUG: Python function sstate_task_prefunc finished
> > | DEBUG: Executing python function do_package_write_ipk
> > | DEBUG: Executing python function read_subpackage_metadata
> > | DEBUG: Python function read_subpackage_metadata finished
> > | DEBUG: Executing python function do_package_ipk
> > | meta-environment-PMX-090T
> > | *** Error: Package name  contains illegal characters, (other than
> > [a-z0-9.+-])
>
> Perhaps I spoke too soon. There might not be a direct restriction on
> machine
> names; but opkg does restrict characters allowed in package names, and for
> meta-environment the machine name ends up as part of the package name. You
> could probably hack around it if you felt the need to, but the simplest
> thing
> would be to just change the machine name to be all lower-case.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--089e0115e78cd4aa9b04f3e16adc
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks,<br></div>Not a big deal at all to build the t=
oolchain with a different machine name. Just curious.<br><br>Michael Gloff<=
br></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On W=
ed, Mar 5, 2014 at 11:45 AM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D=
"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linu=
x.intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">On Wednesday 05 March 2014 11:00:31 Michael =
Gloff wrote:<br>
&gt; On Mon, Mar 3, 2014 at 12:52 PM, Paul Eggleton<br>
&gt; &lt;<a href=3D"mailto:paul.eggleton@linux.intel.com">paul.eggleton@lin=
ux.intel.com</a>&gt; wrote:<br>
&gt; &gt; On Sunday 02 March 2014 19:58:41 Michael Gloff wrote:<br>
&gt; &gt; &gt; Is there a reason why the toolchain cannot be built with a m=
achine name<br>
&gt; &gt; &gt; that contains capital letters? Seems weird, everything else =
builds fine,<br>
&gt; &gt; &gt; but meta-toolchain fails complaining about caps.<br>
&gt; &gt;<br>
&gt; &gt; Although machine names are traditionally all lower case in our bu=
ild<br>
&gt; &gt; system, there&#39;s no deliberate restriction in place that enfor=
ces this.<br>
&gt; &gt;<br>
&gt; &gt; Would you be able to provide more details, such as the version of=
 the<br>
&gt; &gt; build system you are using, the exact capital letters you used in=
 the<br>
&gt; &gt; machine name, and the error you received?<br>
&gt;<br>
&gt; The error is below. Machine name: PMX-090T. This is on dora 1.5.1<br>
&gt;<br>
&gt; ERROR: Function failed: opkg-build execution failed<br>
&gt; ERROR: Logfile of failure stored in:<br>
&gt; /opt/oe/build/tmp/work/i686-nativesdk-emacsdk-linux/meta-environment-P=
MX-090<br>
&gt; T/1.0-r8/temp/log.do_package_write_ipk.15358<br>
&gt; Log data follows:<br>
&gt; | DEBUG: Executing python function sstate_task_prefunc<br>
&gt; | DEBUG: Python function sstate_task_prefunc finished<br>
&gt; | DEBUG: Executing python function do_package_write_ipk<br>
&gt; | DEBUG: Executing python function read_subpackage_metadata<br>
&gt; | DEBUG: Python function read_subpackage_metadata finished<br>
&gt; | DEBUG: Executing python function do_package_ipk<br>
&gt; | meta-environment-PMX-090T<br>
&gt; | *** Error: Package name =A0contains illegal characters, (other than<=
br>
&gt; [a-z0-9.+-])<br>
<br>
Perhaps I spoke too soon. There might not be a direct restriction on machin=
e<br>
names; but opkg does restrict characters allowed in package names, and for<=
br>
meta-environment the machine name ends up as part of the package name. You<=
br>
could probably hack around it if you felt the need to, but the simplest thi=
ng<br>
would be to just change the machine name to be all lower-case.<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--089e0115e78cd4aa9b04f3e16adc--
