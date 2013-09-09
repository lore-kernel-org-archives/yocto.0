Return-Path: <arunkr.linux@gmail.com>
Received: from mail-pd0-f182.google.com (mail-pd0-f182.google.com
	[209.85.192.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D08FBE006B5
	for <yocto@yoctoproject.org>; Mon,  9 Sep 2013 13:00:52 -0700 (PDT)
Received: by mail-pd0-f182.google.com with SMTP id r10so6641158pdi.13
	for <yocto@yoctoproject.org>; Mon, 09 Sep 2013 13:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=PatI9A+jE8aKzMAfSUr7mrNt7UT7Sk/mhg6nlapvtbo=;
	b=Ka7CLRWnFQKkntjbQyQNYXyUNGf6cEZMLbH4feYHt/qt3kaR3BZSEcXpXEg4yi2Pkt
	SkY7jVv2scZjDp+RPKxnz9WecExUPr/9QXfP6JlodTDgOWMiQQJMP0RQaSCyrOTt3Tv3
	wbnyHhfI7vCKjP0moB4NDBX0yE9DMPABbhLVyX8pIf3fXmtrdILdHeBa6L7K2G/Dna1J
	U5UYNt4TBdWAF4wn3/dz2w8Ipe13EIGrvGTdpKvaVOQjs1F4TpLd0QcX1oMovYWtYz4V
	qV8aq3Vwkc+Y2ZepAb+wI8b0TA5yGVjngC9WTdOF6kCAdAhhDrcUCTtKUjKEbaF7yOq8
	gvxw==
X-Received: by 10.66.20.166 with SMTP id o6mr5216521pae.149.1378756852610;
	Mon, 09 Sep 2013 13:00:52 -0700 (PDT)
Received: from [192.168.0.100] ([219.91.250.52])
	by mx.google.com with ESMTPSA id
	sy2sm18021768pbc.16.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 09 Sep 2013 13:00:51 -0700 (PDT)
Message-ID: <522E28ED.5000807@gmail.com>
Date: Tue, 10 Sep 2013 01:30:45 +0530
From: Arun M Kumar <arunkr.linux@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: error in : $ runqemu qemux86
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 09 Sep 2013 20:00:55 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I have built my first image with the Yocto Project build environment, I 
have the image ready.

when I do.

$ runqemu qemux86

I get the following error.

--------------------------------------------------------------------------------
There was an error running bitbake to determine TMPDIR
Here is the output from 'bitbake -e':
ERROR: Unable to parse conf/bitbake.conf: conf/bitbake.conf:18: unparsed 
line: 'xport exec_prefix = "/usr"'
_____________________________________________________________


What could be the possible causes to this.

I had to add the scripts directory in Poky to my PATH variable, does 
this gives any hints to my problem ?

