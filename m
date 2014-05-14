Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1247EE00975; Wed, 14 May 2014 06:57:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.49 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-qg0-f49.google.com (unknown [209.85.192.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7F15E006EF
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 06:57:09 -0700 (PDT)
Received: by mail-qg0-f49.google.com with SMTP id a108so2790714qge.36
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 06:57:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=ReB4ooRkPm6CsaQsU+g8oBj3NRGDDUVl3px1GXKhYpU=;
	b=iXu5MvXTmf/I6EmWP8ul1J3LQpslFKgCDQULX7AmFR6bUgLraWM3SuLBv/9TLpoSVA
	QhT4DotfQtyC0PbwA7IIWT5fz09gjjbIevP32hprjl7uf/KMfpcvbGVJ6GB7qq5cBZsC
	frcB3h1el7czekxZlLiqip0HPbk5Ao93b6ootY/bcnxgaTBKMbrjIRmKC7eBijjJ0f9B
	EEEI5wV8KKlSIMz7SBxxczMMMQ2+U5UVwpMytEGjrNVboV/tA94mmmdfktDQ7pxodxBK
	s192ewPbB1TBJlFaps3tz1foNXAQraTLUmwreeyfNLFetxlkJbQt/Uaw0TjDeMMguigE
	Ms3A==
X-Gm-Message-State: ALoCoQl4Uv9AxuQAbUctBxwINf//8zvOrGMdg/HPjLlTcTqIGXa6vvJEIPVvkXFSMeiueK+KwCX1
X-Received: by 10.224.50.212 with SMTP id a20mr3632149qag.35.1400075829384;
	Wed, 14 May 2014 06:57:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Wed, 14 May 2014 06:56:48 -0700 (PDT)
In-Reply-To: <lkvpl2$e8q$1@ger.gmane.org>
References: <lkvpl2$e8q$1@ger.gmane.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 14 May 2014 14:56:48 +0100
Message-ID: <CAJTo0LZNCKXAq80DD+UeNgZM-Pb_ntZW1o4WvOEDydhNT0MedQ@mail.gmail.com>
To: Neuer User <auslands-kv@gmx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Best way to remove DISTRO_FEATURES?
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
X-List-Received-Date: Wed, 14 May 2014 13:57:13 -0000
Content-Type: text/plain; charset=UTF-8

On 14 May 2014 14:04, Neuer User <auslands-kv@gmx.de> wrote:
> Can the distro content be changed? Or would I need to build my own
> distro? (Which would be not so easy looking at the complex poky.conf
> configuration files...)

The "quick" solution is DISTRO_FEATURES_remove="nfc 3g" in local.conf.
 For most non-trivial uses of Yocto you'll want your own distro
anyway, but you can either copy poky.conf or include poky.conf from
your own distro.conf and then use DISTRO_FEATURES_remove.

Ross

