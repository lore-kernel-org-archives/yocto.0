Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09B20E0052B; Fri, 17 Mar 2017 04:50:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.170 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f170.google.com (mail-qk0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97244E003C1
	for <yocto@yoctoproject.org>; Fri, 17 Mar 2017 04:50:44 -0700 (PDT)
Received: by mail-qk0-f170.google.com with SMTP id p64so62019401qke.1
	for <yocto@yoctoproject.org>; Fri, 17 Mar 2017 04:50:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DZ/Oyog7FbxT/o20DeXjOpyFYCPousQmoHsa7hUBM54=;
	b=DwuELgOQBuH7+/6r3g8XVk2u4XWDumRoa6G27Olda9rA3aJVW2sBOSPckMFC/jB5Fn
	OiPX+Ps47YqImrIfVKZSnYObtVEq/ltCfRrzRSm62FpvVJST+95wVGNTgJj6T//zsjOk
	hfxjCUPbJyRVCWJDWSciVsPHGdiC/uDv3MM4TJJ30QeYnJieEIJlNF5td0YIoS+G8BYf
	CNsCYBoSSsgCgzfq1wjvkpLRYrmgUmx83IoAQ+ST/lLIlDfMzkJdhDEGTLrO/z+HVpH3
	XYkGpM0k5L9FZOH5Gk8X7xBmQfFpcpTpAqBUuys14EH6OiafdL0uoHmO5Kqe8RCznd8V
	A3KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DZ/Oyog7FbxT/o20DeXjOpyFYCPousQmoHsa7hUBM54=;
	b=WD7US++a1Eg0/yB6BbGMIFZZyu6UjAU+DfPH0FYynRAmZXypcaVAaqCHb0vNwq1FEx
	gZpKbim/4ZshzkDgfusVuwZonniCXunPlpC7Vw2dVUJSESt7kVSJnJk55naG2gGZjAfM
	C9j+vIVSZKmH3WZi5eBSWMyIGvMTmPJSt/AtKlFCS9bP54u4c/9+9kxlmZDpmUXh938i
	gxwnbO+42VzkVVuL2p11EP5jjdERStdDKIuBoCNDraZnO6CwcGFhVgiAKPJSJ++wry5X
	YkJVe8M4PSgClSFA6Xf6a7Bl5vMKnFwsnpKqAyUHwVAuDJTfpJ7gB3MBi+A7sdueBKcw
	7jgQ==
X-Gm-Message-State: AFeK/H0CshVNFKq2/nzRUPp9DllpVn29jbIOuhUsvmVB9E59jM7A2nSCJSTadRC4eLYMBU9TkKg+xaPbY/beKCVQ
X-Received: by 10.55.221.1 with SMTP id n1mr11798900qki.221.1489751443566;
	Fri, 17 Mar 2017 04:50:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Fri, 17 Mar 2017 04:50:23 -0700 (PDT)
In-Reply-To: <MWHPR0101MB29577CA8CFDD7DD137A0D290B6390@MWHPR0101MB2957.prod.exchangelabs.com>
References: <MWHPR0101MB29577CA8CFDD7DD137A0D290B6390@MWHPR0101MB2957.prod.exchangelabs.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 17 Mar 2017 11:50:23 +0000
Message-ID: <CAJTo0LYeysQd-qwj3dD_mvQbHxKbmm2B=zLS=WtLARvB5VMKHQ@mail.gmail.com>
To: Takashi Matsuzawa <tmatsuzawa@xevo.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: epiphany for wayland only environemnt?
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
X-List-Received-Date: Fri, 17 Mar 2017 11:50:46 -0000
Content-Type: multipart/alternative; boundary=001a1149d7dc994b7d054aebc9da

--001a1149d7dc994b7d054aebc9da
Content-Type: text/plain; charset=UTF-8

On 17 March 2017 at 10:08, Takashi Matsuzawa <tmatsuzawa@xevo.com> wrote:

> I can see midori, epiphay, or other browser 'should run' on wayland
> environment, but it seems they rely graphics libraries that still depends
> on x11 and in Yocto recipes x11 DISTRO_FEATURES is being set as requirement
> for them.
>
> The GNOME stack can mostly run under Wayland natively, so it should be
possible with a bit of tweaking to build Epiphany without X11.  You might
need to look at the pieces where x11 is marked as a requirement and see if
that's isn't true anymore, or if it can be made optional.

Ross

--001a1149d7dc994b7d054aebc9da
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 17 March 2017 at 10:08, Takashi Matsuzawa <span dir=3D"ltr">&lt;<a href=
=3D"mailto:tmatsuzawa@xevo.com" target=3D"_blank">tmatsuzawa@xevo.com</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p>I can see midori, epi=
phay, or other browser &#39;should run&#39; on wayland environment, but it =
seems they rely graphics libraries that still depends on x11 and in Yocto r=
ecipes x11 DISTRO_FEATURES is being set as requirement for them.</p>
<p></p></blockquote></div>The GNOME stack can mostly run under Wayland nati=
vely, so it should be possible with a bit of tweaking to build Epiphany wit=
hout X11.=C2=A0 You might need to look at the pieces where x11 is marked as=
 a requirement and see if that&#39;s isn&#39;t true anymore, or if it can b=
e made optional.</div><div class=3D"gmail_extra"><br></div><div class=3D"gm=
ail_extra">Ross</div></div>

--001a1149d7dc994b7d054aebc9da--
