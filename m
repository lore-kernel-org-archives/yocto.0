Return-Path: <marc.ferland@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2B52E0030F
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2011 08:11:44 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qcsc2 with SMTP id c2so4640102qcs.35
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2011 08:11:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=unJieIrXc74HYBdpxIupqtmOum7T6Ik+yGm2hiXxKD4=;
	b=V3ags6EnsA2FHs5onGR9atK98CCfbu8Ov8U4Q4HAXFTUkSdE+H1scZgRCUjZuWwJRY
	Isew6D6Lk48HlcMnOgLKxzyiC4WaphlpVXylpSuYFZHxdRXmo0dU0xTXZgV1mjTWSXn6
	zL6hs0AhKMrarmBADXicbdpCSqia4DE56qcIM=
MIME-Version: 1.0
Received: by 10.50.85.197 with SMTP id j5mr6336909igz.32.1323706303348; Mon,
	12 Dec 2011 08:11:43 -0800 (PST)
Received: by 10.50.182.200 with HTTP; Mon, 12 Dec 2011 08:11:43 -0800 (PST)
In-Reply-To: <4EE125ED.7010201@linux.intel.com>
References: <CAMRMzCDCBX15T8k+sAojLKiCwn_xReuFc-xyFCCGnBVYwzj7iQ@mail.gmail.com>
	<4EE11521.40100@linux.intel.com>
	<CAMRMzCC=OyJqpOPuzwEXG0EBY57eQSWq5YwjrFdzKgoFcyU=HQ@mail.gmail.com>
	<4EE125ED.7010201@linux.intel.com>
Date: Mon, 12 Dec 2011 11:11:43 -0500
Message-ID: <CAMRMzCDpxFyxE=XDunz+VhTrjw0K=aOqpUw_-4GYAJJgbOPXWw@mail.gmail.com>
From: Marc Ferland <marc.ferland@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Adding features to a machine
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
X-List-Received-Date: Mon, 12 Dec 2011 16:11:45 -0000
Content-Type: multipart/alternative; boundary=e89a8f3b9d4dff7fb904b3e763c5

--e89a8f3b9d4dff7fb904b3e763c5
Content-Type: text/plain; charset=UTF-8

On Thu, Dec 8, 2011 at 4:02 PM, Darren Hart <dvhart@linux.intel.com> wrote:

>
>
> On 12/08/2011 12:36 PM, Marc Ferland wrote:
> > On Thu, Dec 8, 2011 at 2:50 PM, Darren Hart <dvhart@linux.intel.com
> > <mailto:dvhart@linux.intel.com>> wrote:
> >
> >     On 12/08/2011 11:13 AM, Marc Ferland wrote:
> >     > Hi,
> >     >
> >     > I have a crownbay based machine here and I would like to add the
> >     > bluetooth machine feature to it. Do I have to create a whole new
> >     BSP for
> >     > this? I haven't seen any examples showing how to _modify_ a machine
> >     > description.
> >
> >
> >     Have you tried modifying either MACHINE_FEATURES_crownbay or
> >     KERNEL_FEATURES_crownbay from local.conf? I haven't attempted this
> >     myself, but I believe it should work.
> >
> >
> > Tried both.
> >
> > With MACHINE_FEATURES_crownbay += "bluetooth" I get:
> > NOTE: Resolving any missing task queue dependencies
> > ERROR: Nothing RPROVIDES 'modutils-depmod' (but
> > /home/marc/dev/poky/poky-src/meta/recipes-kernel/update-modules/
> update-modules_1.0.bb
> > <http://update-modules_1.0.bb> RDEPENDS on or otherwise requires it)
> > NOTE: Runtime target 'modutils-depmod' is unbuildable, removing...
>
> Hrm, yes, I don't see what provides modutils-depmod. I believe you may
> have found a bug. Mind filing one?
>
> > Missing or unbuildable dependency chain was: ['modutils-depmod']
> > NOTE: Runtime target 'perf' is unbuildable, removing...
> > Missing or unbuildable dependency chain was: ['perf', 'update-modules',
> > 'modutils-depmod']
> > NOTE: Runtime target 'task-core-tools-profile' is unbuildable,
> removing...
> > Missing or unbuildable dependency chain was: ['task-core-tools-profile',
> > 'perf', 'update-modules', 'modutils-depmod']
> > ERROR: Required build target 'sonatest-test-image' has no buildable
> > providers.
> > Missing or unbuildable dependency chain was: ['sonatest-test-image',
> > 'task-core-tools-profile', 'perf', 'update-modules', 'modutils-depmod']
> >
> > With KERNEL_FEATURES_crownbay += "bluetooth", I get the following when
> > recompiling the kernel:
> > Log data follows:
> > | Deleted branch meta-temp (was 620917d).
> > | WARNING: addon feature "bluetooth" was not found
> > | ERROR: required features were not found. aborting
> >
> > BTW, I did not find any precise kernel feature for bluetooth when
> > looking in
> >
> builddir/tmp/work/crownbay-poky-linux/linux-yocto/linux/meta/cfg/kernel-cache/
>
> Right, you would need to add something if you need a driver that isn't
> listed there or in the crownbay BSP.
>
> Sorry to bring this up again, but since the documentation states that
"bluetooth" is a valid MACHINE_FEATURE option and no configuration fragment
is present to support this feature does that mean that it cannot really
work by simply adding the option? Could this be a bug/missing feature?

BTW, I got bluetooth working but I add to create a config fragment like you
suggested which is kind of confusing since a MACHINE_FEATURE already exists
for this functionality.

Regards,
Marc

--e89a8f3b9d4dff7fb904b3e763c5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Thu, Dec 8, 2011 at 4:02 PM, Darren H=
art <span dir=3D"ltr">&lt;<a href=3D"mailto:dvhart@linux.intel.com">dvhart@=
linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div class=3D"im"><br>
<br>
On 12/08/2011 12:36 PM, Marc Ferland wrote:<br>
&gt; On Thu, Dec 8, 2011 at 2:50 PM, Darren Hart &lt;<a href=3D"mailto:dvha=
rt@linux.intel.com">dvhart@linux.intel.com</a><br>
</div><div class=3D"im">&gt; &lt;mailto:<a href=3D"mailto:dvhart@linux.inte=
l.com">dvhart@linux.intel.com</a>&gt;&gt; wrote:<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 On 12/08/2011 11:13 AM, Marc Ferland wrote:<br>
&gt; =C2=A0 =C2=A0 &gt; Hi,<br>
&gt; =C2=A0 =C2=A0 &gt;<br>
&gt; =C2=A0 =C2=A0 &gt; I have a crownbay based machine here and I would li=
ke to add the<br>
&gt; =C2=A0 =C2=A0 &gt; bluetooth machine feature to it. Do I have to creat=
e a whole new<br>
&gt; =C2=A0 =C2=A0 BSP for<br>
&gt; =C2=A0 =C2=A0 &gt; this? I haven&#39;t seen any examples showing how t=
o _modify_ a machine<br>
&gt; =C2=A0 =C2=A0 &gt; description.<br>
&gt;<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 Have you tried modifying either MACHINE_FEATURES_crownba=
y or<br>
&gt; =C2=A0 =C2=A0 KERNEL_FEATURES_crownbay from local.conf? I haven&#39;t =
attempted this<br>
&gt; =C2=A0 =C2=A0 myself, but I believe it should work.<br>
&gt;<br>
&gt;<br>
&gt; Tried both.<br>
&gt;<br>
&gt; With MACHINE_FEATURES_crownbay +=3D &quot;bluetooth&quot; I get:<br>
&gt; NOTE: Resolving any missing task queue dependencies<br>
&gt; ERROR: Nothing RPROVIDES &#39;modutils-depmod&#39; (but<br>
&gt; /home/marc/dev/poky/poky-src/meta/recipes-kernel/update-modules/<a hre=
f=3D"http://update-modules_1.0.bb" target=3D"_blank">update-modules_1.0.bb<=
/a><br>
</div>&gt; &lt;<a href=3D"http://update-modules_1.0.bb" target=3D"_blank">h=
ttp://update-modules_1.0.bb</a>&gt; RDEPENDS on or otherwise requires it)<b=
r>
<div class=3D"im">&gt; NOTE: Runtime target &#39;modutils-depmod&#39; is un=
buildable, removing...<br>
<br>
</div>Hrm, yes, I don&#39;t see what provides modutils-depmod. I believe yo=
u may<br>
have found a bug. Mind filing one?<br>
<div class=3D"im"><br>
&gt; Missing or unbuildable dependency chain was: [&#39;modutils-depmod&#39=
;]<br>
&gt; NOTE: Runtime target &#39;perf&#39; is unbuildable, removing...<br>
&gt; Missing or unbuildable dependency chain was: [&#39;perf&#39;, &#39;upd=
ate-modules&#39;,<br>
&gt; &#39;modutils-depmod&#39;]<br>
&gt; NOTE: Runtime target &#39;task-core-tools-profile&#39; is unbuildable,=
 removing...<br>
&gt; Missing or unbuildable dependency chain was: [&#39;task-core-tools-pro=
file&#39;,<br>
&gt; &#39;perf&#39;, &#39;update-modules&#39;, &#39;modutils-depmod&#39;]<b=
r>
&gt; ERROR: Required build target &#39;sonatest-test-image&#39; has no buil=
dable<br>
&gt; providers.<br>
&gt; Missing or unbuildable dependency chain was: [&#39;sonatest-test-image=
&#39;,<br>
&gt; &#39;task-core-tools-profile&#39;, &#39;perf&#39;, &#39;update-modules=
&#39;, &#39;modutils-depmod&#39;]<br>
&gt;<br>
&gt; With KERNEL_FEATURES_crownbay +=3D &quot;bluetooth&quot;, I get the fo=
llowing when<br>
&gt; recompiling the kernel:<br>
&gt; Log data follows:<br>
&gt; | Deleted branch meta-temp (was 620917d).<br>
&gt; | WARNING: addon feature &quot;bluetooth&quot; was not found<br>
&gt; | ERROR: required features were not found. aborting<br>
&gt;<br>
&gt; BTW, I did not find any precise kernel feature for bluetooth when<br>
&gt; looking in<br>
&gt; builddir/tmp/work/crownbay-poky-linux/linux-yocto/linux/meta/cfg/kerne=
l-cache/<br>
<br>
</div>Right, you would need to add something if you need a driver that isn&=
#39;t<br>
listed there or in the crownbay BSP.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br></div></div></blockquote><div>S=
orry to bring this up again, but since the documentation states that &quot;=
bluetooth&quot; is a valid MACHINE_FEATURE option and no configuration frag=
ment is present to support this feature does that mean that it cannot reall=
y work by simply adding the option? Could this be a bug/missing feature?<br=
>
<br>BTW, I got bluetooth working but I add to create a config fragment like=
 you suggested which is kind of confusing since a MACHINE_FEATURE already e=
xists for this functionality.<br><br>Regards, <br>Marc<br></div></div>

--e89a8f3b9d4dff7fb904b3e763c5--
