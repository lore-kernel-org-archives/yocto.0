Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 55F92E006DC
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 02:30:45 -0800 (PST)
Received: by mail-vb0-f48.google.com with SMTP id fc21so81009vbb.7
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 02:30:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=zjf0dtezYQxgvK68eOfBlxVZIdTQdEGgeES1j9ogCLI=;
	b=GBD47ECW+EcyzuO8M6R3VAsMJWVLgztoxsl/Ioe6/aWA/QhaEco7AjT7xj0rLpszx7
	kUE/RFYZwIuU2GtPo6w7CPAzBk4x0MO8mo6E4MYko6XLQ/6asig7xdc1UismASSU6Qdd
	/qNaMaswUmd/DIhxg4t3J1QhnJH6JEf7jczb8v3XY+Ft8dZxwTJ+20R6IUM/dFUCFTdt
	gmhECpCNnkfjmfTTSSqwQu4V4nheyjDxLPb9De4tpzNOGMfH9Qr/ttDNbKo7UxAv4oit
	JgD6U/FSnZEZdwle0dQbyKhc3Q+WM2kTskboec2GP4zjR5tKhEPKJJRXvwuIWR0bfj18
	H8QQ==
X-Received: by 10.58.18.201 with SMTP id y9mr2405966ved.36.1360665044376; Tue,
	12 Feb 2013 02:30:44 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.95.131 with HTTP; Tue, 12 Feb 2013 02:30:24 -0800 (PST)
In-Reply-To: <511A1617.7010403@linux.intel.com>
References: <511A0810.4080305@linux.intel.com>
	<F3FDA2B8A266452C8CB34AFC4B256702@intel.com>
	<511A1617.7010403@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 12 Feb 2013 10:30:24 +0000
Message-ID: <CAJTo0LYcFw_yg7_v24+VQTtHNiXzh6Uq_WEVzwfVoFzCXxNd2g@mail.gmail.com>
To: Jukka Rissanen <jukka.rissanen@linux.intel.com>
X-Gm-Message-State: ALoCoQmHjStr4pMueDiFN+ZJTv5G++bkr69tqhlmGY/wKckjgewrxmah3PmGbJqNCEQaLJng43ZG
Cc: yocto@yoctoproject.org
Subject: Re: Initramfs and systemd problems
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
X-List-Received-Date: Tue, 12 Feb 2013 10:30:45 -0000
Content-Type: text/plain; charset=UTF-8

On 12 February 2013 10:14, Jukka Rissanen
<jukka.rissanen@linux.intel.com> wrote:
> At least the systemd version in initramfs is missing
>
> /etc/udev/rules.d/automount.rules
> /etc/udev/scripts/mount.sh
>
> that seem to be related to this issue.

Yeah, that would do it.  :)  That saved thirty minutes of debugging, thanks.

Ross

