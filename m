Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 727ECE008CC; Thu, 13 Nov 2014 05:18:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f50.google.com (mail-qg0-f50.google.com
	[209.85.192.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2207E00831
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 05:18:20 -0800 (PST)
Received: by mail-qg0-f50.google.com with SMTP id a108so10191925qge.23
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 05:18:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=zKuvCG1ejL14zIeLzDPvEucFXKLEvNP62nINgKYdcLY=;
	b=mkfTKIsDBWvl77h8qMgnvR4hh0d5BOMW5jAu+bNv+tJ6kkWdYtzjOnHCVp3PY/BapO
	VrHupAUcbS3yCfMX8dqhu6k8dkAqS5Z10kOXnbuUC+a1hkYtjkPeIpLWkoXbaHmXGYLh
	VXK92R+VG7RlOEu+ZAXPUwC0MYPQ5nRm3Bz9FFRS/2LIp53dwwxrMx5eKEtQHHdwVyyp
	WsCxZzblg8zVXamKHb0czlyY5pj/s208MZlU6AZhVQUtcI9yylOA7zSxdEElR0h0mr7X
	1V6AsEiD+tmlpsfqALdt5CIjNxW6Y8Oy0Y99j/9YWVaa79dhX6x4YcL0411TTiCMPPQJ
	995g==
X-Gm-Message-State: ALoCoQn9KH72V0v7oHHYtxqvhITieqhbTrrXmlosIo0MtMWwkVhp0NAzwV3d7atk/3vtGlUs5Ep1
X-Received: by 10.224.2.135 with SMTP id 7mr3203463qaj.64.1415884700038; Thu,
	13 Nov 2014 05:18:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.98.213 with HTTP; Thu, 13 Nov 2014 05:17:59 -0800 (PST)
In-Reply-To: <5464ADD9.1090604@topic.nl>
References: <5464AB4D.8020409@topic.nl>
	<CAJTo0Lb35s=8_JkTwxtkOskW0c+WX3U7pz5erBKSvYXVxE3riw@mail.gmail.com>
	<5464ADD9.1090604@topic.nl>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 13 Nov 2014 13:17:59 +0000
Message-ID: <CAJTo0LZAwRgCn3xK+uAcMuZsfSC0s_uqxMng=5ejocp83jvS-Q@mail.gmail.com>
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
X-List-Received-Date: Thu, 13 Nov 2014 13:18:25 -0000
Content-Type: multipart/alternative; boundary=001a11c3defa96e4b10507bd58d6

--001a11c3defa96e4b10507bd58d6
Content-Type: text/plain; charset=UTF-8

On 13 November 2014 13:10, Mike Looijmans <mike.looijmans@topic.nl> wrote:

> Next challenge is to calibrate the touch screen...
>

This is something that regressed, the calibrator doesn't get installed out
of the box properly.  Install xinput-calibrator in your image and it should
start on boot if required.

Ross

--001a11c3defa96e4b10507bd58d6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 13 November 2014 13:10, Mike Looijmans <span dir=3D"ltr">&lt;<a href=3D"=
mailto:mike.looijmans@topic.nl" target=3D"_blank">mike.looijmans@topic.nl</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":tr" clas=
s=3D"a3s" style=3D"overflow:hidden">Next challenge is to calibrate the touc=
h screen...</div></blockquote><div><br></div><div>This is something that re=
gressed, the calibrator doesn&#39;t get installed out of the box properly.=
=C2=A0 Install xinput-calibrator in your image and it should start on boot =
if required.</div><div><br></div><div>Ross</div></div></div></div>

--001a11c3defa96e4b10507bd58d6--
