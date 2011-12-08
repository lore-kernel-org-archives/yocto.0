Return-Path: <marc.ferland@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF593E005B9
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2011 12:36:48 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qcsc2 with SMTP id c2so2190907qcs.35
	for <yocto@yoctoproject.org>; Thu, 08 Dec 2011 12:36:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=gwEJ1XP1V0IZNbeXAIEF+YtvNYjthNHEJPg4kFtZw4o=;
	b=Fy+fqiaTk8RTBxy11zuhznvnf6SOk8f2pIKa3LUIDYRhy6lZREMDiDugl/BLauXCGe
	2nWF/QoDudaqST82J9UuvSoNhfb0jJmC/kyDgA3z/MdEUZVyq44VQJ+e5IxOV8cMN8bb
	sl/i+d2vrTaLWxa94of3lwAaboBl4XqOokdoo=
MIME-Version: 1.0
Received: by 10.50.189.231 with SMTP id gl7mr346275igc.44.1323376607978; Thu,
	08 Dec 2011 12:36:47 -0800 (PST)
Received: by 10.50.182.200 with HTTP; Thu, 8 Dec 2011 12:36:47 -0800 (PST)
In-Reply-To: <4EE11521.40100@linux.intel.com>
References: <CAMRMzCDCBX15T8k+sAojLKiCwn_xReuFc-xyFCCGnBVYwzj7iQ@mail.gmail.com>
	<4EE11521.40100@linux.intel.com>
Date: Thu, 8 Dec 2011 15:36:47 -0500
Message-ID: <CAMRMzCC=OyJqpOPuzwEXG0EBY57eQSWq5YwjrFdzKgoFcyU=HQ@mail.gmail.com>
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
X-List-Received-Date: Thu, 08 Dec 2011 20:36:49 -0000
Content-Type: multipart/alternative; boundary=14dae93411519f633104b39aa0db

--14dae93411519f633104b39aa0db
Content-Type: text/plain; charset=UTF-8

On Thu, Dec 8, 2011 at 2:50 PM, Darren Hart <dvhart@linux.intel.com> wrote:

> On 12/08/2011 11:13 AM, Marc Ferland wrote:
> > Hi,
> >
> > I have a crownbay based machine here and I would like to add the
> > bluetooth machine feature to it. Do I have to create a whole new BSP for
> > this? I haven't seen any examples showing how to _modify_ a machine
> > description.
>
>
> Have you tried modifying either MACHINE_FEATURES_crownbay or
> KERNEL_FEATURES_crownbay from local.conf? I haven't attempted this
> myself, but I believe it should work.
>

Tried both.

With MACHINE_FEATURES_crownbay += "bluetooth" I get:
NOTE: Resolving any missing task queue dependencies
ERROR: Nothing RPROVIDES 'modutils-depmod' (but
/home/marc/dev/poky/poky-src/meta/recipes-kernel/update-modules/
update-modules_1.0.bb RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'modutils-depmod' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['modutils-depmod']
NOTE: Runtime target 'perf' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['perf', 'update-modules',
'modutils-depmod']
NOTE: Runtime target 'task-core-tools-profile' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['task-core-tools-profile',
'perf', 'update-modules', 'modutils-depmod']
ERROR: Required build target 'sonatest-test-image' has no buildable
providers.
Missing or unbuildable dependency chain was: ['sonatest-test-image',
'task-core-tools-profile', 'perf', 'update-modules', 'modutils-depmod']

With KERNEL_FEATURES_crownbay += "bluetooth", I get the following when
recompiling the kernel:
Log data follows:
| Deleted branch meta-temp (was 620917d).
| WARNING: addon feature "bluetooth" was not found
| ERROR: required features were not found. aborting

BTW, I did not find any precise kernel feature for bluetooth when looking
in
builddir/tmp/work/crownbay-poky-linux/linux-yocto/linux/meta/cfg/kernel-cache/

Marc

--14dae93411519f633104b39aa0db
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 8, 2011 at 2:50 PM, Darren Hart <span dir=3D"ltr">&lt;<a href=
=3D"mailto:dvhart@linux.intel.com">dvhart@linux.intel.com</a>&gt;</span> wr=
ote:<br><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;">
<div class=3D"HOEnZb"><div class=3D"h5">On 12/08/2011 11:13 AM, Marc Ferlan=
d wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; I have a crownbay based machine here and I would like to add the<br>
&gt; bluetooth machine feature to it. Do I have to create a whole new BSP f=
or<br>
&gt; this? I haven&#39;t seen any examples showing how to _modify_ a machin=
e<br>
&gt; description.<br>
<br>
<br>
</div></div>Have you tried modifying either MACHINE_FEATURES_crownbay or<br=
>
KERNEL_FEATURES_crownbay from local.conf? I haven&#39;t attempted this<br>
myself, but I believe it should work.<br>
<span class=3D"HOEnZb"></span></blockquote><div><br>Tried both. <br><br>Wit=
h MACHINE_FEATURES_crownbay +=3D &quot;bluetooth&quot; I get:<br>NOTE: Reso=
lving any missing task queue dependencies<br>ERROR: Nothing RPROVIDES &#39;=
modutils-depmod&#39; (but /home/marc/dev/poky/poky-src/meta/recipes-kernel/=
update-modules/<a href=3D"http://update-modules_1.0.bb">update-modules_1.0.=
bb</a> RDEPENDS on or otherwise requires it)<br>
NOTE: Runtime target &#39;modutils-depmod&#39; is unbuildable, removing...<=
br>Missing or unbuildable dependency chain was: [&#39;modutils-depmod&#39;]=
<br>NOTE: Runtime target &#39;perf&#39; is unbuildable, removing...<br>
Missing or unbuildable dependency chain was: [&#39;perf&#39;, &#39;update-m=
odules&#39;, &#39;modutils-depmod&#39;]<br>NOTE: Runtime target &#39;task-c=
ore-tools-profile&#39; is unbuildable, removing...<br>Missing or unbuildabl=
e dependency chain was: [&#39;task-core-tools-profile&#39;, &#39;perf&#39;,=
 &#39;update-modules&#39;, &#39;modutils-depmod&#39;]<br>
ERROR: Required build target &#39;sonatest-test-image&#39; has no buildable=
 providers.<br>Missing or unbuildable dependency chain was: [&#39;sonatest-=
test-image&#39;, &#39;task-core-tools-profile&#39;, &#39;perf&#39;, &#39;up=
date-modules&#39;, &#39;modutils-depmod&#39;]<br>
<br>With KERNEL_FEATURES_crownbay +=3D &quot;bluetooth&quot;, I get the fol=
lowing when recompiling the kernel:<br>Log data follows:<br>| Deleted branc=
h meta-temp (was 620917d).<br>| WARNING: addon feature &quot;bluetooth&quot=
; was not found<br>
| ERROR: required features were not found. aborting<br><br>BTW, I did not f=
ind any precise kernel feature for bluetooth when looking in builddir/tmp/w=
ork/crownbay-poky-linux/linux-yocto/linux/meta/cfg/kernel-cache/<br><br>
Marc<br></div></div>

--14dae93411519f633104b39aa0db--
