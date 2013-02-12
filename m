Return-Path: <ross.burton@intel.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 88AABE006C9
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 01:35:42 -0800 (PST)
Received: by mail-wg0-f54.google.com with SMTP id fm10so5613716wgb.9
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 01:35:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:date:from:to:cc:message-id:in-reply-to:references
	:subject:x-mailer:mime-version:content-type
	:content-transfer-encoding:content-disposition:x-gm-message-state;
	bh=jib34cq1f81Wvfv+iJF5hRhao6QHc/HTu4/cCaRoCjk=;
	b=m5/ITIFqrB5RlTk8v3v1MTFXAyEB5UOyrhwcrT6RNEX2PJvqcGK5rebp6xko16EpnY
	uc7yWSgpW+Y42FibEP0podMW1JYH85X/g8RjupKvwy6kFp12iKeVkp1wB3Sv7NyUOvPx
	tyH+99LHDcigsnFX/N2FcTMU+s8MUrg0KjBqbcPHR0T53JqUnKpe5gIGtNCSpaDZsII1
	KGH15CCWx7dYStaavqwEdNQl/5vtXWr1lco7TXJNSZr18tPihtNRiQKrqGIx9JFgeoBP
	TVyCADDWuJmr3smd2YwNN6hCojD/dQOWc0J1PbtPLR1r750NjTNagAnMR9BSFZx/DNAc
	5QoA==
X-Received: by 10.194.19.97 with SMTP id d1mr14936893wje.52.1360661740848;
	Tue, 12 Feb 2013 01:35:40 -0800 (PST)
Received: from [192.168.1.11] (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id ec3sm35438388wib.1.2013.02.12.01.35.39
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Tue, 12 Feb 2013 01:35:39 -0800 (PST)
Date: Tue, 12 Feb 2013 09:35:36 +0000
From: Ross Burton <ross.burton@intel.com>
To: Jukka Rissanen <jukka.rissanen@linux.intel.com>
Message-ID: <F3FDA2B8A266452C8CB34AFC4B256702@intel.com>
In-Reply-To: <511A0810.4080305@linux.intel.com>
References: <511A0810.4080305@linux.intel.com>
X-Mailer: sparrow 1.6.4 (build 1178)
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQnAuXaOcU3J4RVMovDRYcaT2DqDUdoL0B/ft6POJyDiMrBG97W/nEJyPtaek7RII9BMMqJr
Cc: yocto@yoctoproject.org
Subject: Re: Initramfs and systemd problems
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
X-List-Received-Date: Tue, 12 Feb 2013 09:35:42 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Tuesday, 12 February 2013 at 09:14, Jukka Rissanen wrote:
> I am building a small network appliance for tethering purposes.
> I do not need graphics so I removed X support, also added
> systemd from meta-ivi and upgraded connman into latest
> 1.11 version, and also did some minor tweaks here and there.
> 
> In beagleboard, my setup works just fine.
> In Intel NUC device, the system refuses to boot properly.
> The reason is the init-live.sh (http://init-live.sh) script in initramfs image,
> it expects the USB stick to be present in /media/xxx directory.
> 
> Because the base system uses systemd, the initramfs is
> also using systemd but there is some things missing and
> system will not automount the USB stick into /media.
> 
> Is there any possibility to avoid using systemd in initramfs
> i.e., use the udev package only, or is the only option to
> tweak systemd setup in initramfs? Or any other suggestion
> how to fix this?


I'd noticed that systemd's udev is failing to live-boot too in oe-core master (which now has integrated systemd).

I don't think its possible to build a second udev for the initramfs, and this is clearly a bug so we should figure out why it doesn't work.  Do you have any hints in your debugging as to what is broken?

Ross 



