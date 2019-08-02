Return-Path: <stangerm2@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AECF1E00EC5; Fri,  2 Aug 2019 08:16:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (stangerm2[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.50 listed in list.dnswl.org]
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com
	[209.85.210.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48308E00AE4
	for <yocto@yoctoproject.org>; Fri,  2 Aug 2019 08:16:49 -0700 (PDT)
Received: by mail-ot1-f50.google.com with SMTP id r6so78473832oti.3
	for <yocto@yoctoproject.org>; Fri, 02 Aug 2019 08:16:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=AF/reJ8P3IPuhSIQh3fFDs/f8bpgVndc98UtJcxXUEg=;
	b=IFFGQkEQNv2M9VPkirHO+lNwN9qzIheF/lkmQW+Xiq644a+bDbVAjJrTVkeriU9L01
	9CC6jtq67zJwQfcTtHZHwRFFYqCEQ5IbKncQkdvE18LVxu+wet6fY/liDF4j0hN8EAc+
	T4+E/gUitM5W6R2swl0naB//qvq6jF1qGxfOCNhNp87Uh4b/YWJsc+mLcFs7RkS3PZqF
	tSBXAXo3Iaae4xaP2HGNkI158S4CsQfwczwPffkYKuis4ewAKk5kouDFkF2f9itvhJCN
	74NSaWN01xIZaeTBOoG0uRvFqbplKQGui+XhJNXUj+9J/tf2d1QdsAxA3IoVnXCK4Lq2
	CTHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=AF/reJ8P3IPuhSIQh3fFDs/f8bpgVndc98UtJcxXUEg=;
	b=beWOAmMTCrSMm4zLz20PLSJLIFt+Zywd6mB7Im6ozpSObx1tvyVMrxBeiKyLaep40W
	NaIt3jyt/xrro7T+/srevk3j7Fnc9kzYLPhqM5W+YcqPSqK8rMwZh5e9adMgNnLTR83r
	matIBaGX14Y53jMbfM4pDp9/78qO/EomRUIm9I4FpG5hRNs9JfOIF5HyCik0naaVaCwX
	xKmiRyQqWCMhOxsohdsirNK7cdhFqb3LaOUM8YDISmnT9BAcrAZF/xbmmrYucGX8x5vG
	4LNgI+kr80aqAFAJLBZ9q7ykVjKJB14xWSrolCc7f5R0v+yqpPEv7PsDtAr9Q2B0+vnz
	h9tg==
X-Gm-Message-State: APjAAAV5fMQF+h3L0yW2rLLL3CWYgdA8PPCNhgshekN/XUkGrM9vHrZn
	MPm2YQZ65D99tyNpaWGcpbiPuciUxZ/w9QScJA==
X-Google-Smtp-Source: APXvYqz8tN7EKSQ/v0YAvlA8O6ugpVFhlQZYcm9ztY6t/UoD3PjBlKDGyr+IFUp1/7folGG9pYvlBO1+OaqgDbe1bzc=
X-Received: by 2002:a05:6830:14e:: with SMTP id
	j14mr46150000otp.246.1564759008507; 
	Fri, 02 Aug 2019 08:16:48 -0700 (PDT)
MIME-Version: 1.0
References: <LO2P265MB116541EFF189E7FE94EA99BFDEDF0@LO2P265MB1165.GBRP265.PROD.OUTLOOK.COM>
	<CAMKF1sokGkGmND=ahwFupPXpV-0e2G+mkK-5_MnEMBhOaqcMRg@mail.gmail.com>
In-Reply-To: <CAMKF1sokGkGmND=ahwFupPXpV-0e2G+mkK-5_MnEMBhOaqcMRg@mail.gmail.com>
From: matthew stanger <stangerm2@gmail.com>
Date: Fri, 2 Aug 2019 09:16:12 -0600
Message-ID: <CAGni2MhbQzfe5M4hnCE1JQQAq_2JUPbf5M_XDGixkY5bgdGitg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Edward Tyrrell <ed@disignconsultants.com>
Subject: Re: Patching /lib/systemd/system/systemd-networkd-wait-online.service
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
X-List-Received-Date: Fri, 02 Aug 2019 15:16:52 -0000
Content-Type: multipart/alternative; boundary="000000000000dc802b058f23d859"

--000000000000dc802b058f23d859
Content-Type: text/plain; charset="UTF-8"

>
> Is ...../sources/poky/meta/recipes-core/systemd/systemd_234.bb the proper
> place to patch this service file?

You should really put this in a `.bbappend` instead and also that
`.bbappend` should be in your own meta-layer if possible. In case you want
to upgrade stuff in the future it makes life a lot easier.

On Thu, Aug 1, 2019 at 11:52 PM Khem Raj <raj.khem@gmail.com> wrote:

> you should be patching ./units/systemd-networkd-wait-online.service.in
> file
>
> On Thu, Aug 1, 2019 at 8:14 AM Edward Tyrrell <ed@disignconsultants.com>
> wrote:
> >
> > Hi,
> >
> >
> > I'm trying to add a patch to the systemd layer to amend
> systemd-networkd-wait-online.service. Within the service I simply want to
> add --any as a parameter.
> >
> >
> > The problem is my is bitbake fails with:
> >
> > Applying patch 0020-systemd-networkd-wait-online-service.patch
> > can't find file to patch at input line 3
> > Perhaps you used the wrong -p or --strip option?
> > The text leading up to this was:
> > --------------------------
> > |--- a/units/systemd-networkd-wait-online.service 2019-05-23
> 13:38:23.000000000 +0100
> > |+++ b/units/systemd-networkd-wait-online.service 2019-07-31
> 08:30:40.823968051 +0100
> > --------------------------
> > No file to patch.  Skipping patch.
> > 1 out of 1 hunk ignored
> > Patch 0020-systemd-networkd-wait-online-service.patch does not apply
> (enforce with -f)
> >
> >
> >
> > My ...../sources/poky/meta/recipes-core/systemd/systemd_234.bbappend
> consists of:
> >
> >
> > FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> > SRC_URI += "file://0020-systemd-networkd-wait-online-service.patch"
> >
> > My patch file:
> >
> > --- a/units/systemd-networkd-wait-online.service 2019-05-23
> 13:38:23.000000000 +0100
> > +++ b/units/systemd-networkd-wait-online.service 2019-07-31
> 08:30:40.823968051 +0100
> > @@ -16,7 +16,7 @@
> >
> >  [Service]
> >  Type=oneshot
> > -ExecStart=/lib/systemd/systemd-networkd-wait-online
> > +ExecStart=/lib/systemd/systemd-networkd-wait-online --any
> >  RemainAfterExit=yes
> >
> >  [Install]
> >
> >
> -------------------------------------------------------------------------------
> >
> >
> > So it finds the patch but struggles locating the service file to patch
> within the build. Any ideas where I'm going wrong?
> >
> > Is ...../sources/poky/meta/recipes-core/systemd/systemd_234.bb the
> proper place to patch this service file?
> >
> >
> >
> > Regards,
> >
> >
> > Edward
> >
> >
> >
> >
> > This message and any attachment are confidential and may be privileged
> or otherwise protected from disclosure. If you are not the intended
> recipient, please telephone or email the sender and delete this message and
> any attachment from your system. If you are not the intended recipient you
> must not copy this message or attachment or disclose the contents to any
> other person.
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000dc802b058f23d859
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">Is ...../sources/poky/meta/recipes-core/systemd/<a href=3D"http:=
//systemd_234.bb/" rel=3D"noreferrer" target=3D"_blank">systemd_234.bb</a>=
=C2=A0the proper place to patch this service file?</blockquote><div>You sho=
uld really put this in a `.bbappend` instead and also that `.bbappend` shou=
ld be in your own meta-layer if possible. In case you want to upgrade stuff=
 in the future it makes life a lot easier.</div></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Aug 1, 2019 =
at 11:52 PM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gma=
il.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">you should be patching ./units/<a href=3D"http://systemd-networkd-wai=
t-online.service.in" rel=3D"noreferrer" target=3D"_blank">systemd-networkd-=
wait-online.service.in</a> file<br>
<br>
On Thu, Aug 1, 2019 at 8:14 AM Edward Tyrrell &lt;<a href=3D"mailto:ed@disi=
gnconsultants.com" target=3D"_blank">ed@disignconsultants.com</a>&gt; wrote=
:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt;<br>
&gt; I&#39;m trying to add a patch to the systemd layer to amend systemd-ne=
tworkd-wait-online.service. Within the service I simply want to add --any a=
s a parameter.<br>
&gt;<br>
&gt;<br>
&gt; The problem is my is bitbake fails with:<br>
&gt;<br>
&gt; Applying patch 0020-systemd-networkd-wait-online-service.patch<br>
&gt; can&#39;t find file to patch at input line 3<br>
&gt; Perhaps you used the wrong -p or --strip option?<br>
&gt; The text leading up to this was:<br>
&gt; --------------------------<br>
&gt; |--- a/units/systemd-networkd-wait-online.service 2019-05-23 13:38:23.=
000000000 +0100<br>
&gt; |+++ b/units/systemd-networkd-wait-online.service 2019-07-31 08:30:40.=
823968051 +0100<br>
&gt; --------------------------<br>
&gt; No file to patch.=C2=A0 Skipping patch.<br>
&gt; 1 out of 1 hunk ignored<br>
&gt; Patch 0020-systemd-networkd-wait-online-service.patch does not apply (=
enforce with -f)<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; My ...../sources/poky/meta/recipes-core/systemd/systemd_234.bbappend c=
onsists of:<br>
&gt;<br>
&gt;<br>
&gt; FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:&quot;<br>
&gt; SRC_URI +=3D &quot;file://0020-systemd-networkd-wait-online-service.pa=
tch&quot;<br>
&gt;<br>
&gt; My patch file:<br>
&gt;<br>
&gt; --- a/units/systemd-networkd-wait-online.service 2019-05-23 13:38:23.0=
00000000 +0100<br>
&gt; +++ b/units/systemd-networkd-wait-online.service 2019-07-31 08:30:40.8=
23968051 +0100<br>
&gt; @@ -16,7 +16,7 @@<br>
&gt;<br>
&gt;=C2=A0 [Service]<br>
&gt;=C2=A0 Type=3Doneshot<br>
&gt; -ExecStart=3D/lib/systemd/systemd-networkd-wait-online<br>
&gt; +ExecStart=3D/lib/systemd/systemd-networkd-wait-online --any<br>
&gt;=C2=A0 RemainAfterExit=3Dyes<br>
&gt;<br>
&gt;=C2=A0 [Install]<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
---------<br>
&gt;<br>
&gt;<br>
&gt; So it finds the patch but struggles locating the service file to patch=
 within the build. Any ideas where I&#39;m going wrong?<br>
&gt;<br>
&gt; Is ...../sources/poky/meta/recipes-core/systemd/<a href=3D"http://syst=
emd_234.bb" rel=3D"noreferrer" target=3D"_blank">systemd_234.bb</a> the pro=
per place to patch this service file?<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Regards,<br>
&gt;<br>
&gt;<br>
&gt; Edward<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; This message and any attachment are confidential and may be privileged=
 or otherwise protected from disclosure. If you are not the intended recipi=
ent, please telephone or email the sender and delete this message and any a=
ttachment from your system. If you are not the intended recipient you must =
not copy this message or attachment or disclose the contents to any other p=
erson.<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000dc802b058f23d859--
