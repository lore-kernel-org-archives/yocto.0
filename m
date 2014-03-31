Return-Path: <otavio.salvador@gmail.com>
Received: from mail-yh0-f54.google.com (mail-yh0-f54.google.com
	[209.85.213.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50AFAE00C1D
	for <yocto@yoctoproject.org>; Mon, 31 Mar 2014 11:39:01 -0700 (PDT)
Received: by mail-yh0-f54.google.com with SMTP id f73so8033435yha.13
	for <yocto@yoctoproject.org>; Mon, 31 Mar 2014 11:39:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=w37NAZSql6m+rANYZ/yk8r5+rakcTYHAPN0fsytl2gY=;
	b=HftSBBPriDZYW9cWYDSmWa3DS9YBmp4Wp9FyUOs1mKGbICWEQVehaDBtM17gst4YO9
	FILqzOYWl/qG+6CozXJ4q4aegPjZVHLpOyUUcUzQgwWGK5HAySTYO74b8BLZ/SLih77E
	3hcTIRSkeSkqF3OH98JQcJ/yfJDI6drATpIMVkWjETCAlw7auLCHXi9cJdwqJIOMalxp
	yEpQwIhIUnsrrOa5C3qebSZHUt4LvQ9YRObfEDP39qAsnPy4s3qw8xQf8uhj5ZXrjpnL
	V5g/RQ15mh6wmsxK62DXSlee8mvBABB9Zj91SLNe79jKy/i1pfX6ALKsnrnih47Jsxt+
	7jqA==
MIME-Version: 1.0
X-Received: by 10.236.63.103 with SMTP id z67mr7724666yhc.2.1396291141140;
	Mon, 31 Mar 2014 11:39:01 -0700 (PDT)
Sender: otavio.salvador@gmail.com
Received: by 10.170.124.72 with HTTP; Mon, 31 Mar 2014 11:39:01 -0700 (PDT)
In-Reply-To: <CAPhnLPDGY8ydV5jyRH=bLk=sAoj=c4ZP=b8Rx=1n6tfdG1Zbkg@mail.gmail.com>
References: <CAPhnLPAJy5Lxbxfrh_RV-fOeoEyaXy8jZR6go2VdP=unHToFPw@mail.gmail.com>
	<CAP9ODKqAh9Jb2E8DyBFQuwe91ndAGF5zJr1VAHKdfK=SrRxdDQ@mail.gmail.com>
	<CAP9ODKqMiSZRRMHg24J8BOe4wizeJWcufk7DvteXsknCC4X8Gg@mail.gmail.com>
	<CAPhnLPDGY8ydV5jyRH=bLk=sAoj=c4ZP=b8Rx=1n6tfdG1Zbkg@mail.gmail.com>
Date: Mon, 31 Mar 2014 15:39:01 -0300
X-Google-Sender-Auth: 1PeqV6xb7RyFaq3vIulUv_v4pQY
Message-ID: <CAP9ODKotM4XFA8cpSu=SjpcjAKwHThPGxJVnE=5VC2xs_ww8ug@mail.gmail.com>
From: Otavio Salvador <otavio@ossystems.com.br>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Reducing nightly/release build artifacts.
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
X-List-Received-Date: Mon, 31 Mar 2014 18:39:03 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Mar 31, 2014 at 3:38 PM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> So, if I were to not publish the fsl builds, would that be an issue?

For me, it would work. In case I need something I can ask you to add
it back in future.

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

