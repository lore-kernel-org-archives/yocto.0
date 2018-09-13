Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C938E006AF; Thu, 13 Sep 2018 05:00:40 -0700 (PDT)
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
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
	[209.85.210.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEBB9E0053F
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 05:00:38 -0700 (PDT)
Received: by mail-ot1-f44.google.com with SMTP id n5-v6so960820otl.5
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 05:00:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=xwsQIGx8eLPKIU+XQIydkm8QnqpDZEtxQvyN5phK/uI=;
	b=rR7vK0ORev/fJOOumy4ywCr4xW0eyUqi2wzJHLZ4Hjpk+rCE4SBiiUsJLllOl2ov7O
	89ICNrg2uHrym0V/QrqlmSeIxP/r3fCc38Dp8W2w9gSbW+RtZh5EnCdHzkGoex9UyElH
	X5BdeEbrq97Y8z3HGm8D9wqVF9LEF3lh4fhc42Ql9n6ZnLy8q8CPoo/FsjXvjUtmyyqw
	/fWBf2j8PoaOHd3Ewfc6+OCdL61CFbHz2oGSMt69jFIpXNtVjx65tUaCEhboa8U2FE72
	BcyBpODEEtKM5XXbTCgxlXE14As32XnK96Mf/bnEwnQjOBEimFbDoBXrl8TucBjhrG3d
	Z3nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=xwsQIGx8eLPKIU+XQIydkm8QnqpDZEtxQvyN5phK/uI=;
	b=dGxyFa1rLP0D5aRcgaAnDQx1sYsqXk3z+BltaZj11TJ5u3cZcuieMHs1BAwi/Gy9DE
	vcYTXZ+TxdIACmCQYPSqiZxVpResxqUeKaTVzI31ygOccGFUIv0FwhOzSmGdgMXpaIgJ
	8g79LZqXy4JLoZBFl4PXRf4r/0PjE+WbC5b/kHHBP/bBoM/Ag8nnNsmcRJVuzbsOdpVf
	gpfNcInTwC6lBcQJf8yhFZd0jQH/lEl8EwIvuTBlnpilJk3uFmixoFkhXgs9zH8EOpn5
	4hqjKIcr9KRf80FqKXeKUD+4XMRAke273uy2UgL/IqnYIH9uw2b+eZ/WlSPlq4ZfNCdL
	3CHQ==
X-Gm-Message-State: APzg51Ci6gSeYOry/UABTRLMOyqToQucpeTcGPGl8y2mstLCr0EYRNtz
	6K9p/Sn/uvgk8ZROWq/wUzelLOxhWV1kJzbuJ5+yGJjX
X-Google-Smtp-Source: ANB0Vda1KKFvc0POElbEb+0DfVPmYvv3W69QRm6VB2ACAf9BiHm49k9bRITdR/w6uJlOxKQtgXeM7Ok619YzfCCDUB0=
X-Received: by 2002:a9d:3a5:: with SMTP id
	f34-v6mr1029620otf.343.1536840038369; 
	Thu, 13 Sep 2018 05:00:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:7ac:0:0:0:0:0 with HTTP;
	Thu, 13 Sep 2018 05:00:17 -0700 (PDT)
In-Reply-To: <VI1PR01MB10704F587FD2BF06F1CAFEF1E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
References: <VI1PR01MB1070FFAC3C22FF063B0DCF36E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
	<CAJTo0LYqqOyBV_W7d-eskBrwMgSF=ba+T8VtxVg_aVguDgh4Jw@mail.gmail.com>
	<VI1PR01MB1070D4F85BC847EF0C3F8651E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
	<CAJTo0LYsU+D+SP3s4Fwg4DYrv++kMmugv1RiVGU4ZFx_aKO=4w@mail.gmail.com>
	<VI1PR01MB10704F587FD2BF06F1CAFEF1E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 13 Sep 2018 13:00:17 +0100
Message-ID: <CAJTo0LaFQtREQuX9xVtD3uno8G-OcorBMfjmXYmw0nhkfAUKOg@mail.gmail.com>
To: Dudziak Krzysztof <Krzysztof.Dudziak@gemalto.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 13 Sep 2018 12:00:40 -0000
Content-Type: text/plain; charset="UTF-8"

On 13 September 2018 at 12:39, Dudziak Krzysztof
<Krzysztof.Dudziak@gemalto.com> wrote:
> Thanks for hints.
> I don't want to have this package on target system.
> You sound like inheriting explicitly had some major drawback of wide scope.

It won't be included in the image unless you add it to the image.

Ross

