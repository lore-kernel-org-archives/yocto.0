Return-Path: <ross.burton@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 717F2E01447
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2012 04:15:22 -0700 (PDT)
Received: from mail-oa0-f48.google.com ([209.85.219.48])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 24 Sep 2012 04:15:22 -0700
Received: by oagh2 with SMTP id h2so708289oag.35
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2012 04:15:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=nMq3hYOMR4voTO/J25nLTJQIbA75u7n+TvYZi7tCjUU=;
	b=VQQR8rv1pMTTvpRHTxgodBgFyECjlEIgWWZH1g61kRmRiULUQ0uyjP+ZBVwkA9blvJ
	dwBBIGZk4FUOHf3ATyrxucyEJziE7PJG3uUBEEsNUKXO/64cvn5iDUDBFdNKk66/j7ax
	cJdid9hqbf5tuXlhpgXmdy4+TfDTVg9kZLZpjzGG/Kt0n1S0F/QoF8a7GQXXjZjOaSrH
	m/0f9hNDAtROmpYZJa/K38MtoWe/bkK3E1BtxswoNUBnfpbF08AgNMrgJqxEiOEZ4aQL
	EIUXBMbt9OgpsAmPS0HYC7LxDKCcOWrj5yVE4qnfoEEdpwZtVRoTIXSYxB49U75lpDEf
	zfvQ==
Received: by 10.182.179.100 with SMTP id df4mr9619306obc.59.1348485321004;
	Mon, 24 Sep 2012 04:15:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.79.105 with HTTP; Mon, 24 Sep 2012 04:15:00 -0700 (PDT)
In-Reply-To: <1716058.TZM8ukYCTx@helios>
References: <1716058.TZM8ukYCTx@helios>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 24 Sep 2012 12:15:00 +0100
Message-ID: <CAJTo0LbBVgqMwoQi-M3OpwhYvn2eeUNDmteg6iS6fSwWq3HyFw@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Gm-Message-State: ALoCoQkPe57y9+mYicp30347t48EIgZ/CBGN8KIc6TsAhjoKvz0J614DmQh5xjxWyakRiiJ8RCBN
Cc: yocto@yoctoproject.org
Subject: Re: Supported host distro updates
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
X-List-Received-Date: Mon, 24 Sep 2012 11:15:22 -0000
Content-Type: text/plain; charset=UTF-8

On 24 September 2012 12:10, Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
>             Debian GNU/Linux 6.0.4 (squeeze) \n \

The latest stable is 6.0.5, so someone keep up to date with Debian
Stable will get the warning (it's just a roll-up release of security
and critical fixes).

Ross

