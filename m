Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D3FBE007DD; Mon, 16 Nov 2015 13:49:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.41 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mtownsend1973[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f41.google.com (mail-lf0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4646E0071C
	for <yocto@yoctoproject.org>; Mon, 16 Nov 2015 13:49:10 -0800 (PST)
Received: by lfdo63 with SMTP id o63so95104426lfd.2
	for <yocto@yoctoproject.org>; Mon, 16 Nov 2015 13:49:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=AnwfGO1OM/vS/rKAPvSZBRU9wlg722s2UP2aFmQ6f80=;
	b=ecoJrftm2wtUatsz3PuHLNVFVoF/NHOHqVS2TG4Me3SrhJ1hDUrYqK8OoFEewd+Ijc
	faqJ8vijXS1mGxWpFjfb49M74zbB/+KjNtyPhmrzz/lte8SraqWnFjBRjoeEmTDT/Cqx
	a583JsQf8egQv8kA6n07SQ1GpkZtfY84/lONLrBjrRBoqAVDqWlgGRTszQXgScPYlFle
	EmpHkziQKmmE2ZOhDq0CLFTXA5kOybJustTcJr9uV1Yl9sO3IeGoxuh9ghDGCQjPjSyI
	8mRrnXm701c+eSxvJtdVBMeWGNrcxtmbhVcMKx4T5Gcc8sxVv0eGUSd/dpTz0fZhVrOT
	v6VA==
MIME-Version: 1.0
X-Received: by 10.25.150.2 with SMTP id y2mr9430098lfd.57.1447710549619; Mon,
	16 Nov 2015 13:49:09 -0800 (PST)
Received: by 10.25.82.139 with HTTP; Mon, 16 Nov 2015 13:49:09 -0800 (PST)
In-Reply-To: <BN3PR0501MB109059212446E201859CA2FABB1E0@BN3PR0501MB1090.namprd05.prod.outlook.com>
References: <CABatt_ykrWtkrAv-CC-uUiHb4kOKf5B3UFgcuvDUvJ2MRbW1WA@mail.gmail.com>
	<BN3PR0501MB109059212446E201859CA2FABB1E0@BN3PR0501MB1090.namprd05.prod.outlook.com>
Date: Mon, 16 Nov 2015 21:49:09 +0000
Message-ID: <CABatt_w2zRMXfKvFHvK4FfJKJ3XLxGU2rd1omKnRYVTrH_SJHQ@mail.gmail.com>
From: Martin Townsend <mtownsend1973@gmail.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SDK
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
X-List-Received-Date: Mon, 16 Nov 2015 21:49:16 -0000
Content-Type: multipart/alternative; boundary=001a113fa6900c3cf60524af613f

--001a113fa6900c3cf60524af613f
Content-Type: text/plain; charset=UTF-8

Hi Bryan,

Thank you for the reply.  I'm just doing a dry run with some sample
applications using the SDK and the command line and all is looking good.  I
didn't know about the "eclipse-debug" so I'll take a look at this.  Sadly
all the dev and dbg packages are probably not going to fit into the flash
but I'll keep a copy of the dbg packages somewhere in case a developer
wants to debug into a library.  They can scp it onto their board and
install it.  If I also include gdbserver and lttng packages for the target
then hopefully this should be a good start.

Regards,
Martin.





On Mon, Nov 16, 2015 at 6:25 PM, Bryan Evenson <bevenson@melinkcorp.com>
wrote:

> Martin,
>
> > -----Original Message-----
> > From: yocto-bounces@yoctoproject.org [mailto:yocto-
> > bounces@yoctoproject.org] On Behalf Of Martin Townsend
> > Sent: Saturday, November 14, 2015 9:27 AM
> > To: yocto@yoctoproject.org
> > Subject: [yocto] SDK
> >
> > Hi,
> >
> >
> >
> > I want to provide an SDK to the app developers that is a self contained
> > installation.  The ADT looked like just the thing except I don't want to
> have to
> > setup an ADT Repo.  I would like it to include:
> >
> >
> > The cross development toolchain.
> >
> > The target sysroot to build against.  I would like them to be able to
> > dynamically link and statically link against everything in the Image.
> >
> > They may want to develop kernel modules so I would want the kernel
> > header files etc in the target sysroot.
> >
> > The Eclipse IDE Yocto plug-in or another way of using Eclipse to build
> and
> > debug for the target.
> > I Would also like to use things like the LTTNG and Valgrind integration
> in
> > Eclipse.
> >
> > QEMU would be a nice to have and with integration into Eclipse.
> >
> >
> > I have my own distro and image files which aren't a million miles away
> from
> > poky and core-image-minimal :)
> >
> >
> > From what I've read I think the best thing for me to do is
> >
> > bitbake my-image -cpopulate_sdk
> >
> > which gives my an installer for the toolchain, target sysroot and qemu (I
> > think).
>
> You need to make sure your image includes the features for debugging.  If
> you have an image that is based upon core-image-minimal, the image will be
> missing some features and you'll never be able to debug an application
> through Eclipse or use Lttng.
>
> I'd suggest making a development image recipe (i.e. "
> my-custom-image-dev.bb") based on your image with the following changes:
> 1. Add "dev-pkgs eclipse-debug" to IMAGE_FEATURES
> 2. Add a "-dbg" package to IMAGE_INSTALL for each userspace application
> you are writing which you plan to debug with GDB.
> 3. Add "gdbserver" to IMAGE_INSTALL for GDB support.
> 4. Add "lttng-tools lttng-modules lttng-ust" to IMAGE_INSTALL for Lttng
> support.
>
> Once you've built and verified the new image runs on your hardware, I'd
> then create the SDK as you described above.  I don't use QEMU so I can't
> speak to whether that gets included in the SDK or not.  But, if you have a
> developer that isn't responsible for building the whole image and just
> wants to build and debug their userspace application, the SDK and resulting
> sysroot should be all the pieces they need on their development machine.
>
> Regards,
> Bryan
>
> >
> > Then get them to install the Eclipse plugin by following the
> instructions from
> > http://www.yoctoproject.org/docs/1.8/dev-manual/dev-manual.html#adt-
> > eclipse
> >
> >
> > Just want to check I'm on the right path and there's not another better
> way.
> >
> >
> > Many Thanks,
> >
> > Martin.
> >
> >
>
>

--001a113fa6900c3cf60524af613f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi Bryan,<br><br></div>Thank you for t=
he reply.=C2=A0 I&#39;m just doing a dry run with some sample applications =
using the SDK and the command line and all is looking good.=C2=A0 I didn&#3=
9;t know about the &quot;eclipse-debug&quot; so I&#39;ll take a look at thi=
s.=C2=A0 Sadly all the dev and dbg packages are probably not going to fit i=
nto the flash but I&#39;ll keep a copy of the dbg packages somewhere in cas=
e a developer wants to debug into a library.=C2=A0 They can scp it onto the=
ir board and install it.=C2=A0 If I also include gdbserver and lttng packag=
es for the target then hopefully this should be a good start.<br><br></div>=
<div>Regards,<br></div><div>Martin.<br></div><div><br><br><br></div></div><=
/div><div><br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmai=
l_quote">On Mon, Nov 16, 2015 at 6:25 PM, Bryan Evenson <span dir=3D"ltr">&=
lt;<a href=3D"mailto:bevenson@melinkcorp.com" target=3D"_blank">bevenson@me=
linkcorp.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Martin=
,<br>
<div><div class=3D"h5"><br>
&gt; -----Original Message-----<br>
&gt; From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@=
yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-">yocto-</a><br>
&gt; <a href=3D"mailto:bounces@yoctoproject.org">bounces@yoctoproject.org</=
a>] On Behalf Of Martin Townsend<br>
&gt; Sent: Saturday, November 14, 2015 9:27 AM<br>
&gt; To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a><br>
&gt; Subject: [yocto] SDK<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; I want to provide an SDK to the app developers that is a self containe=
d<br>
&gt; installation.=C2=A0 The ADT looked like just the thing except I don&#3=
9;t want to have to<br>
&gt; setup an ADT Repo.=C2=A0 I would like it to include:<br>
&gt;<br>
&gt;<br>
&gt; The cross development toolchain.<br>
&gt;<br>
&gt; The target sysroot to build against.=C2=A0 I would like them to be abl=
e to<br>
&gt; dynamically link and statically link against everything in the Image.<=
br>
&gt;<br>
&gt; They may want to develop kernel modules so I would want the kernel<br>
&gt; header files etc in the target sysroot.<br>
&gt;<br>
&gt; The Eclipse IDE Yocto plug-in or another way of using Eclipse to build=
 and<br>
&gt; debug for the target.<br>
&gt; I Would also like to use things like the LTTNG and Valgrind integratio=
n in<br>
&gt; Eclipse.<br>
&gt;<br>
&gt; QEMU would be a nice to have and with integration into Eclipse.<br>
&gt;<br>
&gt;<br>
&gt; I have my own distro and image files which aren&#39;t a million miles =
away from<br>
&gt; poky and core-image-minimal :)<br>
&gt;<br>
&gt;<br>
&gt; From what I&#39;ve read I think the best thing for me to do is<br>
&gt;<br>
&gt; bitbake my-image -cpopulate_sdk<br>
&gt;<br>
&gt; which gives my an installer for the toolchain, target sysroot and qemu=
 (I<br>
&gt; think).<br>
<br>
</div></div>You need to make sure your image includes the features for debu=
gging.=C2=A0 If you have an image that is based upon core-image-minimal, th=
e image will be missing some features and you&#39;ll never be able to debug=
 an application through Eclipse or use Lttng.<br>
<br>
I&#39;d suggest making a development image recipe (i.e. &quot;<a href=3D"ht=
tp://my-custom-image-dev.bb" rel=3D"noreferrer" target=3D"_blank">my-custom=
-image-dev.bb</a>&quot;) based on your image with the following changes:<br=
>
1. Add &quot;dev-pkgs eclipse-debug&quot; to IMAGE_FEATURES<br>
2. Add a &quot;-dbg&quot; package to IMAGE_INSTALL for each userspace appli=
cation you are writing which you plan to debug with GDB.<br>
3. Add &quot;gdbserver&quot; to IMAGE_INSTALL for GDB support.<br>
4. Add &quot;lttng-tools lttng-modules lttng-ust&quot; to IMAGE_INSTALL for=
 Lttng support.<br>
<br>
Once you&#39;ve built and verified the new image runs on your hardware, I&#=
39;d then create the SDK as you described above.=C2=A0 I don&#39;t use QEMU=
 so I can&#39;t speak to whether that gets included in the SDK or not.=C2=
=A0 But, if you have a developer that isn&#39;t responsible for building th=
e whole image and just wants to build and debug their userspace application=
, the SDK and resulting sysroot should be all the pieces they need on their=
 development machine.<br>
<br>
Regards,<br>
Bryan<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt; Then get them to install the Eclipse plugin by following the instructi=
ons from<br>
&gt; <a href=3D"http://www.yoctoproject.org/docs/1.8/dev-manual/dev-manual.=
html#adt-" rel=3D"noreferrer" target=3D"_blank">http://www.yoctoproject.org=
/docs/1.8/dev-manual/dev-manual.html#adt-</a><br>
&gt; eclipse<br>
&gt;<br>
&gt;<br>
&gt; Just want to check I&#39;m on the right path and there&#39;s not anoth=
er better way.<br>
&gt;<br>
&gt;<br>
&gt; Many Thanks,<br>
&gt;<br>
&gt; Martin.<br>
&gt;<br>
&gt;<br>
<br>
</div></div></blockquote></div><br></div>

--001a113fa6900c3cf60524af613f--
