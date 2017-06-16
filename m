Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B24CE00B18; Fri, 16 Jun 2017 03:29:21 -0700 (PDT)
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
	*      [209.85.216.181 listed in list.dnswl.org]
Received: from mail-qt0-f181.google.com (mail-qt0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CD3CE009A5
	for <yocto@yoctoproject.org>; Fri, 16 Jun 2017 03:29:17 -0700 (PDT)
Received: by mail-qt0-f181.google.com with SMTP id u19so57022185qta.3
	for <yocto@yoctoproject.org>; Fri, 16 Jun 2017 03:29:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=FWqYASG19VEPoF1Y+g8ARid9aVlxYGjUSxsYdftSl28=;
	b=mzTFyBpL7ahsn0N/W44HWhEuDt5eqsXl4EK7MeFa6SvPIMjcy670Z2FUV0u3l0XUOP
	SSOxPAtVapNc14GwkrtzCl9RVhd2JFbun7Q0H0/CevbCf22zJPByl09Ju7fEdPVfT9zc
	lnGpq8ureVKeZK65utQvLbi5y0C/0ERc6Ga9D+Y+R2/w7uKv3ZRmUR6PqIQ8YhKDfA+m
	lr4KWIMvBcMc5wQ07di9YSA52FOcUREM2yYi8FRtaO2olzv5u4sOnoV4GSWybwXtQHe3
	zlWpMXX9KRgUp726/gkLYqm1R2l74kqNX/lLxbNR+ARl7X1jXujTCPe3rUyuoNeLEww5
	Nm9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=FWqYASG19VEPoF1Y+g8ARid9aVlxYGjUSxsYdftSl28=;
	b=aHxSElRO9G48Vf5JT0zvQNBoBtaamad9lX8XmKB9oEO56bdzXEkKmfNRJ5pDHHEMcT
	AgKq0m4WvVITgNG20AJFjNKDMDbobJyeD9TNUt44PVECumvJcYYLpfvEmOr8e3wksIve
	dA0hvePvpqCwuZt6jhlBBIbp9/vwg8Exj8p8YukBrCbJNsrnRrMJVTnf7V8sTg9GZk/C
	kQPVMUXBXEVG7M4KhTrpf2Gq2hZuSCnecT2luqFc4DhqIWmDEMrs1RiHIfj5RbokBO7n
	E3REUwR368NdqK27hPoqK21mUaVWeJ36lWdzGmHiVihSP34EM/K6fFh+ec7RqWtQcaCN
	p0LA==
X-Gm-Message-State: AKS2vOxeH0j3oW3/2w4/65U+RJzOf28rRp+OL5jjMyCRw3z8PTvkd7dm
	HVmDoo1BCcCqFVNVcYBtCef0FzGK/ggZ
X-Received: by 10.55.181.69 with SMTP id e66mr11319809qkf.109.1497608957293;
	Fri, 16 Jun 2017 03:29:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.35.103 with HTTP; Fri, 16 Jun 2017 03:28:56 -0700 (PDT)
In-Reply-To: <35df41582d4b4f16a9bddd6a77e186c5@HIBDWSMB03.ad.harman.com>
References: <b052b8f70c6d46c8b9c8aa54abab4c17@HIBDWSMB03.ad.harman.com>
	<CAJTo0LYAK3yiAgfWOF3q9y2rNeBs1EXaf3sRZ0bCoXqj50zSuw@mail.gmail.com>
	<35df41582d4b4f16a9bddd6a77e186c5@HIBDWSMB03.ad.harman.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 16 Jun 2017 11:28:56 +0100
Message-ID: <CAJTo0LbKP5dLppYKTMEJg=4dg3wgq0wyN_+=1ruFrqanxh89PA@mail.gmail.com>
To: "Pawar, Alok" <Alok.Pawar3@harman.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [EXTERNAL] Re: Yocto VLC compilation
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
X-List-Received-Date: Fri, 16 Jun 2017 10:29:21 -0000
Content-Type: multipart/alternative; boundary="94eb2c05d222e98a87055211418e"

--94eb2c05d222e98a87055211418e
Content-Type: text/plain; charset="UTF-8"

On 16 June 2017 at 11:26, Pawar, Alok <Alok.Pawar3@harman.com> wrote:

> ERROR: ffmpeg was skipped: because it has a restricted license not
> whitelisted in LICENSE_FLAGS_WHITELIST
>
>
Yes, look in the ffmpeg recipe to identify the license which is restricted,
and if you understand and agree to the terms then set the whitelist to
commercial_ffmpeg.

Ross

--94eb2c05d222e98a87055211418e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 16 June 2017 at 11:26, Pawar, Alok <span dir=3D"ltr">&lt;<a href=3D"mail=
to:Alok.Pawar3@harman.com" target=3D"_blank">Alok.Pawar3@harman.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><p class=3D"MsoNormal"><sp=
an style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;col=
or:#1f497d">ERROR: ffmpeg was skipped: because it has a restricted license =
not whitelisted in LICENSE_FLAGS_WHITELIST<u></u><u></u></span></p>
<p class=3D"MsoNormal"></p></blockquote></div><br>Yes, look in the ffmpeg r=
ecipe to identify the license which is restricted, and if you understand an=
d agree to the terms then set the whitelist to commercial_ffmpeg.</div><div=
 class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div=
>

--94eb2c05d222e98a87055211418e--
