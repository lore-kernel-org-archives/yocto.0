Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 423C3E00D2A; Thu,  9 May 2019 02:56:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f172.google.com (mail-it1-f172.google.com
	[209.85.166.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA182E0053F
	for <yocto@yoctoproject.org>; Thu,  9 May 2019 02:56:55 -0700 (PDT)
Received: by mail-it1-f172.google.com with SMTP id q65so2555214itg.2
	for <yocto@yoctoproject.org>; Thu, 09 May 2019 02:56:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=iaC6mPcKza2xQ6Avf+5UJ3dXnA8aGVsMVJWRBZrEqcc=;
	b=wSChbXsChK0L2JA7sl+nBiVVikXMJG4gfJ/sHJvFc6e/PRXwilYt93gViKXwzT20Qw
	OIHKBUKpLY/KiXKXZqopEmMMTlQgruzZ8CLVnja7sWTaFvyKDpdIcvgbieNxIp84i17u
	1AZNFRxRTPC0vJ4owq5Fa9VKyK4N4hww350Yrup811nF5yFwceGPeih5Ti74+kqia0Ga
	wOCsoM+PJooxNF1vZUb+nd2fkLhf4ud+3txaAxtGNjjYZtNBXZQG1OnyfQNaGsLz9YFx
	O/GZGRdEJN/L9n3KwpIfGNGwlbPW4R6cWPmrAIsVXxFVRgAZ4BwA4URD6/P7My41pBBk
	bFew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=iaC6mPcKza2xQ6Avf+5UJ3dXnA8aGVsMVJWRBZrEqcc=;
	b=Q391x2IYKXjpA9Nfv29f/B4KZ/5WmM5Z7opQcoD8PONqFJPNzfi4dsZBBOyeH5Up0f
	uyWWsdokpn++bpy2p3d6elecscSbiupS3sO08/ymX3pRCJP2h7gIUsgMx1hTguY58j9+
	qE83h4CjcfUZzHjw4E9rerOA7EV2mHowZhIEN3p56p7ZWMRdo3+aWU/Zwpizk36GEpLI
	9ZX4lNxd1xEetkyF1xOUnHV0uJPpEzxwffNcTNY8ER754AaQZThZnWW7gE/bWD3M5voY
	G2zqVhnGVkG4TAmqJDd5BzU5DjPt40PE5VCA7zMxiqdTVi12irGXZGkL11eF5HwlDi7N
	Hmyw==
X-Gm-Message-State: APjAAAUr2Mtgj/7eJMYQPnc+AZdVv1DMpE7tUaVexp++qtleRGszRrWC
	jOjUIWuIPIEYUiEnPvR5q336dcs1E/Hus86zfHBc7WqR
X-Google-Smtp-Source: APXvYqwxI/EiWxQQ+7gQbVaILwwnEyMQN96gUfRZSHnAbPEG3YaB386ZAmetN2X6KiPjAd4TbR2OswNjZfHg3N/MIC4=
X-Received: by 2002:a02:ad15:: with SMTP id s21mr2435835jan.79.1557395815270; 
	Thu, 09 May 2019 02:56:55 -0700 (PDT)
MIME-Version: 1.0
References: <AM0PR10MB2658E98F7B370BD2FAEE187EC3330@AM0PR10MB2658.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <AM0PR10MB2658E98F7B370BD2FAEE187EC3330@AM0PR10MB2658.EURPRD10.PROD.OUTLOOK.COM>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 9 May 2019 10:56:43 +0100
Message-ID: <CAJTo0Lb2dGk4rdX1cm83aDyEr8WxapH3+nAL6oVgSeO-hFZbiQ@mail.gmail.com>
To: Fabian Knapp <knapp@ambibox.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Multiple MACHINEs and DISTROs: When to use own build dir, SSTATE_DIR, DL_DIR ?
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
X-List-Received-Date: Thu, 09 May 2019 09:56:56 -0000
Content-Type: multipart/alternative; boundary="00000000000058229b05887178db"

--00000000000058229b05887178db
Content-Type: text/plain; charset="UTF-8"

On Thu, 9 May 2019 at 10:47, Fabian Knapp <knapp@ambibox.de> wrote:

> we have multiple MACHINEs and DISTROs and Im wondering for which
> combinations I have to setup a dedicated build dir, SSTATE_DIR and DL_DIR.
>
> Information in the form of:
>
> Each (change of) MACHINE needs its dedicated SSTATE_DIR and build dir but
> can share DL_DIR.
>

You can always share DL_DIR and SSTATE_DIR.

Ross

--00000000000058229b05887178db
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, 9 May 2019 at 10:47, Fabian Knapp=
 &lt;<a href=3D"mailto:knapp@ambibox.de">knapp@ambibox.de</a>&gt; wrote:<br=
></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;=
border-left-color:rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)"><span style=3D"font-size:12pt">we have multiple MACHINEs=
 and DISTROs and Im wondering for which combinations I have to setup a dedi=
cated build dir, SSTATE_DIR and DL_DIR.</span><br></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Information in the form of:<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Each (change of) MACHINE needs its dedicated SSTATE_DIR and build dir but c=
an share DL_DIR.</div></div></blockquote><div><br></div><div>You can always=
 share DL_DIR and SSTATE_DIR.</div><div><br></div><div>Ross</div></div></di=
v>

--00000000000058229b05887178db--
