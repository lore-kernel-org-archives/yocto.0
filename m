Return-Path: <trevor.woerner@linaro.org>
Received: from mail-yk0-f175.google.com (mail-yk0-f175.google.com
	[209.85.160.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 279E1E0073C
	for <yocto@yoctoproject.org>; Tue, 25 Mar 2014 09:09:06 -0700 (PDT)
Received: by mail-yk0-f175.google.com with SMTP id 131so1715491ykp.6
	for <yocto@yoctoproject.org>; Tue, 25 Mar 2014 09:09:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=y+d0ILvclzcaskaaxszNB2ACDj/TXeWxAr5N4e78NYw=;
	b=MIWP2/fyyJw2MCMpK91h+uWGRy2SM9wVsYXzqc9hJtVKPe7euq6xPzmR3agYg4Pqd9
	DJBMkq7UpBjkfiF9Udy7JGKF/6wwSmuVnuAUle/yTzl6o6zFwvJWRbyiHktgzmz56WGT
	M5A0UayRUxR+t3w392t1aoTv46jIw7ZOE8EA0fdLMLx5TDfOKoiP88WMYhmPK24XlPUG
	VDaM+2jHzu3IWWHDNIAoUyqIxJIUqX/jANkcFItGQBA2N6C9xRUzTQbROugEGWs7IoDo
	l5ZSy004AA3VjWkz8t1RTFuQZ+jqN3Nj+x0h+CwpqBPrPhTJlMpHm8hCwN+JIqIXPswM
	f8zA==
X-Gm-Message-State: ALoCoQnHwb0eZ6gd7tnTdxi+nzWRuSqtxcqB6G5hsdCZg14VETYRfv6CoH8AV1lULGniU1Emni1f
X-Received: by 10.236.155.106 with SMTP id i70mr19502861yhk.38.1395763741392; 
	Tue, 25 Mar 2014 09:09:01 -0700 (PDT)
Received: from [192.168.141.83] (69-165-220-158.dsl.teksavvy.com.
	[69.165.220.158]) by mx.google.com with ESMTPSA id
	d68sm12310619yhc.37.2014.03.25.09.08.58 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 25 Mar 2014 09:08:58 -0700 (PDT)
Message-ID: <5331AA1A.1050307@linaro.org>
Date: Tue, 25 Mar 2014 12:08:58 -0400
From: Trevor Woerner <trevor.woerner@linaro.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <532D6D85.7010302@linaro.org>
	<CAJTo0LYruhkg+c5KOae410SQkV0sRH-h05Y+gL73i1zYfsh0cw@mail.gmail.com>
In-Reply-To: <CAJTo0LYruhkg+c5KOae410SQkV0sRH-h05Y+gL73i1zYfsh0cw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: inherit setuptools
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
X-List-Received-Date: Tue, 25 Mar 2014 16:09:09 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Ross,

On 03/22/14 15:45, Burton, Ross wrote:
> And FWIW, I didn't get much out of bmap when I tried it because of how
> our images were constructed: all of the sparse segments disappeared
> when a whole-disk image was created.

I have expanded a little bit on this issue here:
http://twoerner.blogspot.ca/2014/03/using-bmaptool-to-create-memory-card.html

and I see better what you mean about sparse segments. Using bmaptool,
theoretically, the same core-image-minimal should take the same ~20
seconds to write whether the image is 80MB or 4GB. The fact these are
significantly different suggests there might be room for improvement in
the way our images are created?

Still, I was able to go from 50 minutes to 14 when writing the 4GB image
using bmaptool versus using dd, so that's an improvement none the less.

> I got a much better win by using USB 3: around 10 seconds to write a
> gigabyte+ image to a stick... Ross 

Thanks for the tip!

