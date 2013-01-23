Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54295E014D5
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2013 18:09:11 -0800 (PST)
Received: from mail-vb0-f72.google.com ([209.85.212.72])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 22 Jan 2013 18:08:02 -0800
Received: by mail-vb0-f72.google.com with SMTP id ft2so11765103vbb.3
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2013 18:09:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-received:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=RKSD7Qqu+0u2svJb15GUY6yc/uGI61lsqeTjmmmzfEc=;
	b=YlARdelrQ0aMKggHOitmJ5o0pKNT+i8ntEPPEzfERjIJKK+otnqvH0uLIA5x5IFE0L
	Ejo749j97nPc+r+htXX+d5ktE4YeaoAROdtqF4wBgyy5RZqsB1s9iSVrcbdpevOWIRP0
	ozP+ddSUhvF5udAawQLjTFeLIOWVVLdGNQ5fvJIASOJ22zzbXfM0ZKRnlshR3SwwoegO
	GWwigetXBXp3vnvMdQRPysEkydRipEdQ3zPGL6f6MbbHymZ1XaBjDZtOxd3UdDQs1fnq
	/BDfkWGSbzHpDORTji901P4iEwIsDwGQwF7Px4HyslvfKOLN1F7lIixU35GjaZWADn1e
	oOSg==
X-Received: by 10.224.58.66 with SMTP id f2mr106772qah.11.1358906949873;
	Tue, 22 Jan 2013 18:09:09 -0800 (PST)
MIME-Version: 1.0
X-Received: by 10.224.58.66 with SMTP id f2mr106760qah.11.1358906949752; Tue,
	22 Jan 2013 18:09:09 -0800 (PST)
Received: by 10.49.128.234 with HTTP; Tue, 22 Jan 2013 18:09:09 -0800 (PST)
Date: Tue, 22 Jan 2013 18:09:09 -0800
Message-ID: <CAPhnLPAm17JHdDE=abqjaEEvZebxMQmuSKWSEj8C+qU-TwPs=w@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQlShheQZbKH2QgVvjgATIMTgdChVzrtl4R2qf7cI35a42GjtsLhFZ6h1nzEUXgYlZenwFGjtYOj+5lz9I77UW63k01T1gZQWLRW28BPKl9xvwIlDfA5xmr6deNRi1qn5BF/2npcdEQnPzufqhHZ29mc2vuNfA==
Cc: McClintock Matthew-B29882 <B29882@freescale.com>
Subject: M2/M3.rc1 availability
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
X-List-Received-Date: Wed, 23 Jan 2013 02:09:11 -0000
Content-Type: text/plain; charset=ISO-8859-1

The weekly build is available at:

http://autobuilder.yoctoproject.org/pub/nightly/20130122-2

This build is built from master HEAD.

Please begin testing against this rc. Please note that tag and branch
names for this milestone will be named as if it was M3. I will be
tagging tonight and branching in the morning once given the all clear
by RP.


-b


-- 
Elizabeth Flanagan
Yocto Project
Build and Release

