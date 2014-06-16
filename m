Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 421C9E00B4C; Mon, 16 Jun 2014 05:00:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (wpdster[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.128.174 listed in list.dnswl.org]
Received: from mail-ve0-f174.google.com (mail-ve0-f174.google.com
	[209.85.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 873BAE00AEE
	for <yocto@yoctoproject.org>; Mon, 16 Jun 2014 05:00:08 -0700 (PDT)
Received: by mail-ve0-f174.google.com with SMTP id jx11so3123154veb.19
	for <yocto@yoctoproject.org>; Mon, 16 Jun 2014 05:00:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=fPRO99Sv+uwjD1JHUhExuN1YK9EaLEb80IQJhTyUNmw=;
	b=HicHMj2NunG9thLbIMD43DHNVuSc1weGoXi7EpK3zVv3TrKIJT+6AmGbW3PwMb3aTe
	MMg8RPsK/DxLCHljvYBEOsQufqGVE8GF7tVPygbTT7RPz5kPhbZiiKJp3C2RKNVNcT1B
	MQG3djn/WPSzmYkTifTvfPL5LymhoXUX0FE+Y6dtSAGr81rA58wpn71PxCbDJsB0rgpd
	91a90hSfwagX76+owxOTJLrSibQvo4nJtvS4+3lGZO1l4ujuqUBkz5lia13FXdxy6Nvw
	KQCUDWkVpToLDt+LNRR5A9y4s9AKoFVPSKSJGFGdEAaqPcqAzTQ1itGwXl79xrdy0A43
	YIzg==
X-Received: by 10.220.249.6 with SMTP id mi6mr1052627vcb.33.1402920007397;
	Mon, 16 Jun 2014 05:00:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.32.74 with HTTP; Mon, 16 Jun 2014 04:59:37 -0700 (PDT)
In-Reply-To: <CAJTo0Lag0KaGevsu9dge3DYYiNag2i44sMmUCS9zQp=ZRjWHdA@mail.gmail.com>
References: <CAF_dkJCKsqqhrZiWXkirc018mX+jJ2fs-Gdyc9SN2tsm=Q71dw@mail.gmail.com>
	<CAJTo0Lag0KaGevsu9dge3DYYiNag2i44sMmUCS9zQp=ZRjWHdA@mail.gmail.com>
From: Patrick Doyle <wpdster@gmail.com>
Date: Mon, 16 Jun 2014 07:59:37 -0400
Message-ID: <CAF_dkJAgKOEMKBLDbW2LpSh9WLiqLxrqbwc9wc2DN_ZQ-vZ5RA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What is the best process for applying patches to dora?
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
X-List-Received-Date: Mon, 16 Jun 2014 12:00:12 -0000
Content-Type: text/plain; charset=UTF-8

ok, thanks.  I'll do that.

--wpd


On Mon, Jun 16, 2014 at 5:02 AM, Burton, Ross <ross.burton@intel.com> wrote:
> On 14 June 2014 17:48, Patrick Doyle <wpdster@gmail.com> wrote:
>> What is the best way to get this applied to dora?
>
> Cherry-pick the commit into a branch of Dora to verify that it applies
> and builds, and then sent the patch to oe-core@ with '[dora]' added to
> the message subject (--subject-prefix is the option you want for
> git-send-email).
>
> Ross

