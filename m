Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f180.google.com (mail-ve0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2411E00429
	for <yocto@yoctoproject.org>; Thu,  9 May 2013 09:54:32 -0700 (PDT)
Received: by mail-ve0-f180.google.com with SMTP id pa12so3067212veb.11
	for <yocto@yoctoproject.org>; Thu, 09 May 2013 09:54:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=kke4hNacByLeEahL3543Fq6vtzalunMPN28GCjqgjyU=;
	b=I3icnnwuk3ngFb3JXTh5yMHlQGpeayZKp/50zoWTFtiDDYA8xfjFbknWbSmZJOG8wC
	DwVxmZv7dbz1RcqqBa/+GdgCtPOaHMBUuXxj49Y7+x0kqdVIICaFsBe4BgK9Yt+qKJ7w
	4AV+30mIgJRLusi5vpC4gIWxW+uVckklYUwHujyLPuqQsD5BeTmzfEeWkLMc5GWX3PRz
	mpdRYg/zJbvmstzlCUh1P4bx3zdbqXziqwZCrrVVbBnO+C7Qlt2OkQMNU2tcwBQyrdRX
	r7aEtINNfYX9U7xs3Ec6LikRc1hadMZPKQHVj6FPaa2tj5mVnZtVn7XtqXX9znguImNS
	r8Xw==
X-Received: by 10.220.78.131 with SMTP id l3mr8539329vck.54.1368118471948;
	Thu, 09 May 2013 09:54:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.221.8.3 with HTTP; Thu, 9 May 2013 09:54:11 -0700 (PDT)
In-Reply-To: <CANwz6nwxkWyCPZTkPONK4z==j1+vbHc0PAYw4S7=hTjkwMbkow@mail.gmail.com>
References: <CANwz6nzLfczXdCZ6pXRKWqenoJ_cB=cjUTuasPeZfim+Kn2zyA@mail.gmail.com>
	<CAJTo0LYJQkV=B7uTxW=pkd--VHX7VjdA4ST2q1JMVNsSVuKcQw@mail.gmail.com>
	<CANwz6nwxkWyCPZTkPONK4z==j1+vbHc0PAYw4S7=hTjkwMbkow@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 9 May 2013 17:54:11 +0100
Message-ID: <CAJTo0LYXzVDTegbhJ7AtkNEThremApwOR_-p=Y2S01GtcC0SpA@mail.gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
X-Gm-Message-State: ALoCoQmONMQBw5vj2QU9eWrlkZcOCQBdEF5TvNyJIXBwVBrT81ktCMq/qvl2yznIPPAXIPUZR35q
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: recipe gsl-1.15
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
X-List-Received-Date: Thu, 09 May 2013 16:54:33 -0000
Content-Type: text/plain; charset=UTF-8

On 9 May 2013 17:50, Edward Vidal <vidal.develone@gmail.com> wrote:
> The only place I saw ** License updated to GNU GPL version 3.  was in the
> NEWS file.

GNU software typically includes a COPYING file with the license terms
in, use that entire file.

Ross

