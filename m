Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18BC1E00406; Wed,  2 Dec 2015 12:21:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f52.google.com (mail-lf0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8793FE00349
	for <yocto@yoctoproject.org>; Wed,  2 Dec 2015 12:21:19 -0800 (PST)
Received: by lffu14 with SMTP id u14so66113114lff.1
	for <yocto@yoctoproject.org>; Wed, 02 Dec 2015 12:21:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=1mNFP5WK6D1HSM2/ZxVnmuE0b8d8nZnlRbRqp9SJy2U=;
	b=bi9whJpcBNsryVBfJVEkr0HEhEONZ3CXbYcraerDo/BqTtT93MenygkGGFoQEJ4Me+
	YeBfXe0Gre4xSWKYTR3/Z8caZKAI8hsBuer4C5ggXF7lF1msLhKU19J+Z1amc5JcO73R
	43Ca1rSlSyY3pb5Ets1WauEqA8Yp335oAiF4xfhzuJTETLM9BkdJP2mXAEai2WU5vQsD
	7Q4Q9rMh0wFWDpCLnZhjHQuHrNSyLdIOI/95Sf0Co7z3eRoRcvH54w1C9ldV6DzNuJAc
	OrcTRLE8CebMyvYd2YBYS1WanotYGDb/Q3ocswm+oRVqTHOTaSm/RG+YV14mpFvI/psR
	SFCA==
MIME-Version: 1.0
X-Received: by 10.112.199.194 with SMTP id jm2mr3600003lbc.109.1449087678083; 
	Wed, 02 Dec 2015 12:21:18 -0800 (PST)
Received: by 10.114.11.226 with HTTP; Wed, 2 Dec 2015 12:21:18 -0800 (PST)
In-Reply-To: <3766251.1tjm3ahZJD@peggleto-mobl.ger.corp.intel.com>
References: <CAOsp8o8KV9PPS03KZq7jCgRrB6xWO4NZuurDpStKpVF_yRSpBA@mail.gmail.com>
	<3766251.1tjm3ahZJD@peggleto-mobl.ger.corp.intel.com>
Date: Wed, 2 Dec 2015 14:21:18 -0600
Message-ID: <CAOsp8o-2bE68iHRra5JscwKjU6ut5SR=i54vzHdPteHz5wfMHw@mail.gmail.com>
From: Michael Habibi <mikehabibi@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: do_fetch hanging - any way to see debugging?
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
X-List-Received-Date: Wed, 02 Dec 2015 20:21:22 -0000
Content-Type: multipart/alternative; boundary=001a11c33a524cfdf00525f004ed

--001a11c33a524cfdf00525f004ed
Content-Type: text/plain; charset=UTF-8

I'll try running it outside the script and see what I can devise - thanks!

On Wed, Dec 2, 2015 at 2:18 PM, Paul Eggleton <paul.eggleton@linux.intel.com
> wrote:

> Hi Michael,
>
> On Wed, 02 Dec 2015 09:41:41 Michael Habibi wrote:
> > I'm struggling with some network proxy issues and pulling down
> linux-yocto.
> > I left my build running overnight and it simply hung at do_fetch. I tried
> > using -v and -DDD but it doesn't actually show any output from the
> do_fetch
> > recipe. I looked at the do_fetch logs and it doesn't have anything
> useful.
> > Here are the last lines:
> >
> > DEBUG: Fetcher failure: Fetch command failed with exit code 8, output:
> >
> http://downloads.yoctoproject.org/mirror/sources/git2_git.yoctoproject.org.g
> > it.linux-yocto-4.1.git.tar.gz
> >
> > 2015-12-02 09:21:15 ERROR 404: Not Found.
> >
> > DEBUG: Trying Upstream
> > DEBUG: Fetcher accessed the network with the command git -c
> > core.fsyncobjectfiles=0 clone --bare --mirror
> > http://git.yoctoproject.org/git/linux-yocto-4.1.git
> >
> /projects/yocto-git/build/downloads/git2/git.yoctoproject.org.git.linux-yoct
> > o-4.1.git DEBUG: Running export
> >
> PATH="/projects/yocto-git/scripts:/projects/yocto-git/build/tmp/sysroots/x86
> >
> _64-linux/usr/bin/x86_64-diags-linux:/projects/yocto-git/build/tmp/sysroots/
> >
> continental/usr/bin/crossscripts:/projects/yocto-git/build/tmp/sysroots/x86_
> >
> 64-linux/usr/sbin:/projects/yocto-git/build/tmp/sysroots/x86_64-linux/usr/bi
> >
> n:/projects/yocto-git/build/tmp/sysroots/x86_64-linux/sbin:/projects/yocto-g
> >
> it/build/tmp/sysroots/x86_64-linux/bin:/projects/yocto-git/scripts:/projects
> >
> /yocto-git/bitbake/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sb
> > in:/bin:/usr/games:/usr/local/games:/home/habibim/bin"; export
> > HOME="/home/habibim"; git -c core.fsyncobjectfiles=0 clone --bare
> --mirror
> > http://git.yoctoproject.org/git/linux-yocto-4.1.git
> >
> /projects/yocto-git/build/downloads/git2/git.yoctoproject.org.git.linux-yoct
> > o-4.1.git
> >
> > I looked at a log where this succeeded, and it didn't have much more
> > information:
> >
> > DEBUG: Running export
> >
> PATH="/projects/yocto-git/scripts:/projects/yocto-git/build/tmp/sysroots/x86
> >
> _64-linux/usr/bin/x86_64-poky-linux:/projects/yocto-git/build/tmp/sysroots/g
> >
> enericx86-64/usr/bin/crossscripts:/projects/yocto-git/build/tmp/sysroots/x86
> >
> _64-linux/usr/sbin:/projects/yocto-git/build/tmp/sysroots/x86_64-linux/usr/b
> >
> in:/projects/yocto-git/build/tmp/sysroots/x86_64-linux/sbin:/projects/yocto-
> >
> git/build/tmp/sysroots/x86_64-linux/bin:/projects/yocto-git/scripts:/project
> >
> s/yocto-git/bitbake/bin:/projects/my-distro/scripts:/projects/my-distro/bitb
> >
> ake/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/ga
> > mes:/usr/local/games"; export HOME="/home/habibim"; git -c
> > core.fsyncobjectfiles=0 branch --contains
> > aed902160251d69cc28d1e69a4f692e8ea8fa13b --list yocto-4.1 2> /dev/null |
> wc
> > -l
> > DEBUG: Python function base_do_fetch finished
> > DEBUG: Python function do_fetch finished
> >
> > Note that I am using a bbappend file for my custom machine:
> >
> > KBRANCH_continental  = "standard/base"
> > KMACHINE_continental ?= "common-pc-64"
> > COMPATIBLE_MACHINE_continental = "continental"
> >
> > # 4.1.13 rev tag
> > LINUX_VERSION_continental = "4.1.13"
> > SRCREV_machine_continental ?= "1f2ce4a2e7aea3a2123b17aff62a80553df31e21"
> >
> > # Use http protocol
> > SRC_URI_continental = "git://
> >
> git.yoctoproject.org/git/linux-yocto-4.1.git;protocol=http;name=machine;bran
> > ch=${KBRANCH} "
> >
> > If I comment out my overrides for SRCREV and SRC_URI, it simply pulls the
> > cache (somehow I managed to pull this down before). But if I use my
> > overrides (to grab a newer kernel, and to use the http protocol), it will
> > simply hang indefinitely. Any way I can debug what's happening?
>
> If it's hung here it may be because the proxy you are behind is trying to
> download and scan the file in its entirety before it allows it to be passed
> through to your download process - we've seen this before. If that's what's
> happening there's not much we can do about that beyond increasing the
> timeout,
> because such proxies usually do not send anything back to the client in the
> way of status. If you need to you can set FETCHCMD_wget such that the -T
> option specifies a longer timeout value.
>
> FWIW you should be able to see exactly which wget command line is being
> executed in the fetch log - you could try run this outside of the bitbake
> environment without the -nv switch to get more information (you'd need to
> ensure the proxy environment variables are set though or you wouldn't be
> replicating the same conditions).
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--001a11c33a524cfdf00525f004ed
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;ll try running it outside the script and see what I =
can devise - thanks!</div><div class=3D"gmail_extra"><br><div class=3D"gmai=
l_quote">On Wed, Dec 2, 2015 at 2:18 PM, Paul Eggleton <span dir=3D"ltr">&l=
t;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.e=
ggleton@linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">Hi Michael,<br>
<span class=3D""><br>
On Wed, 02 Dec 2015 09:41:41 Michael Habibi wrote:<br>
&gt; I&#39;m struggling with some network proxy issues and pulling down lin=
ux-yocto.<br>
&gt; I left my build running overnight and it simply hung at do_fetch. I tr=
ied<br>
&gt; using -v and -DDD but it doesn&#39;t actually show any output from the=
 do_fetch<br>
&gt; recipe. I looked at the do_fetch logs and it doesn&#39;t have anything=
 useful.<br>
&gt; Here are the last lines:<br>
&gt;<br>
&gt; DEBUG: Fetcher failure: Fetch command failed with exit code 8, output:=
<br>
&gt; <a href=3D"http://downloads.yoctoproject.org/mirror/sources/git2_git.y=
octoproject.org.g" rel=3D"noreferrer" target=3D"_blank">http://downloads.yo=
ctoproject.org/mirror/sources/git2_git.yoctoproject.org.g</a><br>
&gt; it.linux-yocto-4.1.git.tar.gz<br>
&gt;<br>
</span><span class=3D"">&gt; 2015-12-02 09:21:15 ERROR 404: Not Found.<br>
&gt;<br>
&gt; DEBUG: Trying Upstream<br>
&gt; DEBUG: Fetcher accessed the network with the command git -c<br>
&gt; core.fsyncobjectfiles=3D0 clone --bare --mirror<br>
&gt; <a href=3D"http://git.yoctoproject.org/git/linux-yocto-4.1.git" rel=3D=
"noreferrer" target=3D"_blank">http://git.yoctoproject.org/git/linux-yocto-=
4.1.git</a><br>
&gt; /projects/yocto-git/build/downloads/git2/git.yoctoproject.org.git.linu=
x-yoct<br>
</span>&gt; o-4.1.git DEBUG: Running export<br>
<span class=3D"">&gt; PATH=3D&quot;/projects/yocto-git/scripts:/projects/yo=
cto-git/build/tmp/sysroots/x86<br>
&gt; _64-linux/usr/bin/x86_64-diags-linux:/projects/yocto-git/build/tmp/sys=
roots/<br>
&gt; continental/usr/bin/crossscripts:/projects/yocto-git/build/tmp/sysroot=
s/x86_<br>
&gt; 64-linux/usr/sbin:/projects/yocto-git/build/tmp/sysroots/x86_64-linux/=
usr/bi<br>
&gt; n:/projects/yocto-git/build/tmp/sysroots/x86_64-linux/sbin:/projects/y=
octo-g<br>
&gt; it/build/tmp/sysroots/x86_64-linux/bin:/projects/yocto-git/scripts:/pr=
ojects<br>
&gt; /yocto-git/bitbake/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/b=
in:/sb<br>
&gt; in:/bin:/usr/games:/usr/local/games:/home/habibim/bin&quot;; export<br=
>
&gt; HOME=3D&quot;/home/habibim&quot;; git -c core.fsyncobjectfiles=3D0 clo=
ne --bare --mirror<br>
&gt; <a href=3D"http://git.yoctoproject.org/git/linux-yocto-4.1.git" rel=3D=
"noreferrer" target=3D"_blank">http://git.yoctoproject.org/git/linux-yocto-=
4.1.git</a><br>
&gt; /projects/yocto-git/build/downloads/git2/git.yoctoproject.org.git.linu=
x-yoct<br>
&gt; o-4.1.git<br>
&gt;<br>
&gt; I looked at a log where this succeeded, and it didn&#39;t have much mo=
re<br>
&gt; information:<br>
&gt;<br>
&gt; DEBUG: Running export<br>
&gt; PATH=3D&quot;/projects/yocto-git/scripts:/projects/yocto-git/build/tmp=
/sysroots/x86<br>
&gt; _64-linux/usr/bin/x86_64-poky-linux:/projects/yocto-git/build/tmp/sysr=
oots/g<br>
&gt; enericx86-64/usr/bin/crossscripts:/projects/yocto-git/build/tmp/sysroo=
ts/x86<br>
&gt; _64-linux/usr/sbin:/projects/yocto-git/build/tmp/sysroots/x86_64-linux=
/usr/b<br>
&gt; in:/projects/yocto-git/build/tmp/sysroots/x86_64-linux/sbin:/projects/=
yocto-<br>
&gt; git/build/tmp/sysroots/x86_64-linux/bin:/projects/yocto-git/scripts:/p=
roject<br>
&gt; s/yocto-git/bitbake/bin:/projects/my-distro/scripts:/projects/my-distr=
o/bitb<br>
&gt; ake/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/=
usr/ga<br>
</span><span class=3D"">&gt; mes:/usr/local/games&quot;; export HOME=3D&quo=
t;/home/habibim&quot;; git -c<br>
&gt; core.fsyncobjectfiles=3D0 branch --contains<br>
&gt; aed902160251d69cc28d1e69a4f692e8ea8fa13b --list yocto-4.1 2&gt; /dev/n=
ull | wc<br>
&gt; -l<br>
&gt; DEBUG: Python function base_do_fetch finished<br>
&gt; DEBUG: Python function do_fetch finished<br>
&gt;<br>
&gt; Note that I am using a bbappend file for my custom machine:<br>
&gt;<br>
&gt; KBRANCH_continental=C2=A0 =3D &quot;standard/base&quot;<br>
&gt; KMACHINE_continental ?=3D &quot;common-pc-64&quot;<br>
&gt; COMPATIBLE_MACHINE_continental =3D &quot;continental&quot;<br>
&gt;<br>
&gt; # 4.1.13 rev tag<br>
&gt; LINUX_VERSION_continental =3D &quot;4.1.13&quot;<br>
&gt; SRCREV_machine_continental ?=3D &quot;1f2ce4a2e7aea3a2123b17aff62a8055=
3df31e21&quot;<br>
&gt;<br>
&gt; # Use http protocol<br>
&gt; SRC_URI_continental =3D &quot;git://<br>
&gt; <a href=3D"http://git.yoctoproject.org/git/linux-yocto-4.1.git;protoco=
l=3Dhttp;name=3Dmachine;bran" rel=3D"noreferrer" target=3D"_blank">git.yoct=
oproject.org/git/linux-yocto-4.1.git;protocol=3Dhttp;name=3Dmachine;bran</a=
><br>
&gt; ch=3D${KBRANCH} &quot;<br>
&gt;<br>
&gt; If I comment out my overrides for SRCREV and SRC_URI, it simply pulls =
the<br>
&gt; cache (somehow I managed to pull this down before). But if I use my<br=
>
&gt; overrides (to grab a newer kernel, and to use the http protocol), it w=
ill<br>
&gt; simply hang indefinitely. Any way I can debug what&#39;s happening?<br=
>
<br>
</span>If it&#39;s hung here it may be because the proxy you are behind is =
trying to<br>
download and scan the file in its entirety before it allows it to be passed=
<br>
through to your download process - we&#39;ve seen this before. If that&#39;=
s what&#39;s<br>
happening there&#39;s not much we can do about that beyond increasing the t=
imeout,<br>
because such proxies usually do not send anything back to the client in the=
<br>
way of status. If you need to you can set FETCHCMD_wget such that the -T<br=
>
option specifies a longer timeout value.<br>
<br>
FWIW you should be able to see exactly which wget command line is being<br>
executed in the fetch log - you could try run this outside of the bitbake<b=
r>
environment without the -nv switch to get more information (you&#39;d need =
to<br>
ensure the proxy environment variables are set though or you wouldn&#39;t b=
e<br>
replicating the same conditions).<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--001a11c33a524cfdf00525f004ed--
