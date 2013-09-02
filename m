Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f170.google.com (mail-ve0-f170.google.com
	[209.85.128.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BB90E006E5
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2013 05:26:34 -0700 (PDT)
Received: by mail-ve0-f170.google.com with SMTP id 15so3195417vea.1
	for <yocto@yoctoproject.org>; Mon, 02 Sep 2013 05:26:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=VwZ+uVcNwVZlNih2cC+hdIDnTLwf+mtB5DltUV0uCYI=;
	b=VryTamDPrdtD3sc5S/5l7Uk4v++CxV72qo4lbkaYvZBEVOjQG0v98IJFDq2dmwxsXL
	eZbsCvMsqjdl428huQ68NKwv7mUdKL9Im7l5GYa1Iqtx6axKyUSDKO325PyUVyMmrTF9
	8/BJ/36hAX6rLCJDcPVHoOhccljFIM8FHWjNYYTnrIldQSiOqNFWhWDtJ1sMMpnpgIAP
	1pi8d0Mn7ymg2bEMEIa2l78CutxCXDFi1oaHT1vOJWs0fRFJKu59sNMfehsvIExOfR6t
	ph3D4uWf0t+r7QJtkVpk/nl6NamDZwWo+5TlZsgG4a6/OmSwMuqGFPmO3vhVhJa0mUSM
	hpww==
X-Gm-Message-State: ALoCoQnb6jwqh1AnyKycDJrWaFiMMZtw/oF3v4DGhBzt0Yvv9YA4KQf9U25GHKuAoPolkFhfxDAb
X-Received: by 10.58.108.74 with SMTP id hi10mr2247906veb.14.1378124793446;
	Mon, 02 Sep 2013 05:26:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Mon, 2 Sep 2013 05:26:13 -0700 (PDT)
In-Reply-To: <521DD72D.2020102@mlbassoc.com>
References: <2C94F567F1334C30A5BBD2CA59576460@PAULD>
	<521D354E.1020909@mlbassoc.com>
	<8EB78E64DFE9436EAFB462E357C464EC@PAULD>
	<521DD72D.2020102@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 2 Sep 2013 13:26:13 +0100
Message-ID: <CAJTo0LYr_ae=qvh2ZoXJMAWL6w1NZFHCH4S=FQ3i48gYgvgc+A@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"Paul D. DeRocco" <pderocco@ix.netcom.com>
Subject: Re: Can anything be done about do_rootfs speed?
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
X-List-Received-Date: Mon, 02 Sep 2013 12:26:37 -0000
Content-Type: text/plain; charset=UTF-8

On 28 August 2013 11:55, Gary Thomas <gary@mlbassoc.com> wrote:
>
> In the case of 'ipk' packages, you'll need to set up the board to make use
> of
> the exported package sets.  There are a number of ways to do this, but in
> the
> case of 'ipk' you can do it all in a single file.  Here's an example on my
> SabreLite (i.MX6 ARM system):
>   root@sabrelite:~# cat /etc/opkg/base-feeds.conf
>   src/gz poky_am-all http://192.168.1.125/sabrelite-feeds/all
>   src/gz poky_am-armv7a-vfp-neon
> http://192.168.1.125/sabrelite-feeds/armv7a-vfp-neon
>   src/gz poky_am-sabrelite http://192.168.1.125/sabrelite-feeds/sabrelite

meta-oe has a distro-feed-configs recipe that can do this bit for you
if you set a few variables in your configuration.

Ross

