Return-Path: <brduffy@gmail.com>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67940E0075D
	for <yocto@yoctoproject.org>; Wed,  7 Sep 2011 04:44:47 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wyg30 with SMTP id 30so7841826wyg.35
	for <yocto@yoctoproject.org>; Wed, 07 Sep 2011 04:44:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=O+Ehx25WyCOztovrbme2ynhSA3qTDbN1ClNs818tMIs=;
	b=fSB/QEwOz/7zGCTPw93togPJ9QsKSt2Kxa/fTm3/1HaO+AVjRmA4BNvRBRzF4RitfL
	vWe3difgBGcSuKMzP6Ng4r02LMhp5yCw8FMm1xtIm4R2eGdKVK7we0wBcoadVnmktj3q
	4xkoIQrykyh4tkaFiBm/z/6NxEqeSHMlX8P0U=
MIME-Version: 1.0
Received: by 10.216.136.216 with SMTP id w66mr4651927wei.94.1315395886278;
	Wed, 07 Sep 2011 04:44:46 -0700 (PDT)
Received: by 10.216.168.147 with HTTP; Wed, 7 Sep 2011 04:44:46 -0700 (PDT)
In-Reply-To: <201109071147.39307.paul.eggleton@linux.intel.com>
References: <CAHrDPkpK-VGzJxEH4JGN3Q7KoQpuPxkJ5spD1ehMvPYgQND0WQ@mail.gmail.com>
	<4E674761.5080404@communistcode.co.uk>
	<201109071147.39307.paul.eggleton@linux.intel.com>
Date: Wed, 7 Sep 2011 07:44:46 -0400
Message-ID: <CAHrDPkro4y03uCpniysxNyCsx+Y=Lfir6b8ykDmYVWKS8aZkzw@mail.gmail.com>
From: Brian Duffy <brduffy@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Login/Password?
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
X-List-Received-Date: Wed, 07 Sep 2011 11:44:48 -0000
Content-Type: multipart/alternative; boundary=001636eeffa28a678b04ac5878c9

--001636eeffa28a678b04ac5878c9
Content-Type: text/plain; charset=ISO-8859-1

Okay, I was able to login with root/no password. Its a nice start, thanks
for all of your help. Off to work.

On Wed, Sep 7, 2011 at 6:47 AM, Paul Eggleton <paul.eggleton@linux.intel.com
> wrote:

> On Wednesday 07 September 2011 11:28:49 Jack Mitchell wrote:
> > It should be:
> >
> > user: root
> >
> > with a blank password.
>
> Yes, that's correct.
>
> For reference, when it comes time to do release/production images you
> should
> remove debug-tweaks from IMAGE_FEATURES (and if you're not rebuilding
> everything from scratch ensure dropbear is rebuilt) and probably add
> zap_root_password to ROOTFS_POSTPROCESS_COMMAND as well. Actually we should
> ensure zap_root_password gets added automatically without debug-tweaks for
> core-image at least, I'll try to fix that today.
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
Duff

--001636eeffa28a678b04ac5878c9
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Okay, I was able to login with root/no password. Its a nice start, thanks f=
or all of your help. Off to work.<br><br><div class=3D"gmail_quote">On Wed,=
 Sep 7, 2011 at 6:47 AM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:paul.eggleton@linux.intel.com">paul.eggleton@linux.intel.com</a>&gt;</s=
pan> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;"><div class=3D"im">On Wednesday 07 September=
 2011 11:28:49 Jack Mitchell wrote:<br>
&gt; It should be:<br>
&gt;<br>
&gt; user: root<br>
&gt;<br>
&gt; with a blank password.<br>
<br>
</div>Yes, that&#39;s correct.<br>
<br>
For reference, when it comes time to do release/production images you shoul=
d<br>
remove debug-tweaks from IMAGE_FEATURES (and if you&#39;re not rebuilding<b=
r>
everything from scratch ensure dropbear is rebuilt) and probably add<br>
zap_root_password to ROOTFS_POSTPROCESS_COMMAND as well. Actually we should=
<br>
ensure zap_root_password gets added automatically without debug-tweaks for<=
br>
core-image at least, I&#39;ll try to fix that today.<br>
<br>
Cheers,<br>
Paul<br>
<font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>Duff<=
br>

--001636eeffa28a678b04ac5878c9--
