Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f173.google.com (mail-vc0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41511E00718
	for <yocto@yoctoproject.org>; Wed,  9 Oct 2013 08:00:09 -0700 (PDT)
Received: by mail-vc0-f173.google.com with SMTP id if17so594459vcb.18
	for <yocto@yoctoproject.org>; Wed, 09 Oct 2013 08:00:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=UuEmIIdr/wtUfuaZQVy8X3IY8N2++iyf8Th5At/aPo0=;
	b=POEfTscvDV2+cp1iNSJyoKYPwKEKjHFtYBcWvcri/8wTRkmSOs/9ex9Vt20W13hmIp
	iJ2/iSM5X5dQQ7Bg6JtsgigD9I2L3su1OjxMrS0EueFEAGGaexStc6t4F7Lp9cNZPMMz
	53DCVJkRGJGaGLUd8EG/u3jVmbZYgKYuYRrcrIu1n2APDK/EAPwi7k7245rJGT8fStmY
	KWHz/FwunnsBSpKC8xckRIiwMeqQ4pCVRDZyOJMSgUaEsF0XcM74616sHej1Nj+0W4B2
	qDkmwtHy5+hgrBHXxg0nICLm8+thpgnciRyTYGjXhtjCZo2Ep9COLgwkXYgjOIsvDPid
	R9Rg==
X-Gm-Message-State: ALoCoQnfkEkyrSUOQlM1/+/kU3pWZ6ggOgwZP5MWFZPaeXNFRd2G9wJJ8yLDRaQo+pmByjLhT7Tq
X-Received: by 10.52.34.109 with SMTP id y13mr5142729vdi.8.1381330808388; Wed,
	09 Oct 2013 08:00:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Wed, 9 Oct 2013 07:59:48 -0700 (PDT)
In-Reply-To: <52554271.70306@gmail.com>
References: <52554271.70306@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 9 Oct 2013 15:59:48 +0100
Message-ID: <CAJTo0LbOfVAuzo_XBikdnssxe52OQ-KNbiqq5u1JkBnSJBFZ_Q@mail.gmail.com>
To: Jean-Charles <jicheu@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: dleyna not building
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
X-List-Received-Date: Wed, 09 Oct 2013 15:00:10 -0000
Content-Type: text/plain; charset=UTF-8

On 9 October 2013 12:48, Jean-Charles <jicheu@gmail.com> wrote:
> Anyone tried to build dleyna recently ? The do_configure invariably fails on
> dylan (with a very long configure log but nothing obvious.. however a simple
> "bitbake media-service-upnp" will lead to the same error.
>
> I suspect the package is somewhat outdate as I had to change the MD5 to be
> able to build it:
>
> -SRC_URI[md5sum] = "9fc4db84b3459bc77232b24bde48b000"
> -SRC_URI[sha256sum] =
> "9cdee47bbbfa3de5aaa5cf3fc9e208ccd97e5079f6d8fa84a6d1f24a1b760237"
> +SRC_URI[md5sum] = "eb7d58a429184180fdc48330bba9bb45"
> +SRC_URI[sha256sum] =
> "979661e4828a23292f05e9b82707d291fe2a63eeddcde0150a2f09c5c060847f"

That's github re-generating tarballs underneath us - this was fixed in
meta-oe master by changing  it to do a git clone.  If you're using the
dylan stable branch you can cherry-pick that commit from master.

Then if you still get problems please paste the full logs, as I built
it all recently when changing the SRC_URI.

Ross

