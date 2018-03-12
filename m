Return-Path: <outbackdingo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A26EDE00E4D; Mon, 12 Mar 2018 04:54:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.182 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (outbackdingo[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f182.google.com (mail-wr0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F729E00DA4
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2018 04:54:14 -0700 (PDT)
Received: by mail-wr0-f182.google.com with SMTP id n12so4230262wra.2
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2018 04:54:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=rQlUKmkReeUiKRrdfP7ZKdgNgzGfMm+v1Akj92QbpYA=;
	b=FO7Wd02BmYMkAJvMJpuhDzP4VLJBu38xZdyRcF9/5pmOTJIER1lhwoXRQ3MBzABlMR
	AkMFMCEpWI5t89aJVhc4guZpn5Bxs5Ncsh4pKkrpZG0Wt2LB753Zn0E3KW0uLwqPeRUz
	FWjY9Em43fi7ByXmM7rTuooxM/M6TqBi17xVN39gyna6on6LueORayLXSuVw26mmEBu0
	oP9B9vOsBp6fIizBohdEvfWYk64ehXGVhI0Kn9mI/YkUPZlFzOGefrJyyENHffhlzSE5
	H9wPXh7NSQtTT8YYfog9n5k3VebGdtFg0Qsk25GtMxbhmHQt7ZuGOZi1mNCK8yIk6WrK
	g40Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=rQlUKmkReeUiKRrdfP7ZKdgNgzGfMm+v1Akj92QbpYA=;
	b=NZglmIzKQNCXxrDSXNzIHy00obKUWcJhtyZj8olKOmfYmh+6gWC52piVRBLQ+WsGWi
	8J9pgD+X+CsWcDtlcoirPBBn3bO8ui7H09yLOTrWOWukJ+6WE8dx2X7Y+QKCejnQzoJy
	iiR7I8Sr8kHTFBnFEQcuF0gaMBmjoIFKa3ouwJsBazLpXDNC9a0bmDBpayn6zpPwPhTJ
	ZL6nHWYADiY50hoR7BFgFAYq+elLrURHbkHQjpKKS8dVy/nxpwEL0oTHnAY1qVTqr2QJ
	uHmxEg6ui+WATu26Tq9UQ37fMjsMkRUlG9KP6vmb4LPmgIqSUpblzLebXdRpdwXloIWO
	CUow==
X-Gm-Message-State: AElRT7EHH5qsHpEYOHrjQerYAHTwhGBsSYSYUb1eRwWOiSNFGb3CJAkc
	bMLOZaBIXSdBECAJi+PeFPFSzEBhLF9uXDD/HzoVcuov
X-Google-Smtp-Source: AG47ELtQLfLluRlGby2OAKf1Ja4THvbxbaNG+t5cVRhOHb84iveBFO3dB9+xOq3Tpfj6tpHOriJa8HfeE+Gu4+Bs8pA=
X-Received: by 10.223.143.7 with SMTP id p7mr3480674wrb.207.1520855653711;
	Mon, 12 Mar 2018 04:54:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.130.97 with HTTP; Mon, 12 Mar 2018 04:53:33 -0700 (PDT)
From: Outback Dingo <outbackdingo@gmail.com>
Date: Mon, 12 Mar 2018 12:53:33 +0100
Message-ID: <CAKYr3zzndywLdf220YPUoCWLLNsuZgXmN_wOaYhqi=G0T63dMw@mail.gmail.com>
To: "Yocto-mailing-." <yocto@yoctoproject.org>
Subject: Function failed: do_package_qa
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
X-List-Received-Date: Mon, 12 Mar 2018 11:54:15 -0000
Content-Type: text/plain; charset="UTF-8"

ERROR: QA Issue: r4-hub rdepends on dltwrapper-dev [dev-deps]
ERROR: QA Issue: r4-hub rdepends on jsonparser-dev [dev-deps]
ERROR: QA run found fatal errors. Please consider fixing them.
ERROR: Function failed: do_package_qa
ERROR: Logfile of failure stored in: log.do_package_qa.21297

seems ive created a bitbake recipe, which depends on a couple of
libraries to be built, so i created the bitbake for the libs and all
appears to build fine, however seeing the failure above its basically
telling me something isnt being created during the packaging process
for the libs to be properly included in the image, they does exist a
pkgname-dev.ipkg for each of the libs but not a packagename.ipkg ...
any ideas... its kind of holding me up at this point.

