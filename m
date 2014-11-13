Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 821B5E008CC; Thu, 13 Nov 2014 05:08:26 -0800 (PST)
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
	*      [209.85.192.53 listed in list.dnswl.org]
Received: from mail-qg0-f53.google.com (mail-qg0-f53.google.com
	[209.85.192.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40E34E00831
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 05:08:19 -0800 (PST)
Received: by mail-qg0-f53.google.com with SMTP id z107so10523793qgd.12
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 05:08:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=92FN1Rm0Zr907O72zL8SAM+wynCIb3RlTrARElCLzVA=;
	b=MhSKZHSg13STCNgDIGPao368MGXaVGqT3ArrRWR3+hZEG//Rs8qXzNNBNuxWbJ/hSR
	fEDYUQ+Pc9mxvDd0I7l4BWiR0ydMrjis5KBJsCaCo8l5FXLt6EBQ0S+oc3LZFPpnFPcY
	y6iuMFdYIaIHBcwPQPuzOGKadAsTiB1V6PpXxqyIHfHBTUmsc3qi+PT4OPAMasZZofLD
	DovM1wOmcPKJJJC6fRfpEmh3FJvop2ErXfu5KMDJZedIExFlTNpWPg3yK7p+z08/jO/h
	Z+kAxMlvzNOma+hz7G8ZXG117uLlImn+mO1CmQ3q0BYaHkHWMKim2kPXFJ0iySwQP4h/
	j1Zg==
X-Gm-Message-State: ALoCoQnNhyvF06sKfrZjQMK2xGLEqqVJw7wUnTcf0ByLbNuAd7az3SlLgr6dlgwlASGJTDWZGJYm
X-Received: by 10.140.109.244 with SMTP id l107mr2962053qgf.80.1415884098542; 
	Thu, 13 Nov 2014 05:08:18 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.98.213 with HTTP; Thu, 13 Nov 2014 05:07:58 -0800 (PST)
In-Reply-To: <5464AB4D.8020409@topic.nl>
References: <5464AB4D.8020409@topic.nl>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 13 Nov 2014 13:07:58 +0000
Message-ID: <CAJTo0Lb35s=8_JkTwxtkOskW0c+WX3U7pz5erBKSvYXVxE3riw@mail.gmail.com>
To: Mike Looijmans <mike.looijmans@topic.nl>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Sato image runs, but doesn't start its GUI
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
X-List-Received-Date: Thu, 13 Nov 2014 13:08:26 -0000
Content-Type: multipart/alternative; boundary=001a113b7e50bcc5e00507bd342f

--001a113b7e50bcc5e00507bd342f
Content-Type: text/plain; charset=UTF-8

On 13 November 2014 12:59, Mike Looijmans <mike.looijmans@topic.nl> wrote:

> I can't find anything that attempts to start anything. There's nothing in
> inittab, and there's nothing in rc3.d that resembles an attempt at starting
> something desktop GUI application or so.
>

core-image-sato should be shipping the xserver-nodm init script, which
starts X.

Ross

--001a113b7e50bcc5e00507bd342f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 13 November 2014 12:59, Mike Looijmans <span dir=3D"ltr">&lt;<a href=3D"=
mailto:mike.looijmans@topic.nl" target=3D"_blank">mike.looijmans@topic.nl</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":5bn" cla=
ss=3D"a3s" style=3D"overflow:hidden">I can&#39;t find anything that attempt=
s to start anything. There&#39;s nothing in inittab, and there&#39;s nothin=
g in rc3.d that resembles an attempt at starting something desktop GUI appl=
ication or so.<br></div></blockquote></div><br>core-image-sato should be sh=
ipping the xserver-nodm init script, which starts X.</div><div class=3D"gma=
il_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a113b7e50bcc5e00507bd342f--
