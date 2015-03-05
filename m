Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7E57E008CC; Thu,  5 Mar 2015 04:46:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7672E00718
	for <yocto@yoctoproject.org>; Thu,  5 Mar 2015 04:46:13 -0800 (PST)
Received: by mail-qa0-f48.google.com with SMTP id dc16so38598403qab.7
	for <yocto@yoctoproject.org>; Thu, 05 Mar 2015 04:46:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=YHmyzwAst5vy+aflJnUrd8SltLid9vzgn3u+cMBwJ4A=;
	b=S8CtsLk8WebciHAMxggwYbI3K8JxRRgGFO7SrtYt15DjvscbaTwJGP9wUrUUcIswop
	Yx2gdXleZZMwtsxK2dv0kKG9CmRzPhtATjCcpiN875xNIKQ/YboaPu33VTWbVV+tjKmM
	OmC2GB60dukGg4yODfLJzXSgI23RpdOW8LUEmJY5sr70lCgkj9Qlw891MbMTA6E23HJi
	unY2DqQkLuKTekFAX0cYoh5V2NK3x7LQ3NWCHJumF0mqXBRdvd6OqMjMx1nmwem6AocG
	I1cLcpg63bM2EeppRpEHA0luKBN6H/OyWCJiPHB1NURqfe0in2yoyFki3Htql5Rx+4ag
	KRfQ==
X-Gm-Message-State: ALoCoQm5v2WRPTCoQVqqai9/Yht7W+RItUVZyNpaUh0YJDktxiULati5QXbxBPmWiBjSrOtVDqxh
X-Received: by 10.141.23.208 with SMTP id z199mr12375426qhd.27.1425559573235; 
	Thu, 05 Mar 2015 04:46:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.102.203 with HTTP; Thu, 5 Mar 2015 04:45:53 -0800 (PST)
In-Reply-To: <54F8492B.2010205@mlbassoc.com>
References: <54F798FD.4090200@mlbassoc.com>
	<CAJTo0Lb+8aUN8Ufgx-5W6zfs=V_CK=eY2DgeeGeGJUyz0u22gA@mail.gmail.com>
	<54F8492B.2010205@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 5 Mar 2015 12:45:53 +0000
Message-ID: <CAJTo0LbHPUc7Xrmx06o3w4Yaf7xynR1Pb33U75ONzvziC0Wuww@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: New gst-player
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
X-List-Received-Date: Thu, 05 Mar 2015 12:46:18 -0000
Content-Type: multipart/alternative; boundary=001a11423afef82047051089f30f

--001a11423afef82047051089f30f
Content-Type: text/plain; charset=UTF-8

On 5 March 2015 at 12:16, Gary Thomas <gary@mlbassoc.com> wrote:

> Using gstreamer1.0-libav seems to work, but it's really power hungry
> (i.e can cause my board's power supply over current!).  Does this
> plugin just hook into libav?  I've tried playing the same file using
> mplayer (which does use libav) and it doesn't have the same power
> issues.
>

Yes, gstreamer1.0-libav is a wrapper around libav.  gstreamer1.0-libav does
default to using an internal copy of libav instead of the system one, but
that's a PACKAGECONFIG away from being changed - assuming that it builds -
and might help.

Ross

--001a11423afef82047051089f30f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 5 March 2015 at 12:16, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mail=
to:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div id=3D":3da" class=3D"a3s" style=
=3D"overflow:hidden">Using gstreamer1.0-libav seems to work, but it&#39;s r=
eally power hungry<br>
(i.e can cause my board&#39;s power supply over current!).=C2=A0 Does this<=
br>
plugin just hook into libav?=C2=A0 I&#39;ve tried playing the same file usi=
ng<br>
mplayer (which does use libav) and it doesn&#39;t have the same power<br>
issues.</div></blockquote><div><br></div><div>Yes, gstreamer1.0-libav is a =
wrapper around libav. =C2=A0gstreamer1.0-libav does default to using an int=
ernal copy of libav instead of the system one, but that&#39;s a PACKAGECONF=
IG away from being changed - assuming that it builds - and might help.</div=
><div><br></div><div>Ross=C2=A0</div></div></div></div>

--001a11423afef82047051089f30f--
