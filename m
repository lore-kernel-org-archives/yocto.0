Return-Path: <bhushan.az@gmail.com>
Received: from mail-we0-f169.google.com (mail-we0-f169.google.com
	[74.125.82.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12310E00BD3
	for <yocto@yoctoproject.org>; Wed,  2 Apr 2014 04:53:20 -0700 (PDT)
Received: by mail-we0-f169.google.com with SMTP id w62so93232wes.0
	for <yocto@yoctoproject.org>; Wed, 02 Apr 2014 04:53:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=CXpOC1zpmnU1FCFxs3Wdk/RqziE46SkJKJWPnoKepMc=;
	b=AdrTQa/yVAn1lZcuA+21I3ZiQaosSt8SA3o21qL3F1/xiNdxy1r+jNkGHI6eLtiz6i
	Dc4Zf9fkfYPdbpeyPSZn8dGLG9b8oevKdkWXeeUTBpD2O6z1TlWL34GI6r/ZIL2Ak9WG
	85DOSYg+MgWMjptKgHXySmZEa3UmfmaU71dMYVGWV/u83hjzrM6FLpNsa3K5788tQMYz
	GpyLTFWwdvsaBnk3vACNw9JFvXfnfQmlP5Zn3Q0pKxHW2jhhB4zgYBibzIM21nRLT1gf
	5sxLDXIGD+MTx20NudvyQa2rZsCaH6AL5HzHVu7nl9KdxrGKen1g3M/tojoDxw9nOFKQ
	DadQ==
MIME-Version: 1.0
X-Received: by 10.180.91.114 with SMTP id cd18mr1526859wib.28.1396439598985;
	Wed, 02 Apr 2014 04:53:18 -0700 (PDT)
Received: by 10.217.12.74 with HTTP; Wed, 2 Apr 2014 04:53:18 -0700 (PDT)
In-Reply-To: <CAJTo0LbMn-FgabF5cHb=3jKSW-sC2gKC2oRdeQg+TcEXZH5K7Q@mail.gmail.com>
References: <CAG2NicKU0K+KVJ6XJgb9-zatAq81qtDxrJtC_g2W8AZ7nGtrig@mail.gmail.com>
	<CAJTo0LbMn-FgabF5cHb=3jKSW-sC2gKC2oRdeQg+TcEXZH5K7Q@mail.gmail.com>
Date: Wed, 2 Apr 2014 17:23:18 +0530
Message-ID: <CAG2NicKBt_5GwPB4OMdZypqCwvhHRttnT6ZfNOsnPzV0uUv-sQ@mail.gmail.com>
From: Bhushan Shirsath <bhushan.az@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: copying media files to qemux86
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
X-List-Received-Date: Wed, 02 Apr 2014 11:53:21 -0000
Content-Type: multipart/alternative; boundary=f46d043749ad3f75d904f60dee24

--f46d043749ad3f75d904f60dee24
Content-Type: text/plain; charset=ISO-8859-1

Thanks Ross.
got it done using scp.



On Wed, Apr 2, 2014 at 4:49 PM, Burton, Ross <ross.burton@intel.com> wrote:

> On 2 April 2014 12:06, Bhushan Shirsath <bhushan.az@gmail.com> wrote:
> > I'm able to successfully launch "runqemu qemux86".
> > Now i intend to test the media libs built using Yocto on qemu currently.
> > Is it possible to transfer/copy media files to qemux86 emulator ?
> >
> > I tried copying files to tmp/sysroots/qemux86/ but it didn't work.
>
> The sysroot isn't the image. To get content into the image there are
> several ways, depending on what need to do:
>
> 1) make a recipe for the files and install the resulting packages into the
> image
> 2) boot the image and then copy the files using scp
> 3) loopback mount the filesystem and copy the files before booting the
> image
>
> Ross
>

--f46d043749ad3f75d904f60dee24
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks Ross.</div><div>got it done using scp.=A0<br><=
/div><div><br></div></div><div class=3D"gmail_extra"><br><br><div class=3D"=
gmail_quote">On Wed, Apr 2, 2014 at 4:49 PM, Burton, Ross <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton=
@intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On 2=
 April 2014 12:06, Bhushan Shirsath &lt;<a href=3D"mailto:bhushan.az@gmail.=
com">bhushan.az@gmail.com</a>&gt; wrote:<br>

&gt; I&#39;m able to successfully launch &quot;runqemu qemux86&quot;.<br>
&gt; Now i intend to test the media libs built using Yocto on qemu currentl=
y.<br>
&gt; Is it possible to transfer/copy media files to qemux86 emulator ?<br>
&gt;<br>
&gt; I tried copying files to tmp/sysroots/qemux86/ but it didn&#39;t work.=
<br>
<br>
</div></div>The sysroot isn&#39;t the image. To get content into the image =
there are<br>
several ways, depending on what need to do:<br>
<br>
1) make a recipe for the files and install the resulting packages into the =
image<br>
2) boot the image and then copy the files using scp<br>
3) loopback mount the filesystem and copy the files before booting the imag=
e<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--f46d043749ad3f75d904f60dee24--
