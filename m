Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00188E00B7A; Thu, 11 May 2017 13:25:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.196 listed in dnsbl.sorbs.net]
Received: from mail-io0-f196.google.com (mail-io0-f196.google.com
	[209.85.223.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA780E00961
	for <yocto@yoctoproject.org>; Thu, 11 May 2017 13:25:48 -0700 (PDT)
Received: by mail-io0-f196.google.com with SMTP id f102so4079178ioi.3
	for <yocto@yoctoproject.org>; Thu, 11 May 2017 13:25:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=pefD7LVn3jbRy2Tcq9eFJsW1HrSVmU4JjWoOoEfNq7w=;
	b=G50pEDERps7jx+VQj0OyqgV+lMPA64DZKzLGFjNDRegRahpRtT6i1Ic1gnYzDw8Jg0
	w0kUd6okTXyp1r/sXJKAOQloCBYy7GFeFcxmfSvyGKYbo3iunyCg+aqWugqWbG4FXeMh
	oH+IellueYY23j3RcR54lHKGil06QEebNTQNEo6TGkYf0tRVUiHN2nEN7huKzrR6Ciwi
	q5JJI7AG8/NnZBKIXl082fNVS3D47+cfFfEr1znr5p+OZOKx3kULfy6FrFuxJi42SPGP
	FT+/68KrJb6ibsTUnn6Y0ZcJ4yYs2z0KaXjvYjuhoP1TV4hgPq62fY2zyualToDG2lz6
	Mm5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=pefD7LVn3jbRy2Tcq9eFJsW1HrSVmU4JjWoOoEfNq7w=;
	b=RXRR8toaE7bmK2I1Kpkc+/c2ReOx0nDPQGhH6kCQudgnvsy7aGgoeGF2C3FCwlFTrh
	3LdotzsLS8zmmNy0E0SSibGMQ8I6rEI5UKxVLm3eWyX+tPT0eIvOneH619xbbeAgkzan
	Vd+ZnPpbxVAT/B/6/ul8Yck04IkiSQmV1SXrfk4zct7DzSIEGRtEj4feQfmBnrPK73nj
	SK6kAitiHAWaHDRdnC3H2LpK0RxQdbp9FkoNWChFGGQBejI3EXmH/b0vilsh8VGNrG88
	FjtE9ehsXBsbRAqfEgBJ/z5jU06lwqtUpRquVucjDcpvuBW6D2vEPc59XNQvie9oONSl
	yiwQ==
X-Gm-Message-State: AODbwcB/tbKJpZ3z1YGAp+Ly5zGy+KYNOEe0bF5DAdtjyGhTGQaCld8h
	RdFbeENHU2rVR5dvtvmI1XnZ0WIKBi5i1HY=
X-Received: by 10.107.167.19 with SMTP id q19mr411807ioe.110.1494534348131;
	Thu, 11 May 2017 13:25:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.27.207 with HTTP; Thu, 11 May 2017 13:25:07 -0700 (PDT)
X-Originating-IP: [31.52.113.35]
In-Reply-To: <20170510064845.30839-2-raj.khem@gmail.com>
References: <20170510064845.30839-1-raj.khem@gmail.com>
	<20170510064845.30839-2-raj.khem@gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 11 May 2017 21:25:07 +0100
Message-ID: <CAK18fxFHKZCPBGXzoYdLT2P9xD3ADSLH46a+TzWxcc6L6DhK+w@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 2/2] mesa-gl: Enable gbm for rpi
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
X-List-Received-Date: Thu, 11 May 2017 20:25:53 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

On Wed, May 10, 2017 at 7:48 AM, Khem Raj <raj.khem@gmail.com> wrote:
> weston needs gbm support which is not
> in userland
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  recipes-graphics/mesa/mesa-gl_%.bbappend | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 recipes-graphics/mesa/mesa-gl_%.bbappend
>
> diff --git a/recipes-graphics/mesa/mesa-gl_%.bbappend b/recipes-graphics/mesa/mesa-gl_%.bbappend
> new file mode 100644
> index 0000000..7897125
> --- /dev/null
> +++ b/recipes-graphics/mesa/mesa-gl_%.bbappend
> @@ -0,0 +1 @@
> +PACKAGECONFIG_append_rpi = " gbm"
> --

Merged to master.

--
Andrei Gherzan

