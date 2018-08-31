Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C837AE009AA; Fri, 31 Aug 2018 04:45:42 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66883E007AD
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2018 04:45:41 -0700 (PDT)
Received: by mail-oi0-f45.google.com with SMTP id k12-v6so21107566oiw.8
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2018 04:45:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=9LuvXA/siyY2nfil/31L1FQL1/rPKKSTrrKyAeDfAnk=;
	b=y8ONBK7zJVGmttwz5iis0tK/Sa9jn+/gaDR8Ov4217Tvsh2ICww0O5jkLKeKkEB51q
	akAoROnb1r5p7nxUUeSaYMH57dMH04uRDIzlq7ZQiEGn4nvWTBagOsaxJKEKh6BYOfrK
	KfSzsa+iIAhTnlAYp596wvgkfNuXtuHryZr0j+4wv7j8NrL7TWeCaekw83cOW+WPMppt
	LgVx34ZtxD0KVnnUcdhu5E+s6YjGAFVH6r4nG8bs8pi3mOslgOq381TRqD54TteRk6VP
	mlW1Z+hB6UVk2pSsE/rPV2sbN8/HSKtOWCUy0wgVICbyIGiNmBUvioHGgiZFjkhLyrb3
	422g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=9LuvXA/siyY2nfil/31L1FQL1/rPKKSTrrKyAeDfAnk=;
	b=uDiEp/VyAeL7uUVHrpag0bhCr8EVfDAGVQk5ezTSx7jZKi/hufXQ/IOltJLSjzbYHX
	mTZGbVMMZ6fyAt/Wf/zwOJuMLx1uSWcC17yVTj7BaabYIxDTbXL2T91ezyxQwew1pdAj
	9a+tz6X+B9HnGMKMxvzUM5JBwp4WHesQ9Co3jV4D/T4RAfNMI+ucN3HrhwDTdLz5r+sW
	BOApgk5zggeyp9nXjTYlQqiAk2d9dtVAOB99FuHI359rklqAFti+92Sr/Gc74+5/O6H4
	n238bHlfxgBHX5bw3zyAy2B+BBm/RWU1xfeLQMmIlDoDUZ523XaCVE95wpj+x33hbzB8
	vA8g==
X-Gm-Message-State: APzg51BU5rTN3s+wBi62mXKTrZF6cexBzZicfx9LY9TML+aqGA/kELJu
	U4b2yGwOMZIEtwVtJpnNV7zj+et02GqlTXigNbEFUA==
X-Google-Smtp-Source: ANB0VdZgjIeFyBCg3b/GpFw8m+jyiPqCPTHtz0ijJni9OC48aO2DfzAytxBpQW7F2BBeO7xVPKb9CqtY7Jb21miIMEQ=
X-Received: by 2002:aca:d706:: with SMTP id o6-v6mr7263484oig.45.1535715940750;
	Fri, 31 Aug 2018 04:45:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:30ad:0:0:0:0:0 with HTTP; Fri, 31 Aug 2018 04:45:39
	-0700 (PDT)
In-Reply-To: <CAJTo0LbZErNQz=cmq4ZrKRt3wYcN5cR-+1BTnqDU+kireAoT=w@mail.gmail.com>
References: <CAOT_U5ZjnsD9O1qrewUAtqBp+0_306Gx1s1nS8MP3upJpuDiLA@mail.gmail.com>
	<CANNYZj_HLD3qC30b32W-hH2n4QaGYsNQ=XP2Xa1EHcMJny1Syw@mail.gmail.com>
	<CAJTo0LafDpq-n3j8zjkk0jKBy-gtp5pd5Xr94D8k8he1mCmSmA@mail.gmail.com>
	<CAOT_U5bX8HE_8tEtqSLhxdGrqkz2oW7icNuc20r7yf9NxRJCrg@mail.gmail.com>
	<CAJTo0LbZErNQz=cmq4ZrKRt3wYcN5cR-+1BTnqDU+kireAoT=w@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Fri, 31 Aug 2018 13:45:39 +0200
Message-ID: <CAOT_U5bJVDqQRepCSxfgP_yF5P4jym1s6E489NMJgQR_8E=hMw@mail.gmail.com>
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
X-List-Received-Date: Fri, 31 Aug 2018 11:45:42 -0000
Content-Type: multipart/alternative; boundary="0000000000001fe6710574b9bbb5"

--0000000000001fe6710574b9bbb5
Content-Type: text/plain; charset="UTF-8"

Fair enough, I gave an example with a simple workaround. :)

But you do have a point there, if I'm getting you answer right on a broader
level.
Is it something like this?

> Instead of setting the environment only once and running bitbake multiple
times
> just make the environment sourcing and bitbake execution an atomic
operation.


So if I wanted to automate i.e.:

. oe-init-build-env mybuild
bitbake -c cleanall failure_prone_package
bitbake failure_prone_package
bitbake foo #image build

It's fine to do it like this:

subprocess.call(". oe-init-build-env mybuild ; bitbake -c cleanall
failure_prone_package", shell=True)
subprocess.call(". oe-init-build-env mybuild ; bitbake failure_prone_package",
shell=True)
subprocess.call(". oe-init-build-env mybuild ; bitbake foo", shell=True)















On Fri, Aug 31, 2018 at 1:30 PM, Burton, Ross <ross.burton@intel.com> wrote:

> On 31 August 2018 at 12:24, Alan Martinovic <alan.martinovic@senic.com>
> wrote:
> > Thanks Ross
> > this is what more or less what I'm doing.
> > What I haven't found a way to do from python is making modifications from
> > the initialized build directory.
> >
> > I'd like to do that to change things in conf/local.conf.
> > For example generate DISTRO_VERSION from git describe --tags
> >
> > That is something that needs to happen in between
> > . oe-init-build-env  and bitbake foo
>
> subprocess.call(". oe-init-build-env mybuild", shell=True)
> # call git-desribe, write to mybuild/conf/auto.conf
> subprocess.call(". oe-init-build-env mybuild ; bitbake foo", shell=True)
>
> Ross
>

--0000000000001fe6710574b9bbb5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Fair enough, I gave an example with a simple workaround. :=
)<div><br></div><div>But you do have a point there, if I&#39;m getting you =
answer right on a broader level.</div><div>Is it something like this?=C2=A0=
</div><div><br></div><div>&gt; Instead of setting the environment only once=
 and running bitbake multiple times</div><div>&gt; just make the environmen=
t sourcing and bitbake execution an atomic operation.</div><div><br></div><=
div><br></div><div>So if I wanted to automate i.e.:</div><div><br></div><di=
v><span style=3D"font-size:12.8px;background-color:rgb(255,255,255);text-de=
coration-style:initial;text-decoration-color:initial;float:none;display:inl=
ine">. oe-init-build-env mybuild</span><br></div><div><span style=3D"font-s=
ize:12.8px;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial;float:none;display:inline">bitbake -c cleanal=
l failure_prone_package</span></div><div><div style=3D"font-size:small;text=
-decoration-style:initial;text-decoration-color:initial"><span style=3D"fon=
t-size:12.8px;background-color:rgb(255,255,255);text-decoration-style:initi=
al;text-decoration-color:initial;float:none;display:inline">bitbake=C2=A0<s=
pan style=3D"text-decoration-style:initial;text-decoration-color:initial;fl=
oat:none;display:inline">failure_prone_package</span></span></div><span sty=
le=3D"font-size:12.8px;background-color:rgb(255,255,255);text-decoration-st=
yle:initial;text-decoration-color:initial;float:none;display:inline">bitbak=
e foo #image build</span></div><div><span style=3D"font-size:12.8px"><br></=
span></div><div><span style=3D"font-size:12.8px">It&#39;s fine to do it lik=
e this:</span></div><div><span style=3D"font-size:12.8px"><br></span></div>=
<div><span style=3D"font-size:12.8px"><span style=3D"background-color:rgb(2=
55,255,255);text-decoration-style:initial;text-decoration-color:initial;flo=
at:none;display:inline">subprocess.call(&quot;. oe-init-build-env mybuild ;=
 <span style=3D"text-decoration-style:initial;text-decoration-color:initial=
;float:none;display:inline">bitbake -c cleanall failure_prone_package</span=
>&quot;, shell=3DTrue)</span></span></div><div><span style=3D"font-size:12.=
8px"><span style=3D"text-decoration-style:initial;text-decoration-color:ini=
tial;background-color:rgb(255,255,255);float:none;display:inline">subproces=
s.call(&quot;. oe-init-build-env mybuild ;<span>=C2=A0</span><span style=3D=
"text-decoration-style:initial;text-decoration-color:initial;float:none;dis=
play:inline"><span style=3D"background-color:rgb(255,255,255);text-decorati=
on-style:initial;text-decoration-color:initial;float:none;display:inline">b=
itbake=C2=A0</span><span style=3D"text-decoration-style:initial;text-decora=
tion-color:initial;float:none;display:inline">failure_prone_package</span><=
/span>&quot;, shell=3DTrue)</span><br class=3D"gmail-Apple-interchange-newl=
ine"><span style=3D"text-decoration-style:initial;text-decoration-color:ini=
tial;background-color:rgb(255,255,255);float:none;display:inline">subproces=
s.call(&quot;. oe-init-build-env mybuild ;<span>=C2=A0</span><span style=3D=
"text-decoration-style:initial;text-decoration-color:initial;float:none;dis=
play:inline"><span style=3D"background-color:rgb(255,255,255);text-decorati=
on-style:initial;text-decoration-color:initial;float:none;display:inline">b=
itbake foo</span></span>&quot;, shell=3DTrue)</span><br class=3D"gmail-Appl=
e-interchange-newline"><br><div class=3D"gmail-yj6qo gmail-ajU" style=3D"ou=
tline:none;padding:10px 0px;width:22px;margin:2px 0px 0px;background-color:=
rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initia=
l"><br class=3D"gmail-Apple-interchange-newline"></div><br></span></div><di=
v><span style=3D"font-size:12.8px"><br></span></div><div><span style=3D"fon=
t-size:12.8px"><br></span></div><div><span style=3D"font-size:12.8px"><br><=
/span></div><div><span style=3D"font-size:12.8px"><br></span></div><div><sp=
an style=3D"font-size:12.8px"><br class=3D"gmail-Apple-interchange-newline"=
></span><br></div><div><br></div><div><br></div><div><br></div><div><br></d=
iv><div><br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_=
quote">On Fri, Aug 31, 2018 at 1:30 PM, Burton, Ross <span dir=3D"ltr">&lt;=
<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@inte=
l.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=
=3D"">On 31 August 2018 at 12:24, Alan Martinovic &lt;<a href=3D"mailto:ala=
n.martinovic@senic.com">alan.martinovic@senic.com</a>&gt; wrote:<br>
&gt; Thanks Ross<br>
&gt; this is what more or less what I&#39;m doing.<br>
&gt; What I haven&#39;t found a way to do from python is making modificatio=
ns from<br>
&gt; the initialized build directory.<br>
&gt;<br>
&gt; I&#39;d like to do that to change things in conf/local.conf.<br>
&gt; For example generate DISTRO_VERSION from git describe --tags<br>
&gt;<br>
&gt; That is something that needs to happen in between<br>
&gt; . oe-init-build-env=C2=A0 and bitbake foo<br>
<br>
</span>subprocess.call(&quot;. oe-init-build-env mybuild&quot;, shell=3DTru=
e)<br>
# call git-desribe, write to mybuild/conf/auto.conf<br>
subprocess.call(&quot;. oe-init-build-env mybuild ; bitbake foo&quot;, shel=
l=3DTrue)<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--0000000000001fe6710574b9bbb5--
