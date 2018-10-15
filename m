Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F341FE00901; Mon, 15 Oct 2018 00:17:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mans.zigher[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.43 listed in list.dnswl.org]
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com
	[209.85.210.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6ECBDE008D7
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2018 00:17:40 -0700 (PDT)
Received: by mail-ot1-f43.google.com with SMTP id 14so13928119oth.2
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2018 00:17:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=5sxEWCsXxIyx7Zyx0p7Eh0XYJYbcPj5Cgjmg8yGPwjs=;
	b=a4fZqFZupAnxdxWKlqGPo7Fi/gilJj5DxEDEqqb/PEzp7uGyT2XE/yz89MFdB8gTxm
	7+LgZcAGY7/IV8CFpwv54I1+zCiN+1sY3J7k23sMDc44oYrSvm7BcszQwVCFntngbKOq
	cFuHmT//vAmwQpQlBRVsRh+rYLKZiEk2E9/txNGOXyKXVyt5JIF9swmZSOb3r7VnpmdD
	LGMEUzEO2yvF/HZ7o14xWvZhRPaOQ7r1W3HRIqEkKtN2i67sQtuGcpKJux6u9V7Zm0yi
	osJDf9SiU/fX8QMCgL6r3+ExnOUZCUm3fu45ujrzsAryufiR3UYmbwr79s6IKkjj+8SA
	stDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=5sxEWCsXxIyx7Zyx0p7Eh0XYJYbcPj5Cgjmg8yGPwjs=;
	b=J0Al6OQcHjY1KHSaPYJR67Ou1t7RR9zk24ZtDR7ar9iUQUDXxaeRL+Lq2hQvrKb2vi
	Uf+KukGDW5+HX9o8l0ID7JyCG5Xzox0l8fz1hIxNt8o2l3WUove5gDW3rk1Lbx604oI7
	K6pMTa+4cvHLnwDb+jRkvO0wVGZHTQVrCZjqnA39dtKoecBnsUR4i98i6ic292Hwl4BU
	A80BMb0kQB2c6ROmTOOCLZqcxVpINTx12bTGvJX0mSwsHEls+wp8DvNhUnIy8Y+cEIy7
	VITRXUXmHZkCEUqgU0xqhWva0b59Pky37zDLFThOODddQPQr/3ACFO/gKmQVVZW6qFTO
	mghw==
X-Gm-Message-State: ABuFfoiqzwNMPUXJqNJmI6KISgzUKvQUh/qnZ3jNuaF1u+LfvUENHksS
	UeK9YFr6DgDEulXgOfQSnGCbYnERRtP5INkBRLQ=
X-Google-Smtp-Source: ACcGV60X61180xf2E2/PSW8O0/orbzheC399IxyhoAtWermoTvrO7VM1UuX50G5zkLfpmyoNaNBvH7rq60o65h5j9Do=
X-Received: by 2002:a9d:3e50:: with SMTP id h16mr9303133otg.8.1539587859858;
	Mon, 15 Oct 2018 00:17:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhQi8khYYi3O5MZVxhfM4BJS_meR4w=qcm1Eyy-mYABFcCdRA@mail.gmail.com>
	<CAJTo0LZ=eCkuygCcfLVaoGgLyVY2Ljf7SVOYX_gAXRvWGCDUqQ@mail.gmail.com>
In-Reply-To: <CAJTo0LZ=eCkuygCcfLVaoGgLyVY2Ljf7SVOYX_gAXRvWGCDUqQ@mail.gmail.com>
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Mon, 15 Oct 2018 09:17:28 +0200
Message-ID: <CAEhQi8kM6sy9Gq4fkCWMeABV9ZKTak2YTQFzib3GT7t5Wm7fLw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [poky][meta] already-stripped ignore if set for any other package then INSANE_SKIP_${PN}
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
X-List-Received-Date: Mon, 15 Oct 2018 07:17:41 -0000
Content-Type: multipart/alternative; boundary="0000000000007ccbf605783f3baa"

--0000000000007ccbf605783f3baa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Sorry I see now that there is a typo. What I mean is that in the default
package I am not suing INSANE_SKIP but for packag1 I need already-stripped

INSANE_SKIP_${PN}-package1 =3D " \
dev-so \
already-stripped \
"

But I continuously get the error that they are already-stripped. So is it
supposed to work because I don't understand  the code in the
package.bbclass since it looks like it is only checking for
already-stripped in ${PN} and not ${PN}-package1?

BR
M=C3=A5ns Zigher



Den fre 12 okt. 2018 kl 16:30 skrev Burton, Ross <ross.burton@intel.com>:

> On Thu, 11 Oct 2018 at 18:14, M=C3=A5ns Zigher <mans.zigher@gmail.com> wr=
ote:
> > I have been struggling with a problem where I need to create a package
> in a recipe and set already-stripped for that package. The package in
> question is not the the default one so I am trying to set it by using
> >
> > INSANE_SKIP_${PN} +=3D " \
> > dev-so \
> > already-stripped \
> > "
>
> You say no the default one, but PN is "the default" one, so that's
> probably why that doesn't work.
>
> Ross
>

--0000000000007ccbf605783f3baa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Sorry I see now that there is a typ=
o. What I mean is that in the default package I am not suing INSANE_SKIP bu=
t for packag1 I need already-stripped</div><div><br></div><div>INSANE_SKIP_=
${PN}-package1 =3D &quot; \</div><div>dev-so \</div><div>already-stripped \=
</div><div>&quot;</div><div><br></div><div>But I continuously get the error=
 that they are already-stripped. So is it supposed to work because I don&#3=
9;t understand=C2=A0 the code in the package.bbclass since it looks like it=
 is only checking for already-stripped in ${PN} and not ${PN}-package1?</di=
v><div><br></div><div>BR</div><div>M=C3=A5ns Zigher</div><div><br></div><di=
v><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">Den fre 1=
2 okt. 2018 kl 16:30 skrev Burton, Ross &lt;<a href=3D"mailto:ross.burton@i=
ntel.com">ross.burton@intel.com</a>&gt;:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">On Thu, 11 Oct 2018 at 18:14, M=C3=A5ns Zigher &lt;<a href=3D"mailto:=
mans.zigher@gmail.com" target=3D"_blank">mans.zigher@gmail.com</a>&gt; wrot=
e:<br>
&gt; I have been struggling with a problem where I need to create a package=
 in a recipe and set already-stripped for that package. The package in ques=
tion is not the the default one so I am trying to set it by using<br>
&gt;<br>
&gt; INSANE_SKIP_${PN} +=3D &quot; \<br>
&gt; dev-so \<br>
&gt; already-stripped \<br>
&gt; &quot;<br>
<br>
You say no the default one, but PN is &quot;the default&quot; one, so that&=
#39;s<br>
probably why that doesn&#39;t work.<br>
<br>
Ross<br>
</blockquote></div>

--0000000000007ccbf605783f3baa--
