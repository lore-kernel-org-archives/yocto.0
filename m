Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A66E6E006D8; Fri, 28 Oct 2016 08:41:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45C7AE00519
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2016 08:41:19 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id s8so1578017pfj.2
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2016 08:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=obV0omkg+n5r8EnnZAJRFOSgXF9BwV6Rk5aizqaTX1g=;
	b=CJxh6zKTXm+DrIvKRU2a2wTDVTo1vi/iKo81i4rlLZtMhUnAcaBBghWRrQGdLETPqm
	O/aQAPmIjvHn+yvVdak8wXlnDQ0en5zG/L8qwpLU7y/1Q/DGVDevuOwsXJ7nDI+DHNmj
	IvpCvP92KrJ5TXp9lhKbZU7y9gw933K2FpxE5StKaoqEhX1jQv/Xf7+01H2iBU7qte7C
	kcUZR6q3d8V6Q4mxmhUlYga3WYy3nYfl0fLedlJmc2mUVn6JSvP+rA9Dkbd34s7ZZgKS
	nr93xCslds4F+ymxfC7XKVhy4wvwnbDhXck2NoMNTNRlj1f9vctEh4vfoOVOILZWESwI
	XNfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=obV0omkg+n5r8EnnZAJRFOSgXF9BwV6Rk5aizqaTX1g=;
	b=fby4sTxLOhE2jQOmTiiIEux7X0UwLyOZrxRI0FWnyFin8ixqjk3dY/ZjLpaVdOySYC
	uZ392dmI6RJ+QMfSHdeOQKjauGXQZ1yVvlgCZomqlHVaqh3m3KAFaQft/zMsNlUvKKvk
	yYoJDDKfiSbWq6zjg5vxSg1WxlzxZb7ruASF7zD0ZNp0bqC5EZbp87Z0tbUQLjWlNtnC
	UsRxwJQMH/H33AnWbw4Chl1Ac7krEPszkUXuKX0+R/YGYTDD4Cqv3lpjyBFDDPfuYwYB
	NYPikcVv7Yfk/jnIa1iUVvRZQdvxkrXPeKIGe7fg6o55FHK7a5N9jaZY6fhzwDY3d3zC
	gEKA==
X-Gm-Message-State: ABUngvdZCt0Q+TRkffZYXt5oUksVZLoH2kM1/YWTPvMjaz0Z8cjfdzi1kM4RE8+RJzlSsw==
X-Received: by 10.99.147.75 with SMTP id w11mr21706735pgm.25.1477669278952;
	Fri, 28 Oct 2016 08:41:18 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:c57:6cb7:8938:cc04?
	([2601:202:4001:9ea0:c57:6cb7:8938:cc04])
	by smtp.gmail.com with ESMTPSA id
	j4sm19863303pal.25.2016.10.28.08.41.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 28 Oct 2016 08:41:18 -0700 (PDT)
To: Patrick Ohly <patrick.ohly@intel.com>, Khem Raj <raj.khem@gmail.com>
References: <1477494038-2895-1-git-send-email-akuster808@gmail.com>
	<1477494038-2895-2-git-send-email-akuster808@gmail.com>
	<1477552947.2887.63.camel@intel.com>
	<92CF3B90-4DED-4513-BDD0-9BB116E476B8@gmail.com>
	<1477653625.13356.24.camel@intel.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <a591d19f-7aac-c3f0-856c-3186d618efeb@gmail.com>
Date: Fri, 28 Oct 2016 08:41:17 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <1477653625.13356.24.camel@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH 2/2] smack kernel: add smack kernel config fragments
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
X-List-Received-Date: Fri, 28 Oct 2016 15:41:21 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/28/2016 04:20 AM, Patrick Ohly wrote:
> On Thu, 2016-10-27 at 19:32 -0700, Khem Raj wrote:
>>> On Oct 27, 2016, at 12:22 AM, Patrick Ohly <patrick.ohly@intel.com> wrote:
>>> Can you say a bit more about your plans regarding Smack support in
>>> meta-security? A recipe for the userspace tool and the kernel config is
>>> a start, but for a fully functional Smack-enabled image, the rootfs also
>>> needs to be set up a bit differently.
>> FWIW meta-security seems to be right place for smack related infra.
> I don't disagree :-) But it would be good to know more about the rest of
> the infrastructure before adding (or reviewing) bits and pieces that by
> themselves don't do much.
I start of with basic support and refine over time.  Your statement can 
apply for many components within meta-secuirty. I recently started 
adding test images. Providing configurations or solutions for a niche 
area is outside the scope for this general layer, IMHO. I could be 
convinced  otherwise. I tend not to wait for 100% solution before 
sending out bits for review.

thanks for your input.

Regards,
Armin
>


