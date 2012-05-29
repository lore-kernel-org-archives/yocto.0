Return-Path: <navani.srivastava@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8631E011D1
	for <yocto@yoctoproject.org>; Tue, 29 May 2012 02:03:34 -0700 (PDT)
Received: by bkcjf20 with SMTP id jf20so4232022bkc.35
	for <yocto@yoctoproject.org>; Tue, 29 May 2012 02:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=sWXVMXwVcDVm5i7amaotZiCtNlrDimleayt+FO5wA4M=;
	b=NGSjUyBl9qC1XhCrDVaxNkQEmtPGwtjrGxeyfW7G5MYJxmcIndIMVQr3SKEXSlSfSZ
	CHC3QjyKvkIbbW7C866u1ASg5mSpqJTpHh7/bHMPEygc2Y8BLmbfL27oLtnn4n/MwKoC
	wOhe6vy3zCtYLGTQQVhQPFEtsJdLkvM5JOkNP6OVH/C5+5opOcb8qpIUEvnRxjM9wMV2
	K/Ec/nwdHgTNmi7GCq7kDeVxy87gWYy6ceIrEEYOsak8Qg2sleQDp/yy/vPmyZegovj2
	lo8irMNePySxMsVqMvILbJRuDtE4BlJoOj1Dd8xJUehp6Pk4daX4Si98QHAmnc0ui2mF
	Y+AQ==
Received: by 10.204.155.148 with SMTP id s20mr5030730bkw.56.1338282213316;
	Tue, 29 May 2012 02:03:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.204.232.209 with HTTP; Tue, 29 May 2012 02:03:13 -0700 (PDT)
In-Reply-To: <857BE142E5399E46B20FD45B9DB8A7BC0FDCB920@SHSMSX102.ccr.corp.intel.com>
References: <CA+Z6RkU-GBXYHygXhY8UQkxe-5vQSvj-4xqSHuueN=VnN126qA@mail.gmail.com>
	<857BE142E5399E46B20FD45B9DB8A7BC0FDCB920@SHSMSX102.ccr.corp.intel.com>
From: Navani Srivastava <navani.srivastava@gmail.com>
Date: Tue, 29 May 2012 14:33:13 +0530
Message-ID: <CA+Z6RkV3zeyCvfSx0ZrRQP7zhNQknchsN7q_sho1VkE2NGvFzg@mail.gmail.com>
To: "Lu, Lianhao" <lianhao.lu@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Broken SDK
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
X-List-Received-Date: Tue, 29 May 2012 09:03:35 -0000
Content-Type: multipart/alternative; boundary=000e0cdf7408ef1abd04c1291bc5

--000e0cdf7408ef1abd04c1291bc5
Content-Type: text/plain; charset=ISO-8859-1

Hi Lianhao,

These patches worked for me.But still I am failing to create symbolic link
of mkspecs. It throws below mentioned error-

"ln -s
/opt/poky/1.0/sysroots/arm-poky-linux-gnueabi/usr/share/qtopia/mkspecs
mkspecs
| ln: creating symbolic link `mkspecs': File exists"

On commenting out
 "(cd ${SDK_OUTPUT}/${QT_TOOLS_PREFIX}/..; ln -s
${SDKTARGETSYSROOT}/usr/share/qtopia/mkspecs mkspecs;)"

section of meta-toolchain-qte.bb, I can successfully create the SDK
including my cross toolchain of specified architecture. Do I need to change
any path?

On Mon, May 28, 2012 at 11:29 AM, Lu, Lianhao <lianhao.lu@intel.com> wrote:

> Navani Srivastava wrote on 2012-05-28:
> > Hi,
> >
> >
> >
> > I am working with poky-bernerd-5.0. I have built cross-toolchain for qt
> with "bitbake -v meta-toolchain-qte" for arm1136 architecture.
> >
> > I got the tool chain "poky-eglibc-i686-arm-toolchain-1.0.tar.bz2" under
> build/tmp/deploy/sdk/ directory. On untaring this Toolchain I found
> > that cross gcc wasn't included in the SDK. Can anyone please help me in
> recognizing the problem?
> >
>
> I think the meta-toolchain-qte was not workable in benard. You might need
> to cherry-pick other patches for the recipe meta-toolchian-qte.
>
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/meta/recipes-qt/meta/meta-toolchain-qte.bb
>
> Best Regards,
> Lianhao
>
>

--000e0cdf7408ef1abd04c1291bc5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Lianhao,<br><br>These patches worked for me.But still I am failing to cr=
eate symbolic link of mkspecs. It throws below mentioned error-<br><br>&quo=
t;ln -s /opt/poky/1.0/sysroots/arm-poky-linux-gnueabi/usr/share/qtopia/mksp=
ecs mkspecs<br>

| ln: creating symbolic link `mkspecs&#39;: File exists&quot;<br><br>On com=
menting out<br>=A0&quot;(cd ${SDK_OUTPUT}/${QT_TOOLS_PREFIX}/..; ln -s ${SD=
KTARGETSYSROOT}/usr/share/qtopia/mkspecs mkspecs;)&quot; <br><br>section of=
 <a href=3D"http://meta-toolchain-qte.bb">meta-toolchain-qte.bb</a>, I can =
successfully create the SDK including my cross toolchain of specified archi=
tecture. Do I need to change any path?<br>

<br><div class=3D"gmail_quote">On Mon, May 28, 2012 at 11:29 AM, Lu, Lianha=
o <span dir=3D"ltr">&lt;<a href=3D"mailto:lianhao.lu@intel.com" target=3D"_=
blank">lianhao.lu@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">

Navani Srivastava wrote on 2012-05-28:<br>
&gt; Hi,<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; I am working with poky-bernerd-5.0. I have built cross-toolchain for q=
t with &quot;bitbake -v meta-toolchain-qte&quot; for arm1136 architecture.<=
br>
<div class=3D"im">&gt;<br>
&gt; I got the tool chain &quot;poky-eglibc-i686-arm-toolchain-1.0.tar.bz2&=
quot; under build/tmp/deploy/sdk/ directory. On untaring this Toolchain I f=
ound<br>
&gt; that cross gcc wasn&#39;t included in the SDK. Can anyone please help =
me in recognizing the problem?<br>
&gt;<br>
<br>
</div>I think the meta-toolchain-qte was not workable in benard. You might =
need to cherry-pick other patches for the recipe meta-toolchian-qte.<br>
<br>
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/meta/recipes-=
qt/meta/meta-toolchain-qte.bb" target=3D"_blank">http://git.yoctoproject.or=
g/cgit/cgit.cgi/poky/log/meta/recipes-qt/meta/meta-toolchain-qte.bb</a><br>


<br>
Best Regards,<br>
Lianhao<br>
<br>
</blockquote></div><br>

--000e0cdf7408ef1abd04c1291bc5--
