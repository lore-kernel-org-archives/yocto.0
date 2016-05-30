Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FE3EE00CA4; Mon, 30 May 2016 03:50:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f51.google.com (mail-oi0-f51.google.com
	[209.85.218.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC2D8E00C56
	for <yocto@yoctoproject.org>; Mon, 30 May 2016 03:50:02 -0700 (PDT)
Received: by mail-oi0-f51.google.com with SMTP id w184so256929864oiw.2
	for <yocto@yoctoproject.org>; Mon, 30 May 2016 03:50:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=Pk0cMsRio9OlJ6ocNg8kFtmW6F1LJkZ98A44JDeZthE=;
	b=RgByosGZNGMTMCK0DDDlS4/jKIsryirVWg8EKvA/IUoOV/IO11FnGyp+kYvWRB3wTo
	nrsAeiJC3HaMHN0HpCJAxz1Xa4pAV2CvVzR0T7dHbofHGx8CugXxbqQOLVekkPUGSrkD
	n2KWM0AMMVx5lX5IIXSHnaqWSloXuBiLhj01a2zFd3GRmvz+CxzTkEejtH5B0WpoEqZm
	ANhbUsAQx+RGyd7KFiFsjABYYjW75nbmo3K1+LQVab+C7DXq2T9WJo6bEJktI21Nghhd
	P4t428zHbMxckytdMk0epH9hO4OnkCw82L+EZCN6O4Tw2J63wQoKQonSQXNZvr0+TMCI
	Xq8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=Pk0cMsRio9OlJ6ocNg8kFtmW6F1LJkZ98A44JDeZthE=;
	b=ORTZFf3ZtetsnxCTReAnlNphWn6RsG2lRZbiQA/Q96dQU4CdEBaBUmDPpTycS8RPgb
	4TBW8NzAU+VMC5cSXdprkkoChvwBv8EKygP25SlEiPojxfnetcZPqHw9jX98YztjfKR7
	TH2AYRYoalr5Ujddky6XMi37hhHvmWmXO/PnuLjM2wFyobL8WyjWBXCYPLqp8V0nRpzg
	fVceiaeki35r5JG3SaPClZJsmVqfXTLcLg5R0WyUjZOuB2u/CRM4Q+UALvIb3Y9TvD3V
	0VYAs4DsEYQvkwi9EL3/IeFGOuE2c9vl3afbNLlWENNfo9vE0LMhKj3rGhXrAVKbbMzH
	8CIg==
X-Gm-Message-State: ALyK8tLqboHCTZvKgbC7SlUvzsQVG+uwnU4TJJ12VIci2WNho5E87OUABS9nWhH723iSE3VLdZX8KKtJpzNqTNP2
X-Received: by 10.202.56.70 with SMTP id f67mr574378oia.154.1464605401856;
	Mon, 30 May 2016 03:50:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.61.5 with HTTP; Mon, 30 May 2016 03:49:32 -0700 (PDT)
In-Reply-To: <CAJTo0LYWcMpy+tuex=tVkiqDOEOS2DgU9KUNxkbMogWF7PHDgQ@mail.gmail.com>
References: <1461657420-30392-1-git-send-email-jussi.kukkonen@intel.com>
	<CAJTo0LYWcMpy+tuex=tVkiqDOEOS2DgU9KUNxkbMogWF7PHDgQ@mail.gmail.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Mon, 30 May 2016 13:49:32 +0300
Message-ID: <CAHiDW_G=8jv_xTNJeSNxgcHSttd3jp7hgwC8VhhM3o_HgWF0rA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH][matchbox-wm] wm: Do not set MB theme based on Net/ThemeName
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
X-List-Received-Date: Mon, 30 May 2016 10:50:04 -0000
Content-Type: multipart/alternative; boundary=001a113cc33eb6cfc905340d0403

--001a113cc33eb6cfc905340d0403
Content-Type: text/plain; charset=UTF-8

On 27 May 2016 at 12:32, Burton, Ross <ross.burton@intel.com> wrote:
> On 26 April 2016 at 08:57, Jussi Kukkonen <jussi.kukkonen@intel.com>
wrote:
>>
>> MBWM already supports setting MB theme with "MATCHBOX/THEME",
>> there is no advantage to also set it with "Net/ThemeName" -- the
>> expectation that MBWM has a matching theme for all toolkit themes
>> is not realistic.
>>
>> Net/ThemeName is used by Gtk+ to set Gtk theme so this change allows
>> the Gtk theme and MBWM theme to have different names.
>
> This behaviour is useful though, how about supporting both but having
Matchbox/Theme override Net/ThemeName?

I've solved what I think is the issue by supporting the "MATCHBOX/THEME"
property via the /desktop/poky/interface/wmtheme gconf key (similar to how
"Net/ThemeName" is supported via /desktop/poky/interface/theme) in
xsettings-daemon. So now both can be set at the same time very easily at
runtime -- the override should not be necessary.

 - Jussi

--001a113cc33eb6cfc905340d0403
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 27 May 2016 at 12:32, Burton, Ross &lt;<a href=3D"mailt=
o:ross.burton@intel.com">ross.burton@intel.com</a>&gt; wrote:<br>&gt; On 26=
 April 2016 at 08:57, Jussi Kukkonen &lt;<a href=3D"mailto:jussi.kukkonen@i=
ntel.com">jussi.kukkonen@intel.com</a>&gt; wrote:<br>&gt;&gt;<br>&gt;&gt; M=
BWM already supports setting MB theme with &quot;MATCHBOX/THEME&quot;,<br>&=
gt;&gt; there is no advantage to also set it with &quot;Net/ThemeName&quot;=
 -- the<br>&gt;&gt; expectation that MBWM has a matching theme for all tool=
kit themes<br>&gt;&gt; is not realistic.<br>&gt;&gt;<br>&gt;&gt; Net/ThemeN=
ame is used by Gtk+ to set Gtk theme so this change allows<br>&gt;&gt; the =
Gtk theme and MBWM theme to have different names.<br>&gt;<br>&gt; This beha=
viour is useful though, how about supporting both but having Matchbox/Theme=
 override Net/ThemeName?<br><br>I&#39;ve solved what I think is the issue b=
y supporting the=C2=A0&quot;MATCHBOX/THEME&quot; property via the=C2=A0/des=
ktop/poky/interface/wmtheme gconf key (similar to how &quot;Net/ThemeName&q=
uot; is supported via /desktop/poky/interface/theme) in xsettings-daemon. S=
o now both can be set at the same time very easily at runtime -- the overri=
de should not be necessary.<br><br>=C2=A0- Jussi<br><br><br></div>

--001a113cc33eb6cfc905340d0403--
