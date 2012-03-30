Return-Path: <jeffrey.osier-mixon@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96223E004D2
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 13:55:20 -0700 (PDT)
Received: from mail-vx0-f180.google.com ([209.85.220.180])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 30 Mar 2012 13:55:18 -0700
Received: by vcbfl10 with SMTP id fl10so622775vcb.25
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 13:55:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:x-gm-message-state:content-type;
	bh=ceyWBzwOkcVaKh+n2erGCVWwEqU7NHHao6k567Rcczg=;
	b=RIf43NVrQdN7RxP+Z9k0LGXnWgwFLr3vk2YSXtxKX8JHrhGu3500Z8x705He2DsSb1
	kpydHD9VtAY2i0LOmLLC12ludKkVX39Zq8GJqATkf8HwXD3tre+yC7/yyhO588lfSmOM
	5FAqoQjZsbeihBPDfFN9UCgNrD9/TLqPL0qI63bx2Y0C2WkvlePaAeFvO/KIEVs1pM5c
	st8M+qHCkj9FVOo1TrGii3X6t8mpRwFha4mUQxs+z4iEPg+57S/cXe71G1mN2p0+02H7
	XJAe9JHKPrh5l1UGm7KdIQ+sFXTmEUSC8qHLACs6gzEgspp5gpkzBQBKvwWb1BwJ9sqD
	8Qcg==
MIME-Version: 1.0
Received: by 10.52.30.9 with SMTP id o9mr1383257vdh.52.1333140916955; Fri, 30
	Mar 2012 13:55:16 -0700 (PDT)
Received: by 10.52.30.52 with HTTP; Fri, 30 Mar 2012 13:55:16 -0700 (PDT)
In-Reply-To: <681E6FE2-CE59-4D0C-BCF8-8163715310FF@dominion.thruhere.net>
References: <D044B647-8BCD-48B4-BABD-CE4751D023E0@dominion.thruhere.net>
	<4F7608DC.1000402@windriver.com>
	<26C6B15B-4A12-453A-A146-C884A5040178@dominion.thruhere.net>
	<4F7614FE.5000107@windriver.com>
	<20120330204516.GA11451@bill-the-cat>
	<681E6FE2-CE59-4D0C-BCF8-8163715310FF@dominion.thruhere.net>
Date: Fri, 30 Mar 2012 13:55:16 -0700
Message-ID: <CALZ2gZXKHg+K_q_-s4UqfzsTV6NGWeORJAdCgLDTKpfbHTwWzw@mail.gmail.com>
From: "Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>
To: Koen Kooi <koen@dominion.thruhere.net>
X-Gm-Message-State: ALoCoQmM7vn3vq4KNhiK7HkRKVMM2vqcuIM23L6onPGb0oOxQelvhXjL8fiumOEoae7+x5tmJsW8
Cc: yocto@yoctoproject.org
Subject: Re: Moving angstrom under the yocto banner
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
X-List-Received-Date: Fri, 30 Mar 2012 20:55:20 -0000
Content-Type: multipart/alternative; boundary=20cf3079bc78ca6a3604bc7c0efd

--20cf3079bc78ca6a3604bc7c0efd
Content-Type: text/plain; charset=ISO-8859-1

>
> >> It's hard to call something Yocto Project based unless it used
> >> something from the Yocto Project.  meta-yocto being on of those
> >> components.
> >
> > So bitbake and oe-core don't count because they're external projects?
>
> If oe-core doesn't count, that will go directly against the agreement the
> OE developers made with the yocto ones when deciding to drop OE classic and
> start oe-core.
> If that's really the position of the yocto project I think the OE project
> will need to seriously reconsider the merge and its participation in the
> yocto project.
>

Mark said above: "It's hard to call something YP based unless it uses
something from the Yocto Project". meta-yocto is one example, but so is
oe-core.

oe-core is shared code between Yocto and OE. Thus, it is reasonable to say
that any distribution that uses oe-core is representative of the Yocto
Project, to some degree. So of course oe-core counts, as does bitbake,
another shared component.



>
> regards,
>
> Koen
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
Jeff Osier-Mixon http://jefro.net/blog
Yocto Project Community Manager @Intel http://yoctoproject.org

--20cf3079bc78ca6a3604bc7c0efd
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><div class=
=3D"h5">&gt;&gt; It&#39;s hard to call something Yocto Project based unless=
 it used<br>

&gt;&gt; something from the Yocto Project. =A0meta-yocto being on of those<=
br>
&gt;&gt; components.<br>
&gt;<br>
&gt; So bitbake and oe-core don&#39;t count because they&#39;re external pr=
ojects?<br>
<br>
</div></div>If oe-core doesn&#39;t count, that will go directly against the=
 agreement the OE developers made with the yocto ones when deciding to drop=
 OE classic and start oe-core.<br>
If that&#39;s really the position of the yocto project I think the OE proje=
ct will need to seriously reconsider the merge and its participation in the=
 yocto project.<br></blockquote><div><br></div><div>Mark said above: &quot;=
It&#39;s hard to call something YP based unless it uses something from the =
Yocto Project&quot;. meta-yocto is one example, but so is oe-core.</div>
<div><br></div><div>oe-core is shared code between Yocto and OE. Thus, it i=
s reasonable to say that any distribution that uses oe-core is representati=
ve of the Yocto Project, to some degree. So of course oe-core counts, as do=
es bitbake, another shared component.</div>
<div><br></div><div>=A0</div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
regards,<br>
<br>
Koen<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
Jeff Osier-Mixon=A0<a href=3D"http://jefro.net/blog" target=3D"_blank">http=
://jefro.net/blog</a><div>Yocto Project Community Manager @Intel=A0<a href=
=3D"http://yoctoproject.org/" target=3D"_blank">http://yoctoproject.org</a>=
</div>
<br>

--20cf3079bc78ca6a3604bc7c0efd--
