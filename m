Return-Path: <insop.song@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6789E00BE0; Wed,  4 Jun 2014 17:58:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (insop.song[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f47.google.com (mail-wg0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 894C7E00B74
	for <yocto@yoctoproject.org>; Wed,  4 Jun 2014 17:58:09 -0700 (PDT)
Received: by mail-wg0-f47.google.com with SMTP id x12so266181wgg.18
	for <yocto@yoctoproject.org>; Wed, 04 Jun 2014 17:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Uj1XI/8NqULeqWbQb6G159CADYjPaVZcZ0DJE4HC9zs=;
	b=GcgdjQkyN5pWqVOdzJZotyfqEJg0ZNwrCw+Ftd4yMnaBkJjQ0yocZZtuvgg+k4wNAW
	44dB1GwFExRHbxHgOW/RUsRJU5SFTxFE1sdUZejudNW+2lPf4Jrfr2Q0nAJBdhTwccPi
	zQ7Gx/yvZ992puJPf5vzPbCOh7FaCan8N5mFzPvU2H9QRZ4rT8ivyvSxlyXvnGAgddbJ
	//EyT7zzrrM6ownWvGoW9OnawRQeotLubVDTEIvfpkJOv6Vf5akkz2tevINRCG59o+1Z
	knSwT6MhMSOUPvYIzW/5yC0C0aOklq0RoPkhAMN9cgol0ARqG70gVaS99Nm15H/V9Ygt
	yl1Q==
X-Received: by 10.180.186.8 with SMTP id fg8mr10537443wic.39.1401929888383;
	Wed, 04 Jun 2014 17:58:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.89.5 with HTTP; Wed, 4 Jun 2014 17:57:48 -0700 (PDT)
In-Reply-To: <1732254.XhvqkHGoUp@peggleto-mobl5.ger.corp.intel.com>
References: <CACzyEJ-RYx+jw9Brqf5kGDivLFJGpD2ZWDRyMbqES=VsTNrWcQ@mail.gmail.com>
	<20140602230303.GH7521@gmail.com>
	<CACzyEJ-6+L9XjqcsmDovCDzj+MWy8YNoSoGXXbAFYgxcX598gg@mail.gmail.com>
	<1732254.XhvqkHGoUp@peggleto-mobl5.ger.corp.intel.com>
From: Insop Song <insop.song@gmail.com>
Date: Wed, 4 Jun 2014 17:57:48 -0700
Message-ID: <CACzyEJ-sso4E-5yvFLRJ4r=azvUdi1siwg2HA13pLbOUdnwmGg@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [yocto and jenkins]
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
X-List-Received-Date: Thu, 05 Jun 2014 00:58:15 -0000
Content-Type: text/plain; charset=UTF-8

Thank you for the corection Paul, yes you are right.

I actually run the following from jenkins job

export BB_ENV_EXTRAWHITE="BUILD_NUMBER"
source SOURCE_THIS
bitbake our_image

On Wed, Jun 4, 2014 at 2:53 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Monday 02 June 2014 17:26:08 Insop Song wrote:
>> Thank you very much Paul.
>>
>> Setting "export BB_ENV_EXTRAWHITE=${BUILD_NUMBER}" fixed the issue.
>
> I think that should be "export BB_ENV_EXTRAWHITE=BUILD_NUMBER" (since it's the
> variable name you're allowing through, not just the value).
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

