Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FAE9E002A5
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 07:50:14 -0700 (PDT)
Received: by lboj14 with SMTP id j14so2597119lbo.35
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 07:50:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=gr0+sF26klGlIWvzQikvQn5AZFg8eMwPrxnb54tyVc4=;
	b=fjfx2gitu8ec1zQW7GwaMYknnGcNG6dYs86CS/Ss43aogl1bBK+xoYFmA6X4vqQ5EJ
	LHFocm9vpYpnsWoKrPoTqah9kYsTdszsZLXwlXLN/nRPSYkwRQEtGSPRgVLdP2ycJdV+
	/tnBPF7MIf8CW6iEzhbyg0OJw7MTUjhK12wK/WTx7RNlOQ0ZtkQptLk2Up1S83vUr4mv
	kUgOIve0uNYIG2lJCVynni6VSPjrLcP2P/nsU1laTYuhPFR2XBniF7mj94jmlQTNOTZ1
	8VemSlfsllzhQ4nthS2XF2FeTrurgAXvUUF2VeJPstdWb/umD9J6MKfix2ppWZU3uxLw
	emcA==
Received: by 10.112.85.225 with SMTP id k1mr1961937lbz.38.1342623013220; Wed,
	18 Jul 2012 07:50:13 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.64.180 with HTTP; Wed, 18 Jul 2012 07:49:53 -0700 (PDT)
In-Reply-To: <CAJTo0LYu-Y6UxFYYsO_pm32PKVAGRstjmLy6SjUo6Uvi+j_1+Q@mail.gmail.com>
References: <5006A190.6090508@freenet.de> <5006A6F6.3040208@freenet.de>
	<CAJTo0LbGL6hakXLgVf8SuK6A-VxgnJM7JtRJObd4_amdongwWA@mail.gmail.com>
	<CAJTo0LbKTyVPKjSxSYBqMj5u574O9YQoKwxgwysmr+hJsu6Azg@mail.gmail.com>
	<CABcZANkbW0vppe82d6mMnsh-rDZSNq_SCLPrKyA_h+N-Z4T=1w@mail.gmail.com>
	<CAJTo0LYu-Y6UxFYYsO_pm32PKVAGRstjmLy6SjUo6Uvi+j_1+Q@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 18 Jul 2012 07:49:53 -0700
X-Google-Sender-Auth: 0uL4ab7jBj5xivfS_N1IAul-7qg
Message-ID: <CABcZANnxAiMRYJpV47jaGq8rMOV9g3Pa-AHy8T_jS8nun9vWOg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [Solved] Re: Error: PATH contains '.' or '', which will break the build, please remove this.
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
X-List-Received-Date: Wed, 18 Jul 2012 14:50:14 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jul 18, 2012 at 6:57 AM, Burton, Ross <ross.burton@intel.com> wrote:
> On 18 July 2012 14:46, Chris Larson <clarson@kergoth.com> wrote:
>> On Wed, Jul 18, 2012 at 6:37 AM, Burton, Ross <ross.burton@intel.com> wrote:
>>> On 18 July 2012 13:13, Burton, Ross <ross.burton@intel.com> wrote:
>>>> I'm working on a patch to display the parsed PATH so you'll see the
>>>> trailing empty element in that case.
>>>
>>> How's this?
>>
>> It's still slightly hard to spot there. I wonder if something like
>> this would be easier for the user?
>>
>> ERROR: Invalid PATH entry at character N: /usr/bin:/bin:
>
> That would be easier for the user, but harder to implement. :)

It'd be something like https://gist.github.com/3136618, no doubt.

But the problem is the assumption of the length of the prefix, that
is, assumption of the final formatting to the user, which isn't ideal.
What we should do, I think, is teach the UI log formatter to indent
subsequent lines based on its own prefix, so that "foo\nbar" would
show up like this:

ERROR: foo
             bar

Rather than:

ERROR: foo
bar
-- 
Christopher Larson

