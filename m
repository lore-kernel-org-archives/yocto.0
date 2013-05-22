Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f182.google.com (mail-ve0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D919CE0140A
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 10:20:01 -0700 (PDT)
Received: by mail-ve0-f182.google.com with SMTP id da11so1625030veb.27
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 10:20:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=+qGrKpomcDyaosnusMuVq9+OlutvMwg/aszmveg26ok=;
	b=PXnWM8qn07kbKyUhysoMbCGh7BtWaQqm1vS6O0MsJ/GH2Ubvl+XslGcUsC7sn7lPZG
	jm79qBNUQqvWVv2DYn+J7i1O82xT473eZPhJ/XvKVK/59vdxsztZplM/3DEy3+wQJb5h
	AJv11bQkPBIUwLbCjnX0EVXogRlEcHJh60WqazvhWfft2ONC4u7ZBwK0AIRwtjFbawc6
	0SIrtye4F46AN4cTZomzMqEKALqM1FFafeYld+rWLYnHwSKNqcXlAaxME+0b4Q8LzErV
	G8Po7B68acxmZNF7G0P5Wmwt36s5qIHPHGvQN4CGW6MbsMSZMHMusRxe+2GztpAhy23/
	03kQ==
X-Received: by 10.220.96.76 with SMTP id g12mr3090034vcn.53.1369243201314;
	Wed, 22 May 2013 10:20:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.98.7 with HTTP; Wed, 22 May 2013 10:19:40 -0700 (PDT)
In-Reply-To: <CAGxOggEv1AJfZDo7_QPt8ZSXwVb4WGGrjf_JaOKH1VWKKocabQ@mail.gmail.com>
References: <CAGxOggGKPW3WQcYbo0vim833ErrjGk8fXQyyiinB56jDjvKWVg@mail.gmail.com>
	<CAJTo0LbaJ4ezpvobr6xGK6-=oPAh_H=Woh1uuY7pcrRZbmXHhg@mail.gmail.com>
	<CAGxOggEv1AJfZDo7_QPt8ZSXwVb4WGGrjf_JaOKH1VWKKocabQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 22 May 2013 18:19:40 +0100
Message-ID: <CAJTo0LZ_VTu6hWPUHN-xc1Xp-VBS8Ea9LwT_6ezg8NLROBkfeQ@mail.gmail.com>
To: varun bhatnagar <varun292006@gmail.com>
X-Gm-Message-State: ALoCoQkpWietXsdivpbwPTrfuHKHOewNUQCNwc4SjjFzlo7a5xDY/PgijcUXH3W7wHkmCUzyqsC5
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: runqemu: vnc server running on ::1:5900
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
X-List-Received-Date: Wed, 22 May 2013 17:20:02 -0000
Content-Type: text/plain; charset=UTF-8

On 22 May 2013 18:12, varun bhatnagar <varun292006@gmail.com> wrote:
> Thanks Burton, Ross....
> Will try this at my workplace.....
> And is this a bug?

No.  Make it require SDL and people object, make it always build
without SDL and people object.  So the dependency is "floating".

Ross

