Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79CD9E00ABE; Thu, 30 Jul 2015 06:13:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f44.google.com (mail-qg0-f44.google.com
	[209.85.192.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4252FE00A7E
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 06:13:30 -0700 (PDT)
Received: by qgii95 with SMTP id i95so23422450qgi.2
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 06:13:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=nDtNmLulpmvxozxqWuRxOKFijAPnM+xCzr7uhcyqocw=;
	b=g85hcMG2X6fbNcg9b+i+9jhuMHHBecb2aw2b9bd+T+QheLjAjTqP2xboA4MxwLzgAX
	rKbNBrWyifnk+gnqjnFtRRxZyn1+lFzl1G8P6Y8OHcWnZWC3JykmyGMH554HOI4NnOJS
	RsvlxjekLkTsPPj0eFm68QWT1H4X1Xaq/qL+2v3I+V0jVGSza9aG84RcS4mf701B+Apx
	4bQ02JCXRFTYB7DmxtMywwC+RmE/sPpBO9QfAhZLvauuml6Ed3eWFIBWgBPVc8feJ/eX
	wqJkjFmCrOJR1lI5VYSNlhQPIq5+HK0mmlGFuo+hPTZ/AKCZaarN+R/cvw3+HC3y5gSN
	+gRQ==
X-Gm-Message-State: ALoCoQltE27b5IQ8QT822Fe58Fq0y+TnG52+stch+3T35Gl9WwdsmiuiHPDeXH+cDTtdIaWQzysy
X-Received: by 10.141.28.200 with SMTP id f191mr5387825qhe.52.1438262010187;
	Thu, 30 Jul 2015 06:13:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.195 with HTTP; Thu, 30 Jul 2015 06:13:10 -0700 (PDT)
In-Reply-To: <9EB14782B17D6549A78433A42753B30B244FA86A@EUNOEUR-EXS010.teu.tomra.corp>
References: <9EB14782B17D6549A78433A42753B30B244FA7F7@EUNOEUR-EXS010.teu.tomra.corp>
	<CAJTo0Lb-y1MG9-uPP+kDE5gUNFPOvrAEnbevG=gN9-cOwZeCaw@mail.gmail.com>
	<9EB14782B17D6549A78433A42753B30B244FA86A@EUNOEUR-EXS010.teu.tomra.corp>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 30 Jul 2015 14:13:10 +0100
Message-ID: <CAJTo0LYdiFMjc7cJts4nuBqrFM_HcGa-tt=th+m2fHe1QZ+NwQ@mail.gmail.com>
To: Eirik Solberg Hamnvik <eirik.solberg.hamnvik@tomra.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Core-image-weston network problems
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
X-List-Received-Date: Thu, 30 Jul 2015 13:13:33 -0000
Content-Type: multipart/alternative; boundary=001a114234123641d4051c1778c0

--001a114234123641d4051c1778c0
Content-Type: text/plain; charset=UTF-8

On 30 July 2015 at 14:08, Eirik Solberg Hamnvik <
eirik.solberg.hamnvik@tomra.com> wrote:

> Thanks! It worked out for me. I made a RC script and placed it in
> /etc/init.d/. In /etc/rc5.d/ I added a symlink which was after the network
> symlink. Worked great .
>
>
Beware races - it only worked because networking came up quickly.

Ross

--001a114234123641d4051c1778c0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 30 July 2015 at 14:08, Eirik Solberg Hamnvik <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:eirik.solberg.hamnvik@tomra.com" target=3D"_blank">eirik.solbe=
rg.hamnvik@tomra.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
"><p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;fon=
t-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Thanks! =
It worked out for me. I made a RC script and placed it in /etc/init.d/. In =
/etc/rc5.d/ I added a symlink which was after the network symlink.
 Worked great . <u></u><u></u></span></p>
<p class=3D"MsoNormal"></p></blockquote></div><br>Beware races - it only wo=
rked because networking came up quickly.</div><div class=3D"gmail_extra"><b=
r></div><div class=3D"gmail_extra">Ross</div></div>

--001a114234123641d4051c1778c0--
