Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A328E00949; Thu,  2 Apr 2015 07:20:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qc0-f174.google.com (mail-qc0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEF3AE00777
	for <yocto@yoctoproject.org>; Thu,  2 Apr 2015 07:20:35 -0700 (PDT)
Received: by qcrf4 with SMTP id f4so55593310qcr.0
	for <yocto@yoctoproject.org>; Thu, 02 Apr 2015 07:20:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=4Puh8/GA2Bc4cdiY1YPzaJ8+SGywNQ2jJ9tSPBwBPzQ=;
	b=guZ2XILU7zwjDk/GTQBbtxT0TM2luTOEbY5ZVaVdwFwmyx2qdVnRVhbWP/lB4TPimS
	pUluumLVCknbjxS02/3ZkBdc9o6Ifds6G8dBDbG3sVvhCX9QdiSV+kK4SplwB0c+Yyf/
	A2VXOETfn9rvyDvMezN4Daey4Lh3l7r9kZReRy3DnMwuNu9MBtcCEPp25/YP8rkKG5b+
	FwU9pUZR8r1r8hCV17WMYQHcp+HUE9fN2QPLEk8WjQ4D7owQTPIe7pAe5BnzQoJvRRjm
	N8rXrlTlb2jKSbmLubYJ3oxOYmUjtqtCqAMy12fT7+DtFWutCk6VzD6LSX/LHvBZtH8B
	Zdbg==
X-Gm-Message-State: ALoCoQkkEE2X30yH1A64XlgxKkH5uEmKlN1xAIm/FHasV0xG68jrCWYSb3B4SD/YYNMCWJwR0OgW
X-Received: by 10.55.53.137 with SMTP id c131mr36354428qka.102.1427984434609; 
	Thu, 02 Apr 2015 07:20:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.203 with HTTP; Thu, 2 Apr 2015 07:20:14 -0700 (PDT)
In-Reply-To: <7858CE2B355E1A438F13002DDE9D639401110780D4@vie196nt>
References: <7858CE2B355E1A438F13002DDE9D639401110780D4@vie196nt>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 2 Apr 2015 15:20:14 +0100
Message-ID: <CAJTo0LaAt_f3EUkaQQ6WpofRryrk+Q6=Gj3c0youZ_KzLVA=aQ@mail.gmail.com>
To: PIEWALD Georg <Georg.PIEWALD@frequentis.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Devshell configuration
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
X-List-Received-Date: Thu, 02 Apr 2015 14:20:37 -0000
Content-Type: multipart/alternative; boundary=001a11476f56f8562b0512be88d8

--001a11476f56f8562b0512be88d8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 1 April 2015 at 08:59, PIEWALD Georg <Georg.PIEWALD@frequentis.com>
wrote:

> Ideally I would imagine that I can somewhere configure the exact command
> that is called when I execute "bitbake xxx =E2=80=93c devshell". If that'=
s not
> possible, can I at least change some of the points mentioned above?
>
>
For most things you said not currently, but classes/devshell.bbclass and
classes/terminal.bbclass are where the logic lies, so patches are welcome.

Ross

--001a11476f56f8562b0512be88d8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 1 April 2015 at 08:59, PIEWALD Georg <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:Georg.PIEWALD@frequentis.com" target=3D"_blank">Georg.PIEWALD@frequent=
is.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p class=3D"=
MsoNormal">Ideally I would imagine that I can somewhere configure the exact=
 command that is called when I execute &quot;bitbake xxx =E2=80=93c devshel=
l&quot;. If that&#39;s not possible, can I at least change some of the poin=
ts mentioned above?<u></u><u></u></p>
<p class=3D"MsoNormal"></p></blockquote></div><br>For most things you said =
not currently, but classes/devshell.bbclass and classes/terminal.bbclass ar=
e where the logic lies, so patches are welcome.</div><div class=3D"gmail_ex=
tra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a11476f56f8562b0512be88d8--
