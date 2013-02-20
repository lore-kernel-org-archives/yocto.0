Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f179.google.com (mail-vc0-f179.google.com
	[209.85.220.179]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id E05F4E0144D
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2013 03:20:33 -0800 (PST)
Received: by mail-vc0-f179.google.com with SMTP id gb23so5016607vcb.10
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2013 03:20:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=ett3hBSz+lePpySqWqniP4+p9uqCxeNiQURGam9O3PQ=;
	b=JjG2xUTtFvWO7bbpczMkcO7/k6wn+gbdySltuwN+Oj1P2uIle89+mkJ8xx9JNAnkJd
	2ufw+WMp6iBhSruEQy5xZCFDZ6Ibyc+swa02qjNFZcUthK8qRRY43OBg9Zab9odyaN/F
	8e4j+ywHe34j61Qi6jottMIsfuXiWxupIQMliVlWyEo4/e+Gnwlo048LF2k8RXP2KxG+
	Y/R4bxopRXhDW9sY7E6V9ctwYLmtK6g4NpsBBXbYWtCaa0rpKKG1rc5IArlobNy7DQrR
	USEnRZD7bF7bRUrkoJfaTUrENH9KbPm6OuxqSBsAHrtoWVKVdwc4hZ66JdaWHhL7/Pe4
	YVnQ==
X-Received: by 10.52.28.82 with SMTP id z18mr21519238vdg.33.1361359232874;
	Wed, 20 Feb 2013 03:20:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.85.36 with HTTP; Wed, 20 Feb 2013 03:20:12 -0800 (PST)
In-Reply-To: <1361358910-32135-1-git-send-email-jukka.rissanen@linux.intel.com>
References: <1361358910-32135-1-git-send-email-jukka.rissanen@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 20 Feb 2013 11:20:12 +0000
Message-ID: <CAJTo0LZKfkHOFfZRh7fcycO8sNuD_uzrQEQ_jL6ioUtpSFWOJw@mail.gmail.com>
To: Jukka Rissanen <jukka.rissanen@linux.intel.com>
X-Gm-Message-State: ALoCoQlsUD4dHcZjO1QzrmMTHCzrhpgf3SG8KI1l1TXdulPK9wU5kTU2oceZDO5VdLupzfGnYst1
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] meta: Fix error print
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
X-List-Received-Date: Wed, 20 Feb 2013 11:20:34 -0000
Content-Type: text/plain; charset=UTF-8

On 20 February 2013 11:15, Jukka Rissanen
<jukka.rissanen@linux.intel.com> wrote:
> -            bb.error('%s does not appear in package list, please add it', " " + pkg_systemd)
> +            bb.error('%s does not appear in package list, please add it' % pkg_systemd)

Whoops.  Acked-by: Ross Burton <ross.burton@intel.com>

Ross

