Return-Path: <ross.burton@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EB85E00294
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2012 09:56:23 -0800 (PST)
Received: from mail-gg0-f200.google.com ([209.85.161.200])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 17 Dec 2012 09:56:22 -0800
Received: by mail-gg0-f200.google.com with SMTP id k5so8416033ggd.11
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2012 09:56:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=UBLeJIxGkOUqh2mDyNW2B2R6TDIDQv8HfSmt1+PAo7g=;
	b=pfQr/sha7simmwz23FEmjXU4RARjW6tg6xUFq4tzsVosGB8ztrv90ZdePCVohX3ssz
	fhlfEvly8BLOwQxLhQxZixrhpnJ+LEx6pRFPbiVZx70NeiD1JXxRPZKj2NrTEBpQaVZ8
	BQxLZcgO9ZR+DCoUxprlfjg/CnmhPgERbs+qu1cGI5y6MKKRsu8CECj9sBkfRICqlLqE
	YpLQxW5qhlHE6Yp10au3QGm7kwaIP+fSOsDT83Cf5IQHySiGOu8piAzkG8AGquI3s2MB
	YVsqvpxi3fCgE2T+/R08Gnph9BZlK6K7cMu+nj2dUs1BiJDJ8VW4INHkbvwyNCnIxhRW
	3/VA==
Received: by 10.58.221.130 with SMTP id qe2mr25688374vec.14.1355766978088;
	Mon, 17 Dec 2012 09:56:18 -0800 (PST)
Received: by 10.58.221.130 with SMTP id qe2mr25688365vec.14.1355766977947;
	Mon, 17 Dec 2012 09:56:17 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.178.244 with HTTP; Mon, 17 Dec 2012 09:55:57 -0800 (PST)
In-Reply-To: <50CF5A47.4040509@gmail.com>
References: <50CF5A47.4040509@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 17 Dec 2012 17:55:57 +0000
Message-ID: <CAJTo0LbWOq7J4McwEK0tC8wW---CJ9ToKz4zfeuFE3p_viXBiQ@mail.gmail.com>
To: Jim Abernathy <jfabernathy@gmail.com>
X-Gm-Message-State: ALoCoQk0mAfKDA25kHeGvjIrSi7/cd6H5YULE478p4EvZYl9QI9c3s2/L/d6csZVlbSzy7AUTKtqpz/IoHRzFh6DLUsRl0hqnspa4u1LcIjsw9t560l34RufVQ87dz5/rXOhHlpTJAuZgSIwaP7WeKW3w+hH72jrDw==
Cc: yocto@yoctoproject.org
Subject: Re: Recipe differences between Danny and Master
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
X-List-Received-Date: Mon, 17 Dec 2012 17:56:23 -0000
Content-Type: text/plain; charset=UTF-8

On 17 December 2012 17:45, Jim Abernathy <jfabernathy@gmail.com> wrote:
> SRC_URI = "file://myaudios-1.0/myaudios-1.0.tar.gz"

You don't need to specify the myaudios-1.0 section, that's implicit in
the search paths along with the unversioned ${BPN} and files/.
SRC_URI="file://myaudios-1.0.tar.gz" will find it and also work with
every previous Yocto release.

This must have worked previously because the search path logic was
rather overcomplicated and unpredictable.  It was recently cleaned up
but obviously you were unknowingly relying on undocumented behaviour.

Ross

