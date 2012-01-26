Return-Path: <b.hutchman@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7ECCFE00596
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 08:03:09 -0800 (PST)
Received: by bkat8 with SMTP id t8so799738bka.35
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 08:03:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=D9O+/3Sp1mP7mDzERNJVh2gAObIFsvl3wJBHIYIGTdg=;
	b=tCMuLh8enAY37wcAJYaaW1awLFtGffcdwoWnxKoYBOnHMFBuPSpDRiNI7mHpHwiUg8
	ZUQcPSiAtlHxHhlxsK5/gNAdlzRnICNjAe1Wv9do0iTf8jjnNet1oeTzgPIV309yFMCh
	YfME4L3qcBidM+8edbed6sDdO+vpSIXprZI88=
MIME-Version: 1.0
Received: by 10.205.133.133 with SMTP id hy5mr1316404bkc.94.1327593788454;
	Thu, 26 Jan 2012 08:03:08 -0800 (PST)
Received: by 10.205.141.203 with HTTP; Thu, 26 Jan 2012 08:03:08 -0800 (PST)
In-Reply-To: <20120126055142.GF5566@sakrah.homelinux.org>
References: <CAFZh4h9YHz9VhdT3qHrrXQwaWn_qK4wpQ-JzPihO0qyhRfdE5A@mail.gmail.com>
	<20120126055142.GF5566@sakrah.homelinux.org>
Date: Thu, 26 Jan 2012 11:03:08 -0500
Message-ID: <CAFZh4h_zZ12AWj6uPEC_=VWDrMa6cpNf3T++xzxOdSpuDiMMCw@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Brian Hutchinson <b.hutchman@gmail.com>, yocto@yoctoproject.org
Subject: Re: How to get opkg in rootfilesystem
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
X-List-Received-Date: Thu, 26 Jan 2012 16:03:09 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Jan 26, 2012 at 12:51 AM, Khem Raj <raj.khem@gmail.com> wrote:
> add package-management to your image
> EXTRA_IMAGE_FEATURES_append_pn-<yourimage> = "
> package-management"

Hi Khem,

Just want to make sure I'm following you.  In my local.conf I have:
EXTRA_IMAGE_FEATURES_append_pn-core-image-base = "package-management"

Maybe my google-fu is lacking but I searched on EXTRA_IMAGE_FEATURES
package-management and could find no examples so I don't know how in
the would I would have ever found EXTRA_IMAGE_FEATURES_append_pn

Can you also enlighten me on how this gets used ... I couldn't find
where it was referenced from?

I'm not used to opkg being left out of a base image.  Seems counter
productive to me.

Thanks for your help ... I don't think I would have ever found that one!

Regards,

Brian

