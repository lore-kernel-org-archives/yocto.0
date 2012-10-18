Return-Path: <marc.ferland@gmail.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7990E01275
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2012 08:13:15 -0700 (PDT)
Received: by mail-vb0-f48.google.com with SMTP id e21so10479849vbm.35
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2012 08:13:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:user-agent:mime-version
	:content-type; bh=Pjr8PnCSaNCEQfkrMLRXs58IVPg73F1cJMaF9PilHvk=;
	b=PIH7/+b+tIk807VLBgAVeHzW1ej5UUf9pkPlIiGN9f15MUB5loPpWEnynCOBU0SJJf
	7N7RbeKInRqga3qKP/udYxhcX7usRbki01u8nbF5gFM3nuswtQ8NMyMCA5AIp/RhFKBQ
	oapu3NDm5Jb1CN1rt5JtBeW9eX/dZnsDTY8naR9nU70+Jn1Scn9caqpJe6afthcHio+D
	9329kI7McYGQ1VmYET9kLInmAs6v8msxVAmBMLB48dcSkU6WqvDe7QGRiJ4FLSsQQDh6
	wXaVHu/zcBvaPoE3DGV3Lqw0iHqPSTpvMgNxo4ze4qSzgsMLqaNNAfTFtqLNPfWWSPyk
	tqHg==
Received: by 10.220.247.140 with SMTP id mc12mr2537688vcb.0.1350573192782;
	Thu, 18 Oct 2012 08:13:12 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPS id f10sm5198969vdk.5.2012.10.18.08.13.08
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 18 Oct 2012 08:13:10 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Thu, 18 Oct 2012 11:13:13 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: yocto@yoctoproject.org
Date: Thu, 18 Oct 2012 11:13:13 -0400
Message-ID: <87mwzj3jau.fsf@sonatest.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.1 (gnu/linux)
MIME-Version: 1.0
Subject: Problem genrerating module autoloading commands
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
X-List-Received-Date: Thu, 18 Oct 2012 15:13:15 -0000
Content-Type: text/plain

Hi,

I'm having trouble generating the module auto-loading instructions in
/etc for one of my modules. I have already many modules that all work
fine, but for some reason this one does not get listed in /etc/modules
nor /etc/modules-load.d.

The only thing that distinguishes this module from the other ones is that
it has the same name has the MACHINE and layer. So basically I have
something like:

build/conf/local.conf:
MACHINE = foo

poky/meta-foo/conf/machine/foo.conf:
module_autoload_foo = "foo"

The module gets built correctly and is included in the images. Running
'modprobe foo' works as intended on the target hardware.

Did I fall in some edge case?

Regards,

Marc

