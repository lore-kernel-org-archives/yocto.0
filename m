Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C62D3E00B96; Mon,  7 Nov 2016 02:16:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.179 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f179.google.com (mail-qk0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56416E00563
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2016 02:16:21 -0800 (PST)
Received: by mail-qk0-f179.google.com with SMTP id x190so167915932qkb.0
	for <yocto@yoctoproject.org>; Mon, 07 Nov 2016 02:16:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=qZ7hc3HDGPcJX6j0ulCC+bIp15TGjOm21r6By8QabXQ=;
	b=swRJZEZBp+FDZY9IhvfQT+N4U+tZ4RbVlg/b5PnpiJSGSpI20IoTx4NJpX5Jzi383A
	q/MzHqP+QaRDvVdetWxxEY0FJoSa6KECOZhBG8i746GGeSJRe7oAxjsmOx958TGNSFLX
	/zVdi5IwzwNAetobUOe++Dt57E8eyG526iK3Ca0pjyNSF+LeV4K7ZPlNLW+eGggB0gkM
	JfzZ3bh6+tHg/V1brHJtjYl+uc/8FuZSVlNHoG4FWrvoXtUmGAHRuduwtsMlqJ92MfTH
	g/TrIe/YhDF92qV33izQM4G19d4tj60QEtsR3R30CTAOJ3FsUkb/C+xPohQT3/DdjKMA
	RVsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=qZ7hc3HDGPcJX6j0ulCC+bIp15TGjOm21r6By8QabXQ=;
	b=SB3eNeq/cF4O7OMVndZpZWjvfmKb3plHNKe5anki/QAV04dEWzjuqIu1D+QinzO7dx
	wvqRtdhsVQm+UBMoJt5tPY3ooxKmXcXTkwSxornyVCJks1GbJR6vUeSdWLHQBTjrzmIf
	BgRJW0MY7zYNsqU5vBVfGTD0iQJF5Fd9ENdn+0QSO+wrfSpr+D1jJ2aL9SP4m+Byc3g5
	c0tFFrSiDPPS2yXlyGCNIdP495tBCucZx58WsDBCVJBb2/IIuEYdRQmb8w1WjO/EkcNG
	Wu5HuPnQuN4zHCaU875lLTM22sZA3CrSlZ3peBFV8LChhYdfruBiyocblXLbJqSEhLld
	tnOQ==
X-Gm-Message-State: ABUngveKCE1Kp+cixFtP+5SsWNF4u9beWzPaexSfsy/gtTCMHx9eiAeCrMmx1cufjmpi459nnp4zGpLNTRu6ztOi
X-Received: by 10.55.215.6 with SMTP id m6mr5466816qki.244.1478513780752; Mon,
	07 Nov 2016 02:16:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.85.136 with HTTP; Mon, 7 Nov 2016 02:16:00 -0800 (PST)
In-Reply-To: <CAJTo0LYx6P5z8qxwv9LQwWRL=xMSseggaQsq4GwLJx+L2JjfhQ@mail.gmail.com>
References: <30C2D590D16A5C46ADFE6521910377987FF710E3@AZ-US1EXMB02.global.avaya.com>
	<CAJTo0LYx6P5z8qxwv9LQwWRL=xMSseggaQsq4GwLJx+L2JjfhQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 7 Nov 2016 10:16:00 +0000
Message-ID: <CAJTo0LYp_m4yTnG2TMZsg-XXFJgVWTBMOOGTBEXMoAuY9fQdmQ@mail.gmail.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto "Long Term Support"
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
X-List-Received-Date: Mon, 07 Nov 2016 10:16:23 -0000
Content-Type: multipart/alternative; boundary=001a1149dcbcb29ad10540b35079

--001a1149dcbcb29ad10540b35079
Content-Type: text/plain; charset=UTF-8

On 7 November 2016 at 09:09, Burton, Ross <ross.burton@intel.com> wrote:

> Currently the Yocto Project commits to supporting the previous two
> releases with security fixes.  If you want a longer life-cycle than that
> then it is recommended to approach one of the many OSVs who support Yocto
> Project derived build systems, such as Wind River / Mentor Graphics / ENEA
> / more.  These will have longer support cycles, at least one has the option
> of ten years for security and critical bug fixes.
>

I should follow up by saying that
https://www.yoctoproject.org/ecosystem/member-organizations is a list of
everyone who is a member of the Yocto Project, and lists most of the OSVs
that support YP.

Ross

--001a1149dcbcb29ad10540b35079
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 7 November 2016 at 09:09, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"=
mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);borde=
r-left-style:solid;padding-left:1ex"><div>Currently the Yocto Project commi=
ts to supporting the previous two releases with security fixes.=C2=A0 If yo=
u want a longer life-cycle than that then it is recommended to approach one=
 of the many OSVs who support Yocto Project derived build systems, such as =
Wind River / Mentor Graphics / ENEA / more.=C2=A0 These will have longer su=
pport cycles, at least one has the option of ten years for security and cri=
tical bug fixes.</div><span class=3D"gmail-"><div></div></span></blockquote=
></div><br>I should follow up by saying that=C2=A0<a href=3D"https://www.yo=
ctoproject.org/ecosystem/member-organizations">https://www.yoctoproject.org=
/ecosystem/member-organizations</a> is a list of everyone who is a member o=
f the Yocto Project, and lists most of the OSVs that support YP.</div><div =
class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1149dcbcb29ad10540b35079--
