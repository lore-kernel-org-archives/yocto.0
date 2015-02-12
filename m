Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9694E00824; Thu, 12 Feb 2015 13:33:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.48 listed in list.dnswl.org]
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E610E00546
	for <yocto@yoctoproject.org>; Thu, 12 Feb 2015 13:33:47 -0800 (PST)
Received: by mail-qa0-f48.google.com with SMTP id dc16so4250594qab.7
	for <yocto@yoctoproject.org>; Thu, 12 Feb 2015 13:33:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=T//2EBgGc0dF4RBkFvpDlnmeGlgx5Y7I/PK4D3wrAqs=;
	b=SWurEtXLWQAAmW+FvDDt9JCB+FVeFFeBrwX2AufLYCEB883HL5vqvogJYRLPpD0Qjr
	soLicQQq36RirKHh2SgPrS1SgW7TJMhrMyuVK3F10tfOCOwmtdxzcwWwqdwTTza80YzP
	+rSWQqa+LmTSJKPmKYTJUMr9cgFq++xr4Q9cZ7zHl4x2x+bjhA8rdEeRFD+mAPJCy9aX
	S8qBZiIIJJdBT5j/P++/fvlbmHfBFeQW+x5sok4tV71db4KTW//zXt8KwEXs4N7NweBA
	N0qrIeyFnDauSoZ98EAkV8v2PKvJe55GAKc3xnHPm9MJZm6M0xJhAVGKeXz6T5QAf91s
	T6Eg==
X-Gm-Message-State: ALoCoQlXlShTb9ZYebyHOTZwzWgg+EVL4m7ipHb60vBrjMd7gcHsoAAK4YrlI46fo5VrBhuMMPH8
X-Received: by 10.140.49.5 with SMTP id p5mr14666298qga.15.1423776826332; Thu,
	12 Feb 2015 13:33:46 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.166 with HTTP; Thu, 12 Feb 2015 13:33:25 -0800 (PST)
In-Reply-To: <54DD1A4C.60004@mlbassoc.com>
References: <54DD1A4C.60004@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 12 Feb 2015 21:33:25 +0000
Message-ID: <CAJTo0LYSUvVvcu7-CubRfNEaJi8vRJMzK=0Nx_O-hFswvFhkoA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Why did my build need to redo so many tasks?
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
X-List-Received-Date: Thu, 12 Feb 2015 21:33:50 -0000
Content-Type: multipart/alternative; boundary=001a11351944f93005050eeadf32

--001a11351944f93005050eeadf32
Content-Type: text/plain; charset=UTF-8

On 12 February 2015 at 21:25, Gary Thomas <gary@mlbassoc.com> wrote:

> Yesterday, I built a large image using Poky/Yocto 870323cac1e
> Today I updated my Poky repo to 231d4a9d3
>
> When I rebuilt the same image, bitbake kicked off more than
> 5200 tasks, building virtually every package from scratch.
>
> How can I tell why this happened?  I don't have buildhistory
> enabled, but I do still have the tmp & sstate-cache trees
> from the process.  Is there enough info laying around that
> I can tell, e.g. why the GCC toolchain had to be rebuilt
> completely?
>
> Am I correct in assuming that bitbake-whatchanged is really
> a Quija board and can only tell me [in advance] what will need
> to be done if my layers change?  When I ran it after the long
> build above, it didn't really tell me much :-(
>

If you checkout the first commit, do a build, then the second commit and
run bitbake-whatchanged, it should tell you the difference.

Looking at the git log shows cc5f80, which is a change to libtool, so
everything inheriting autotools will need a rebuild.

Ross

--001a11351944f93005050eeadf32
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 12 February 2015 at 21:25, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"=
mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div id=3D":k0b" class=3D"a3s" s=
tyle=3D"overflow:hidden">Yesterday, I built a large image using Poky/Yocto =
870323cac1e<br>
Today I updated my Poky repo to 231d4a9d3<br>
<br>
When I rebuilt the same image, bitbake kicked off more than<br>
5200 tasks, building virtually every package from scratch.<br>
<br>
How can I tell why this happened?=C2=A0 I don&#39;t have buildhistory<br>
enabled, but I do still have the tmp &amp; sstate-cache trees<br>
from the process.=C2=A0 Is there enough info laying around that<br>
I can tell, e.g. why the GCC toolchain had to be rebuilt<br>
completely?<br>
<br>
Am I correct in assuming that bitbake-whatchanged is really<br>
a Quija board and can only tell me [in advance] what will need<br>
to be done if my layers change?=C2=A0 When I ran it after the long<br>
build above, it didn&#39;t really tell me much :-(</div></blockquote></div>=
<br>If you checkout the first commit, do a build, then the second commit an=
d run bitbake-whatchanged, it should tell you the difference.</div><div cla=
ss=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Looking at the git =
log shows cc5f80, which is a change to libtool, so everything inheriting au=
totools will need a rebuild.</div><div class=3D"gmail_extra"><br></div><div=
 class=3D"gmail_extra">Ross</div></div>

--001a11351944f93005050eeadf32--
