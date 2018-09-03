Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E698E00460; Mon,  3 Sep 2018 05:33:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1EC8E003D9
	for <yocto@yoctoproject.org>; Mon,  3 Sep 2018 05:33:10 -0700 (PDT)
Received: by mail-oi0-f43.google.com with SMTP id k81-v6so663796oib.9
	for <yocto@yoctoproject.org>; Mon, 03 Sep 2018 05:33:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=Hlr3eVxJlCyfw5mMv33rBoSclwfZBUsC1Ox0JR46zc0=;
	b=lRS2eR211KN3Z6fu51iI4zf64ZDFebMH4PNKIWX7wAIebBuc0zs65EW5UsFcminvdg
	fhAlyDank8/yN+/m6ztPqNGsw6EUqB8wMErM0weZf+mFisjc3Md7mOHMO15cyBXLZ4Lx
	cSixEGEUs1dkB3E2lYZ2v+xXg2wp0MaN7nNubCF8ybQg4tzxMw4l7ZqDuSUxpe7gl4Vm
	ez77vC5N16SWFA279iDZQQ0JDa0ZFx/k+jwDAnv2nwSgeNfskMp3smc2FBxdnPU0cgSR
	05WhyyTWjKSBABl2yxHgAYeUGTskwvzTqLD6ORKkzXCS+UfRA3b6hF9WmMN38cTUitjv
	hSVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=Hlr3eVxJlCyfw5mMv33rBoSclwfZBUsC1Ox0JR46zc0=;
	b=ohy8NhywLD4qlzSs7ToDNwXplEVjW/ec9Id5TipIK9MmW1tbtqpM6ddGbg9WdiosN9
	dRvF+W8ae3LegE0uzy8jg+KuzhzPy9nJbJH9N7MO+4UH9qxz+fahIP77COivJ38M767O
	rbVQ0f7iUR9lWKhOktvG8ysEZlgxep64Za/stwtVnQywKH/gBMwOo45Da1M+jqbpl3ar
	vWNySWCPSJVZrBCgrbZRJidk9kU3yaz4CAZYkAV+axcGzobA3Gn4cpnQVX24sieAEpqE
	Ga6PMSM8F6v4zB13cAMsGEY9DuIAWNpgejWC/Pc1mi43B6dwGrHo6+uVqKswXVVfusOq
	tmVQ==
X-Gm-Message-State: APzg51AT3ii9TiahoDZ+YWBVGFAViwc/MNDPmFUFSMTJqvBf+G9eWy0P
	Tl+dXAciWsgr49qH5z+wFk4ZjgDKvdYaJjFIK1r9TPd/5E8=
X-Google-Smtp-Source: ANB0VdYXAKRb56THY9ILSOCD1fvI09HWCvowgMAdn3sIkfEDiG3sj2sa3RpdEXEKf5W2PRCjpMK6TBPAobCHjCn/AHA=
X-Received: by 2002:aca:e594:: with SMTP id
	c142-v6mr17970015oih.337.1535977990024; 
	Mon, 03 Sep 2018 05:33:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:2cd8:0:0:0:0:0 with HTTP;
	Mon, 3 Sep 2018 05:33:09 -0700 (PDT)
In-Reply-To: <CAJTo0LYX9d0kqNcs-gXB8PXwptJ7Bsvr=_j43ikrd0vFG=g_TQ@mail.gmail.com>
References: <CAOT_U5ZjnsD9O1qrewUAtqBp+0_306Gx1s1nS8MP3upJpuDiLA@mail.gmail.com>
	<CANNYZj_HLD3qC30b32W-hH2n4QaGYsNQ=XP2Xa1EHcMJny1Syw@mail.gmail.com>
	<CAJTo0LafDpq-n3j8zjkk0jKBy-gtp5pd5Xr94D8k8he1mCmSmA@mail.gmail.com>
	<CAOT_U5bX8HE_8tEtqSLhxdGrqkz2oW7icNuc20r7yf9NxRJCrg@mail.gmail.com>
	<CAJTo0LbZErNQz=cmq4ZrKRt3wYcN5cR-+1BTnqDU+kireAoT=w@mail.gmail.com>
	<CAOT_U5bJVDqQRepCSxfgP_yF5P4jym1s6E489NMJgQR_8E=hMw@mail.gmail.com>
	<CAJTo0LYX9d0kqNcs-gXB8PXwptJ7Bsvr=_j43ikrd0vFG=g_TQ@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Mon, 3 Sep 2018 14:33:09 +0200
Message-ID: <CAOT_U5ZSpLDRofV9KbPJOEDZP7xWvYsHnx+WvoSqiNtjvmHGxg@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: (How) did you script bitbake/set up nightly builds?
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
X-List-Received-Date: Mon, 03 Sep 2018 12:33:12 -0000
Content-Type: multipart/alternative; boundary="0000000000007a83890574f6be89"

--0000000000007a83890574f6be89
Content-Type: text/plain; charset="UTF-8"

It seems the call doesn't work correctly with dash (ls -la /bin/sh):

    subprocess.call(". oe/oe-init-build-env; ls", shell = True)
    /bin/sh: 51: .: Can't open root_dir/scripts/oe-buildenv-internal

Specifying bash explicitly works ok:

    subprocess.call(". oe/oe-init-build-env; ls", shell = True,
executable="/bin/bash")

    ### Shell environment set up for builds. ###
    ...
    ...



On Fri, Aug 31, 2018 at 1:47 PM, Burton, Ross <ross.burton@intel.com> wrote:

> On 31 August 2018 at 12:45, Alan Martinovic <alan.martinovic@senic.com>
> wrote:
> > Fair enough, I gave an example with a simple workaround. :)
> >
> > But you do have a point there, if I'm getting you answer right on a
> broader
> > level.
> > Is it something like this?
> >
> >> Instead of setting the environment only once and running bitbake
> multiple
> >> times
> >> just make the environment sourcing and bitbake execution an atomic
> >> operation.
> >
> >
> > So if I wanted to automate i.e.:
> >
> > . oe-init-build-env mybuild
> > bitbake -c cleanall failure_prone_package
> > bitbake failure_prone_package
> > bitbake foo #image build
> >
> > It's fine to do it like this:
> >
> > subprocess.call(". oe-init-build-env mybuild ; bitbake -c cleanall
> > failure_prone_package", shell=True)
> > subprocess.call(". oe-init-build-env mybuild ; bitbake
> > failure_prone_package", shell=True)
> > subprocess.call(". oe-init-build-env mybuild ; bitbake foo", shell=True)
>
> Yes, that's exactly the idiom.  The alternative would be to invoke
> oe-init-build-env once and then run export, and parse that to
> construct an environment to pass to future bitbake calls.  That would
> work, but would be more complex.
>
> Ross
>

--0000000000007a83890574f6be89
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>It=
 seems the call doesn&#39;t work correctly with dash (ls -la /bin/sh):</div=
><div><br></div><div>=C2=A0 =C2=A0 subprocess.call(&quot;. oe/oe-init-build=
-env; ls&quot;, shell =3D True)<br></div><div><div>=C2=A0 =C2=A0 /bin/sh: 5=
1: .: Can&#39;t open root_dir/scripts/oe-buildenv-internal</div><div><br></=
div></div><div>Specifying bash explicitly works ok:</div><div><br></div><di=
v><div>=C2=A0 =C2=A0 subprocess.call(&quot;. oe/oe-init-build-env; ls&quot;=
, shell =3D True, executable=3D&quot;/bin/bash&quot;)</div><div><br></div><=
div>=C2=A0 =C2=A0 ### Shell environment set up for builds. ###</div><div>=
=C2=A0 =C2=A0 ...=C2=A0</div></div><div>=C2=A0 =C2=A0 ...</div><div><br></d=
iv><div><br></div></div></div></div></div><div class=3D"gmail_extra"><br><d=
iv class=3D"gmail_quote">On Fri, Aug 31, 2018 at 1:47 PM, Burton, Ross <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank=
">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex"><span class=3D"">On 31 August 2018 at 12:45, Alan Martinovic &lt;<a hr=
ef=3D"mailto:alan.martinovic@senic.com">alan.martinovic@senic.com</a>&gt; w=
rote:<br>
&gt; Fair enough, I gave an example with a simple workaround. :)<br>
&gt;<br>
&gt; But you do have a point there, if I&#39;m getting you answer right on =
a broader<br>
&gt; level.<br>
&gt; Is it something like this?<br>
&gt;<br>
&gt;&gt; Instead of setting the environment only once and running bitbake m=
ultiple<br>
&gt;&gt; times<br>
&gt;&gt; just make the environment sourcing and bitbake execution an atomic=
<br>
&gt;&gt; operation.<br>
&gt;<br>
&gt;<br>
&gt; So if I wanted to automate i.e.:<br>
&gt;<br>
&gt; . oe-init-build-env mybuild<br>
&gt; bitbake -c cleanall failure_prone_package<br>
&gt; bitbake failure_prone_package<br>
&gt; bitbake foo #image build<br>
&gt;<br>
&gt; It&#39;s fine to do it like this:<br>
&gt;<br>
&gt; subprocess.call(&quot;. oe-init-build-env mybuild ; bitbake -c cleanal=
l<br>
&gt; failure_prone_package&quot;, shell=3DTrue)<br>
&gt; subprocess.call(&quot;. oe-init-build-env mybuild ; bitbake<br>
&gt; failure_prone_package&quot;, shell=3DTrue)<br>
&gt; subprocess.call(&quot;. oe-init-build-env mybuild ; bitbake foo&quot;,=
 shell=3DTrue)<br>
<br>
</span>Yes, that&#39;s exactly the idiom.=C2=A0 The alternative would be to=
 invoke<br>
oe-init-build-env once and then run export, and parse that to<br>
construct an environment to pass to future bitbake calls.=C2=A0 That would<=
br>
work, but would be more complex.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--0000000000007a83890574f6be89--
