Return-Path: <dimtass@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 005F9E00C1C; Wed,  7 Nov 2018 01:19:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dimtass[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.54 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com
	[209.85.210.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4B7AE00C19
	for <yocto@yoctoproject.org>; Wed,  7 Nov 2018 01:19:07 -0800 (PST)
Received: by mail-ot1-f54.google.com with SMTP id c32so14146688otb.8
	for <yocto@yoctoproject.org>; Wed, 07 Nov 2018 01:19:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=qq3eu6LzUWTKgOnJWKIklnSaA6na0+1mbG58lqCbIpU=;
	b=VXumyJudczNee/WibZAZQo1n8r2t/KpUXh/OIUkMMPA7V+INGUQ/w+Zf2Sl5qd/bYE
	OHWpqdsyMdr5HOU7pCAeCNDu/X7r05sBpQWPfUiwzhamVIsf6jDXV8Hq1aJXJ9kEUpSc
	UjIxs9tn9LKzYfINkjcMyazMRS1QZGnkIi3MRcDREGiJWMtwhtKGq3sAyZ+c4t/6XHJ3
	NTLVAFLsFQL4gUOExKW0FgPo+S0QN1IcLirOTRpLEXrB6uHy2yd7J0mDGzhCNBE9xO54
	PuO+JCj1QGUMiyN+fOnkkvDDXN97SgN649bguvMoMEcurmwlcJ1VjE5hrZj5z4mgzcGZ
	y5Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=qq3eu6LzUWTKgOnJWKIklnSaA6na0+1mbG58lqCbIpU=;
	b=QpVDhklbjhwH3V4xuAMjUNVW5KBWh3D0tWLy85LnTW6xwTp+ACXW3OJbHVIW+F8T9G
	mvADY+UZIsaCt2/Vs9TZu8vUeVv6qT5qit6PYs2Vs59flPi2gv2bSifO1fYh73r/Uesq
	nvnRMemSoyBcMmqeSALytfO3364WoG5vyVf0jy4IFQZ6YT4ROzpkknIauE/iqIXZ9lqf
	OqSBbq4VyEyqnzaqTUe9RvADtQP5BjY8z1lq9SbxQM5LiTjqjrMXz8xeHikHRxbUPVkW
	gAWtn9bHgbwB1qfWjlB0ok4/+eC28PADVonTEEC4mhmSSOJ3WyNpnfQtvc1hST4euKLs
	V7Cw==
X-Gm-Message-State: AGRZ1gIxeKoOJz7mEbPzDsEN5WPKfgBptM+D696KiI0p+qyFyIO6EfUG
	oiKFyaR0hAasIH/UhyVPciaAbC2Bd7E4wVhXwVuqGTrl
X-Google-Smtp-Source: AJdET5cO3yW2CBNLM+HfnOCcSsGxi47pGRg31zm6eMT9iv4eSxx5NckiUXJAS8SSdOeFS1FR3QG3mQ0KGvZvFHnea1U=
X-Received: by 2002:a9d:3c4f:: with SMTP id j15mr555401ote.47.1541582347056;
	Wed, 07 Nov 2018 01:19:07 -0800 (PST)
MIME-Version: 1.0
References: <CACKFPN2VuVTRr=eMqoDxsTjH8YcDcSBzgRs2Y07XD20mm2d66Q@mail.gmail.com>
	<edf7530b3fc884d7fed1ee02a5745ba73fa71d18.camel@intel.com>
In-Reply-To: <edf7530b3fc884d7fed1ee02a5745ba73fa71d18.camel@intel.com>
From: Dimitris Tassopoulos <dimtass@gmail.com>
Date: Wed, 7 Nov 2018 10:18:55 +0100
Message-ID: <CACKFPN3_46iG1PQn5ATFDw88Etpr6oP3Unng-tryyLbEzMFA8g@mail.gmail.com>
To: anuj.mittal@intel.com
Cc: yocto@yoctoproject.org
Subject: Re: [poky] bug #8729 grub bootloader
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
X-List-Received-Date: Wed, 07 Nov 2018 09:19:09 -0000
Content-Type: multipart/alternative; boundary="00000000000030400e057a0f9c1a"

--00000000000030400e057a0f9c1a
Content-Type: text/plain; charset="UTF-8"

Hi Anuj,

thanks for the reply. First I need to say that it was insightful from your
side to use virtual/grub-bootconf
and this made things much easier. I only had to add `BBCLASSEXTEND =
"native"` in the grub-efi in
order to get `grub-editconf` for the host and create environment files on
the fly.

I had a look in your recommendation and it works after some tweaking. The `
efi-bootdisk.wks.im` file
has an example of this case, as your links suggested. It seems though that
the environment variable
`${IMAGE_ROOTFS}` in the file is not translated correctly during the
bitbake build and it fails with an
error. For example in my case the error was:

Couldn't get bitbake variable from
/rnd/yocto/grub-dev/build/tmp/sysroots/qemux86/imgdata/${IMAGE_ROOTFS}/boot.env.

After I changed the `${ROOTFS}` in `--rootfs-dir=${IMAGE_ROOTFS}/boot` with
the absolute path
then it worked. For me it's nor an issue but it's good for you to know.
Without someone pointing this
out it would be very difficult to discover the above use-case as it's not
clearly documented.

Also, it would be nice when bitbake detects that both `loader=grub-efi` and
`grub-efi_%.bb` are used
to print a warning about this overlapping and suggest the use of
`--rootfs-dir` and `--exclude-path`.

I'll continue from this point now.

Thanks again,
Dimitris

On Wed, Nov 7, 2018 at 1:58 AM Mittal, Anuj <anuj.mittal@intel.com> wrote:

> Hi Dimitris
>
> On Tue, 2018-11-06 at 16:12 +0100, Dimitris Tassopoulos wrote:
> >
> > In this case the bootimg-efi.py script creates the extra partition, a
> > different grub.cfg and also
> > edits the /etc/fstab and mounts this partition over /boot and
> > therefore virtual/grub-bootconf
> > becomes unused.
> >
> > This raises the following questions:
> > - Why there are two different facilities to achieve the same thing?
> > - Why the second overrides the first one, instead of sharing the same
> > files?
> > - How to proceed from now on?
> >
>
> I think this needed --exclude-path in wks to be used to take effect.
> Please see:
>
>
>
> http://lists.openembedded.org/pipermail/openembedded-core/2018-February/147837.html
>
> and bug:
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=10073
>

--00000000000030400e057a0f9c1a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr">Hi Anuj,<div><br></div><div>thanks for the reply=
. First I need to say that it was insightful from your side to use virtual/=
grub-bootconf</div><div>and this made things much easier. I only had to add=
 `BBCLASSEXTEND =3D &quot;native&quot;` in the grub-efi in</div><div>order =
to get `grub-editconf` for the host and create environment files on the fly=
.</div><div><br></div><div>I had a look in your recommendation and it works=
 after some tweaking. The `<a href=3D"http://efi-bootdisk.wks.im">efi-bootd=
isk.wks.im</a>` file</div><div>has an example of this case, as your links s=
uggested. It seems though that the environment variable</div><div>`${IMAGE_=
ROOTFS}` in the file is not translated correctly during the bitbake build a=
nd it fails with an</div><div>error. For example in my case the error was:<=
/div><div><br></div><div>Couldn&#39;t get bitbake variable from /rnd/yocto/=
grub-dev/build/tmp/sysroots/qemux86/imgdata/${IMAGE_ROOTFS}/boot.env.<br></=
div><div><br></div><div>After I changed the `${ROOTFS}` in `--rootfs-dir=3D=
${IMAGE_ROOTFS}/boot` with the absolute path</div><div>then it worked. For =
me it&#39;s nor an issue but it&#39;s good for you to know. Without someone=
 pointing this</div><div>out it would be very difficult to discover the abo=
ve use-case as it&#39;s not clearly documented.</div><div><br></div><div>Al=
so, it would be nice when bitbake detects that both `loader=3Dgrub-efi` and=
 `grub-efi_%.bb` are used</div><div>to print a warning about this overlappi=
ng and suggest the use of `--rootfs-dir` and `--exclude-path`.</div><div><b=
r></div><div>I&#39;ll continue from this point now.</div><div><br></div><di=
v>Thanks again,</div><div>Dimitris</div></div></div></div></div></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Wed, Nov 7, 2018 at 1:5=
8 AM Mittal, Anuj &lt;<a href=3D"mailto:anuj.mittal@intel.com">anuj.mittal@=
intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Dimit=
ris<br>
<br>
On Tue, 2018-11-06 at 16:12 +0100, Dimitris Tassopoulos wrote:<br>
&gt; <br>
&gt; In this case the bootimg-efi.py script creates the extra partition, a<=
br>
&gt; different grub.cfg and also<br>
&gt; edits the /etc/fstab and mounts this partition over /boot and<br>
&gt; therefore virtual/grub-bootconf<br>
&gt; becomes unused.<br>
&gt; <br>
&gt; This raises the following questions:<br>
&gt; - Why there are two different facilities to achieve the same thing?<br=
>
&gt; - Why the second overrides the first one, instead of sharing the same<=
br>
&gt; files?<br>
&gt; - How to proceed from now on?<br>
&gt; <br>
<br>
I think this needed --exclude-path in wks to be used to take effect.<br>
Please see:<br>
<br>
<br>
<a href=3D"http://lists.openembedded.org/pipermail/openembedded-core/2018-F=
ebruary/147837.html" rel=3D"noreferrer" target=3D"_blank">http://lists.open=
embedded.org/pipermail/openembedded-core/2018-February/147837.html</a><br>
<br>
and bug:<br>
<br>
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10073" rel=
=3D"noreferrer" target=3D"_blank">https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D10073</a><br>
</blockquote></div>

--00000000000030400e057a0f9c1a--
