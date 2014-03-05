Return-Path: <mgloff@emacinc.com>
Received: from mail-we0-f180.google.com (mail-we0-f180.google.com
	[74.125.82.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68300E00A42
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 09:00:32 -0800 (PST)
Received: by mail-we0-f180.google.com with SMTP id p61so1560897wes.25
	for <yocto@yoctoproject.org>; Wed, 05 Mar 2014 09:00:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=E7sYlzFRkeMcMDqLFCcOZG0GNcv6sp6HsHiSsI6tjOs=;
	b=fBXou4L00cDCxlsCVeDLJiX2DqjIxufeR6/zhKvfPuBt2GydupFcV+eY4wYHMHe4YB
	0MiJapf3S1mXwtSxS39UN6l6vgrhAmGt0FNTK/eQ/GAS66tXhzq2IUUV8Z58Dvvkosuq
	8yRbDZVLRzKOAUddRYu3sILEgegGSihNul92bsyeX7ypf7SBYg5uFcOWGoiL7ynn0Cm2
	+Vb+Xu1j7lmvonEqx/l5CEHL1O60EZApJN3uKwREdh4AmA6e5k+GlT5MGaH87gWBLfJC
	ptadOSO0kkTY0xc/x1wQaInzXvYqRgzRP3c5V61ugjJa6tciPSOBuw5JQSPyPYcFaBRI
	/IBA==
X-Gm-Message-State: ALoCoQlAUuhJTHFvbFEWXVTKGZEKn5dyTpOPUQJulSiaNnjA4vXA/jz1falCPrbMtEXQ4IDNv/qk
MIME-Version: 1.0
X-Received: by 10.194.78.77 with SMTP id z13mr2697421wjw.64.1394038831686;
	Wed, 05 Mar 2014 09:00:31 -0800 (PST)
Received: by 10.216.163.1 with HTTP; Wed, 5 Mar 2014 09:00:31 -0800 (PST)
In-Reply-To: <126717450.ayqcFG2vtF@peggleto-mobl5.ger.corp.intel.com>
References: <CALXw4G5VUNySyWoOoFbKHnMUWFjZfQKwQCu0T0cWtwGOAMQnow@mail.gmail.com>
	<126717450.ayqcFG2vtF@peggleto-mobl5.ger.corp.intel.com>
Date: Wed, 5 Mar 2014 11:00:31 -0600
Message-ID: <CALXw4G5Ti_rZ+LWVYivbqeEAyFn2fOTDtYD9kvMBcq94R0X_xg@mail.gmail.com>
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
X-List-Received-Date: Wed, 05 Mar 2014 17:00:35 -0000
Content-Type: multipart/alternative; boundary=047d7bfcfc985dba3d04f3def5d6

--047d7bfcfc985dba3d04f3def5d6
Content-Type: text/plain; charset=ISO-8859-1

Paul,
The error is below. Machine name: PMX-090T. This is on dora 1.5.1

ERROR: Function failed: opkg-build execution failed
ERROR: Logfile of failure stored in:
/opt/oe/build/tmp/work/i686-nativesdk-emacsdk-linux/meta-environment-PMX-090T/1.0-r8/temp/log.do_package_write_ipk.15358
Log data follows:
| DEBUG: Executing python function sstate_task_prefunc
| DEBUG: Python function sstate_task_prefunc finished
| DEBUG: Executing python function do_package_write_ipk
| DEBUG: Executing python function read_subpackage_metadata
| DEBUG: Python function read_subpackage_metadata finished
| DEBUG: Executing python function do_package_ipk
| meta-environment-PMX-090T
| *** Error: Package name  contains illegal characters, (other than
[a-z0-9.+-])
|
| opkg-build: Please fix the above errors and try again.
| DEBUG: Python function do_package_ipk finished
| DEBUG: Python function do_package_write_ipk finished
| ERROR: Function failed: opkg-build execution failed
ERROR: Task 788 (/opt/oe/recipes/poky/meta/recipes-core/meta/
meta-environment.bb, do_package_write_ipk) failed with exit code '1'

Thanks,

Michael Gloff



On Mon, Mar 3, 2014 at 12:52 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> Hi Michael,
>
> On Sunday 02 March 2014 19:58:41 Michael Gloff wrote:
> > Is there a reason why the toolchain cannot be built with a machine name
> > that contains capital letters? Seems weird, everything else builds fine,
> > but meta-toolchain fails complaining about caps.
>
> Although machine names are traditionally all lower case in our build
> system,
> there's no deliberate restriction in place that enforces this.
>
> Would you be able to provide more details, such as the version of the build
> system you are using, the exact capital letters you used in the machine
> name,
> and the error you received?
>
> Thanks,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--047d7bfcfc985dba3d04f3def5d6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Paul,<br></div>The error is below. Machine =
name: PMX-090T. This is on dora 1.5.1<br><br>ERROR: Function failed: opkg-b=
uild execution failed<br>ERROR: Logfile of failure stored in: /opt/oe/build=
/tmp/work/i686-nativesdk-emacsdk-linux/meta-environment-PMX-090T/1.0-r8/tem=
p/log.do_package_write_ipk.15358<br>
Log data follows:<br>| DEBUG: Executing python function sstate_task_prefunc=
<br>| DEBUG: Python function sstate_task_prefunc finished<br>| DEBUG: Execu=
ting python function do_package_write_ipk<br>| DEBUG: Executing python func=
tion read_subpackage_metadata<br>
| DEBUG: Python function read_subpackage_metadata finished<br>| DEBUG: Exec=
uting python function do_package_ipk<br>| meta-environment-PMX-090T<br>| **=
* Error: Package name=A0 contains illegal characters, (other than [a-z0-9.+=
-])<br>
| <br>| opkg-build: Please fix the above errors and try again.<br>| DEBUG: =
Python function do_package_ipk finished<br>| DEBUG: Python function do_pack=
age_write_ipk finished<br>| ERROR: Function failed: opkg-build execution fa=
iled<br>
ERROR: Task 788 (/opt/oe/recipes/poky/meta/recipes-core/meta/<a href=3D"htt=
p://meta-environment.bb">meta-environment.bb</a>, do_package_write_ipk) fai=
led with exit code &#39;1&#39;<br><br></div>Thanks,<br><br></div>Michael Gl=
off<br>
<div><div><br></div></div></div><div class=3D"gmail_extra"><br><br><div cla=
ss=3D"gmail_quote">On Mon, Mar 3, 2014 at 12:52 PM, Paul Eggleton <span dir=
=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_bl=
ank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi Michael,<br>
<br>
On Sunday 02 March 2014 19:58:41 Michael Gloff wrote:<br>
&gt; Is there a reason why the toolchain cannot be built with a machine nam=
e<br>
&gt; that contains capital letters? Seems weird, everything else builds fin=
e,<br>
&gt; but meta-toolchain fails complaining about caps.<br>
<br>
Although machine names are traditionally all lower case in our build system=
,<br>
there&#39;s no deliberate restriction in place that enforces this.<br>
<br>
Would you be able to provide more details, such as the version of the build=
<br>
system you are using, the exact capital letters you used in the machine nam=
e,<br>
and the error you received?<br>
<br>
Thanks,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--047d7bfcfc985dba3d04f3def5d6--
