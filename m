Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9C8CE007B6; Tue,  2 Jun 2015 09:34:23 -0700 (PDT)
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
	*      [209.85.216.173 listed in list.dnswl.org]
Received: from mail-qc0-f173.google.com (mail-qc0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04872E007B6
	for <yocto@yoctoproject.org>; Tue,  2 Jun 2015 09:34:16 -0700 (PDT)
Received: by qcej9 with SMTP id j9so18887842qce.1
	for <yocto@yoctoproject.org>; Tue, 02 Jun 2015 09:34:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=bq1dVUCOBGPB24jxJ87yhpCaaYXSZf+sAIqH3obcr1k=;
	b=bF1xTQTUwVuHY4ldGZkk3NHtbe3AJtN6SMvJ/+7+0jkzAQ8ZMeyt6jRslQCtmN6eKW
	sV256rsz9bdWvIpMpImhO6n5ipzs7E5mwrhPFCwxm7LgUjzk+a9jfi4mqboQg6ZJcJx5
	uvwdbhhU4gARmRH1DdZBhMxeF1k94MiiGOOz0iVTVje8JkHf4IJ+qEJEGNljj4Xg4Iyw
	wOQesLGMQ3ChULj/SphUQi6B2O9cbPNmDtXuEqqXAuqxQVeD1TwX0CMbamPxsMCa2TE+
	qJbZJSGpHlKialnj+isIWQhSq0sd7EAHvXA7fBC9KWl81E618djnuFcPKQBWxHL69AO6
	XcoQ==
X-Gm-Message-State: ALoCoQkAhjl1s8AV8jQp7aJC07pe+MYDwb9ddIGu4xlwokNVeHR8LWdgdh4srCvMCpF1tQ+/ceE4
X-Received: by 10.140.43.228 with SMTP id e91mr14057923qga.80.1433262855994;
	Tue, 02 Jun 2015 09:34:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Tue, 2 Jun 2015 09:33:55 -0700 (PDT)
In-Reply-To: <CAK5mtew29B5e88HjkmjbNhc4U7G8vnTOi6pPqBn4xELTt_MOFg@mail.gmail.com>
References: <CAK5mteyg4FSKmzrDoMmvx+-fwJEhybHCa+MA9bokQuJt5m-H_Q@mail.gmail.com>
	<CAJTo0LYmV418_39HBjj+VoYs1O8qHQCwOWfd9YdotSwcGdHvsw@mail.gmail.com>
	<CAK5mtexC81Yi9C2YA6O4SuKZ=vQ6wk8=cUYNZ8mYOQ4uAoZ+qw@mail.gmail.com>
	<CAJTo0LZqH+u5fNKF_vVVuyw7kaXRMdLteNai1UCPz2-UEpbXxw@mail.gmail.com>
	<CAK5mtew29B5e88HjkmjbNhc4U7G8vnTOi6pPqBn4xELTt_MOFg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 2 Jun 2015 17:33:55 +0100
Message-ID: <CAJTo0LZEu+ahS_CrNtTepbURZdriQGHgUD=9Dmee6o6qpw5i5Q@mail.gmail.com>
To: Victor Rodriguez <vm.rod25@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: build hello_world.c in yocto
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
X-List-Received-Date: Tue, 02 Jun 2015 16:34:23 -0000
Content-Type: multipart/alternative; boundary=001a113a34bc66d2cd05178b8388

--001a113a34bc66d2cd05178b8388
Content-Type: text/plain; charset=UTF-8

On 2 June 2015 at 17:30, Victor Rodriguez <vm.rod25@gmail.com> wrote:

> However I realize that it also includes many other stuffs ( pango for
> example )
>
> Is there any way to make it with less features ?
>

Try installing packagegroup-core-buildessential (that's a package, not an
image feature).

Ross

--001a113a34bc66d2cd05178b8388
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 2 June 2015 at 17:30, Victor Rodriguez <span dir=3D"ltr">&lt;<a href=3D"=
mailto:vm.rod25@gmail.com" target=3D"_blank">vm.rod25@gmail.com</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div id=3D":n5" class=3D"a3s" =
style=3D"overflow:hidden">However I realize that it also includes many othe=
r stuffs ( pango for example )<br>
<br>
Is there any way to make it with less features ?<br></div></blockquote></di=
v><br>Try installing packagegroup-core-buildessential (that&#39;s a package=
, not an image feature).=C2=A0</div><div class=3D"gmail_extra"><br></div><d=
iv class=3D"gmail_extra">Ross</div></div>

--001a113a34bc66d2cd05178b8388--
