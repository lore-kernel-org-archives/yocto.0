Return-Path: <mhubig@imko.de>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3FE3E0140A
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 06:24:26 -0700 (PDT)
Received: by bkty5 with SMTP id y5so249213bkt.35
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 06:24:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imko.de; s=google;
	h=date:from:to:subject:message-id:mail-followup-to:mime-version
	:content-type:content-disposition:user-agent;
	bh=4e9vNJc7NnLxNRTnGkvf3e65UhG2COo9nZneKOHrpDk=;
	b=pUXV89bOBKtilxH7iogz+X9k8U1+F0QEcTIzwKafOQzTlwYRlm4vmXELkikyE8VauU
	R1MuEKGW+tkHz6cnHkPMTFgTf31/xT6dBu2os1zv3I7IQym2xAPsmV4UCJsbhkWlTIDQ
	b78sOoAoEr9oiYRikd9zHCN/XxTJZpMaZcQd8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:subject:message-id:mail-followup-to:mime-version
	:content-type:content-disposition:user-agent:x-gm-message-state;
	bh=4e9vNJc7NnLxNRTnGkvf3e65UhG2COo9nZneKOHrpDk=;
	b=ABSsd+f0zEbTC9FF6zlAQgD/YRKtCc4G94HggFJEjqkJke4jKvqill8O0OAqoMNbbq
	rFQ6+nMLCCzJooQ+N6fqfRuwst7KgAfWbZPenrfFiiicHz9YudNbjUPTYdJkxzgNK3eP
	T7N4RqCJYbGcuA71tbaQfjBKAYStb9dBe9ySe+re+6kRBnJryX9lhx1Mu2CA+hZcLyvL
	caNzq/bz8dSYFsuiurR3CjJWxMckLKnFlSBQq3MDH5vULFSZhGe9dwyzQ21K8Ljbtjv8
	58270/eaFXH5GBAMsg/RMNlxhXEh7xwk4CK+TQro0qNPzVK2bJapP1AfXInEnhfV/pCy
	Cjkw==
Received: by 10.204.8.65 with SMTP id g1mr486486bkg.50.1345728265235;
	Thu, 23 Aug 2012 06:24:25 -0700 (PDT)
Received: from imko.de (business-092-079-181-094.static.arcor-ip.net.
	[92.79.181.94])
	by mx.google.com with ESMTPS id y20sm4644858bkv.11.2012.08.23.06.24.23
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 23 Aug 2012 06:24:24 -0700 (PDT)
Date: Thu, 23 Aug 2012 15:24:20 +0200
From: Markus Hubig <mhubig@imko.de>
To: Yocto Project Mailing List <yocto@yoctoproject.org>
Message-ID: <20120823151259.f1550eb3-e33f-4100-93dc-f39eab90e4b1.mhubig@imko.de>
Mail-Followup-To: Yocto Project Mailing List <yocto@yoctoproject.org>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Gm-Message-State: ALoCoQmiv3kpVfvGMF/FCvvm7odkKI3i+9rXLpp/e2J3kK6wz7J7DlTBDD4BepiDtxnnvCFoRm7s
Subject: 1.3_M3 do_kernel_config failes, config_frag.txt is crippled.
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
X-List-Received-Date: Thu, 23 Aug 2012 13:24:27 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello @all,

because I need the commit 'dcadeda' I switched from denzil to 1.3_M3.
Now I get a strage error while do_kernel_config:

| configme --reconfig --output <...>/linux-portuxg20-standard-build standard stamp9g20
| [INFO] Configuring target/machine combo: "standard/stamp9g20"
| [INFO] collecting configs in ./meta/meta-series 
|   [##################################################]  (completed in 0 seconds)                    
| ERROR: could not sanitize configuration fragments
|    errors are logged in meta/cfg/standard/portuxg20/config.log

Digin a bit deeper I found:

| [INFO] Sanitizing meta/cfg/kernel-cache/features/fuse/fuse.cfg
| [INFO] Sanitizing meta/cfg/kernel-cache/ktypes/standard/standard.cfg
| [INFO] Sanitizing meta/cfg/kernel-cache/cfg/devtmpfs.cfg
| [INFO] Sanitizing meta/cfg/kernel-cache/cfg/debugfs.cfg
| [INFO] Sanitizing meta/cfgportuxg20
                    ^^^^^^^^^^^^^^^^^
| [ERROR] Kern frag  does not exist

And again a bit deeper I found that the file

| ./meta/cfg/standard/portuxg20/config_frag.txt

is somewhat crippled:

| ...
| /kernel-cache/ktypes/standard/standard.cfg
| /kernel-cache/cfg/devtmpfs.cfg
| /kernel-cache/cfg/debugfs.cfg
| portuxg20
  ^^^^^^^^^
| hardware.cfg
| non-hardware.cfg
| /kernel-cache/features/usb-net/usb-net.cfg
| portuxg20
| hardware.cfg
| non-hardware.cfg
| /kernel-cache/features/usb-net/usb-net.cfg
| /hardware.cfg
| /non-hardware.cfg
| /portuxg20/portuxg20.cfg
| /kernel-cache/features/netfilter/netfilter.cfg
| /kernel-cache/features/taskstats/taskstats.cfg

Who is creating this file?

Cheers, Markus

-- 
Human beings were created by water to transport it uphill.

