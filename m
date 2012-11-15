Return-Path: <scott.a.garman@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 233EBE003DA
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2012 10:25:17 -0800 (PST)
Received: from mail-pa0-f72.google.com ([209.85.220.72])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 15 Nov 2012 10:25:07 -0800
Received: by mail-pa0-f72.google.com with SMTP id fb11so4501105pad.11
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2012 10:25:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=uS7rMLbIKA73ZKUiVfEESwH0bxPZRu7KODlkbW7NoO0=;
	b=PHC2If/jPhAc352nBUXnZJjHwZBSUl6p/1PbcegPWyo3YDbEl6t/It8ByRQxIjG8Q+
	joCoLIfrVg8lxi4ianw9boHWTxT+MgHi7rphOn3T6vWSs+Cf9jDfqQFnSKGfwcGhySY8
	3O4+4WBs9kOUvufZ6pC1BQgyf7/rqZ7Kad7jpeSCo1FjIZL+EPrmJp5MW3vsCcdb8CLo
	59MQ7WA60GAqGxk7V+JvnhOotnU16OuviYt2CFd4eOC3qKty5wZctA9HgLVl07vuUryQ
	qGUMH26zWSRNUFjXuzqui6mEkAUipBo18ii20Lo95u++rHFJ51AV4j/latXPRaRx4RGJ
	KTgw==
Received: by 10.68.229.194 with SMTP id ss2mr7467569pbc.17.1353003902818;
	Thu, 15 Nov 2012 10:25:02 -0800 (PST)
Received: by 10.68.229.194 with SMTP id ss2mr7467546pbc.17.1353003902685;
	Thu, 15 Nov 2012 10:25:02 -0800 (PST)
Received: from [127.0.0.1] (masterfoo.zenlinux.com. [207.192.74.254])
	by mx.google.com with ESMTPS id ty4sm9858395pbc.57.2012.11.15.10.25.00
	(version=SSLv3 cipher=OTHER); Thu, 15 Nov 2012 10:25:01 -0800 (PST)
Message-ID: <50A53378.6030602@intel.com>
Date: Thu, 15 Nov 2012 10:24:56 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121028 Thunderbird/16.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <50A4DA8C.6020507@axis.com>
In-Reply-To: <50A4DA8C.6020507@axis.com>
X-Gm-Message-State: ALoCoQk+Bq1GZEDBRrOSPmax9WCBljKDXv4NXPoVJpOAZA0LHZoNpOeB2OlcjrrSKxp9+PX11Ln+MwecDORgg48QZE357fhBo/ellumbMlWaHwcb+H1NOGtr6iMmfbKaYZL0s7w/FcK9BzMRhHrVpq1UkDDmQs8s/A==
Subject: Re: Virtual machine images from yocto developer day
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
X-List-Received-Date: Thu, 15 Nov 2012 18:25:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/15/2012 04:05 AM, Fredrik Hugosson wrote:
> Hi!
>
> Thanks for a great developer day in Barcelona!
>
> Is it possible to get the vdi-files or appliances (which ever it was)
> used for the labs? It would save some valuable time when doing labs with
> beginners here at work.
>
> Best regards
> /Fredrik Hugosson

Which labs? For the intro labs, the computers were running Linux 
natively. I took some notes on how I set up those machines I can send 
you off-list if you'd like - let me know.

Things *should* just work if you're using a recent release of Ubuntu, 
Fedora, or OpenSUSE and follow the setup instructions in our Quick Start 
Guide:

https://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-project-qs.html

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

