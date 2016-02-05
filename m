Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3CEF0E00CCC; Fri,  5 Feb 2016 01:12:35 -0800 (PST)
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
	*      [209.85.223.180 listed in list.dnswl.org]
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10276E00B5A
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 01:12:31 -0800 (PST)
Received: by mail-io0-f180.google.com with SMTP id 9so122700506iom.1
	for <yocto@yoctoproject.org>; Fri, 05 Feb 2016 01:12:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=1wKWIzjg81NmuLh39S+ikuGeZraLJGh6w6Dqne7IPPw=;
	b=W4I/bfS+MCRNdsTZrlif5XttdDUeIcz20v3FP7VhKRNOGDc+q8t8oCHUfLuwUpmEe9
	WYfVyMDLLbSF5BkiKy/iiJQk3Lyw5qD0nJJMPYuPpayn1G16YKSrwu28WRjtgXpznDVR
	cmZQA+28xCM4ETrSTujiLgk6/KKEdndTKSxLR6PxYD1L7X+HXSv3ZjgQZ1rkCtCfxCnq
	DM1j304NvES9lDGY1HJjPA4wE8fivuxV73lePFP+aJOfhIp2GKN1kUYCPMVq+kiIwEjp
	AAj5QibSPOMhkrmTVuQHUYq9UnoK6ChLiYrfM4KRjXmLWM3TN5a3r9wHgY7jo0+VPPuX
	wPkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=1wKWIzjg81NmuLh39S+ikuGeZraLJGh6w6Dqne7IPPw=;
	b=dX14iKGb2YpufrK2oDGbHtsIXw+HlXrv+XHImkbkeVF6YiAgwoUJtHymPnC4ox8FTF
	JZw/EpGkfFBE3/LhtGWMz/aKp2q9bUx4LablR9jxWbbJaIX+1Hh9XGjFDtrh0P4+lxWz
	4rtLniMmTO5r/KGQ7aCSYm7Id8ryrytjp3wkEVSpCSH5BazqVxCfJHh+43KmVfdn99jw
	g15xN3Oy/vOvCBYr7mfRbXG4CZecujS0mtoPBc8YLmATE+7LnCV/csh7s1gPKb92pePv
	DtkkeGMMZ83AhIDxKWjwtSm2G4IZR0Ovvtb8JgtWOzq3sthiyHEDTHSBRDndN9our8xW
	u32g==
X-Gm-Message-State: AG10YORyBrGKixe7A+mnqBh1MxH9QGypsaDLl0gCMZhsKM9wK8295mXIF2nuAz4cPobziIJJfG7dupOgIOxk7u30
X-Received: by 10.107.3.220 with SMTP id e89mr12982967ioi.99.1454663551365;
	Fri, 05 Feb 2016 01:12:31 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Fri, 5 Feb 2016 01:12:11 -0800 (PST)
In-Reply-To: <2236FBA76BA1254E88B949DDB74E612B41A6F227@IRSMSX102.ger.corp.intel.com>
References: <2236FBA76BA1254E88B949DDB74E612B41A6F227@IRSMSX102.ger.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 5 Feb 2016 09:12:11 +0000
Message-ID: <CAJTo0LY6-=w7W6Cwx4JxmQmOLktauPhxFN+_VdT9Hj0PK0n1dQ@mail.gmail.com>
To: "Reshetova, Elena" <elena.reshetova@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What is the correct way to get a list of package run-time dependencies during the build process?
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
X-List-Received-Date: Fri, 05 Feb 2016 09:12:35 -0000
Content-Type: multipart/alternative; boundary=001a113f0e7c3f47d1052b024026

--001a113f0e7c3f47d1052b024026
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 5 February 2016 at 08:27, Reshetova, Elena <elena.reshetova@intel.com>
wrote:

> I noticed that during the build bitbake supplies you rather correct (if i=
t
> is correct in the recipe) list of recipe build-time dependencies. However=
,
> this isn=E2=80=99t true for run-time dependencies. Moreover it seems that=
 when you
> define a recipe you don=E2=80=99t have to list run-time dependencies, but=
 rather
> than package manager would figure it out.
>
>
After do_package has run the dependencies will be correct, but until that
point the runtime library dependencies won't have been extracted.

Ross

--001a113f0e7c3f47d1052b024026
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 5 February 2016 at 08:27, Reshetova, Elena <span dir=3D"ltr">&lt;<a href=
=3D"mailto:elena.reshetova@intel.com" target=3D"_blank">elena.reshetova@int=
el.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p class=3D"=
MsoNormal"><span lang=3D"EN-GB">I noticed that during the build bitbake sup=
plies you rather correct (if it is correct in the recipe) list of recipe bu=
ild-time dependencies. However, this isn=E2=80=99t true for run-time depend=
encies. Moreover it seems that when you define a recipe you don=E2=80=99t h=
ave to list run-time dependencies, but rather than package manager would fi=
gure it out. <u></u><u></u></span></p><p class=3D"MsoNormal"></p></blockquo=
te></div><br>After do_package has run the dependencies will be correct, but=
 until that point the runtime library dependencies won&#39;t have been extr=
acted.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"=
>Ross</div></div>

--001a113f0e7c3f47d1052b024026--
