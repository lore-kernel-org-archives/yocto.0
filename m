Return-Path: <markus4dev@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13B5BE00BBD; Fri,  9 Nov 2018 02:16:12 -0800 (PST)
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
	*      [209.85.128.66 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
	[209.85.128.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 033D9E00A54
	for <yocto@yoctoproject.org>; Fri,  9 Nov 2018 02:16:10 -0800 (PST)
Received: by mail-wm1-f66.google.com with SMTP id v70-v6so978797wmd.1
	for <yocto@yoctoproject.org>; Fri, 09 Nov 2018 02:16:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ReK40I+a0qd55nxsEbcrWUes4mqZdasASU5ZaThSO+0=;
	b=WtZaKa39l7Qg2dlCa1Ros2/69QISGg4SUNZAdkXZJDF60ZBc9nCOrYlUujmESRh/Ey
	bmZ/LMX8iXmZEtIp0HZfpZ7MND8jpagG9JzzE5PGgOGUJTLcRPuW238h8c2iX5RLr1t/
	byLCz0gb5ICyb83I545Qpt76h0kEFeWV/obeyo+eIs8PpQrticIVpjWtLtOzMmdQVV/B
	wctFXrBT1YzcyLBWrhqcPW8yRUGIyCw7oo4NvEDRwR7YOc0+JOIv3EmYbAy2kFShIqnu
	J6qH1b1wGQIcypHpbG3VroGyGkcsI/1EG+dolclmAA7zJYWtLePk7yL+1+VFh3CsymN9
	HFXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ReK40I+a0qd55nxsEbcrWUes4mqZdasASU5ZaThSO+0=;
	b=VqEuVYdpmtpZFUdW9ELrWjuL1nCJGNgHM5O13zJLPfC3BczoXWnqfh0ACSQb3cVwjw
	VuJH50/8tdDBILpvQuThfJT2poVZLmutYoch0Mr5SBZIYruvDAnJ1VpJVmBfMe5iapLn
	fsGyhXaLq3wSnXkspJL/mlAHTAY/b//wHW58XSdsROXjI513Xt8u/1pZ/IlemAotepRJ
	pgksXdj0DUwnletc6484vQvao5o1FZIuW6g1065Q2ZsAUfLZ5qzY4XARbA7+XpEAYaOp
	3M/mEpu85SVYlQjG8UVo8Qz99TBHu0I8wUl/xJzRmcDRIa3O570r6ZF+jizAGEfvXq1v
	MzmQ==
X-Gm-Message-State: AGRZ1gJApq7vS9K08O1dNMWuIHhWjhjq2lPEbZqvtKrsSL8cpjxh+Obm
	qX2sQEC2VdL9qVqPLS60mu+OX6tdezbk1erm1bFyWA==
X-Google-Smtp-Source: AJdET5dmmLlAWqb6QiFSaAEK7ZcADmrkQGGcugDvXnFEfqfwDbqwIv8arNHedIzYqpkNBEtM9pEOe2Tl9pZd52bDgL0=
X-Received: by 2002:a1c:aa4f:: with SMTP id
	t76-v6mr4125613wme.64.1541758569847; 
	Fri, 09 Nov 2018 02:16:09 -0800 (PST)
MIME-Version: 1.0
References: <CAFd=ochAjUo7FfHQJFcQHYE7Y2jRD8UHUhRBpGvvTRLLgfwK=Q@mail.gmail.com>
	<CAFd=ocj4eHG89wt7yM0_w3YqrM9788+CZp=gDXgQfQsE6+9v2Q@mail.gmail.com>
	<3658853.D14kAIKcfP@stinger>
In-Reply-To: <3658853.D14kAIKcfP@stinger>
From: Markus W <markus4dev@gmail.com>
Date: Fri, 9 Nov 2018 11:16:11 +0100
Message-ID: <CAFd=ocgV2baea-PsHJ9N9OiTS-rTQ-mux=7qwxmCU=Y8JBJ+Aw@mail.gmail.com>
To: tworaz666@gmail.com
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
X-List-Received-Date: Fri, 09 Nov 2018 10:16:12 -0000
Content-Type: multipart/alternative; boundary="000000000000e2b35a057a38a3d6"

--000000000000e2b35a057a38a3d6
Content-Type: text/plain; charset="UTF-8"

Thanks Piotr, that worked!

How can this be achieved when the rootfs is created and not on first boot?
I would like not to ship libcap binaries with the target in production.

/Markus

On Thu, 8 Nov 2018 at 22:53, Piotr Tworek <tworaz666@gmail.com> wrote:

> Hi Markus,
>
> Have you tried doing it in the postinst step executed on your target? Try:
>
> pkg_postinst_ontarget_${PN} () {
>     setcap cap_net_raw+eip $D${bindir}/node
> }
>
> RDEPENDS_${PN} += "libcap-bin"
>
> /ptw
>
> > I have tested to set capabilities on the node binary within a custom
> recipe
> > (custom layer) but that failed.
> >
> > pkg_postinst_${PN} () {
> >     setcap cap_net_raw+eip $D${bindir}/node
> > }
> > PACKAGE_WRITE_DEPS = "libcap-native"
> > RDEPENDS_${PN} = "libcap"
> >
> > The error message:
> >
> > ERROR: core-image-full-cmdline-1.0-r0 do_rootfs: [log_check]
> > core-image-full-cmdline: found 1 error message in the logfile:
> > [log_check] Failed to set capabilities on file
> >
> `/home/ubuntu/yocto-sumo/build/tmp/work/raspberrypi3-poky-linux-gnueabi/core
> > -image-full-cmdline/1.0-r0/rootfs/usr/bin/node' (No such file or
> directory)
> >
> > When I check the node binary is there in the rootfs directory. It seems
> > that when the the pkg_postinst function is executed the node binary is
> not
> > there.
> >
> > What am I missing? Any answer is much appreciated!
> >
> > Regards,
> > Markus
> >
> > On Wed, 7 Nov 2018 at 11:32, Markus W <markus4dev@gmail.com> wrote:
> > > Hi!
> > >
> > > Background:
> > > In my raspberry project I am developing a nodejs app that needs access
> to
> > > bluetooth/ble device. I want to run the node application as non root
> user
> > > for security reasons. In order to get access from within the app, the
> node
> > > binary need to have the following capability cap_net_raw+eip set. I am
> > > using the nodejs recipe from meta-oe and added it in my local.conf:
> > >
> > > IMAGE_INSTALL_append = " nodejs i2c-tools bluez5 kernel-image
> > > kernel-devicetree"
> > >
> > > Question:
> > > Where should I apply the following command? setcap cap_net_raw+eip
> > > /usr/bin/node
> > >
> > > What are my options? Can I create a recipe in a different package that
> > > will apply the above command on the meta-oe package for the nodejs
> recipe?
> > >
> > > I have been following this thread (
> > > https://lists.yoctoproject.org/pipermail/yocto/2016-June/030811.html),
> > > but the node binaries and my node-app are in different layers and
> > > packages.
> > >
> > > Any advice how to do this is much appreciated?
> > >
> > > Regards,
> > > Markus
>
>
>
>
>

--000000000000e2b35a057a38a3d6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Piotr, that worked!<div><br></div><div>How can this=
 be achieved when the rootfs is created and not on first boot? I would like=
 not to ship libcap binaries with the target in production.=C2=A0</div><div=
><br></div><div>/Markus</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr">On Thu, 8 Nov 2018 at 22:53, Piotr Tworek &lt;<a href=3D"mailto:tw=
oraz666@gmail.com" target=3D"_blank">tworaz666@gmail.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">Hi Markus,<br>
<br>
Have you tried doing it in the postinst step executed on your target? Try:<=
br>
<br>
pkg_postinst_ontarget_${PN} () {<br>
=C2=A0 =C2=A0 setcap cap_net_raw+eip $D${bindir}/node<br>
}<br>
<br>
RDEPENDS_${PN} +=3D &quot;libcap-bin&quot;<br>
<br>
/ptw<br>
<br>
&gt; I have tested to set capabilities on the node binary within a custom r=
ecipe<br>
&gt; (custom layer) but that failed.<br>
&gt; <br>
&gt; pkg_postinst_${PN} () {<br>
&gt;=C2=A0 =C2=A0 =C2=A0setcap cap_net_raw+eip $D${bindir}/node<br>
&gt; }<br>
&gt; PACKAGE_WRITE_DEPS =3D &quot;libcap-native&quot;<br>
&gt; RDEPENDS_${PN} =3D &quot;libcap&quot;<br>
&gt; <br>
&gt; The error message:<br>
&gt; <br>
&gt; ERROR: core-image-full-cmdline-1.0-r0 do_rootfs: [log_check]<br>
&gt; core-image-full-cmdline: found 1 error message in the logfile:<br>
&gt; [log_check] Failed to set capabilities on file<br>
&gt; `/home/ubuntu/yocto-sumo/build/tmp/work/raspberrypi3-poky-linux-gnueab=
i/core<br>
&gt; -image-full-cmdline/1.0-r0/rootfs/usr/bin/node&#39; (No such file or d=
irectory)<br>
&gt; <br>
&gt; When I check the node binary is there in the rootfs directory. It seem=
s<br>
&gt; that when the the pkg_postinst function is executed the node binary is=
 not<br>
&gt; there.<br>
&gt; <br>
&gt; What am I missing? Any answer is much appreciated!<br>
&gt; <br>
&gt; Regards,<br>
&gt; Markus<br>
&gt; <br>
&gt; On Wed, 7 Nov 2018 at 11:32, Markus W &lt;<a href=3D"mailto:markus4dev=
@gmail.com" target=3D"_blank">markus4dev@gmail.com</a>&gt; wrote:<br>
&gt; &gt; Hi!<br>
&gt; &gt; <br>
&gt; &gt; Background:<br>
&gt; &gt; In my raspberry project I am developing a nodejs app that needs a=
ccess to<br>
&gt; &gt; bluetooth/ble device. I want to run the node application as non r=
oot user<br>
&gt; &gt; for security reasons. In order to get access from within the app,=
 the node<br>
&gt; &gt; binary need to have the following capability cap_net_raw+eip set.=
 I am<br>
&gt; &gt; using the nodejs recipe from meta-oe and added it in my local.con=
f:<br>
&gt; &gt; <br>
&gt; &gt; IMAGE_INSTALL_append =3D &quot; nodejs i2c-tools bluez5 kernel-im=
age<br>
&gt; &gt; kernel-devicetree&quot;<br>
&gt; &gt; <br>
&gt; &gt; Question:<br>
&gt; &gt; Where should I apply the following command? setcap cap_net_raw+ei=
p<br>
&gt; &gt; /usr/bin/node<br>
&gt; &gt; <br>
&gt; &gt; What are my options? Can I create a recipe in a different package=
 that<br>
&gt; &gt; will apply the above command on the meta-oe package for the nodej=
s recipe?<br>
&gt; &gt; <br>
&gt; &gt; I have been following this thread (<br>
&gt; &gt; <a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2016-Ju=
ne/030811.html" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopro=
ject.org/pipermail/yocto/2016-June/030811.html</a>),<br>
&gt; &gt; but the node binaries and my node-app are in different layers and=
<br>
&gt; &gt; packages.<br>
&gt; &gt; <br>
&gt; &gt; Any advice how to do this is much appreciated?<br>
&gt; &gt; <br>
&gt; &gt; Regards,<br>
&gt; &gt; Markus<br>
<br>
<br>
<br>
<br>
</blockquote></div>

--000000000000e2b35a057a38a3d6--
