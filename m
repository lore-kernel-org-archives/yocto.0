Return-Path: <marc.ferland@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADD4BE013E6
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 13:41:20 -0700 (PDT)
Received: by ieak12 with SMTP id k12so314237iea.35
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 13:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:user-agent:mime-version
	:content-type; bh=lnzD6D3qLuulOgEzFfdH84RF9OWtP7LD8sxlpqJWgzw=;
	b=lIg+x4F4wyzj6c2vLPtjXH7sS7ApXQ6JtLbvK7Gj1fIRUcVAE8NjbTGkOvxaK7jV34
	bc/uhSHyACjHg2HiJclA1ksiviXNGBDSFZNRi7bwDlUcNO8d/AZm71UHuNnvXicVws2s
	5Lgj67XQd2U8HyZ2Xb+8Vj0BG6sdfDgX9ID0xQseEnlG74keWXNFlIOVPsOQuj1Prz7b
	URDkIQRbmvXF25Wu/ZuVD/7cM/gepVDjyhDUg7XOWZygngQ7I0cHIsVjL4U70atCQ2nd
	ZKJXgNngBX+g3ktzODkDlBGqWmgMq0fOvSaIeABX1yRVl62BokMV5TL9Y7o2aUzGEeXC
	LTwA==
Received: by 10.50.236.6 with SMTP id uq6mr3913173igc.50.1348087277935;
	Wed, 19 Sep 2012 13:41:17 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPS id ua5sm13857105igb.10.2012.09.19.13.41.15
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 19 Sep 2012 13:41:17 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Wed, 19 Sep 2012 16:41:19 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: yocto@yoctoproject.org
Date: Wed, 19 Sep 2012 16:41:19 -0400
Message-ID: <87ipb9d9u8.fsf@sonatest.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.1 (gnu/linux)
MIME-Version: 1.0
Subject: About bug 2331
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
X-List-Received-Date: Wed, 19 Sep 2012 20:41:20 -0000
Content-Type: text/plain

Hi,

I'm currently trying to create a "live" system with squashfs+unionfs and
I stumbled on the same bug described here:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=2331

I was wondering if there was a plan to resolve this issue for 1.3?

Regards,

Marc

