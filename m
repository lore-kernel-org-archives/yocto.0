Return-Path: <sunil.mukundan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73C93E00901; Tue, 23 Oct 2018 21:36:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (sunil.mukundan[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.169 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
	[209.85.222.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7250DE008D7
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2018 21:36:26 -0700 (PDT)
Received: by mail-qk1-f169.google.com with SMTP id p3-v6so2363380qkb.5
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2018 21:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=AGpSvQV24XPFyPMFJILAHKsfis/00AjeW+MfEiwIMDQ=;
	b=ttl+zX2hhveoyS+6E6chjPKbUw+eVacSLeKZqckGRM83RvYz5rB5LAezqcpmtbpnw0
	NMjN8aIOf2+Q/H4SR4hBUQcf3vutc3gGIcMxxvo1BNzv3HfRXAxQinfalmroo2o3u3Ig
	I7IgOuaNmE0tRXFfWmgJ2qIZSprTebCLSamXHxnsZ0iCOXcKeK6lSh82RScUEgn2umi6
	Vr6f3DZfpNsVPk4q0H8H8UCNw5T+JtFyl2Exz4DR8C8ecX7XL86Co9mNFSuCsWcxrwu+
	YL3zMkztpHON3l37RS79nT1JcIPB8dVNb2k+QbUsWjqzuGqePwgd/6LObJeLbMThRadi
	VzsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=AGpSvQV24XPFyPMFJILAHKsfis/00AjeW+MfEiwIMDQ=;
	b=fGtDRaT+j8DDMcPjrp4J6wm79NoC6tD+i6RaAAtGmXJ/1BDakjfPP43wfqYlhg/wOv
	jUACD0d1nKE/He5+e5K1Ar7vx55ScwXOcOZxEF9fbiRzRjgZ57DbzLLso+CPP89J3CHj
	iDp0al429zEZd1boqEGOr+UBxKGSZCRN+pb3ZiYVVs3JCarozWI58QI7H+MD2J3UEzkU
	PEn4eOmgvYdN2EAbozWQmsmBF1XKRW/8LHo/X6O4CiQNuTgzffsICIA456Vped87KxVY
	r6st6nnQIL8B/WWRxs+WtsyvyQkaAtADoDdix47PZVHrBTuuwyBR7/sDpJnCfX6fzX49
	x+OQ==
X-Gm-Message-State: AGRZ1gL1rQOAKS9leSczzosDRf/UKJbdI8vjs0WMP25KmhX9wjctrRd+
	WRLwMuDODlAb13SMOLcDQxID9V3OLReGHTKzqptVYAZm
X-Google-Smtp-Source: AJdET5fYtnHz4aSPlXCFjDGBuyi3TBci/HTowhN+QYTpBypKoObCHpSy3nf53glB04E0h65VHmulzw9ggRmRyd2kgYM=
X-Received: by 2002:a37:c08f:: with SMTP id v15mr958608qkv.256.1540355785613; 
	Tue, 23 Oct 2018 21:36:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAD0Q=Of26LUD-3pVPp0GGjLAv9JMCdqGaL4GCMhoPS3KTz5kOg@mail.gmail.com>
	<38dd2f69-d260-d297-538f-d1bfc79dc9a2@windriver.com>
	<CAD0Q=OfY6PU7Oabf_W_XZtRh3bK+vswUiXOuPqw4qAhhbZdOug@mail.gmail.com>
In-Reply-To: <CAD0Q=OfY6PU7Oabf_W_XZtRh3bK+vswUiXOuPqw4qAhhbZdOug@mail.gmail.com>
From: Sunil Mukundan <sunil.mukundan@gmail.com>
Date: Wed, 24 Oct 2018 10:06:14 +0530
Message-ID: <CAD0Q=OcVwUSa3D+5zVgr49Kfx_vsmiioOpucXzvhZ9Ymr33+Mw@mail.gmail.com>
To: Qi.Chen@windriver.com
Cc: yocto@yoctoproject.org
Subject: Re: eSDK installation failing with sig computed mismatch with sig locked
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
X-List-Received-Date: Wed, 24 Oct 2018 04:36:27 -0000
Content-Type: multipart/alternative; boundary="0000000000006de4060578f20756"

--0000000000006de4060578f20756
Content-Type: text/plain; charset="UTF-8"

Hi Chen Qi

We got some help from the Yocto team and this seems to be a known issue.
Basically the recipe had these two lines below
SRCREV = "${AUTOREV}"
PV = "master+git${SRCPV}"

These lines force the eSDK to pull the latest code if there is a change in
the revision in the upstream git repo.
Looks like this is a known issue (
https://bugzilla.yoctoproject.org/show_bug.cgi?id=11350). We are looking at
using specific
revisions of the upstream repo to fix this.

Thanks for your help

Best
Sunil Mukundan


On Tue, Oct 23, 2018 at 8:58 AM Sunil Mukundan <sunil.mukundan@gmail.com>
wrote:

> Thanks Chen Qi for the response. Please find my response below
>
> >What does the SRC_URI for the recipe look like?
>
> SRC_URI = "git://github.com/luigirizzo/netmap.git"
>
> Thanks
> Sunil Mukundan
> On Tue, Oct 23, 2018 at 6:58 AM ChenQi <Qi.Chen@windriver.com> wrote:
> >
> > I think the main problem is do_fetch sig mismatch.
> > What does the SRC_URI for the recipe look like?
> >
> > Best Regards,
> > Chen  Qi
> >
> >
> > On 10/22/2018 08:47 PM, Sunil Mukundan wrote:
> > > Hi
> > >
> > > I built an extensible SDK and when installing the SDK, i see the
> > > following WARNINGS first
> > >
> > > WARNING: The netmap-modules:do_fetch sig is computed to be
> > > b53fa14a73271b9f0ce564e413f32468, but the sig is locked to
> > > 614da4fb9135f1f97b291ff05494f53c in SIGGEN_LOCKEDSIGS_t-genericx86-64
> > > The netmap:do_fetch sig is computed to be
> > > b53fa14a73271b9f0ce564e413f32468, but the sig is locked to
> > > 614da4fb9135f1f97b291ff05494f53c in SIGGEN_LOCKEDSIGS_t-genericx86-64
> > > The netmap:do_populate_lic sig is computed to be
> > > 45b8ffb273c02b2fcd201347e4137e19, but the sig is locked to
> > > d4c3de4ecfdc1d70a4129dfbcc68b71d in SIGGEN_LOCKEDSIGS_t-genericx86-64
> > > The netmap-modules:do_populate_lic sig is computed to be
> > > 45b8ffb273c02b2fcd201347e4137e19, but the sig is locked to
> > > d4c3de4ecfdc1d70a4129dfbcc68b71d in SIGGEN_LOCKEDSIGS_t-genericx86-64
> > >
> > > These WARNINGS then (probably) result in the following errors
> > > ERROR: Task netmap.do_prepare_recipe_sysroot attempted to execute
> unexpectedly
> > > ERROR: Task netmap.do_configure attempted to execute unexpectedly
> > > ERROR: Task netmap.do_compile attempted to execute unexpectedly
> > > ERROR: Task netmap.do_install attempted to execute unexpectedly
> > > ERROR: Task netmap.do_package attempted to execute unexpectedly and
> > > should have been setscened
> > > ERROR: Task netmap.do_packagedata attempted to execute unexpectedly
> > > and should have been setscened
> > > ERROR: Task netmap-modules.do_populate_lic attempted to execute
> > > unexpectedly and should have been setscened
> > > ERROR: Task netmap.do_populate_lic attempted to execute unexpectedly
> > > and should have been setscened
> > >
> > > Could someone help me with what could be going wrong?
> > >
> > > I used the usual 'bitbake -c populate_sdk_ext core-image-minimal'
> > > command to build the SDK.
> > >
> > > thanks,
> > > Sunil Mukundan
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000006de4060578f20756
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><font face=3D"monospace, monospace">Hi Chen Qi<br><br>We g=
ot some help from the Yocto team and this seems to be a known issue. Basica=
lly the recipe had these two lines below<br>SRCREV =3D &quot;${AUTOREV}&quo=
t;<br>PV =3D &quot;master+git${SRCPV}&quot;</font><div><font face=3D"monosp=
ace, monospace"><br></font></div><div><font face=3D"monospace, monospace">T=
hese lines force the eSDK to pull the latest code if there is a change in t=
he revision in the upstream git repo.=C2=A0</font></div><div><font face=3D"=
monospace, monospace">Looks like this=C2=A0</font><span style=3D"font-famil=
y:monospace,monospace">is a known issue (</span><a href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D11350" rel=3D"noreferrer" target=3D"_bl=
ank">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11350</a>). <font =
face=3D"monospace, monospace">We are looking at using specific</font></div>=
<div><font face=3D"monospace, monospace">revisions of the upstream repo to =
fix this.</font></div><div><font face=3D"monospace, monospace"><br></font><=
/div><div><font face=3D"monospace, monospace">Thanks for your help</font></=
div><div><font face=3D"monospace, monospace"><br></font></div><div><font fa=
ce=3D"monospace, monospace">Best</font></div><div><font face=3D"monospace, =
monospace">Sunil Mukundan</font></div></div><br><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr">On Tue, Oct 23, 2018 at 8:58 AM Sunil Mukundan &lt;<a =
href=3D"mailto:sunil.mukundan@gmail.com">sunil.mukundan@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">Thanks Chen Qi for the respon=
se. Please find my response below<br>
<br>
&gt;What does the SRC_URI for the recipe look like?<br>
<br>
SRC_URI =3D &quot;git://<a href=3D"http://github.com/luigirizzo/netmap.git"=
 rel=3D"noreferrer" target=3D"_blank">github.com/luigirizzo/netmap.git</a>&=
quot;<br>
<br>
Thanks<br>
Sunil Mukundan<br>
On Tue, Oct 23, 2018 at 6:58 AM ChenQi &lt;<a href=3D"mailto:Qi.Chen@windri=
ver.com" target=3D"_blank">Qi.Chen@windriver.com</a>&gt; wrote:<br>
&gt;<br>
&gt; I think the main problem is do_fetch sig mismatch.<br>
&gt; What does the SRC_URI for the recipe look like?<br>
&gt;<br>
&gt; Best Regards,<br>
&gt; Chen=C2=A0 Qi<br>
&gt;<br>
&gt;<br>
&gt; On 10/22/2018 08:47 PM, Sunil Mukundan wrote:<br>
&gt; &gt; Hi<br>
&gt; &gt;<br>
&gt; &gt; I built an extensible SDK and when installing the SDK, i see the<=
br>
&gt; &gt; following WARNINGS first<br>
&gt; &gt;<br>
&gt; &gt; WARNING: The netmap-modules:do_fetch sig is computed to be<br>
&gt; &gt; b53fa14a73271b9f0ce564e413f32468, but the sig is locked to<br>
&gt; &gt; 614da4fb9135f1f97b291ff05494f53c in SIGGEN_LOCKEDSIGS_t-genericx8=
6-64<br>
&gt; &gt; The netmap:do_fetch sig is computed to be<br>
&gt; &gt; b53fa14a73271b9f0ce564e413f32468, but the sig is locked to<br>
&gt; &gt; 614da4fb9135f1f97b291ff05494f53c in SIGGEN_LOCKEDSIGS_t-genericx8=
6-64<br>
&gt; &gt; The netmap:do_populate_lic sig is computed to be<br>
&gt; &gt; 45b8ffb273c02b2fcd201347e4137e19, but the sig is locked to<br>
&gt; &gt; d4c3de4ecfdc1d70a4129dfbcc68b71d in SIGGEN_LOCKEDSIGS_t-genericx8=
6-64<br>
&gt; &gt; The netmap-modules:do_populate_lic sig is computed to be<br>
&gt; &gt; 45b8ffb273c02b2fcd201347e4137e19, but the sig is locked to<br>
&gt; &gt; d4c3de4ecfdc1d70a4129dfbcc68b71d in SIGGEN_LOCKEDSIGS_t-genericx8=
6-64<br>
&gt; &gt;<br>
&gt; &gt; These WARNINGS then (probably) result in the following errors<br>
&gt; &gt; ERROR: Task netmap.do_prepare_recipe_sysroot attempted to execute=
 unexpectedly<br>
&gt; &gt; ERROR: Task netmap.do_configure attempted to execute unexpectedly=
<br>
&gt; &gt; ERROR: Task netmap.do_compile attempted to execute unexpectedly<b=
r>
&gt; &gt; ERROR: Task netmap.do_install attempted to execute unexpectedly<b=
r>
&gt; &gt; ERROR: Task netmap.do_package attempted to execute unexpectedly a=
nd<br>
&gt; &gt; should have been setscened<br>
&gt; &gt; ERROR: Task netmap.do_packagedata attempted to execute unexpected=
ly<br>
&gt; &gt; and should have been setscened<br>
&gt; &gt; ERROR: Task netmap-modules.do_populate_lic attempted to execute<b=
r>
&gt; &gt; unexpectedly and should have been setscened<br>
&gt; &gt; ERROR: Task netmap.do_populate_lic attempted to execute unexpecte=
dly<br>
&gt; &gt; and should have been setscened<br>
&gt; &gt;<br>
&gt; &gt; Could someone help me with what could be going wrong?<br>
&gt; &gt;<br>
&gt; &gt; I used the usual &#39;bitbake -c populate_sdk_ext core-image-mini=
mal&#39;<br>
&gt; &gt; command to build the SDK.<br>
&gt; &gt;<br>
&gt; &gt; thanks,<br>
&gt; &gt; Sunil Mukundan<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div>

--0000000000006de4060578f20756--
