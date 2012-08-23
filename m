Return-Path: <aaryak.gautam@gmail.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AE91E01404
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 22:39:41 -0700 (PDT)
Received: by vcbfl11 with SMTP id fl11so523714vcb.35
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 22:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=hn1DRtKUETTu9L/rZyfpgQdu+O0bBPnppwK2IPaWRJI=;
	b=UklMS7I9eOJmQQaWuGr+ZaqFTziQAFqJr/zVpHzQ0RKhYI+VLl9mz/7WyomaXpzACj
	hXPHt0E8rg1W3u9edq9uuVIjoxEZpm6ggCVkPlrf9GZ2AkXfjGj1z/Npw7qpwu5yfHat
	7hU21YTq5Kdy6bvdN3Ults70MSfIIUZv7msw0Ilczohj+D12b+xdb1JedqUFZp0dv+oL
	e68zaVvCWtE7qRJRwqQEYIgU9E25v9ymL5A2spVhkBHp15t1tQ5KVRkSp83e4VYR2oQV
	ENMcuNhcL1mdUoIx8c62kznXJzf7RqTgueCLPyi69lJNRiJzxv7tNpZC79Yfwz00hOaX
	QW5g==
MIME-Version: 1.0
Received: by 10.220.222.20 with SMTP id ie20mr297890vcb.13.1345700378201; Wed,
	22 Aug 2012 22:39:38 -0700 (PDT)
Received: by 10.58.66.228 with HTTP; Wed, 22 Aug 2012 22:39:38 -0700 (PDT)
In-Reply-To: <CDED78A957032E45B3239CDDA7642D151C8FE203@ORSMSX105.amr.corp.intel.com>
References: <CAMv4DROy+nzU-6ESb2FGQyok33C7e6hV7EoOhN_5sq8PSCTxYA@mail.gmail.com>
	<CA+YB3rYnSio1LLL_awAUM55FaMwdQoxsyanopVTOmmNHmGRqwA@mail.gmail.com>
	<CDED78A957032E45B3239CDDA7642D151C8FE203@ORSMSX105.amr.corp.intel.com>
Date: Thu, 23 Aug 2012 11:09:38 +0530
Message-ID: <CAMv4DROVAteocwpU7MHrGyi6Qc97zxC94e1SQYQYwkdkDe2xcQ@mail.gmail.com>
From: aaryak gautam <aaryak.gautam@gmail.com>
To: "Stewart, David C" <david.c.stewart@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: adding packages in my Yocto
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
X-List-Received-Date: Thu, 23 Aug 2012 05:39:41 -0000
Content-Type: multipart/alternative; boundary=14dae9cdcc71044d9a04c7e8494c

--14dae9cdcc71044d9a04c7e8494c
Content-Type: text/plain; charset=ISO-8859-1

Thanks to you all for helping me out there.


On Tue, Aug 21, 2012 at 9:51 PM, Stewart, David C <david.c.stewart@intel.com
> wrote:

> Good advice. A quick check of openembedded-core shows that gst-ffmpeg
> appears to be one of the packages available. Yes, definitely check the hob.
>
> >-----Original Message-----
> >From: yocto-bounces@yoctoproject.org [mailto:yocto-
> >bounces@yoctoproject.org] On Behalf Of Jeff Osier-Mixon
> >Sent: Tuesday, August 21, 2012 9:01 AM
> >To: aaryak gautam
> >Cc: Yocto Project
> >Subject: Re: [yocto] adding packages in my Yocto
> >
> >Hi - please take a look at the FAQ here:
> >https://wiki.yoctoproject.org/wiki/FAQ
> >
> >Near the bottom there are some technical answers, one of which is how
> >to add a single package:
> >
> >Q: How can I add a package to my project?
> >
> >A: As with any complex system, the real answer is it depends, but of
> >course that is not very helpful. The simplest method for adding a
> >single package to your build is to add a line like this to
> >conf/local.conf:
> >
> >   IMAGE_INSTALL_append += " package"
> >
> >Use your own package name in place of package. Note the leading space
> >before the package name.
> >For more information, read this chapter in the Yocto Project
> >Development Manual
> >(http://www.yoctoproject.org/docs/current/dev-manual/dev-
> >manual.html#usingpoky-extend-addpkg).
> >
> >I also highly recommend trying out the Hob interface, as it makes the
> >whole system easier to understand. I like to make changes in the Hob
> >and then examine those changes in the resulting configuration files to
> >better understand the system at work.
> >
> >Hope this helps!
> >
> >On Tue, Aug 21, 2012 at 1:26 AM, aaryak gautam <aaryak.gautam@gmail.com>
> >wrote:
> >> Hello
> >>
> >> I am  a hobbyist and quite new to both Linux and Yocto.
> >> I had already compiled my Yocto kernel for I.MX23 successfully.
> >> But I want to add few packages.
> >> Like if i want to have ffmpeg in my yocto,how should I add it?
> >> I have gone through the documentation,but could not understand.
> >>
> >> can you help me out?
> >> I am using Bitbake core-image-minimal , not sato.
> >>
> >>
> >> Thank You.
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >>
> >
> >
> >
> >--
> >Jeff Osier-Mixon http://jefro.net/blog
> >Yocto Project Community Manager @Intel http://yoctoproject.org
> >_______________________________________________
> >yocto mailing list
> >yocto@yoctoproject.org
> >https://lists.yoctoproject.org/listinfo/yocto
>

--14dae9cdcc71044d9a04c7e8494c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Thanks to you all for helping me out there.<br><br><br><div class=3D"gmail_=
quote">On Tue, Aug 21, 2012 at 9:51 PM, Stewart, David C <span dir=3D"ltr">=
&lt;<a href=3D"mailto:david.c.stewart@intel.com" target=3D"_blank">david.c.=
stewart@intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Good advice. A quick check of openembedded-c=
ore shows that gst-ffmpeg appears to be one of the packages available. Yes,=
 definitely check the hob.<br>

<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;-----Original Message-----<br>
&gt;From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@y=
octoproject.org</a> [mailto:<a href=3D"mailto:yocto-">yocto-</a><br>
&gt;<a href=3D"mailto:bounces@yoctoproject.org">bounces@yoctoproject.org</a=
>] On Behalf Of Jeff Osier-Mixon<br>
&gt;Sent: Tuesday, August 21, 2012 9:01 AM<br>
&gt;To: aaryak gautam<br>
&gt;Cc: Yocto Project<br>
&gt;Subject: Re: [yocto] adding packages in my Yocto<br>
&gt;<br>
&gt;Hi - please take a look at the FAQ here:<br>
&gt;<a href=3D"https://wiki.yoctoproject.org/wiki/FAQ" target=3D"_blank">ht=
tps://wiki.yoctoproject.org/wiki/FAQ</a><br>
&gt;<br>
&gt;Near the bottom there are some technical answers, one of which is how<b=
r>
&gt;to add a single package:<br>
&gt;<br>
&gt;Q: How can I add a package to my project?<br>
&gt;<br>
&gt;A: As with any complex system, the real answer is it depends, but of<br=
>
&gt;course that is not very helpful. The simplest method for adding a<br>
&gt;single package to your build is to add a line like this to<br>
&gt;conf/local.conf:<br>
&gt;<br>
&gt; =A0 IMAGE_INSTALL_append +=3D &quot; package&quot;<br>
&gt;<br>
&gt;Use your own package name in place of package. Note the leading space<b=
r>
&gt;before the package name.<br>
&gt;For more information, read this chapter in the Yocto Project<br>
&gt;Development Manual<br>
&gt;(<a href=3D"http://www.yoctoproject.org/docs/current/dev-manual/dev-" t=
arget=3D"_blank">http://www.yoctoproject.org/docs/current/dev-manual/dev-</=
a><br>
&gt;manual.html#usingpoky-extend-addpkg).<br>
&gt;<br>
&gt;I also highly recommend trying out the Hob interface, as it makes the<b=
r>
&gt;whole system easier to understand. I like to make changes in the Hob<br=
>
&gt;and then examine those changes in the resulting configuration files to<=
br>
&gt;better understand the system at work.<br>
&gt;<br>
&gt;Hope this helps!<br>
&gt;<br>
&gt;On Tue, Aug 21, 2012 at 1:26 AM, aaryak gautam &lt;<a href=3D"mailto:aa=
ryak.gautam@gmail.com">aaryak.gautam@gmail.com</a>&gt;<br>
&gt;wrote:<br>
&gt;&gt; Hello<br>
&gt;&gt;<br>
&gt;&gt; I am =A0a hobbyist and quite new to both Linux and Yocto.<br>
&gt;&gt; I had already compiled my Yocto kernel for I.MX23 successfully.<br=
>
&gt;&gt; But I want to add few packages.<br>
&gt;&gt; Like if i want to have ffmpeg in my yocto,how should I add it?<br>
&gt;&gt; I have gone through the documentation,but could not understand.<br=
>
&gt;&gt;<br>
&gt;&gt; can you help me out?<br>
&gt;&gt; I am using Bitbake core-image-minimal , not sato.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Thank You.<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; yocto mailing list<br>
&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a><br>
&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=
=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;--<br>
&gt;Jeff Osier-Mixon <a href=3D"http://jefro.net/blog" target=3D"_blank">ht=
tp://jefro.net/blog</a><br>
&gt;Yocto Project Community Manager @Intel <a href=3D"http://yoctoproject.o=
rg" target=3D"_blank">http://yoctoproject.org</a><br>
&gt;_______________________________________________<br>
&gt;yocto mailing list<br>
&gt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
&gt;<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_bl=
ank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br>

--14dae9cdcc71044d9a04c7e8494c--
