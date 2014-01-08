Return-Path: <tarek.elsherbiny@gmail.com>
Received: from mail-qc0-f170.google.com (mail-qc0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B5FDE00897
	for <yocto@yoctoproject.org>; Wed,  8 Jan 2014 06:07:58 -0800 (PST)
Received: by mail-qc0-f170.google.com with SMTP id e9so1324993qcy.1
	for <yocto@yoctoproject.org>; Wed, 08 Jan 2014 06:07:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=C4D2CQRemxyDfiSTOMnJcl2yDf1LFhJoe19AlrBGKEo=;
	b=rcpJpqyj03MegZqEsEFz0SBuYoITf8hd8YOBlgQss3wfhGE47O4U89YUWClJ9YbzEj
	6mLSFL7Bjl7XBbPn4kUEm9otf2mvafrl8IZxP/4NxVCtdAjzF5WNyprE/P0hxHMwWd9l
	7Nu7+RortzsGZIwU8rAEsIcD2ryoZ8F4jVEqLbiiLkjzpHEQc96nZGI9/t0ctacht+WZ
	EVwFgyKnnCJdxgV5+cTbjm85nabOwpmw6N+6rWiSItOLGVC4digzdXrgjCPxiqZZ+4PJ
	EPOmRlu8VVcinmMF2N9GawjOxK6LLZ4UbTlUDc7v5ywhxYG1CowCz1ybTmN6HVb/nqve
	PKDA==
MIME-Version: 1.0
X-Received: by 10.49.127.131 with SMTP id ng3mr6670445qeb.57.1389190077518;
	Wed, 08 Jan 2014 06:07:57 -0800 (PST)
Received: by 10.96.81.104 with HTTP; Wed, 8 Jan 2014 06:07:57 -0800 (PST)
In-Reply-To: <8631278.WqvAtfDsah@helios>
References: <CAB3sqtY8VkwaU8fLT3C28a-WWkW6rTHST6WEv+ijZj6_moT-_w@mail.gmail.com>
	<8631278.WqvAtfDsah@helios>
Date: Wed, 8 Jan 2014 14:07:57 +0000
Message-ID: <CAB3sqtaURWiPHOBHe4a5n3SGEskGrohRseT6S1X97K0SNcqZnw@mail.gmail.com>
From: Tarek El-Sherbiny <tarek.elsherbiny@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Smart PM for upgrade the full image
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
X-List-Received-Date: Wed, 08 Jan 2014 14:08:01 -0000
Content-Type: multipart/alternative; boundary=047d7b6d7b56189aa404ef76055a

--047d7b6d7b56189aa404ef76055a
Content-Type: text/plain; charset=ISO-8859-1

Hi Paul,

Thank you  for your replay.
Smart upgrade only upgrades packages that is currently installed. It
doesn't install new packages nor remove unwanted packages.
Is that not true?

Thanks,
Tarek


On Wed, Jan 8, 2014 at 1:33 PM, Paul Eggleton <paul.eggleton@linux.intel.com
> wrote:

> Hi Tarek,
>
> On Wednesday 08 January 2014 12:52:42 Tarek El-Sherbiny wrote:
> > I have several targets deployed in multiple sites. Each target might  be
> > running  a different version of the product rootfs image. When I release
> a
> > new rootfs image I would like to use the smart command on each target at
> > the customer site to upgrade the software to the latest image. Going
> > through each package and install it separately is inefficient way of
> > handling the upgrade and I don't expect the customer to have the
> knowledge
> > for doing so.
> >
> > What we really need is a smart command to compare the latest rootfs image
> > and install, remove or un-change packages based on what is currently
> > installed.
> >
> > Can the smart command achieve that or do I need to write my own script?
>
> Isn't this the same question you asked the other day? i.e., this is "smart
> upgrade".
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>



-- 
*Tarek*

--047d7b6d7b56189aa404ef76055a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Paul,<div><br></div><div>Thank you =A0for your replay.<=
/div><div>Smart upgrade only upgrades packages that is currently installed.=
 It doesn&#39;t install new packages nor remove unwanted packages.</div><di=
v>
Is that not true?</div><div><br></div><div>Thanks,</div><div>Tarek</div></d=
iv><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed, Ja=
n 8, 2014 at 1:33 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto=
:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.intel=
.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi Tarek,<br>
<div><div class=3D"h5"><br>
On Wednesday 08 January 2014 12:52:42 Tarek El-Sherbiny wrote:<br>
&gt; I have several targets deployed in multiple sites. Each target might =
=A0be<br>
&gt; running =A0a different version of the product rootfs image. When I rel=
ease a<br>
&gt; new rootfs image I would like to use the smart command on each target =
at<br>
&gt; the customer site to upgrade the software to the latest image. Going<b=
r>
&gt; through each package and install it separately is inefficient way of<b=
r>
&gt; handling the upgrade and I don&#39;t expect the customer to have the k=
nowledge<br>
&gt; for doing so.<br>
&gt;<br>
&gt; What we really need is a smart command to compare the latest rootfs im=
age<br>
&gt; and install, remove or un-change packages based on what is currently<b=
r>
&gt; installed.<br>
&gt;<br>
&gt; Can the smart command achieve that or do I need to write my own script=
?<br>
<br>
</div></div>Isn&#39;t this the same question you asked the other day? i.e.,=
 this is &quot;smart<br>
upgrade&quot;.<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div dir=3D"ltr"><i><font color=3D"#666666" face=3D"arial, helvetica, san=
s-serif">Tarek</font></i></div>
</div>

--047d7b6d7b56189aa404ef76055a--
