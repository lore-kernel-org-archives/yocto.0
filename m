Return-Path: <ashish.emailaddress@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47144E00D5D; Mon, 13 May 2019 02:57:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ashish.emailaddress[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.65 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
	[209.85.166.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4838E00B8F;
	Mon, 13 May 2019 02:57:41 -0700 (PDT)
Received: by mail-io1-f65.google.com with SMTP id m7so9512997ioa.6;
	Mon, 13 May 2019 02:57:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Pml1JulxJKDYmnrkKqCRe0GrIsDpZw5e+LEkrVnUI7k=;
	b=Ie9DxaAk8XMDoqMBKZXAdXewthxeTk6A8B20jLLhrUO39aciiA8c0qzSUf0QqqeuAe
	60XpPhhA4UmsLrX8+rgdI/I0Uo61lGa6TlTijRDpD845buCYiUcJTKUsZcJBn8aUaoA3
	dRiI44DZ4+Mgwt7RwAlKtA8Hd5Dx4MQiTPu0SaIx7yNeMkwj46NzbmW0Kj4aphNd31+U
	OAMJ+uYRrsG5YDSuQU8d6LIaHVPyenwRgIUD6ObIA5KViKuKV53THWn7ikzENvq7CU9h
	VEQ8CXDCySVUEEf2IvjkrR1o3JJC/bfz5BmA4zaHAR72Xp0jCbJc81hdP+VVz2kXL4W8
	b4xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Pml1JulxJKDYmnrkKqCRe0GrIsDpZw5e+LEkrVnUI7k=;
	b=MaGa4Ri9F79/KnQrAs8jH2Gg51opgvum9HYCSE9OdjjAymvkceqtjIp75BrgSPoi/w
	6aL3gc/w0SF+MSZk9d7LmjMdnJCL7k0Rmvmb74QD3JDALtCrW1Uz+eNitGwqAT6GrGdl
	QmULsg9hBY3SSBnhbuUOEluSInj5MSeqdcKiK5M83u2sH4Nk5wQHcgzX6njfuBc57J49
	Bt4TImJXW2HW53yS4kLwalYFailKOGhSgcigrb9IVmK3fXggnXqVqm7GEJ1WYWSs8YQt
	8Hc0lIHM9VFMtld3be2WftcmOspJVVAfed5Lyb1lHMdN6oVp6wHb0775XiNXFROfqtfJ
	zNaA==
X-Gm-Message-State: APjAAAXLLrVFa54LIOiAMyBsbWj12VeerPnaDxnfgULDo4cTYEiVIt+2
	VB33IHy1c/gN8lCZDs/bOWmNGvDaiD7KwTontTg=
X-Google-Smtp-Source: APXvYqw7BFfQh0wm6lla7FkUTrHbetw+uiZ8L8A5m4qsBK2tCZMDbgV2m4C4j0BrKpTVSX2UqdAU1bPATZTYAdM0Nz4=
X-Received: by 2002:a6b:c947:: with SMTP id z68mr13835865iof.27.1557741461236; 
	Mon, 13 May 2019 02:57:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAOe0dAUYH83APXjXi8FiT3492zi0EVcsT4MfT69LJO+nJ5er8w@mail.gmail.com>
	<4823d30b2edfc0eea9fcdec81f68e6e8f113f015.camel@intel.com>
	<CAOe0dAVUf0hJDze4mRbNp-wGCpKMJs-5FQP7rTwiUmopwBQcdw@mail.gmail.com>
	<4a8c7bbf-e0e9-dd0b-af5f-ed3ff6df5562@gmail.com>
In-Reply-To: <4a8c7bbf-e0e9-dd0b-af5f-ed3ff6df5562@gmail.com>
From: AshishKumar Mishra <ashish.emailaddress@gmail.com>
Date: Mon, 13 May 2019 15:27:30 +0530
Message-ID: <CAOe0dAXhkzhQZO2zOPtM4s5pO-t9VFOPsWt_h-5P+4rT=Hzhog@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto-bsp@yoctoproject.org" <yocto-bsp@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"linux-yocto@yoctoproject.org" <linux-yocto@yoctoproject.org>
Subject: Re: Timestamp error between zImage & uname-a [ Yocto-2.6.1 + Qemux86 ]
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
X-List-Received-Date: Mon, 13 May 2019 09:57:42 -0000
Content-Type: multipart/alternative; boundary="00000000000072ef660588c1f2a7"

--00000000000072ef660588c1f2a7
Content-Type: text/plain; charset="UTF-8"

Yes .
But this difference we expect in some minutes.


But what i am observing is ( attached snapshot ) :-
1) First Compilation around ( 4:10)
   bitbake cleanall + bitbake core-image-minimal
         uname-a                                            : Time shown is
4:24
         timestamp of files in deploy/images/    : Time shown is around 4:30


2) Second Compilation around ( 5:00)
   bitbake -c menuconfig virtual/kernel + bitbake -C deploy linux-yocto
         uname-a                                            : Time shown is
4:24
         timestamp of files in deploy/images/    : Time shown is around 5:25


2) Second Compilation around ( 5:00)
   bitbake -c menuconfig virtual/kernel + bitbake -C deploy linux-yocto
         uname-a                                            : Time shown is
4:24
         timestamp of files in deploy/images/    : Time shown is around 5:25

3) Third Compilation around ( 5:45)
   bitbake -c menuconfig virtual/kernel + bitbake -C deploy linux-yocto
         uname-a                                            : Time shown is
4:24
         timestamp of files in deploy/images/    : Time shown is around 6:05



So , time shown by "uname -a" is retains older value even though
i had compiled the linux multiple times .

Currently , only way i am able to bypass this behavior is to do bitbake -c
cleanall linux-yocto
before every compilation.

Thanks
Ashish
















On Fri, May 10, 2019 at 10:23 PM Khem Raj <raj.khem@gmail.com> wrote:

>
>
> On 5/10/19 12:10 AM, AshishKumar Mishra wrote:
> > HI Anuj ,
> >
> > I was building minimal image using $ bitbake core-image-minimal haven't
> > tried full-cmdline.
> >
> > Not able to track why kernel "uname" has older  timestamp rather than
> > the one from build/deploy/image
> > as seen by "ls -al <build/deploy/image>
> >
> > Am i missing any command or sequence here
> >
> >
>
> uname will show the time when it was built, which might be different
> time then the one when it was copied over to deploy.
>

--00000000000072ef660588c1f2a7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Yes . <br>But this difference we expect i=
n some minutes.<br><br><br>But what i am observing is ( attached snapshot )=
 :-<br>1) First Compilation around ( 4:10)<br>=C2=A0=C2=A0 bitbake cleanall=
 + bitbake core-image-minimal <br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 uname-a=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : Time shown is 4:24<br=
>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 timestamp of files in dep=
loy/images/=C2=A0=C2=A0=C2=A0 : Time shown is around 4:30<br><br><br>2) Sec=
ond Compilation around ( 5:00)<br>=C2=A0=C2=A0 bitbake -c menuconfig virtua=
l/kernel + bitbake -C deploy linux-yocto<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 uname-a=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : Time shown i=
s 4:24<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 timestamp of fil=
es in deploy/images/=C2=A0=C2=A0=C2=A0 : Time shown is around 5:25<br><br><=
br>2) Second Compilation around ( 5:00)<br>=C2=A0=C2=A0 bitbake -c menuconf=
ig virtual/kernel + bitbake -C deploy linux-yocto<br>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 uname-a=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : Tim=
e shown is 4:24<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 timesta=
mp of files in deploy/images/=C2=A0=C2=A0=C2=A0 : Time shown is around 5:25=
<br><br>3) Third Compilation around ( 5:45)<br>=C2=A0=C2=A0 bitbake -c menu=
config virtual/kernel + bitbake -C deploy linux-yocto<br>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uname-a=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : =
Time shown is 4:24<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 time=
stamp of files in deploy/images/=C2=A0=C2=A0=C2=A0 : Time shown is around 6=
:05<br><br><br><br>So , time shown by &quot;uname -a&quot; is retains older=
 value even though <br>i had compiled the linux multiple times .<br><br>Cur=
rently , only way i am able to bypass this behavior is to do bitbake -c cle=
anall linux-yocto <br></div><div dir=3D"ltr">before every compilation.<br><=
/div><div dir=3D"ltr"><br>Thanks <br>Ashish<br><br><div><br></div><div><br>=
</div><div><br></div><div><br></div><div><br></div><div><br></div><div><br>=
</div><div><br></div><div><br></div><div><br></div><div><br></div><div><br>=
</div><div><br></div><div><br></div></div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 10, 2019 at 10:23 PM =
Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
On 5/10/19 12:10 AM, AshishKumar Mishra wrote:<br>
&gt; HI Anuj ,<br>
&gt; <br>
&gt; I was building minimal image using $ bitbake core-image-minimal haven&=
#39;t <br>
&gt; tried full-cmdline.<br>
&gt; <br>
&gt; Not able to track why kernel &quot;uname&quot; has older=C2=A0 timesta=
mp rather than <br>
&gt; the one from build/deploy/image<br>
&gt; as seen by &quot;ls -al &lt;build/deploy/image&gt;<br>
&gt; <br>
&gt; Am i missing any command or sequence here<br>
&gt; <br>
&gt; <br>
<br>
uname will show the time when it was built, which might be different <br>
time then the one when it was copied over to deploy.<br>
</blockquote></div>

--00000000000072ef660588c1f2a7--
