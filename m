Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4485E004AB
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 14:49:05 -0700 (PDT)
Received: from mail-gg0-f200.google.com ([209.85.161.200])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 11 Sep 2012 14:48:57 -0700
Received: by gglu4 with SMTP id u4so1325827ggl.11
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 14:49:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=JjLM0aVFL2Pj9ZZvbMXUJRqlnLgSo7Ar/JHrfOJQZZs=;
	b=dNaeBugYDqiHs4jiIBGwRBLOpHSfPbbZV4vw2cYpAkRt2enITZ+tjORXuvd+SLno6Q
	LVbqMuCUSyr/1Ai07AcgSRdx9Zb4d+thFdC2bg0KrbKqaam4U3JvqXI/aRMo5A1wKcMP
	p0AVUpyw5qIaM1vXXW0+SdoQUzQq//2OkvtIW7R0RNoQhb1hZ/MMGUuyvPrqHiLo8t1j
	OgQkdgW5KurXbKpTtSv4JoeU4JUC4hftlmLSiDWrQASG9TiPOzbGeccKPPcNGeyqi0pL
	csVwSLSUaEkOZeNTI+GckrwVJ5apMHDSx3L4ES2C1siJGNkqIHY5ilJfMywaIhUQFskr
	58MA==
Received: by 10.224.44.135 with SMTP id a7mr20340400qaf.84.1347400144238;
	Tue, 11 Sep 2012 14:49:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.224.44.135 with SMTP id a7mr20340382qaf.84.1347400144024; Tue,
	11 Sep 2012 14:49:04 -0700 (PDT)
Received: by 10.229.63.1 with HTTP; Tue, 11 Sep 2012 14:49:03 -0700 (PDT)
In-Reply-To: <70CC66F5C30A414DADDA6973E4CA391A67062A@039-SN1MPN1-001.039d.mgd.msft.net>
References: <504EB798.60904@intel.com>
	<70CC66F5C30A414DADDA6973E4CA391A67015B@039-SN1MPN1-001.039d.mgd.msft.net>
	<CAPhnLPCj_NV0-6UagcjUcjhtQpJh53=2F8xqqE=ry-QTPr_19Q@mail.gmail.com>
	<70CC66F5C30A414DADDA6973E4CA391A67062A@039-SN1MPN1-001.039d.mgd.msft.net>
Date: Tue, 11 Sep 2012 14:49:03 -0700
Message-ID: <CAPhnLPB=25cPSHN0O-VcpYRsMyn5uXRQenkjKF-vFZieoodU3A@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>
X-Gm-Message-State: ALoCoQkIoD0INwxx1KkkoRS4eQprtx7/1fg/uaWLUVNcyXjsaK1jMdSLfpC7dRNMXdzYAXHStEnXO+iyCuHDVsq4FRQ1bk23UfQobiPYmNqH8JWq9mAaaZ9k68x8QqTnKBifX7HkicNyiK0AEGsonlGYf6OGUmB3WQ==
Cc: "Purdie, Richard" <richard.purdie@intel.com>,
	Saul Wold <saul.wold@intel.com>,
	Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Milestone 4, RC2 Build
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 11 Sep 2012 21:49:05 -0000
Content-Type: multipart/alternative; boundary=20cf3074b920f473fc04c9740a9a

--20cf3074b920f473fc04c9740a9a
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Sep 11, 2012 at 1:47 PM, McClintock Matthew-B29882 <
B29882@freescale.com> wrote:

> On Tue, Sep 11, 2012 at 3:26 PM, Flanagan, Elizabeth
> <elizabeth.flanagan@intel.com> wrote:
> >
> >
> > On Tue, Sep 11, 2012 at 12:29 PM, McClintock Matthew-B29882
> > <B29882@freescale.com> wrote:
> >>
> >> On Mon, Sep 10, 2012 at 11:01 PM, Saul Wold <saul.wold@intel.com>
> wrote:
> >> >
> >> > Folks,
> >> >
> >> > Given the issues we had with the Eclipse and ADT installer during the
> >> > RC1
> >> > build and we decided to forgo the existing RC1 build and restart with
> an
> >> > RC2.  There have been no changes to the Poky RC1 branch, but we moved
> >> > Eclipse forward to pick up some changes.
> >> >
> >> > The current Autobuilder build artifacts are located at
> >> > http://autobuilder.yoctoproject.org/pub/nightly/20120910-5/
> >> >
> >> > This includes the Eclipse plugin and adt-installer, there should be 2
> >> > versions of the installer if I understood Beth correct, please use the
> >> > one
> >> > marked adt-installer-QA when it's populated.
> >> >
> >> > I have seen 3 build failures, all related to libowl-av and sato
> rootfs,
> >> > they
> >> > are in Atom-pc, qemuppc and mpc8315 targets.  I am going attempt a
> >> > rebuild
> >> > of the nightly-ppc standalone.  There was also a failure in the p1022,
> >> > which
> >> > I think Matthew is aware of.
> >>
> >> This should be fixed for master in meta-fsl-ppc.
> >
> >
> > Matthew, Can you branch meta-fsl-ppc into 1.3_M4? When that's done, I'll
> > rebuild that part and put it into rc2
>
> Branch created.
>

Great. Build is queued up. I'll have the artifacts in once the build is
finished.

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

--20cf3074b920f473fc04c9740a9a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Tue, Sep 11, 2012 at 1:47 PM, McClint=
ock Matthew-B29882 <span dir=3D"ltr">&lt;<a href=3D"mailto:B29882@freescale=
.com" target=3D"_blank">B29882@freescale.com</a>&gt;</span> wrote:<br><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex">
<div class=3D"HOEnZb"><div class=3D"h5">On Tue, Sep 11, 2012 at 3:26 PM, Fl=
anagan, Elizabeth<br>
&lt;<a href=3D"mailto:elizabeth.flanagan@intel.com">elizabeth.flanagan@inte=
l.com</a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt; On Tue, Sep 11, 2012 at 12:29 PM, McClintock Matthew-B29882<br>
&gt; &lt;<a href=3D"mailto:B29882@freescale.com">B29882@freescale.com</a>&g=
t; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Mon, Sep 10, 2012 at 11:01 PM, Saul Wold &lt;<a href=3D"mailto:=
saul.wold@intel.com">saul.wold@intel.com</a>&gt; wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Folks,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Given the issues we had with the Eclipse and ADT installer du=
ring the<br>
&gt;&gt; &gt; RC1<br>
&gt;&gt; &gt; build and we decided to forgo the existing RC1 build and rest=
art with an<br>
&gt;&gt; &gt; RC2. =A0There have been no changes to the Poky RC1 branch, bu=
t we moved<br>
&gt;&gt; &gt; Eclipse forward to pick up some changes.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; The current Autobuilder build artifacts are located at<br>
&gt;&gt; &gt; <a href=3D"http://autobuilder.yoctoproject.org/pub/nightly/20=
120910-5/" target=3D"_blank">http://autobuilder.yoctoproject.org/pub/nightl=
y/20120910-5/</a><br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; This includes the Eclipse plugin and adt-installer, there sho=
uld be 2<br>
&gt;&gt; &gt; versions of the installer if I understood Beth correct, pleas=
e use the<br>
&gt;&gt; &gt; one<br>
&gt;&gt; &gt; marked adt-installer-QA when it&#39;s populated.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I have seen 3 build failures, all related to libowl-av and sa=
to rootfs,<br>
&gt;&gt; &gt; they<br>
&gt;&gt; &gt; are in Atom-pc, qemuppc and mpc8315 targets. =A0I am going at=
tempt a<br>
&gt;&gt; &gt; rebuild<br>
&gt;&gt; &gt; of the nightly-ppc standalone. =A0There was also a failure in=
 the p1022,<br>
&gt;&gt; &gt; which<br>
&gt;&gt; &gt; I think Matthew is aware of.<br>
&gt;&gt;<br>
&gt;&gt; This should be fixed for master in meta-fsl-ppc.<br>
&gt;<br>
&gt;<br>
&gt; Matthew, Can you branch meta-fsl-ppc into 1.3_M4? When that&#39;s done=
, I&#39;ll<br>
&gt; rebuild that part and put it into rc2<br>
<br>
</div></div>Branch created.<br></blockquote><div><br>Great. Build is queued=
 up. I&#39;ll have the artifacts in once the build is finished.<br>=A0<br>-=
b<br></div></div><br>-- <br>Elizabeth Flanagan<br>Yocto Project<br>Build an=
d Release<br>


--20cf3074b920f473fc04c9740a9a--
