Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EDBD2E008BC; Mon,  2 Feb 2015 09:33:54 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A89D1E00824
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 09:33:44 -0800 (PST)
Received: by mail-qg0-f50.google.com with SMTP id f51so48495565qge.9
	for <yocto@yoctoproject.org>; Mon, 02 Feb 2015 09:33:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Qq78zeJar3vTOtho7qMp3uiUT50OPzV+T+ZrNHXOQUw=;
	b=ENdhykeZY+Cq3CWyMLxICPL4rShjKYMNbMUTEb540jxNXM8X6hMZ5DgZdHazeTh7O8
	LOyU7pYDos6kRMiYcfqopqmnBfMpOD1TMCcP9JwWlfo85NJtrmaOnxfoyWjDeE2aXcXh
	jdERHb1nR4IQLiST+MzfXe4i4BH1jLIthEYzBwnK8WnXGeEH+w7bkQVbcK3UAj3O3zzW
	Rvo1CW1jIvp+DHEkaWFYrrUZCoangNUQ4EkJ5r9RCKQFCHy9MEcTKruORR4vUCSDPQcZ
	6LRFQByjZaiEKjL6pOcddgIAJluucJMMAL2W6D8TAwwgfJTTxBc+ZPAnHeKTzsERbDk1
	Eflw==
X-Gm-Message-State: ALoCoQnyfLbax9Mh37VT+5U4OvgjfXLEq8VdsdvMSMmgstW4aWrXAblFHOIr+e102JmOArGRGNfF
X-Received: by 10.140.49.5 with SMTP id p5mr38279698qga.15.1422898423891; Mon,
	02 Feb 2015 09:33:43 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.166 with HTTP; Mon, 2 Feb 2015 09:33:23 -0800 (PST)
In-Reply-To: <CABcZANmY5-_wgSZp2xb=20Og27mcDJ_e7_QFZHGnHV67L1vr_g@mail.gmail.com>
References: <54CFA908.7010507@mlbassoc.com>
	<CABcZANmY5-_wgSZp2xb=20Og27mcDJ_e7_QFZHGnHV67L1vr_g@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 2 Feb 2015 17:33:23 +0000
Message-ID: <CAJTo0La5PVoaE=Qyyje3Jqy6i2f15djUYyGwOAks8KG-71NMbA@mail.gmail.com>
To: Christopher Larson <clarson@kergoth.com>
Cc: Yocto Project <yocto@yoctoproject.org>, Gary Thomas <gary@mlbassoc.com>
Subject: Re: sstate management
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
X-List-Received-Date: Mon, 02 Feb 2015 17:33:55 -0000
Content-Type: multipart/alternative; boundary=001a113519441bbb68050e1e5b52

--001a113519441bbb68050e1e5b52
Content-Type: text/plain; charset=UTF-8

On 2 February 2015 at 16:48, Christopher Larson <clarson@kergoth.com> wrote:

>   Is there some maintenance to be done on the sstate-cache?
>>   I'm thinking I want to set up a shared cache which might
>>   last for a long time and I would like to only keep the bits
>>   that are really needed.
>>
>
> In the past i've either used sstate-cache-management.sh or ensured that
> SSTATE_DIR is on a mount with atime enabled and just periodically wiped
> anything that hasn't been accessed in over a week.
>

Seconded on this - after doing lots of builds in the last few weeks
involving five machines and new eglibc/gcc patches my sstate was 1.2TB.  A
quick find -atime -delete did the job.

Ross

--001a113519441bbb68050e1e5b52
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 2 February 2015 at 16:48, Christopher Larson <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:clarson@kergoth.com" target=3D"_blank">clarson@kergoth.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D""><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex"><div style=3D"overflow:hidden">=C2=A0 Is there so=
me maintenance to be done on the sstate-cache?<br>
=C2=A0 I&#39;m thinking I want to set up a shared cache which might<br>
=C2=A0 last for a long time and I would like to only keep the bits<br>
=C2=A0 that are really needed.<br></div></blockquote><div><br></div></span>=
<div>In the past i&#39;ve either used sstate-cache-management.sh or ensured=
 that SSTATE_DIR is on a mount with atime enabled and just periodically wip=
ed anything that hasn&#39;t been accessed in over a week.</div></blockquote=
><div><br></div><div>Seconded on this - after doing lots of builds in the l=
ast few weeks involving five machines and new eglibc/gcc patches my sstate =
was 1.2TB.=C2=A0 A quick find -atime -delete did the job.</div><div><br></d=
iv><div>Ross</div></div></div></div>

--001a113519441bbb68050e1e5b52--
