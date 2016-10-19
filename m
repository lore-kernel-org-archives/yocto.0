Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6ABECE0050B; Wed, 19 Oct 2016 11:55:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.171 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.171 listed in list.dnswl.org]
Received: from mail-qt0-f171.google.com (mail-qt0-f171.google.com
	[209.85.216.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38694E0045D
	for <yocto@yoctoproject.org>; Wed, 19 Oct 2016 11:55:50 -0700 (PDT)
Received: by mail-qt0-f171.google.com with SMTP id f6so34296332qtd.2
	for <yocto@yoctoproject.org>; Wed, 19 Oct 2016 11:55:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=EJOSv+rWwyHtlmLcyvxFuC6oKypKFpvQLI1vhIEKdvA=;
	b=pCcC6ElyIkOTQjayMs7xESr4LOQHSlk7w/Zdt80vdYIYCH0/nL2umTWdL9vbhl1bva
	9v2vbqkGF9N6Zs+5zP0Zmk6vbMCsdliSJeHne2uoWrxPZDV7myIj3F3ULWLcoUuGjKAY
	m8URc5D0iTzimDahFK39rOQvCRipGnkiti/tZJlvaJEynDyY0HoJUEVL2xwyRZSuHf0t
	poBIVkcPradlYzlveYHNwm4ncrbWvKoyYVOLCAcodUfwNjExikHIyjYWexhlF29IZQV2
	aypO+0vXCCaEGA8L8tA/D4+/UT8MIWlBtNxvFg/JH86jTAjWIwGUxprAP9yN+D00Pe/k
	0l5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=EJOSv+rWwyHtlmLcyvxFuC6oKypKFpvQLI1vhIEKdvA=;
	b=QuSLx8IObMFyHvZrbWHZKZTfxsPA4k/BSgHeBEW8yXuXzd+uaq3n4Wpc5h1uNeRhYE
	MUlydtVGjVXlruhfA9oHFC1aLGuf4cfPXP7MKggeILj8aAHPToiow4d1ChLCTE4nUVF+
	RQW6xq3G1HdTUSI0pnS3vVUThEwd4FatjSj064b/dXPHNsGbfyBHpyGwGBxRVWc83zMb
	GgbL58fGN8ZMhGjHABz+esiFnMSLU9mdFisFuo0qOj8xlmqzFJshBLpizjMHms1QqNu8
	x8k54a1GYVY86/xeZQFjxjgey7HdzA5nLUcKizPlWznWYvwykHdmMszHneYkluPF7Yw1
	Nkyw==
X-Gm-Message-State: AA6/9RlCTp7LG4Wt+qeMSDU3q3PBb66uwVVtPGn9nkXtH5djTGwIWkZ9zXa9p41qmLRWX8q5qed1iAcfX1KYD/ti
X-Received: by 10.200.40.91 with SMTP id 27mr7902000qtr.135.1476903349428;
	Wed, 19 Oct 2016 11:55:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.208 with HTTP; Wed, 19 Oct 2016 11:55:29 -0700 (PDT)
In-Reply-To: <KL1PR0601MB13175BBDFAD7F68C9822C148F8D30@KL1PR0601MB1317.apcprd06.prod.outlook.com>
References: <KL1PR0601MB13175BBDFAD7F68C9822C148F8D30@KL1PR0601MB1317.apcprd06.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 19 Oct 2016 19:55:29 +0100
Message-ID: <CAJTo0LaEWJdfY0b-rHkoNc0kxCU2-rGr5C-thBQapbswe_9XLA@mail.gmail.com>
To: Nick Wareing <nick.wareing@aranzmedical.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Install mozroot-certdata package on a read only root file system
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
X-List-Received-Date: Wed, 19 Oct 2016 18:55:55 -0000
Content-Type: multipart/alternative; boundary=001a1141586882bb84053f3c5b7c

--001a1141586882bb84053f3c5b7c
Content-Type: text/plain; charset=UTF-8

On 18 October 2016 at 23:26, Nick Wareing <nick.wareing@aranzmedical.com>
wrote:

> However I'm running into an issue with a recipe in the meta-mono layer:
> mozroot-certdata. I see the culprit is the pkg_postint script (
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-mono/tree/
> recipes-mono/mozroot-certdata/mozroot-certdata_1.0.0.bb) which needs to
> modify the root file system on first boot which the build system is
> correctly flagging as impossible with a read only root file system:
>
>
You'll have to extend the recipe to run mono inside a qemu, there are
plenty of other recipes that demonstrate how to do this (fontcache and
gio-module-cache classes come to mind, although they also use intercept
scripts to avoid running qemu more than once).  Basically, use the qemu
class.

Ross

--001a1141586882bb84053f3c5b7c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 18 October 2016 at 23:26, Nick Wareing <span dir=3D"ltr">&lt;<a href=3D"=
mailto:nick.wareing@aranzmedical.com" target=3D"_blank">nick.wareing@aranzm=
edical.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p><span=
>However I&#39;m running into an issue with a recipe=C2=A0in the meta-mono =
layer: mozroot-certdata. I see the=C2=A0culprit=C2=A0is the pkg_postint scr=
ipt (<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-mono/tree/re=
cipes-mono/mozroot-certdata/mozroot-certdata_1.0.0.bb" class=3D"m_369120557=
1175405345OWAAutoLink" id=3D"m_3691205571175405345LPlnk425284" target=3D"_b=
lank">http://git.yoctoproject.org/<wbr>cgit/cgit.cgi/meta-mono/tree/<wbr>re=
cipes-mono/mozroot-certdata/<wbr>mozroot-certdata_1.0.0.bb</a>)=C2=A0<wbr>w=
hich
 needs to modify the root file system on first boot which the build system =
is correctly flagging as impossible with a read only root file system:</spa=
n></p>
<p></p></blockquote></div><br>You&#39;ll have to extend the recipe to run m=
ono inside a qemu, there are plenty of other recipes that demonstrate how t=
o do this (fontcache and gio-module-cache classes come to mind, although th=
ey also use intercept scripts to avoid running qemu more than once).=C2=A0 =
Basically, use the qemu class.</div><div class=3D"gmail_extra"><br></div><d=
iv class=3D"gmail_extra">Ross</div></div>

--001a1141586882bb84053f3c5b7c--
