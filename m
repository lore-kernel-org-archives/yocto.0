Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFF8EE006C7; Thu, 13 Sep 2018 02:38:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CC41E0053F
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 02:38:42 -0700 (PDT)
Received: by mail-ot1-f48.google.com with SMTP id e18-v6so653396oti.8
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 02:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=NtAp3XJu5Ty6vIIe+lhGtc5NbZd8K4xV34TLCaspAbs=;
	b=CT6hsJKZSdGl6R+PNz3Yc33e8i/Gd8w4QMltWnDyzZ/fpz21fD845h6V5Udd5203ox
	2lQZ0Rtt9pmj/cnugX3H9PJmc5hnh5O60jn+/lfJCSMmr8n+Y7skWrP3kVwfn/s09mxv
	p8tpfS3w8XOvXYrhXb06N++sk2MEk7DTFKnmRpJIAo9Ql4tvjzOfH5KVkngT/7yKw19U
	Wo9kbjG9N8EzHIqcMwFjJaYIJTAEz0FY1izaOy7Nzxg/Rxjin0ORaK07K5AfImDgpGfA
	hn4/r01a6SNkmkNDBS2T2xPmDX5m2GqDqYst3/9v+Yji9AQnzuD5z0xRewU14h85r4gm
	1zpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=NtAp3XJu5Ty6vIIe+lhGtc5NbZd8K4xV34TLCaspAbs=;
	b=hQM8RC1vijfLbJQbGFgLOHgxMkjzVYv/vy3hfB1d7LH8PsnW2NniAigUTnXgL5B2Hi
	2PrOfNEyDiAElmxB0JUDKq0NIDCt+mpGyGaiMRnlRkGL24M+nqZbMM9KHnXOoT2g+BSV
	G5vs806sq3e+SGkF78kQxvJcK+87DTPa4/F19dRnQ/FGXjP9yPE4Yl5JfN4dFBe8Lpv8
	FbqRl+cC9zR+4wCp37HyAT1aHRI0acH8ojVIB5QWK7BTOElmVrD3SdYAJ0tboC/h7YPo
	30mviQQSBxMj+QaWRRRZGjuyrVNCnCDss15cZLEshV3dXMkriLu3eo4lhp0QKwZEeWzn
	7qEA==
X-Gm-Message-State: APzg51CJoJC6Mfy7aoJZQrES/CjF6HkyXSt/NCbxbM8h0eLQCjfZu5Vn
	+zQIw6KfW4o0Vxw5gXyC8r8kYuw67Mbnm8FGhyg36A==
X-Google-Smtp-Source: ANB0VdYh/QtKTHTyCGzOBdb715Q6DLNtoYvIQsVJ3o/Qo7l6bHFqx0V2QP0+Nqi8SDLJ4pBrino/PAZ9i1p5P67UlIw=
X-Received: by 2002:a9d:2253:: with SMTP id
	o77-v6mr730826ota.204.1536831521863; 
	Thu, 13 Sep 2018 02:38:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:7ac:0:0:0:0:0 with HTTP;
	Thu, 13 Sep 2018 02:38:21 -0700 (PDT)
In-Reply-To: <VI1PR01MB1070A7E32F845C1CBA1D57B6E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
References: <VI1PR01MB1070FFAC3C22FF063B0DCF36E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
	<CAJTo0LYqqOyBV_W7d-eskBrwMgSF=ba+T8VtxVg_aVguDgh4Jw@mail.gmail.com>
	<VI1PR01MB1070A7E32F845C1CBA1D57B6E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 13 Sep 2018 10:38:21 +0100
Message-ID: <CAJTo0LZoehiseEnzGPYiZKaFYT6FUO-1vY14f4Vf7qL7Bd2OpQ@mail.gmail.com>
To: Dudziak Krzysztof <Krzysztof.Dudziak@gemalto.com>, 
	Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: inheriting native.bbclass explicitly
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
X-List-Received-Date: Thu, 13 Sep 2018 09:38:42 -0000
Content-Type: text/plain; charset="UTF-8"

Adding yocto@ back to CC.  Please remember to mail the list and not the sender.

On 13 September 2018 at 10:34, Dudziak Krzysztof
<Krzysztof.Dudziak@gemalto.com> wrote:
> Will BBCLASSEXTEND=native fashion also build target system package?
> This is what is not needed (autoconf-archive on target system).
> Therefore thoughts turn to another approach.

BBCLASSEXTEND works by taking a target recipe and dynamically creating
another version of it.

So autoconf-archive.bb is written as a target recipe but because it
contains BBCLASSEXTEND="native nativesdk", there also exists
autoconf-archive-native and nativesdk-autoconf-archive.

Ross

