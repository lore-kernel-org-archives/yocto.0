Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3760E00E23; Thu,  4 Aug 2016 19:25:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f176.google.com (mail-qt0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D573E00E0F;
	Thu,  4 Aug 2016 19:25:21 -0700 (PDT)
Received: by mail-qt0-f176.google.com with SMTP id u25so167741137qtb.1;
	Thu, 04 Aug 2016 19:25:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=UnNw8R/wYdVxBvz2zDPMVoet1gZbdpZ/Ytzq2jTQelM=;
	b=GMwpZzQpwwHF1EvdlnVvAfADEIaLNj8rCe7+AFSqATPCHV/jMBlmRX7rAbmGa2EtPY
	SMIKVUtZ5CaskS57lMwjeTbmkQbrfTlcLCW7DI6becTj4eVRqc5iIjILhTT+ggdcG/YZ
	86Bi/hVG3uWkjKskNhibG8iu3Leu5gMxohj6TYkZSOox+IGiwuWv143L0ESKIfK1hV11
	Tu1uR1IFIpt/+un3QA0DGW3ag6Ceu3zDqb5Vf5d4hAy73fcI90wFV1t6d3P5vR12bn5A
	8qY9IzifVC1JQ9gss90snPR9eNnJzPP/Rg+obZFuzJRdLb3zEdO7ZYqydAy7YHSZ84P8
	gnIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=UnNw8R/wYdVxBvz2zDPMVoet1gZbdpZ/Ytzq2jTQelM=;
	b=O5g2tdIeePfxnC8WMfBLVfVYIThZ4xdoBmd+ziBjK8omtzMnBCtdd2v8qfJgJbJaJI
	UCrxrUjwt6dmtP0BIzzaGk0j7sTHniCEiRhzBe48HYb3GYpepPaUl2WqUqUgdApXqnCx
	+VvV2qH5U6a32CA2OCzPXdOzdSATUzUqRfuRkQRMMAha6MekCq6gUzF/WotPzd/zcWa7
	FJQCkB9e/JhusYKZPsgYbQrRkvbBNkc41dJkIe8pT2K2XQTFiYQTOBTAmGz/A/mqElpH
	ikvQifLwkQ+DqpHBcvJpVPXKt8skVFvCWUqeN5YH39siLWZ4ob+SxTc/PV+VIkvyhIRI
	VdVw==
X-Gm-Message-State: AEkoouspCK3xHRAaHJHeF0Pr6qmCZCtuq2eICNCgEA29+zHgDEYtgvHK3iPfjxkFEoUsWSSTIWUQiR5EX5G9rA==
X-Received: by 10.200.47.164 with SMTP id l33mr10337805qta.19.1470363921274;
	Thu, 04 Aug 2016 19:25:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.50.137 with HTTP; Thu, 4 Aug 2016 19:25:20 -0700 (PDT)
In-Reply-To: <97161206A1AC0C4498663F483150B6F155245940@fmsmsx117.amr.corp.intel.com>
References: <87lh0cu5s2.fsf@linux.intel.com>
	<97161206A1AC0C4498663F483150B6F1552453C3@fmsmsx117.amr.corp.intel.com>
	<1470325278.3175.351.camel@intel.com>
	<97161206A1AC0C4498663F483150B6F155245940@fmsmsx117.amr.corp.intel.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Thu, 4 Aug 2016 22:25:20 -0400
Message-ID: <CADkTA4Mw=vkFvF_r50U9qi+UoX6BDkqhaCXZ+JeQZaBao91Z7A@mail.gmail.com>
To: "Kumar, Anil K" <anil.k.kumar@intel.com>
Cc: "linux-yocto@yoctoproject.org" <linux-yocto@yoctoproject.org>, "Hart,
	Patrick J" <patrick.j.hart@intel.com>, "Renganathan,
	Prabu" <prabu.renganathan@intel.com>, "Ponnusamy,
	Siva Prasath" <siva.prasath.ponnusamy@intel.com>, "Svahn,
	Kai" <kai.svahn@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Leblanc,
	Darrell" <darrell.leblanc@intel.com>, "Wold, Saul" <saul.wold@intel.com>
Subject: Re: [GIT PULL | BXT-REBASE] USB Perihperal RTPM fixes
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
X-List-Received-Date: Fri, 05 Aug 2016 02:25:24 -0000
Content-Type: multipart/alternative; boundary=001a11378e1a37dff1053949c710

--001a11378e1a37dff1053949c710
Content-Type: text/plain; charset=UTF-8

On Thu, Aug 4, 2016 at 11:52 AM, Kumar, Anil K <anil.k.kumar@intel.com>
wrote:

>
>
> Anil K Kumar, PhD
> Principal Engineer
> Lead System Architect
> Makers & Innovators Group (MIG) / New Technology Group (NTG)
>

A clean resend would have been better, since this history comes through
somewhat mangled
with a forward like this.



>
>
> -----Original Message-----
> From: Wold, Saul
> Sent: Thursday, August 4, 2016 8:41 AM
> To: Kumar, Anil K <anil.k.kumar@intel.com>; Felipe Balbi <
> felipe.balbi@linux.intel.com>; Ashfield, Bruce (Wind River) <
> bruce.ashfield@windriver.com>
> Cc: Renganathan, Prabu <prabu.renganathan@intel.com>; Svahn, Kai <
> kai.svahn@intel.com>; Ponnusamy, Siva Prasath <
> siva.prasath.ponnusamy@intel.com>; Hart, Patrick J <
> patrick.j.hart@intel.com>; Leblanc, Darrell <darrell.leblanc@intel.com>;
> yocto@yoctoproject.org
> Subject: Re: [GIT PULL | BXT-REBASE] USB Perihperal RTPM fixes
>
>
> These requests need to go to the linux-yocto@yoctoproject.org list.
>  This is part of the open source process and needs to be followed for
> transparency.
>
> Sending it to me or directly to Bruce will not work.
>
> Also, please understand that Bruce is on vacation this week, he will merge
> things time permitting, but his gmail email must also be CC'ed otherwise he
> may not see it. (bruce.ashfield@gmail.com).
>
>
> Sau!
>
>
> On Thu, 2016-08-04 at 07:37 -0700, Kumar, Anil K wrote:
> > + Saul
> >
> > Anil K Kumar, PhD
> > Principal Engineer
> > Lead System Architect
> > Makers & Innovators Group (MIG) / New Technology Group (NTG)
> >
> >
> > -----Original Message-----
> > From: Felipe Balbi [mailto:felipe.balbi@linux.intel.com]
> > Sent: Thursday, August 4, 2016 4:34 AM
> > To: Ashfield, Bruce (Wind River) <bruce.ashfield@windriver.com>
> > Cc: Kumar, Anil K <anil.k.kumar@intel.com>; Renganathan, Prabu <prabu
> > .renganathan@intel.com>; Svahn, Kai <kai.svahn@intel.com>; Ponnusamy,
> > Siva Prasath <siva.prasath.ponnusamy@intel.com>; Hart, Patrick J <pat
> > rick.j.hart@intel.com>; Leblanc, Darrell <darrell.leblanc@intel.com>;
> > yocto@yoctoproject.org
> > Subject: [GIT PULL | BXT-REBASE] USB Perihperal RTPM fixes
> >
> >
> > Hi Bruce,
> >
> > please pull following branch and apply on top of bxt-rebase. It fixes
> > a few issues with runtime PM with drivers/usb/dwc3/
> >
>

But I was able to pick up the pull request from here and do the merge.

Cheers,

Bruce


> > Best
> >
> > The following changes since commit
> > 17a1643e70318316c4cd275d1c1f252d0a97f46f:
> >
> >   Merge branch 'standard/intel/base' into standard/intel/bxt-rebase
> > (2016-07-25 23:56:53 -0400)
> >
> > are available in the git repository at:
> >
> >   git://git.kernel.org/pub/scm/linux/kernel/git/balbi/usb.git bxt-
> > testing-pm
> >
> > for you to fetch changes up to
> > fea0e55419272d6185c1d19a1a5b89e0545cbc39:
> >
> >   usb: dwc3: pci: call _DSM for suspend/resume (2016-08-04 09:35:44
> > +0300)
> >
> > ----------------------------------------------------------------
> > Felipe Balbi (5):
> >       usb: dwc3: pci: runtime_resume child device
> >       usb: dwc3: core: allow device to runtime_suspend several times
> >       usb: dwc3: gadget: increment request->actual once
> >       usb: dwc3: make sure UX_EXIT_PX is cleared
> >       usb: dwc3: pci: call _DSM for suspend/resume
> >
> >  drivers/usb/dwc3/core.c     |   7 +++
> >  drivers/usb/dwc3/core.h     |   1 +
> >  drivers/usb/dwc3/dwc3-pci.c | 105
> > +++++++++++++++++++++++++++++++++++++-------
> >  drivers/usb/dwc3/gadget.c   |  19 ++++----
> >  4 files changed, 107 insertions(+), 25 deletions(-)
> >
> >
> > --
> > balbi
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--001a11378e1a37dff1053949c710
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Aug 4, 2016 at 11:52 AM, Kumar, Anil K <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:anil.k.kumar@intel.com" target=3D"_blank">anil.k.kumar@inte=
l.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=
=3D"im HOEnZb"><br>
<br>
Anil K Kumar, PhD<br>
Principal Engineer<br>
Lead System Architect<br>
Makers &amp; Innovators Group (MIG) / New Technology Group (NTG)<br></span>=
</blockquote><div><br></div><div>A clean resend would have been better, sin=
ce this history comes through somewhat mangled<br></div><div>with a forward=
 like this.<br></div><div><br>=C2=A0</div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><s=
pan class=3D"im HOEnZb">
<br>
<br>
-----Original Message-----<br>
</span><div class=3D"HOEnZb"><div class=3D"h5">From: Wold, Saul<br>
Sent: Thursday, August 4, 2016 8:41 AM<br>
To: Kumar, Anil K &lt;<a href=3D"mailto:anil.k.kumar@intel.com">anil.k.kuma=
r@intel.com</a>&gt;; Felipe Balbi &lt;<a href=3D"mailto:felipe.balbi@linux.=
intel.com">felipe.balbi@linux.intel.com</a>&gt;; Ashfield, Bruce (Wind Rive=
r) &lt;<a href=3D"mailto:bruce.ashfield@windriver.com">bruce.ashfield@windr=
iver.com</a>&gt;<br>
Cc: Renganathan, Prabu &lt;<a href=3D"mailto:prabu.renganathan@intel.com">p=
rabu.renganathan@intel.com</a>&gt;; Svahn, Kai &lt;<a href=3D"mailto:kai.sv=
ahn@intel.com">kai.svahn@intel.com</a>&gt;; Ponnusamy, Siva Prasath &lt;<a =
href=3D"mailto:siva.prasath.ponnusamy@intel.com">siva.prasath.ponnusamy@int=
el.com</a>&gt;; Hart, Patrick J &lt;<a href=3D"mailto:patrick.j.hart@intel.=
com">patrick.j.hart@intel.com</a>&gt;; Leblanc, Darrell &lt;<a href=3D"mail=
to:darrell.leblanc@intel.com">darrell.leblanc@intel.com</a>&gt;; <a href=3D=
"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
Subject: Re: [GIT PULL | BXT-REBASE] USB Perihperal RTPM fixes<br>
<br>
<br>
These requests need to go to the <a href=3D"mailto:linux-yocto@yoctoproject=
.org">linux-yocto@yoctoproject.org</a>=C2=A0list.<br>
=C2=A0This is part of the open source process and needs to be followed for =
transparency.<br>
<br>
Sending it to me or directly to Bruce will not work.<br>
<br>
Also, please understand that Bruce is on vacation this week, he will merge =
things time permitting, but his gmail email must also be CC&#39;ed otherwis=
e he may not see it. (<a href=3D"mailto:bruce.ashfield@gmail.com">bruce.ash=
field@gmail.com</a>).<br>
<br>
<br>
Sau!<br>
<br>
<br>
On Thu, 2016-08-04 at 07:37 -0700, Kumar, Anil K wrote:<br>
&gt; + Saul<br>
&gt;<br>
&gt; Anil K Kumar, PhD<br>
&gt; Principal Engineer<br>
&gt; Lead System Architect<br>
&gt; Makers &amp; Innovators Group (MIG) / New Technology Group (NTG)<br>
&gt;<br>
&gt;<br>
&gt; -----Original Message-----<br>
&gt; From: Felipe Balbi [mailto:<a href=3D"mailto:felipe.balbi@linux.intel.=
com">felipe.balbi@linux.intel.com</a>]<br>
&gt; Sent: Thursday, August 4, 2016 4:34 AM<br>
&gt; To: Ashfield, Bruce (Wind River) &lt;<a href=3D"mailto:bruce.ashfield@=
windriver.com">bruce.ashfield@windriver.com</a>&gt;<br>
&gt; Cc: Kumar, Anil K &lt;<a href=3D"mailto:anil.k.kumar@intel.com">anil.k=
.kumar@intel.com</a>&gt;; Renganathan, Prabu &lt;prabu<br>
&gt; .<a href=3D"mailto:renganathan@intel.com">renganathan@intel.com</a>&gt=
;; Svahn, Kai &lt;<a href=3D"mailto:kai.svahn@intel.com">kai.svahn@intel.co=
m</a>&gt;; Ponnusamy,<br>
&gt; Siva Prasath &lt;<a href=3D"mailto:siva.prasath.ponnusamy@intel.com">s=
iva.prasath.ponnusamy@intel.com</a>&gt;; Hart, Patrick J &lt;pat<br>
&gt; <a href=3D"mailto:rick.j.hart@intel.com">rick.j.hart@intel.com</a>&gt;=
; Leblanc, Darrell &lt;<a href=3D"mailto:darrell.leblanc@intel.com">darrell=
.leblanc@intel.com</a>&gt;;<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; Subject: [GIT PULL | BXT-REBASE] USB Perihperal RTPM fixes<br>
&gt;<br>
&gt;<br>
&gt; Hi Bruce,<br>
&gt;<br>
&gt; please pull following branch and apply on top of bxt-rebase. It fixes<=
br>
&gt; a few issues with runtime PM with drivers/usb/dwc3/<br>
&gt;<br></div></div></blockquote><div><br></div><div>But I was able to pick=
 up the pull request from here and do the merge.<br><br></div><div>Cheers,<=
br><br></div><div>Bruce<br></div><div>=C2=A0</div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex"><div class=3D"HOEnZb"><div class=3D"h5">
&gt; Best<br>
&gt;<br>
&gt; The following changes since commit<br>
&gt; 17a1643e70318316c4cd275d1c1f252d0a97f46f:<br>
&gt;<br>
&gt; =C2=A0 Merge branch &#39;standard/intel/base&#39; into standard/intel/=
bxt-rebase<br>
&gt; (2016-07-25 23:56:53 -0400)<br>
&gt;<br>
&gt; are available in the git repository at:<br>
&gt;<br>
&gt; =C2=A0 git://<a href=3D"http://git.kernel.org/pub/scm/linux/kernel/git=
/balbi/usb.git" rel=3D"noreferrer" target=3D"_blank">git.kernel.org/pub/scm=
/linux/kernel/git/balbi/usb.git</a> bxt-<br>
&gt; testing-pm<br>
&gt;<br>
&gt; for you to fetch changes up to<br>
&gt; fea0e55419272d6185c1d19a1a5b89e0545cbc39:<br>
&gt;<br>
&gt; =C2=A0 usb: dwc3: pci: call _DSM for suspend/resume (2016-08-04 09:35:=
44<br>
&gt; +0300)<br>
&gt;<br>
&gt; ----------------------------------------------------------------<br>
&gt; Felipe Balbi (5):<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0usb: dwc3: pci: runtime_resume chi=
ld device<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0usb: dwc3: core: allow device to r=
untime_suspend several times<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0usb: dwc3: gadget: increment reque=
st-&gt;actual once<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0usb: dwc3: make sure UX_EXIT_PX is=
 cleared<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0usb: dwc3: pci: call _DSM for susp=
end/resume<br>
&gt;<br>
&gt; =C2=A0drivers/usb/dwc3/core.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=
=A0=C2=A07 +++<br>
&gt; =C2=A0drivers/usb/dwc3/core.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=
=A0=C2=A01 +<br>
&gt; =C2=A0drivers/usb/dwc3/dwc3-pci.c | 105<br>
&gt; +++++++++++++++++++++++++++++++++++++-------<br>
&gt; =C2=A0drivers/usb/dwc3/gadget.c=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A019 ++++-=
---<br>
&gt; =C2=A04 files changed, 107 insertions(+), 25 deletions(-)<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; balbi<br>
</div></div></blockquote></div><br><br clear=3D"all"><br>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature">&quot;Thou shalt no=
t follow the NULL pointer, for chaos and madness await thee at its end&quot=
;</div>
</div></div>

--001a11378e1a37dff1053949c710--
