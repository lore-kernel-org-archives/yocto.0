Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A746E00E3B; Fri, 21 Jun 2019 06:18:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.208.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
	[209.85.208.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BB8EE00E39
	for <yocto@lists.yoctoproject.org>;
	Fri, 21 Jun 2019 06:18:36 -0700 (PDT)
Received: by mail-ed1-f68.google.com with SMTP id s49so10122270edb.1
	for <yocto@lists.yoctoproject.org>;
	Fri, 21 Jun 2019 06:18:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=sxc9MuboEM2JHTOEHFreiFp/8CClSuHtKZTq4k6b0GU=;
	b=rrMn3dcAmQx736pkDpev03XrCAgwexo05xs8PmfkZpyxBcTVz7hxMyxNynLbDPmTG7
	LlmHefCtZ3b1Y9KEljTgEYoQjSRZS7mW4CzMahhVSRLhPHgrFiRsHw7AIpLYNuqAp2k3
	jRZ1m5178BKVkWmdJHjwKStSFVrt1jDJ+aY+8eX8cCGsq48pKVa+WpDALWrnOYnglEhy
	WZIJhKFgwf72pDiBRv2cQnKMnPtay9DiEb+1zobK+mKQGmXbXPEud/T7hh3sTUIyqZPa
	OMQ7czGnT36tRfQk66vqK5z3Bzo9EcrDmYt/by+R2o+G1nsk1BIF2LVA9u9Cwm5xpjVX
	ovNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=sxc9MuboEM2JHTOEHFreiFp/8CClSuHtKZTq4k6b0GU=;
	b=gECPSx+0OqkTnVJXtbhpasWBs0BKikSwo6adPEVV6JU4wIljuNeyRowhtQay1Osbvg
	uxM4OMOIq8hIaxafY1F4pzoobcaXJVYZmHM2rT7CA4U4hOw/AjNCn6cqtl5Oi8vrDhkC
	IB4zyeYe+UFXsEpMBB6VTaGeQHlPXIlORtRsT+Lug1teKvyBvv+q/RmN76HKvS89/OCD
	AqtqgBb/4VuOiHGQJQzvz7c+VwmSq3GhaaXqfkK2vGPHreY7+nt86DsJSzvtv0v9aIVk
	m9cbD2x+Gaa5dnaUMJjHf/DXsD2KYBrUrKVEJHZ/UAPkC2Dr2FAojBM9iIsBbeYKe7tg
	iheg==
X-Gm-Message-State: APjAAAVpLzMud3q3htDqqTem++54B8HwhEzqAPL+OkUkzrAFmqTkp62m
	26gyk1+lLQWLHQ0I39TCP5n8OxLp4kz/bYEVxSo=
X-Google-Smtp-Source: APXvYqz9zF7ZxtvhBAOIsNozfv/bv2SspAye/qyVRZHNzesTqr1Yli636zr6IOaLlQQglGyznmKKSc/u3NJXpngljxg=
X-Received: by 2002:a50:8be8:: with SMTP id
	n37mr125210869edn.216.1561123115638; 
	Fri, 21 Jun 2019 06:18:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190611070823.367-1-Martin.Jansa@gmail.com>
	<CA+chaQfFa0PyiDx78Qba1PnKYn+fDvKGS7TqGgGuzV-Mx+g9Sw@mail.gmail.com>
	<CAJTo0LbmgN2Zg9JBaoQdvqk0CsGy+tAbTFqJ+SxuAxiap1xYFA@mail.gmail.com>
In-Reply-To: <CAJTo0LbmgN2Zg9JBaoQdvqk0CsGy+tAbTFqJ+SxuAxiap1xYFA@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Fri, 21 Jun 2019 15:18:24 +0200
Message-ID: <CA+chaQfho=Jhrvt3ZfQW_wagonLb6Jc2dtZJg7+QEoVh4UA+9w@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-gplv2][warrior][PATCH] bc: use u-a for bc as well
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
X-List-Received-Date: Fri, 21 Jun 2019 13:18:37 -0000
Content-Type: multipart/alternative; boundary="000000000000c225e8058bd54c33"

--000000000000c225e8058bd54c33
Content-Type: text/plain; charset="UTF-8"

No problem, thanks for quick response.

Looks like this patch wasn't merged in master as well (I thought it was),
can you please push it as well.

Thanks

On Fri, Jun 21, 2019 at 2:59 PM Burton, Ross <ross.burton@intel.com> wrote:

> Done, sorry.
>
> Ross
>
> On Fri, 21 Jun 2019 at 13:53, Martin Jansa <martin.jansa@gmail.com> wrote:
> >
> > ping for warrior
> >
> > On Tue, Jun 11, 2019 at 9:08 AM Martin Jansa <martin.jansa@gmail.com>
> wrote:
> >>
> >> * bc can be provided by busybox as well (e.g. if you have your own
> >>   defconfig and forget to explicitly disable it:
> >>   ...
> >>   *
> >>   * Miscellaneous Utilities
> >>   *
> >>   adjtimex (4.7 kb) (ADJTIMEX) [N/y/?] n
> >>   bbconfig (9.7 kb) (BBCONFIG) [N/y/?] n
> >>   bc (45 kb) (BC) [Y/n/?] (NEW) dc (36 kb) (DC) [Y/n/?] y
> >>     Use bc code base for dc (larger, more features) (FEATURE_DC_BIG)
> [Y] (NEW) y
> >>       Interactive mode (+4kb) (FEATURE_BC_INTERACTIVE) [Y/n/?] (NEW)
>  Enable bc/dc long options (FEATURE_BC_LONG_OPTIONS) [Y/n] (NEW) beep (2.4
> kb) (BEEP) [N/y/?] n
> >>   chat (6.3 kb) (CHAT) [N/y/?] n
> >>   conspy (10 kb) (CONSPY) [N/y/?] n
> >>   ...
> >>   ), causing conflict in u-a:
> >>
> >>   update-alternatives: Error: not linking /usr/bin/bc to
> /bin/busybox.nosuid since /usr/bin/bc exists and is not a link
> >>
> >>   and then whole do_rootfs or do_populate_sdk to fail because busybox
> postinst is failing:
> >>
> >>   do_populate_sdk: Postinstall scriptlets of ['busybox'] have failed.
> If the intention is to defer them to first boot,
> >>   then please place them into pkg_postinst_ontarget_${PN} (). Deferring
> to first boot via 'exit 1' is no longer supported.
> >>
> >> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
> >> ---
> >>  recipes-extended/bc/bc_1.06.bb | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/recipes-extended/bc/bc_1.06.bb b/recipes-extended/bc/
> bc_1.06.bb
> >> index d8c8a86..3de1b24 100644
> >> --- a/recipes-extended/bc/bc_1.06.bb
> >> +++ b/recipes-extended/bc/bc_1.06.bb
> >> @@ -20,7 +20,7 @@ SRC_URI[sha256sum] =
> "4ef6d9f17c3c0d92d8798e35666175ecd3d8efac4009d6457b5c99cea7
> >>
> >>  inherit autotools texinfo update-alternatives
> >>
> >> -ALTERNATIVE_${PN} = "dc"
> >> +ALTERNATIVE_${PN} = "bc dc"
> >>  ALTERNATIVE_PRIORITY = "100"
> >>
> >>  BBCLASSEXTEND = "native"
> >> --
> >> 2.17.1
> >>
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000c225e8058bd54c33
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">No problem, thanks for quick response.<div><br></div><div>=
Looks like this patch wasn&#39;t merged in master as well (I thought it was=
), can you please push it as well.</div><div><br></div><div>Thanks</div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Fri, Jun 21, 2019 at 2:59 PM Burton, Ross &lt;<a href=3D"mailto:ross.burton=
@intel.com">ross.burton@intel.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">Done, sorry.<br>
<br>
Ross<br>
<br>
On Fri, 21 Jun 2019 at 13:53, Martin Jansa &lt;<a href=3D"mailto:martin.jan=
sa@gmail.com" target=3D"_blank">martin.jansa@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; ping for warrior<br>
&gt;<br>
&gt; On Tue, Jun 11, 2019 at 9:08 AM Martin Jansa &lt;<a href=3D"mailto:mar=
tin.jansa@gmail.com" target=3D"_blank">martin.jansa@gmail.com</a>&gt; wrote=
:<br>
&gt;&gt;<br>
&gt;&gt; * bc can be provided by busybox as well (e.g. if you have your own=
<br>
&gt;&gt;=C2=A0 =C2=A0defconfig and forget to explicitly disable it:<br>
&gt;&gt;=C2=A0 =C2=A0...<br>
&gt;&gt;=C2=A0 =C2=A0*<br>
&gt;&gt;=C2=A0 =C2=A0* Miscellaneous Utilities<br>
&gt;&gt;=C2=A0 =C2=A0*<br>
&gt;&gt;=C2=A0 =C2=A0adjtimex (4.7 kb) (ADJTIMEX) [N/y/?] n<br>
&gt;&gt;=C2=A0 =C2=A0bbconfig (9.7 kb) (BBCONFIG) [N/y/?] n<br>
&gt;&gt;=C2=A0 =C2=A0bc (45 kb) (BC) [Y/n/?] (NEW) dc (36 kb) (DC) [Y/n/?] =
y<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0Use bc code base for dc (larger, more features)=
 (FEATURE_DC_BIG) [Y] (NEW) y<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Interactive mode (+4kb) (FEATURE_BC_INTE=
RACTIVE) [Y/n/?] (NEW)=C2=A0 =C2=A0 =C2=A0Enable bc/dc long options (FEATUR=
E_BC_LONG_OPTIONS) [Y/n] (NEW) beep (2.4 kb) (BEEP) [N/y/?] n<br>
&gt;&gt;=C2=A0 =C2=A0chat (6.3 kb) (CHAT) [N/y/?] n<br>
&gt;&gt;=C2=A0 =C2=A0conspy (10 kb) (CONSPY) [N/y/?] n<br>
&gt;&gt;=C2=A0 =C2=A0...<br>
&gt;&gt;=C2=A0 =C2=A0), causing conflict in u-a:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0update-alternatives: Error: not linking /usr/bin/bc to=
 /bin/busybox.nosuid since /usr/bin/bc exists and is not a link<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0and then whole do_rootfs or do_populate_sdk to fail be=
cause busybox postinst is failing:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0do_populate_sdk: Postinstall scriptlets of [&#39;busyb=
ox&#39;] have failed. If the intention is to defer them to first boot,<br>
&gt;&gt;=C2=A0 =C2=A0then please place them into pkg_postinst_ontarget_${PN=
} (). Deferring to first boot via &#39;exit 1&#39; is no longer supported.<=
br>
&gt;&gt;<br>
&gt;&gt; Signed-off-by: Martin Jansa &lt;<a href=3D"mailto:Martin.Jansa@gma=
il.com" target=3D"_blank">Martin.Jansa@gmail.com</a>&gt;<br>
&gt;&gt; ---<br>
&gt;&gt;=C2=A0 recipes-extended/bc/<a href=3D"http://bc_1.06.bb" rel=3D"nor=
eferrer" target=3D"_blank">bc_1.06.bb</a> | 2 +-<br>
&gt;&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;&gt;<br>
&gt;&gt; diff --git a/recipes-extended/bc/<a href=3D"http://bc_1.06.bb" rel=
=3D"noreferrer" target=3D"_blank">bc_1.06.bb</a> b/recipes-extended/bc/<a h=
ref=3D"http://bc_1.06.bb" rel=3D"noreferrer" target=3D"_blank">bc_1.06.bb</=
a><br>
&gt;&gt; index d8c8a86..3de1b24 100644<br>
&gt;&gt; --- a/recipes-extended/bc/<a href=3D"http://bc_1.06.bb" rel=3D"nor=
eferrer" target=3D"_blank">bc_1.06.bb</a><br>
&gt;&gt; +++ b/recipes-extended/bc/<a href=3D"http://bc_1.06.bb" rel=3D"nor=
eferrer" target=3D"_blank">bc_1.06.bb</a><br>
&gt;&gt; @@ -20,7 +20,7 @@ SRC_URI[sha256sum] =3D &quot;4ef6d9f17c3c0d92d87=
98e35666175ecd3d8efac4009d6457b5c99cea7<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 inherit autotools texinfo update-alternatives<br>
&gt;&gt;<br>
&gt;&gt; -ALTERNATIVE_${PN} =3D &quot;dc&quot;<br>
&gt;&gt; +ALTERNATIVE_${PN} =3D &quot;bc dc&quot;<br>
&gt;&gt;=C2=A0 ALTERNATIVE_PRIORITY =3D &quot;100&quot;<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 BBCLASSEXTEND =3D &quot;native&quot;<br>
&gt;&gt; --<br>
&gt;&gt; 2.17.1<br>
&gt;&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div>

--000000000000c225e8058bd54c33--
