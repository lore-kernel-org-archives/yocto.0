Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D348E00758; Mon, 27 Jul 2015 06:02:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.50 listed in list.dnswl.org]
Received: from mail-qg0-f50.google.com (mail-qg0-f50.google.com
	[209.85.192.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D63CE00461
	for <yocto@yoctoproject.org>; Mon, 27 Jul 2015 06:01:58 -0700 (PDT)
Received: by qgii95 with SMTP id i95so50529167qgi.2
	for <yocto@yoctoproject.org>; Mon, 27 Jul 2015 06:01:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=YLhiUt/ceG6a0S5CAc0FPrj/CasP0ii5CrzJ9AdQyWE=;
	b=leewQ63lHCfi/WidjmZhGxcTS5YOibgkkrGKLbik0064CkBzR9c60/DTypc+ayGI0y
	sOdGGXUzlypENqYhiQtzNUQby9eJ8NC8gSkXbNLJRC9dG1W5DLvaRCmYPtaqPtxas8H6
	UFz6eehl1CFPBDSwPNYZWONgtDt1/jioSZwVZsfVjWrTQft42p1qe646AwUbZG9s450z
	wdaGWBzAEQCEl51uoeX/FDrxCw06rLOXoLPy8U1IJ1/eo4/wYZKVszWCJuWil7as8Qp2
	rsfq4uQMshVZVVoUiKS7Oa//Wr2MEBO7TCDQrhA0sRSlSBy122K91+yHdOPGG6GEIv//
	V4Pg==
X-Gm-Message-State: ALoCoQmDjjlgcw5jItaLpAp9Feam3QeOTAWSraT13HuZf/Jb+jl/DwhbiR3Bh1iu4/Cnfw6K9Ycf
X-Received: by 10.140.196.85 with SMTP id r82mr42691213qha.64.1438002117673;
	Mon, 27 Jul 2015 06:01:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.195 with HTTP; Mon, 27 Jul 2015 06:01:38 -0700 (PDT)
In-Reply-To: <365E1805BC95084CBE82381A0B86999401095B33DF@EU-MBX-01.mgc.mentorg.com>
References: <55B517E5.5080708@mentor.com>
	<CAJTo0LaKRO8dkGWmA1iXkkKE7HK9e22A_KLWJgpcfK18XQfCJg@mail.gmail.com>
	<365E1805BC95084CBE82381A0B86999401095B33DF@EU-MBX-01.mgc.mentorg.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 27 Jul 2015 14:01:38 +0100
Message-ID: <CAJTo0LbtNw9gmDhLRo3Ru5pATOkz-JoX42zhu_g5FA7LNivHxA@mail.gmail.com>
To: "Ahsan, Noor" <Noor_Ahsan@mentor.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Khandavilli,
	Arun" <Arun_Khandavalli@mentor.com>, "Larson,
	Chris" <Chris_Larson@mentor.com>
Subject: Re: Using wic from a Bitbake task
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
X-List-Received-Date: Mon, 27 Jul 2015 13:02:02 -0000
Content-Type: multipart/alternative; boundary=001a11432652692a84051bdaf522

--001a11432652692a84051bdaf522
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 27 July 2015 at 13:49, Ahsan, Noor <Noor_Ahsan@mentor.com> wrote:

> May I know it=E2=80=99s expected completion date?
>
>
Currently marked as "1.9", you'll have to talk to Ed to get anything more
precise than that.

Ross

--001a11432652692a84051bdaf522
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 27 July 2015 at 13:49, Ahsan, Noor <span dir=3D"ltr">&lt;<a href=3D"mail=
to:Noor_Ahsan@mentor.com" target=3D"_blank">Noor_Ahsan@mentor.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><p class=3D"MsoNormal"><span=
 style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif=
&quot;;color:#1f497d">May I know it=E2=80=99s expected completion date?<u><=
/u><u></u></span></p>
<p class=3D"MsoNormal"></p></blockquote></div><br>Currently marked as &quot=
;1.9&quot;, you&#39;ll have to talk to Ed to get anything more precise than=
 that.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"=
>Ross</div></div>

--001a11432652692a84051bdaf522--
