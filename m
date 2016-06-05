Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10E06E00D21; Sun,  5 Jun 2016 03:44:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.65 listed in list.dnswl.org]
Received: from mail-it0-f65.google.com (mail-it0-f65.google.com
	[209.85.214.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9AA6E00C62
	for <yocto@yoctoproject.org>; Sun,  5 Jun 2016 03:44:43 -0700 (PDT)
Received: by mail-it0-f65.google.com with SMTP id z123so3160951itg.2
	for <yocto@yoctoproject.org>; Sun, 05 Jun 2016 03:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=lNM/E6fAuezO2Ee1RzB40A2D9eMX0IQv2HXRU3PI2r0=;
	b=cDwJXUnFe+DYPm7+L/H3XqnWI7lIdtQoFTEWHT5ojT/UeuQn7Lq92+Wtv5mxxfVbt1
	dsIYBEFa1OSzZ0lJwTM332x8xblf6QGhi5XvP8hqPoc21hzMNH/kuwFVtzX63BiO0F10
	N33ve1H2/gBu9lrqwc4qt6r1xWb8EnZrUcLtbCp72fkkzXH6+Uzk89Hnj8VlSIspWNlu
	/6ijAQKN1FBSIh4CFXghjqqqomknu9MWE7g939OzAw6ACKGx4tvQY8EkURQvoJgAYJCj
	55syp2FgSxkeGln0sHNaaOdjUQcAV8xOcmnT6b5Nyzo8COD5JpKo9Nb9sYR6fKq0Q63/
	gktQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=lNM/E6fAuezO2Ee1RzB40A2D9eMX0IQv2HXRU3PI2r0=;
	b=hSV/zO9Ne2HEQX7wf91L+oHO64SYTe3tViU//Sax7ry0Y0xFA8LpPWK/9aAvSBWBRF
	vqgpQPU5+/6xaGhyLguWzz29yI1lpFY2JAt6+VMsD5mT/vXbtrRdFrEAMRGBTQud9+J7
	rx96P3Yku8UcuBvs62pOedQjjc5Uk2745SmEtfBoHGaOEXfemOYXyLQiPuHDoNboTJ9i
	2B2YjSjlNlj5OhucY2/9wpVx5517xK7tbPLxI70tC8v6U1QkoCMhpMopb+7k6MeFsi7B
	1xZ0gc2Vvy8g7G10kGreUf55lWhSFUDcvE/zUFkijwzXIszzmJsmgtLW2b9FZWlxbsXW
	KzmA==
X-Gm-Message-State: ALyK8tJSxYpOqfE//VBjl+mXn6BxpSak7Uwo4LU6S51bvHEpmEcrj2kqYWhFULrLcqFeSMHhGkdYTG97gQoENQ==
X-Received: by 10.36.233.68 with SMTP id f65mr9653683ith.19.1465123482853;
	Sun, 05 Jun 2016 03:44:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.209.71 with HTTP; Sun, 5 Jun 2016 03:44:42 -0700 (PDT)
In-Reply-To: <20160604230019.GA1506@openSUSE-i7.site>
References: <20160604230019.GA1506@openSUSE-i7.site>
From: Jonathan Liu <net147@gmail.com>
Date: Sun, 5 Jun 2016 20:44:42 +1000
Message-ID: <CANwerB3L4J79WB4V18DtqZTj92fQXWgWyDKpUQ8cRStt08NNxg@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: gcc-6.1 and raspi
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
X-List-Received-Date: Sun, 05 Jun 2016 10:44:47 -0000
Content-Type: text/plain; charset=UTF-8

On 5 June 2016 at 09:00, Trevor Woerner <twoerner@gmail.com> wrote:
> Has anyone tried building a raspi image lately from master?
>
>         ERROR: linux-raspberrypi-1_4.1.21+gitAUTOINC+ff45bc0e89-r0 do_compile: Function failed: do_compile
>
>         | In file included from /z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-source/include/linux/compiler.h:54:0,
>         |                  from /z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-source/include/uapi/linux/stddef.h:1,
>         |                  from /z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-source/include/linux/stddef.h:4,
>         |                  from /z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-source/include/uapi/linux/posix_types.h:4,
>         |                  from /z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-source/include/uapi/linux/types.h:13,
>         |                  from /z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-source/include/linux/types.h:5,
>         |                  from /z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-source/include/linux/mod_devicetable.h:11,
>         |                  from /z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-source/scripts/mod/devicetable-offsets.c:2:
>         | /z/layerindex-master/raspi2/tmp/work-shared/raspberrypi2/kernel-source/include/linux/compiler-gcc.h:121:30: fatal error: linux/compiler-gcc6.h: No such file or directory

I can confirm this issue.

Regards,
Jonathan

