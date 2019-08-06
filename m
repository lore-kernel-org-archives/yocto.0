Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FD5AE00D59; Tue,  6 Aug 2019 06:25:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com
	[209.85.222.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED4BEE00CD5
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2019 06:25:13 -0700 (PDT)
Received: by mail-ua1-f43.google.com with SMTP id c4so6822213uad.1
	for <yocto@yoctoproject.org>; Tue, 06 Aug 2019 06:25:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ETfYKY3Z6w+egNcDNtI59F2ILNzjDIHrjxzfPMgv+OU=;
	b=Wp8yQMaaQcolZ0rq9jYUKnWNmTRYeBOo6ViCO8JzIqf1ehkQJILvseZVwvS4zGq37S
	aQQSIHWKoUpFc18i/TRLjwVfw7SntauHCzDUQS9i32LUNUlmAtFZRd77CpvQNVv4ZDHd
	5NAd7as+mdGQu9JvXQ4ig4IBl8Cax18nkKcMl15H0v8Wu4sP7BfdHghtV/nRMipjb9mw
	uV+6J6ydEqZHZfPlAnQrMcY86nLgpaVogWLl8qZqmJlsoSA3w4589erd1i+c1sst3neW
	e7+c/vItUAHqcJ7zO1PB/MMnlcW8vwyHuVj8Akoiz3OwGcNLxBJ8/UtIilu4brFKBu1C
	RnUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ETfYKY3Z6w+egNcDNtI59F2ILNzjDIHrjxzfPMgv+OU=;
	b=gSXPOIe3mFhBEpwpwqGDUJLmvAoe7FiKDHTKLZbc5wD1U69/TE/gWDhm387yniymEP
	khp81OPAZQ+6vYTf+Kv1pJzJCYC2YsvU5F1RSkUFgPIXUsnKyAsxLI/qEVB7+sb1Dznj
	qYlUkZwPewnFpWZ65ZTPyXRULL5d2CE3XS5qj4dnvEYB4hYDDnDkGrxBkJJ34ufvL+d7
	+OgZ5FvQT1A7+tQoEF4lofhRfGWB58mNsAHzC7jkwkKEXNCbII28Zxw0niPCQzkIoxgt
	5kxSbEFV9aT6pZv8eUAOJ0drv2NriI3PMVuWklYKcyXiNlukoKeJ11cLLCsvCwg6m3aL
	7r/Q==
X-Gm-Message-State: APjAAAWt2x6WnSypECUVXm9mK1TTbNKrmWIPXdpyIb58pEROq9V7Pg5p
	OU+uixNZPqTbm+u6EGbQj44LV8tliCcOfg3bhjQ=
X-Google-Smtp-Source: APXvYqwhSIxhWWihu/Y03XgUiAEPBtGwyN9o0Y2hYRgQ9JmBZPS7uUo8QkHTThOgehefV8VmVE9JJDrkGwr3wxXr3YE=
X-Received: by 2002:ab0:70c8:: with SMTP id r8mr2107912ual.89.1565097913266;
	Tue, 06 Aug 2019 06:25:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWSByxp8OR09orkP6RO9uto6Dpf0rZmsGWigW0yQ82P=0g@mail.gmail.com>
	<CAA=hcWRHaOj+24TYr9WBcaZqBbTjn-6BXjdG+Q=dEe3J355gBA@mail.gmail.com>
	<CANNYZj-=r2pf7bKNYjT+=j=rWC_ajYxZ2jUR5OQxpzpiEw-Egw@mail.gmail.com>
	<CAA=hcWQYO82WQiqwQvEgwbX3EwG+yLNWoWtT0WZR=m7zfdO3aA@mail.gmail.com>
	<CANNYZj-osAvfX3ga98oQSegsewdKixxFjd7RYuYG6uJGg8qoFw@mail.gmail.com>
	<CAA=hcWTZ4Ob=5+OZk9MowBw-Rc85Z9MXGKq4Hqs+=L=_c_KAdQ@mail.gmail.com>
In-Reply-To: <CAA=hcWTZ4Ob=5+OZk9MowBw-Rc85Z9MXGKq4Hqs+=L=_c_KAdQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 6 Aug 2019 15:25:02 +0200
Message-ID: <CANNYZj-ubZWmoSpmtUnyjOq=i7=HfSFLMqQTxzQ1pg+XeP+qqw@mail.gmail.com>
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: QA issue applibrary rdepends on app-dev [dev-deps], where is the do_package_qa?
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
X-List-Received-Date: Tue, 06 Aug 2019 13:25:15 -0000
Content-Type: multipart/alternative; boundary="00000000000028b625058f72c1a7"

--00000000000028b625058f72c1a7
Content-Type: text/plain; charset="UTF-8"

The right way out of this is to fix the issue: your main package depends on
the -dev package, and so will always pull it into the target image. I am
not telling you how to disable the check, as you're merely hiding a bug
that way :)

If you provide ls -lR of ${D}, we might be able to understand what happens.

Alex

On Tue, 6 Aug 2019 at 14:45, JH <jupiter.hce@gmail.com> wrote:

> Thanks Alex, here is the error in my application build, it used working
> well:
>
> ERROR: app_library-1.0.0-0 do_package_qa: QA Issue: app_library
> rdepends on app_library-dev [dev-deps]
> ERROR: app_library-1.0.0-0 do_package_qa: QA run found fatal errors.
> Please consider fixing them.
> ERROR: app_library-1.0.0-0 do_package_qa: Function failed: do_package_qa
> ERROR: Logfile of failure stored in:
>
> /home/build/tmp-glibc/work/cortexa7t2hf-neon-oe-linux-gnueabi/app_library/1.0.0-0/temp/log.do_package_qa.6626
> ERROR: Task
> (/home/build/oe-core/../meta-app/recipes-core/app_library/app_library_git.bb:
> do_package_qa)
> failed with exit code '1'
>
> There is no do_package_qa in my app_library_git.bb, where is that
> do_package_qa from? how can I disable it? It sounds every easy in the
> document to disable it, but it did not give any clues -:(.
>
> Thank you.
>
> Kind regards,
>
> - jh
> On 8/6/19, Alexander Kanavin <alex.kanavin@gmail.com> wrote:
> > It may help if you copy-paste the exact error you are getting, and the
> > content of the directory where it happens.
> >
> > Alex
> >
> > On Tue, 6 Aug 2019 at 13:09, JH <jupiter.hce@gmail.com> wrote:
> >
> >> On 8/6/19, Alexander Kanavin <alex.kanavin@gmail.com> wrote:
> >> > You don't; package_qa is reporting real issues with your packaging, so
> >> you
> >> > need to address them.
> >>
> >> Well, my first issue is I need to build it, the document said it can
> >> be disabled, but did not say how, appreciate anyone helps how to
> >> disable it.
> >>
> >> Thank you
> >>
> >>
> >> > Alex
> >> >
> >> > On Tue, 6 Aug 2019 at 10:40, JH <jupiter.hce@gmail.com> wrote:
> >> >
> >> >> Hi,
> >> >>
> >> >> According to the latest document:
> >> >>
> >> >> "Package QA checks are now performed during a new do_package_qa task
> >> >> rather than being part of the do_package task. This allows more
> >> >> parallel execution. This change is unlikely to be an issue except for
> >> >> highly customized recipes that disable packaging tasks themselves by
> >> >> marking them as noexec. For those packages, you will need to disable
> >> >> the do_package_qa task as well."
> >> >>
> >> >> How can I disable the do_package_qa task?
> >> >>
> >> >> Thank you.
> >> >>
> >> >> Kind regards,
> >> >>
> >> >> - jh
> >> >>
> >> >> On 8/4/19, JH <jupiter.hce@gmail.com> wrote:
> >> >> > Hi,
> >> >> >
> >> >> > I was running my Yocto build fine until I had a minor change to
> move
> >> >> > libapplibrary.so to libapplibrry.so.${PN} and made libapplibrary.so
> >> >> > to
> >> >> > a symbolic link of libapplibrry.so.${PN}. Now it got an error of QA
> >> >> > issue applibrary rdepends on app-dev [dev-deps], QA run found fatal
> >> >> > errors, please consider fixing them.
> >> >> >
> >> >> > Even I reverse the changes back the, it still complained the same
> >> >> > error.
> >> >> >
> >> >> > I don't have do_package_qa in my bb file, where is it from? What is
> >> >> > that error about? How to fix it?
> >> >> >
> >> >> > Thank you.
> >> >> >
> >> >> > Kind regards,
> >> >> >
> >> >> > - jh
> >> >> >
> >> >> --
> >> >> _______________________________________________
> >> >> yocto mailing list
> >> >> yocto@yoctoproject.org
> >> >> https://lists.yoctoproject.org/listinfo/yocto
> >> >>
> >> >
> >>
> >
>

--00000000000028b625058f72c1a7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The right way out of this is to fix the issue: your m=
ain package depends on the -dev package, and so will always pull it into th=
e target image. I am not telling you how to disable the check, as you&#39;r=
e merely hiding a bug that way :)</div><div><br></div><div>If you provide l=
s -lR of ${D}, we might be able to understand what happens.</div><div><br><=
/div><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Tue, 6 Aug 2019 at 14:45, JH &lt;<a href=3D"mail=
to:jupiter.hce@gmail.com">jupiter.hce@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">Thanks Alex, here is the err=
or in my application build, it used working well:<br>
<br>
ERROR: app_library-1.0.0-0 do_package_qa: QA Issue: app_library<br>
rdepends on app_library-dev [dev-deps]<br>
ERROR: app_library-1.0.0-0 do_package_qa: QA run found fatal errors.<br>
Please consider fixing them.<br>
ERROR: app_library-1.0.0-0 do_package_qa: Function failed: do_package_qa<br=
>
ERROR: Logfile of failure stored in:<br>
/home/build/tmp-glibc/work/cortexa7t2hf-neon-oe-linux-gnueabi/app_library/1=
.0.0-0/temp/log.do_package_qa.6626<br>
ERROR: Task (/home/build/oe-core/../meta-app/recipes-core/app_library/app_l=
ibrary_git.bb:do_package_qa)<br>
failed with exit code &#39;1&#39;<br>
<br>
There is no do_package_qa in my <a href=3D"http://app_library_git.bb" rel=
=3D"noreferrer" target=3D"_blank">app_library_git.bb</a>, where is that<br>
do_package_qa from? how can I disable it? It sounds every easy in the<br>
document to disable it, but it did not give any clues -:(.<br>
<br>
Thank you.<br>
<br>
Kind regards,<br>
<br>
- jh<br>
On 8/6/19, Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" =
target=3D"_blank">alex.kanavin@gmail.com</a>&gt; wrote:<br>
&gt; It may help if you copy-paste the exact error you are getting, and the=
<br>
&gt; content of the directory where it happens.<br>
&gt;<br>
&gt; Alex<br>
&gt;<br>
&gt; On Tue, 6 Aug 2019 at 13:09, JH &lt;<a href=3D"mailto:jupiter.hce@gmai=
l.com" target=3D"_blank">jupiter.hce@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt;&gt; On 8/6/19, Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gm=
ail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt; You don&#39;t; package_qa is reporting real issues with your =
packaging, so<br>
&gt;&gt; you<br>
&gt;&gt; &gt; need to address them.<br>
&gt;&gt;<br>
&gt;&gt; Well, my first issue is I need to build it, the document said it c=
an<br>
&gt;&gt; be disabled, but did not say how, appreciate anyone helps how to<b=
r>
&gt;&gt; disable it.<br>
&gt;&gt;<br>
&gt;&gt; Thank you<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; Alex<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Tue, 6 Aug 2019 at 10:40, JH &lt;<a href=3D"mailto:jupiter=
.hce@gmail.com" target=3D"_blank">jupiter.hce@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; Hi,<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; According to the latest document:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &quot;Package QA checks are now performed during a new do=
_package_qa task<br>
&gt;&gt; &gt;&gt; rather than being part of the do_package task. This allow=
s more<br>
&gt;&gt; &gt;&gt; parallel execution. This change is unlikely to be an issu=
e except for<br>
&gt;&gt; &gt;&gt; highly customized recipes that disable packaging tasks th=
emselves by<br>
&gt;&gt; &gt;&gt; marking them as noexec. For those packages, you will need=
 to disable<br>
&gt;&gt; &gt;&gt; the do_package_qa task as well.&quot;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; How can I disable the do_package_qa task?<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Thank you.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Kind regards,<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; - jh<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; On 8/4/19, JH &lt;<a href=3D"mailto:jupiter.hce@gmail.com=
" target=3D"_blank">jupiter.hce@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt; Hi,<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; I was running my Yocto build fine until I had a mino=
r change to move<br>
&gt;&gt; &gt;&gt; &gt; libapplibrary.so to libapplibrry.so.${PN} and made l=
ibapplibrary.so<br>
&gt;&gt; &gt;&gt; &gt; to<br>
&gt;&gt; &gt;&gt; &gt; a symbolic link of libapplibrry.so.${PN}. Now it got=
 an error of QA<br>
&gt;&gt; &gt;&gt; &gt; issue applibrary rdepends on app-dev [dev-deps], QA =
run found fatal<br>
&gt;&gt; &gt;&gt; &gt; errors, please consider fixing them.<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Even I reverse the changes back the, it still compla=
ined the same<br>
&gt;&gt; &gt;&gt; &gt; error.<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; I don&#39;t have do_package_qa in my bb file, where =
is it from? What is<br>
&gt;&gt; &gt;&gt; &gt; that error about? How to fix it?<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Thank you.<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Kind regards,<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; - jh<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; --<br>
&gt;&gt; &gt;&gt; _______________________________________________<br>
&gt;&gt; &gt;&gt; yocto mailing list<br>
&gt;&gt; &gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blan=
k">yocto@yoctoproject.org</a><br>
&gt;&gt; &gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto"=
 rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listin=
fo/yocto</a><br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;<br>
</blockquote></div>

--00000000000028b625058f72c1a7--
