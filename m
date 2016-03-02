Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5669E00D48; Wed,  2 Mar 2016 04:37:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.169 listed in list.dnswl.org]
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6AA2E00D33
	for <yocto@yoctoproject.org>; Wed,  2 Mar 2016 04:37:22 -0800 (PST)
Received: by mail-ig0-f169.google.com with SMTP id z8so41094065ige.0
	for <yocto@yoctoproject.org>; Wed, 02 Mar 2016 04:37:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=f+yu2UmwGBBwP+O8orMXPLjsBKDvqNuKctD+A22FbI4=;
	b=PB3HFcg4NIF8Ta/Pn0IJKo3MKDnTitJHMRhyv1XtYtmPOl8SarA8p3QAXf88MqvFzC
	bUN80N+nbb7kVHVx4DRm4SwfIODEhnNLbxQCOZtZmZu2o/tjhmktYkDUCoXVe+Ao5Cin
	owDzJ7jNdTtoAZ4I9NWwXJX9cLDdKg2seqMc4E1V/FtiLCby6FoxlWJlBrAyUPx+HlH3
	C274yZARmPZ9kxZQw1DwhlK7DwPVfRpqBVSFxDMRXROaB7K0V3HskdDpzLLftbOZFjJA
	ABAoEV2PO+myZU8iDgNCaamEy/eUovrT8ZU7jxvd8JIKuGnhQRkRmVj1Cqvq2Bhk3k+o
	KQOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=f+yu2UmwGBBwP+O8orMXPLjsBKDvqNuKctD+A22FbI4=;
	b=R/RJZkMF5IdTL/mJOWcJP4iW9QVJxLdSpfb9hngPUxqL19BxJ7ly05guibPiG9PCoM
	XY5CUQX58K8FGMCXdnVBj+9C+tbHdwncYyTiyX8BPMvpwr3uoYFrXx2myMTLGCn1aHtd
	VA7mRc6sXkVHfRE9z1uzHirPmky8XHQpUwtL/wnn7cSqr1IaCQlQT37i2cAjzff1CdUr
	SCDeSFlYoKFYMAzTNRhEfuC4aA5QpNmmeTrR4C1HY52HrQ4vKybiIpttfcLCDkRWaM1S
	7UiIYL5HZY4KIcWj69pVhsDUrJNAZ9CnlF1JricsNsJh2Yj/skcRqbpnBdr19TIFIYp8
	rr7g==
X-Gm-Message-State: AD7BkJL2e6MouSr0MrUt2K5/U3WEDGruJQk8Gr1pZkmecO/cDjC3b0eI8hJ1WwQ1OtBYsXhNHYeHE0xt56Wjp6O5
X-Received: by 10.50.97.71 with SMTP id dy7mr4557877igb.78.1456922241790; Wed,
	02 Mar 2016 04:37:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Wed, 2 Mar 2016 04:37:02 -0800 (PST)
In-Reply-To: <CAJTo0LYtJC5ROMveR3ze8PwZjYVZrO98bJQ6MubmuPmPog2oaA@mail.gmail.com>
References: <1456876322-11550-1-git-send-email-johannes.pointner@gmail.com>
	<CAJTo0LYtJC5ROMveR3ze8PwZjYVZrO98bJQ6MubmuPmPog2oaA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 2 Mar 2016 12:37:02 +0000
Message-ID: <CAJTo0LabyKaWgi9T+YQXAwwsTZn=EVpfSiV39P7+ip5v1xCdkQ@mail.gmail.com>
To: Johannes Pointner <h4nn35.work@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [xcursor-transparent-theme][Patch] Add several cursors
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
X-List-Received-Date: Wed, 02 Mar 2016 12:37:26 -0000
Content-Type: multipart/alternative; boundary=047d7b10cfc1b00f19052d1024e7

--047d7b10cfc1b00f19052d1024e7
Content-Type: text/plain; charset=UTF-8

Hi Johannes,

On 2 March 2016 at 12:19, Burton, Ross <ross.burton@intel.com> wrote:

> This and the other patch have been merged, thanks.
>

I've also merged in the patches that oe-core was carrying and did a bit of
a spring clean, so if you can test and submit a srcrev bump and patch
removal for oe-core that would be appreciated.

Ross

--047d7b10cfc1b00f19052d1024e7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Hi Johannes,</div><div class=3D=
"gmail_extra"><br><div class=3D"gmail_quote">On 2 March 2016 at 12:19, Burt=
on, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" tar=
get=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><div>This and the other patch have been merged, thanks.</=
div><div></div></blockquote></div><br>I&#39;ve also merged in the patches t=
hat oe-core was carrying and did a bit of a spring clean, so if you can tes=
t and submit a srcrev bump and patch removal for oe-core that would be appr=
eciated.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extr=
a">Ross</div></div>

--047d7b10cfc1b00f19052d1024e7--
