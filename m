Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20F85E009D1; Fri,  2 May 2014 20:25:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f180.google.com (mail-ig0-f180.google.com
	[209.85.213.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B49F2E009C1
	for <yocto@yoctoproject.org>; Fri,  2 May 2014 20:25:03 -0700 (PDT)
Received: by mail-ig0-f180.google.com with SMTP id c1so2687232igq.13
	for <yocto@yoctoproject.org>; Fri, 02 May 2014 20:25:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=346zFrxv725qGu3PdWqYlmWcxhJ381CmayoFYI/XTsQ=;
	b=RfaZzQ2rhzfrs3jd8cySCd7nmZW/7fem+udbx90Z11AHrJTo1z96wYEm1Y+i2JxtVd
	7KCOxqh23EyfxOpeO/7tLx3Hvseg2lhjtSMb9Pf5/zdeC8xXDA9YdhPpPCYaw/rRJ/oG
	LToc8DitnKo+nB3hvPuDKm+7hmltxWCgly58sxysC5/fRh5FPQmxPFfGPVLGxSB3E6Xt
	bre9wcPbZwTht3gocNurhr5vogac1NPbzg1jhthHHaQPArPEMtaTmV9DhWzD3XyVKNXO
	ZY5fbNh5kCyWZywFD3Ngtwoc0iJR7Df3JK8iVdqeAeTVD9Z1UwZP/EHIk8XeT1xUGbjC
	8x1Q==
X-Received: by 10.51.17.5 with SMTP id ga5mr9139165igd.2.1399087502499; Fri,
	02 May 2014 20:25:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.74.228 with HTTP; Fri, 2 May 2014 20:24:32 -0700 (PDT)
In-Reply-To: <14A30120-E178-40D2-B950-115746B8CF3F@gmail.com>
References: <14A30120-E178-40D2-B950-115746B8CF3F@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 2 May 2014 20:24:32 -0700
Message-ID: <CAMKF1sr++otJ6AWZ_c5u1Lu9=jEXpw0X-Mi7i_w7CgC_1xQQZg@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: [poky] Error patching gcc-4.8.2
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
X-List-Received-Date: Sat, 03 May 2014 03:25:07 -0000
Content-Type: text/plain; charset=UTF-8

Elvis

On Fri, May 2, 2014 at 12:06 PM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
> Have you seen this happen earlier at your end?

I am subsumed with gcc 4.9 work however haven't seen this happening so far.
may be you should clean the build tree and retry

