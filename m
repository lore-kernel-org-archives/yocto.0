Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A636E013A3
	for <yocto@yoctoproject.org>; Fri,  9 Mar 2012 07:30:12 -0800 (PST)
Received: by lagu2 with SMTP id u2so2465855lag.35
	for <yocto@yoctoproject.org>; Fri, 09 Mar 2012 07:30:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=dXKbG1YPKVQ5U55HSmYG9HOY9MppnMSNg6WY9OWarVk=;
	b=RQB2clfAGbNF0t5VhnmG3hGNj5BCoN5zbrgDUNnTgmzC4AO7JcHruY2XgzporL/GGT
	KxWUc157pDhT08dIB755bLq9Ns1ZPqyfSRD7FsVhA4KtjEiw4O0nWYHxHJC8RKwu+7rh
	gu0OStxdx+uZE6T/ZZzuqBAzl1NIyDixsd2Ly/Utjv/2sAT51eSFGU6XxBsQJrfOKfMJ
	jBlu6B6swY5/a5bn0teaMwpXAaKeZAgCjs4+q7K0J9m7yn+Mhcjhdb1/ZiYddUVNFcWZ
	hEWNGshPGbPPnKwp4ImzYxr4LLWP3UGCmdBOOH3/VQ/pazSCOFl1PoHzUJAn9p2bFSqI
	K8kw==
Received: by 10.112.29.200 with SMTP id m8mr985853lbh.44.1331307011299; Fri,
	09 Mar 2012 07:30:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.27.109 with HTTP; Fri, 9 Mar 2012 07:29:41 -0800 (PST)
In-Reply-To: <4F5A1F48.4040601@linux.intel.com>
References: <4F5A1F48.4040601@linux.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 9 Mar 2012 07:29:41 -0800
Message-ID: <CAMKF1sp+rEg4CRbRjyRTOtHaFLnxEKpqk++F5pE1xei-Tejnaw@mail.gmail.com>
To: John Toomey <john.toomey@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: issue building iputils with uclibc
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
X-List-Received-Date: Fri, 09 Mar 2012 15:30:13 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 9, 2012 at 7:18 AM, John Toomey <john.toomey@linux.intel.com> wrote:
> undefined reference to `dn_comp'

add LDFLAGS_libc-uclibc_append = " -lresolv" to recipe.

