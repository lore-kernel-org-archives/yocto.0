Return-Path: <scott.a.garman@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B76BE0070B
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2012 09:56:51 -0700 (PDT)
Received: from mail-yw0-f52.google.com ([209.85.213.52])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 01 Aug 2012 09:56:50 -0700
Received: by yhpp61 with SMTP id p61so6668180yhp.25
	for <yocto@yoctoproject.org>; Wed, 01 Aug 2012 09:56:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=0vn2XlzvyN7W4MozoX+ZzSVnZZxKLIGA8r2dWlWbHQo=;
	b=prSLQ/LaXQOR7oHHunpvImayofqeBKoF/bMhM80TlwSSkf7h12bqQAs28UHcl76ESl
	DRaiF/7f7JHsDZSVDC/2Hc2RzAA8WqHmP5sUnhSPMv/AptbjrrEy6Pwu/ct8rRUL8JF6
	0C0csHCjzzDFCKHuPF7ix6fTh181mVsTq3VtaBBObrd1Yt3fjIfIttkzEQR1Ql4Rcra7
	zP1exXePT8Tm/gYlsY1ApsovVyd1goCMHkliY3WImtZADa96RxQ4LPpQQ4WiGw8HMXoh
	FXtRMaD5IXoEHxEkhiGGZdw8n2kG5XAWVy/46sa0UWWnPMxTQXjr+SEymDgvTMjU/zQm
	Sc4Q==
Received: by 10.66.84.137 with SMTP id z9mr41331969pay.18.1343840209221;
	Wed, 01 Aug 2012 09:56:49 -0700 (PDT)
Received: from [10.1.10.192] (c-50-137-42-92.hsd1.or.comcast.net.
	[50.137.42.92])
	by mx.google.com with ESMTPS id oy8sm2914008pbc.52.2012.08.01.09.56.48
	(version=SSLv3 cipher=OTHER); Wed, 01 Aug 2012 09:56:48 -0700 (PDT)
Message-ID: <50195FCF.1030004@intel.com>
Date: Wed, 01 Aug 2012 09:56:47 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: Leon Woestenberg <sidebranch.openembedded@gmail.com>
References: <CAMvUbCwjZ8gRmGEJ4LkHAiKEmMZSWSZGVrg-jwxPRW8r=ePn7w@mail.gmail.com>
	<CAMvUbCyh0LPs-s9ShTG7UexGC_f0s16_6WfFhbhGbNsxpjvRaw@mail.gmail.com>
In-Reply-To: <CAMvUbCyh0LPs-s9ShTG7UexGC_f0s16_6WfFhbhGbNsxpjvRaw@mail.gmail.com>
X-Gm-Message-State: ALoCoQmBcUKeH4ncyc+UPga7Wok4RzQc0IqnBV8ex+0Q+9XHSrNzV9bmJ9Ic9vcjZLY3grSBeQa1
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	Yocto Project <yocto@yoctoproject.org>, "Purdie,
	Richard" <richard.purdie@intel.com>
Subject: Re: [denzil-next BREAKAGE] Silent breakage in denzil-next --- uImage*.dts no longer generated
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
X-List-Received-Date: Wed, 01 Aug 2012 16:56:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/01/2012 07:50 AM, Leon Woestenberg wrote:
> Hello Scott, all,
>
> On Wed, Aug 1, 2012 at 4:31 PM, Leon Woestenberg
> <sidebranch.openembedded@gmail.com
> <mailto:sidebranch.openembedded@gmail.com>> wrote:
>
>     Hello Scott,
>
>     I tested your denzil-next branch but found breakage that will not
>     fail the (auto) build.
>
>     I'm hitting the "Warning: ${DTS_FILE} is not available!" case.
>
> Disregard the breakage.  Local user error; my KERNEL_DEVICETREE missed
> the "${S}" prefix.
>
> However, that being said, should we silently fail with a warning of the
> specified device tree (DTS) is missing?  This is clearly a change of
> behaviour that makes the build prone to user errors, as I just demonstrated.
>
> I rather have the build fail.

Hi Leon,

Thanks for bringing this up. I believe Matthew made the original request 
for this commit (linux-dtb: add multi-dtb build support, 
a40d795ee97d8ada6a0b76c9741a8653fd646893). I'm cc:'ing him on this email 
as well as Richard Purdie, who has yet to review the new commits in my 
denzil-next branch and may also have some input on this issue.

The question in my mind right now is whether this change is too 
risky/change-inducing for a point-release.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

