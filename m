Return-Path: <ross.burton@intel.com>
Received: from mail-qc0-f180.google.com (mail-qc0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCBC4E00883
	for <yocto@yoctoproject.org>; Mon,  3 Mar 2014 12:20:59 -0800 (PST)
Received: by mail-qc0-f180.google.com with SMTP id x3so2113086qcv.39
	for <yocto@yoctoproject.org>; Mon, 03 Mar 2014 12:20:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=lAHB8mPrv9kEY7arH4K5JCQ1nbXIximm7y8T6/UFQ8A=;
	b=VV81tGuYDBRBrIz1wVpnQnWs5dKXNh83luLcxjDh+5hqs8BazdWZzH/TsjedJSEnbi
	5HnGhHhc4fWFKaxhdUo8/1LU/LIdIrnhym6r/GvllijlsGp3neumqY+9SWK20t1JJglU
	+WDCz52QIcISDyTk3FpTcCiLwOJOIGHG9YvIYo3/ozh6AWX8lACfpyGH6qY664G97Ffg
	7SeomfsNz6LH9RhIci3Og+40qIrFrIjarRcxEoA3aAjn2Jbuh4zj5LZffr6Do9eJ23AV
	xhAmKfNMUWtg5f/Nb0/LEgKVaSuxlMGC2hkMobwf3JZ/Nt049PaUTaO4u97DsmSh7IQI
	CqXQ==
X-Gm-Message-State: ALoCoQl3NYCTfERmjWbXH35vUr8nSr4aKgB5y8Mv8DWSsSpe/AbUFJBs8EVl1v5uZE0aIbkoeMv+
X-Received: by 10.224.138.10 with SMTP id y10mr26308418qat.17.1393878057302;
	Mon, 03 Mar 2014 12:20:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.48.79 with HTTP; Mon, 3 Mar 2014 12:20:36 -0800 (PST)
In-Reply-To: <CAA7h+EpJen9yBJZgePZeE4ZbDSEzYV91PxOMfrU8WsSr_P1vWQ@mail.gmail.com>
References: <CAA7h+EpJen9yBJZgePZeE4ZbDSEzYV91PxOMfrU8WsSr_P1vWQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 3 Mar 2014 20:20:36 +0000
Message-ID: <CAJTo0LZ1ywAVC4tQ82Y_WV8JDQ_FGqwqAc6=7tWv06=Z+XgkzQ@mail.gmail.com>
To: Rick Bianchi <bianchirickkutta@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Preferred Distro for Building
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
X-List-Received-Date: Mon, 03 Mar 2014 20:21:02 -0000
Content-Type: text/plain; charset=UTF-8

On 3 March 2014 20:05, Rick Bianchi <bianchirickkutta@gmail.com> wrote:
> Which linux distro is the preferred build environment? Is it better to use
> Debian instead of Ubuntu?

Use whatever you prefer.  The tested distribution list can be seen in git:

http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-yocto/conf/distro/poky.conf#n74

Ross

