Return-Path: <scott.a.garman@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C87DE00282
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2012 13:32:55 -0700 (PDT)
Received: from mail-pb0-f52.google.com ([209.85.160.52])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 01 Aug 2012 13:32:54 -0700
Received: by pbcwz12 with SMTP id wz12so1633301pbc.25
	for <yocto@yoctoproject.org>; Wed, 01 Aug 2012 13:32:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:content-type:content-transfer-encoding:x-gm-message-state;
	bh=wR6cvsZGgcR7V7g8Lq1lxZm7VYvhh6jxWO+he1LSJ64=;
	b=lZULlzIaDt0Jek4XnNDzSNVJ0pm68VbIvvs5i0t9HxF6k8ohjbIVAvG1BZNI49bmma
	hNXK+RdqkoIs0+4fp33jL8Os7qQzmrWb+Ah3CQdSjTNxtWBzImjK9nnp5MaG8HVAlIcB
	IHqGaIzEo0YuCYPOb8oQ41f4+w4xPMwGqQshKaMk7p9i3b4yrOnKk+q4wg6p5agZH4Lg
	wctBF0IAB7kg+yke32PvpuBPckZCUOEgLrUKrjZI4EEhKiExMFAQjTROl+oN3xLkG82p
	szhJQQihGjKjq1wkPDAHneJlDMRbQelegEet7gGENPaaCp5+VGWdEx428OAIH9kiFyb3
	yQZw==
Received: by 10.68.194.201 with SMTP id hy9mr54476552pbc.69.1343853174526;
	Wed, 01 Aug 2012 13:32:54 -0700 (PDT)
Received: from [192.168.1.12] (c-76-105-137-48.hsd1.or.comcast.net.
	[76.105.137.48])
	by mx.google.com with ESMTPS id og7sm2841032pbb.62.2012.08.01.13.32.53
	(version=SSLv3 cipher=OTHER); Wed, 01 Aug 2012 13:32:54 -0700 (PDT)
Message-ID: <50199278.9040407@intel.com>
Date: Wed, 01 Aug 2012 13:32:56 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
X-Gm-Message-State: ALoCoQn4mvIbx/ajIrOtYsrYt9dsQehIj4/CwBHsX26GSRu25JOKVM1FalnYVmbqCSa8uEdF7KES
Cc: yocto@yoctoproject.org, "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: denzil-next (1.2.2) staging branch change
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
X-List-Received-Date: Wed, 01 Aug 2012 20:32:55 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I just wanted to make a short announcement that I've just renamed my 
sgarman/denzil-next-1.2.2 staging branches to simply sgarman/denzil-next.

oe-core based:
http://git.openembedded.org/openembedded-core-contrib/log/?h=sgarman/denzil-next

poky based:
http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=sgarman/denzil-next

I created the -1.2.2 branches because at the time the Yocto Project 
1.2.1 release was still being finalized and I needed to start tracking 
patches for the next denzil point release. Now that 1.2.1 is out, the 
meaning of denzil-next is no longer ambiguous.

Again, the workflow I'm using is I pull in community requests for denzil 
commits into my sgarman/denzil-next branches, run some tests on them, 
and then submit a pull request to the appropriate mailing lists so 
Richard can then approve and merge them into the official denzil branches.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

