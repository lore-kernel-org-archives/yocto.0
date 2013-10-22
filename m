Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f178.google.com (mail-vc0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39670E0163E
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2013 06:50:07 -0700 (PDT)
Received: by mail-vc0-f178.google.com with SMTP id lh4so1493325vcb.37
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2013 06:50:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=y9IVVzfQifCNQWbP/kH5Yd2LCSZpE4C2h3yTZ8n3SUI=;
	b=jGPdeqanpC3g6b9OWV5SbLRY1pbf6JCrtpAB/5uBIhluy3/3CxzUNQd2X9M/Vjqmey
	rRnunSmQTGEeWrNPYVtoEHYUWSo90Efy94GxFXF6cMFlGWHSul7dEZdwNZpeTyQMvAg4
	NPzUyJASEaef/86gBsVcmn+SA/c+xaGs/BJVop78BuAhKnbSWbTCEIOFYQRRaAxW3WrJ
	OGtEfsRQXZ2KWzFWl5tF8gyhpbqEB5Rozh86GCFZBYBAMH1D0VqbdmZVk9wwnmVKCtMU
	wP7v7rGuIfaS/AOqsD+Ii+vHPQrO2DeGIkqim7VTIWodxcaKrQE6+x/RI35LkYbRIqTB
	nqxA==
X-Gm-Message-State: ALoCoQmtwoeOFFpYTXi3FpXLQcmipN9Rh5JQJGkXo0WR3QQa5in9pnNze7fhWwOAnhTugOie1/C2
X-Received: by 10.52.118.98 with SMTP id kl2mr1039538vdb.30.1382449806729;
	Tue, 22 Oct 2013 06:50:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Tue, 22 Oct 2013 06:49:46 -0700 (PDT)
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE40153B8ED02D3@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE40153B8ED02D3@pluto.melinkcorp.local>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 22 Oct 2013 14:49:46 +0100
Message-ID: <CAJTo0LY3HKpg9WTQTva5McVRVY57Zov+ifVbEO+FBQ7_Z9C=qQ@mail.gmail.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can't get DEPENDS to trigger glib-2.0 or util-linux build
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
X-List-Received-Date: Tue, 22 Oct 2013 13:50:08 -0000
Content-Type: text/plain; charset=UTF-8

On 22 October 2013 14:44, Bryan Evenson <bevenson@melinkcorp.com> wrote:
> DEPENDS_${PN} = "virtual/kernel glib-2.0 util-linux"

Build dependencies are not package-specific, so just use DEPENDS = "...".

Ross

