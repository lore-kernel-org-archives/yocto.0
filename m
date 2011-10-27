Return-Path: <scott.a.garman@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68A64E013C4
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2011 21:42:52 -0700 (PDT)
Received: from mail-gy0-f180.google.com ([209.85.160.180])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 26 Oct 2011 21:42:51 -0700
Received: by gyf1 with SMTP id 1so4509161gyf.25
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2011 21:42:51 -0700 (PDT)
Received: by 10.68.38.132 with SMTP id g4mr68048286pbk.122.1319690571271;
	Wed, 26 Oct 2011 21:42:51 -0700 (PDT)
Received: from [192.168.1.12] (c-98-246-160-155.hsd1.or.comcast.net.
	[98.246.160.155])
	by mx.google.com with ESMTPS id z3sm11434214pbu.7.2011.10.26.21.42.50
	(version=SSLv3 cipher=OTHER); Wed, 26 Oct 2011 21:42:50 -0700 (PDT)
Message-ID: <4EA8E14E.4040902@intel.com>
Date: Wed, 26 Oct 2011 21:42:54 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <loom.20111027T063445-590@post.gmane.org>
In-Reply-To: <loom.20111027T063445-590@post.gmane.org>
Subject: Re: Yocto Login Username and Password on MPC8315E-RDB
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
X-List-Received-Date: Thu, 27 Oct 2011 04:42:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/26/2011 09:37 PM, Adrian Miller wrote:
> Hi,
>
> After I successfully load the kernel onto my board, I get this:
>
> Yocto (Built by Poky 5.0) 1.0 mpc8315e-rdb ttyS0
>
> mpc8315e-rdb login:
>
>
> This is where it requests a username and password. I am wondering where can I
> find or set the login details.
>
>
> Thank you for your assistance.

Unless you've specifically set it otherwise, the root account has no 
password - just hit Enter.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

