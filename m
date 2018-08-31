Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C396E009AA; Fri, 31 Aug 2018 04:24:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7457CE007AD
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2018 04:24:47 -0700 (PDT)
Received: by mail-oi0-f49.google.com with SMTP id r69-v6so21050247oie.3
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2018 04:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=J41bNU0y0pXKWVuYcm7Wq8e/8A4ZYtx+iBMeNaAXvxc=;
	b=Mgyo91q5sI5G2BSGmZmVAv1vv0FA06ADeoSIoKiGavZpMnC4rZo406qCghem5MCZXp
	ivj/yf3V2tE4tMMYaTxHlE6y3WE05dOuDp3VogVKNwrYC9Z4jldQ044T3kJ4uspBSVwx
	F8mchRLg+gWJbUIkK6GHfQxrGWkavrtAqQnQQKlZHYNKkEO7FaLGgNvVXYMrbA+NG1qF
	1rb5/e1WUjHwZRIvOuRyJhvpbPJqYC+Og3XWep/QmRgK6RJcX88K56WsaBJeGyFr+JGA
	39aPr7d97zCutmS5Zmp4Qgr8iIEnyoRi+ludREzw/IueM9/fSTOkucANBJLPCoU4u6rM
	kZ2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=J41bNU0y0pXKWVuYcm7Wq8e/8A4ZYtx+iBMeNaAXvxc=;
	b=W9C0sQojXRFAiCVetCA5H7ws1YZoh73lwFTWDCjruom7tv2J4zvoimGn3boiaR35DY
	mEvgzfuTQwGLDRtD6Tu1yBxCyx7NcmYFhtaiSEGjC7stqv4lYJIRbHtGf+hVcGhpyAVz
	720IP0mtGVMU8teh/CJ3ukjVdqrCJzZtZhAFEFM0eVN0lKq7a9w7nn27pNlncn83E4+e
	FRbt3avG5++0+RnfdqbreEoaKbm6uHczjCuVSZULHWIhEGbG136N+ANMNPPJrUO80Ncb
	zj/NlpQbaR+zjllZrAvRJAV7BTq8O0jrwB7yt6HCu5kORLFSwdmvJACLQW6npOzg5CT1
	9+iw==
X-Gm-Message-State: APzg51CVw2NoxSm/4xmD/c6NjpP+aLe+74FShYTQMtE2z0u+zo1Qxxv7
	mC8RQT6wrt2pZ6zADbIcuhTLKHrM4atfAdMo9M0rX2PjVzM=
X-Google-Smtp-Source: ANB0VdZXUit9nte2UYM2Pwon37xaI+xbNYSJwx+MVb6u06EhXqSP23PnBfjb4XFGxszwqXjrjDu1xOP9Xjkx2DX7bxo=
X-Received: by 2002:aca:32d5:: with SMTP id
	y204-v6mr7029936oiy.85.1535714686866; 
	Fri, 31 Aug 2018 04:24:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:30ad:0:0:0:0:0 with HTTP; Fri, 31 Aug 2018 04:24:46
	-0700 (PDT)
In-Reply-To: <CAJTo0LafDpq-n3j8zjkk0jKBy-gtp5pd5Xr94D8k8he1mCmSmA@mail.gmail.com>
References: <CAOT_U5ZjnsD9O1qrewUAtqBp+0_306Gx1s1nS8MP3upJpuDiLA@mail.gmail.com>
	<CANNYZj_HLD3qC30b32W-hH2n4QaGYsNQ=XP2Xa1EHcMJny1Syw@mail.gmail.com>
	<CAJTo0LafDpq-n3j8zjkk0jKBy-gtp5pd5Xr94D8k8he1mCmSmA@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Fri, 31 Aug 2018 13:24:46 +0200
Message-ID: <CAOT_U5bX8HE_8tEtqSLhxdGrqkz2oW7icNuc20r7yf9NxRJCrg@mail.gmail.com>
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
X-List-Received-Date: Fri, 31 Aug 2018 11:24:52 -0000
Content-Type: multipart/alternative; boundary="000000000000632dc30574b97029"

--000000000000632dc30574b97029
Content-Type: text/plain; charset="UTF-8"

Thanks Ross
this is what more or less what I'm doing.
What I haven't found a way to do from python is making modifications from
the initialized build directory.

I'd like to do that to change things in conf/local.conf.
For example generate DISTRO_VERSION from git describe --tags

That is something that needs to happen in between
. oe-init-build-env  and bitbake foo







On Fri, Aug 31, 2018 at 1:02 PM, Burton, Ross <ross.burton@intel.com> wrote:

> On 31 August 2018 at 11:57, Alexander Kanavin <alex.kanavin@gmail.com>
> wrote:
> > 2018-08-31 12:49 GMT+02:00 Alan Martinovic <alan.martinovic@senic.com>:
> >> am just in the process of forming a base for automated nightly builds.
> >> The goal is to have the build process run every night and report what
> >>  the status was.
> >>
> >> I've opted for python for all the conditionals and checks  and then have
> >> external
> >> bash scripts that actually sets the environment and invokes bitbake.
> >>
> >> Did it like that because I didn't find a clean way so far to deal with
> >>
> >>     source oe/oe-init-build-env
> >>
> >> from python.
> >>
> >>
> >> Would like to hear how did you script bitbake and how does your setup
> look
> >> like?
> >
> > I guess you should look at what the Yocto project itself is using:
> >
> > http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder2/about/
> > http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder-helper/about/
>
> Alex beat me to do this, but if you want something that does a lot
> less then this is actually really simple:
>
> subprocess.call(". oe-init-build-env ; bitbake foo", shell=True)
>
> Just use shell=True and invoke init-build-env every time you call bitbake.
>
> Ross
>

--000000000000632dc30574b97029
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Thanks Ross<br></div><div dir=3D"ltr=
"><div>this is what more or less what I&#39;m doing.</div><div>What I haven=
&#39;t found a way to do from python is making modifications from the initi=
alized build directory.</div><div><br></div><div>I&#39;d like to do that to=
 change things in conf/local.conf.</div><div>For example generate=C2=A0DIST=
RO_VERSION from git describe --tags</div><div><br></div><div>That is someth=
ing that needs to happen in between=C2=A0</div><div><span style=3D"font-siz=
e:12.8px;background-color:rgb(255,255,255);text-decoration-style:initial;te=
xt-decoration-color:initial;float:none;display:inline">. oe-init-build-env=
=C2=A0 and bitbake foo</span></div><div><br></div><div><br></div><div><br><=
/div><div><br></div><div><br></div><div><div><br></div></div></div></div></=
div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Aug 3=
1, 2018 at 1:02 PM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ro=
ss.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span>=
 wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=
=3D"h5">On 31 August 2018 at 11:57, Alexander Kanavin &lt;<a href=3D"mailto=
:alex.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt; wrote:<br>
&gt; 2018-08-31 12:49 GMT+02:00 Alan Martinovic &lt;<a href=3D"mailto:alan.=
martinovic@senic.com">alan.martinovic@senic.com</a>&gt;:<br>
&gt;&gt; am just in the process of forming a base for automated nightly bui=
lds.<br>
&gt;&gt; The goal is to have the build process run every night and report w=
hat<br>
&gt;&gt;=C2=A0 the status was.<br>
&gt;&gt;<br>
&gt;&gt; I&#39;ve opted for python for all the conditionals and checks=C2=
=A0 and then have<br>
&gt;&gt; external<br>
&gt;&gt; bash scripts that actually sets the environment and invokes bitbak=
e.<br>
&gt;&gt;<br>
&gt;&gt; Did it like that because I didn&#39;t find a clean way so far to d=
eal with<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0source oe/oe-init-build-env<br>
&gt;&gt;<br>
&gt;&gt; from python.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Would like to hear how did you script bitbake and how does your se=
tup look<br>
&gt;&gt; like?<br>
&gt;<br>
&gt; I guess you should look at what the Yocto project itself is using:<br>
&gt;<br>
&gt; <a href=3D"http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder2/abo=
ut/" rel=3D"noreferrer" target=3D"_blank">http://git.yoctoproject.org/<wbr>=
cgit.cgi/yocto-autobuilder2/<wbr>about/</a><br>
&gt; <a href=3D"http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder-help=
er/about/" rel=3D"noreferrer" target=3D"_blank">http://git.yoctoproject.org=
/<wbr>cgit.cgi/yocto-autobuilder-<wbr>helper/about/</a><br>
<br>
</div></div>Alex beat me to do this, but if you want something that does a =
lot<br>
less then this is actually really simple:<br>
<br>
subprocess.call(&quot;. oe-init-build-env ; bitbake foo&quot;, shell=3DTrue=
)<br>
<br>
Just use shell=3DTrue and invoke init-build-env every time you call bitbake=
.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--000000000000632dc30574b97029--
