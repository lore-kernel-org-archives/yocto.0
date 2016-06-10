Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04003E00D00; Fri, 10 Jun 2016 03:48:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65EB9E00CC0
	for <yocto@yoctoproject.org>; Fri, 10 Jun 2016 03:48:26 -0700 (PDT)
Received: by mail-io0-f177.google.com with SMTP id 5so62158919ioy.1
	for <yocto@yoctoproject.org>; Fri, 10 Jun 2016 03:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=jgTzIBUTe3CHBL1T0Co0bIkBxQe6veBr9NZI/t0NA9Y=;
	b=U6rT9szO1BPpi43WpYHYaRVNkdY/NjXqdEXH9VJ4xXWGAs9Q2ELodJGrfAQD5nkiAV
	GKbDxFGSsfUVlHKs9RJVPDNcN6G+MHti+WBGD/6N9/q36pL/7noRzQgc7OYW9f0PUOoe
	bzwSHkOXpWscnm47EKcvlCtvmbsWe/+jDtNP5+q5h2+eIzInkuoKblH44alT/FVCNksy
	8ziYTJw2R5GAOOSev/44DO7bOLfG3WJAvk3r6Z4/F1EEfW+EdIvB/v57vmAKqR7lcNf2
	t/SU6t3WLf5zA9WUkttaubnOObV7qlk8E2XR9jBnV+AVvKtD8I3mUUqKqxk5636eIr6r
	Bf6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=jgTzIBUTe3CHBL1T0Co0bIkBxQe6veBr9NZI/t0NA9Y=;
	b=SPj07yakjur/2htec0sntbJ4U7BOvsPezSNNQHIIyhCD3uiCCA4UclSj+WVnE3p8aQ
	mE2r4aonCnJH1Z3ObZwtQWDWsBx6Y3kTzTK/rrNuo5HbSclsL/uLXN0sXIhy7jZsKLCF
	0wTQ/EUlvP3VYYRKcEn+r3U9hGng4+fmYsUfCC7OZLSnb7cRKBH3sDRTQ4oGYtWnOjxq
	ukQ03/xbH3QCjGcei2owTsVRzK5zAvLXu/FNVsQ8J8gkC72PADArD1h0mjTx1l1mzgi/
	ESmc69ucr3MAKnSg052NA9DtLt8gqA4bEkeiyPJBv4V15/IMdklrOlR4G/kH1whEBM64
	RBiQ==
X-Gm-Message-State: ALyK8tJeH9ZIjM1DZB3I0YqmIOtfurlaU2jzSNe8jypB6xdiw7kmmIygrC7aEpDatHcWugjHSG+SYvrKpIC6tyVa
X-Received: by 10.107.179.9 with SMTP id c9mr2579717iof.99.1465555706144; Fri,
	10 Jun 2016 03:48:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Fri, 10 Jun 2016 03:48:06 -0700 (PDT)
In-Reply-To: <20160610055410.GA20384@mbabyjoh-desk.ger.corp.intel.com>
References: <575A7B40.9050509@mlbassoc.com> <575A7CAF.2050207@mlbassoc.com>
	<CAJTo0LZenM_UO1QRzWCVDGyurcyzKNrYnHVYjmCSpyJNfjK85w@mail.gmail.com>
	<575A9117.2080203@mlbassoc.com>
	<20160610055410.GA20384@mbabyjoh-desk.ger.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 10 Jun 2016 11:48:06 +0100
Message-ID: <CAJTo0LZJoNCUgJq2Uy7PG1Z4WoNjBZ6PDgra=rztJRKmiaauqA@mail.gmail.com>
To: "Maxin B. John" <maxin.john@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: Another python3 error?
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
X-List-Received-Date: Fri, 10 Jun 2016 10:48:28 -0000
Content-Type: multipart/alternative; boundary=001a114857624380410534ea4762

--001a114857624380410534ea4762
Content-Type: text/plain; charset=UTF-8

On 10 June 2016 at 06:54, Maxin B. John <maxin.john@intel.com> wrote:

>
> Had the same experience. We need to modify depexp.py to support python3:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=maxin/depexp
> ( Please note that this is a work in progress )
>

Ah my plan to leave it until someone else fixes it has finally worked.
Thanks Maxin, it needed a rewrite in PyGI. :)

Ross

--001a114857624380410534ea4762
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 10 June 2016 at 06:54, Maxin B. John <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:maxin.john@intel.com" target=3D"_blank">maxin.john@intel.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><span class=3D""><br>
</span>Had the same experience. We need to modify depexp.py to support pyth=
on3:<br>
<br>
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3D=
maxin/depexp" rel=3D"noreferrer" target=3D"_blank">http://git.yoctoproject.=
org/cgit/cgit.cgi/poky-contrib/log/?h=3Dmaxin/depexp</a><br>
( Please note that this is a work in progress )<br></blockquote></div><br>A=
h my plan to leave it until someone else fixes it has finally worked.=C2=A0=
 Thanks Maxin, it needed a rewrite in PyGI. :)</div><div class=3D"gmail_ext=
ra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a114857624380410534ea4762--
