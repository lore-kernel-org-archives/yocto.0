Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBAD5E00E4F; Thu,  7 Jul 2016 08:18:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.193 listed in list.dnswl.org]
Received: from mail-qk0-f193.google.com (mail-qk0-f193.google.com
	[209.85.220.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BDF3E00E44
	for <yocto@yoctoproject.org>; Thu,  7 Jul 2016 08:18:04 -0700 (PDT)
Received: by mail-qk0-f193.google.com with SMTP id r68so2271580qka.3
	for <yocto@yoctoproject.org>; Thu, 07 Jul 2016 08:18:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=dfiM/JjpJRCECjEEjxp57y+ZcBgmJcN70vbap8Y9vpw=;
	b=aAdQCe5OXxiuQQsiwqXRe4UVyN62fFfvUlZp5I4Jp5Or5oyjPxtoXuZuWEqrazp3tC
	QMrW/V5BFG/iLoyub47CtET9OcCuBzAh2yo8iCYsJaVkMQygU8lMobOVU520kFalSXY3
	XVBexy098aBXw8CKqFzCKCelli61TaNkCsmgVfX03go30BizfiapKNFlISGEyr0trfsd
	oCoE7BAgwCupgmPBhpl+2KQtr+876MI2Qrlnd1B7puJtzA6u7+yTtQsDVTQHwL2qFKoB
	YLxCmF+YZGziVUn0bcBkbWi318KGlDPZ+qUyAVYaV0l4N/NW6C/P6M155/DJcgdCE/WO
	52Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=dfiM/JjpJRCECjEEjxp57y+ZcBgmJcN70vbap8Y9vpw=;
	b=GnrFMXVyn1FPlo7/XackFDshs9VVIy0LywCwvh4At6+K96dqY8e6VONTWvuk36DH/L
	IBe8/4Is6nc5TIqfKB752FCBxbUZu8+zrhKLYgFgrzzHL/64MHE+dwgJOF9yJPQF8z1f
	Ml6oRze5cSrFcn1IDIiMr8S30dSBiAxmGatlMBcT/juzfW6FqsWBs6XeFlToHXFxQ/qd
	neQ/cdVEWWuGuelDxVPFmpfD+DqLl4pD1tO6pZ07mcqgmcV/5jqdZU7kbMVBokNDvvJD
	aV82Ap2NE7IG2/T6lZGASf3nhwuxGe6PaWK/jC2k0qYbv8cV/zIG1tiNJjGA8LD3yShJ
	cMKQ==
X-Gm-Message-State: ALyK8tJ+pSG47HKLeZaguN8+a/gE4SE9m80ThNFmDPavEBMindx1HivlC7ER9P67bhwVu4N0HE1KM4Pjf8cM7w==
X-Received: by 10.55.178.195 with SMTP id b186mr808637qkf.81.1467904683373;
	Thu, 07 Jul 2016 08:18:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Thu, 7 Jul 2016 08:17:34 -0700 (PDT)
In-Reply-To: <CAFq4t4hb=aXarn8c13Vf-d=04Vz_MJBDKwFE+F32o6iQ7W8i3A@mail.gmail.com>
References: <CAFq4t4hb=aXarn8c13Vf-d=04Vz_MJBDKwFE+F32o6iQ7W8i3A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 7 Jul 2016 08:17:34 -0700
Message-ID: <CAMKF1sr6TKbBZY+dXiwafWnQ8Xffc2=ixU--L3-LnjZGQ2ATrg@mail.gmail.com>
To: Peter Balazovic <balazovic.peter@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: USB cam device
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
X-List-Received-Date: Thu, 07 Jul 2016 15:18:07 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jul 7, 2016 at 2:59 AM, Peter Balazovic
<balazovic.peter@gmail.com> wrote:
> Dears,
>
> I want to have my USB cam device to start numbering from /dev/video5
> and not to assign an usual device (vide0) to the usb camera via UVC
> driver
>
> What  should I modify to change it out of default?

you might be able to do it with udev rules
>
> Thanks.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

