Return-Path: <scott.a.garman@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 808C7E00723
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2012 12:58:47 -0700 (PDT)
Received: from mail-pz0-f52.google.com ([209.85.210.52])
	by mga11.intel.com with ESMTP/TLS/RC4-MD5; 14 Jun 2012 12:58:47 -0700
Received: by dano14 with SMTP id o14so3016023dan.25
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2012 12:58:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=QwWjV9yrZmicqqg9QvtiHYEq1vyhNDmkJpmYQKLVGJY=;
	b=PiTpVwvCwtii3Wp1IFkiJY70SXirIjdJtbuv1n4NwyitBXKNYc2sAW6OjgI/5E2Kbj
	NX/h4/KhmYYKjRvVR3jOozh+wyT5jf4SXFXOjJistvJtuVVBRzcNzHivLlQY40L+Eg+k
	Q+T5VksZs9P2ySSlxL/XHNr4n2FTVe9Uy+eSLgudDQ4rnMlP8g5w5o7/naqcsYqgT+TX
	pIJoIqSkayNtnkY7Mek5IjInNnBEbOHhsWjUH+629HM+bX/6Jk5C714OkQBahwWpLDNI
	BEQRRKAuWqN7j6KI7noOWynz1jN3UG7u4o1O+cyJUXmBB4tFUDqzhn838Pb0P3Ft3eJC
	gC1Q==
Received: by 10.68.129.198 with SMTP id ny6mr11237742pbb.22.1339703926587;
	Thu, 14 Jun 2012 12:58:46 -0700 (PDT)
Received: from [127.0.0.1] (masterfoo.zenlinux.com. [207.192.74.254])
	by mx.google.com with ESMTPS id og4sm10512430pbb.48.2012.06.14.12.58.44
	(version=SSLv3 cipher=OTHER); Thu, 14 Jun 2012 12:58:45 -0700 (PDT)
Message-ID: <4FDA4270.80507@intel.com>
Date: Thu, 14 Jun 2012 12:58:40 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.DEB.2.02.1206141434210.11150@oneiric>
In-Reply-To: <alpine.DEB.2.02.1206141434210.11150@oneiric>
X-Gm-Message-State: ALoCoQkpf1FlTF1kjrQadfMJkp41zqeiUHERrq0E6b2xEcK49boTgw2o1+D3HF11yTH2VpxG4Yox
Subject: Re: oddities in "runqemu" script
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
X-List-Received-Date: Thu, 14 Jun 2012 19:58:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/14/2012 11:39 AM, Robert P. J. Day wrote:
>
>    just a few observations:
>
> 1) usage suggests this possible option:
>
>    MACHINE=xyz
>
>    not sure what that's supposed to accomplish, that will be rejected
> by the arg parsing loop, will it not?  or how is one supposed to
> interpret that?

This is a bug in the usage() documentation, thanks for reporting it.

> 2) the process_filename() function appears to accept a filesystem type
> of "ext4", but the arg parsing loop immediately after that doesn't
> recognize that as valid, only ext[23].

Our QEMU machines only generate .ext3 images, so that would explain why 
this never got tested. It's still not good that it's inconsistent, so 
I've filed a bug to fix that and the above issue:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=2611

> 3) the arg parsing script clearly recognizes the option "audio", but
> that's not mentioned in the usage() function.

That's because we're not yet ready to advertise that the audio option is 
fully supported, see this bug:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=1018

which isn't even slated for work in 1.3, but rather 1.4.

Thanks for these inquiries!

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

