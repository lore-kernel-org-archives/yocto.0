Return-Path: <kergoth@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 770F6E006DD
	for <yocto@yoctoproject.org>; Wed,  4 Jan 2012 08:31:46 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qcsc2 with SMTP id c2so13005723qcs.35
	for <yocto@yoctoproject.org>; Wed, 04 Jan 2012 08:31:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=1GJX6V0GiZxIaJjpZZK91oWon+cFsnOe8HNKgh/j5hA=;
	b=knPkHkg57X4Q9nU3w+e0HA7cj1cph8ctp1QcJPWQ6QxT4LXF2/CK4srJfBi7ToWNrd
	l3kHNR7jfw/DlEIYa12yhSULF94UrtqHQcEJk3iSJV2hiBALZkcmQTPFeQSltKGZY5OU
	oSigp/2P+9KudTdhEHY6Pt9asz3I+W2ki/oTk=
Received: by 10.229.77.69 with SMTP id f5mr20845960qck.107.1325694705341; Wed,
	04 Jan 2012 08:31:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.229.187.141 with HTTP; Wed, 4 Jan 2012 08:31:24 -0800 (PST)
In-Reply-To: <4F047B4F.7020809@linux.intel.com>
References: <cover.1325115602.git.dvhart@linux.intel.com>
	<ffa7a3dfe6a46305c98f2ae7fd05f21a3d220fa8.1325115602.git.dvhart@linux.intel.com>
	<CAMKF1so814A+hqP=xqWjhQCeuwkg__V67Q5OMjYqzsh5k+-tKg@mail.gmail.com>
	<4F047B4F.7020809@linux.intel.com>
From: Chris Larson <kergoth@gmail.com>
Date: Wed, 4 Jan 2012 09:31:24 -0700
Message-ID: <CABcZANkknnjorVCULryE0dCOL0HatBzEeeiVV7QZ++PjEWMbjw@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 2/3] distro: Add poky-tiny distro definition
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
X-List-Received-Date: Wed, 04 Jan 2012 16:31:46 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jan 4, 2012 at 9:16 AM, Darren Hart <dvhart@linux.intel.com> wrote:
>>> +++ b/meta-yocto/conf/distro/poky-tiny.conf
>>> @@ -0,0 +1,103 @@
>>> +# Distribution definition for: poky-tiny
>>> +#
>>> +# Copyright (c) 2011, Intel Corporation.
>>> +# All rights reserved.
>>> +#
>>
>> should this be MIT licensed ?
>> or do u plan to keep it closed.
>
> Should be MIT - my understanding was that was the default if no license
> was specified in a particular file. Is that not correct?

Well, yes, but this does say "All Rights Reserved", too :)
-- 
Christopher Larson

