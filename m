Return-Path: <ronaldo@brc2.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA41FE004F1; Fri,  9 Sep 2016 09:01:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.50 listed in list.dnswl.org]
	*  2.4 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.50 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFDCCE0043B
	for <yocto@yoctoproject.org>; Fri,  9 Sep 2016 09:01:28 -0700 (PDT)
Received: by mail-oi0-f50.google.com with SMTP id m11so149217700oif.1
	for <yocto@yoctoproject.org>; Fri, 09 Sep 2016 09:01:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=brc2-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=0AHknEctz2Hp81iE929HqVeUIRhnnXQKeWjUiDMlayg=;
	b=Uqkie2XZQQSF+EqkFgDiB+SOlU0WOT6wvSR0bhzxT0KBNx5r9MSWfw0AF+CV9mM5Un
	wk6DOY2xzKt00Bqu2GuhmA8WEY8kMWARAtx+Dh9kiGhSQyVkRtoL/D0m53TNbI9ZtQQ9
	jwicBiAHKU0au0/eLhxOOuwD5QMa6YuVgby7XHTqUiVXOTSCh8dEFUoG6ABM3EMAO6lR
	4pIfEp+5i+r5YxL9np/4NgrUfthfhsszThN+PqS/j4Vtqu8maQ2jbl9m5HO2n9oarYBi
	m6NXjKb4NkipMffADJxmBb1XQfr0Kru3Bh/eZnHF2upOXiYPlZpIM7FY0IYM2OF2lFar
	hJkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=0AHknEctz2Hp81iE929HqVeUIRhnnXQKeWjUiDMlayg=;
	b=MAoT+NR2JFk7MUytVJbDIMQ6h6d5ZCYB0/YITJXQ2i+re2Q6kvhnnW8Ehl8DqO4e7U
	fN7UWfuQdQ/auADrYHmj95BYAbE0WPR/YxMmlB9zuascqnUQRqLAQQsPJ89Rwm90H3XG
	73KsKXtZC15A5GK4AidNARd6LfS/eul3AlZqZfVAB3BNl1PDVwBRZyeXy7nTEXq43hrG
	+LTtIUWhY0W0g4wx0mSMf9TKToRdtqHsh5P/XGKkseYUdyCU1lvYJkhOv+HRsAQqxM86
	W6UB8IwfqdCwBGwScEMUes2v2/j9oUjIE8BEHT7MQp0GHQlEHC1nByj8lnGdUqYW54NV
	JzQg==
X-Gm-Message-State: AE9vXwNOOMTHOrSxQQAvdUyyeiTEoPpjLJ/BRcvDvFWMhXXatg744ynXhw+4vYpgeToyq7hEdaa9IClYfiClFg==
X-Received: by 10.202.97.2 with SMTP id v2mr6750666oib.157.1473436883035; Fri,
	09 Sep 2016 09:01:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.79.208 with HTTP; Fri, 9 Sep 2016 09:01:22 -0700 (PDT)
From: Ronald Oakes <ronaldo@brc2.com>
Date: Fri, 9 Sep 2016 10:01:22 -0600
Message-ID: <CALRMKQqgbk9Oj42figT=iXqJJfhHRgTjQ9PkUtwTUEzUomyX=w@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Naive Questsions about 3rd Party Kernel Module
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
X-List-Received-Date: Fri, 09 Sep 2016 16:01:31 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I have some, I presume naive, questions about some messages I'm
getting as a result of running (or attempting to run) my
vendor-provided kernel module under qemu.  (I've not tried on the real
hardware yet, I'd like it at least to boot somewhat cleaner on the
emulator before I commit to burning a CD to attempt real hardware even
if at this point that is just the same PC I'm developing on).

1: Upon each boot - or more correctly when I attempt to load my module
as part of an init.d script - I get a couple of messages from my
driver:
  "altadriver: module license 'Proprietary' taints kernel."
followed by:
  "Disabling lock debugging due to kernel taint"

Is there any way to prevent the prosperity license from tainting the
kernel?  As the kernel module is indeed under a proprietary license
(which isn't a problem - my product has a single customer so licensing
is not an issue), I don't want to override the license, but I don't
want it to impact kernel debugging should other issues develop.

2: I'm also getting a number of Unknown symbol messages such as:
  "altadriver: Unknown symbol ___stack_chk_fail  (err 0)"

Am I correct that these indicate that I'm missing a runtime library
dependency?  If so, any suggestions on how to locate what library has
the missing functions?  I do have these modules working on the native
system, so I know that I have the native versions of these libraries
and just need to identify and add them to my target system.

3: Related to the previous question, how important is the name of the
library in /usr/lib at the time that the module (or any other program)
starts?

On the native installer, one of the precompiled libraries gets
installed as symbolic link called /usr/lib/<filename>.so pointing to
where the file is unpacked.  I was unable to successfully get a
symbolic link of this name created on my target yesterday (even though
the same recipe created two other symbolic links in /usr/lib of the
same format), leaving only the actual file (named
/usr/lib/<filename>.so.<version>).  So, I modified my init.d script to
create the symbolic link before calling the program that, I believe,
installs the module (the program is a vendor supplied pre-compiled
binary that is used to create the device for the vendor hardware).
However, if the module is installed before that it is possible that
the symbolic link doesn=E2=80=99t exist but the library file is in /usr/lib
under a different but related name.

Thank You
  Ron Oakes

