Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 905DBE00961; Fri, 24 Feb 2017 05:24:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.171 listed in list.dnswl.org]
Received: from mail-qt0-f171.google.com (mail-qt0-f171.google.com
	[209.85.216.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EA94E0049D
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2017 05:24:28 -0800 (PST)
Received: by mail-qt0-f171.google.com with SMTP id n21so16374879qta.1
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2017 05:24:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=iUFiQd2bNCzu9JyTHYgjxT3Ud/AqmTxfYY2OdeGuKXw=;
	b=N2wGEujn1uNG997P3PWxidK50QsRCD++7QhN7J5AVt1pMgzMua1d2xOH36y1+vRQOr
	BNzjuUOKx1OaeLmrGGMJYkfT9d4ln9Nfhmg9tBdCB/ec4qYcJST555r8Q9JsJGTqtcdW
	F9vRiVBwD/PzPDlkC5WMK+tItauWD4PDn4k5gHJW4/RvCxe8eOvpvtjOzsvnLQsfWzny
	ZCORXarueV29IG5MKCXv9DwCrwxUIuRW7UifmChGiCJyisRUMr2pCT5VFcZWo99AMA/C
	Et861zU7quys/EN7GSd59Co23rzcjn9Wk8qeFrtjg/WjdGzbd6XECMscPtvbcd/+rqCW
	GaZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=iUFiQd2bNCzu9JyTHYgjxT3Ud/AqmTxfYY2OdeGuKXw=;
	b=AH8dIz6e78cR+j5ZzRR57rRLzSKFr+31bU5MK9jsiKLPbzbMDJsGajQDNsNFid0Fmx
	6j+/CmdeCTmVPw0bnba9JI0gYRtU05aLSNFMQv1hmXEO7fPBRxbqfKas8k/IQ2Fp1Gqk
	6yfnTxtZCe8cCv4jcTMPIRlPsrcbkKAdX1x2eotZIQ1xfE500VEgcxs9CmfpHGraPpho
	4BpvrrzxoNO10z1aLS9Zg3x8aiFKFclb2jChe0p2DWOEB4kf3ntTmJu4v9bHnfYD9iLf
	D4/GP4A/YoYHczX9aEt6YvukKK57lkl2jFHhc8M8pkanU7MlVEC+nS0yffvX1qNOXj14
	cFcA==
X-Gm-Message-State: AMke39naAWxPZSXTa/VSmoQ5YkAybIPB1T/JMeTN4s0/qoRCteKpVNUN9AqRv68nqPRfq+7RGxN7Og9EwxSVw2Cv
X-Received: by 10.237.32.230 with SMTP id 93mr2555981qtb.144.1487942668278;
	Fri, 24 Feb 2017 05:24:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Fri, 24 Feb 2017 05:24:07 -0800 (PST)
In-Reply-To: <CAD4b0_JR7jfR9QfADu3j0xAv85otVmeDdwTLqVEJSDF-xnAnCw@mail.gmail.com>
References: <CACr_9kHaf_Jqogt0BK8LaXXxrb_L6uhq3=z1ZXvo6M8Dvs4Tiw@mail.gmail.com>
	<CAD4b0_JR7jfR9QfADu3j0xAv85otVmeDdwTLqVEJSDF-xnAnCw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 24 Feb 2017 13:24:07 +0000
Message-ID: <CAJTo0La9ckfcqj9s_NQCQXXFhELjXpJOz+Wnf5QnnH88uyQFng@mail.gmail.com>
To: =?UTF-8?Q?Maciej_Borz=C4=99cki?= <maciej.borzecki@rndity.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Python3 partial rootfs installation
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
X-List-Received-Date: Fri, 24 Feb 2017 13:24:32 -0000
Content-Type: multipart/alternative; boundary=94eb2c0c9b9c309b04054946a667

--94eb2c0c9b9c309b04054946a667
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 24 February 2017 at 09:21, Maciej Borz=C4=99cki <maciej.borzecki@rndity.=
com>
wrote:

> > Is there any way to make a full standard python3 install?
>
> Installing python3-modules should cover most of your needs.
>

python3-modules will pull in the *entire* standard library.

Ross

--94eb2c0c9b9c309b04054946a667
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 24 February 2017 at 09:21, Maciej Borz=C4=99cki <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:maciej.borzecki@rndity.com" target=3D"_blank">maciej.borzec=
ki@rndity.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span=
 class=3D"">&gt; Is there any way to make a full standard python3 install?<=
br>
<br>
</span>Installing python3-modules should cover most of your needs.<br></blo=
ckquote></div><br>python3-modules will pull in the *entire* standard librar=
y.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ros=
s</div></div>

--94eb2c0c9b9c309b04054946a667--
