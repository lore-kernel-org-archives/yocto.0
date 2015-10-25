Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2225CE00B8F; Sun, 25 Oct 2015 16:46:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8925CE00B7F
	for <yocto@yoctoproject.org>; Sun, 25 Oct 2015 16:46:32 -0700 (PDT)
Received: by igdg1 with SMTP id g1so47940921igd.1
	for <yocto@yoctoproject.org>; Sun, 25 Oct 2015 16:46:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=SVvC3glfVee8ZPRG8Yy4xe9s6hIKyNodUk/jDemww/w=;
	b=hxchtRwYqepQ+ijSGIhcOJE0sk/tRav6ZTgYXsjGUr8/D1pVArPjN0uxDTshc1zb4f
	TyrooUTDmGDL7pumMAyH+uyrG4wFQK799sqCdQHUQKBZJy3ZjdpzRnN+Da2MPLVocIKS
	zVcK2taDaA+iMc1hfAW9j2UHW2vCrEy8j9ULTRHn6ca8/+bFpgk2eyMIiuuDXZBPbxWO
	dkd/vmogLWGL2ypH/n/HtVqwNMoWgtTXEZ9/kQhxS8zry9x5nhVyap0BXYn7Zbq2hQE/
	71YUq7CS6x0s9vJ9xyyKw66T/xNxDq7mHVjJA/vx3k5/U74XCtowTuU//VLQ00puUpyX
	+dPA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kergoth_com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=SVvC3glfVee8ZPRG8Yy4xe9s6hIKyNodUk/jDemww/w=;
	b=tesi/rutChnEartnssepJ1sRjlPwfeC5JsRlEWvkJhux0UtAemUWRQIk660yEP2j5k
	W5vstOvN9AApWARBd18q35TA3RZ0eS3dNlDmw2zGFCXz9q9AdW/UNDEAqZWeh9uMxCR2
	wniAgjmNTBN25Fom1hzs42VsF1TqG2qjlFe+K8lEpzpklCJpirykoLOtldglUelBir6T
	vERERr2MCmRysXofVEa1mkziPkGijqprJpgVFWQC5PDXToLIT5v4W+uAvjX1MDVnaDLv
	KSNkr0C4R14eFXzHfKg2cESuIyBvEv+V/m2SiIXTThEz5q3XRWkNSdBsmXcrB/N9BrGh
	dxSg==
X-Received: by 10.50.129.10 with SMTP id ns10mr15246500igb.68.1445816791875;
	Sun, 25 Oct 2015 16:46:31 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.79.65.204 with HTTP; Sun, 25 Oct 2015 16:46:12 -0700 (PDT)
In-Reply-To: <20151024191940.GB15983@bang.betafive.co.uk>
References: <365E1805BC95084CBE82381A0B86999401095F873E@EU-MBX-01.mgc.mentorg.com>
	<BD314512-DA81-48D9-B50D-4C41BD927127@gmail.com>
	<365E1805BC95084CBE82381A0B86999401095F8E08@EU-MBX-01.mgc.mentorg.com>
	<365E1805BC95084CBE82381A0B86999401095F8E8A@EU-MBX-01.mgc.mentorg.com>
	<20151018095759.GA12999@bang.betafive.co.uk>
	<CABcZAN=TTO_ebMjr_5nsxM42MTewQQb6Nz-uH_9eLdHq002bvA@mail.gmail.com>
	<CABcZAN=9iN6bbjLLw7OtzuU7uogri+qS83auYnGRz_MT=ifjcQ@mail.gmail.com>
	<365E1805BC95084CBE82381A0B86999401095FAD92@EU-MBX-01.mgc.mentorg.com>
	<562BC58D.4090600@ni.com>
	<CABcZAN=8F6m+7Y4pBfumuoiEqsTRS7+Bpiug7yfOiNkBxU4emQ@mail.gmail.com>
	<20151024191940.GB15983@bang.betafive.co.uk>
From: Christopher Larson <clarson@kergoth.com>
Date: Sun, 25 Oct 2015 16:46:12 -0700
X-Google-Sender-Auth: 9jAKkeSBb58j9dKU0a48njidxMo
Message-ID: <CABcZANknQrWzB_bQd22buyzyt-bHZJ-KpfJz1RvvCKNMjZNmvA@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: opkg 0.3.0 or rootfs task
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
X-List-Received-Date: Sun, 25 Oct 2015 23:46:35 -0000
Content-Type: multipart/alternative; boundary=047d7b2e16314a49a50522f67418

--047d7b2e16314a49a50522f67418
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 24, 2015 at 12:19 PM, Paul Barker <paul@paulbarker.me.uk> wrote=
:

> On Sat, Oct 24, 2015 at 06:54:16PM +0000, Christopher Larson wrote:
> > Not likely to help. The problem is the filename length, which will be t=
he
> > same whether it's a file or a symlink.
> > On Sat, Oct 24, 2015 at 10:53 AM Alejandro del Castillo <
> > alejandro.delcastillo@ni.com> wrote:
> >
> > >
> > >
> > > On 10/21/2015 02:49 AM, Ahsan, Noor wrote:
> > > > We are hitting this issue on another BSP
> > > >
> > > >
> > >
> file:_var_jenkins_workspace_ce-main_buildhost_SB64_buildtype_industrial_m=
achine_zedboard-zynq7-mel_build_zedboard-zynq7-mel_tmp_deploy_ipk_zedboard_=
zynq7_mel_kernel-module-lttng-ring-buffer-client-mmap-overwrite_2.6.2+git0+=
7a88f8b506-r0.0_zedboard_zynq7_mel.ipk
> > > >
> > > > need its solution quickly
> > >
> > > If you are in need of a quick workaround, try setting:
> > >
> > > option cache_local_files 0
> > >
> > > on opkg.conf. This will make a copy of your ipk's instead of creating
> > > symlinks (haven't try it myself, but that's my understanding).
> > >
> > > Also, please open a bug report for opkg on
> > > https://bugzilla.yoctoproject.org to track the issue.
> > >
>
> I've just posted patches to the opkg-devel list which should fix this. I
> had
> intended to give them a bit more testing before I sent them but a quick
> fix is
> needed.


Thanks for your quick work on this, Paul, it's much appreciated. From some
initial testing, builds are completing now. We'll keep testing it out.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--047d7b2e16314a49a50522f67418
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Sat, Oct 24, 2015 at 12:19 PM, Paul Barker <span dir=3D"ltr">&lt;<a href=
=3D"mailto:paul@paulbarker.me.uk" target=3D"_blank">paul@paulbarker.me.uk</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On =
Sat, Oct 24, 2015 at 06:54:16PM +0000, Christopher Larson wrote:<br>
&gt; Not likely to help. The problem is the filename length, which will be =
the<br>
&gt; same whether it&#39;s a file or a symlink.<br>
&gt; On Sat, Oct 24, 2015 at 10:53 AM Alejandro del Castillo &lt;<br>
&gt; <a href=3D"mailto:alejandro.delcastillo@ni.com">alejandro.delcastillo@=
ni.com</a>&gt; wrote:<br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; On 10/21/2015 02:49 AM, Ahsan, Noor wrote:<br>
&gt; &gt; &gt; We are hitting this issue on another BSP<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; file:_var_jenkins_workspace_ce-main_buildhost_SB64_buildtype_indu=
strial_machine_zedboard-zynq7-mel_build_zedboard-zynq7-mel_tmp_deploy_ipk_z=
edboard_zynq7_mel_kernel-module-lttng-ring-buffer-client-mmap-overwrite_2.6=
.2+git0+7a88f8b506-r0.0_zedboard_zynq7_mel.ipk<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; need its solution quickly<br>
&gt; &gt;<br>
&gt; &gt; If you are in need of a quick workaround, try setting:<br>
&gt; &gt;<br>
&gt; &gt; option cache_local_files 0<br>
&gt; &gt;<br>
&gt; &gt; on opkg.conf. This will make a copy of your ipk&#39;s instead of =
creating<br>
&gt; &gt; symlinks (haven&#39;t try it myself, but that&#39;s my understand=
ing).<br>
&gt; &gt;<br>
&gt; &gt; Also, please open a bug report for opkg on<br>
&gt; &gt; <a href=3D"https://bugzilla.yoctoproject.org" rel=3D"noreferrer" =
target=3D"_blank">https://bugzilla.yoctoproject.org</a> to track the issue.=
<br>
&gt; &gt;<br>
<br>
</span>I&#39;ve just posted patches to the opkg-devel list which should fix=
 this. I had<br>
intended to give them a bit more testing before I sent them but a quick fix=
 is<br>
needed.</blockquote></div><br>Thanks for your quick work on this, Paul, it&=
#39;s much appreciated. From some initial testing, builds are completing no=
w. We&#39;ll keep testing it out.<br>-- <br><div class=3D"gmail_signature">=
Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBake, Open=
Embedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engineer, Men=
tor Graphics</div>
</div></div>

--047d7b2e16314a49a50522f67418--
