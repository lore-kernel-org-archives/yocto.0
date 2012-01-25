Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36B37E0059A
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2012 06:49:04 -0800 (PST)
Received: from [192.168.0.27] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id F18192723A
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2012 14:36:22 +0000 (GMT)
Message-ID: <4F201635.7090505@communistcode.co.uk>
Date: Wed, 25 Jan 2012 14:48:21 +0000
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111224 Thunderbird/9.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAFZh4h_X5Ub+et3R68K1z3wvYpcZxdAv2mf2tQV6HtiWp7xNqw@mail.gmail.com>
In-Reply-To: <CAFZh4h_X5Ub+et3R68K1z3wvYpcZxdAv2mf2tQV6HtiWp7xNqw@mail.gmail.com>
Subject: Re: Is there a recipe for evtest package?
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
X-List-Received-Date: Wed, 25 Jan 2012 14:49:05 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 25/01/12 14:42, Brian Hutchinson wrote:
> Hi,
>
> Looking for the evtest package in Yocto.  Is there a meta data layer I
> can checkout that has it?
>
> Regards,
>
> Brian
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Hi Brian,

Your best bet is to adapt the one from meta-oe here:

http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-support/evtest

Cheers,
Jack.

