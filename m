Return-Path: <jukka.rissanen@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3018E011B9
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 01:48:37 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 28 Oct 2013 01:48:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,584,1378882800"; d="scan'208";a="423842220"
Received: from sorvi.fi.intel.com (HELO [10.237.72.152]) ([10.237.72.152])
	by fmsmga002.fm.intel.com with ESMTP; 28 Oct 2013 01:48:35 -0700
Message-ID: <526E24E2.1050006@linux.intel.com>
Date: Mon, 28 Oct 2013 10:48:34 +0200
From: Jukka Rissanen <jukka.rissanen@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130625 Thunderbird/17.0.7
MIME-Version: 1.0
To: Amit Tomer <amittomer25@gmail.com>
References: <CABHD4K9zMKu6kxJqNOo9-WfMaENEg_dRg=CuajJDiRDPpEJ8=w@mail.gmail.com>
	<CABHD4K-WnaT3z5hGmbrfwy+=-d2rukK3+89L9m2feu8nHEZDsA@mail.gmail.com>
In-Reply-To: <CABHD4K-WnaT3z5hGmbrfwy+=-d2rukK3+89L9m2feu8nHEZDsA@mail.gmail.com>
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
X-List-Received-Date: Mon, 28 Oct 2013 08:48:39 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 26.10.2013 20:15, Amit Tomer wrote:
> Running out of ideas
>
> Can I get some fresh ideas for this issue
>

I am using this in my distro conf file 
(http://git.yoctoproject.org/cgit/cgit.cgi/meta-eca/tree/meta-eca/conf/distro/eca.conf) 
to change the root default password

INHERIT += "extrausers"
EXTRA_USERS_PARAMS = "usermod -p 'enrcrypted-password' root;"

So if you want to change the shell of a user, the command could look 
something like EXTRA_USERS_PARAMS="usermod -s /bin/false foobar;"

-- 
Cheers,
Jukka

