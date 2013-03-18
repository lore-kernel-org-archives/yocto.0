Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-qa0-f51.google.com (mail-qa0-f51.google.com
	[209.85.216.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F9C7E006AD
	for <yocto@yoctoproject.org>; Sun, 17 Mar 2013 22:24:49 -0700 (PDT)
Received: by mail-qa0-f51.google.com with SMTP id cr7so1428096qab.17
	for <yocto@yoctoproject.org>; Sun, 17 Mar 2013 22:24:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type:x-gm-message-state;
	bh=TO73LthgosIcptqIL+YOMmSJpJFxYDSoRRqKy1+qJhE=;
	b=T4bpRbFrhmXsAcFRAVkqEpb8P3wk1uQQPfBANoIJjivjX3Ka4dAH7hEXvLyoMSwm3d
	wiEWl/lawzx4+PyFDydhQ/QEA56kg+3rc96y6S/KsX3bF984S9R795oD0dIHTuocLSo3
	NQBwUWtNCsNnridcsT9hX/LHMkABLQvZmNp/leW/cuUnRz/9wSBsryI0a27NnNtb88R4
	iFM56NzvHQ6EOa1DGp+M2Pd3w4aYaChsy1nmslWDgaQC9PpfgEN8SlwSR2EDt6U+VEf3
	ZrOyKOsFE2floIXZaadMW3Qo6w5KmPJSv89945k0mQQGoWEOFwXyPRDnAdp7CKUWgNch
	QaQg==
MIME-Version: 1.0
X-Received: by 10.49.50.197 with SMTP id e5mr20228827qeo.42.1363584289215;
	Sun, 17 Mar 2013 22:24:49 -0700 (PDT)
Received: by 10.49.81.226 with HTTP; Sun, 17 Mar 2013 22:24:49 -0700 (PDT)
Date: Sun, 17 Mar 2013 22:24:49 -0700
Message-ID: <CAPhnLPDD_TS1QC4tuhLrX2Q7OpMf-5oFQzyJcdVTZWKxiJNZ7A@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQmwAkfydpTLx2QNVsuQSc3atvIrGRzD20iSoZ69ZolbEYjv8HvpQVwUT2ggrtXZPwHaAWFN
Subject: New autobuilder.yoctoproject.org up and running
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
X-List-Received-Date: Mon, 18 Mar 2013 05:24:50 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

I'm pleased to announce that the migration to the new
yocto-autobuilder code base is almost complete. A few minor issues
have been identified and are either fixed and waiting for the current
build to complete (nightly-intel-gpl) or about to be fixed
(nightly-x32). The new autobuilder is located at:

http://autobuilder.yoctoproject.org:8011

A few things.

The old autobuilder still exists. If for some reason we need it, we do
have a rollback plan in place. I am leaving up the master page in
order to support any bugzilla entries that have links to the
autobuilder. This will not stay up forever. I'm currently thinking of
a longer term solution where the autobuilder can provide something
like a pastebin of the errors, in order provide long term link
management.

Testing autobuilder runs is extraordinarily time consuming.
Considering the support matrix (danny, denzil and current), time it
takes to build each, plus the new support for mix and match layering,
testing "everything" is impossible. If you see any issue, please, let
me know immediately. This migration is occurring fairly late in the
release cycle and I want to identify any issues within the next week
or so, especially any missing/misplaced artifacts.

I have been noticing some failed sanity issues in my test runs. I do
not believe that this is caused by the new autobuilder code. In fact,
I spent some time looking at it and discussing it with RP and we both
feel that it is not caused by the new code. I've reduced the number of
concurrent builds on the slaves to two for the time being to verify
that the ab wasn't causing sanity failures. I'll try later in the week
to bump those back up to 3 builds per slave.

Things should run faster on the new autobuilder, especially once I
bump things back up to 3 builds per slave. I won't be sure how fast
for about a week or so, in order to get a good sample of data. If I
had to guess, I know of one change on nightly that should save close
to an hour.

Also, you'll notice that meta-intel is no longer on the main
autobuilder. We are moving it to its own master. Its outage will
extend until Monday evening Pacific time.  We did this for a few
reasons, mainly to reduce load on the autobuilder master. I will
announce the finalized url tomorrow.

The code base for the new autobuilder currently lives in:

http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/log/?h=eflanagan/yocto-autobuilder-refactor

Once this migration is complete and had some shake out time, we'll be
moving it into master.

Thanks,
-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

