Return-Path: <praveen.vatt@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7E69E0109E; Wed, 21 Dec 2016 02:50:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (praveen.vatt[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.50 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBF0CE0109B
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2016 02:50:12 -0800 (PST)
Received: by mail-wm0-f50.google.com with SMTP id g23so2113089wme.0
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2016 02:50:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=WWrFpjcUhAD2g/1IPbScGrR5Epeu5NgdmGxnZfGK1s4=;
	b=mhlyuz6b590og2WtJun9DbgsvG1o/DamYWmw2F2v6w0uRN2833a9ctNAE+2jvl1/f1
	2igoegIp0solmJpRSCwra1GyhweqhiCJkX62spTSPgO1XoRcSkWQjVYdVnRVFztiEUjp
	0BtjAatLJKbFFTY+QLosVOU7aZN/uB1e4fNAzE5CO5MhPnvvAYQlONZMdxZJT77tE0W1
	Trms3hTdxK8SLV+ZRFukMAK8NxkRrti5sq+CDMIO4nwq5yZdl2QsP9Y9ORZdv9sUQYU4
	8gJWCjLu+EuiJdjVDtIX6uqpUwPLYZBPMiskfx5MaxaiVQy0mC+AAtVyGIvFSm86bBU+
	51RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=WWrFpjcUhAD2g/1IPbScGrR5Epeu5NgdmGxnZfGK1s4=;
	b=duu2o9pm8AOfxheghff5HeHVkOji4hnHy7KfT6oZoyPK0roWEJqQI+UoUrN/oQ+UyZ
	z1uIKTMha8cjZNqG3i765xY69bJbeuQPd/HMstcWf9wWl1QECsLoDEaCBwC3YT2QrEDD
	DYCJaOIWFcbUbRzQTprzFJFWyjKCN5v3WXOzrzkePNlGNrcLLQOnNvIFzhTy3occ+g6k
	2ezN2xImKv0uuRwK+7tY5XIO6/wwp0YVz2JBVWZrAyjqLA/5Jt/bCJ98EuQOpS4/8BNe
	sxqDX6BA1cc6ZTjzg8evPc4vOgyXvTdetHzcBFpATUFUWE8YYax5QPAh+VBJN+YR10Hj
	yyow==
X-Gm-Message-State: AIkVDXIQBATBst/l0jO4i7VNyFQJY7uRIAzvfOG3lGIK7LZXVM5n5nvnNrsNJcZuCid01wqkNUC4qZ02igxWzQ==
X-Received: by 10.28.211.72 with SMTP id k69mr6047104wmg.138.1482317410924;
	Wed, 21 Dec 2016 02:50:10 -0800 (PST)
MIME-Version: 1.0
Received: by 10.194.192.1 with HTTP; Wed, 21 Dec 2016 02:50:10 -0800 (PST)
In-Reply-To: <mailman.59185.1482160816.15860.yocto@yoctoproject.org>
References: <mailman.59185.1482160816.15860.yocto@yoctoproject.org>
From: praveen vattipalli <praveen.vatt@gmail.com>
Date: Wed, 21 Dec 2016 16:20:10 +0530
Message-ID: <CA+pXca1M7d9fa6GKvQQDmNDC8NH2G7h_8A5janYV+ucmwRJk2w@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: Re: yocto Digest, Vol 75, Issue 73
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
X-List-Received-Date: Wed, 21 Dec 2016 10:50:14 -0000
Content-Type: multipart/alternative; boundary=001a11470106b8fe24054428ea08

--001a11470106b8fe24054428ea08
Content-Type: text/plain; charset=UTF-8

Thanks Alex.
I followed below procedure. Now i could compile hello_2.7

in build/conf/local.conf

INHERIT += "externalsrc"
EXTERNALSRC_pn-hello =
"/home/rajesh/Downloads/poky-krogoth-15.0.2/meta/recipes-extended/hello/hello_2.7"
EXTERNALSRC_BUILD_pn-hello =
"/home/rajesh/Downloads/poky-krogoth-15.0.2/meta/recipes-extended/hello/hello_2.7"

in hello_2.7.bb

EXTERNALSRC =
"/home/rajesh/Downloads/poky-krogoth-15.0.2/meta/recipes-extended/hello/hello_2.7"
EXTERNALSRC_BUILD =
"/home/rajesh/Downloads/poky-krogoth-15.0.2/meta/recipes-extended/hello/hello_2.7"

Thanks,
Praveen.

Message: 1
Date: Mon, 19 Dec 2016 15:41:44 +0200
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Subject: Re: [yocto] Fwd: error while compiling hello_2.7.bb
Message-ID: <25d33f10-e79c-1a60-5dac-a40bb647c1a7@linux.intel.com>
Content-Type: text/plain; charset=windows-1252; format=flowed

On 12/19/2016 02:42 PM, praveen vattipalli wrote:
> I have hello_2.7.bb <http://hello_2.7.bb> file which contains as below
> vim hello_2.7.bb <http://hello_2.7.bb>
> DESCRIPTION = "GNU Helloworld application"
> SECTION = "test"
> LICENSE = "BSD"
>
> LIC_FILES_CHKSUM =
> "file://${COMMON_LICENSE_DIR}/BSD;md5=3775480a712fc46a69647678acb234cb"
> SRC_DIR ?=
> "/home/rajesh/poky-krogoth-15.0.2/meta/recipes-support/hello/hello_2.7"
> SRC_URI = "file://${SRC_DIR}"
>
> S = "${SRC_DIR}"
>
> do_compile (){
>         make prog
> }

You probably need to use externalsrc facility:
http://www.yoctoproject.org/docs/2.2/dev-manual/dev-
manual.html#building-software-from-an-external-source

Alex

On Mon, Dec 19, 2016 at 8:50 PM, <yocto-request@yoctoproject.org> wrote:

> Send yocto mailing list submissions to
>         yocto@yoctoproject.org
>
> To subscribe or unsubscribe via the World Wide Web, visit
>         https://lists.yoctoproject.org/listinfo/yocto
> or, via email, send a message with subject or body 'help' to
>         yocto-request@yoctoproject.org
>
> You can reach the person managing the list at
>         yocto-owner@yoctoproject.org
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of yocto digest..."
>
>
> Today's Topics:
>
>    1. Re: Fwd: error while compiling hello_2.7.bb (Alexander Kanavin)
>    2. Re: Build one package from a split package recipe (Thomas Thorne)
>    3. Re: setting up autobuilder on local machine (Jussi Kukkonen)
>    4. Re: setting up autobuilder on local machine (Mirza Krak)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Mon, 19 Dec 2016 15:41:44 +0200
> From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] Fwd: error while compiling hello_2.7.bb
> Message-ID: <25d33f10-e79c-1a60-5dac-a40bb647c1a7@linux.intel.com>
> Content-Type: text/plain; charset=windows-1252; format=flowed
>
> On 12/19/2016 02:42 PM, praveen vattipalli wrote:
> > I have hello_2.7.bb <http://hello_2.7.bb> file which contains as below
> > vim hello_2.7.bb <http://hello_2.7.bb>
> > DESCRIPTION = "GNU Helloworld application"
> > SECTION = "test"
> > LICENSE = "BSD"
> >
> > LIC_FILES_CHKSUM =
> > "file://${COMMON_LICENSE_DIR}/BSD;md5=3775480a712fc46a69647678acb234cb"
> > SRC_DIR ?=
> > "/home/rajesh/poky-krogoth-15.0.2/meta/recipes-support/hello/hello_2.7"
> > SRC_URI = "file://${SRC_DIR}"
> >
> > S = "${SRC_DIR}"
> >
> > do_compile (){
> >         make prog
> > }
>
> You probably need to use externalsrc facility:
> http://www.yoctoproject.org/docs/2.2/dev-manual/dev-
> manual.html#building-software-from-an-external-source
>
> Alex
>
>
> ------------------------------
>
> Message: 2
> Date: Mon, 19 Dec 2016 14:13:46 +0000
> From: Thomas Thorne <Thomas.Thorne@net2edge.com>
> To: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>,
>         "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> Subject: Re: [yocto] Build one package from a split package recipe
> Message-ID:
>         <DB6PR0701MB187973F62E2ADC0D6CD6D67BD3910@DB6PR0701MB1879.
> eurprd07.prod.outlook.com>
>
> Content-Type: text/plain; charset="us-ascii"
>
> ?  Now when I fire a bitbake command like "bitbake test" all the packages
> listed into the recipe get build. But sometime I need to build only one
> package say test1.
>
> ?
>
> ?  How that can be achieved as when I tried "bitbake test1" its reports
> below error
>
> ?  ERROR: Nothing PROVIDES test1'
>
> I think you would need to define a recipe for each target you wanted to
> build.  You could still have a top level recipe that depended on them all
> and caused them all to be generated.
>
> Thomas A. F. Thorne<mailto:Thomas.Thorne@Net2Edge.com>  Software
> Engineer  Net2Edge<http://www.net2edge.com/>
>
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.yoctoproject.org/pipermail/yocto/
> attachments/20161219/48a387c4/attachment-0001.html>
>
> ------------------------------
>
> Message: 3
> Date: Mon, 19 Dec 2016 16:57:52 +0200
> From: Jussi Kukkonen <jussi.kukkonen@intel.com>
> To: Mirza Krak <mirza.krak@gmail.com>
> Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> Subject: Re: [yocto] setting up autobuilder on local machine
> Message-ID:
>         <CAHiDW_HKOb6=jNPjxVNDap0xESSM9=OCBSr4nW7D9n
> FQbVH4qw@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
>
> On 19 December 2016 at 15:28, Mirza Krak <mirza.krak@gmail.com> wrote:
> >
> > > Thank you for your fast responses. Generating the htpasswd file my
> > > self did the trick. Now I can login. The full command was (as you
> > > suggested I used the one in autobuilder git repo under ./bin):
> > >
> > >     ./htpasswd -b -c <path to htpasswd file> <user name> <secret
> password>
> > >
> > > Forced a build of my configuration now and hoping for the best :).
> >
> > And it was not green all the way.
> >
> > I get an error that I do not get how to get around. The error message is:
> >
> > ERROR: Unable to parse
> >
> /home/mirzak/project/yocto-autobuilder/yocto-autobuilder-
> mender-rpi/yocto-worker/nightly-mender-rpi/build/meta-
> mender/conf/layer.conf:
> > [Errno 2] file
> /home/mirzak/project/yocto-autobuilder/yocto-autobuilder-
> mender-rpi/yocto-worker/nightly-mender-rpi/build/meta-
> mender/conf/layer.conf
> > not found
> >
> > The error message I understand. But I do not understand why it adds
> > meta-mender to bblayers files. I did not tell it to do that, because
> > meta-mender contains layers that I want to include. Similar to
> > meta-openembedded (which is also added to bblayers).
> >
>
> I'm not an expert but your nightly-mender-rpi.conf contains this:
>     'layerdirs': ['meta-yocto', 'meta-raspberrypi',
> 'meta-mender/meta-mender-core', 'meta-mender/meta-mender-raspberrypi',
> 'oe-meta-go', 'meta-openembedded/meta-oe']
>
> Jussi
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.yoctoproject.org/pipermail/yocto/
> attachments/20161219/f49f1395/attachment-0001.html>
>
> ------------------------------
>
> Message: 4
> Date: Mon, 19 Dec 2016 16:20:14 +0100
> From: Mirza Krak <mirza.krak@gmail.com>
> To: Jussi Kukkonen <jussi.kukkonen@intel.com>
> Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> Subject: Re: [yocto] setting up autobuilder on local machine
> Message-ID:
>         <CALw8SCVQaVueELOYE+WneVaaVoiJdgep=jhV8Pg=TsCF+gT_
> PA@mail.gmail.com>
> Content-Type: text/plain; charset=UTF-8
>
> 2016-12-19 15:57 GMT+01:00 Jussi Kukkonen <jussi.kukkonen@intel.com>:
> > On 19 December 2016 at 15:28, Mirza Krak <mirza.krak@gmail.com> wrote:
> >>
> >> > Thank you for your fast responses. Generating the htpasswd file my
> >> > self did the trick. Now I can login. The full command was (as you
> >> > suggested I used the one in autobuilder git repo under ./bin):
> >> >
> >> >     ./htpasswd -b -c <path to htpasswd file> <user name> <secret
> >> > password>
> >> >
> >> > Forced a build of my configuration now and hoping for the best :).
> >>
> >> And it was not green all the way.
> >>
> >> I get an error that I do not get how to get around. The error message
> is:
> >>
> >> ERROR: Unable to parse
> >>
> >> /home/mirzak/project/yocto-autobuilder/yocto-autobuilder-
> mender-rpi/yocto-worker/nightly-mender-rpi/build/meta-
> mender/conf/layer.conf:
> >> [Errno 2] file
> >> /home/mirzak/project/yocto-autobuilder/yocto-autobuilder-
> mender-rpi/yocto-worker/nightly-mender-rpi/build/meta-
> mender/conf/layer.conf
> >> not found
> >>
> >> The error message I understand. But I do not understand why it adds
> >> meta-mender to bblayers files. I did not tell it to do that, because
> >> meta-mender contains layers that I want to include. Similar to
> >> meta-openembedded (which is also added to bblayers).
> >>
> >
> > I'm not an expert but your nightly-mender-rpi.conf contains this:
> >     'layerdirs': ['meta-yocto', 'meta-raspberrypi',
> > 'meta-mender/meta-mender-core', 'meta-mender/meta-mender-raspberrypi',
> > 'oe-meta-go', 'meta-openembedded/meta-oe']
>
> That is correct. I add following:
>
>    meta-mender/meta-mender-raspberrypi
>    meta-mender/meta-mender-core
>
> And they are added to the bblayers.conf correctly.
>
> But I do not add "meta-mender" which is present in my bblayers.conf
> and is the cause of my error message. It seems to me like it is picked
> up from the "repos" section and hence the "magic" :)
>
> Best Regards
> Mirza
>
>
> ------------------------------
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
> End of yocto Digest, Vol 75, Issue 73
> *************************************
>

--001a11470106b8fe24054428ea08
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Thanks Alex.<br>I followed below procedure. Now =
i could compile hello_2.7<br><br>in build/conf/local.conf<br><br>INHERIT +=
=3D &quot;externalsrc&quot;<br>EXTERNALSRC_pn-hello =3D &quot;/home/rajesh/=
Downloads/poky-krogoth-15.0.2/meta/recipes-extended/hello/hello_2.7&quot;<b=
r>EXTERNALSRC_BUILD_pn-hello =3D &quot;/home/rajesh/Downloads/poky-krogoth-=
15.0.2/meta/recipes-extended/hello/hello_2.7&quot;<br><br>in <a href=3D"htt=
p://hello_2.7.bb">hello_2.7.bb</a><br><br>EXTERNALSRC =3D &quot;/home/rajes=
h/Downloads/poky-krogoth-15.0.2/meta/recipes-extended/hello/hello_2.7&quot;=
<br>EXTERNALSRC_BUILD =3D &quot;/home/rajesh/Downloads/poky-krogoth-15.0.2/=
meta/recipes-extended/hello/hello_2.7&quot;<br><br></div>Thanks,<br></div>P=
raveen.<br><div><div><br>Message: 1<br>
Date: Mon, 19 Dec 2016 15:41:44 +0200<br>
From: Alexander Kanavin &lt;<a href=3D"mailto:alexander.kanavin@linux.intel=
.com">alexander.kanavin@linux.<wbr>intel.com</a>&gt;<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: Re: [yocto] Fwd: error while compiling <a href=3D"http://hello_2.7=
.bb" rel=3D"noreferrer" target=3D"_blank">hello_2.7.bb</a><br>
Message-ID: &lt;<a href=3D"mailto:25d33f10-e79c-1a60-5dac-a40bb647c1a7@linu=
x.intel.com">25d33f10-e79c-1a60-5dac-<wbr>a40bb647c1a7@linux.intel.com</a>&=
gt;<br>
Content-Type: text/plain; charset=3Dwindows-1252; format=3Dflowed<br>
<br>
On 12/19/2016 02:42 PM, praveen vattipalli wrote:<br>
&gt; I have <a href=3D"http://hello_2.7.bb" rel=3D"noreferrer" target=3D"_b=
lank">hello_2.7.bb</a> &lt;<a href=3D"http://hello_2.7.bb" rel=3D"noreferre=
r" target=3D"_blank">http://hello_2.7.bb</a>&gt; file which contains as bel=
ow<br>
&gt; vim <a href=3D"http://hello_2.7.bb" rel=3D"noreferrer" target=3D"_blan=
k">hello_2.7.bb</a> &lt;<a href=3D"http://hello_2.7.bb" rel=3D"noreferrer" =
target=3D"_blank">http://hello_2.7.bb</a>&gt;<br>
&gt; DESCRIPTION =3D &quot;GNU Helloworld application&quot;<br>
&gt; SECTION =3D &quot;test&quot;<br>
&gt; LICENSE =3D &quot;BSD&quot;<br>
&gt;<br>
&gt; LIC_FILES_CHKSUM =3D<br>
&gt; &quot;file://${COMMON_LICENSE_DIR}/<wbr>BSD;md5=3D<wbr>3775480a712fc46=
a69647678acb234<wbr>cb&quot;<br>
&gt; SRC_DIR ?=3D<br>
&gt; &quot;/home/rajesh/poky-krogoth-15.<wbr>0.2/meta/recipes-support/<wbr>=
hello/hello_2.7&quot;<br>
&gt; SRC_URI =3D &quot;file://${SRC_DIR}&quot;<br>
&gt;<br>
&gt; S =3D &quot;${SRC_DIR}&quot;<br>
&gt;<br>
&gt; do_compile (){<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0make prog<br>
&gt; }<br>
<br>
You probably need to use externalsrc facility:<br>
<a href=3D"http://www.yoctoproject.org/docs/2.2/dev-manual/dev-manual.html#=
building-software-from-an-external-source" rel=3D"noreferrer" target=3D"_bl=
ank">http://www.yoctoproject.org/<wbr>docs/2.2/dev-manual/dev-<wbr>manual.h=
tml#building-software-<wbr>from-an-external-source</a><br>
<br>
Alex<br></div></div></div><div class=3D"gmail_extra"><br><div class=3D"gmai=
l_quote">On Mon, Dec 19, 2016 at 8:50 PM,  <span dir=3D"ltr">&lt;<a href=3D=
"mailto:yocto-request@yoctoproject.org" target=3D"_blank">yocto-request@yoc=
toproject.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Send =
yocto mailing list submissions to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:yocto@yoctoproject.org">yocto=
@yoctoproject.org</a><br>
<br>
To subscribe or unsubscribe via the World Wide Web, visit<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"https://lists.yoctoproject.org/listi=
nfo/yocto" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
<wbr>org/listinfo/yocto</a><br>
or, via email, send a message with subject or body &#39;help&#39; to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:yocto-request@yoctoproject.or=
g">yocto-request@yoctoproject.org</a><br>
<br>
You can reach the person managing the list at<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:yocto-owner@yoctoproject.org"=
>yocto-owner@yoctoproject.org</a><br>
<br>
When replying, please edit your Subject line so it is more specific<br>
than &quot;Re: Contents of yocto digest...&quot;<br>
<br>
<br>
Today&#39;s Topics:<br>
<br>
=C2=A0 =C2=A01. Re: Fwd: error while compiling <a href=3D"http://hello_2.7.=
bb" rel=3D"noreferrer" target=3D"_blank">hello_2.7.bb</a> (Alexander Kanavi=
n)<br>
=C2=A0 =C2=A02. Re: Build one package from a split package recipe (Thomas T=
horne)<br>
=C2=A0 =C2=A03. Re: setting up autobuilder on local machine (Jussi Kukkonen=
)<br>
=C2=A0 =C2=A04. Re: setting up autobuilder on local machine (Mirza Krak)<br=
>
<br>
<br>
------------------------------<wbr>------------------------------<wbr>-----=
-----<br>
<br>
Message: 1<br>
Date: Mon, 19 Dec 2016 15:41:44 +0200<br>
From: Alexander Kanavin &lt;<a href=3D"mailto:alexander.kanavin@linux.intel=
.com">alexander.kanavin@linux.<wbr>intel.com</a>&gt;<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: Re: [yocto] Fwd: error while compiling <a href=3D"http://hello_2.7=
.bb" rel=3D"noreferrer" target=3D"_blank">hello_2.7.bb</a><br>
Message-ID: &lt;<a href=3D"mailto:25d33f10-e79c-1a60-5dac-a40bb647c1a7@linu=
x.intel.com">25d33f10-e79c-1a60-5dac-<wbr>a40bb647c1a7@linux.intel.com</a>&=
gt;<br>
Content-Type: text/plain; charset=3Dwindows-1252; format=3Dflowed<br>
<br>
On 12/19/2016 02:42 PM, praveen vattipalli wrote:<br>
&gt; I have <a href=3D"http://hello_2.7.bb" rel=3D"noreferrer" target=3D"_b=
lank">hello_2.7.bb</a> &lt;<a href=3D"http://hello_2.7.bb" rel=3D"noreferre=
r" target=3D"_blank">http://hello_2.7.bb</a>&gt; file which contains as bel=
ow<br>
&gt; vim <a href=3D"http://hello_2.7.bb" rel=3D"noreferrer" target=3D"_blan=
k">hello_2.7.bb</a> &lt;<a href=3D"http://hello_2.7.bb" rel=3D"noreferrer" =
target=3D"_blank">http://hello_2.7.bb</a>&gt;<br>
&gt; DESCRIPTION =3D &quot;GNU Helloworld application&quot;<br>
&gt; SECTION =3D &quot;test&quot;<br>
&gt; LICENSE =3D &quot;BSD&quot;<br>
&gt;<br>
&gt; LIC_FILES_CHKSUM =3D<br>
&gt; &quot;file://${COMMON_LICENSE_DIR}/<wbr>BSD;md5=3D<wbr>3775480a712fc46=
a69647678acb234<wbr>cb&quot;<br>
&gt; SRC_DIR ?=3D<br>
&gt; &quot;/home/rajesh/poky-krogoth-15.<wbr>0.2/meta/recipes-support/<wbr>=
hello/hello_2.7&quot;<br>
&gt; SRC_URI =3D &quot;file://${SRC_DIR}&quot;<br>
&gt;<br>
&gt; S =3D &quot;${SRC_DIR}&quot;<br>
&gt;<br>
&gt; do_compile (){<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0make prog<br>
&gt; }<br>
<br>
You probably need to use externalsrc facility:<br>
<a href=3D"http://www.yoctoproject.org/docs/2.2/dev-manual/dev-manual.html#=
building-software-from-an-external-source" rel=3D"noreferrer" target=3D"_bl=
ank">http://www.yoctoproject.org/<wbr>docs/2.2/dev-manual/dev-<wbr>manual.h=
tml#building-software-<wbr>from-an-external-source</a><br>
<br>
Alex<br>
<br>
<br>
------------------------------<br>
<br>
Message: 2<br>
Date: Mon, 19 Dec 2016 14:13:46 +0000<br>
From: Thomas Thorne &lt;<a href=3D"mailto:Thomas.Thorne@net2edge.com">Thoma=
s.Thorne@net2edge.com</a>&gt;<br>
To: &quot;Bipnesh, Abhinav (Abhinav)&quot; &lt;<a href=3D"mailto:abhinavbip=
nesh@avaya.com">abhinavbipnesh@avaya.com</a>&gt;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<a href=3D"mailto:yocto@yoctoproject.org"=
>yocto@yoctoproject.org</a>&quot; &lt;<a href=3D"mailto:yocto@yoctoproject.=
org">yocto@yoctoproject.org</a>&gt;<br>
Subject: Re: [yocto] Build one package from a split package recipe<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:DB6PR0701MB187973F62E2ADC=
0D6CD6D67BD3910@DB6PR0701MB1879.eurprd07.prod.outlook.com">DB6PR0701MB18797=
3F62E2ADC0D6C<wbr>D6D67BD3910@DB6PR0701MB1879.<wbr>eurprd07.prod.outlook.co=
m</a>&gt;<br>
<br>
Content-Type: text/plain; charset=3D&quot;us-ascii&quot;<br>
<br>
?=C2=A0 Now when I fire a bitbake command like &quot;bitbake test&quot; all=
 the packages listed into the recipe get build. But sometime I need to buil=
d only one package say test1.<br>
<br>
?<br>
<br>
?=C2=A0 How that can be achieved as when I tried &quot;bitbake test1&quot; =
its reports below error<br>
<br>
?=C2=A0 ERROR: Nothing PROVIDES test1&#39;<br>
<br>
I think you would need to define a recipe for each target you wanted to bui=
ld.=C2=A0 You could still have a top level recipe that depended on them all=
 and caused them all to be generated.<br>
<br>
Thomas A. F. Thorne&lt;mailto:<a href=3D"mailto:Thomas.Thorne@Net2Edge.com"=
>Thomas.Thorne@<wbr>Net2Edge.com</a>&gt;=C2=A0 Software Engineer=C2=A0 Net2=
Edge&lt;<a href=3D"http://www.net2edge.com/" rel=3D"noreferrer" target=3D"_=
blank">http://www.net2edge.<wbr>com/</a>&gt;<br>
<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachmen=
ts/20161219/48a387c4/attachment-0001.html" rel=3D"noreferrer" target=3D"_bl=
ank">http://lists.yoctoproject.<wbr>org/pipermail/yocto/<wbr>attachments/20=
161219/48a387c4/<wbr>attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 3<br>
Date: Mon, 19 Dec 2016 16:57:52 +0200<br>
From: Jussi Kukkonen &lt;<a href=3D"mailto:jussi.kukkonen@intel.com">jussi.=
kukkonen@intel.com</a>&gt;<br>
To: Mirza Krak &lt;<a href=3D"mailto:mirza.krak@gmail.com">mirza.krak@gmail=
.com</a>&gt;<br>
Cc: &quot;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a>&quot; &lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.=
org</a>&gt;<br>
Subject: Re: [yocto] setting up autobuilder on local machine<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;CAHiDW_HKOb6=3D<wbr>jNPjxVNDap0xESSM9=3D<a =
href=3D"mailto:OCBSr4nW7D9nFQbVH4qw@mail.gmail.com">OCBSr4nW7D9n<wbr>FQbVH4=
qw@mail.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
On 19 December 2016 at 15:28, Mirza Krak &lt;<a href=3D"mailto:mirza.krak@g=
mail.com">mirza.krak@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; &gt; Thank you for your fast responses. Generating the htpasswd file m=
y<br>
&gt; &gt; self did the trick. Now I can login. The full command was (as you=
<br>
&gt; &gt; suggested I used the one in autobuilder git repo under ./bin):<br=
>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0./htpasswd -b -c &lt;path to htpasswd file&gt;=
 &lt;user name&gt; &lt;secret<br>
password&gt;<br>
&gt; &gt;<br>
&gt; &gt; Forced a build of my configuration now and hoping for the best :)=
.<br>
&gt;<br>
&gt; And it was not green all the way.<br>
&gt;<br>
&gt; I get an error that I do not get how to get around. The error message =
is:<br>
&gt;<br>
&gt; ERROR: Unable to parse<br>
&gt;<br>
/home/mirzak/project/yocto-<wbr>autobuilder/yocto-autobuilder-<wbr>mender-r=
pi/yocto-worker/<wbr>nightly-mender-rpi/build/meta-<wbr>mender/conf/layer.c=
onf:<br>
&gt; [Errno 2] file<br>
/home/mirzak/project/yocto-<wbr>autobuilder/yocto-autobuilder-<wbr>mender-r=
pi/yocto-worker/<wbr>nightly-mender-rpi/build/meta-<wbr>mender/conf/layer.c=
onf<br>
&gt; not found<br>
&gt;<br>
&gt; The error message I understand. But I do not understand why it adds<br=
>
&gt; meta-mender to bblayers files. I did not tell it to do that, because<b=
r>
&gt; meta-mender contains layers that I want to include. Similar to<br>
&gt; meta-openembedded (which is also added to bblayers).<br>
&gt;<br>
<br>
I&#39;m not an expert but your nightly-mender-rpi.conf contains this:<br>
=C2=A0 =C2=A0 &#39;layerdirs&#39;: [&#39;meta-yocto&#39;, &#39;meta-raspber=
rypi&#39;,<br>
&#39;meta-mender/meta-mender-core&#39;<wbr>, &#39;meta-mender/meta-mender-<=
wbr>raspberrypi&#39;,<br>
&#39;oe-meta-go&#39;, &#39;meta-openembedded/meta-oe&#39;]<br>
<br>
Jussi<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachmen=
ts/20161219/f49f1395/attachment-0001.html" rel=3D"noreferrer" target=3D"_bl=
ank">http://lists.yoctoproject.<wbr>org/pipermail/yocto/<wbr>attachments/20=
161219/f49f1395/<wbr>attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 4<br>
Date: Mon, 19 Dec 2016 16:20:14 +0100<br>
From: Mirza Krak &lt;<a href=3D"mailto:mirza.krak@gmail.com">mirza.krak@gma=
il.com</a>&gt;<br>
To: Jussi Kukkonen &lt;<a href=3D"mailto:jussi.kukkonen@intel.com">jussi.ku=
kkonen@intel.com</a>&gt;<br>
Cc: &quot;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a>&quot; &lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.=
org</a>&gt;<br>
Subject: Re: [yocto] setting up autobuilder on local machine<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;CALw8SCVQaVueELOYE+<wbr>WneVaaVoiJdgep=3Djh=
V8Pg=3D<a href=3D"mailto:TsCF%2BgT_PA@mail.gmail.com">TsCF+gT_<wbr>PA@mail.=
gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3DUTF-8<br>
<br>
2016-12-19 15:57 GMT+01:00 Jussi Kukkonen &lt;<a href=3D"mailto:jussi.kukko=
nen@intel.com">jussi.kukkonen@intel.com</a>&gt;:<br>
&gt; On 19 December 2016 at 15:28, Mirza Krak &lt;<a href=3D"mailto:mirza.k=
rak@gmail.com">mirza.krak@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; &gt; Thank you for your fast responses. Generating the htpasswd fi=
le my<br>
&gt;&gt; &gt; self did the trick. Now I can login. The full command was (as=
 you<br>
&gt;&gt; &gt; suggested I used the one in autobuilder git repo under ./bin)=
:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0./htpasswd -b -c &lt;path to htpasswd file=
&gt; &lt;user name&gt; &lt;secret<br>
&gt;&gt; &gt; password&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Forced a build of my configuration now and hoping for the bes=
t :).<br>
&gt;&gt;<br>
&gt;&gt; And it was not green all the way.<br>
&gt;&gt;<br>
&gt;&gt; I get an error that I do not get how to get around. The error mess=
age is:<br>
&gt;&gt;<br>
&gt;&gt; ERROR: Unable to parse<br>
&gt;&gt;<br>
&gt;&gt; /home/mirzak/project/yocto-<wbr>autobuilder/yocto-autobuilder-<wbr=
>mender-rpi/yocto-worker/<wbr>nightly-mender-rpi/build/meta-<wbr>mender/con=
f/layer.conf:<br>
&gt;&gt; [Errno 2] file<br>
&gt;&gt; /home/mirzak/project/yocto-<wbr>autobuilder/yocto-autobuilder-<wbr=
>mender-rpi/yocto-worker/<wbr>nightly-mender-rpi/build/meta-<wbr>mender/con=
f/layer.conf<br>
&gt;&gt; not found<br>
&gt;&gt;<br>
&gt;&gt; The error message I understand. But I do not understand why it add=
s<br>
&gt;&gt; meta-mender to bblayers files. I did not tell it to do that, becau=
se<br>
&gt;&gt; meta-mender contains layers that I want to include. Similar to<br>
&gt;&gt; meta-openembedded (which is also added to bblayers).<br>
&gt;&gt;<br>
&gt;<br>
&gt; I&#39;m not an expert but your nightly-mender-rpi.conf contains this:<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0&#39;layerdirs&#39;: [&#39;meta-yocto&#39;, &#39;me=
ta-raspberrypi&#39;,<br>
&gt; &#39;meta-mender/meta-mender-core&#39;<wbr>, &#39;meta-mender/meta-men=
der-<wbr>raspberrypi&#39;,<br>
&gt; &#39;oe-meta-go&#39;, &#39;meta-openembedded/meta-oe&#39;]<br>
<br>
That is correct. I add following:<br>
<br>
=C2=A0 =C2=A0meta-mender/meta-mender-<wbr>raspberrypi<br>
=C2=A0 =C2=A0meta-mender/meta-mender-core<br>
<br>
And they are added to the bblayers.conf correctly.<br>
<br>
But I do not add &quot;meta-mender&quot; which is present in my bblayers.co=
nf<br>
and is the cause of my error message. It seems to me like it is picked<br>
up from the &quot;repos&quot; section and hence the &quot;magic&quot; :)<br=
>
<br>
Best Regards<br>
Mirza<br>
<br>
<br>
------------------------------<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br>
<br>
End of yocto Digest, Vol 75, Issue 73<br>
******************************<wbr>*******<br>
</font></span></blockquote></div><br></div>

--001a11470106b8fe24054428ea08--
