Return-Path: <elizabeth.flanagan@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DC35E01423
	for <yocto@yoctoproject.org>; Wed, 30 May 2012 18:03:48 -0700 (PDT)
Received: from mail-lpp01m010-f52.google.com ([209.85.215.52])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 30 May 2012 18:03:47 -0700
Received: by lahj13 with SMTP id j13so280713lah.25
	for <yocto@yoctoproject.org>; Wed, 30 May 2012 18:03:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=AahXC0r10jHmq5AwcKswoE+gqWqtdt4Zq0jnx8qsG5E=;
	b=Dx5Ef4dA+vn/X9PlS7fDNCFCnTHcZnwNJBL4xN8sThz5FSRYHtjFhnhqdEerfrtmtg
	85qrUz1Uq9eaVn+SRl6jc+y8387ri14lR00deRqIUg09H8nR20Wn+qNNKWRA78zkrO20
	RdslM9XBw00YJ6RASQq2eUxhSIl92jxFVMTQnwJJJhXmHCKv6fk/XKWzTI8IKJoHs8zh
	GmFQiiDrtN+aAGWh/baiZzseJJF2DJ+MjWgOFo/a9HUEFqxzJ6lPsNSwj29ea+Q+yi36
	6PGXf2WKqrhkGn3CvkU6CPyNtJtI6JSRbDXmAUZLtjUgmvkhatqFoJML4gYpQxPgpKql
	W20A==
MIME-Version: 1.0
Received: by 10.152.112.138 with SMTP id iq10mr17772011lab.13.1338426225117;
	Wed, 30 May 2012 18:03:45 -0700 (PDT)
Received: by 10.112.1.227 with HTTP; Wed, 30 May 2012 18:03:44 -0700 (PDT)
Date: Wed, 30 May 2012 18:03:44 -0700
Message-ID: <CAPhnLPC6auSpiJ-ZQkgMwC3XGroAvmhOK702J_4EC0PXbc6tmg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQmBYQYUKb9KuSargcVqztmjuJQTmsjX8Yg/JiRFYhmCimXCVEb+Fu6etcWzjlL+rXMsYD8k
Subject: [Announcement] Weekly build availability
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
X-List-Received-Date: Thu, 31 May 2012 01:03:48 -0000
Content-Type: text/plain; charset=ISO-8859-1

The weekly build for the milestone 1 of 1.3 will be available
very shortly at :
http://autobuilder.yoctoproject.org/pub/nightly/20120530-2

We currently have two issues:
poky-tiny failure:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=2523

non-gplv3 failure:
NOTE: package gnome-doc-utils-native-0.20.6-r8: task do_install: Failed
I looked to verify that this wasn't an infrastructure issue. It
appears not to be.
If anyone has more info on this, I'd appreciate it.

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

