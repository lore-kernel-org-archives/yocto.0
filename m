Return-Path: <insop.song@gmail.com>
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81E72E0140A;
	Mon, 18 Mar 2013 08:47:11 -0700 (PDT)
Received: by mail-wi0-f173.google.com with SMTP id hq4so2834871wib.0
	for <multiple recipients>; Mon, 18 Mar 2013 08:47:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=QO1ylIsT8/kSARqdfnik1Hj6sBXARkKix035am+QQNg=;
	b=eN/yvuNmKHKg9TwhjZvb0145E59DzTgWhcGbj5M+Z4zRqQaMpLPTADSz8cIEWjmSNd
	4HL4X7cNJ+auxRfOEMAAQTmKM/wvpTqcoLz5X262+grkZiCkjOJQIhoOAM5YRtyOClNN
	BnR+70eoIvTvvdjou1MN3rwwHcG282b9rfJFq2OTBOJvgCr4l8r3n3AeCHVYvoqiOIit
	/tK8NNvDs2h7et3xCppfQS+p2fX9P7gDbkNxbHLq/+S/bBCQtyOfsTc8ScHT5gNZv/1F
	ftQ27vr3yIgjXo8Ra5nx64HN3NISSpNAWgSb3Bt+zdNdpT8LIw5n1UbfCkTmr0YWzb0+
	9u9A==
X-Received: by 10.194.123.103 with SMTP id lz7mr26062628wjb.10.1363621630431; 
	Mon, 18 Mar 2013 08:47:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Mon, 18 Mar 2013 08:46:49 -0700 (PDT)
In-Reply-To: <51472307.9000202@windriver.com>
References: <insop.song@gmail.com> <cover.1363428594.git.insop.song@gmail.com>
	<514540B6.2090307@windriver.com>
	<CACzyEJ-Fe8iGEHH8ddG18Op_1sfkNBhVtWTsJcRhf4cxaVw6kw@mail.gmail.com>
	<51472307.9000202@windriver.com>
From: Insop Song <insop.song@gmail.com>
Date: Mon, 18 Mar 2013 08:46:49 -0700
Message-ID: <CACzyEJ8f3G+d1MdqQFzVq6v_U7YpqQa729nP5Z7o8Hca0FROVQ@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com,
	"Development list for the linux-yocto*.git Linux kernel repositories"
	<linux-yocto@yoctoproject.org>
Subject: Re: [linux-yocto] [PATCH 0/1] [meta-realtime] Add rt-app, schedtool, define core-image-realtime, and append recipies-kernel
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
X-List-Received-Date: Mon, 18 Mar 2013 15:47:12 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Mar 18, 2013 at 7:21 AM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
>
>
> I went with core-image-rt-extended this morning.
>
> The changes have been merged, briefly tested and pushed to the
> yocto layer.
>
> I've also created a docs/ subirectory in the layer, if you have
> test steps, READMEs or other information to contribute, that's the
> place we should put it.
>
> We can tweak this as required from here.
>

Thank you and will update the docs dir soon.

Regards,

Insop

