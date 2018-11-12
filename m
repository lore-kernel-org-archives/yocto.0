Return-Path: <markus4dev@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F04AE00A85; Mon, 12 Nov 2018 05:09:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (markus4dev[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACECBE007B3
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2018 05:09:00 -0800 (PST)
Received: by mail-wr1-f44.google.com with SMTP id u5-v6so3999897wrn.9
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2018 05:09:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=XMgoj244W5cV2HmtJ/H4PlMOKFPNHSkcs/WjZdQlTEs=;
	b=U56FnFzpkOlurCVr0dhhX2wQZqzOiFZZdaL1jbXMtSPMHUTbruYM+bGka7eTvHjlXk
	6hzIeZ6fII6BRjTk9wpREsE4GIS18VerZ6ZXKJrVGLPq/jhn4KJM/arDR21sNcJClAJM
	7eHdIrGY1j1+PcOCzdlnoMkFki0R/P08ozJbcd17BMDWruNGEtCJHTQ9LIpwJl+YP/Et
	CTRUV36QxtsCz6wQB1Zhomacekh2JFh1aY7uiKTdSddN6jjOsoWRu397gnf5vGQ9KrFF
	W1+9I0+B7IZatd2iD7HrxlPI1S/mvR2fzMM08FnFqgS3wjRLmMCKb5Xj8GaHOWLAZ6MG
	Tn6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=XMgoj244W5cV2HmtJ/H4PlMOKFPNHSkcs/WjZdQlTEs=;
	b=XtaaPiMzye3zjJxjff21moXBs3bAAfwmf1M0UI7FP1n/E8Cy21Euaj/5mXMUDs0kCe
	DbU3aIWoclXlYvpGedMVme7mpa/TkOud0Pz2xD07Nsx6urYc89RC4tddm8EhhhP/Izs6
	xXPXUn6wGZFGb13SbvieO2W6AUzFZiJIm+CD0UWU2Wz0f0kDYVkNk+3kN5YbJbbX7cDD
	s8Ze509kWmSiguq7fA7NPE16KKlOmWPW66b1gxV6423Osw/O1AZGBS7CMurwhNHGofi0
	Z0R95j48o3ccF7FqFoCKafyforhPcb0S6e4J/WID9OcBwLnnHGPicFq+MCbWO5wRDOGl
	i8ug==
X-Gm-Message-State: AGRZ1gIOH/9ylQ1H0Nt9+rHaFq+s9/HXKcZgkQEqu1jwpSCymlcyDdNn
	wDLpnTaIB5d5d+E80PMgbA27BhzCm5ZDviB+FSRk3t4E
X-Google-Smtp-Source: AJdET5fjfTgB2CvDxTBzQRZSpQO0AXD/lWOYc5CuM+Bj8m+6FTelLcaGPLm3gvQ5vxtPrfCwTgAl8sosrbqOS+J8br4=
X-Received: by 2002:a5d:4a11:: with SMTP id
	m17-v6mr865298wrq.259.1542028139553; 
	Mon, 12 Nov 2018 05:08:59 -0800 (PST)
MIME-Version: 1.0
References: <CAFd=ochAjUo7FfHQJFcQHYE7Y2jRD8UHUhRBpGvvTRLLgfwK=Q@mail.gmail.com>
	<CAFd=ocj4eHG89wt7yM0_w3YqrM9788+CZp=gDXgQfQsE6+9v2Q@mail.gmail.com>
	<3658853.D14kAIKcfP@stinger>
	<CAFd=ocgV2baea-PsHJ9N9OiTS-rTQ-mux=7qwxmCU=Y8JBJ+Aw@mail.gmail.com>
	<87zhuiz5cx.fsf@snkmail.com>
In-Reply-To: <87zhuiz5cx.fsf@snkmail.com>
From: Markus W <markus4dev@gmail.com>
Date: Mon, 12 Nov 2018 14:09:10 +0100
Message-ID: <CAFd=ociPq2njZqnx_ruRK_Pe5ECDMMo+kP5SE82iVBauqaEF-w@mail.gmail.com>
To: jrswdnan22@snkmail.com
Cc: yocto@yoctoproject.org
Subject: Re: Set linux capabilities on binary on a recipe in meta-oe layer
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
X-List-Received-Date: Mon, 12 Nov 2018 13:09:01 -0000
Content-Type: multipart/alternative; boundary="0000000000007de8fe057a77677d"

--0000000000007de8fe057a77677d
Content-Type: text/plain; charset="UTF-8"

Thanks Uwe!

I tried the global approach by adding the following to my local.conf file:

ROOTFS_POSTPROCESS_COMMAND += "my_setcap_function"

my_setcap_function() {
    setcap cap_net_raw+eip ${IMAGE_ROOTFS}/usr/bin/node
}

But got the following warning:
WARNING: core-image-full-cmdline-1.0-r0 do_rootfs: Function
my_setcap_function doesn't exist

I have tried to add the function into a recipe but this doesn't work
either. Where should the function be defined?

Regards,
Markus


On Fri, 9 Nov 2018 at 15:35, Uwe Geuder <jrswdnan22@snkmail.com> wrote:

> Hi!
>
>
> On Fri, Nov 9, 2018 at 12:16 PM Markus W markus4dev-at-gmail.com wrote:
>
> > On Thu, 8 Nov 2018 at 22:53, Piotr Tworek <tworaz666@gmail.com> wrote:
> ...
> >> pkg_postinst_ontarget_${PN} () {
> >>    setcap cap_net_raw+eip $D${bindir}/node
> >> }
> ...
> > How can this be achieved when the rootfs is created and not on first
> > boot? I would like not to ship libcap binaries with the target in
> > production.
>
> Ideally I would do it "locally" in do_install of the node recipe (you can
> append extra statements to the task in your own .bbappend in your own
> layer, don't edit existing recipes)
>
> That of course requires that the package manager preserves the
> capabilites. I have no experience which package manager would do
> or not do that.
>
> "Globally" you can do it by appending a new function to
> ROOTFS_POSTPROCESS_COMMAND
>
> https://www.yoctoproject.org/docs/2.5.1/mega-manual/mega-manual.html#var-
> ROOTFS_POSTPROCESS_COMMAND
>
> This is done in your image recipe.
>
> Regards,
>
> Uwe Geuder
> Neuro Event Labs Oy
> Tampere, Finland
> uwe.gexder@neuroeventlabs.com (Bot check: fix one obvious typo)
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000007de8fe057a77677d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Thanks =
Uwe!<div><br></div><div>I tried the global approach by adding the following=
 to my local.conf file:</div><div><br></div><div><div>ROOTFS_POSTPROCESS_CO=
MMAND +=3D &quot;my_setcap_function&quot;</div><div><br></div><div>my_setca=
p_function() {</div><div>=C2=A0 =C2=A0 setcap cap_net_raw+eip ${IMAGE_ROOTF=
S}/usr/bin/node</div><div>}</div></div><div><br></div><div>But got the foll=
owing warning:</div><div>WARNING: core-image-full-cmdline-1.0-r0 do_rootfs:=
 Function my_setcap_function doesn&#39;t exist<br></div><div><br></div><div=
>I have tried to add the function into a recipe but this doesn&#39;t work e=
ither. Where should the function be defined?</div><div><br></div><div>Regar=
ds,</div><div>Markus</div><div><br></div></div></div></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr">On Fri, 9 Nov 2018 at 15:35, Uwe Geud=
er &lt;<a href=3D"mailto:jrswdnan22@snkmail.com">jrswdnan22@snkmail.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi!<br>
<br>
<br>
On Fri, Nov 9, 2018 at 12:16 PM Markus W <a href=3D"http://markus4dev-at-gm=
ail.com" rel=3D"noreferrer" target=3D"_blank">markus4dev-at-gmail.com</a> w=
rote:<br>
<br>
&gt; On Thu, 8 Nov 2018 at 22:53, Piotr Tworek &lt;<a href=3D"mailto:tworaz=
666@gmail.com" target=3D"_blank">tworaz666@gmail.com</a>&gt; wrote:<br>
...<br>
&gt;&gt; pkg_postinst_ontarget_${PN} () {<br>
&gt;&gt;=C2=A0 =C2=A0 setcap cap_net_raw+eip $D${bindir}/node<br>
&gt;&gt; }<br>
...<br>
&gt; How can this be achieved when the rootfs is created and not on first<b=
r>
&gt; boot? I would like not to ship libcap binaries with the target in<br>
&gt; production.<br>
<br>
Ideally I would do it &quot;locally&quot; in do_install of the node recipe =
(you can<br>
append extra statements to the task in your own .bbappend in your own<br>
layer, don&#39;t edit existing recipes)<br>
<br>
That of course requires that the package manager preserves the<br>
capabilites. I have no experience which package manager would do<br>
or not do that.<br>
<br>
&quot;Globally&quot; you can do it by appending a new function to ROOTFS_PO=
STPROCESS_COMMAND<br>
<br>
<a href=3D"https://www.yoctoproject.org/docs/2.5.1/mega-manual/mega-manual.=
html#var-" rel=3D"noreferrer" target=3D"_blank">https://www.yoctoproject.or=
g/docs/2.5.1/mega-manual/mega-manual.html#var-</a><br>
ROOTFS_POSTPROCESS_COMMAND<br>
<br>
This is done in your image recipe.<br>
<br>
Regards,<br>
<br>
Uwe Geuder<br>
Neuro Event Labs Oy<br>
Tampere, Finland<br>
<a href=3D"mailto:uwe.gexder@neuroeventlabs.com" target=3D"_blank">uwe.gexd=
er@neuroeventlabs.com</a> (Bot check: fix one obvious typo)<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--0000000000007de8fe057a77677d--
