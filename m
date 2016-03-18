Return-Path: <mtl1nuxd3v@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B29EE00C3B; Fri, 18 Mar 2016 10:32:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtl1nuxd3v[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f170.google.com (mail-yw0-f170.google.com
	[209.85.161.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F387E00BFD
	for <yocto@yoctoproject.org>; Fri, 18 Mar 2016 10:32:54 -0700 (PDT)
Received: by mail-yw0-f170.google.com with SMTP id h65so4850651ywe.0
	for <yocto@yoctoproject.org>; Fri, 18 Mar 2016 10:32:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=E442HTI0DfWpQYmHkpVZjgzflCWLDr6N5fGWhrN/0+c=;
	b=IebKO1ngzzoCxgl/gxwDieDCqbpf1WmWvw2kOCCyDoiBuuubQcIhmadm+urfsndubI
	IjQ3Qfi+X8zvXtoMgyZykFvIwwvW2HOMRKwEWSvQ2ubu65k2G2ZjQKkjRRnJFYHIhwjV
	/95G84u1NtgiSOmWPboer8iV43FcrfSBwUzIKqEpEckVri1MFkQHjGPs0/TDZ/klotoJ
	2bUdDTIn5W0B/C6Iy3uAXkUYICy47BLsvbZi+PUgQ9ulNzqV+hAOFvf/o53iTReLvzWB
	a/KCtHSv/xT68+Vi8f2icxr+3UXcYNh+jM9KE4mQD/vnynJO7dZGWH6ZfUamMdGOGm8g
	6QSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=E442HTI0DfWpQYmHkpVZjgzflCWLDr6N5fGWhrN/0+c=;
	b=O2qytNZtlij1PlzTELWQ3LB4QGM0N04yedrAFr6hr4M+3FNyF0jpwUDAd1jFniDbnC
	VV5hi+iPMc3fhe48MC43yQoiw/54oi8dl9Ki30aAPLuDbJaPb0dYh5fcyMLskIsJQ3Us
	gZllgLrQn3gofBPK9ND4bf6LsJM0rfMzWkp5/SHQELdv1+STUjuaPZuq0MbzvpBPdcCo
	8tHV2/W0zI77abwnbkn/vWJr2CIoHjSYSAOK21vz1fuXT248OUWF2CDKP/XqeGUWiZHu
	atKD9OBBH+4kWe/sDyPaKIYw4xb48ucB29rGnOaJnjBj/zQXa7bX5+p8v0qZ1fym9JPX
	jTUg==
X-Gm-Message-State: AD7BkJIxzuOQcXihmPWLUubNFPPOrfcDoeoqF+FLTsDB5cbOxpXF1gCbRtGaWcUiTVSlhzaryK6q7Ml06Yv1Dg==
MIME-Version: 1.0
X-Received: by 10.129.73.73 with SMTP id w70mr8328657ywa.346.1458322374341;
	Fri, 18 Mar 2016 10:32:54 -0700 (PDT)
Received: by 10.37.40.2 with HTTP; Fri, 18 Mar 2016 10:32:54 -0700 (PDT)
In-Reply-To: <CAJ86T=V-YaLEbH=i+34ZfB27Krnpg_F-XP=k7dBRA+g=D_gBFA@mail.gmail.com>
References: <CALf_N3bObyR-EPgVLtjS+NMmYETQsavs+DT45gxhF8CT1m1-yw@mail.gmail.com>
	<CAJTo0LaVEa3-GL6Nd3uMkBC0P7PvUj23FqTLchMo8bLcLbKXCg@mail.gmail.com>
	<CAJ86T=V-YaLEbH=i+34ZfB27Krnpg_F-XP=k7dBRA+g=D_gBFA@mail.gmail.com>
Date: Fri, 18 Mar 2016 17:32:54 +0000
Message-ID: <CALf_N3YgGQOZpfT17GNd+m-hbCDRekm9zeR6WpKbwuYZjKzHUA@mail.gmail.com>
From: Mark T <mtl1nuxd3v@gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Conditional compile for package in layer.conf for Qemu
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
X-List-Received-Date: Fri, 18 Mar 2016 17:32:57 -0000
Content-Type: multipart/alternative; boundary=001a114dac121739f5052e5623bc

--001a114dac121739f5052e5623bc
Content-Type: text/plain; charset=UTF-8

Ross,

Thanks, that  " IMAGE_INSTALL_append_intel-corei7-64 = "package_b" "  worked
a treat.

If I want to exclude a recipe from a layer for qemu builds  - is there a
similar method for that ?

Thanks,
Mark


On 17 March 2016 at 09:10, Andre McCurdy <armccurdy@gmail.com> wrote:

> On Wed, Mar 16, 2016 at 2:01 AM, Burton, Ross <ross.burton@intel.com>
> wrote:
> >
> > On 16 March 2016 at 08:56, Mark T <mtl1nuxd3v@gmail.com> wrote:
> >>
> >> I'd like to be able to do the following
> >>
> >> IMAGE_INSTALL_append += "package_a"
>
> It's not typical usage to combine += with _append, pick one or the other.
>
> Using _append is generally more reliable if you're not sure how the
> variable you're appending to was originally initialised, however with
> _append you need to manually include a leading space character, ie:
>
> IMAGE_INSTALL_append = " package_a"
>
> >> if ( not qemu )
> >> IMAGE_INSTALL_append += "package_b"
> >> endif
> >
> >
> > The neater way would be if you can easily identify what "not qemu" is,
> for
> > example:
> >
> > IMAGE_INSTALL_append_intel-corei7-64 = "package_b"
> >
> > Would install package_b only for intel-corei7-64 machines.
> >
> > If you want to support arbitrary machines but not qemu then something
> like
> > this might work:
> >
> > MOREDEPS = "package_b"
> > MOREDEPS_qemuall = ""
> > IMAGE_INSTALL_append = " ${MOREDEPS}"
> >
> > (qemuall is an override that is enabled by all qemu machines)
>
> Another alternative would be something like:
>
> IMAGE_INSTALL_remove_qemuall = "package_b"
>
> > Ross
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--001a114dac121739f5052e5623bc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Ross, <br><br></div>Thanks, that=C2=A0=
 &quot; <span class=3D"im">IMAGE_INSTALL_append_intel-corei7-64 =3D &quot;p=
ackage_b&quot; &quot;=C2=A0 </span>worked a treat.=C2=A0 <br><br></div>If I=
 want to exclude a recipe from a layer for qemu builds=C2=A0 - is there a s=
imilar method for that ?<br><br></div>Thanks,<br></div>Mark<br><div><div><b=
r></div></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quot=
e">On 17 March 2016 at 09:10, Andre McCurdy <span dir=3D"ltr">&lt;<a href=
=3D"mailto:armccurdy@gmail.com" target=3D"_blank">armccurdy@gmail.com</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Wed,=
 Mar 16, 2016 at 2:01 AM, Burton, Ross &lt;<a href=3D"mailto:ross.burton@in=
tel.com">ross.burton@intel.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On 16 March 2016 at 08:56, Mark T &lt;<a href=3D"mailto:mtl1nuxd3v@gma=
il.com">mtl1nuxd3v@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; I&#39;d like to be able to do the following<br>
&gt;&gt;<br>
&gt;&gt; IMAGE_INSTALL_append +=3D &quot;package_a&quot;<br>
<br>
</span>It&#39;s not typical usage to combine +=3D with _append, pick one or=
 the other.<br>
<br>
Using _append is generally more reliable if you&#39;re not sure how the<br>
variable you&#39;re appending to was originally initialised, however with<b=
r>
_append you need to manually include a leading space character, ie:<br>
<br>
IMAGE_INSTALL_append =3D &quot; package_a&quot;<br>
<span class=3D""><br>
&gt;&gt; if ( not qemu )<br>
&gt;&gt; IMAGE_INSTALL_append +=3D &quot;package_b&quot;<br>
&gt;&gt; endif<br>
&gt;<br>
&gt;<br>
&gt; The neater way would be if you can easily identify what &quot;not qemu=
&quot; is, for<br>
&gt; example:<br>
&gt;<br>
&gt; IMAGE_INSTALL_append_intel-corei7-64 =3D &quot;package_b&quot;<br>
&gt;<br>
&gt; Would install package_b only for intel-corei7-64 machines.<br>
&gt;<br>
&gt; If you want to support arbitrary machines but not qemu then something =
like<br>
&gt; this might work:<br>
&gt;<br>
&gt; MOREDEPS =3D &quot;package_b&quot;<br>
&gt; MOREDEPS_qemuall =3D &quot;&quot;<br>
&gt; IMAGE_INSTALL_append =3D &quot; ${MOREDEPS}&quot;<br>
&gt;<br>
&gt; (qemuall is an override that is enabled by all qemu machines)<br>
<br>
</span>Another alternative would be something like:<br>
<br>
IMAGE_INSTALL_remove_qemuall =3D &quot;package_b&quot;<br>
<br>
&gt; Ross<br>
<span class=3D"HOEnZb"><font color=3D"#888888">&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
&gt;<br>
</font></span></blockquote></div><br></div>

--001a114dac121739f5052e5623bc--
