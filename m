Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-vc0-f172.google.com (mail-vc0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D917CE009B7
	for <yocto@yoctoproject.org>; Thu,  6 Mar 2014 09:16:36 -0800 (PST)
Received: by mail-vc0-f172.google.com with SMTP id lf12so2962263vcb.3
	for <yocto@yoctoproject.org>; Thu, 06 Mar 2014 09:16:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=nN6TqBfUFQW9yXX1KBHfXzML+j5vL8TbVJorH2TZY/0=;
	b=ciu3/6cL5gQfXu2IN+4ufCkRkkWyHLxHhntzmjsJ1JzdpGJduDx1K14FLnBlu0toh2
	l5GfKY3PE8nnMunLpBRW79I5MHKqs5UOnf1ZEimS/t/JSNLQgh0p0H8tL/5pKydfbKRK
	jk8B9rA/4yJlJXbJML6jE/96DcSWVuC2Aj67XvIZUDDqFy+qA0cbKnTyqlV1C4RVl+Mq
	39urwwUjlkg77VolJ6fimArfwz73W+UYiwyEsUzG1u5S7bQLxsWClFWJ3r+8K6IT5Con
	f5BxHBTxyTp2h8x1/da7PQPjycmMSreHrikuivym6tKAWczvUk1zpvAavmbNKD+1ANF/
	GhVg==
MIME-Version: 1.0
X-Received: by 10.58.132.203 with SMTP id ow11mr6261618veb.1.1394126195408;
	Thu, 06 Mar 2014 09:16:35 -0800 (PST)
Received: by 10.220.96.66 with HTTP; Thu, 6 Mar 2014 09:16:35 -0800 (PST)
In-Reply-To: <1687242.35WvzdQ7Vj@peggleto-mobl5.ger.corp.intel.com>
References: <CAA7h+EqQ0Jv1rz75E0owrG0k-b0w5fmgOuTzZhZz2-OSW8p6Rg@mail.gmail.com>
	<1687242.35WvzdQ7Vj@peggleto-mobl5.ger.corp.intel.com>
Date: Thu, 6 Mar 2014 10:16:35 -0700
Message-ID: <CAA7h+EoZOnpv0DzFyxrf-no0PXJZVrFPUsxSdRcxufB=3Xy+FQ@mail.gmail.com>
From: Rick Bianchi <bianchirickkutta@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: hwdata needed for usbip
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
X-List-Received-Date: Thu, 06 Mar 2014 17:16:39 -0000
Content-Type: multipart/alternative; boundary=047d7b66f00fa645b104f3f34ca2

--047d7b66f00fa645b104f3f34ca2
Content-Type: text/plain; charset=ISO-8859-1

Thanks Paul!


On Thu, Mar 6, 2014 at 10:00 AM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> Hi Rick,
>
> On Thursday 06 March 2014 09:05:30 Rick Bianchi wrote:
> > I have looked high and low for the hwdata package, usbip needs it to
> > function. I don't see it with a bitbake -s | grep hwdata and it is not in
> > smart repos.
> >
> > Is this package include in another package? If, so which one?
>
> If I understand correctly, "hwdata" is a Red Hat packaging convention and
> is
> composed of databases from several different source packages; we ship them
> via
> the recipes for their source packages. Thus the USB ID device database can
> be
> found in a usbutils-ids package (produced by the usbutils recipe), the PCI
> ID
> database in pciutils-ids (produced by the pciutils recipe), etc.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--047d7b66f00fa645b104f3f34ca2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Paul!<br></div><div class=3D"gmail_extra"><br><br><=
div class=3D"gmail_quote">On Thu, Mar 6, 2014 at 10:00 AM, Paul Eggleton <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=
=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi Rick,<br>
<div><div class=3D"h5"><br>
On Thursday 06 March 2014 09:05:30 Rick Bianchi wrote:<br>
&gt; I have looked high and low for the hwdata package, usbip needs it to<b=
r>
&gt; function. I don&#39;t see it with a bitbake -s | grep hwdata and it is=
 not in<br>
&gt; smart repos.<br>
&gt;<br>
&gt; Is this package include in another package? If, so which one?<br>
<br>
</div></div>If I understand correctly, &quot;hwdata&quot; is a Red Hat pack=
aging convention and is<br>
composed of databases from several different source packages; we ship them =
via<br>
the recipes for their source packages. Thus the USB ID device database can =
be<br>
found in a usbutils-ids package (produced by the usbutils recipe), the PCI =
ID<br>
database in pciutils-ids (produced by the pciutils recipe), etc.<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--047d7b66f00fa645b104f3f34ca2--
