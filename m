Return-Path: <jfabernathy@gmail.com>
Received: from mail-qa0-f53.google.com (mail-qa0-f53.google.com
	[209.85.216.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D040E0044A
	for <yocto@yoctoproject.org>; Tue, 22 May 2012 04:43:28 -0700 (PDT)
Received: by qadz32 with SMTP id z32so2990621qad.12
	for <yocto@yoctoproject.org>; Tue, 22 May 2012 04:43:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=kb/FGxRm3A0Xv6m0Zl47e4u9H2hDOGOC7fedmcgB0OQ=;
	b=OPHxiFQrvg+REbI8qxUepMFPi50tiHzInTP01o4K0VyzN4kXf0mhJ5RQhbtefLk6Mb
	jW79s9rq7MeBbuXfyN16GYZgUX0P2ap7/Ff4RmfV99YB2joKE8CNe9AexrkwgtmpGv4Q
	e8jIsiX/WRz/nDXzZHoXhjlQVJPxNQXbgdBT1/5w8BPx6ZD552r4X89B8y2q9hS0UEq4
	zySeyGpBCMT95/tLWgLpsuNip/N3rj+etyCh2VIxeaQ2mobf/2CXQnZ9ZK+YrLYWrp8+
	EH7XNzr+MkqG9k02hUq/818Cm2yhYrWBNcqsLUdgEZUbdypIX6Z9IdG89QeUlXzJb/aJ
	vvzg==
Received: by 10.224.205.6 with SMTP id fo6mr44460297qab.73.1337687007620;
	Tue, 22 May 2012 04:43:27 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-55.dhcp.embarqhsd.net. [184.4.33.55])
	by mx.google.com with ESMTPS id
	gb7sm45007204qab.12.2012.05.22.04.43.26 (version=SSLv3 cipher=OTHER);
	Tue, 22 May 2012 04:43:27 -0700 (PDT)
Message-ID: <4FBB7BDE.4090008@gmail.com>
Date: Tue, 22 May 2012 07:43:26 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: runqemu qemux86
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
X-List-Received-Date: Tue, 22 May 2012 11:43:28 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

when testing an image using runqemu qemux86, can you get networking to 
work?? mine comes up disabled.  I want to test an application that 
requires Internet access.

Jim A


