Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFA54E00B30; Thu,  7 Jun 2018 10:07:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f195.google.com (mail-qk0-f195.google.com
	[209.85.220.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75FA4E006B4
	for <yocto@yoctoproject.org>; Thu,  7 Jun 2018 10:07:18 -0700 (PDT)
Received: by mail-qk0-f195.google.com with SMTP id y4-v6so7010420qka.5
	for <yocto@yoctoproject.org>; Thu, 07 Jun 2018 10:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=kb3c2IJS1KTSAyhs68q7xx3+ccqg3/7hRwycOp4fkeg=;
	b=J1Y7OH85O9ldXqMfpkGUZGFqEloHOxNIZAcScwyeVgcbvlBU6HTT+zM0qWYyfAFdt2
	HN3NUl9zpd0NYYU3f2cnQlnmrAVS7vLqmDeZwGB6vMPnUC8p7JnfFcjxPyB3JibAz/AP
	fFlg7PHezP8gOG39d51w0iGoPQEgocshlPSnn+v1nmnuS2GDLbrP/4lrKPHCOVnIBuw3
	KckQ8r6447nqKMHknOMOLdI/rWBei6WEKWV3kDalprJVpGHBfyE2e/RnRPppGvLljEk+
	nBqWP+vLS5dygotm57SJVdyLQrvDSAWleJC1/Tq+hmxiQOGkbHnJ6J+cfzdK5iUx6zQy
	D/Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=kb3c2IJS1KTSAyhs68q7xx3+ccqg3/7hRwycOp4fkeg=;
	b=MDUmpz1Rz5UzSILlKA5uV8KkqV2NFVuZM32QrkZWcKT315nw7ET4Sa/PvQnjmiD15i
	krY/hW5bMKlxmJiWJFQS+RYMS8bgCUIeUrtuTnKzGsHbbxF7fGELUuFTf6ijmy0NerXI
	zIL+QYicbUd3uIHfxVcNgnO2/aTOTIL7cuixjYCWq6SDazEOQIj8hyhUc0vSJjDItiZY
	3Wug2UYLuAl0N5mypiR9qlVOCzFaq3Ne6fYQawZAg/9kxRforZt34kqdwrcXLBM/2SHf
	9LEmgDOPF6ttz7U/vtc9H1mkVIOZ3hFpLcRgRjwBNf1Ozm5F4v82pIRCYLlHqlhEfNd0
	pC0Q==
X-Gm-Message-State: APt69E3ZzJM1ytHJBSfvCbEZcLH+Q71i141XP+s9hA0FLMadEdpCWBUt
	ONNjfoeybpuony5sa9IQGgK6zv75st/IyFncBp8=
X-Google-Smtp-Source: ADUXVKJOqm3Az83vJSAYMihLcPROIjENdfKIfOI8O02+ZMbPXpos1Gt1y1YqsFICmMnTua9cxTxMFYbECtET0C5kb0Y=
X-Received: by 2002:a37:b8c4:: with SMTP id
	i187-v6mr2309658qkf.412.1528391237689; 
	Thu, 07 Jun 2018 10:07:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:e486:0:0:0:0:0 with HTTP;
	Thu, 7 Jun 2018 10:06:47 -0700 (PDT)
In-Reply-To: <785a2b9a-d6c8-8356-d218-ecc80af2c46d@here.com>
References: <785a2b9a-d6c8-8356-d218-ecc80af2c46d@here.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 7 Jun 2018 10:06:47 -0700
Message-ID: <CAMKF1spJvA1pP1BrwmcazY0n1QujJPU270dpL=vq9Vfuri73nA@mail.gmail.com>
To: Patrick Vacek <patrick.vacek@here.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: sysroot not being populated
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
X-List-Received-Date: Thu, 07 Jun 2018 17:07:19 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Patrick

On Mon, Jun 4, 2018 at 2:01 AM, Patrick Vacek <patrick.vacek@here.com> wrote:
> Hello all,
>
> I have a recipe (aktualizr-hsm-prov) that depends on another (aktualizr)
> to provide an executable and a config file. The former recipe includes
> `DEPENDS = "aktualizr-native"`, and my do_install() for
> aktualizr-hsm-prov has a line something like this:
>
> aktualizr -i ${STAGING_DIR_NATIVE}${libdir}/sota.conf
>
> The binary executable (aktualizr) runs, which tells me that the recipe
> can find that. (Although to be honest, I'm not sure which version it is
> running.) However, it doesn't find the config file, and sure enough,
> ${STAGING_DIR_NATIVE}${libdir} does not have the config file I expect. I
> can see that aktualizr-native is populating its sysroot-destdir, but it
> isn't getting copied to the sysroot for aktualizr-hsm-prov.
>
> I see this problem in sumo and master, although previously this logic
> has worked just fine in morty/pyro/rocko.
>
> Switching to depending on aktualizr (instead of aktualizr-native) and
> using STAGING_DIR_HOST or STAGING_DIR_TARGET does not help, and in fact
> makes it worse, as it can't even find the aktualizr executable in that case.
>
> What am I doing wrong? What changed between rocko and sumo?

is aktualizr recipe installing this .conf file when building native
version. If not may be
add it to do_install

install -D -m 0644 <path/to/sota.conf> ${D}${libdir}/sota.conf

