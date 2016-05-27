Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79B04E00E29; Fri, 27 May 2016 02:33:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F737E00DAD
	for <yocto@yoctoproject.org>; Fri, 27 May 2016 02:33:17 -0700 (PDT)
Received: by mail-io0-f173.google.com with SMTP id f8so68729127ioe.3
	for <yocto@yoctoproject.org>; Fri, 27 May 2016 02:33:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=RnRfnKCViBqtDF6nPPD6DE7+uxaVVZ/Dtr4dA5moLG0=;
	b=VvGVKUKXol5xBgeqX6cTQGNyTERgTTAt1Xp9jnMulDaUTp9+53kOXmkMnNvrTEsp82
	s0ElasS7nAwS7U2REHfuR4bBL75xljqYVJ+ZGnQiwAcp6f2ERHcPsBTfjd4YtBU9Wmn7
	rx/6tXge0fHPNoPHjHoaFOFPLjr9NGi7v2NBhEgs3aQvXTOIbyHwowGKlEfulAsZLbLY
	/ndcxEeGsBobt0GC+Z0TyS/JyYKlq6MwmYefwfcQV6quLakWoFMQ+/FvX5g1mnCqcDQt
	BgY3WXkrf2JxYtMXENDYau78Wx23iZz9DlsqBDtezUP8byhDL+B9ZvmGLObBeEcFGeVc
	IRjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=RnRfnKCViBqtDF6nPPD6DE7+uxaVVZ/Dtr4dA5moLG0=;
	b=mOWsYHnWGB9d4TVeGVCJJQC9SmgQR165Km09Vl5ouFeEKjLsc7w376ggF4ZKhmVdi1
	6nLZaphAwFfP98LWwCzG34ZAi18faJWtVi5LrgVzAUFcdC1f88zWSW41odmHEJ9v1R6a
	5ZDe6yHceYOxyaK2dCXMAlfYZZvb1xwmZOooW7p2O5q9dR6JWSlVISRq8uL3KtzAkjfi
	kYvLqUjvTJBPTDlNgC87RkfA8FnenxAPXVATCe5BJhiyrZveaGRmYhPnwGp3E7O1EgUI
	3DLUPlmDF9NCidCiPIZSu/WiWDtJaiMBGPNYLpjhG2Ng1rwXcEYXE1LRpfr5fWoRjTM6
	jdvQ==
X-Gm-Message-State: ALyK8tIBcbtagpJTPlnqXYHNdGTQiZ0+sSaeDURr6SjHrljkZau5htQzbsfWgIqSLvPH7JU4185oimZeXcq4EWXQ
X-Received: by 10.107.135.234 with SMTP id r103mr13427427ioi.133.1464341597375;
	Fri, 27 May 2016 02:33:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Fri, 27 May 2016 02:32:57 -0700 (PDT)
In-Reply-To: <1461657420-30392-1-git-send-email-jussi.kukkonen@intel.com>
References: <1461657420-30392-1-git-send-email-jussi.kukkonen@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 27 May 2016 10:32:57 +0100
Message-ID: <CAJTo0LYWcMpy+tuex=tVkiqDOEOS2DgU9KUNxkbMogWF7PHDgQ@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 27 May 2016 09:33:21 -0000
Content-Type: multipart/alternative; boundary=001a113fc2b6bdda130533cf9882

--001a113fc2b6bdda130533cf9882
Content-Type: text/plain; charset=UTF-8

On 26 April 2016 at 08:57, Jussi Kukkonen <jussi.kukkonen@intel.com> wrote:

> MBWM already supports setting MB theme with "MATCHBOX/THEME",
> there is no advantage to also set it with "Net/ThemeName" -- the
> expectation that MBWM has a matching theme for all toolkit themes
> is not realistic.
>
> Net/ThemeName is used by Gtk+ to set Gtk theme so this change allows
> the Gtk theme and MBWM theme to have different names.
>

This behaviour is useful though, how about supporting both but having
Matchbox/Theme override Net/ThemeName?

Ross

--001a113fc2b6bdda130533cf9882
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 26 April 2016 at 08:57, Jussi Kukkonen <span dir=3D"ltr">&lt;<a href=3D"=
mailto:jussi.kukkonen@intel.com" target=3D"_blank">jussi.kukkonen@intel.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":2cs" c=
lass=3D"a3s aXjCH m15451933e10b6d6d">MBWM already supports setting MB theme=
 with &quot;MATCHBOX/THEME&quot;,<br>
there is no advantage to also set it with &quot;Net/ThemeName&quot; -- the<=
br>
expectation that MBWM has a matching theme for all toolkit themes<br>
is not realistic.<br>
<br>
Net/ThemeName is used by Gtk+ to set Gtk theme so this change allows<br>
the Gtk theme and MBWM theme to have different names.</div></blockquote></d=
iv><br>This behaviour is useful though, how about supporting both but havin=
g Matchbox/Theme override Net/ThemeName?</div><div class=3D"gmail_extra"><b=
r></div><div class=3D"gmail_extra">Ross</div></div>

--001a113fc2b6bdda130533cf9882--
