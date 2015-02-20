Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA617E00853; Fri, 20 Feb 2015 05:16:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qc0-f179.google.com (mail-qc0-f179.google.com
	[209.85.216.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A7C7E00837
	for <yocto@yoctoproject.org>; Fri, 20 Feb 2015 05:16:32 -0800 (PST)
Received: by qcyl6 with SMTP id l6so514339qcy.2
	for <yocto@yoctoproject.org>; Fri, 20 Feb 2015 05:16:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=0Xpom06+2aE15aSxFXQvIOaHAiCDxviGqyK4VwDDlFU=;
	b=AMeVOGR6CRM9DG6BMEPMeVDn0pdxf99ZG4mhwtH31AIk09qLvY8W/AMoOpgB13Ck0J
	C9E/HmeXTbj8Xg3XwVad1/ljxoIbFaWe7YuPbJ0Yx1pJpDoheWmhGwYewvXh2DrlLVEV
	B8YzPJ2AhfcNEjuo2VjXaT33KMzgjN7ige6fDFxK7iuTWUJ/38b+/DkIK/N3YLx79gr4
	fUcwjrSWhf/Q51JnfbAuTwQAeBpGDsSl2Cz4DxznYwCxAxX40Y19YPlIf4ogJTDbpDHY
	gUoCjpQUBHe7NHDf4xHeZ/0YRc3MD7T/oplv/gzZOMj8Pv8s9Ksx/glBmHFsyybgbbRp
	dOfg==
X-Gm-Message-State: ALoCoQkJqGs7tk+qlzi++PzA1E0wXS3GCLHTw5HKmTdvMP3EPmmRSZY5MiDrtaMqPyR8qCoWsCEU
X-Received: by 10.140.84.165 with SMTP id l34mr6216455qgd.80.1424438192383;
	Fri, 20 Feb 2015 05:16:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.102.203 with HTTP; Fri, 20 Feb 2015 05:16:12 -0800 (PST)
In-Reply-To: <54E72D96.9040504@mlbassoc.com>
References: <54E72D96.9040504@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 20 Feb 2015 13:16:12 +0000
Message-ID: <CAJTo0La_Ky_1voaDaCt=m_XZMFnTCD__JpvMmDBF+dC+ynpcaA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: glibc fetching problems
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
X-List-Received-Date: Fri, 20 Feb 2015 13:16:35 -0000
Content-Type: multipart/alternative; boundary=001a11c1558c765d58050f84dc6a

--001a11c1558c765d58050f84dc6a
Content-Type: text/plain; charset=UTF-8

On 20 February 2015 at 12:50, Gary Thomas <gary@mlbassoc.com> wrote:

> This is because any attempt to clone that repo breaks:
>   $ git clone git://sourceware.org/git/glibc.git
>   Cloning into 'glibc'...
>   fatal: read error: Connection reset by peer
>

Works for me:

$ git clone git://sourceware.org/git/glibc.git
Cloning into 'glibc'...
remote: Counting objects: 408341, done
...

Transient error?

--001a11c1558c765d58050f84dc6a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 20 February 2015 at 12:50, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"=
mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-s=
tyle:solid;padding-left:1ex"><div id=3D":ba" class=3D"" style=3D"overflow:h=
idden">This is because any attempt to clone that repo breaks:<br>
=C2=A0 $ git clone git://<a href=3D"http://sourceware.org/git/glibc.git" ta=
rget=3D"_blank">sourceware.org/git/<u></u>glibc.git</a><br>
=C2=A0 Cloning into &#39;glibc&#39;...<br>
=C2=A0 fatal: read error: Connection reset by peer</div></blockquote></div>=
<br></div><div class=3D"gmail_extra">Works for me:</div><div class=3D"gmail=
_extra"><br></div><div class=3D"gmail_extra"><div class=3D"gmail_extra">$ g=
it clone git://<a href=3D"http://sourceware.org/git/glibc.git">sourceware.o=
rg/git/glibc.git</a></div><div class=3D"gmail_extra">Cloning into &#39;glib=
c&#39;...</div><div class=3D"gmail_extra">remote: Counting objects: 408341,=
 done</div><div class=3D"gmail_extra">...</div><div class=3D"gmail_extra"><=
br></div><div class=3D"gmail_extra">Transient error?</div></div></div>

--001a11c1558c765d58050f84dc6a--
