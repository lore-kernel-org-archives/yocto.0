Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EDAFEE00CC4; Mon, 21 Mar 2016 04:27:54 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 922B1E00CC2
	for <yocto@yoctoproject.org>; Mon, 21 Mar 2016 04:27:51 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id o5so121527937iod.2
	for <yocto@yoctoproject.org>; Mon, 21 Mar 2016 04:27:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=2FmdLBdfFonEPtT85yECYLl1RFBdZiQm2d40k5N20nw=;
	b=jgAeD4yFhfRSAskZiLYin9q27KHbuOschn1LJ5S9JT4NK3rlG9HVqL1vMAr6Od5VPy
	hHswbShikgxfupcsAsPRtwk/8xUQMAYj3bgPBQopxJIVrWN692fV6Hmal3N+frYrRHTY
	0aokSIHehXiZdWWiR5rjPnENBC6TDDcFBigtlvEkmqROCOviqbAaL0QfutOFWRuUadEB
	DQWgLo1ZnHPMvHYTp4lR+hkiwH+5+ov5hmCAklqKkBm1tnSjCNH2w1CEqGYWtLRDFW9H
	dZruwHmhx1IoC/1E/0gYOHAcDW00bUdycXNz3TmRdFo38iw39a+Gdh/6mCFrftfzZSzp
	DuEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=2FmdLBdfFonEPtT85yECYLl1RFBdZiQm2d40k5N20nw=;
	b=jUAUhrI2mbTU82MhxL5Y3+v8tXG9cU1NSIbIstGUyYoVqmuupfAxNyDQOnTCB0lIMa
	IJTX0Cl88yHQDhYwxOfhPR6yHMvS8EG2mlXKzi7uKEuCq79McvsbOL1skyv0YAEtJmMr
	YIl9wv7Q9ZKMD6qovQ9RlG2O5WZnMC2+Wf7IFK3K2I3WiJr5QH3SgKXxfa+I/RMMvuWo
	L0UTZFJ6qbdfCjxsItAim7Jj3afRWU5Mrtq2e2uIvGbhpS2xlgoQ3ujALRJ+TDzEZK35
	PjDAzBx/x/5GBCgUrqnhizS82C5THp7UAWo72kdBz9r9i1aZK4aHPr9PuImn8x9MkYls
	WD5A==
X-Gm-Message-State: AD7BkJKdsYvqEUiIeMlUsrx7lDbi3htQFPqpnhnLuuO6/dZ1fSB06NIT2//lyWrbEJ9czuUU9CiuxYChbmb3C82L
X-Received: by 10.107.16.19 with SMTP id y19mr25512858ioi.148.1458559670715;
	Mon, 21 Mar 2016 04:27:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Mon, 21 Mar 2016 04:27:30 -0700 (PDT)
In-Reply-To: <1458473077-22833-1-git-send-email-jussi.kukkonen@intel.com>
References: <1458473077-22833-1-git-send-email-jussi.kukkonen@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 21 Mar 2016 11:27:30 +0000
Message-ID: <CAJTo0Lbcb_Yva5_p_2YCL8wnp8M-j_FbE4HAOZqVd5eEARuX4g@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [matchbox-panel-2][PATCH] showdesktop: Make sure active state is initialized
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
X-List-Received-Date: Mon, 21 Mar 2016 11:27:55 -0000
Content-Type: multipart/alternative; boundary=001a113fd1ea0e9a35052e8d632b

--001a113fd1ea0e9a35052e8d632b
Content-Type: text/plain; charset=UTF-8

On 20 March 2016 at 11:24, Jussi Kukkonen <jussi.kukkonen@intel.com> wrote:

> There are cases (in qemu at least) where set_active()
> is never called on startup. Make sure we initialize the active
> state so the icon gets loaded and the applet is not confused
> about the current state.
>

Pushed to master, thanks.

Ross

--001a113fd1ea0e9a35052e8d632b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 20 March 2016 at 11:24, Jussi Kukkonen <span dir=3D"ltr">&lt;<a href=3D"=
mailto:jussi.kukkonen@intel.com" target=3D"_blank">jussi.kukkonen@intel.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":ap7" c=
lass=3D"a3s" style=3D"overflow:hidden">There are cases (in qemu at least) w=
here set_active()<br>
is never called on startup. Make sure we initialize the active<br>
state so the icon gets loaded and the applet is not confused<br>
about the current state.</div></blockquote></div><br>Pushed to master, than=
ks.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ro=
ss</div></div>

--001a113fd1ea0e9a35052e8d632b--
