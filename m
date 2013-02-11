Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f178.google.com (mail-ve0-f178.google.com
	[209.85.128.178]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 74C4CE01482
	for <yocto@yoctoproject.org>; Mon, 11 Feb 2013 02:20:25 -0800 (PST)
Received: by mail-ve0-f178.google.com with SMTP id db10so4933274veb.23
	for <yocto@yoctoproject.org>; Mon, 11 Feb 2013 02:20:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=ta6maOzJPivEya21rVsK0d0FQ2hsSVEumnuOJRwo6pE=;
	b=c7TjXDSNDIHq6fnZMubFCdT3L49vGFzfnjzES4Ai0U4SoLtwx/Yi3VRNqoKdQinte5
	ksyE1j0loclKAzoGyL/HWEArz5aDTj4YrUYgS8iyZdRK2UWBjnz2PpMnQzzpaGsW3Qo2
	dfP/zYzxM4N7k0mmehQycXrGPMqpHHAI5SteDoZbFfu+1ml+1NkNlWubWZkH6mzbx5zr
	L5kzUAGFuLo0XAFVb/EmAJfrqzh0EByknIfqCDrFqhnPD3HdjajCpmjqnCcq26W+8GIE
	7lVoqo84yO03ZFoW3FDnGM2336TYLV5LVdgmEAnnuvFhL8ozspmxk++XhEXC0dm0ELpg
	UBhA==
X-Received: by 10.52.23.18 with SMTP id i18mr15531836vdf.46.1360578024444;
	Mon, 11 Feb 2013 02:20:24 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.95.131 with HTTP; Mon, 11 Feb 2013 02:20:04 -0800 (PST)
In-Reply-To: <CAF6bG8cQYitDLGaura3GMNuEfAFBSE228tvYqr-b=yQNMB6YsA@mail.gmail.com>
References: <1360357684-14259-1-git-send-email-cazfi74@gmail.com>
	<51156CA8.4080601@mlbassoc.com>
	<CAF6bG8cQYitDLGaura3GMNuEfAFBSE228tvYqr-b=yQNMB6YsA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 11 Feb 2013 10:20:04 +0000
Message-ID: <CAJTo0LaxO59VZxKfTkugSsE6gxyMAtsJ+B29kLpjMcz0TcghVA@mail.gmail.com>
To: Marko Lindqvist <cazfi74@gmail.com>
X-Gm-Message-State: ALoCoQl3DuMFE3DBL7jgbD3MFys0TjIHpcMUHM5G+K+SyBDNDV+sv2xLVRljtp/rA7jOo60CNG1U
Cc: yocto@yoctoproject.org
Subject: Re: Fix gtk-sato-engine build with automake-1.13
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
X-List-Received-Date: Mon, 11 Feb 2013 10:20:25 -0000
Content-Type: text/plain; charset=UTF-8

On 8 February 2013 21:49, Marko Lindqvist <cazfi74@gmail.com> wrote:
> On 8 February 2013 23:22, Gary Thomas <gary@mlbassoc.com> wrote:
>> On 2013-02-08 14:08, Marko Lindqvist wrote:
>>>
>>> [PATCH] configure.ac: fix build with automake-1.13
>>
>> Patch seems to be missing
>
>  This time inlining it to this email. Hope it makes through this way.

Pushed to master of gtk-sato-engine.

Ross

