Return-Path: <josh@linux.intel.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id DD2B64C810D8
	for <yocto@yoctoproject.org>; Tue, 19 Oct 2010 16:15:05 -0500 (CDT)
Received: from [10.250.128.245] (unknown [158.43.2.102])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 7B81A12EC225
	for <yocto@yoctoproject.org>; Tue, 19 Oct 2010 16:50:30 -0500 (CDT)
From: Joshua Lock <josh@linux.intel.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Date: Tue, 19 Oct 2010 22:15:03 +0100
Message-ID: <1287522903.24666.5.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.0 (2.32.0-2.fc14) 
Subject: Call for help for demo UPNP media renderer
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 19 Oct 2010 21:15:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi all,

I've packaged Rygel, a upnp media server and renderer, to use as the
media renderer in the upnp demo. However I'm seeing a segfault at launch
and as it's getting late here I'm wondering if someone in a strategic
timezone can help debug while I cycle home and sleep.

The (ugly) recipes are in the josh/demo branch of the meta-demo
repository.

rygel --gst-debug-level=5 

shows plenty of output, but nothing that jumps out to a gstreamer newb
like me. AFAICT I have all of the plugins required but it's possible we
need to add more.

If not I'll pick it up again in the morning.

Thanks,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


