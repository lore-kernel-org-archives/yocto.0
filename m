Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D597E009BB; Thu, 14 May 2015 09:31:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF622E00956
	for <yocto@yoctoproject.org>; Thu, 14 May 2015 09:31:44 -0700 (PDT)
Received: by qcbgy10 with SMTP id gy10so42339938qcb.3
	for <yocto@yoctoproject.org>; Thu, 14 May 2015 09:31:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=LgqQuYKBIveQN55p3Kjo6448J2zCEY+zVOdokL+OXVo=;
	b=XyC/3+Yz6dbNqUWAu0MO+fVe8YzBCk4oCZC94Dqvl3lQW8Z2SXWD33sO91l9jW3bbH
	7Y9wQ5iqaZ+Hs/k5WDjSVtEJ9Nm52Ehj/85NRrqlp5WVjTKrU3eA3jem6Aku1fsTCuFH
	zM7b3LB0VQoXRWk8Ck1Ww6XziQl5KvKApsHb1mompGuSBuKly1ZltEkHlp4PIQj6gM+R
	Ahp1rFOA0TIpmKkdEcC+qmPAVoB6kRJoZFoDkEs2spS2v3+703Z6nJjxmTXKCf2xw9iU
	1IelDj3RMR/EkQGHufuLrAR7Hb1m0VBOmmh9aEwcBMl7LCwMi2/Vl8auDLYs/YfnH2NT
	MUiA==
X-Gm-Message-State: ALoCoQkTnIyfo1xhV5vB1e/KrClh3ttXO1rDXa22Z4SQxH7cuvLlna7r2IMGpz796dtJcDb0hfH+
X-Received: by 10.55.20.10 with SMTP id e10mr10999940qkh.36.1431621103518;
	Thu, 14 May 2015 09:31:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Thu, 14 May 2015 09:31:23 -0700 (PDT)
In-Reply-To: <5554CD73.5080403@mlbassoc.com>
References: <5554ADDE.7030508@mlbassoc.com>
	<CAJTo0LZZsuEQfizOctX5VnK5KiCJ9iyyuTPUxtum_DpYoqmsWA@mail.gmail.com>
	<5554B152.8030401@mlbassoc.com>
	<CAJTo0Lai_StnhatYDa8tZvjt8jKs-EGnYgX7KvPwCOzk-1D6kQ@mail.gmail.com>
	<5554BED8.2090607@mlbassoc.com>
	<CAJTo0LadZdQAtCD=REUBjVbwHahnGAi1nLJMiCjZbNKzqYLECA@mail.gmail.com>
	<5554CD73.5080403@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 14 May 2015 17:31:23 +0100
Message-ID: <CAJTo0LaP4vv=hDQNjJY9LG6O4NLYi9_1DMt54OnnvqZrOwRk1Q@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: gtk-play issues
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
X-List-Received-Date: Thu, 14 May 2015 16:31:47 -0000
Content-Type: multipart/alternative; boundary=001a1137de32542bbe05160d4388

--001a1137de32542bbe05160d4388
Content-Type: text/plain; charset=UTF-8

On 14 May 2015 at 17:29, Gary Thomas <gary@mlbassoc.com> wrote:

> BTW, neither gtk-play nor gst-play seem to work correctly with
> an out-of-the-box qemu that I just built (from master at the
> time of fido release - rev 515a8b790e08a48aaf64a6b7237e2b39390e35f6)
>
> I'm not much of an x86 user - how would I build (which $MACHINE, etc)
> to run on my generic [Dell] laptop so I can test it there?
>

For a real x86 machine, intel-corei7-64 from meta-intel.

Ross

--001a1137de32542bbe05160d4388
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 14 May 2015 at 17:29, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><div id=3D":op" class=3D"a3s" style=
=3D"overflow:hidden">BTW, neither gtk-play nor gst-play seem to work correc=
tly with<br>
an out-of-the-box qemu that I just built (from master at the<br>
time of fido release - rev 515a8b790e08a48aaf64a6b7237e2b39390e35f6)<br>
<br>
I&#39;m not much of an x86 user - how would I build (which $MACHINE, etc)<b=
r>
to run on my generic [Dell] laptop so I can test it there?</div></blockquot=
e></div><br>For a real x86 machine, intel-corei7-64 from meta-intel.</div><=
div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></=
div>

--001a1137de32542bbe05160d4388--
