Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C467FE008D4; Wed, 22 Jul 2015 18:03:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f45.google.com (mail-qg0-f45.google.com
	[209.85.192.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 375B4E00474
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 18:03:14 -0700 (PDT)
Received: by qgii95 with SMTP id i95so80159110qgi.2
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 18:03:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=K0TLEO7zUuuHbb3fjzlrcurdbU9gTMUMRdABFXTPYFo=;
	b=GQXvDOyXeRnl85SvdCqIdsVfuIu/najWN7HryqyW/eTjVqmSi4Z+H54cFNXJYnEYzk
	kvqYgQnegCKSDU4hgpBDQ5hzoDHhvmtE0t/m6vKlHBeaotL8XJcsAca2vgbqFWqSM0Li
	V9NpPO8PUqGQWHvze3pR3nHOfnwf/R8P2ZZxwOhAGoWjCVfNIGtW2EvCi+2IEHbGAoBW
	DQePiy45uCCUkeArLuWJkFvWgUF91sclH5KXo3iiPi3FrLvnF5uGzeF6KXaL+1QG16S1
	PccQ88qqQr9vl57Dkxh8cjBwPtLgUgS2gFwoYhoYoPsG29pUejI9acNT/aqJkWokRGqV
	op/g==
MIME-Version: 1.0
X-Received: by 10.140.239.9 with SMTP id k9mr8561036qhc.38.1437613394330; Wed,
	22 Jul 2015 18:03:14 -0700 (PDT)
Received: by 10.96.179.74 with HTTP; Wed, 22 Jul 2015 18:03:14 -0700 (PDT)
Received: by 10.96.179.74 with HTTP; Wed, 22 Jul 2015 18:03:14 -0700 (PDT)
In-Reply-To: <CAF3SDA5-QQ3me8ETP=nP5irdf3nDtncFQLT0PtyzoJb3SCgMjQ@mail.gmail.com>
References: <5B6A9B05AFA9AC4FB94345D083806F144B2BF945@USSTLZ-PMSG016.emrsn.org>
	<CAF3SDA5-QQ3me8ETP=nP5irdf3nDtncFQLT0PtyzoJb3SCgMjQ@mail.gmail.com>
Date: Wed, 22 Jul 2015 22:03:14 -0300
Message-ID: <CAF3SDA6ZXCK=GAGpPif7gfyNcKzUkwe9ztsdMdMM9Wi+3kBGtw@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: Gamma.Dean@emerson.com
Cc: yocto@yoctoproject.org
Subject: Re: Exporting kernel header from patch
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
X-List-Received-Date: Thu, 23 Jul 2015 01:03:15 -0000
Content-Type: multipart/alternative; boundary=001a113593a6b18dcb051b80737f

--001a113593a6b18dcb051b80737f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Just a guess,

Did you have INHERIT +=3D "rm_work" in your local.conf?

Cheers,
- dhs
Em 22/07/2015 18:36, <Gamma.Dean@emerson.com> escreveu:

 When using a shared sstate cache which has the previously built kernel it
appears that STAGING_KERNEL_DIR does not get populated =E2=80=93 in my case=
 there
is no tmp/work-shared directory at all.  If I have modified the user space
app to look there for a header is there some dependency I can add that will
force STAGING_KERNEL_DIR to get built?



If not, perhaps the best answer is your other proposed method of just
adding the header to an additional path in sysroot.

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

--001a113593a6b18dcb051b80737f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Just a guess,</p>
<p dir=3D"ltr">Did you have INHERIT +=3D &quot;rm_work&quot; in your local.=
conf?</p>
<p dir=3D"ltr">Cheers,<br>
- dhs</p>
<div class=3D"gmail_quote">Em 22/07/2015 18:36,  &lt;<a href=3D"mailto:Gamm=
a.Dean@emerson.com">Gamma.Dean@emerson.com</a>&gt; escreveu:<br type=3D"att=
ribution"><blockquote class=3D"quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal">When using a shared sstate cache which has the previ=
ously built kernel it appears that STAGING_KERNEL_DIR does not get populate=
d =E2=80=93 in my case there is no tmp/work-shared directory at all.=C2=A0 =
If I have modified the user space app to look there
 for a header is there some dependency I can add that will force STAGING_KE=
RNEL_DIR to get built?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">If not, perhaps the best answer is your other propos=
ed method of just adding the header to an additional path in sysroot.<u></u=
><u></u></p>
</div>
</div>

<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div>

--001a113593a6b18dcb051b80737f--
