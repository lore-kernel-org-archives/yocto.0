Return-Path: <jukka.rissanen@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22B0FE011B9
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 03:11:16 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 28 Oct 2013 03:07:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="425861895"
Received: from sorvi.fi.intel.com (HELO [10.237.72.152]) ([10.237.72.152])
	by orsmga002.jf.intel.com with ESMTP; 28 Oct 2013 03:11:15 -0700
Message-ID: <526E3842.1080707@linux.intel.com>
Date: Mon, 28 Oct 2013 12:11:14 +0200
From: Jukka Rissanen <jukka.rissanen@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130625 Thunderbird/17.0.7
MIME-Version: 1.0
To: Amit Tomer <amittomer25@gmail.com>
References: <CABHD4K9zMKu6kxJqNOo9-WfMaENEg_dRg=CuajJDiRDPpEJ8=w@mail.gmail.com>
	<CABHD4K-WnaT3z5hGmbrfwy+=-d2rukK3+89L9m2feu8nHEZDsA@mail.gmail.com>
	<526E24E2.1050006@linux.intel.com>
	<CABHD4K_-LX4eFn=wh886xKYvEDg8mQQmsbhbiBfHdZGZqruHPg@mail.gmail.com>
In-Reply-To: <CABHD4K_-LX4eFn=wh886xKYvEDg8mQQmsbhbiBfHdZGZqruHPg@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to recreate or modify already existing usres in /etc/passwd in Yocto
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
X-List-Received-Date: Mon, 28 Oct 2013 10:11:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 28.10.2013 12:07, Amit Tomer wrote:
> Thanks Jukka for the response
>
> EXTRA_USERS_PARAMS="usermod -s /bin/false foobar;" where did you
> define user(Is  foobar is usre here??).

Yes, foobar is the username in this example. See manual page of usermod 
for details.


-- 
Cheers,
Jukka

