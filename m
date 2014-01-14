Return-Path: <ross.burton@intel.com>
Received: from mail-qe0-f49.google.com (mail-qe0-f49.google.com
	[209.85.128.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B6F7E0079B
	for <yocto@yoctoproject.org>; Tue, 14 Jan 2014 05:32:56 -0800 (PST)
Received: by mail-qe0-f49.google.com with SMTP id w4so5492796qeb.22
	for <yocto@yoctoproject.org>; Tue, 14 Jan 2014 05:32:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=AcPprVok/8fvDfE82Y+hRgGoObIOHtWIuJEqw076iJs=;
	b=i5IcXHnGSjVHXPiqn0oQrSmDqRoP/PknMbw4P7Jb4nCt6NigywLMb66g8v4EkL5FVE
	Pn07t3svQsMfQEmvxtohvE8+MZ4wqePgfImwtU834hHHDsAfwrbYN0xTIodQxhljCc8b
	cpUtIUdRhpf4WPObDPSloQMkEUpWLWIM8xPQQBvnl3Qf6veu5FvOr+yfUN91QIPIOWBH
	wJ4FqyTdtTcbBzDrPTGdRT2Sh0sV8k53W2GrnWuQvyc+DOz3k3YrHj8vhf6ajRxdO6i7
	K4CLQc9GBkTSrclRCPzi9KRDS9uFsjiJyac30BBhFVazTjcHeRPb6DgLlCPjbGM+Ly+M
	WQnA==
X-Gm-Message-State: ALoCoQnAbhaGUrkkH40mNQD3+iOv0fobipIJ/At4xwLLMIyihSbgDEEbnp6GIUuxik16+WnxBXBi
X-Received: by 10.49.59.83 with SMTP id x19mr2727001qeq.47.1389706375654; Tue,
	14 Jan 2014 05:32:55 -0800 (PST)
MIME-Version: 1.0
Received: by 10.96.179.105 with HTTP; Tue, 14 Jan 2014 05:32:35 -0800 (PST)
In-Reply-To: <52D53908.30304@mlbassoc.com>
References: <52D536A0.5060307@mlbassoc.com>
	<CAP71Wjw=Q3m-bEPMniCMug0Pn4d=VoQ5VqLHGNck29XqzDkbzA@mail.gmail.com>
	<52D53908.30304@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 14 Jan 2014 13:32:35 +0000
Message-ID: <CAJTo0LaY3r6f+VER=+Nnh3du9KG=tcJ6KiNW0oK_1yBiv6K=pQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: gstreamer without X11?
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
X-List-Received-Date: Tue, 14 Jan 2014 13:32:59 -0000
Content-Type: text/plain; charset=UTF-8

On 14 January 2014 13:18, Gary Thomas <gary@mlbassoc.com> wrote:
>>     I don't understand why this happens though as the gst-plugins-base
>>     recipe uses PKGCONFIG to control this:
>>        PACKAGECONFIG ??= "${@base_contains('DISTRO___FEATURES', 'x11',
>> 'x11', '', d)}"
>>        PACKAGECONFIG[x11] = "--enable-x --enable-xvideo,--disable-x
>> --disable-xvideo,virtual/__libx11 libxv libsm libice"


Check that gst-plugins-base resolved PACKAGECONFIG hasn't been
explicitly set somewhere (again, use bitbake -e gst-plugins-base).

Ross

