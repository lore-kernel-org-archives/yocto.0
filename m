Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B085E00CF0; Tue, 17 May 2016 06:21:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7DFAE00CE6
	for <yocto@yoctoproject.org>; Tue, 17 May 2016 06:21:00 -0700 (PDT)
Received: by mail-io0-f177.google.com with SMTP id 190so22593264iow.1
	for <yocto@yoctoproject.org>; Tue, 17 May 2016 06:21:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=v6c75U8Mb/krRVfZfvgU+3PCr8W4QK4bjK0/oTP7qug=;
	b=FF4PMbWsor5v72301WTTVJxruNprB15T+3/YJwEt4UwjRYjV4uCAeZhBSAWuppTTmV
	RIj36TGi7QW7caCtJ8s47nA2+y6Eym4PEeaA/4/n/jMuvWyGDDGjerQeF1m2DA3tJamM
	1KD+DnNNV4F1mCc6bAHSm9MXXFHg9ZJEXZxdGjJ8ic436pDJVt9rx+ldDj6CAk2dKTjs
	JuTKIvuU3a589L1yrq5xVk0+D/iXeAMJp0oCTT4NcPVMfqYR0mCHf5MftG48IGL8Kful
	PyxYRDMqdbbjCqTi1ait7to62jfeXO8qUxx0YIwq1grSEWj6PTsf2Sn1/YP4n4a8bKRx
	Vq7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=v6c75U8Mb/krRVfZfvgU+3PCr8W4QK4bjK0/oTP7qug=;
	b=ZPJieAsGchGoD5F27lAaD1ryz0ZAWTPexdMOlqh7Qqm2Q0pSqFmU3RyZSCzysKWnVz
	C9Dh91xeGKuxSmo715l07b0y9fUD+LnFTi9fCLfS8L+Pz2nX7rAkBgRdZcc5KuR6LGrL
	ACZQ+6ZF3O8cd1n0z7CfumzgYFgfHNEwuorUQMcrASQMZ5nsLmp5Y/zoQ8Z04rw+qNwL
	tSsTdTsOf2aezx810i6qmWMR4Ys3locM1joZQ5iePMxPd1BfHwcRTXJGD1+niJkbiCNH
	uIlvvdISL5X299cosflbLiq8Wx9JwnkDRHNP/VTfV5BHzDQa3ttHIHzqBYCjiiEqN6Rb
	tWYQ==
X-Gm-Message-State: AOPr4FW4uM3um3amlMjWJq63zhqpSvcxxd6vPhndSk5B4NhMhGDyGZfyDJvWD5SqdLsYO4MqB9q1wjW5M7PtD2ux
X-Received: by 10.36.120.87 with SMTP id p84mr1077481itc.38.1463491259932;
	Tue, 17 May 2016 06:20:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Tue, 17 May 2016 06:20:40 -0700 (PDT)
In-Reply-To: <1463447715.2703.112.camel@aj.id.au>
References: <1463447715.2703.112.camel@aj.id.au>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 17 May 2016 14:20:40 +0100
Message-ID: <CAJTo0LbX7qrAc5e0OSJzTJ=ish7rLuGzm9LA7LbKF4DK+jy+PA@mail.gmail.com>
To: andrew@aj.id.au
Cc: Yocto Project <yocto@yoctoproject.org>, OpenBMC <openbmc@lists.ozlabs.org>,
	Patrick Williams <patrick@stwcx.xyz>
Subject: Re: Extending runqemu/runqemu-internal with new machines
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
X-List-Received-Date: Tue, 17 May 2016 13:21:04 -0000
Content-Type: multipart/alternative; boundary=001a114ac70aae5c220533099cd6

--001a114ac70aae5c220533099cd6
Content-Type: text/plain; charset=UTF-8

On 17 May 2016 at 02:15, Andrew Jeffery <andrew@aj.id.au> wrote:

> Is there a better way to work that might avoid these issues?
> Alternatively, should we start looking at reworking the
> runqemu/runqemu-internal scripts such that we don't have to patch them
> to support our use-case? If so, what sort of approach would the
> community be happy with?
>

Dig back a few weeks and you'll a RFC series by Robert Yang refactoring
runqemu for exactly this problem.  I've not yet looked at it myself but if
you could see if that solves your problems then that would be much
appreciated.

Ross

--001a114ac70aae5c220533099cd6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 17 May 2016 at 02:15, Andrew Jeffery <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:andrew@aj.id.au" target=3D"_blank">andrew@aj.id.au</a>&gt;</span> wrot=
e:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div>Is there a better way to work tha=
t might avoid these issues?<br>
Alternatively, should we start looking at reworking the<br>
runqemu/runqemu-internal scripts such that we don&#39;t have to patch them<=
br>
to support our use-case? If so, what sort of approach would the<br>
community be happy with?</div></blockquote></div><br>Dig back a few weeks a=
nd you&#39;ll a RFC series by Robert Yang refactoring runqemu for exactly t=
his problem.=C2=A0 I&#39;ve not yet looked at it myself but if you could se=
e if that solves your problems then that would be much appreciated.</div><d=
iv class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></d=
iv>

--001a114ac70aae5c220533099cd6--
