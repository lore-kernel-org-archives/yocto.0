Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8DF47E00B66; Wed, 13 Jan 2016 12:22:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A17F6E00B46
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 12:22:42 -0800 (PST)
Received: by mail-ig0-f176.google.com with SMTP id z14so160025229igp.1
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 12:22:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=poXP2ajCbYwlgfdg6nOlCJVphoLaufV9ZQhjsYGaxOY=;
	b=I1myUUmyfT7bJ1nz31HOGQ0t/R4JXmLX/T4PTm5tZSP1KSWXy9rjiRGLD+vWyHE6FI
	PkG1Dxrs9XqMRCbUV2Y2oXzu0c53DE1m+T5RJRqiBH+KQm91rWfvsVAIZWt7xjR535Yt
	Sy/+YsIQ7JpjwURVmlRaFx1f2u9XraarCs0GwUUF8nLa/PxX1XvzSBlbNHloqKziglsX
	rJGKX9h6kL1I+3EQ8pTd2xTIspE7En5dQ4zSYcLc2OmWDC3cUayXOt1u1aBx7aImDTGa
	U6+HGBkJ62WlL0fQt0cIRw+SJerSzbfiSlWOEyMbLgrq15A8B1Q3cBrWwD/9/A1L9iDL
	FUIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=poXP2ajCbYwlgfdg6nOlCJVphoLaufV9ZQhjsYGaxOY=;
	b=d8ltNhSH8oSmio367eBay7Gb/kiFyYTnUp4R0Ma3Vwq1tq7QG6f+q8NdXEWM48IaER
	RLJF/abVseS2/DsYyHQLS45AzLZzeElfcLnc8tV7+Ua76hJBML//ArFWiTxX7RqvkgXk
	wr7IsKmSsf/9eJyTxPvDeEanIeeQCX+RrKXDRGVbV3nuBEM9OiZ9lqNH+KJrnvyBsUgz
	mTAIG7pYyvtPBcFABl4TVP4IusE2xP5mFVUcLDZsCmjpj9WC3WpLIyugLTg1inDPVTcS
	JKkJ8FHJVmKln7N1XRJPbROCqJGZxskFM0Agd4Zfynilxv/79EagyZJ5atecwRXD+CIt
	/q8A==
X-Gm-Message-State: ALoCoQkih/+tLyjONOSt0wR6iJ3JW5KYP7dtk12OMRb5XMmZOPP/mKho3K18WTFUtSBilXB5Fh9Xb8nZVSPguVGXZ+CDvXd5+YU2WxYbxH2rHEiJDxnjQ5w=
X-Received: by 10.50.126.8 with SMTP id mu8mr866858igb.52.1452716561688; Wed,
	13 Jan 2016 12:22:41 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Wed, 13 Jan 2016 12:22:22 -0800 (PST)
In-Reply-To: <AMXPR01MB0866EFB3F8CA8249F251C8A92CB0@AMXPR01MB086.eurprd01.prod.exchangelabs.com>
References: <AMXPR01MB0866EFB3F8CA8249F251C8A92CB0@AMXPR01MB086.eurprd01.prod.exchangelabs.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 13 Jan 2016 20:22:22 +0000
Message-ID: <CAJTo0LZ_P=yKoqZaNuXKESyV+YQKZtS8VJLhG-6ycX5U6Evngw@mail.gmail.com>
To: Karim ATIKI <karim_atiki@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [Generic] Add a local binary file into a target Distro
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
X-List-Received-Date: Wed, 13 Jan 2016 20:22:46 -0000
Content-Type: multipart/alternative; boundary=047d7b1635bf9e888505293cee9e

--047d7b1635bf9e888505293cee9e
Content-Type: text/plain; charset=UTF-8

On 13 January 2016 at 20:16, Karim ATIKI <karim_atiki@hotmail.com> wrote:

> But, although I've been able to add my own layer to include a project from
> github, I was just wondering how we could simply and easily add a local
> file / binary to a target distro ? (FYI: raspberrypi2) without creating
> tons of layers , bb. etc.
>
> The yocto-layer tool can create an empty layer for you, and then it's just
a single file for the bb.  That's pretty much the proper way of doing it,
and then you've somewhere to put all the settings and changes that you
previously had in local.conf too.

Ross

--047d7b1635bf9e888505293cee9e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 13 January 2016 at 20:16, Karim ATIKI <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:karim_atiki@hotmail.com" target=3D"_blank">karim_atiki@hotmail.com</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p>But, although I&#3=
9;ve been able to add my own layer to include a project from github, I was =
just wondering how we could simply and easily=C2=A0add a local file / binar=
y to a target distro ? (FYI: raspberrypi2) without creating tons of layers =
, bb. etc.</p>
<p></p></blockquote></div>The yocto-layer tool can create an empty layer fo=
r you, and then it&#39;s just a single file for the bb.=C2=A0 That&#39;s pr=
etty much the proper way of doing it, and then you&#39;ve somewhere to put =
all the settings and changes that you previously had in local.conf too.</di=
v><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div=
></div>

--047d7b1635bf9e888505293cee9e--
