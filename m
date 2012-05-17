Return-Path: <elizabeth.flanagan@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13453E0070C
	for <yocto@yoctoproject.org>; Thu, 17 May 2012 11:25:05 -0700 (PDT)
Received: from mail-lpp01m010-f52.google.com ([209.85.215.52])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 17 May 2012 11:25:05 -0700
Received: by lahj13 with SMTP id j13so1403239lah.25
	for <yocto@yoctoproject.org>; Thu, 17 May 2012 11:25:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=sI0fXWiZNiwtsfufwqdmsb098YNsmqMnZCo5lQtmP/E=;
	b=KmsaIRg7qhwhs3RpnPP9oBjYzrLigMe72+VhC2NlIJKKdtlxF8OtoMJKrNJpEDI3vG
	Wyn71IZHx/vptPjNrDNO/DThXMjDMySTFCGvXAYnfOluxfcJ+GTDN6gQugBrIbUbcNnj
	vh71xpLCP+kCYsclzNke3EJ36lZsAkb8wEbEIBafcKaBQIqZvFL4GPk907JP4elioe1P
	2vQs4AA1Qn4PzOOmZpuA1EM9RRLs5aAzv3xRaHJDpD7j8xmrdclTX3XozTllymfgU4/q
	Ml6Enw9HCTdZiR+nog2MwIel7upjeSoZ4WNIN8R0AQQSwYQW72b4RTJAcVV/IFzHuA9Q
	+ITA==
MIME-Version: 1.0
Received: by 10.152.144.168 with SMTP id sn8mr8184088lab.1.1337279102961; Thu,
	17 May 2012 11:25:02 -0700 (PDT)
Received: by 10.112.107.137 with HTTP; Thu, 17 May 2012 11:25:02 -0700 (PDT)
In-Reply-To: <CAMKF1sodOA9SrUcqHnTV7Ttw4=NkikenJAbF0P-CqcnhQTBRxA@mail.gmail.com>
References: <CAPhnLPA-Jim7bHCOwcqzPfcxdD-zpsovb6YOqAvjLREYpit68w@mail.gmail.com>
	<CAMKF1sodOA9SrUcqHnTV7Ttw4=NkikenJAbF0P-CqcnhQTBRxA@mail.gmail.com>
Date: Thu, 17 May 2012 11:25:02 -0700
Message-ID: <CAPhnLPAf6uZ2VqUB-QKeJt_0+7-ebcP93+=cY-FmN0f7_3cFkA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Khem Raj <raj.khem@gmail.com>
X-Gm-Message-State: ALoCoQn3kSp3WexOcFCEcAeItXztS8qp1tHbaPS2UG0gcF7KuMCaQMgkZGLrxNiGEYy62Z2eZ1u8
Cc: florin.sarbu@windriver.com, yocto@yoctoproject.org, andrei@gherzan.ro
Subject: Re: Solution to fetching the linux-yocto-3.0 tarball
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 17 May 2012 18:25:06 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, May 17, 2012 at 11:15 AM, Khem Raj <raj.khem@gmail.com> wrote:
> On Thu, May 17, 2012 at 10:37 AM, Flanagan, Elizabeth
> <elizabeth.flanagan@intel.com> wrote:
>>
> is autobuilder.yoctoproject.org same as sources.yoctoproject.org

Yes, they resolve to the same host.

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

