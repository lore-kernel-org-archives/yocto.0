Return-Path: <elizabeth.flanagan@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FA2AE004AB
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 13:26:30 -0700 (PDT)
Received: from mail-yx0-f200.google.com ([209.85.213.200])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 11 Sep 2012 13:26:29 -0700
Received: by yenl14 with SMTP id l14so1245451yen.11
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 13:26:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=omAZybtQZVZk3xJ/fh6l5J2p3uBaQpbvGDRPruXsasI=;
	b=j29alDJ/3taziJvJtrAQnCxO2JPBlmeLnUCSMxJbDJFyv1pBXNg5JZy9YbtjWZkRXA
	xYZFg3At1CxYLfywBQG00KPTBmZvQoJPrpz25L4Vcw5HzePWOIg9Nf37TYdfIkxEtUx9
	VmtgDxDPs437PfEbROh5Ft8fP4boycJ8hECEHN52SmIY9lyBTkrQjEFihvAbafbpswTb
	4dej22YX2tL7Wt3zck0aQcMjNDAVEsYgqnckaq023GkJdxY89ss4gkQcCDAqskOWA8zv
	/k3vxpjXN8yVRAzVA01RaLJp83wrO7kWA9WBdBfZUkpy9+nUp2uCr4Qj8kTYMm0WC+cM
	GN8Q==
Received: by 10.224.42.78 with SMTP id r14mr19822229qae.19.1347395188503;
	Tue, 11 Sep 2012 13:26:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.224.42.78 with SMTP id r14mr19822215qae.19.1347395188405; Tue,
	11 Sep 2012 13:26:28 -0700 (PDT)
Received: by 10.229.63.1 with HTTP; Tue, 11 Sep 2012 13:26:28 -0700 (PDT)
In-Reply-To: <70CC66F5C30A414DADDA6973E4CA391A67015B@039-SN1MPN1-001.039d.mgd.msft.net>
References: <504EB798.60904@intel.com>
	<70CC66F5C30A414DADDA6973E4CA391A67015B@039-SN1MPN1-001.039d.mgd.msft.net>
Date: Tue, 11 Sep 2012 13:26:28 -0700
Message-ID: <CAPhnLPCj_NV0-6UagcjUcjhtQpJh53=2F8xqqE=ry-QTPr_19Q@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>
X-Gm-Message-State: ALoCoQn4Pzu3oTP+4pPvOCfyHc+F+JlSgnogG9Wuu9F7ZmtFAMrW1L0ItRnaS5F92drZPIRzJpqCpsCvJxiCLlE6pK/AA55U8MWpc8PUD4R+nU83ZACooy3bbl3pc9c0uqVhJXbY9Ylupk+7pML3V8YNdyBoTZkgkA==
Cc: "Purdie, Richard" <richard.purdie@intel.com>,
	Yocto Project Discussion <yocto@yoctoproject.org>,
	Saul Wold <saul.wold@intel.com>
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
X-List-Received-Date: Tue, 11 Sep 2012 20:26:30 -0000
Content-Type: multipart/alternative; boundary=20cf3074d21693b4ed04c972e33a

--20cf3074d21693b4ed04c972e33a
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Sep 11, 2012 at 12:29 PM, McClintock Matthew-B29882 <
B29882@freescale.com> wrote:

> On Mon, Sep 10, 2012 at 11:01 PM, Saul Wold <saul.wold@intel.com> wrote:
> >
> > Folks,
> >
> > Given the issues we had with the Eclipse and ADT installer during the RC1
> > build and we decided to forgo the existing RC1 build and restart with an
> > RC2.  There have been no changes to the Poky RC1 branch, but we moved
> > Eclipse forward to pick up some changes.
> >
> > The current Autobuilder build artifacts are located at
> > http://autobuilder.yoctoproject.org/pub/nightly/20120910-5/
> >
> > This includes the Eclipse plugin and adt-installer, there should be 2
> > versions of the installer if I understood Beth correct, please use the
> one
> > marked adt-installer-QA when it's populated.
> >
> > I have seen 3 build failures, all related to libowl-av and sato rootfs,
> they
> > are in Atom-pc, qemuppc and mpc8315 targets.  I am going attempt a
> rebuild
> > of the nightly-ppc standalone.  There was also a failure in the p1022,
> which
> > I think Matthew is aware of.
>
> This should be fixed for master in meta-fsl-ppc.
>

Matthew, Can you branch meta-fsl-ppc into 1.3_M4? When that's done, I'll
rebuild that part and put it into rc2

-b


>
> -M
>
> > All major repos have been have been Branched and we are using the 1.3_M4
> > branch, git hash dd3edc9fbb674682947e8218202fdbeef8635dd5
> >
> > Thanks for your support in checking out these milestone.
> >
> > Sau!
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

--20cf3074d21693b4ed04c972e33a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Tue, Sep 11, 2012 at 12:29 PM, McClin=
tock Matthew-B29882 <span dir=3D"ltr">&lt;<a href=3D"mailto:B29882@freescal=
e.com" target=3D"_blank">B29882@freescale.com</a>&gt;</span> wrote:<br><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex">
<div class=3D"im">On Mon, Sep 10, 2012 at 11:01 PM, Saul Wold &lt;<a href=
=3D"mailto:saul.wold@intel.com">saul.wold@intel.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Folks,<br>
&gt;<br>
&gt; Given the issues we had with the Eclipse and ADT installer during the =
RC1<br>
&gt; build and we decided to forgo the existing RC1 build and restart with =
an<br>
&gt; RC2. =A0There have been no changes to the Poky RC1 branch, but we move=
d<br>
&gt; Eclipse forward to pick up some changes.<br>
&gt;<br>
&gt; The current Autobuilder build artifacts are located at<br>
&gt; <a href=3D"http://autobuilder.yoctoproject.org/pub/nightly/20120910-5/=
" target=3D"_blank">http://autobuilder.yoctoproject.org/pub/nightly/2012091=
0-5/</a><br>
&gt;<br>
&gt; This includes the Eclipse plugin and adt-installer, there should be 2<=
br>
&gt; versions of the installer if I understood Beth correct, please use the=
 one<br>
&gt; marked adt-installer-QA when it&#39;s populated.<br>
&gt;<br>
&gt; I have seen 3 build failures, all related to libowl-av and sato rootfs=
, they<br>
&gt; are in Atom-pc, qemuppc and mpc8315 targets. =A0I am going attempt a r=
ebuild<br>
&gt; of the nightly-ppc standalone. =A0There was also a failure in the p102=
2, which<br>
&gt; I think Matthew is aware of.<br>
<br>
</div>This should be fixed for master in meta-fsl-ppc.<br></blockquote><div=
><br>Matthew, Can you branch meta-fsl-ppc into 1.3_M4? When that&#39;s done=
, I&#39;ll rebuild that part and put it into rc2<br><br>-b<br>=A0</div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">

<br>
-M<br>
<div class=3D"im"><br>
&gt; All major repos have been have been Branched and we are using the 1.3_=
M4<br>
&gt; branch, git hash dd3edc9fbb674682947e8218202fdbeef8635dd5<br>
&gt;<br>
&gt; Thanks for your support in checking out these milestone.<br>
&gt;<br>
&gt; Sau!<br>
&gt;<br>
</div>&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br><br clear=3D"all"><br>-- <br>Elizabeth Flanagan<br>Y=
octo Project<br>Build and Release<br>

--20cf3074d21693b4ed04c972e33a--
