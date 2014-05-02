Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCB0DE0096C; Thu,  1 May 2014 23:40:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3557E00478
	for <yocto@yoctoproject.org>; Thu,  1 May 2014 23:40:09 -0700 (PDT)
Received: by mail-ie0-f180.google.com with SMTP id as1so4679505iec.11
	for <yocto@yoctoproject.org>; Thu, 01 May 2014 23:40:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=2BcaDL11/OPutA3lSwzN/xevHIxrYxfJ8TXqgLVacC0=;
	b=Zdt5R/YP441yq0NHhPavbBxWJBcPx0/Xkr5YSgcwEzN7eZQnivZ0/p9DO/YkLGtokX
	sdg0dm9pnCGQoq+2ghmDXWVbvIlG5flK6lCKszCmRdfejSJHdOVxW81Bn3n+cZpxqGxM
	5zouIcfCN9rGOjrt38fnuzMcKn9uyCyAJNttf6H1WNNhNiMiEtUoXIeQZSB/SeeOQXaE
	Fp4CXaH0wizjnf1aOtPDP2pIt1uiRCWo5bqgwLb7W8pQnvJeC9c26EM+gCL5lrpIQagE
	3LC5FWTQn7EceRsnHsyRU1NxaWckzz4zgeNTjTLYEo2O6Jmuqmw9i/io+r7ljWTPFUCa
	JtNw==
X-Received: by 10.42.235.197 with SMTP id kh5mr14298197icb.25.1399012808706;
	Thu, 01 May 2014 23:40:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.74.228 with HTTP; Thu, 1 May 2014 23:39:38 -0700 (PDT)
In-Reply-To: <53632357.1070904@windriver.com>
References: <CAGX3a9_GzmU_f2RZPHdWM2SQVOdNkBMwxf8t84ri0xuzsmNmfg@mail.gmail.com>
	<5360FA25.40006@windriver.com>
	<CAGX3a98E2GzTEOcBLfV_FmxqoqTuHr75t0TmNn+RJAVOnvPXKw@mail.gmail.com>
	<CAGX3a99ixL0CvRQLmxLCaK0Zrdd22ET25S=OCKpk+AJnQxRmOQ@mail.gmail.com>
	<53632357.1070904@windriver.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 1 May 2014 23:39:38 -0700
Message-ID: <CAMKF1sp0s0+j2WJR09NdX6tvgY2-PRbZ4ePYTBY96+rmms_1-g@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"General mailing list for gumstix users."
	<gumstix-users@lists.sourceforge.net>
Subject: Re: Blacklisting drivers in poky or in yocto project
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
X-List-Received-Date: Fri, 02 May 2014 06:40:12 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, May 1, 2014 at 9:47 PM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
>>
>> The method I used: in the file /etc/modprobe.d/blacklist.conf, i added
>> these following lines:
>> blacklist ipv6
>> blacklist cfg80211
>> blacklist libertas
>> blacklist libertas_sdio
>
>
> I can't recall if yocto 1.4 had switched to kmod, or if it was still
> the legacy mod-utils ? Can you confirm with one is in play here ?
>

we use kmod but that should not affect anything since it is backward
compatible with m-i-t
I think the problem here could be one of following

there is another module which is not blacklisted dependent on the
blacklisted one. In this case kmod will have to load it.

Or you have initiramfs where its getting loaded in that case you have
to modiy initramfs any changes in /etc/modules* on main rootfs won't
help.

check if feature( e.g. ipv6) is built into kernel proper and not as a
module. if its builtin then kmod won't be able to help but I guess
this you might already have verified.

