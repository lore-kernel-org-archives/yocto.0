Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BBF7E00CFF; Tue,  3 Oct 2017 07:51:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.182 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43FEAE00CF5
	for <yocto@yoctoproject.org>; Tue,  3 Oct 2017 07:51:28 -0700 (PDT)
Received: by mail-io0-f182.google.com with SMTP id i197so7857690ioe.9
	for <yocto@yoctoproject.org>; Tue, 03 Oct 2017 07:51:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=rtFXkyWKO33W2zi0WstUAretn0mRJY3V2VkTJZYmLzc=;
	b=rCsP9IWsqqq8Awrgj3hZN+yVPnpNAzNHbbeVBO2xpn1awMD1mCEOl1jHo82mhHrP5E
	Md4Slb5I4LwBRw4jef1UUqsFwkQrFJ49N0eleiBmn//xeeaGd5qUuZkMaCQCQ/rSF2E+
	QOKAQToE2gtxoKsGxIEBwll6QkO45ykathQjjSh/XrG1LhmH4f8Qg8YU8UQhI7/VwOk6
	GEaclwYIKoKeDF0c7Us+ZNGOuVxCoR6c9zASLBGsOsFGY1HpanlPE/mQ+JZgswE4PA5Y
	9yATzeSZKz4YJFKQ3HD+q4YBCPam1nuCBiaJYWt4xUT1wIfxVIdiFqj7PeP3OZY9HIgZ
	IEZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=rtFXkyWKO33W2zi0WstUAretn0mRJY3V2VkTJZYmLzc=;
	b=SDSYO9/Q12ZAmUY7Js+hVAKsC/Oz/8SNQg7gQAP0q+x2KuEWjpaZwAOPOTHX4+7eKG
	l5ISjSoxxSO8Hvh5YbBhfdzZjQuiqUz9BoVE7ugwz2WPmoxg4WvF2UwfTJ7R4PZ6fbFl
	JoV/wVChXskLpk8g1o9nOLryhjgfpQ8JZBzgFjGf8nrbKrlMIZNgwnBc/hiRnavoG4BK
	Dnosg4Na2/IYJsAeW9ebgzOHNmw4pcOrgXmWVRbbC5MUpmd5d8YTIBHqprR9InwuO9Ff
	vWxvtnguwcgy6ZL9TFUNgGC9l9uBt5WfKfD289evxMphP4VZ4PNVNch2SS4lX524PfBU
	slrA==
X-Gm-Message-State: AMCzsaUCmx2gJ2xpYaGZHx11zF6k9QXa6MNMK2ERqcm6BhnhWN4jM/2x
	7z2sNhIblbaaBqdPD2DeBmYa7hw6twHbiEzjHyM7fA==
X-Google-Smtp-Source: AOwi7QAEXw456V0mMryxW1VEoGo9WdmhYvVaScDHm59xkp5WjMAbZk6NLmwOIDzQKQGyacj6LyWzKFqAq9DYoPAEDRQ=
X-Received: by 10.107.133.92 with SMTP id h89mr26988803iod.208.1507042288474; 
	Tue, 03 Oct 2017 07:51:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.164.134 with HTTP; Tue, 3 Oct 2017 07:51:07 -0700 (PDT)
In-Reply-To: <CADS9r7nue8ozf+ma9xYUeNTz+LMAE8nVCzuoRz0ygfMZCM3nPg@mail.gmail.com>
References: <CADS9r7nue8ozf+ma9xYUeNTz+LMAE8nVCzuoRz0ygfMZCM3nPg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 3 Oct 2017 15:51:07 +0100
Message-ID: <CAJTo0Lb=_MUNmD2d3oPy=HtuNw-0d-LJ9vo4atA=eHEOZuxwpA@mail.gmail.com>
To: "eliya.mir@gmail.com" <eliya.mir@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: pkg-config search directories
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
X-List-Received-Date: Tue, 03 Oct 2017 14:51:30 -0000
Content-Type: multipart/alternative; boundary="001a113ff7d0444a7e055aa5a019"

--001a113ff7d0444a7e055aa5a019
Content-Type: text/plain; charset="UTF-8"

On 3 October 2017 at 15:13, eliya.mir@gmail.com <eliya.mir@gmail.com> wrote:

> Hi all,
> I am new to the Yocto project.
> Is this the Yocto forum ?
> I would like configure pkg-config search directories but, the program
> configured from the sysroots file system, so it does not see Host
> environment variables.
> i.e : there are two pkg-config apps : Host's pkg-config located at
> /usr/bin/ , and bitbake pkg-config located at ~/Yocto/build/tmp/sysroots/
> x86_64-linux/usr/bin/
>
>
If you want to access pkg-config files on the host, you'll need to use the
pkg-config-native binary as pkg-config uses the *target* sysroots.

Ross

--001a113ff7d0444a7e055aa5a019
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 3 October 2017 at 15:13, <a href=3D"mailto:eliya.mir@gm=
ail.com">eliya.mir@gmail.com</a> <span dir=3D"ltr">&lt;<a href=3D"mailto:el=
iya.mir@gmail.com" target=3D"_blank">eliya.mir@gmail.com</a>&gt;</span> wro=
te:<br><div class=3D"gmail_extra"><div class=3D"gmail_quote"><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex"><div dir=3D"ltr">Hi all,=C2=A0<br>I am new to the Yocto pr=
oject.=C2=A0<div>Is this the Yocto forum ?=C2=A0</div><div>I would like con=
figure pkg-config search directories but, the program configured from the s=
ysroots file system, so it does not see Host environment variables.</div><d=
iv>i.e : there are two pkg-config apps : Host&#39;s pkg-config located at /=
usr/bin/ , and bitbake pkg-config located at=C2=A0~/Yocto/build/tmp/sysroot=
s/<wbr>x86_64-linux/usr/bin/</div><div><br></div></div></blockquote><div><b=
r></div><div>If you want to access pkg-config files on the host, you&#39;ll=
 need to use the pkg-config-native binary as pkg-config uses the *target* s=
ysroots.</div><div><br></div><div>Ross=C2=A0</div></div></div></div>

--001a113ff7d0444a7e055aa5a019--
