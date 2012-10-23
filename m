Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 740CBE00533
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 14:24:46 -0700 (PDT)
Received: from mail-ea0-f200.google.com ([209.85.215.200])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 23 Oct 2012 14:24:18 -0700
Received: by mail-ea0-f200.google.com with SMTP id i11so2966378eaa.11
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 14:24:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:cc:message-id:in-reply-to:references:subject:x-mailer
	:mime-version:content-type:content-transfer-encoding
	:content-disposition:x-gm-message-state;
	bh=uZFEjZmdSKzlyPXuX1tgQ7AqCIl0yIGqJ5cwWAb1Ba4=;
	b=DTQKuIzjhhZ3v27XDWifcuIz1fcCDHecLwkHMhgG2OiSrCswqet1Ja+BfCgfeCL5sb
	D41k3QsM7tN7kLhiUFz6jUgFQRxhI9s4nNnY/sl3Q52h5VgNGCypyfBflWdWgDc6Ydvg
	BHQgYmlbi85VrOa2VW6951I1CEJ5l6izZRDoR7jzmAuCOttnSaCs5+11Uxf0eyIrB1HX
	fk9lRZmluwNGNWVKf1dtKi/S77QuDqaTr+gS6d6l3ueM2wWdB2/uAK/6a7WCA2uXWnDj
	qzEozrz92IEoi56hn6AErWjAyViR6Rext4Z3fx0PjwhxjUuwcMjknYlChghZW0iVlltn
	z2dg==
Received: by 10.180.87.34 with SMTP id u2mr850870wiz.3.1351027484035;
	Tue, 23 Oct 2012 14:24:44 -0700 (PDT)
Received: by 10.180.87.34 with SMTP id u2mr850858wiz.3.1351027483903;
	Tue, 23 Oct 2012 14:24:43 -0700 (PDT)
Received: from [192.168.1.7] (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id w8sm771629wif.4.2012.10.23.14.24.42
	(version=SSLv3 cipher=OTHER); Tue, 23 Oct 2012 14:24:42 -0700 (PDT)
Date: Tue, 23 Oct 2012 22:24:44 +0100
From: Ross Burton <ross.burton@intel.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Message-ID: <0D8519A6089349458734E822A3CBF611@intel.com>
In-Reply-To: <70CC66F5C30A414DADDA6973E4CA391A71DEF4@039-SN1MPN1-002.039d.mgd.msft.net>
References: <D8FE0C54-F09B-40E0-BDDA-5C2AA31DC4C3@gmail.com>
	<70CC66F5C30A414DADDA6973E4CA391A71DEF4@039-SN1MPN1-002.039d.mgd.msft.net>
X-Mailer: sparrow 1.6.4 (build 1178)
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQkfte1cji1rlUGl4PdAEXttsGp0RJHLVzUBTKEAUIxRctGq9VEvnPUpO74cf+m4GIZtxHGftZpy/g7ToU9udMLcFVUr5lGaOBr/S+OW4jZEALJnBm+bFPd3f7uZR8I1/djH/VTGID8C118awShsT8PmlTC7Xw==
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Performance improvements and machine build configuration
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
X-List-Received-Date: Tue, 23 Oct 2012 21:24:46 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Tuesday, 23 October 2012 at 22:19, McClintock Matthew-B29882 wrote:
> On Tue, Oct 23, 2012 at 1:45 PM, Elvis Dowson <elvis.dowson@gmail.com (mailto:elvis.dowson@gmail.com)> wrote:
> > The only curious thing that I've noticed is that I don't see a large performance improvement using a standard 3TB Seagate Barracuda 7200 RPM HDD, and the two Intel Series 330 SSDs in a striped RAID0 configuration. The read (600MB/s) / write (838MB/s) figures are impressive, although I expected the read performance to be higher than write performance, as is normally with a single SSD. I'm using the motherboard's hardware RAID support on a 6GB/s SATA 3 port.
> 
> 
> 
> You probably don't use much disk I/O with 16GB of memory for a build.
My machine has 16G of RAM, and after a good build will have 12G of "cache" (according to /proc), but the disk activity light was frantic.  I can only imagine it would be more frantic with less RAM to act as an over-sized disk cache.

Ross 



