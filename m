Return-Path: <navani.srivastava@gmail.com>
Received: from mail-ob0-f175.google.com (mail-ob0-f175.google.com
	[209.85.214.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54D60E0044E
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2013 10:59:46 -0700 (PDT)
Received: by mail-ob0-f175.google.com with SMTP id xn12so9901005obc.20
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2013 10:59:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=fjR2O6nJFDXjyWi6Bbl866EtITfgKAA2pk1S2hVBviM=;
	b=dHsV+6M26anBysUOud1dWhKc2g9+jf0Pg1daK3kclwmBJXvvrEanGtiV3HrJ4/NaKw
	e3YIiyAO2bYJOak3EihX+mjcKiSrToAIBjSkJrfygGC8tVoy55w/MKR5x4KLAxsusfM9
	XjbcYaNdWXvwTGS6Cezf6K85BynFgSTm6Fk/zdemS4mgnKzUn4dQ4pdoqIFUVMm//wvg
	+gRP/JJNsgV91Xe0HpCqNAoLuCIm0GiGVL/gjrgcfMA5q/WljBbmJP7j2j68UhjTUZ9f
	YJO0v111AtKG9BRixynHX0jqf8vAfUkUZK3oizg7JwIWPdd0K3xdp1UwD7lmZXJjpdv0
	rgUQ==
X-Received: by 10.60.52.165 with SMTP id u5mr58577002oeo.15.1375120785872;
	Mon, 29 Jul 2013 10:59:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.221.5 with HTTP; Mon, 29 Jul 2013 10:59:25 -0700 (PDT)
In-Reply-To: <1961165.AMxETSbCgv@helios>
References: <CA+Z6RkUS6gZw3-fzW_muVBC5Cq5Wz7Bo3P+YEVJKf+1OV9=sKg@mail.gmail.com>
	<1961165.AMxETSbCgv@helios>
From: Navani Srivastava <navani.srivastava@gmail.com>
Date: Mon, 29 Jul 2013 23:29:25 +0530
Message-ID: <CA+Z6RkWiUeBoTaYnWD1QLc4ZPWMtWx=LK_AgnFoKcSbaXkquiA@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"navani.srivastava@lnties.com" <navani.srivastava@lnties.com>
Subject: Re: bitbake -c populate_sdk -v poky-image
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
X-List-Received-Date: Mon, 29 Jul 2013 17:59:49 -0000
Content-Type: multipart/alternative; boundary=001a11330af4f71c6004e2aa41fa

--001a11330af4f71c6004e2aa41fa
Content-Type: text/plain; charset=ISO-8859-1

Thanks Paul.. It worked :)
Able to create SDK with qt inbuilt on issuing "bitbake -c populate_sdk
core-image-minimal" , but now "bitbake -v core-image-minimal" also invoke
do_populate_sdk .. Is this the expected behavior or something else?
Is there anyway to clean only sdk by using bitbake command?


>>(I'd like to make this easier at some point in future, so that this extra
stuff
isn't needed.)
It would be great and will make development easy also... Thanks for that..

Regards
Navani


On Fri, Jul 26, 2013 at 9:19 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> Hi Navani,
>
> On Monday 22 July 2013 16:33:48 Navani Srivastava wrote:
> > I want to build meta-toolchain-qte.bb as sdk while running
> >
> > "bitbake -c populate_sdk -v core-image-minimal" ..
> >
> > Please suggest what changes need to be done to provide this feature?
>
> At the moment you'll have to add something like the following to your
> image,
> after the "inherit image" or "inherit core-image" line:
>
> TOOLCHAIN_HOST_TASK += "nativesdk-packagegroup-qte-toolchain-host"
>
> You'll also need to append to the toolchain environment setup script. See
> what
> meta/recipes-qt/meta/meta-toolchain-qt.inc does and you should be able to
> do
> the same in your image recipe.
>
> (I'd like to make this easier at some point in future, so that this extra
> stuff
> isn't needed.)
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--001a11330af4f71c6004e2aa41fa
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks Paul.. It worked :)<br>Able to create SDK with=
 qt inbuilt on issuing &quot;bitbake -c populate_sdk core-image-minimal&quo=
t; , but now &quot;bitbake -v core-image-minimal&quot; also invoke do_popul=
ate_sdk .. Is this the expected behavior or something else?<br>

Is there anyway to clean only sdk by using bitbake command?<br></div><div><=
br><br>&gt;&gt;(I&#39;d like to make this easier at some point in future, s=
o that this extra stuff<br>
isn&#39;t needed.)<br></div><div>It would be great and will make developmen=
t easy also... Thanks for that..<br><br></div><div>Regards<br></div><div>Na=
vani<br></div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_=
quote">

On Fri, Jul 26, 2013 at 9:19 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@=
linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">

Hi Navani,<br>
<div class=3D"im"><br>
On Monday 22 July 2013 16:33:48 Navani Srivastava wrote:<br>
&gt; I want to build <a href=3D"http://meta-toolchain-qte.bb" target=3D"_bl=
ank">meta-toolchain-qte.bb</a> as sdk while running<br>
&gt;<br>
&gt; &quot;bitbake -c populate_sdk -v core-image-minimal&quot; ..<br>
&gt;<br>
&gt; Please suggest what changes need to be done to provide this feature?<b=
r>
<br>
</div>At the moment you&#39;ll have to add something like the following to =
your image,<br>
after the &quot;inherit image&quot; or &quot;inherit core-image&quot; line:=
<br>
<br>
TOOLCHAIN_HOST_TASK +=3D &quot;nativesdk-packagegroup-qte-toolchain-host&qu=
ot;<br>
<br>
You&#39;ll also need to append to the toolchain environment setup script. S=
ee what<br>
meta/recipes-qt/meta/meta-toolchain-qt.inc does and you should be able to d=
o<br>
the same in your image recipe.<br>
<br>
(I&#39;d like to make this easier at some point in future, so that this ext=
ra stuff<br>
isn&#39;t needed.)<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--001a11330af4f71c6004e2aa41fa--
