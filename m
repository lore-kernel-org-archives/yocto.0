Return-Path: <kristian.amlie@mender.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B149E009F3; Fri, 20 Jan 2017 05:05:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.47 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f47.google.com (mail-lf0-f47.google.com
	[209.85.215.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 038C1E0079A
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2017 05:05:06 -0800 (PST)
Received: by mail-lf0-f47.google.com with SMTP id k86so57695587lfi.0
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2017 05:05:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mender-io.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=nHDI+XWSFBmI+ZbfFOFSkbun3BEp2gypVGRywlfmYas=;
	b=f4Cloa9QPh+SNz2qZUlyh8dPjJniUCEb3Ympux+QfxhBHRfgHiwrlxxnsSbmN2RNr/
	UQm+6IVK2lprFndZD7NWoOt50GBV1TGV0cPdaZ/rkTmH5ZR+LBTnwy04oNGQLyKEqi9k
	R3MqqOd/74q0HA1D631hUtvdtpneGQM9qFaIzKfIbL+attzYNHWp3hK45vf/i8us3DLy
	W4PdOPozFNnQEbsWXioOIHWmusm3LlqRMAzXnlT922AuzxmZahJzh6YYB5SMboaIEl60
	aWonpi/fVZ3s153sbg5gCfXbfA4ku9AjfbBxyJIKhUMJeol0NBFug6xeZPLmxEl7WRng
	U2sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=nHDI+XWSFBmI+ZbfFOFSkbun3BEp2gypVGRywlfmYas=;
	b=niyLEmSsffX/GzQCG2pD8DGoCpgxude22Sc+7KND2Qd2DQMYbsbiK6ue2VbnttaDau
	TODgH2a6rb8PhZOQphUizXoU49YaylLswCB4/G5l4LvyEyfCDTPwegQ/RbDW63q//ilj
	qVRyvAWiBF1KkAF07ex2u0PHIcYupgo/l3mXRA7mIMBrCTZmvWUsASXDA4jle94FyLjh
	0LfF0IME1f/oHPqaJ6leNEB/MyCvxeSmiI86tT16ZF2OezzAqn8wxY1W9gtzHZ2B6xfl
	ypeXSUkB9+zCwGBunDbEIPCdY5R/k9WxZ+v+jPNX7mBdfJJRPI9xRxYzvGAxLU5/Nuhb
	e78g==
X-Gm-Message-State: AIkVDXIHgvOKxbTq7+5r+zVtzGKvi1zisYoEuuNl20lkb/E7RWA+OmEm9Osc8ykn27I7JA==
X-Received: by 10.25.26.201 with SMTP id a192mr4436314lfa.154.1484917505199;
	Fri, 20 Jan 2017 05:05:05 -0800 (PST)
Received: from [10.25.0.170] ([195.159.140.90])
	by smtp.googlemail.com with ESMTPSA id
	e86sm3453840lji.32.2017.01.20.05.05.04
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 20 Jan 2017 05:05:04 -0800 (PST)
To: Gary Thomas <gary@mlbassoc.com>
References: <709d0576-a880-c109-b602-73cf671a96ae@mlbassoc.com>
	<CAJTo0LZina7gy9PAiEj_1Wusvfi8HDMpqfHg5oYKkJbHBdsxgA@mail.gmail.com>
	<6bf7b6d1-fcbc-6f27-6694-4742e3f4f8e5@mlbassoc.com>
	<CAJTo0LYL5JtzNV7S-E68h=6hMrzBkrrquF9-wOWQ=wHOsVk2TA@mail.gmail.com>
From: Kristian Amlie <kristian.amlie@mender.io>
Message-ID: <eee4fd59-1c5a-5ce0-e51c-1f43b23fd0da@mender.io>
Date: Fri, 20 Jan 2017 14:05:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0LYL5JtzNV7S-E68h=6hMrzBkrrquF9-wOWQ=wHOsVk2TA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: sstate-cache and native recipes
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
X-List-Received-Date: Fri, 20 Jan 2017 13:05:10 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 18/01/17 12:28, Burton, Ross wrote:
> 
> On 18 January 2017 at 09:51, Gary Thomas <gary@mlbassoc.com
> <mailto:gary@mlbassoc.com>> wrote:
> 
>     How would one change the recipe to reflect that?  Is there an
>     override that effectively says "not -native"?
> 
> 
> do_install_class-target.

This is exactly the annoyance I've hit as well. Did you have any success
with this?

I can probably give it a spin as well if you want me to.

-- 
Kristian

