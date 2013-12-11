Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f176.google.com (mail-ve0-f176.google.com
	[209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6ACCE007D9
	for <yocto@yoctoproject.org>; Wed, 11 Dec 2013 11:17:39 -0800 (PST)
Received: by mail-ve0-f176.google.com with SMTP id oz11so6333163veb.35
	for <yocto@yoctoproject.org>; Wed, 11 Dec 2013 11:17:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=/KiL72yst2fOTLUcdG9la4ROYzp6PRTxvAuLhIgUN2M=;
	b=UbSUlMaUmU9USGnRm9sqAL0AhZnomW9pxzjiG8w19SMBeYQpR+qq9ClocnyuCUF7Xx
	bnMWt3gSzd9Z+w6xUIiXZ4S0xYwbcifn/VwgA5Oodhaf7mu7835NlFK/4ksgWJQsThsO
	p+g0Y97YT+TNGUKvj/bVu1CGzeccsHBaarYD76ucetYFxHhEJjPJBIL45We5wbfJmjwI
	Ao3ZqDUynfwGVB9b0BPROpLbRPGTLmXBRFZo7Qq325itCT0OWPzcwPhCpZHwD8psMdBX
	TQItuDaYzAHgSUwGbZKnGSaNSTO+ee9gSMDi+EUDga9uQSz3eOg9SGqF+FNBa0aW7zA9
	jpIw==
X-Gm-Message-State: ALoCoQnqDFEsByEDct4ewveEmoHGgERkUL8PgM0fBhP00ulPxnCWv3hwUG+Fl9oB+hok+ceXzLwg
MIME-Version: 1.0
X-Received: by 10.220.172.129 with SMTP id l1mr341584vcz.75.1386789459395;
	Wed, 11 Dec 2013 11:17:39 -0800 (PST)
Received: by 10.52.161.7 with HTTP; Wed, 11 Dec 2013 11:17:39 -0800 (PST)
Date: Wed, 11 Dec 2013 19:17:39 +0000
Message-ID: <CAPhnLPDzNr2FReUxDyRNtgScm3FMxYN_eUJHWHaYiRy7cpJqVQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: poky-contrib cleanup
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
X-List-Received-Date: Wed, 11 Dec 2013 19:17:40 -0000
Content-Type: text/plain; charset=ISO-8859-1

I've done a first pass at cleaning up the poky-contrib repo, removing
only branches older than January 1st 2013 and depositing them into
poky-contrib-archive. If, for some reason, you are missing a branch
please check there.

This ended up removing ~200 abandoned branches. We have ~600 left.
Later on this week, I'll be running a second cleanup to find branches
older than 6 months old that has no commits that do not exist in
master.

Right now we're at around ~600 branches. Things have improved
somewhat, but, and I know I'm sounding like a broken record here, if
you have old branches you no longer need, please, remove them.

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

