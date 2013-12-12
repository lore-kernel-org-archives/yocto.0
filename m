Return-Path: <vidal.develone@gmail.com>
Received: from mail-qe0-f42.google.com (mail-qe0-f42.google.com
	[209.85.128.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B667E00796
	for <yocto@yoctoproject.org>; Thu, 12 Dec 2013 08:27:57 -0800 (PST)
Received: by mail-qe0-f42.google.com with SMTP id b4so531624qen.29
	for <yocto@yoctoproject.org>; Thu, 12 Dec 2013 08:27:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=oNUFEKVycPt/DJhKrWLf/CvlMaHFMm2/HHOvZmn9C0g=;
	b=gyAc3noIyy6oN9Znwm5j0A9zPXBd3G0OPBPrc5gdE6F+Wu7eoJTB3Ew3wowEtPYk2C
	XPM51zTQ/7gqZcFg3Ez87ojsyMLijnb5imWV7jLZiBGQmCYT6jUH0Wc9LvCQim6VUOCc
	KMzuk9LXHhc2Sgxdsuk2XWKK43VFIrYxDAhS28GS75JFhtnjvGe3heWQEuXUVvQZv5i3
	QsY3DKQs0gtqLMzOtgjB6ROH2tJpZCOAZfwVILHKeH71BN3UtHqojys3+U+4X3Pmvn6B
	mBOXcVKCI1oOQoZGVtg+9EZEPkD9piooco6d9mJemF822iPI2g4MXHVIMW4DA2sksjUJ
	HAxA==
MIME-Version: 1.0
X-Received: by 10.49.17.232 with SMTP id r8mr15044468qed.74.1386865676436;
	Thu, 12 Dec 2013 08:27:56 -0800 (PST)
Received: by 10.140.37.49 with HTTP; Thu, 12 Dec 2013 08:27:56 -0800 (PST)
In-Reply-To: <CAJTo0LZU+kU_B4bfwuzZ0tYOfaRs8U00QnpcxodEoJDF9mEGhQ@mail.gmail.com>
References: <CANwz6nwwHW9ja1zXiYjpQdF1A5isxb=3=4eCvk01-3-_t3PP6Q@mail.gmail.com>
	<CAJTo0LZU+kU_B4bfwuzZ0tYOfaRs8U00QnpcxodEoJDF9mEGhQ@mail.gmail.com>
Date: Thu, 12 Dec 2013 09:27:56 -0700
Message-ID: <CANwz6nxBCmk6ZW8freK+s07+8QAQjexEgUmHuqJD0dEkORVfvQ@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: poky tree
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
X-List-Received-Date: Thu, 12 Dec 2013 16:27:59 -0000
Content-Type: multipart/alternative; boundary=047d7bea3be4feccb504ed58d39a

--047d7bea3be4feccb504ed58d39a
Content-Type: text/plain; charset=ISO-8859-1

Thanks for the information.  When I removed poky/build/tmp everything
worked okay.  My build was quick and I did not need to recompile.  My
question is what relation between poky/build/tmp/work and
poky/build/tmp/sysroot?
Thanks for all the great work



On Tue, Dec 10, 2013 at 2:18 PM, Burton, Ross <ross.burton@intel.com> wrote:

> On 10 December 2013 20:38, Edward Vidal <vidal.develone@gmail.com> wrote:
> > Hello,
> > I have a poky tree that I have used for several builds.
> > What is the command to clean out the poky/build/tmp area.
> > I am on the dylan branch.  My conf files are configured and my
> custom-image
> > are okay.
> > I want to pull meta-oe, meta-broswer, and meta-xiiinx, and poky with a
> clean
> > work area.
> > Can I just delete poky/build or poky/build/tmp?
>
> Deleting poky/build/tmp is safe assuming that you've copied out
> everything you want to keep (images, etc).  By default sstate-cache is
> next to tmp not underneath it, so the first build after wiping tmp
> will be reconstructed from sstate instead of needing to recompile
> anything.
>
> Ross
>

--047d7bea3be4feccb504ed58d39a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks for the information.=A0 When I removed poky/bu=
ild/tmp everything worked okay.=A0 My build was quick and I did not need to=
 recompile.=A0 My question is what relation between poky/build/tmp/work and=
 poky/build/tmp/sysroot?<br>
</div>Thanks for all the great work<br>=A0<br></div><div class=3D"gmail_ext=
ra"><br><br><div class=3D"gmail_quote">On Tue, Dec 10, 2013 at 2:18 PM, Bur=
ton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" ta=
rget=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On 1=
0 December 2013 20:38, Edward Vidal &lt;<a href=3D"mailto:vidal.develone@gm=
ail.com">vidal.develone@gmail.com</a>&gt; wrote:<br>

&gt; Hello,<br>
&gt; I have a poky tree that I have used for several builds.<br>
&gt; What is the command to clean out the poky/build/tmp area.<br>
&gt; I am on the dylan branch. =A0My conf files are configured and my custo=
m-image<br>
&gt; are okay.<br>
&gt; I want to pull meta-oe, meta-broswer, and meta-xiiinx, and poky with a=
 clean<br>
&gt; work area.<br>
&gt; Can I just delete poky/build or poky/build/tmp?<br>
<br>
</div></div>Deleting poky/build/tmp is safe assuming that you&#39;ve copied=
 out<br>
everything you want to keep (images, etc). =A0By default sstate-cache is<br=
>
next to tmp not underneath it, so the first build after wiping tmp<br>
will be reconstructed from sstate instead of needing to recompile<br>
anything.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--047d7bea3be4feccb504ed58d39a--
