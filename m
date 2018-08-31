Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03E1CE007AD; Fri, 31 Aug 2018 04:54:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f45.google.com (mail-oi0-f45.google.com
	[209.85.218.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54422E007AD
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2018 04:54:23 -0700 (PDT)
Received: by mail-oi0-f45.google.com with SMTP id k81-v6so15042941oib.9
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2018 04:54:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=A6vTooFEbE6FMTM2n7IC3L0ggoaipW6QhpNwUGnC0tQ=;
	b=F5S5KTVOCHr8ag795TDGLEUT9MPAGNB5NjV0jQZ7uFzgAoVqwfaoR/Mnfz6QYT8F7O
	IlI8gElsmHVyJCmakeH+Le9c/wsJEz6eyKC/HULSHa9KyzwyWJikYQJf2THcCGlM1zFb
	193w0nxxrmidgYO5hMu9lXNdstck+jeLYUNzl3XGloAcsvStyrhmC7DZr0iuOJbMVyrR
	0aOXYqm6N/B3wtu1aJGpC36rom3FYgSJe3MzDeal6E9tH1yx1Lcnap3z+cuWpm4oKfq4
	Y4OLKqd11ef7S7I+mS638cr6tVHRUkrpaV5CeyrwXeuBhBKlAMiXlojl4uZt9hJm0B04
	sy2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=A6vTooFEbE6FMTM2n7IC3L0ggoaipW6QhpNwUGnC0tQ=;
	b=ERtWqgHwzPpxQq1shdL98t9vOZp1qhSw2UedfdzWQ3i1DMn6h3gDI8otyoPuGnO5pU
	s16+zZUEkIyJbqIkTAk/LnFjDV4rxkWpqdCVgkrpgXB1d+tGbyoiwjXjNYfMhllkPJY1
	A/RX//O94Xc64p/ne3h1M0v97HPy1WSkUZR/BuHW1ZEWC/HQ9DoLMmL6tTnASOM3hGP9
	6vpheMIB018FMYmODdtWPM3VGah37H+opCs449ORBk20szFdW3E/tG3p+N72tWMF1gi8
	nAr4z59vKEUUJQysrbZYRnxuOI+5QsDvDzTv7cTVmCKkQbtZoYgwfdVS+Zn4dOvjepqp
	CziA==
X-Gm-Message-State: APzg51AtLRIq18PvTq569hmF+UoVtKPI9BoEwQ+3MKVZbND6+W2pJ5zM
	hERqZMjRTdUajSrOESzxenJJqADxNoD85X1nTPkRaw==
X-Google-Smtp-Source: ANB0VdbQNd2oACjdft6V7i7wnB2ijcVhhInGGgRE/0PxG38l2F/oOw26iRUF4Fcr8s8cgMxoOmcatfPsRqbmmrWBEoI=
X-Received: by 2002:aca:36c1:: with SMTP id
	d184-v6mr7344432oia.36.1535716462865; 
	Fri, 31 Aug 2018 04:54:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:30ad:0:0:0:0:0 with HTTP; Fri, 31 Aug 2018 04:54:22
	-0700 (PDT)
In-Reply-To: <CAJTo0LYX9d0kqNcs-gXB8PXwptJ7Bsvr=_j43ikrd0vFG=g_TQ@mail.gmail.com>
References: <CAOT_U5ZjnsD9O1qrewUAtqBp+0_306Gx1s1nS8MP3upJpuDiLA@mail.gmail.com>
	<CANNYZj_HLD3qC30b32W-hH2n4QaGYsNQ=XP2Xa1EHcMJny1Syw@mail.gmail.com>
	<CAJTo0LafDpq-n3j8zjkk0jKBy-gtp5pd5Xr94D8k8he1mCmSmA@mail.gmail.com>
	<CAOT_U5bX8HE_8tEtqSLhxdGrqkz2oW7icNuc20r7yf9NxRJCrg@mail.gmail.com>
	<CAJTo0LbZErNQz=cmq4ZrKRt3wYcN5cR-+1BTnqDU+kireAoT=w@mail.gmail.com>
	<CAOT_U5bJVDqQRepCSxfgP_yF5P4jym1s6E489NMJgQR_8E=hMw@mail.gmail.com>
	<CAJTo0LYX9d0kqNcs-gXB8PXwptJ7Bsvr=_j43ikrd0vFG=g_TQ@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Fri, 31 Aug 2018 13:54:22 +0200
Message-ID: <CAOT_U5a=nKTVxA2sjUiZVm6oA8JQWq2UDQBHGNdHL_zr_j0b5w@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 31 Aug 2018 11:54:24 -0000
Content-Type: multipart/alternative; boundary="0000000000003ec4d60574b9da0a"

--0000000000003ec4d60574b9da0a
Content-Type: text/plain; charset="UTF-8"

Great, that's quite clean.
Opting for that, thanks Ross.

Be Well,
Alan

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

--0000000000003ec4d60574b9da0a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Great, that&#39;s quite clean.=C2=A0<div>Opting for that, =
thanks Ross.</div><div><br></div><div>Be Well,</div><div>Alan</div></div><d=
iv class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Aug 31, 201=
8 at 1:47 PM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.bur=
ton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><span class=3D"">On 31 August 2018 at 1=
2:45, Alan Martinovic &lt;<a href=3D"mailto:alan.martinovic@senic.com">alan=
.martinovic@senic.com</a>&gt; wrote:<br>
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

--0000000000003ec4d60574b9da0a--
