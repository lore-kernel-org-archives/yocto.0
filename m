Return-Path: <jfabernathy@gmail.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C44CE01363
	for <yocto@yoctoproject.org>; Thu, 24 May 2012 07:45:23 -0700 (PDT)
Received: by vcbfo14 with SMTP id fo14so2235953vcb.35
	for <yocto@yoctoproject.org>; Thu, 24 May 2012 07:45:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=eS4B+x4qpDXlPN+PE8NxWkHXikBOpUCI747Ig9+0Qt8=;
	b=Tj6nl0o/GbzhYDRZqBGDq37JjrwKbRUei2HZXA8KPXjU/ZZLXCY/3Nr/Lg/pMHkjWd
	X4eMPKzTIBwaMSMhyxHikyApUZI1lAfnfyNLPrdkwzLAfEwxFWZT4xeR4a6cRhF7/HMl
	uuQaU0njyL2AYqIk7E0LmQRJpjGgZumhXw++D7S0Vq6z3gbcKsxLKYipPWKwCu2xArOd
	z0GNU7n65b0u/fYtDY4JZnU9B6+c+P2gydCPRluKPJ7gARuKDP2+pOX9wPPQLy6uoqrG
	ue3MNCFcoBf7S65juIayDy+MhBPfxxw50oDdOfrcHYsmsb0uPX0/5m7K8IjSCG+y60L8
	vXoA==
Received: by 10.220.214.148 with SMTP id ha20mr6948364vcb.5.1337870722461;
	Thu, 24 May 2012 07:45:22 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-55.dhcp.embarqhsd.net. [184.4.33.55])
	by mx.google.com with ESMTPS id
	e4sm28214819vdh.10.2012.05.24.07.45.21 (version=SSLv3 cipher=OTHER);
	Thu, 24 May 2012 07:45:22 -0700 (PDT)
Message-ID: <4FBE4981.3080902@gmail.com>
Date: Thu, 24 May 2012 10:45:21 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4FBE45EC.5040000@mindchasers.com>
In-Reply-To: <4FBE45EC.5040000@mindchasers.com>
Subject: Re: headless yocto linux on Intel?
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
X-List-Received-Date: Thu, 24 May 2012 14:45:23 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 05/24/2012 10:30 AM, Bob Cochran wrote:
> Hello,
>
> Is it still the case that all Atom solutions have built in video 
> support? So, if I wanted to use Atom for a headless solution, I would 
> have idle video hardware.
>
> If this isn't the case, can you please point me to the best Atom 
> solution to run a headless (yocto) Linux embedded system?
>
> Thanks,
>
> Bob
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
All Intel® Atom™ Processors currently have GFX hardware of some kind. 
Any can run Yocto with or without graphic. You control that with the 
recipes and how you edit them. To answer your question as to the best, 
that depends on if you are needing a certain set of hardware features or 
whether you are doing a component design or looking for a board. The 
n450 and cedartrail have commercially available boards available in form 
factors like mini ITX, etc. E6xx and emenlow have a lot of boards 
available from members of the Intel® Intelligent Systems Alliance. Check 
out edc.intel.com for a list of members and links to their boards. 
http://www.intel.com/design/network/ica/index.htm#iid=1613

Jim A


