Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6266CE009CA; Wed, 16 May 2018 09:12:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f175.google.com (mail-ot0-f175.google.com
	[74.125.82.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C3BEE005A9
	for <yocto@yoctoproject.org>; Wed, 16 May 2018 09:12:03 -0700 (PDT)
Received: by mail-ot0-f175.google.com with SMTP id l13-v6so1543807otk.9
	for <yocto@yoctoproject.org>; Wed, 16 May 2018 09:12:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=5cWli5+/4faISFm4jwbUKH6g3Uh5SrwS/VhiiDY4cWQ=;
	b=hTdxN9Ehoy3AAeQlS23pS3xpu4pKaij+QO71KmEZtmUz12J6Z68voazVAeQxqkcie6
	ka7iWrv+7aaLFkrPI0yim1kKbovpCp5e574h2EbgvF5wCg8xCXg1+RxujGyYk8wUDAAo
	P8I1hlDEuBlvD0QB9y5X7pG7ZOlPXlHMLXwPaW5ndww69A23iM6g4z/LS5vcG5NLFJ3z
	IOr/0IIi15toN/dou4secYTgeRN21jTmjUI6r7PQlmc97Zg+dQXeMseKtnuFYpPE5daV
	FXBz3uEjnZp+5HvRPsyhh7/yJUaeE3ykt6Sa/wjmPDa+Q4LgJAr8LCEFgLCIP97oXVjL
	EltA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=5cWli5+/4faISFm4jwbUKH6g3Uh5SrwS/VhiiDY4cWQ=;
	b=qWMpsn2GVMQl7Q1f3O36ZtbXQ64FjVriovoaRnPulditfKVr4yX5DvT074y1vfQg8a
	y41SY8y6U2HbnTxzqmOzCN/NifiwveHzk19OfAJQrPheowvxUcru8tSXtwmbAu1BTyBx
	RJxfHGjQb0DZhMpkAhJQw+KHnmmyU2c+2ff47lqn5lF6sRfV2lHNN2WykbS2dv4H2gSX
	X8fJIr6Pa7ZxpiSNc71m/u0wTR/KJO4j5Ad1010VlfDi28egTI7C1DSkJYwewmzdR7Hd
	CXZO6drMVMoxuN9neKZRrf8rm4YqozQ8sI8/JjIsSFb2iHDkTB6R2h3A/sbiM2/7PYKC
	i4EQ==
X-Gm-Message-State: ALKqPweLZT1G/tBInF5bM8NvgX0spaV2LVY6tkecjR3RQgsFbfb4uHar
	4UusDq3lAmChy9upW6secMONO8b6KdMFjbfXAFM=
X-Google-Smtp-Source: AB8JxZqOpmJt4GpjuckTSNYEseREElWT3W4xGiwM+FKM3kEDwzxkmOFIrTpyZD76xJYtp3OTmhVl4SYEqfL5BrgGWPY=
X-Received: by 2002:a9d:7344:: with SMTP id
	l4-v6mr1117915otk.227.1526487123401; 
	Wed, 16 May 2018 09:12:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:7009:0:0:0:0:0 with HTTP; Wed, 16 May 2018 09:12:02
	-0700 (PDT)
In-Reply-To: <CAOT_U5ZCvFt1v3z5zbTzW4Uu-cxWLE-s+YrF3rLVOeq+H-vLqg@mail.gmail.com>
References: <2170125.tjWsNxb8P6@tomcat>
	<CAOT_U5ZCvFt1v3z5zbTzW4Uu-cxWLE-s+YrF3rLVOeq+H-vLqg@mail.gmail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Wed, 16 May 2018 09:12:02 -0700
Message-ID: <CAFNP8OskcC=9uaVmN4Q=8hJ=b75LqrWpxnHav-w1bH=v0R7H1Q@mail.gmail.com>
To: Alan Martinovic <alan.martinovic@senic.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: How to create img file from a working machine
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
X-List-Received-Date: Wed, 16 May 2018 16:12:05 -0000
Content-Type: multipart/alternative; boundary="000000000000be9faa056c54faf4"

--000000000000be9faa056c54faf4
Content-Type: text/plain; charset="UTF-8"

Yes - that is a good place to look.  The topic is from the Yocto Project
Development Tasks Manual (
https://www.yoctoproject.org/docs/2.5/dev-manual/dev-manual.html#creating-partitioned-images-using-wic
).

Scott

On Wed, May 16, 2018 at 6:27 AM, Alan Martinovic <alan.martinovic@senic.com>
wrote:

> Hey,
> perhaps this will help you:
> https://www.yoctoproject.org/docs/2.4/mega-manual/mega-
> manual.html#creating-partitioned-images-using-wic
>
> On Wed, May 16, 2018 at 8:49 AM, Denis <info@denisgottardello.it> wrote:
> >
> >
> > Hi. This is my first experience with Yocto.
> >
> > After having create a working machine this is the machine file list
> >
> >
> >
> > bzImage
> > bzImage--4.14.30+git0+ea9330894e_74f6cd2b69-r0-
> qemux86-20180515055407.bin
> > bzImage-qemux86.bin
> > core-image-minimal-qemux86-20180515055407.testdata.json
> > core-image-minimal-qemux86-20180515141056.qemuboot.conf
> > core-image-minimal-qemux86-20180515141056.rootfs.ext4
> > core-image-minimal-qemux86-20180515141056.rootfs.manifest
> > core-image-minimal-qemux86-20180515141056.rootfs.tar.bz2
> > core-image-minimal-qemux86-20180515141056.testdata.json
> > core-image-minimal-qemux86.ext4
> > core-image-minimal-qemux86.manifest
> > core-image-minimal-qemux86.qemuboot.conf
> > core-image-minimal-qemux86.tar.bz2
> > core-image-minimal-qemux86.testdata.json
> > core-image-sato-qemux86-20180515175948.qemuboot.conf
> > core-image-sato-qemux86-20180515175948.rootfs.ext4
> > core-image-sato-qemux86-20180515175948.rootfs.manifest
> > core-image-sato-qemux86-20180515175948.rootfs.tar.bz2
> > core-image-sato-qemux86-20180515175948.testdata.json
> > core-image-sato-qemux86.ext4
> > core-image-sato-qemux86.manifest
> > core-image-sato-qemux86.qemuboot.conf
> > core-image-sato-qemux86.tar.bz2
> > core-image-sato-qemux86.testdata.json
> > modules--4.14.30+git0+ea9330894e_74f6cd2b69-r0-
> qemux86-20180515055407.tgz
> > modules-qemux86.tgz
> >
> >
> >
> > Now how can I create a img file? I have searched on the web but I have
> found
> > nothing.
> >
> >
> >
> > Regards.
> >
> >
> >
> >
> > --
> >
> > +39.347.4070897
> >
> > www.labcsp.com
> >
> > www.denisgottardello.it
> >
> > GMT+1
> >
> > Skype: mrdebug
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000be9faa056c54faf4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Yes - that is a good place to look.=C2=A0 The topic i=
s from the Yocto Project Development Tasks Manual (<a href=3D"https://www.y=
octoproject.org/docs/2.5/dev-manual/dev-manual.html#creating-partitioned-im=
ages-using-wic">https://www.yoctoproject.org/docs/2.5/dev-manual/dev-manual=
.html#creating-partitioned-images-using-wic</a>).</div><div><br></div><div>=
Scott<br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Wed, May 16, 2018 at 6:27 AM, Alan Martinovic <span dir=3D"ltr">&lt;=
<a href=3D"mailto:alan.martinovic@senic.com" target=3D"_blank">alan.martino=
vic@senic.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hey,<=
br>
perhaps this will help you:<br>
<a href=3D"https://www.yoctoproject.org/docs/2.4/mega-manual/mega-manual.ht=
ml#creating-partitioned-images-using-wic" rel=3D"noreferrer" target=3D"_bla=
nk">https://www.yoctoproject.org/<wbr>docs/2.4/mega-manual/mega-<wbr>manual=
.html#creating-<wbr>partitioned-images-using-wic</a><br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On Wed, May 16, 2018 at 8:49 AM, Denis &lt;<a href=3D"mailto:info@denisgott=
ardello.it">info@denisgottardello.it</a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt; Hi. This is my first experience with Yocto.<br>
&gt;<br>
&gt; After having create a working machine this is the machine file list<br=
>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; bzImage<br>
&gt; bzImage--4.14.30+git0+<wbr>ea9330894e_74f6cd2b69-r0-<wbr>qemux86-20180=
515055407.bin<br>
&gt; bzImage-qemux86.bin<br>
&gt; core-image-minimal-qemux86-<wbr>20180515055407.testdata.json<br>
&gt; core-image-minimal-qemux86-<wbr>20180515141056.qemuboot.conf<br>
&gt; core-image-minimal-qemux86-<wbr>20180515141056.rootfs.ext4<br>
&gt; core-image-minimal-qemux86-<wbr>20180515141056.rootfs.manifest<br>
&gt; core-image-minimal-qemux86-<wbr>20180515141056.rootfs.tar.bz2<br>
&gt; core-image-minimal-qemux86-<wbr>20180515141056.testdata.json<br>
&gt; core-image-minimal-qemux86.<wbr>ext4<br>
&gt; core-image-minimal-qemux86.<wbr>manifest<br>
&gt; core-image-minimal-qemux86.<wbr>qemuboot.conf<br>
&gt; core-image-minimal-qemux86.<wbr>tar.bz2<br>
&gt; core-image-minimal-qemux86.<wbr>testdata.json<br>
&gt; core-image-sato-qemux86-<wbr>20180515175948.qemuboot.conf<br>
&gt; core-image-sato-qemux86-<wbr>20180515175948.rootfs.ext4<br>
&gt; core-image-sato-qemux86-<wbr>20180515175948.rootfs.manifest<br>
&gt; core-image-sato-qemux86-<wbr>20180515175948.rootfs.tar.bz2<br>
&gt; core-image-sato-qemux86-<wbr>20180515175948.testdata.json<br>
&gt; core-image-sato-qemux86.ext4<br>
&gt; core-image-sato-qemux86.<wbr>manifest<br>
&gt; core-image-sato-qemux86.<wbr>qemuboot.conf<br>
&gt; core-image-sato-qemux86.tar.<wbr>bz2<br>
&gt; core-image-sato-qemux86.<wbr>testdata.json<br>
&gt; modules--4.14.30+git0+<wbr>ea9330894e_74f6cd2b69-r0-<wbr>qemux86-20180=
515055407.tgz<br>
&gt; modules-qemux86.tgz<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Now how can I create a img file? I have searched on the web but I have=
 found<br>
&gt; nothing.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Regards.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt;<br>
&gt; +39.347.4070897<br>
&gt;<br>
&gt; <a href=3D"http://www.labcsp.com" rel=3D"noreferrer" target=3D"_blank"=
>www.labcsp.com</a><br>
&gt;<br>
&gt; <a href=3D"http://www.denisgottardello.it" rel=3D"noreferrer" target=
=3D"_blank">www.denisgottardello.it</a><br>
&gt;<br>
&gt; GMT+1<br>
&gt;<br>
&gt; Skype: mrdebug<br>
&gt;<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
&gt;<br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--000000000000be9faa056c54faf4--
