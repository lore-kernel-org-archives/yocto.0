Return-Path: <michael.allwright@ulb.ac.be>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97E5CE00C82; Mon,  9 Jul 2018 15:08:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [164.15.128.114 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mxin.ulb.ac.be (mxin.ulb.ac.be [164.15.128.114])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E049E006B3
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2018 15:08:15 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2HcBQCR3ENb/zFSfUpdHAEBAQQBAQoBA?=
	=?us-ascii?q?YNJgWEog3qBHZMbggeINoduhwgBCoRsAoJGITcVAQIBAQIBAQICAmkohTgBAQE?=
	=?us-ascii?q?BAgEjVgULCwQHDSoCAiEBEgEFARwGE4UIAw0Injo8iwmCHIcRDSsZaoE6iG6BV?=
	=?us-ascii?q?j+DcC6CVoUlglUCmSQrBwKBcIopgwuIB4VWiweGeg8hgTYjgVJNIIEEBoIygiQ?=
	=?us-ascii?q?Xjhk9MI4yAQE?=
X-IPAS-Result: =?us-ascii?q?A2HcBQCR3ENb/zFSfUpdHAEBAQQBAQoBAYNJgWEog3qBHZM?=
	=?us-ascii?q?bggeINoduhwgBCoRsAoJGITcVAQIBAQIBAQICAmkohTgBAQEBAgEjVgULCwQHD?=
	=?us-ascii?q?SoCAiEBEgEFARwGE4UIAw0Injo8iwmCHIcRDSsZaoE6iG6BVj+DcC6CVoUlglU?=
	=?us-ascii?q?CmSQrBwKBcIopgwuIB4VWiweGeg8hgTYjgVJNIIEEBoIygiQXjhk9MI4yAQE?=
Received: from mail-wm0-f49.google.com ([74.125.82.49])
	by smtp.ulb.ac.be with ESMTP/TLS/AES128-GCM-SHA256;
	10 Jul 2018 00:08:10 +0200
Received: by mail-wm0-f49.google.com with SMTP id s12-v6so22631375wmc.1
	for <yocto@yoctoproject.org>; Mon, 09 Jul 2018 15:08:11 -0700 (PDT)
X-Gm-Message-State: APt69E3QzbHMc8R5sKWzB7pChZtIzUe5v/zFdQlJxwjCoh6OKnXG+Flb
	vJZCO80+b5BgXWk92BAjQ+6r7FAp/hh+Ybx+EDg=
X-Google-Smtp-Source: AAOMgpeBqMetURVImaLnVKXkwAoHqZmPoyKUAidl4K6ye7KmOQHd3MUlZ83WoglsId4i8IPX6smYYCt7pnfGatReX/s=
X-Received: by 2002:a1c:7e92:: with SMTP id
	z140-v6mr12015851wmc.48.1531174090856; 
	Mon, 09 Jul 2018 15:08:10 -0700 (PDT)
MIME-Version: 1.0
References: <CALcgO_4bg5JX1Zf93fJY671GnCLk_sDR6qesPBcym9q3QiACbw@mail.gmail.com>
	<CAJ86T=Wea6yCsqxn+ZfMQ=tXC2d8FWxGv9b7TFZ1E57FLBhyjA@mail.gmail.com>
In-Reply-To: <CAJ86T=Wea6yCsqxn+ZfMQ=tXC2d8FWxGv9b7TFZ1E57FLBhyjA@mail.gmail.com>
From: Michael Allwright <michael.allwright@ulb.ac.be>
Date: Tue, 10 Jul 2018 00:07:59 +0200
X-Gmail-Original-Message-ID: <CALcgO_5bC0R6+KbkvGzUWasA89iV4eWb71xyV_qj9qzFeytz-g@mail.gmail.com>
Message-ID: <CALcgO_5bC0R6+KbkvGzUWasA89iV4eWb71xyV_qj9qzFeytz-g@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Including a header from an external kernel module
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
X-List-Received-Date: Mon, 09 Jul 2018 22:08:17 -0000
Content-Type: multipart/alternative; boundary="000000000000c660000570983f21"

--000000000000c660000570983f21
Content-Type: text/plain; charset="UTF-8"

Yes, it ended up in the development package in the do_install_append
attempt, but I couldn't #include it in the second module (file didn't exist
in the include search paths).

I would point out though, that I am interested in what is the correct way
to do this, and not just in finding some workaround / hack so that it
works...



On Mon., 9 Jul. 2018, 19:47 Andre McCurdy, <armccurdy@gmail.com> wrote:

> On Mon, Jul 9, 2018 at 8:27 AM, Michael Allwright
> <michael.allwright@ulb.ac.be> wrote:
> > Hello,
> >
> > I think it would be useful to extend the hello-mod recipe in
> meta-skeleton
> > to demonstrate some slightly more complicated scenarios. For example, I
> am
> > trying to find out how to have two external kernel modules A and B, where
> > module B #includes a header file provided by module A.
> >
> > I have made module B depend on module A, however, I believe I am still
> > missing one or two steps in my recipe for module A such that the header
> file
> > is copied into the shared kernel staging directory where module B can
> find
> > it.
> >
> > So far I have tried the following:
> >
> > FILES_${PN}-dev += "/usr/include/linux/mfd/module-a.h"
> >
> > FILES_kernel-headers += "${includedir}/linux/mfd/module-a.h"
> >
> > do_install_append () {
> >    install -d ${D}${includedir}/linux/mfd
> >    install -m 644 ${S}/module-a ${D}${includedir}/linux/mfd/module-a.h
> > }
>
> And what happened after you tried the above? Did the header not end up
> in the -dev package for module A? Did the module A recipe not create a
> -dev package? Something else?
>
> > In module B, I want to be able to:
> >
> > #include <linux/mfd/module-a.h>
> >
>

--000000000000c660000570983f21
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Yes, it ended up in the development package in the do_ins=
tall_append attempt, but I couldn&#39;t #include it in the second module (f=
ile didn&#39;t exist in the include search paths).<div dir=3D"auto"><br></d=
iv><div dir=3D"auto">I would point out though, that I am interested in what=
 is the correct way to do this, and not just in finding some workaround / h=
ack so that it works...<br><div dir=3D"auto"><br></div><div dir=3D"auto"><b=
r></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Mon.=
, 9 Jul. 2018, 19:47 Andre McCurdy, &lt;<a href=3D"mailto:armccurdy@gmail.c=
om">armccurdy@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex">On Mon, Jul 9, 2018 at 8:27 AM, Michael Allwright<br>
&lt;<a href=3D"mailto:michael.allwright@ulb.ac.be" target=3D"_blank" rel=3D=
"noreferrer">michael.allwright@ulb.ac.be</a>&gt; wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; I think it would be useful to extend the hello-mod recipe in meta-skel=
eton<br>
&gt; to demonstrate some slightly more complicated scenarios. For example, =
I am<br>
&gt; trying to find out how to have two external kernel modules A and B, wh=
ere<br>
&gt; module B #includes a header file provided by module A.<br>
&gt;<br>
&gt; I have made module B depend on module A, however, I believe I am still=
<br>
&gt; missing one or two steps in my recipe for module A such that the heade=
r file<br>
&gt; is copied into the shared kernel staging directory where module B can =
find<br>
&gt; it.<br>
&gt;<br>
&gt; So far I have tried the following:<br>
&gt;<br>
&gt; FILES_${PN}-dev +=3D &quot;/usr/include/linux/mfd/module-a.h&quot;<br>
&gt;<br>
&gt; FILES_kernel-headers +=3D &quot;${includedir}/linux/mfd/module-a.h&quo=
t;<br>
&gt;<br>
&gt; do_install_append () {<br>
&gt;=C2=A0 =C2=A0 install -d ${D}${includedir}/linux/mfd<br>
&gt;=C2=A0 =C2=A0 install -m 644 ${S}/module-a ${D}${includedir}/linux/mfd/=
module-a.h<br>
&gt; }<br>
<br>
And what happened after you tried the above? Did the header not end up<br>
in the -dev package for module A? Did the module A recipe not create a<br>
-dev package? Something else?<br>
<br>
&gt; In module B, I want to be able to:<br>
&gt;<br>
&gt; #include &lt;linux/mfd/module-a.h&gt;<br>
&gt;<br>
</blockquote></div>

--000000000000c660000570983f21--
