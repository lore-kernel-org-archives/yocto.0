Return-Path: <scott.a.garman@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D3C1E00346
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 11:39:53 -0700 (PDT)
Received: from mail-pb0-f52.google.com ([209.85.160.52])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 08 Aug 2012 11:39:52 -0700
Received: by pbcxa7 with SMTP id xa7so1870233pbc.25
	for <yocto@yoctoproject.org>; Wed, 08 Aug 2012 11:39:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=uhAi6XtqOU/LlgWiUkVaeBmLUoYNYYI/k0Ovej1wxJM=;
	b=hCeuaTBN3aG0Q9pKgcLu1HPjVO7120nHNWlt+naQTS/azLNMb2fnJ+IRVo7T5THnSl
	HAh6cVfvIWm6uzQO4TgZlQggq6dVwYn++AVJZ5+AFq3teNAoVXJAEbu102mOVKN1zlbh
	9uqAfaARFEI1ZWVIi/SDCDB2X1/XTHWPqgPnu4cYjf/VL/unvilk/QkfLz0WmTLm0M6k
	GOj+HBzrwwOnb2D7Nlc86k+AL1byz/tjZHiwwTGsH2W/tZeSdQotAuv9rJ8rJa/hD6AQ
	g7fhNKz3pj1kuFqld5cJ7m4MC5wHFkYvOWhDe6FM/5wZY2OvAAcNgZQdCRIK340GSNNv
	ex2w==
Received: by 10.68.236.102 with SMTP id ut6mr38341046pbc.113.1344451192687;
	Wed, 08 Aug 2012 11:39:52 -0700 (PDT)
Received: from [10.1.10.192] (c-50-137-42-92.hsd1.or.comcast.net.
	[50.137.42.92])
	by mx.google.com with ESMTPS id vc5sm10440832pbc.2.2012.08.08.11.39.51
	(version=SSLv3 cipher=OTHER); Wed, 08 Aug 2012 11:39:52 -0700 (PDT)
Message-ID: <5022B276.7000104@intel.com>
Date: Wed, 08 Aug 2012 11:39:50 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <22F5AB9F-5063-4443-97B6-B88EA9DAE877@gmail.com>
In-Reply-To: <22F5AB9F-5063-4443-97B6-B88EA9DAE877@gmail.com>
X-Gm-Message-State: ALoCoQm+1GD1IYd55Obc8FfNrG+dO2laaMi/k/wJM/skJlIEGX1K+6zoC3kQTHj4rSf8Pb9hjEQb
Subject: Re: Maintenance on older branches, e.g. bernard
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
X-List-Received-Date: Wed, 08 Aug 2012 18:39:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/08/2012 11:20 AM, Elvis Dowson wrote:
> Hi, I just noticed that if one were to try switching to an older poky
> branch, say bernard, there are a few errors:
>
> e.g. meta-yocto layer doesn't have a conf folder.
>
> Also if you use one of the tags, e.g. bernard-5.0, bernard-5.0.1,
> bernard-5.0.2, you can run into build failures.
>
> I think at the very least, one should be able to build successfully
> off one of the older branches, and perhaps it should be part of the
> regular regression tests?

When you say "build successfully", how do you define that? Building 
core-image-minimal? -sato? -lsb? For which machines? On how many host 
distros?

We have a problem of scale here which is why bernard (now three stable 
releases old) is no longer undergoing active maintenance or regression 
testing by the core team.

This is where the community or a partner organization with a financial 
interest in supporting that release for their customers needs to step 
in. As time goes on, we're seeing more commercial adoption our releases 
and I think we'll see more of this for the recent releases (edison and 
denzil in particular, but bernard came out when the Yocto Project was 
still fairly new).

IMO,

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

