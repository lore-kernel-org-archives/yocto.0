Return-Path: <satya.2891@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F14F0E0093F; Thu,  2 Mar 2017 13:01:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (satya.2891[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.45 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.45 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f45.google.com (mail-lf0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4754E0049D
	for <yocto@yoctoproject.org>; Thu,  2 Mar 2017 13:01:44 -0800 (PST)
Received: by mail-lf0-f45.google.com with SMTP id a6so39367099lfa.0
	for <yocto@yoctoproject.org>; Thu, 02 Mar 2017 13:01:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=8EtG2iV648Chc+0CmzQmumxscVQBfU3kuugLvaGB/Qg=;
	b=IBbGUCMT6d+YPcSzMbQzfoOieyn6IzAdI4+RCvq+QhJhmvV+XIc6J0yqwBsKetekoI
	mjPun5nogvFDu2UfoSRebwjLPPDpDCHCxg2+tLKi7NuCTbJCpTgstvfLcPI/0WgC4EgB
	Z/PpNcXBK3N3nfCQJ9ZsIX6fZQlj+eXICi3uwd+OQu6T9txfqBUKhM9aPxYTMq/ba5UC
	+qn1spD4AEXYDgXlhHTa4kdgQ8m6wXp8wgiHNN1jdOfe2J20X15uifoEWZqVfspzHUBd
	NyJTM2UsRdYKQelt8dcCUF5YD/eCZ+jS7sgnaur2lXmYGQhAkPpP1dqiqqLEgexD/t1Y
	Lxig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=8EtG2iV648Chc+0CmzQmumxscVQBfU3kuugLvaGB/Qg=;
	b=QfPIk/tESZKbMNYvtQklZ4zPfJ9uJrfBcTHjPpm+XeWzW/fW9AbyaK4McQYv8cenBa
	GoHK6b3Mo/694kF14ZzZv1321HzAChywVEwd/WzyP4zIcz816d8VmSPkOfNI1JfzT4S5
	weIOLRV5L2JUqmSaskrvMggJj5+tYZw2En3NB7KLzJplAvXc+vUQg3rAHMQzCIXJtQQ6
	tWzize9afIPeA8cJFYcwXTi6hOLj5CS66bTlQd8F1SyzaJYQb+hOaSNRwkWUuZ4WX1l0
	jYkHORc5evj2lfktraagerckdlOYMEFYdcGCXtpd2UeAtEf7fjtnRghIHU48JaSy8Af+
	9etQ==
X-Gm-Message-State: AMke39nB33HtEu8C0r/Y6we4UTp1Jo4LdgoiTxeohvwMdQZO+6YgMsZNu2za6Wkox0qqjVKLuHMZ2yj4s3Au9w==
X-Received: by 10.25.44.16 with SMTP id s16mr5144254lfs.6.1488488503186; Thu,
	02 Mar 2017 13:01:43 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.228.14 with HTTP; Thu, 2 Mar 2017 13:01:42 -0800 (PST)
In-Reply-To: <20170302165637.GO7350@denix.org>
References: <CAF1M0z6zfKC8QZsmfyCrf_zoSdzomeNa9SciPdGgaZpR+X3Tqw@mail.gmail.com>
	<1488469685.28256.36.camel@linux.intel.com>
	<CAF1M0z5VQxpnDurb7aW3DynL22-PnXo=MGMrvtaZ7ExsTMjK7g@mail.gmail.com>
	<CAJTo0LZTwVepmvsQTWNAW0gJiMtsYp9bF8Xa92oEP_gWW4QU2Q@mail.gmail.com>
	<20170302165637.GO7350@denix.org>
From: SatyaNarayana Sampangi <satya.2891@gmail.com>
Date: Fri, 3 Mar 2017 02:31:42 +0530
Message-ID: <CAF1M0z40DS-FDwhomoP4bLkj29RrNDAHS6oB_Z5zLecfVoPC=Q@mail.gmail.com>
To: Denys Dmytriyenko <denis@denix.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Devtool: Script Not found
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
X-List-Received-Date: Thu, 02 Mar 2017 21:01:48 -0000
Content-Type: multipart/alternative; boundary=001a11410dd27c1c260549c5bc1f

--001a11410dd27c1c260549c5bc1f
Content-Type: text/plain; charset=UTF-8

Hi Denys,

I build, system with krogoth and meta-ti with both version same, after
running on the beaglebone it is showing like below,

anything I need to change.

No lease, forking to background
done.
hwclock: can't open '/dev/misc/rtc': No such file or directory
Starting syslogd/klogd: done
INIT: Id "O0" respawning too fast: disabled for 5 minutes
[   92.942038] random: nonblocking pool is initialized
INIT: Id "O0" respawning too fast: disabled for 5 minutes

Note: This I did not get in Daisy 1.6 and meta-ti with compatible.

Could you help me here.

Thanks,
satya


On Thu, Mar 2, 2017 at 10:26 PM, Denys Dmytriyenko <denis@denix.org> wrote:

> On Thu, Mar 02, 2017 at 04:19:33PM +0000, Burton, Ross wrote:
> > On 2 March 2017 at 16:14, SatyaNarayana Sampangi <satya.2891@gmail.com>
> > wrote:
> >
> > > I am using beagle bone black, for which meta-ti layer and poky versions
> > > compatible is daisy 1.6 as mention in the official website of yocto.
> If I
> > > upgrade the poky to the latest version, then compatibity will be lost.
> Pls
> > > help me out here.
> > >
> >
> > http://git.yoctoproject.org/cgit/cgit.cgi/meta-ti/ has branches for
> krogoth
> > (2.1) and morty (2.2).  Where did you see that 1.6 is the last release
> > supported?
>
> ^^^^^^^^^^ This is all that matters! The rest is just fluff...
>
> --
> Denys
>

--001a11410dd27c1c260549c5bc1f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Denys,<div><br></div><div>I build, system with krogoth =
and meta-ti with both version same, after running on the beaglebone it is s=
howing like below,</div><div><br></div><div>anything I need to change.=C2=
=A0</div><div><div><br></div><div>No lease, forking to background</div><div=
>done.</div><div>hwclock: can&#39;t open &#39;/dev/misc/rtc&#39;: No such f=
ile or directory</div><div>Starting syslogd/klogd: done</div><div>INIT: Id =
&quot;O0&quot; respawning too fast: disabled for 5 minutes</div><div>[ =C2=
=A0 92.942038] random: nonblocking pool is initialized</div><div>INIT: Id &=
quot;O0&quot; respawning too fast: disabled for 5 minutes</div></div><div><=
br></div><div>Note: This I did not get in Daisy 1.6 and meta-ti with compat=
ible.</div><div><br></div><div>Could you help me here.</div><div><br></div>=
<div>Thanks,</div><div>satya</div><div><br></div></div><div class=3D"gmail_=
extra"><br><div class=3D"gmail_quote">On Thu, Mar 2, 2017 at 10:26 PM, Deny=
s Dmytriyenko <span dir=3D"ltr">&lt;<a href=3D"mailto:denis@denix.org" targ=
et=3D"_blank">denis@denix.org</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><span class=3D"">On Thu, Mar 02, 2017 at 04:19:33PM +0000, Burto=
n, Ross wrote:<br>
&gt; On 2 March 2017 at 16:14, SatyaNarayana Sampangi &lt;<a href=3D"mailto=
:satya.2891@gmail.com">satya.2891@gmail.com</a>&gt;<br>
&gt; wrote:<br>
&gt;<br>
&gt; &gt; I am using beagle bone black, for which meta-ti layer and poky ve=
rsions<br>
&gt; &gt; compatible is daisy 1.6 as mention in the official website of yoc=
to. If I<br>
&gt; &gt; upgrade the poky to the latest version, then compatibity will be =
lost. Pls<br>
&gt; &gt; help me out here.<br>
&gt; &gt;<br>
&gt;<br>
&gt; <a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-ti/" rel=3D"=
noreferrer" target=3D"_blank">http://git.yoctoproject.org/<wbr>cgit/cgit.cg=
i/meta-ti/</a> has branches for krogoth<br>
&gt; (2.1) and morty (2.2).=C2=A0 Where did you see that 1.6 is the last re=
lease<br>
&gt; supported?<br>
<br>
</span>^^^^^^^^^^ This is all that matters! The rest is just fluff...<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
Denys<br>
</font></span></blockquote></div><br></div>

--001a11410dd27c1c260549c5bc1f--
