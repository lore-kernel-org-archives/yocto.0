Return-Path: <mathewkunjumontharakan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2D31E00DF0; Sun,  7 Jan 2018 23:13:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mathewkunjumontharakan[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.170 listed in list.dnswl.org]
Received: from mail-yb0-f170.google.com (mail-yb0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59693E00D92
	for <yocto@yoctoproject.org>; Sun,  7 Jan 2018 23:13:36 -0800 (PST)
Received: by mail-yb0-f170.google.com with SMTP id m6so248644ybk.9
	for <yocto@yoctoproject.org>; Sun, 07 Jan 2018 23:13:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=mpyk5FIjVgqi/AII9DcU2Gldjz24QjCw+py0lYu2i5M=;
	b=K93r5ve+CF79dM9KHB20LiEzNQ7Ns1/VekyoRASmsA7ma+qwWXPb4Ty6SPkR28DcCn
	Tkk7DZVwN+/ZYzAEXf79Ur76WRTEbWDbToEM+G9Zj3nsj72qHSt4YaHsmckTSeSWRP8x
	RDPEd/EdgigHpvxmccv6xjgCFUU3w9mkAD6xjyuAFm5bQehGltol374lhj4Vwg/NY/s3
	xMvS3siaHu9ldmeFj0JYgczJV+nd3kZJcqLDt/Gn4GkjUFaaqls0On+sHEsVbFhvT+FM
	Lnqyv5eEEFHtPjPHQS/AwFO/fDzJEfWNKjA6lQagE0xzRfwjZ5nkxAeTrxuoW4ZkVwji
	7hYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=mpyk5FIjVgqi/AII9DcU2Gldjz24QjCw+py0lYu2i5M=;
	b=MA9pnXUBjB8uNGrtQZUbpEDn6F4PmsgCu1ieLWF7iCePxlA524sDoUypb0aW4sfV9G
	Gm3lcRiobyxR+pJHv/TBp07sHsRP//zDSpw11K683YYj5VVrLDYJQqPfvJbWVSJ5zq5W
	EfrAvXOazcUHfUkS+rhDRUgYHZQuFq1wJ/4g9sRB5XVco+gnMCSbtbtdOLamSJDNPO5P
	E0Zh+kt42xNtW8LDF/XACtQAgzGq+O8/7MjFGjcZU6o7I6O22YwVzl9cqFPIcxtDfjg1
	2yy6HF9oX8pRqoZLgkWCs/y50AULLNIIPNg1q7aFT6iVesHEyPcQYnKU63AGriuH0AXB
	4BAQ==
X-Gm-Message-State: AKGB3mLD47DuFjbPJJ3klmcqpfJlkDpPSXaWUh8ucVqrv1L5uhnNJBQO
	8VSYx5stCs5ZwjOgAJf4bKttptXPe5WFENB3A3A=
X-Google-Smtp-Source: ACJfBosV0gnFs0Ixd5ZbifeHu6xvzy+t5x4yI3elcPB0dD9KWP4YWdQarNrh0iEOo61bzkGlCOJLjlZGephj+s1mfLk=
X-Received: by 10.37.132.130 with SMTP id v2mr9837595ybk.452.1515395616399;
	Sun, 07 Jan 2018 23:13:36 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.231.197 with HTTP; Sun, 7 Jan 2018 23:13:36 -0800 (PST)
In-Reply-To: <CAOT_U5Yt8XpFir0TTXDPTqLA8Z20WeRFAjw=JNOo7O6w7bRUaQ@mail.gmail.com>
References: <CA+JFif35T7yDxkeX3OAjjw079fxWOVqH4wnet8_GwNM3_9LRSw@mail.gmail.com>
	<CAOT_U5Yt8XpFir0TTXDPTqLA8Z20WeRFAjw=JNOo7O6w7bRUaQ@mail.gmail.com>
From: Mathew K Tharakan <mathewkunjumontharakan@gmail.com>
Date: Mon, 8 Jan 2018 12:43:36 +0530
Message-ID: <CA+JFif17HGmrSTKYESP1hnVJAwX7kZwmA5K8-irFv7NHSarLUw@mail.gmail.com>
To: Alan Martinovic <alan.martinovic@senic.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Reg: Yocto python library updation
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
X-List-Received-Date: Mon, 08 Jan 2018 07:13:38 -0000
Content-Type: multipart/alternative; boundary="089e082c14f068e80b05623e893e"

--089e082c14f068e80b05623e893e
Content-Type: text/plain; charset="UTF-8"

No


On Mon, Jan 8, 2018 at 12:40 PM, Alan Martinovic <alan.martinovic@senic.com>
wrote:

> Have you added them also to the image?
>
> On Mon, Jan 8, 2018 at 7:14 AM, Mathew K Tharakan
> <mathewkunjumontharakan@gmail.com> wrote:
> > Hi,
> >
> > I'm working with iMX6ULL yocto (version 2.1)project. I would like to add
> > following python libraries along with the image. I tried adding .bb file
> but
> > the packages are not getting integrated. Please reply some possible ways
> to
> > solve this.
> >
> > Python libraries to be added,
> >
> > SciPy - 0.18.1
> > NumPy - 1.11.1
> > Pandas - 0.18.1
> > Scikit-learn - 0.17.1
> > math - 0.19
> > Memory-profiler - 0.45
> >
> > Thanks and Regards
> > Mathew. K. Tharakan
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--089e082c14f068e80b05623e893e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">No<br><br></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Mon, Jan 8, 2018 at 12:40 PM, Alan Martinovic <span dir=
=3D"ltr">&lt;<a href=3D"mailto:alan.martinovic@senic.com" target=3D"_blank"=
>alan.martinovic@senic.com</a>&gt;</span> wrote:<br><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex">Have you added them also to the image?<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On Mon, Jan 8, 2018 at 7:14 AM, Mathew K Tharakan<br>
&lt;<a href=3D"mailto:mathewkunjumontharakan@gmail.com">mathewkunjumonthara=
kan@gmail.<wbr>com</a>&gt; wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; I&#39;m working with iMX6ULL yocto (version 2.1)project. I would like =
to add<br>
&gt; following python libraries along with the image. I tried adding .bb fi=
le but<br>
&gt; the packages are not getting integrated. Please reply some possible wa=
ys to<br>
&gt; solve this.<br>
&gt;<br>
&gt; Python libraries to be added,<br>
&gt;<br>
&gt; SciPy - 0.18.1<br>
&gt; NumPy - 1.11.1<br>
&gt; Pandas - 0.18.1<br>
&gt; Scikit-learn - 0.17.1<br>
&gt; math - 0.19<br>
&gt; Memory-profiler - 0.45<br>
&gt;<br>
&gt; Thanks and Regards<br>
&gt; Mathew. K. Tharakan<br>
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
</font></span></blockquote></div><br></div>

--089e082c14f068e80b05623e893e--
