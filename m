Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77DDCE003E3
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2012 23:37:53 -0800 (PST)
Received: by lagw12 with SMTP id w12so3065462lag.35
	for <yocto@yoctoproject.org>; Fri, 03 Feb 2012 23:37:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=kUYzTOpyTm+kMB5qxzna9zPD26B5efPMxffysvc3LZc=;
	b=GlYe7tkmYT6xk9kj8VExP7wSVoEzUWMoezf1kGnTrJQM/rRSkaZPH9Pf2dWMpmfjV4
	dZVcae7lBOAFD5jyE56sx4A07RbDfJ2YiV9zSRDXOY/OqKCLussPWYmKOJC2gVPNzB0p
	s/MdQn03r+ObFjJ3GZOqROJxVDhQ7aX+VUmP4=
Received: by 10.152.114.169 with SMTP id jh9mr5257656lab.20.1328341072235;
	Fri, 03 Feb 2012 23:37:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.5.201 with HTTP; Fri, 3 Feb 2012 23:37:22 -0800 (PST)
In-Reply-To: <CAEKp-aaQw9a4WSr5OP+RMzGJD+CmAWyGRHeE5RLuZYn5=_xReQ@mail.gmail.com>
References: <CAEKp-abaibKR9XZN8Ddnu4Tt6nWbCiaeJZFkNWZVFWE9ReOwjQ@mail.gmail.com>
	<CAMKF1spEvk-hdJgSyFHNX87jxC8jnipXD--K+e4i1L1yTjf_kQ@mail.gmail.com>
	<CAMKF1sqcteBoCUatim7w=Sb0e0EMBxo57AwxYK8+KP_rUdfm5Q@mail.gmail.com>
	<CAEKp-aaQw9a4WSr5OP+RMzGJD+CmAWyGRHeE5RLuZYn5=_xReQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 3 Feb 2012 23:37:22 -0800
Message-ID: <CAMKF1spLinG=APOtj9DfQsvBoXVpRQKLTXqgzgq=vWSx1z-R=w@mail.gmail.com>
To: Rudolf Streif <rudolf.streif@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Task Build Issue
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
X-List-Received-Date: Sat, 04 Feb 2012 07:37:53 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 3, 2012 at 10:42 PM, Rudolf Streif <rudolf.streif@gmail.com> wrote:
> Thank you, Khem. That does resolve the problem. Using just ALLOW_EMPTY
> = "1" would also cover the other packages, I suppose.

yes

