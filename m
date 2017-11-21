Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2C34E00A9C; Tue, 21 Nov 2017 13:25:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61526E006CA
	for <yocto@yoctoproject.org>; Tue, 21 Nov 2017 13:25:19 -0800 (PST)
Received: by mail-it0-f48.google.com with SMTP id 187so3806001iti.1
	for <yocto@yoctoproject.org>; Tue, 21 Nov 2017 13:25:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=5UHW9nmL3QtbxIoB7MXVsHXVEG0mitCIrVHwG7ItEvo=;
	b=H1tiBVSjDQDImZJ9nHTK5AXIvq6slOKYPwGp3zmCTtELO9V4438zqWby4xGPHiFpDN
	NdSAM2XCBk0omFDCuA2lJ3+Xa5iMJMMRZuLJyyqFQXYmUBxkAZg7tLmapS8JBbVw2sz6
	OcUb5fUSwQ87f4PUz6a/Sa+1VDeEx1KHoJA9ZHwkIrvj9jT551fvqFE8Q0dHfacEUpO9
	HX4w+Uubw1peGmXGh1PFFK4hq9pY3zkCTEFTiem59DqypkbY2EzFpetfz5W16pjoPeMk
	tac9hJnXhVeq9Et4hHidoyxbGGXMA2pa5lrLNiSw1U9ZgxFTitKncXw2Q0bxuzlh8/Lc
	GOZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=5UHW9nmL3QtbxIoB7MXVsHXVEG0mitCIrVHwG7ItEvo=;
	b=HX1zGwaRmdv1acEKcNGMw672S6CQGxqDe49Q8xN2ArJkhB1lIKqidxSoZpf+ohSx0S
	UMgU/Rr/y3Fq0j/ZwspUOQ55Xlx2m4F2Qdu9QLjW1H6w39l5phMK4yIpCMZz17KzIsZI
	ar+bO/QLx1U1ibwL6Dabz/yUrNTS1r8txa1lV1UyhRibdKaBN5J7ZHhzRxQgCADdLla8
	GJr7X9SVSJqWoz0vWDSQMyoXKvXDJWKlZh4ylJveQQUhA9uggcgto9KgUuXWmlfjhdWp
	Ps10QbH5xFS2XLjGUTRqAtzQ4A2ulykv0mIACaNqwwStNlXmd0XNSyu6EP3Uu/QLEJ10
	hFww==
X-Gm-Message-State: AJaThX7mp8KGocpDgkbPua6xAhX38kQVzi6txp7Ne8Xqkbxhpcsg3gIG
	dupUPdtetm+n5Q5eSrcOTa63abbE6+E77bhuT3E2rw==
X-Google-Smtp-Source: AGs4zMbj3pJWXRMl5oYWDaMKIHsS8/H0rTMIq/rmlDzQ/ckFeMYC0SOClQw19ix8ioFi+XptlsK38O4VFiFrjYhdvTs=
X-Received: by 10.36.172.31 with SMTP id s31mr3906100ite.124.1511299519570;
	Tue, 21 Nov 2017 13:25:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.171.132 with HTTP; Tue, 21 Nov 2017 13:24:59 -0800 (PST)
In-Reply-To: <7bdd24ea-febf-86b4-e770-6f7533205d73@windriver.com>
References: <bfbfad0b-af40-5448-4aed-fc70eeb95c6c@windriver.com>
	<7bdd24ea-febf-86b4-e770-6f7533205d73@windriver.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 21 Nov 2017 21:24:59 +0000
Message-ID: <CAJTo0LZfkd2SbTrXL6ggt9_NQbDUfEDVLTaaqc8sPwaUihfRUw@mail.gmail.com>
To: Hongxu Jia <hongxu.jia@windriver.com>
Cc: +lpd-cdc-core-dev <lpd-cdc-core-dev@windriver.com>, "Yang,
	Zhangle \(Eric\)" <Zhangle.Yang@windriver.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Contribute meta-installer to yocto
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
X-List-Received-Date: Tue, 21 Nov 2017 21:25:20 -0000
Content-Type: multipart/alternative; boundary="94eb2c1fc0f80381c5055e84d7ab"

--94eb2c1fc0f80381c5055e84d7ab
Content-Type: text/plain; charset="UTF-8"

On 21 November 2017 at 08:55, Hongxu Jia <hongxu.jia@windriver.com> wrote:

> If yocto is interested in this layer and will accept it,
> I could send pull request or some one directly fetch
> from above github master branch.


Are you asking for a git repo on git.yoctoproject.org?  If you want one I
believe the process is to ask Michael Halstead.  There's no reason why it
can't be maintained in this repository forever though,  just submit it to
the layer index.

Ross

--94eb2c1fc0f80381c5055e84d7ab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 21 November 2017 at 08:55, Hongxu Jia <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:hongxu.jia@windriver.com" target=3D"_blank">hongxu.j=
ia@windriver.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div c=
lass=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex">If yocto is interested =
in this layer and will accept it,<br>
I could send pull request or some one directly fetch<br>
from above github master branch.</blockquote><div><br></div><div>Are you as=
king for a git repo on <a href=3D"http://git.yoctoproject.org">git.yoctopro=
ject.org</a>?=C2=A0 If you want one I believe the process is to ask Michael=
 Halstead.=C2=A0 There&#39;s no reason why it can&#39;t be maintained in th=
is repository forever though, =C2=A0just submit it to the layer index.</div=
><div><br></div><div>Ross</div></div></div></div>

--94eb2c1fc0f80381c5055e84d7ab--
