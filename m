Return-Path: <jfabernathy@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33236E01374
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 19:59:17 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vbjk17 with SMTP id k17so1301658vbj.35
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 19:59:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=DkQMANL22zTbwFSldQXBVDtponmAJrHDLODmxeIhfYE=;
	b=mCqcNV5yzyUu0gd0acOQeS9/fuvFmddrPamhbSqo+RIzCvA51P/+Dmuq8ciJJ02oij
	6D6aCwqXths6zB2NAqIlYcOscVCEa1PI4Up2n8c/muaU4YdCWcPe8WBMzqIgugnAz7f8
	Yv34vbmPpfygPkYigM4pUKZCCotz8ZWGoX0c0=
MIME-Version: 1.0
Received: by 10.52.20.165 with SMTP id o5mr251929vde.79.1326427156515; Thu, 12
	Jan 2012 19:59:16 -0800 (PST)
Received: by 10.52.33.112 with HTTP; Thu, 12 Jan 2012 19:59:16 -0800 (PST)
In-Reply-To: <4F0F9CE7.9010505@windriver.com>
References: <CANFv2E=kWehG23TsZV76=W7o7GbhbZok2MtacVrOZUmsb+xA0g@mail.gmail.com>
	<4F0F9CE7.9010505@windriver.com>
Date: Thu, 12 Jan 2012 22:59:16 -0500
Message-ID: <CANFv2EmE9cwKCT6wUhwsbb=8tVS_zh4Y8s6pkmGpG3uQdjajhg@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: Developer Manual Appendix B example
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
X-List-Received-Date: Fri, 13 Jan 2012 03:59:17 -0000
Content-Type: multipart/alternative; boundary=20cf307c9fd07c0b6b04b660e3c7

--20cf307c9fd07c0b6b04b660e3c7
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Jan 12, 2012 at 9:54 PM, Bruce Ashfield <
bruce.ashfield@windriver.com> wrote:

> **
> On 12-01-12 09:50 PM, James Abernathy wrote:
>
> I'm trying to do the Developer Manual Appendix B example exactly as
> written only changing the path to my home directory. When I get to B.1.8.3,
> bitbake after patching the kernel calibrate.c and modifiing the path to the
> local git repository for linux-yocto, I get an error on the build.  The log
> file of the error is below:
>
>
> Funny how things tend to arrive in bunches. We just discussed this today
> on the
> list. The meta-kernel-dev layer is tied to master, and causes this problem
> when
> used with edison. And that's what you are seeing here. I'm going to create
> a edison
> branch for meta-kernel-dev to match up the tool SRCREVs.
>
> In the meantime, if you remove the kern-tools-native_git.bbappend from the
> meta-kernel-dev
> layer, the AUTOREV setting will be removed, and you won't pull in tools
> that are too
> new for the matching kernel.
>
> That worked as you said.  I thought it was odd how we did a git checkout
for Linux and Poky, but not the poky-extras repositories.

Jim A

Cheers,
>
> Bruce
>
>
> [INFO] doing kernel configme
> [INFO] Branch yocto/standard/common-pc/base used by common-pc-standard.scc
> [INFO] collecting configs in ./meta/meta-series
> mv: cannot stat
> `/home/jim/poky/build/tmp/work/qemux86-poky-linux/linux-yocto-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+72671808fdbe69a9fe03fd8f094e7c59da04a28c-r2/linux-qemux86-standard-build/.tmp.config*':
> No such file or directory
> creation of pre-processed config data failed
> config of yocto/standard/common-pc/base (common-pc-standard.scc) failed
> ERROR: Function 'do_kernel_configme' failed (see
> /home/jim/poky/build/tmp/work/qemux86-poky-linux/linux-yocto-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+72671808fdbe69a9fe03fd8f094e7c59da04a28c-r2/temp/log.do_kernel_configme.15214
> for further information)
>
> Any help would be appreciated.
>
> Jim A
>
>
> _______________________________________________
> yocto mailing listyocto@yoctoproject.orghttps://lists.yoctoproject.org/listinfo/yocto
>
>
>

--20cf307c9fd07c0b6b04b660e3c7
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Thu, Jan 12, 2012 at 9:54 PM, Bruce A=
shfield <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce.ashfield@windriver.co=
m">bruce.ashfield@windriver.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
<u></u>

 =20
   =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#ffffff"><div class=3D"im">
    On 12-01-12 09:50 PM, James Abernathy wrote:
    <blockquote type=3D"cite">
     =20
      I&#39;m trying to do the Developer Manual Appendix B example exactly
      as written only changing the path to my home directory. When I get
      to B.1.8.3, bitbake after patching the kernel calibrate.c and
      modifiing the path to the local git repository for linux-yocto, I
      get an error on the build.=A0 The log file of the error is below:<br>
    </blockquote>
    <br></div>
    Funny how things tend to arrive in bunches. We just discussed this
    today on the<br>
    list. The meta-kernel-dev layer is tied to master, and causes this
    problem when<br>
    used with edison. And that&#39;s what you are seeing here. I&#39;m goin=
g to
    create a edison<br>
    branch for meta-kernel-dev to match up the tool SRCREVs. <br>
    <br>
    In the meantime, if you remove the kern-tools-native_git.bbappend
    from the meta-kernel-dev<br>
    layer, the AUTOREV setting will be removed, and you won&#39;t pull in
    tools that are too<br>
    new for the matching kernel.<br>
    <br></div></blockquote><div>That worked as you said.=A0 I thought it wa=
s odd how we did a git checkout for Linux and Poky, but not the poky-extras=
 repositories.<br><br>Jim A<br><br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0pt 0pt 0pt 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">
<div text=3D"#000000" bgcolor=3D"#ffffff">
    Cheers,<br>
    <br>
    Bruce<br>
    <br>
    <blockquote type=3D"cite"><div class=3D"im">
      <br>
      [INFO] doing kernel configme<br>
      [INFO] Branch yocto/standard/common-pc/base used by
      common-pc-standard.scc<br>
      [INFO] collecting configs in ./meta/meta-series <br>
      mv: cannot stat
      `/home/jim/poky/build/tmp/work/qemux86-poky-linux/linux-yocto-3.0.4+g=
it1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+72671808fdbe69a9fe03fd8f094e=
7c59da04a28c-r2/linux-qemux86-standard-build/.tmp.config*&#39;:
      No such file or directory<br>
      creation of pre-processed config data failed<br>
      config of yocto/standard/common-pc/base (common-pc-standard.scc)
      failed<br>
      ERROR: Function &#39;do_kernel_configme&#39; failed (see
      /home/jim/poky/build/tmp/work/qemux86-poky-linux/linux-yocto-3.0.4+gi=
t1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+72671808fdbe69a9fe03fd8f094e7=
c59da04a28c-r2/temp/log.do_kernel_configme.15214
      for further information)<br>
      <br>
      Any help would be appreciated. <br>
      <br>
      Jim A<br>
      <br>
      </div><pre><fieldset></fieldset>
_______________________________________________
yocto mailing list
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
    </blockquote>
    <br>
  </div>

</blockquote></div><br>

--20cf307c9fd07c0b6b04b660e3c7--
