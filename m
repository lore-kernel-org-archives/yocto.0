Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D19B9E00B52; Wed, 23 Sep 2015 12:33:27 -0700 (PDT)
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
	*      [209.85.160.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f173.google.com (mail-yk0-f173.google.com
	[209.85.160.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D938E00AB0
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 12:33:22 -0700 (PDT)
Received: by ykft14 with SMTP id t14so52415385ykf.0
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 12:33:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=hy4HNqmCZr475L2EB77/cvcZ3eU83PFY2q9NaR0/ZlY=;
	b=L3xZHetBC/qhuQBGFyZMNQr2eU23RQhKHvlFSxcc13nYGQNRUhVsCPuOiXv1DNcxMV
	1ocJfhaIh7SkfDaXCgUIvI3z295i5/+4E9eImX6nqmRUl+zqpf5JI0A7ihr5OwkoVChF
	wa/j+CYjCANMxRa0DP8qArUHHeOuCKOK1uw88D/OFmBDcAgEC+AInSZB5MbxI7RocC5y
	xdadE2FiEjmTen/9GO4UjxRCXZbJBN1WLEP9yCPsFdKLADAT66IZe9dTMlB0sn5Ba5se
	1JZdR6tB7uQHwYQT30/eltOZbc4DqDznb3lnK4lV6Xwu1scXNCEQ2fuQgwXPJa0c/lWo
	lwLQ==
MIME-Version: 1.0
X-Received: by 10.129.29.11 with SMTP id d11mr23752913ywd.58.1443036801712;
	Wed, 23 Sep 2015 12:33:21 -0700 (PDT)
Received: by 10.129.148.199 with HTTP; Wed, 23 Sep 2015 12:33:21 -0700 (PDT)
In-Reply-To: <20150923132707.4b1dfc77@seebs-worktop>
References: <20150923132707.4b1dfc77@seebs-worktop>
Date: Wed, 23 Sep 2015 16:33:21 -0300
Message-ID: <CAF3SDA5EL7FCf5pp9Bj2i3iR8Q8esFGGn9m31NrknxGOwrWg9g@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: Peter Seebach <peter.seebach@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-mingw] gcc 5.2 partial patches
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
X-List-Received-Date: Wed, 23 Sep 2015 19:33:27 -0000
Content-Type: multipart/alternative; boundary=001a11429b82f6cc6d05206f2fe2

--001a11429b82f6cc6d05206f2fe2
Content-Type: text/plain; charset=UTF-8

I'm really curious, what that % means on recipe names?

Cheers,
- dhs

2015-09-23 15:27 GMT-03:00 Peter Seebach <peter.seebach@windriver.com>:

> So I've got patches for meta-mingw which make it fail in an interesting way
> instead of in a boring way.
>
> http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=seebs/gcc52gw
>
> With these, we get past all the obvious not-even-applying, and blow up
> because one of the mingw headers complains that it can't be compiled except
> for WIN32 targets. Have not further explored yet.
>
> -s
> --
> Listen, get this.  Nobody with a good compiler needs to be justified.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--001a11429b82f6cc6d05206f2fe2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>I&#39;m really curious, what that % means on rec=
ipe names?<br><br></div>Cheers,<br></div>- dhs<br></div><div class=3D"gmail=
_extra"><br><div class=3D"gmail_quote">2015-09-23 15:27 GMT-03:00 Peter See=
bach <span dir=3D"ltr">&lt;<a href=3D"mailto:peter.seebach@windriver.com" t=
arget=3D"_blank">peter.seebach@windriver.com</a>&gt;</span>:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex">So I&#39;ve got patches for meta-mingw which make it fa=
il in an interesting way<br>
instead of in a boring way.<br>
<br>
<a href=3D"http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=3Dse=
ebs/gcc52gw" rel=3D"noreferrer" target=3D"_blank">http://git.yoctoproject.o=
rg/cgit.cgi/poky-contrib/commit/?h=3Dseebs/gcc52gw</a><br>
<br>
With these, we get past all the obvious not-even-applying, and blow up<br>
because one of the mingw headers complains that it can&#39;t be compiled ex=
cept<br>
for WIN32 targets. Have not further explored yet.<br>
<br>
-s<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
Listen, get this.=C2=A0 Nobody with a good compiler needs to be justified.<=
br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div clas=
s=3D"gmail_signature"><div style=3D"text-align:right"><i>&quot;Do or do not=
. There is no try&quot;</i><br><i>=C2=A0 </i><i><b>Yoda Master</b></i><br><=
/div></div>
</div>

--001a11429b82f6cc6d05206f2fe2--
