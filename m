Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 901A2E00EFB; Mon, 18 Apr 2016 10:35:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f41.google.com (mail-qg0-f41.google.com
	[209.85.192.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51319E00C70
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 10:35:29 -0700 (PDT)
Received: by mail-qg0-f41.google.com with SMTP id c6so120944898qga.1
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 10:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=dKzklvT1piwXaXEsDs9QI4YaES7LMb7tXLMGq4+FhZg=;
	b=acgNJVPt6UE2dLc4zxlw8iVVYdDCdxnUnR7X6++biFwT8lxqIB7FqFwnqTdIDLyNUu
	vOFjXf989m8Q/lQ6lfQMu3q7GaUIAitGk3aFKYaBfZigvHHfl6CTe4YCgcM4A3066y0n
	c2APkgGZX2YDdTEQc94NKvxbJdh5B9MfrH1ubj8gy/+lYlDoMoFQBNb/nRh2kiq0DpC1
	rtlhwDo1QP2JEpx4XVicz+/d6TP4qxg3yr3ZSnBEfd5RHwyham/kF3a3F+KtLd4IBSyu
	nrhR3hlBJjJL4Cf9k2V84KATx6Mgwwbsi7EcluOKjI7AB++0N16lBgqg41lLFMPWKKU8
	DPDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=dKzklvT1piwXaXEsDs9QI4YaES7LMb7tXLMGq4+FhZg=;
	b=bmR5j8tDGejkyuVW+yLkp3P2lXBzXiF1j95QxHCVzFRwME18oH+fedukQZOAzUFtQq
	1LtsuxM/MVXe4HEeTyQ6tI3xkNjtzoBchfweXzKkHxL0fk3SiwkS3UyJv9F1kaYphneO
	vK0YKViHMQpxlAvDQ3PkEAovIHleIy7JxKvi2cdiaRJ3mhx/EAvvGsMbF1iJAqUMkYDt
	x+i5PHYlSm/u4VkSyTdIPFP6F/sr3cm6ZWTuiESqc1MF6zH7oMDJE8D/nPpoc9ToTOay
	bYaPEBfi2GDVLlSbJxnij+yAO3Wy3QqrqhjaCd9JL5qCso9AEAVTFJNP/jwLbXOVkpEP
	hYFA==
X-Gm-Message-State: AOPr4FUFREGbLYJ0Kv/M02wgRipUopgnJVIkpPOZoFV84GInX5/EaAkJuItcGT0oH+NAwCvdpWqZ/rs7VNkKRA==
MIME-Version: 1.0
X-Received: by 10.55.78.131 with SMTP id c125mr45250713qkb.71.1461000928523;
	Mon, 18 Apr 2016 10:35:28 -0700 (PDT)
Received: by 10.55.130.196 with HTTP; Mon, 18 Apr 2016 10:35:28 -0700 (PDT)
Received: by 10.55.130.196 with HTTP; Mon, 18 Apr 2016 10:35:28 -0700 (PDT)
In-Reply-To: <CAJTo0LZtDL-hbxXmYWdgf7HTZtSA4D2FgRKtx1+n6Rqxq50n=g@mail.gmail.com>
References: <CAJTo0LZtDL-hbxXmYWdgf7HTZtSA4D2FgRKtx1+n6Rqxq50n=g@mail.gmail.com>
Date: Mon, 18 Apr 2016 10:35:28 -0700
Message-ID: <CAMKF1spGMHQMVP_-mrHYmDnjM+DPk0mktK_e+9G1bekuP6PnUA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Ross Burton <ross.burton@intel.com>
Cc: yocto@yoctoproject.org, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] bugzilla.yoctoproject.org policy for bugs against multiple releases
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
X-List-Received-Date: Mon, 18 Apr 2016 17:35:31 -0000
Content-Type: multipart/alternative; boundary=001a114a73185c7e260530c5c932

--001a114a73185c7e260530c5c932
Content-Type: text/plain; charset=UTF-8

Can we have a possibility to select  field like "affected version" and have
it such that multiple versions can be specified
On Apr 18, 2016 3:27 AM, "Burton, Ross" <ross.burton@intel.com> wrote:

> Hi,
>
> At the moment we don't really have a policy for oe-core bugs in
> bugzilla.yoctoproject.org that apply to multiple releases, for example
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=9400.  This is a CVE
> bug that should be fixed in all supported branches, and indeed Sona has
> sent patches for Fido/Dizzy/Jethro/master.  Of course now we've got to
> track where these patches are in the submission process and ensure that we
> don't drop any of these, but bugzilla only has a single target milestone
> for each bug.
>
> I propose that for bugs such as this we file a bug report for master and
> then clone it (there's a Clone This Bug button at the bottom) for each
> stable release that is affected.  Then each bug can have it's own target
> milestone set and we can be sure that the patches don't get left out of
> being merged and that QA can effectively verify each branch.
>
> Any objection or feedback? (the first person to suggest moving to Jira
> gets to manually review all CVEs from CVE-1999-0001 onwards are fixed in
> krogoth).
>
> Ross
>
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core
>
>

--001a114a73185c7e260530c5c932
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Can we have a possibility to select=C2=A0 field like &quot;a=
ffected version&quot; and have it such that multiple versions can be specif=
ied</p>
<div class=3D"gmail_quote">On Apr 18, 2016 3:27 AM, &quot;Burton, Ross&quot=
; &lt;<a href=3D"mailto:ross.burton@intel.com">ross.burton@intel.com</a>&gt=
; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D=
"ltr">Hi,<div><br></div><div>At the moment we don&#39;t really have a polic=
y for oe-core bugs in <a href=3D"http://bugzilla.yoctoproject.org" target=
=3D"_blank">bugzilla.yoctoproject.org</a> that apply to multiple releases, =
for example=C2=A0<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?=
id=3D9400" target=3D"_blank">https://bugzilla.yoctoproject.org/show_bug.cgi=
?id=3D9400</a>.=C2=A0 This is a CVE bug that should be fixed in all support=
ed branches, and indeed Sona has sent patches for Fido/Dizzy/Jethro/master.=
=C2=A0 Of course now we&#39;ve got to track where these patches are in the =
submission process and ensure that we don&#39;t drop any of these, but bugz=
illa only has a single target milestone for each bug.</div><div><br></div><=
div>I propose that for bugs such as this we file a bug report for master an=
d then clone it (there&#39;s a Clone This Bug button at the bottom) for eac=
h stable release that is affected.=C2=A0 Then each bug can have it&#39;s ow=
n target milestone set and we can be sure that the patches don&#39;t get le=
ft out of being merged and that QA can effectively verify each branch.</div=
><div><br></div><div>Any objection or feedback? (the first person to sugges=
t moving to Jira gets to manually review all CVEs from CVE-1999-0001 onward=
s are fixed in krogoth).</div><div><br></div><div>Ross</div></div>
<br>--<br>
_______________________________________________<br>
Openembedded-core mailing list<br>
<a href=3D"mailto:Openembedded-core@lists.openembedded.org">Openembedded-co=
re@lists.openembedded.org</a><br>
<a href=3D"http://lists.openembedded.org/mailman/listinfo/openembedded-core=
" rel=3D"noreferrer" target=3D"_blank">http://lists.openembedded.org/mailma=
n/listinfo/openembedded-core</a><br>
<br></blockquote></div>

--001a114a73185c7e260530c5c932--
