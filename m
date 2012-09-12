Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 639B2E002AC
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 11:22:11 -0700 (PDT)
Received: from mail-pb0-f48.google.com ([209.85.160.48])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 12 Sep 2012 11:22:02 -0700
Received: by pbbrq13 with SMTP id rq13so3373426pbb.35
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 11:22:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=Cr2sDFDo7DpWY1bcBFtz9WY+3jy5mu76XrSlWdvtewU=;
	b=bFIQxS9EfMxMbZNaKAX6fk2kna9Ke8R/GFB1jJ8ShxDTrIMfqp3ABIP9RgbzDOnSvW
	0Eov7huUJSVZj8fPXjF0rcwkB5A9MKWbbeED1b4diR7sysX2sFj/at1o1+zcH2+HZSNQ
	z25JF+RaoH2fEDwhjo7l+ieRiYCHxGF8oqyNkZfw+l9okrn+qYRVzXRAUBQlu6h6v6kK
	YrVdIJ4fxPmWpgI1/j7LdwRpxZp/cstxAV4LqiSE5aG/iXvfNRiQ7wlzt2veff9Q8L/I
	h+uOWsb0Ij2eO2OW8KF38fbjNxj0VenBnBxNszBbXUWfEamm9uxFO2NlA8gRVhEOabsr
	b9uA==
Received: by 10.68.134.230 with SMTP id pn6mr5166pbb.44.1347474130364;
	Wed, 12 Sep 2012 11:22:10 -0700 (PDT)
Received: from [10.32.68.111] (72-254-28-197.client.stsn.net. [72.254.28.197])
	by mx.google.com with ESMTPS id
	vd4sm11762253pbc.41.2012.09.12.11.22.08 (version=SSLv3 cipher=OTHER);
	Wed, 12 Sep 2012 11:22:08 -0700 (PDT)
Message-ID: <5050D2CF.3000006@intel.com>
Date: Wed, 12 Sep 2012 11:22:07 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120827 Thunderbird/15.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CA+gsK-qoz4u6OZV+FZN+LZq2AOgw5RajOW6DCJOnXbZGecva1w@mail.gmail.com>
In-Reply-To: <CA+gsK-qoz4u6OZV+FZN+LZq2AOgw5RajOW6DCJOnXbZGecva1w@mail.gmail.com>
X-Gm-Message-State: ALoCoQm6YORfOawCaClOW9kVz6Vm60/L4auweSfplpwkzs7pgJYiSrdoFlVIHO7cJ0PnVDziIZ69
Subject: Re: [linux-yocto] 'bitbake linux-yocto' after 'bitbake linux-yocto -c compile -f' does not create image
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
X-List-Received-Date: Wed, 12 Sep 2012 18:22:11 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 09/12/2012 08:06 AM, Rudolf Streif wrote:
> In Denil modifying kernel parameters and doing
>
> bitbake linux-yocto -c compile -f
> bitbake linux-yocto
>
> worked perfectly fine. The tasks after compile were rerun and the new
> kernel copied to tmp/deploy/images
>
> In Edison 7.0.1 this does not seem to work anymore. The tasks do not
> rerun and the kernel image is not deployed.
>
> What has changed? Why does it not work anymore?

This was a bug that was introduced in 7.0.1. I have included a patch 
series in my testing branch that is intended to go into the denzil 
branch soon:

d7b818b bitbake: refactor out codeparser cache into a separate class
66123b9 classes/cml1: ensure -c menuconfig forces a rebuild next time
5bd11a9 bitbake: bitbake: ensure -f causes dependent tasks to be re-run
8b8be74 bitbake: implement checksums for local files in SRC_URI

http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=sgarman/denzil-next

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

