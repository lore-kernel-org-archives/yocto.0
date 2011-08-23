Return-Path: <tom.rini@gmail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38F6AE01200
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 10:08:40 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qwj9 with SMTP id 9so325001qwj.35
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 10:08:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=QfhvDXM/RwXEtkvN8TIfgqaXiJUuf6J1Jo7pcyKOsE8=;
	b=Y4G48HQVnW/fJcv2YnhI3OXw1PnjEYFVzN3/9IHmMYjLuivQ7IwYohkCefyFWRDLoz
	I9EUoEZ525zuuVUkXKp5u/KcUwoxgvDVqPYN7/pj1eU0E101t5yTjTVgrgIHbHiZS8HS
	zLpi8ztDywUxKqW9PD0106EilBlfP/1R7K2ZE=
MIME-Version: 1.0
Received: by 10.229.119.71 with SMTP id y7mr2536828qcq.30.1314119319566; Tue,
	23 Aug 2011 10:08:39 -0700 (PDT)
Received: by 10.229.167.133 with HTTP; Tue, 23 Aug 2011 10:08:39 -0700 (PDT)
In-Reply-To: <4E53DB94.80106@linux.intel.com>
References: <cover.1313792192.git.dvhart@linux.intel.com>
	<0c8f4cdc6cf96da157b4c4bae8f4e13fca6d46e8.1313792192.git.dvhart@linux.intel.com>
	<CAD08DEC-FD47-4799-9871-289CA89279FE@dominion.thruhere.net>
	<4E53ABC1.3050906@linux.intel.com>
	<CA+M6bXn7z4+y+PF3AOm+vCJ8y_7rpM2A8Q0JoXVOLhg9dwz1ag@mail.gmail.com>
	<4E53DB94.80106@linux.intel.com>
Date: Tue, 23 Aug 2011 12:08:39 -0500
Message-ID: <CA+M6bXnmeQ+2QVKX2MhmQ_T7XobY8y66cJmhf7CNKB0kVRwgqw@mail.gmail.com>
From: Tom Rini <tom.rini@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] beagleboard: enable hard floating point abi
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
X-List-Received-Date: Tue, 23 Aug 2011 17:08:40 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Aug 23, 2011 at 11:55 AM, Darren Hart <dvhart@linux.intel.com> wrote:
> On 08/23/2011 08:34 AM, Tom Rini wrote:
>> On Tue, Aug 23, 2011 at 8:31 AM, Darren Hart <dvhart@linux.intel.com> wrote:
>>> On 08/23/2011 05:38 AM, Koen Kooi wrote:
>>>>
>>>> Op 20 aug. 2011, om 00:23 heeft Darren Hart het volgende geschreven:
>>>>
>>>>> Fixes [YOCTO #1203]
>>>>>
>>>>> Using the hard floating point abi is incompatible with some binary
>>>>> libaries and 3D support for the Beagleboard. As we do not provide
>>>>> these in poky and meta-yocto, we can take advantage of the hard
>>>>> floating point abi.
>>>>
>>>> What advantage are you talking about? So far everyone has been unable
>>>> to provide real-world numbers[1] that show hardfp making a difference
>>>> compared to a properly configured softfp. The numbers debian and
>>>> meego are showing are comparing it against completely vfpless builds,
>>>
>>>
>>> That's good reasoning to stick with softfp+neon. Unfortunately I can't
>>> find the mail threads that first got me looking into adding hardfp
>>> support. As I said, I'm not sold on the idea, but it was requested so I
>>> looked into how to address it.
>>>
>>> If nobody comes forward saying they would really like to have this, I'm
>>> going to modify the patch series to disable hardfp by default, but leave
>>> the infrastructure in place so people can enable if they like.
>>
>> Well, are there some softfp related config bits we need on the yocto
>> side that meta-ti has, in order to bring that performance back in
>> line?
>
> Are you referring to a specific performance measure?

Just the general ones that have caused people to say softfp+neon isn't
enough (outside of povray :)).

-- 
Tom

