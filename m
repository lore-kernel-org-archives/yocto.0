Return-Path: <ranshalit@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D31EE00B01; Tue, 28 Mar 2017 02:10:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ranshalit[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.173 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f173.google.com (mail-wr0-f173.google.com
	[209.85.128.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0042E00A51
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 02:09:59 -0700 (PDT)
Received: by mail-wr0-f173.google.com with SMTP id w11so77934522wrc.3
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 02:09:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=lXKo33qmBt7lUFcBDyD+v8UGPCDDILzjMne1KB90KW0=;
	b=nZz8VJzddIQ5wc+qHVeHn25tZ2bhPjmNpKgI4crbH3Cmqt3+hnclFWZ5APg8rwr5D1
	PqWOMXAf5WVUvdABGcebO8FZjjrgLMSzikmdP7C2tY5OjQTUyFbdui5cFyG8qT/KD6mw
	Jk0c1VK34q0nc/8rDhnBCY2n9HQB0v8/SSADGyHcQ8IFc92f7COlufOleiGJ7XXOuYhJ
	/Uf2uNzUcGbvcP6iXZisJrZQ8ABBGzt2v915q8bH98Cm4TKSDKxIt5aL/akP7NUmARS5
	+7QFcSQkKkQwlq0pT2lax77vFYcPgiLg03lx3JtRpBrsNtzO38c4chV+SWvsenENPch6
	VWfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=lXKo33qmBt7lUFcBDyD+v8UGPCDDILzjMne1KB90KW0=;
	b=DkbS32h/91M4+yUZApYHtu5CmJwlQQFM5Ic2kTDT1gQZf6PVIsvkiz17NYj2xGjjeg
	F4ykof8qFdqU8pUQC0uDRWlMF4Ap+yKbMi0h0FGtTgrhHBE6r7AY2DCn8E2+2NMNSUEf
	iWoMj1KoGOxdfdItVIDoeansEMcWkPKEqkMPCJBsv/3GqBPKY+T8gqdY1JF0is5CWTs1
	m9cRMMbOJJ72Eg0G3Ki+nz0EhJKk+oste9aeE60xpEQE7KeUo8gt/37m5h5orKJQq4NY
	nnfn6o/soeNDLnjLYjLJngFZEmoL2kkkZsSFi3T24538f1tuxM85ILISDDlDC0oBOwMw
	fJrA==
X-Gm-Message-State: AFeK/H1NTDOKLswpigIv8oS00oypxVQlafgDbsPcnu+TXmRGX5zvn1qOadmWAsfCusxRyUzHwwsAEUgqDKJdeg==
X-Received: by 10.28.130.81 with SMTP id e78mr13745681wmd.47.1490692197598;
	Tue, 28 Mar 2017 02:09:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.163.6 with HTTP; Tue, 28 Mar 2017 02:09:57 -0700 (PDT)
From: Ran Shalit <ranshalit@gmail.com>
Date: Tue, 28 Mar 2017 12:09:57 +0300
Message-ID: <CAJ2oMh+Dj3SZ5Tf8aF3VRhpsboah-4qevGC3v+5q=vpOdQ2V0g@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: package managers
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
X-List-Received-Date: Tue, 28 Mar 2017 09:10:02 -0000
Content-Type: text/plain; charset=UTF-8

Hello,

Is it possible to configure more than one package manager in yocto ?
Does it mean it will create install package for both ?

Thank you,
Ran

