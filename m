Return-Path: <raj.khem@gmail.com>
Received: from mail-qa0-f42.google.com (mail-qa0-f42.google.com
	[209.85.216.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25A26E003DB;
	Sat, 16 Mar 2013 22:01:11 -0700 (PDT)
Received: by mail-qa0-f42.google.com with SMTP id cr7so1084544qab.15
	for <multiple recipients>; Sat, 16 Mar 2013 22:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=XlisPyzfoqJL0mE7Ra+sla+n/4v9F6/Yo6fW1h0oVF0=;
	b=j6/keGv3A3tYtc3eZZMU9o+WhhKUwUec/lrGeLSZEo8Z+vhbCgHqIDmDMkmzMN90/Q
	KclmGemEDQoRASQ5G9JPMuVCJmhYJwQqOFf5YytD+v6MbYeMFreY7O6P5HsupgQ1zyfD
	iNLmgu62SdqYzUSEz9I4yUQ4LJxEgh6eUFnxMlcQndJht+lizX77TooJ+w6eublV/vyR
	Q8BmYShhuPaLrS0BaKG963vF6hcRbYjOM4BP+skDug8lie6GkrO+wkO2ATqk8k6b7FEi
	RFqk8uhz/7V2FMYH40yt6p90hrjNL/3Esfol9ytTjIyQaCz4q7DKHnwFdx/B99FyEwYR
	Wg3Q==
X-Received: by 10.224.186.81 with SMTP id cr17mr13586569qab.99.1363496470548; 
	Sat, 16 Mar 2013 22:01:10 -0700 (PDT)
Received: from [172.23.7.5] (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPS id y15sm13795819qay.12.2013.03.16.22.01.07
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 16 Mar 2013 22:01:09 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <a766d16a1cf4da3c2dd13b8c7e53f89775733187.1363347615.git.insop.song@gmail.com>
Date: Sat, 16 Mar 2013 22:01:07 -0700
Message-Id: <F22887B9-EB54-45EA-AC94-FBABDDE4D698@gmail.com>
References: <insop.song@gmail.com> <cover.1363347615.git.insop.song@gmail.com>
	<a766d16a1cf4da3c2dd13b8c7e53f89775733187.1363347615.git.insop.song@gmail.com>
To: Insop Song <insop.song@gmail.com>
X-Mailer: Apple Mail (2.1503)
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com,
	linux-yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] add scheedtool-dl for testing sched_deadline use jiri's github as a main repo
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
X-List-Received-Date: Sun, 17 Mar 2013 05:01:11 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Mar 15, 2013, at 4:47 AM, Insop Song <insop.song@gmail.com> wrote:

> +SRCREV =3D "${AUTOREV}"

IMO find a good revision and send that one here. you can use AUTOREV =
internally for your
development thats all fine=

