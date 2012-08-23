Return-Path: <kergoth@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35F97E002A6
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 11:20:19 -0700 (PDT)
Received: by lagr15 with SMTP id r15so711126lag.35
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 11:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=XbzANQF4Zy7zR47X5ACSJGYpRRmaI/raLMYuJXCKYiQ=;
	b=W7gWoNkYN/HnBNR90/E/BHAqLMYCw/0VyLfwmYjPzr34JqmF6yXNHQooYiERW8EtA3
	0ZgdqhMlDUDvxi4WvKsp+8aevH9kXLPNa9KlyK+VXZ6WIiMpDUXSc6ewSq/u4BR7x2Kk
	N0N1KZldQ1rg6tuRpsYp/cm6UlqN1J/VJcOrytMro4+8no2i41XeVTjUYC+DZqcrkTeR
	4yMRY+5G2q1gnc4Nv83xfAxgI0VMsPGeHv5YlFQ++hCwl6KMQGCoOkU+xGDg0ndbZ7rF
	v29cxSPWYMpxMCZMY/ZSGBN/P6M+uH+ZM7RFeEejI+Ii70ff3kFzdAVYaQflniLLhqoq
	lL9g==
Received: by 10.152.129.104 with SMTP id nv8mr2757804lab.32.1345746019152;
	Thu, 23 Aug 2012 11:20:19 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.19.2 with HTTP; Thu, 23 Aug 2012 11:19:59 -0700 (PDT)
In-Reply-To: <CAHUNapRKAxV85L8Aix-YF5yV4-sqN5QR_J5L0O3KWRkw1Eq74g@mail.gmail.com>
References: <CAHUNapSmuzJaUkE2fz27-6MDWGg5TAUug9sBxPWEqneM2OO1WA@mail.gmail.com>
	<11217021.C8RtDxiqPt@helios>
	<CAHUNapRKAxV85L8Aix-YF5yV4-sqN5QR_J5L0O3KWRkw1Eq74g@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 23 Aug 2012 11:19:59 -0700
X-Google-Sender-Auth: wBOAiwyuXACJAIRvCktmltg2vg8
Message-ID: <CABcZANmBWyPr1YJL0E=5uycf_x8MQAHHwk=FeO3D0Fehv2oVXw@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: of recipes and packages
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
X-List-Received-Date: Thu, 23 Aug 2012 18:20:20 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Aug 23, 2012 at 11:02 AM, Trevor Woerner <twoerner@gmail.com> wrote:
> On Thu, Aug 23, 2012 at 3:14 AM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
>> In this
>> instance we can change it very easily in the BitBake help text and we should
>> do so.
>
> So should I send in a patch against the Yocto Project's
> poky/bitbake/bin/bitbake or try to have it accepted upstream?

As I already said once in this thread, bitbake-devel is the correct
place for it to go.
-- 
Christopher Larson

