Return-Path: <daniel.wenninger92@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C59AAE00C7D; Thu, 27 Jun 2019 00:53:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (daniel.wenninger92[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.53 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com
	[209.85.210.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0694CE00C37
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2019 00:53:53 -0700 (PDT)
Received: by mail-ot1-f53.google.com with SMTP id z23so1300529ote.13
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2019 00:53:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=FdUUmR3irMHBxWpetGp0Gl0MhxoiP7hwYQa/3bfHHw8=;
	b=QKJjaG3cVcpTm4j7jCJVhG6AcqTZ+4KLEw+a/vPimWMk8E5aP1jsugTv4aN3hUxSIb
	vBSxZ/CWqppfXQ2R7/BMDnbbkUI2wSFJsH7y/RQwBPUsh5WQpiPMAnMnWI8Tg3Oi+pS/
	bRvCqll9+hVlkbhvOi6xemmPiu0Hx7T9z5SoylsCaVT/Ykbz8htxf0DG1wAcnog+o0Oh
	eBmGkmc8JejRqFnEaS43RNTDxSP3TcqaoMezqoHVNc7ovCChKKXiBLT1v4Df9rVMhfrE
	WGiJvLKD0dYUw/IgnGA4mCwZt1BqMBUjEfNV+SDuL+NHcibtnOfLiJKtOlS9Ae+54Q4v
	8XNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=FdUUmR3irMHBxWpetGp0Gl0MhxoiP7hwYQa/3bfHHw8=;
	b=tDeAf9pNOO1uD0ft1MIRNjjJJpLQmufFWezlES0aTLTytWg5543zCccpiVwCYYNBSb
	Kn/XXSPFlowQUfow1SSkMRS7iyzz8EZi2GNX3EDLmCZHjxIcaJW+XXA3T8PSy5TOLoFH
	fIIQdTVqA/ApfEEoR15iaXX6CxJHMFYjF9Fvib7VQ9CszZ3yrBanQo192oZh7XkIcMuN
	Ro2PcomCJx9q876cUvx/pDysPC+sFMWoRAnn4QCJJ64rVlaW+e/B0lJtL/NAvPqBA+Mx
	DDvxRAjVwmaXYGpJiITC/pMtXzMDzd3a49iGqyyT+DDFeu/Quby81/DK9vEaj1cfZ3JB
	6rcw==
X-Gm-Message-State: APjAAAWPgLlWjTVgmVT/lEvhEsCl8vori9YwCDlszPdqLgfcwb+LnwSO
	Ag263dFugiUdg0yMOf6/9mYE9g5qRShaGh9c6zXbAo7h
X-Google-Smtp-Source: APXvYqyY3EYmIlLib0VicKgdhCbQpxJYcTpJl3M7Lr5ksgsN6rVkB6HLy7ztPBQlOUPI7xDK+67daRQOMN0oM/NfkVQ=
X-Received: by 2002:a05:6830:1596:: with SMTP id
	i22mr2241331otr.93.1561622033376; 
	Thu, 27 Jun 2019 00:53:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAEmXcAxcyTEv0tqmGrT9RyFch2ZxZWpAti5ssnh0+P0zTR9tqQ@mail.gmail.com>
	<CAJTo0LY4vYE1SZo3Hp7mUeyiXvhfY67uhx+2+ZgwM9wBjU9ZRw@mail.gmail.com>
In-Reply-To: <CAJTo0LY4vYE1SZo3Hp7mUeyiXvhfY67uhx+2+ZgwM9wBjU9ZRw@mail.gmail.com>
From: danwe <daniel.wenninger92@gmail.com>
Date: Thu, 27 Jun 2019 09:53:43 +0200
Message-ID: <CAEmXcAwD9J=XzU87Rv9NOa5bXg1oL_F2XHR0n_i4yHxtjLmA8w@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>, yocto@yoctoproject.org
Subject: Re: bitbak command: No recipe available for
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
X-List-Received-Date: Thu, 27 Jun 2019 07:53:54 -0000
Content-Type: multipart/alternative; boundary="00000000000092b492058c49767d"

--00000000000092b492058c49767d
Content-Type: text/plain; charset="UTF-8"

Hi.
Thank you. Could you tell me how I can ensure that these are on the same
branch? There is just one meta-bbb I can download...

Am Do., 27. Juni 2019 um 09:37 Uhr schrieb Burton, Ross <
ross.burton@intel.com>:

> The problem is that oe-core and meta-bbb are different releases so the
> versions don't match up.  Ensure that oe-core and meta-bbb are on the
> same branch.
>
> Ross
>
> On Thu, 27 Jun 2019 at 07:33, danwe <daniel.wenninger92@gmail.com> wrote:
> >
> > while using the command:
> > daniel@daniel-VirtualBox:~/bbb$ MACHINE=beaglebone bitbake
> core-immage-full cmdline I get the following ouput:
> > ````
> >
> > Loading cache: 100% |############################################| Time:
> 0:00:03
> >
> > Loaded 1358 entries from dependency cache.
> >
> > Parsing recipes: 100% |##########################################| Time:
> 0:00:12
> >
> > Parsing of 832 .bb files complete (829 cached, 3 parsed). 1361 targets,
> 65 skipped, 0 masked, 0 errors.
> >
> > ERROR: No recipes available for:
> >
> >   /home/daniel/meta-bbb/recipes-connectivity/openssh/openssh_7.%.bbappend
> >
> >   /home/daniel/meta-bbb/recipes-qt/qt5/qtbase_git.bbappend
> >
> >   /home/daniel/meta-bbb/recipes-support/ntp/ntp_4.2.%.bbappend
> >
> >
> >
> > Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> >
> > ````
> >
> > How can I solve this?
> >
> > Thanks.
> >
> > Daniel
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000092b492058c49767d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi.<div>Thank you. Could you tell me how I can ensure that=
 these are on the same branch? There is just one meta-bbb I can download...=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">Am Do., 27. Juni 2019 um 09:37=C2=A0Uhr schrieb Burton, Ross &lt;<a h=
ref=3D"mailto:ross.burton@intel.com">ross.burton@intel.com</a>&gt;:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">The problem is that oe-=
core and meta-bbb are different releases so the<br>
versions don&#39;t match up.=C2=A0 Ensure that oe-core and meta-bbb are on =
the<br>
same branch.<br>
<br>
Ross<br>
<br>
On Thu, 27 Jun 2019 at 07:33, danwe &lt;<a href=3D"mailto:daniel.wenninger9=
2@gmail.com" target=3D"_blank">daniel.wenninger92@gmail.com</a>&gt; wrote:<=
br>
&gt;<br>
&gt; while using the command:<br>
&gt; daniel@daniel-VirtualBox:~/bbb$ MACHINE=3Dbeaglebone bitbake core-imma=
ge-full cmdline I get the following ouput:<br>
&gt; ````<br>
&gt;<br>
&gt; Loading cache: 100% |############################################| Tim=
e: 0:00:03<br>
&gt;<br>
&gt; Loaded 1358 entries from dependency cache.<br>
&gt;<br>
&gt; Parsing recipes: 100% |##########################################| Tim=
e: 0:00:12<br>
&gt;<br>
&gt; Parsing of 832 .bb files complete (829 cached, 3 parsed). 1361 targets=
, 65 skipped, 0 masked, 0 errors.<br>
&gt;<br>
&gt; ERROR: No recipes available for:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0/home/daniel/meta-bbb/recipes-connectivity/openssh/openssh=
_7.%.bbappend<br>
&gt;<br>
&gt;=C2=A0 =C2=A0/home/daniel/meta-bbb/recipes-qt/qt5/qtbase_git.bbappend<b=
r>
&gt;<br>
&gt;=C2=A0 =C2=A0/home/daniel/meta-bbb/recipes-support/ntp/ntp_4.2.%.bbappe=
nd<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Summary: There was 1 ERROR message shown, returning a non-zero exit co=
de.<br>
&gt;<br>
&gt; ````<br>
&gt;<br>
&gt; How can I solve this?<br>
&gt;<br>
&gt; Thanks.<br>
&gt;<br>
&gt; Daniel<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div>

--00000000000092b492058c49767d--
