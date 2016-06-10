Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73033E00DF6; Fri, 10 Jun 2016 03:07:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33953E00CD9
	for <yocto@yoctoproject.org>; Fri, 10 Jun 2016 03:07:43 -0700 (PDT)
Received: by mail-it0-f42.google.com with SMTP id h190so56185522ith.1
	for <yocto@yoctoproject.org>; Fri, 10 Jun 2016 03:07:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=KaG4tDgU5fJc+WsOS3Qd52XGd/APy2gLhjZ+nY8lVCs=;
	b=OnAkoVeRrUUzoFobMUjNNUT6/WzTqI/ZvU6Ap4KCrjwGChz1l84asHU+RvKGRM7VfC
	0cLB1FeZN1XxAaiJjNKXUK25yIDaildPdEu1iuDLhYNo94DmhJA1TIZFovgs9ZKeRICu
	R/SCmrnwRY0qxd/l1mlqlAm41f/T2jCyGiIqV42DTZF4A1qioC4b5B0gFs+b30UyDJSD
	ZAn6LcW21AD6qQHFteoXwZNbqHUy1UKicbTATlzyUUhTvnGTKw2GielXSU6LfX97cLtb
	iyFrdXPDpgBqta7tHXSdXcHe842TyYmBJM9ynSiHN4+ME1cNHP1Aa3inuyEhtgtlST6+
	FKyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=KaG4tDgU5fJc+WsOS3Qd52XGd/APy2gLhjZ+nY8lVCs=;
	b=D9B2EvNOarlRS1ZVwq2uu7jTxfDCKE28vn3QTOofjIuYSBU4yHp40H1DAzPyLAl+rq
	SgV728jLZ5NbimUAJNmrl2nc7UJceDBTW8x6W1ibAa/P49iQax4lCuG48FuRTBiuC2AS
	J736sL7Eqad6AAT9hXWUGRzd4iOqI5yON/kwblkcnB5U+b41NbXMk/1xw5KSG3rymu1n
	qlGcf+CKRcCXDyMV58oCZ914s+zY7pKFiiBpHR1b4rHX3NTCBdlz5ncOgBsaOwt+MXec
	bYqkUQJxK1XV/mNwZo8cJEG/InPZMltK4zVSEkOR7ufE6OohvLMZAXcAMOTqXcAA7Q8J
	4HLw==
X-Gm-Message-State: ALyK8tJWyA841QxyAJroe12qn0TT/jEUOkkv/cJMNAhftzi0aBSGwL/IRWlvgC6mUqKjpvZFmwnd7rL2pBFAJhSn
X-Received: by 10.36.2.71 with SMTP id 68mr30545924itu.38.1465553263383; Fri,
	10 Jun 2016 03:07:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Fri, 10 Jun 2016 03:07:24 -0700 (PDT)
In-Reply-To: <575A9117.2080203@mlbassoc.com>
References: <575A7B40.9050509@mlbassoc.com> <575A7CAF.2050207@mlbassoc.com>
	<CAJTo0LZenM_UO1QRzWCVDGyurcyzKNrYnHVYjmCSpyJNfjK85w@mail.gmail.com>
	<575A9117.2080203@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 10 Jun 2016 11:07:24 +0100
Message-ID: <CAJTo0LYy_W7bcRMJ=fXXA=_=FgLTAe2n0yz-HORXQe0SCLMatA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Another python3 error?
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
X-List-Received-Date: Fri, 10 Jun 2016 10:07:50 -0000
Content-Type: multipart/alternative; boundary=001a1144b1d0a9edf70534e9b5e7

--001a1144b1d0a9edf70534e9b5e7
Content-Type: text/plain; charset=UTF-8

On 10 June 2016 at 11:06, Gary Thomas <gary@mlbassoc.com> wrote:

> bitbake -u depexp used to work on this same system before the change over
> to
> python3 in bitbake.
>

Sorry I meant python3 :)

Ross

--001a1144b1d0a9edf70534e9b5e7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 10 June 2016 at 11:06, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mail=
to:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div id=3D":25j" class=3D"a3s aXjCH =
m15539c742c13a7a8">bitbake -u depexp used to work on this same system befor=
e the change over to<br>
python3 in bitbake.</div></blockquote></div><br>Sorry I meant python3 :)</d=
iv><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</di=
v></div>

--001a1144b1d0a9edf70534e9b5e7--
