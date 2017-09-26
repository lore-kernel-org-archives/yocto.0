Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E3CCE00D2A; Tue, 26 Sep 2017 12:13:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.182 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA7BBE00C3A
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 12:13:07 -0700 (PDT)
Received: by mail-io0-f182.google.com with SMTP id l15so13711484iol.8
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 12:13:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=SwV0KmPvwiwhuriSJjonYhY5MRJiSO9u9D2aJXUZy4E=;
	b=AGPJRD2DryOAyrc2Kjx0duv6/g/TwEYE0JqKiWFzy2yb5m/b1M1COB+OIURScjDdFp
	yW3aS73aoACMkVagvzkpbxntan05TvijU2+crWOlX72Rexn/PUmBQtJfAQzaEGjBhReJ
	DSu5edBmCPCNLdX1/p8gzIV1MeSd506SyCZBL1S5J+VIzpSnTxAKHOdw0Ka2Mpeqj87c
	aKboOFs/DzlCe2AjQuFlR6CLE+IbcXpNtAc5U64yI88J49xCwy0rz5HyTu3MkL9iqtnU
	KxFI1ag59XhOGlp6e2fsI+CRGajE+Jz8T+SyCYPwvm1v5pW0GdHD0hNC92LGz5i1FgqO
	9vqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=SwV0KmPvwiwhuriSJjonYhY5MRJiSO9u9D2aJXUZy4E=;
	b=mo5jKjtQ+LMlBSZJ+Cg8TRvIgbdxx4l18Y6lENoZlgcCDO4RAvODQMN+MH+BwitctJ
	IUhknKtmpigg/TBIanV9tPUvFxGHV30oHQDvb+3buiAm9PGfsBntTwrBSABD/w0cqu7C
	3YOUqEriHP83yhX8aTygc8vZaJEeoXacaJTDhEu2I455uRYGEyN2RoqtRtuyZICXplnZ
	jPEiBq/AjVngMvQMt7+ddxjaA6IENycrKUeMPwyThKG5qlm25YDqMKMVC4tEKuhxBQkD
	jLIgzHnuJf+mhHZ8kk5CpOCbSKX21o7ABV4kjEqwqOITCrS5d+R2in66lMCdn5Nyv302
	dJUA==
X-Gm-Message-State: AHPjjUhzhxmPmOa5l01vLsyHldN/ksjHLnZ4QGXyeZpEc8FXmZcBwlYi
	YYrIVEmkM+vMDORbhsML8LSMk5vthUG++DDsAsK+JQ==
X-Google-Smtp-Source: AOwi7QDuChn+Yc/TYkEmQFO9sTRnQ6H5Y6J0SynqXQUsINwnlM7w6WaWGCEm1Qaa7ReIZ96GIkFO2vW48dPcRLtinsw=
X-Received: by 10.107.41.135 with SMTP id p129mr15300316iop.142.1506453186741; 
	Tue, 26 Sep 2017 12:13:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.19.68 with HTTP; Tue, 26 Sep 2017 12:12:46 -0700 (PDT)
In-Reply-To: <DM5PR05MB29545649D8FAD14D890F96C4BB7B0@DM5PR05MB2954.namprd05.prod.outlook.com>
References: <DM5PR05MB29545649D8FAD14D890F96C4BB7B0@DM5PR05MB2954.namprd05.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 26 Sep 2017 20:12:46 +0100
Message-ID: <CAJTo0LYWJFAChPkcOeU4ESOzCZ0XkrVswRnsh7jz=4QnKZ6uWA@mail.gmail.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Errors building with Windows Subsystem for Linux (aka Bash on Ubuntu on Windows)
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
X-List-Received-Date: Tue, 26 Sep 2017 19:13:08 -0000
Content-Type: multipart/alternative; boundary="001a1141f2261145dd055a1c7720"

--001a1141f2261145dd055a1c7720
Content-Type: text/plain; charset="UTF-8"

Hi,

On 26 September 2017 at 18:16, Bryan Evenson <bevenson@melinkcorp.com>
wrote:

>   WARNING: The Linux kernel on your build host was not configured to
> provide process I/O statistics. (CONFIG_TASK_IO_ACCOUNTING is not set)
>
> I searched the Yocto Project documentation and I couldn't figure out what
> specifically these I/O statistics are used for.  What affect does this have
> on my build?  Does anybody know if there is a way to enable I/O statistics
> for the WSL?
>

That's the buildstats class that is enabled in your local.conf.  I don't
expect WSL will ever fake a Linux-compatible /proc directory structure, so
you can just disable this.


> I'm also seeing a very slow refresh of the build status on the command
> line.  When multiple tasks are running, I can see the lines clear away from
> the bottom of the screen to the top and then fill in back down.  The
> resulting flash from the refresh makes it nearly impossible to read what
> some of the running tasks are.  What is the actual mechanism for updating
> the task status on the command line?  I'm wondering if it's counting on
> some feature that Microsoft hasn't fully supported yet.
>

This is just standard curses, so you'll have to wait for Microsoft to make
it faster.

If you do "bitbake <your targets> | cat" then bitbake will fall back to a
UI that isn't interactive and will be a lot faster.


> I am also getting a build error with glibc-locale.  In the do_package
> stage I'm getting a failure in the function sstate_task_postfunc.  The
> error is on the following command:
>
>   cp -afl --preserve=xattr <base_path>/poky/poky-build/
> tmp/work/armv5e-poky-linux-gnueabi/glibc-locale/2.24-r0/packages-split/*
> <base_path>/poky/poky-build/tmp/work/armv5e-poky-linux-
> gnueabi/glibc-locale/2.24-r0/sstate-build-package//packages-split/*
>
> I am seeing a lot of errors from this command that look like the following:
>
>  cp: cannot create hard link: '<base_path>/poky/poky-build/
> tmp/work/armv5e-poky-linux-gnueabi/glibc-locale/2.24-r0/
> sstate-build-package//packages-split/glibc-binary-
> localedata-ks-in/usr/lib/locale/ks_IN/LC_MEASUREMENT' to
> '<base_path>/poky/poky-build/tmp/work/armv5e-poky-linux-
> gnueabi/glibc-locale/2.24-r0/packages-split/glibc-binary-
> localedata-ks-in/usr/lib/locale/ks_IN/LC_MEASUREMENT': Invalid argument
>
> I looked at my working directory, and I see that in the source files are
> there.  If I run the cp command from the command line as shown above, I get
> the same errors.  I'm trying to figure out if this is an issue with hard
> links with WSL or if this is general build issue.  Any suggestions on what
> else to try?
>

Now this *is* interesting.  Try removing the repeated slashes just in case
the WSL ln is being incredibly pedantic (ie
sstate-build-package//packages-split), but I don't seriously expect that to
be the problem.  Running stat on the source and verifying the destination
doesn't exist would be helpful.  Can you tell if that is the first ln that
it is trying to do, or do many work and that one fails?  Does WSL have a
working strace or similar to identify which exact syscall is failing?

In all honestly I'm surprised you got the build to go as far as you have
under WSL, that's impressive.  Have you been able to compare performance
against a full VM on the same hardware?

Ross

--001a1141f2261145dd055a1c7720
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br><div class=3D"gmail_extra"><div class=3D"gmail=
_quote">On 26 September 2017 at 18:16, Bryan Evenson <span dir=3D"ltr">&lt;=
<a href=3D"mailto:bevenson@melinkcorp.com" target=3D"_blank">bevenson@melin=
kcorp.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=C2=A0 W=
ARNING: The Linux kernel on your build host was not configured to provide p=
rocess I/O statistics. (CONFIG_TASK_IO_ACCOUNTING is not set)<br>
<br>
I searched the Yocto Project documentation and I couldn&#39;t figure out wh=
at specifically these I/O statistics are used for.=C2=A0 What affect does t=
his have on my build?=C2=A0 Does anybody know if there is a way to enable I=
/O statistics for the WSL?<br></blockquote><div><br></div><div>That&#39;s t=
he buildstats class that is enabled in your local.conf.=C2=A0 I don&#39;t e=
xpect WSL will ever fake a Linux-compatible /proc directory structure, so y=
ou can just disable this.</div><div>=C2=A0</div><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex">
I&#39;m also seeing a very slow refresh of the build status on the command =
line.=C2=A0 When multiple tasks are running, I can see the lines clear away=
 from the bottom of the screen to the top and then fill in back down.=C2=A0=
 The resulting flash from the refresh makes it nearly impossible to read wh=
at some of the running tasks are.=C2=A0 What is the actual mechanism for up=
dating the task status on the command line?=C2=A0 I&#39;m wondering if it&#=
39;s counting on some feature that Microsoft hasn&#39;t fully supported yet=
.<br></blockquote><div><br></div><div>This is just standard curses, so you&=
#39;ll have to wait for Microsoft to make it faster.</div><div><br></div><d=
iv>If you do &quot;bitbake &lt;your targets&gt; | cat&quot; then bitbake wi=
ll fall back to a UI that isn&#39;t interactive and will be a lot faster.</=
div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
I am also getting a build error with glibc-locale.=C2=A0 In the do_package =
stage I&#39;m getting a failure in the function sstate_task_postfunc.=C2=A0=
 The error is on the following command:<br>
<br>
=C2=A0 cp -afl --preserve=3Dxattr &lt;base_path&gt;/poky/poky-build/<wbr>tm=
p/work/armv5e-poky-linux-<wbr>gnueabi/glibc-locale/2.24-r0/<wbr>packages-sp=
lit/* &lt;base_path&gt;/poky/poky-build/<wbr>tmp/work/armv5e-poky-linux-<wb=
r>gnueabi/glibc-locale/2.24-r0/<wbr>sstate-build-package//<wbr>packages-spl=
it/*<br>
<br>
I am seeing a lot of errors from this command that look like the following:=
<br>
<br>
=C2=A0cp: cannot create hard link: &#39;&lt;base_path&gt;/poky/poky-build/<=
wbr>tmp/work/armv5e-poky-linux-<wbr>gnueabi/glibc-locale/2.24-r0/<wbr>sstat=
e-build-package//<wbr>packages-split/glibc-binary-<wbr>localedata-ks-in/usr=
/lib/<wbr>locale/ks_IN/LC_MEASUREMENT&#39; to &#39;&lt;base_path&gt;/poky/p=
oky-build/<wbr>tmp/work/armv5e-poky-linux-<wbr>gnueabi/glibc-locale/2.24-r0=
/<wbr>packages-split/glibc-binary-<wbr>localedata-ks-in/usr/lib/<wbr>locale=
/ks_IN/LC_MEASUREMENT&#39;: Invalid argument<br>
<br>
I looked at my working directory, and I see that in the source files are th=
ere.=C2=A0 If I run the cp command from the command line as shown above, I =
get the same errors.=C2=A0 I&#39;m trying to figure out if this is an issue=
 with hard links with WSL or if this is general build issue.=C2=A0 Any sugg=
estions on what else to try?<br></blockquote><div><br></div><div>Now this *=
is* interesting.=C2=A0 Try removing the repeated slashes just in case the W=
SL ln is being incredibly pedantic (ie sstate-build-package//packages-split=
), but I don&#39;t seriously expect that to be the problem.=C2=A0 Running s=
tat on the source and verifying the destination doesn&#39;t exist would be =
helpful.=C2=A0 Can you tell if that is the first ln that it is trying to do=
, or do many work and that one fails?=C2=A0 Does WSL have a working strace =
or similar to identify which exact syscall is failing?</div><div><br></div>=
<div>In all honestly I&#39;m surprised you got the build to go as far as yo=
u have under WSL, that&#39;s impressive.=C2=A0 Have you been able to compar=
e performance against a full VM on the same hardware?</div><div><br></div><=
div>Ross</div></div></div></div></div>

--001a1141f2261145dd055a1c7720--
