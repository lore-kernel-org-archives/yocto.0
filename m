Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA552E00B2E; Wed, 24 May 2017 07:55:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.171 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.171 listed in list.dnswl.org]
Received: from mail-ua0-f171.google.com (mail-ua0-f171.google.com
	[209.85.217.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90216E00B27
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 07:55:44 -0700 (PDT)
Received: by mail-ua0-f171.google.com with SMTP id j17so98407580uag.3
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 07:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=wUBWgO4nSeOAg6kyc6vGePZfa2/KcfTJ56BzVHeBlh8=;
	b=NDArjDZVBGv40wj+c12iHCNYdea4qsbhFOV88o1zDwgc83qOwAMbSKIyypwSyOFrwd
	ghgqhviPpTCmTmF02MrTE4gMT2n946mpg/A1RAcJJBTuMGOlJzrfNJZaZm8Z2r+1Vush
	S8IaY6OntT63Who89FHqSfI+An/qz0yTkTRmgq6oCol0ay38v5xjZztgk+7Z7+G0w3Ze
	n0+aWaTldcImqjpVZHYxH2Y5zP7HJmMNJ6Gyvs86SUrtVcuuLRAxc+tYeBDxmePwry7w
	39tg9o302LfKEgB131xf5tkfG/6P2n+rFWpCjLszt4gawWRJATdcKvAx3KlblENG7vqr
	xbhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=wUBWgO4nSeOAg6kyc6vGePZfa2/KcfTJ56BzVHeBlh8=;
	b=duQgjA1CNIFf2lsf+DZNPb3veQl9OOGY2I83a14B2dlmsh2QnWC8QBkPt5iiXKq0Ij
	O2brh0eSo95ckzRfzb2mifQ1L/HN7XJZjH9brykNMvn2/2MuQt4GhzUIBzjQb/dJbuyB
	+NTCH/6SEVFhJSJVqzbXe4Hq6cuZGgW2pSRW/gmBKx5IwXKeXVy7ZJXHvOoZ2l/wQUf6
	Qcedx9a0i057p5613PmNfSvgM0pnhwIoGYQDtNg2Ar7G+GY/WfLXYW3eX3YKXhdAmljB
	H2DW9L/g5NlQKY9VjZaYdcZGugcATtZ+dG/XCAUlYcbm+Q1l1Jvi0bYKk3+Ebv4j5bbp
	P1Qw==
X-Gm-Message-State: AODbwcB43vupwLRjbjYldHrHLIc4/WsC4z/L3FUySDFylbSLohJeK+0k
	yACoZVttlfCTs9UnlZvUd7QHpWfTUA==
X-Received: by 10.176.9.104 with SMTP id c40mr18078111uah.151.1495637743539;
	Wed, 24 May 2017 07:55:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.67.199 with HTTP; Wed, 24 May 2017 07:55:43 -0700 (PDT)
In-Reply-To: <1d897931-c8fd-756a-0c09-d45647647801@collabora.com>
References: <20170522151716.4792-1-romain.perier@collabora.com>
	<CAHUNapT-bEsYjEd_2HeMUj3th8J2Hupho7TLHROzkHe9D0CVRA@mail.gmail.com>
	<1d897931-c8fd-756a-0c09-d45647647801@collabora.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Wed, 24 May 2017 10:55:43 -0400
Message-ID: <CAHUNapTmGJPOpFJjXuH718kp40iUB1GCt07ri25OgSnULN9C6A@mail.gmail.com>
To: Romain Perier <romain.perier@collabora.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-rockchip][PATCH 0/3] u-boot: mainline
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
X-List-Received-Date: Wed, 24 May 2017 14:55:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 24, 2017 at 10:46 AM, Romain Perier
<romain.perier@collabora.com> wrote:
> Le 22/05/2017 =C3=A0 18:08, Trevor Woerner a =C3=A9crit :
>> u-boot 2017.05 was released May 10. Wouldn't it be better to update
>> oe-core's u-boot to 2017.05 then just add any differences in
>> meta-rockchip?
>
> Good idea yes. I will bump u-boot-common_${PV} and u-boot_2017.01 to
> v2017.05 in poky (and then propose changes in meta-rockchip)

Changes to u-boot should be sent to openembedded-core; poky gets
updated from there (not vice versa).

