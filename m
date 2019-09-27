Return-Path: <cavallini.koan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B8A2E00867; Fri, 27 Sep 2019 01:10:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (cavallini.koan[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.67 listed in list.dnswl.org]
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
	[209.85.166.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF6A6E00805
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2019 01:10:57 -0700 (PDT)
Received: by mail-io1-f67.google.com with SMTP id c25so13957628iot.12
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2019 01:10:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=dpRE5lNQpJY7zEZbIxops403Du5k05mwOfOqNAzn//g=;
	b=XZEffmwG77um+SH8IMJsFL1nmbJAKZsiCSZX8ZMolWSEIR41tnMSECEIGqR3kUDJVY
	PeorWZBYG81XrAJtJRXhoeFKGR7LCb+WqZPIodECe8XfYtEJ8FHWfZscnuCMWQDxxrIF
	dB9ytcvNgmDuTMCLCGgVi566/kYeKaHVwOOIjid1xBQX6FD5IKviTpNeG0Zj3wG6g3Y+
	jzCzdW5b4rBlhajxKvKucfJh34FqDL+bWGdcLRgd/CIoQ/k2iTrMW0aCKDeQPTO2R91Q
	vD21b812RtJpR4as3dz43XN/1sKiqzh3+ueFgZrvQOExoWTS30WwhTUD/OHBlcTHtBoB
	zvaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=dpRE5lNQpJY7zEZbIxops403Du5k05mwOfOqNAzn//g=;
	b=uSY4FozeN5XKnoCiDo/vTpiox4TT3HLq1UV5cclnmYx8fDSUZK5OvuYw6zhab9YLdy
	HiQlEmGn5dVn2TKED2892F/e2P/XTccqDP/AuwNrmfC5U937O4nrD5psPCzUT4QZ0NoH
	BGysNBNeQfSDKrypS2aOXVKm/6TeYbViqheZ2/jmRyeSCfoS9tiX4p9VOrmyzCvIo9+Z
	IJJeAaIPJzWPIiBfl4yXaj93EdT2aY4DTzbIf/bt961+ogXjQXpW2NExIgxN5InaMEKU
	DyvvWSVufhhTVaNrkizDC1m7ZTMvzCYKXwihQQyh4Fsxvp1EGSxJeHoCxByRamr11mYA
	pTdg==
X-Gm-Message-State: APjAAAW6/j7Tdv14f0w7ssU47SjrMMidIU4T2Ol+fUxtKh8NM2ImF7/E
	qezlmaDy5/Xwv/taaZhDMq3/lWx3aka8z/Gkb8BXTaa+
X-Google-Smtp-Source: APXvYqz1Sg94w0cthjbm4HzSm/Z19C2NtwftYvNayQZAnbeCyh0ckSqo+8ebXb69tSdVl2Vf3QCneNM71GsvpU2vz5w=
X-Received: by 2002:a6b:e50b:: with SMTP id y11mr1508700ioc.161.1569571857283; 
	Fri, 27 Sep 2019 01:10:57 -0700 (PDT)
MIME-Version: 1.0
From: Marco <cavallini.koan@gmail.com>
Date: Fri, 27 Sep 2019 10:10:46 +0200
Message-ID: <CAFQ+DihuY1uftaZ8Wq5vfajO1rt2ucmYBi=uxV0pY_ui8_e8Mw@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Yocto Project new features survey
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
X-List-Received-Date: Fri, 27 Sep 2019 08:10:58 -0000
Content-Type: text/plain; charset="UTF-8"

Hello,
Yocto Project/Openembedded can nowadays be considered the 'de facto'
standard among the automated generation systems of embedded linux
distributions.
Experienced users appreciate the features offered by Yocto Project and
its complete customization that allows to adapt it to any specific
requirement.
However, from the beginner's point of view, the situation is a bit
more complicated due to the Yocto Project's particularly steep
learning curve.
The tools that can support the development with Yocto Project are
Toaster, that allow the configuration of the builds through a web
interface, and the 'extended SDK' (eSDK), based on Devtool which
allows the system to be tuned or extended without editing
configuration files.
Probably anyone who has tried to use Yocto Project will certainly have
had the desire at least once to have a feature not available.

For this reason it might be interesting to discuss it together.
- What aspects of Yocto Project you consider not useful or misleading?
- What functionality would you like to have in Yocto Project?
- What do you think is missing?

Take part to the survey at this link: http://bit.ly/2kXvdsd
and let's continue this discussion at OEDAM and Yocto Project Summit 2019

P.S. if you think that can make sense to cross post this to OE mailing
lists, feel free to share.
If you think this is off-topic or doesn0t comply to any YP(OE ML
polici, please ignore it and apologize me.
--
Marco

