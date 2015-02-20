Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB836E00853; Fri, 20 Feb 2015 05:24:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qc0-f173.google.com (mail-qc0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6738FE00837
	for <yocto@yoctoproject.org>; Fri, 20 Feb 2015 05:24:36 -0800 (PST)
Received: by qcyl6 with SMTP id l6so550260qcy.2
	for <yocto@yoctoproject.org>; Fri, 20 Feb 2015 05:24:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=xpmuA9y3Nxm2lWvpeDOEbxUo9i2x/RA/P6ALsQ4M38U=;
	b=TsHUWQ3GPZt8FGtAPS2NNpLjz99BOXJ6ERKZ9u24mU6ks2m8kGgBgui2XboYucCGjE
	dW0erfpP68zNMpQvt3U0e+2RBL/Bn1Q6cdHLvl7QodFGNHTXNdlfu3MYOhsgSFF9N+j3
	mMaxAOYhB7pHlB4ZPSurm/J1HR67JjMKfiIzNVl8HUVXvXtuu4sZ/OOBO4RzZX1/Z7Ob
	scKs4WpZ0/JUHQ2hvlXlKhf8ZB1wBdRbvTrH5joMZvLXFQ4pZxDlgObZ3kt/Sq3daqai
	yVI+MXwi/hw5a9Ik/aZceTyNTqj5lhNwmXk3Emfxi8x5JWiDTynGIiU2ushHPhHxPYm8
	8jiA==
X-Gm-Message-State: ALoCoQm6DjQHwNL4ag8V3/9qQi/ZpSYnJ279498o3AVOftj2TFZTPnTgkI8yfEqMM8LfqyzaUWRq
X-Received: by 10.140.92.161 with SMTP id b30mr6275029qge.59.1424438675742;
	Fri, 20 Feb 2015 05:24:35 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.102.203 with HTTP; Fri, 20 Feb 2015 05:24:15 -0800 (PST)
In-Reply-To: <54E7347B.8070801@mlbassoc.com>
References: <54E72D96.9040504@mlbassoc.com>
	<CAJTo0La_Ky_1voaDaCt=m_XZMFnTCD__JpvMmDBF+dC+ynpcaA@mail.gmail.com>
	<54E7347B.8070801@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 20 Feb 2015 13:24:15 +0000
Message-ID: <CAJTo0LZfLPYEeB13yXHW-4im=W7Zyym01OTv364pZ5E-inBMwg@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: glibc fetching problems
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
X-List-Received-Date: Fri, 20 Feb 2015 13:24:43 -0000
Content-Type: multipart/alternative; boundary=001a1139baf045bb43050f84f96b

--001a1139baf045bb43050f84f96b
Content-Type: text/plain; charset=UTF-8

On 20 February 2015 at 13:19, Gary Thomas <gary@mlbassoc.com> wrote:

> Transient error?
>>
>
> Must have been, it's working for me now as well.


My magic touch. ;)

Ross

--001a1139baf045bb43050f84f96b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 20 February 2015 at 13:19, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"=
mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><=
span class=3D"">Transient error?<br>
</span></blockquote>
<br>
Must have been, it&#39;s working for me now as well.</blockquote><div><br><=
/div><div>My magic touch. ;)</div><div><br></div><div>Ross=C2=A0</div></div=
></div></div>

--001a1139baf045bb43050f84f96b--
