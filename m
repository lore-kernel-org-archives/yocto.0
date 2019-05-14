Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38A7CE00B43; Tue, 14 May 2019 10:33:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f175.google.com (mail-it1-f175.google.com
	[209.85.166.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CC78E009A0
	for <yocto@yoctoproject.org>; Tue, 14 May 2019 10:33:17 -0700 (PDT)
Received: by mail-it1-f175.google.com with SMTP id g71so89725ita.5
	for <yocto@yoctoproject.org>; Tue, 14 May 2019 10:33:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:subject:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=WVaqM99oa7Vy2mik9Af4fLoDeYV++eL45XvaBBpY4IQ=;
	b=dxXZG/lRbfQkFm6YXoXZsCOgnKPCbevhr4J1DQNUTlIDUKchyTQvKPxmyxXsQ6xQN9
	h+9uB3lTpgwgs/FaXRJf7190AJjjljXHNmFhGz1HXTl6IkR1dOdHmpN4DvSTdKRnBQ3b
	gzA2oSSO31JLB5hKB01RHzdk78hdi0uuOlIoXeTdjCS8Xk7QsH1m0jZFLtN/7M1PIRMc
	GlcNbhcvo4mOYBE2As9anhpJ+e9Vxou8xLCzESz2iMP3/vmUQ4vPi/VizkbMTVOSVMLE
	aw0Al90dcoqgNAQSHGJd+fplGYRBzoX/QFBAA7zy43MghC7BzA+wS15E8Yoy3bbq54ua
	hMLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:subject:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=WVaqM99oa7Vy2mik9Af4fLoDeYV++eL45XvaBBpY4IQ=;
	b=quPAANQ38POas+/aY1RnGpbkx5F4PB2BUmMk369JmFcszW+10E07djSLtZcCaGbWUk
	LB+8+aH/04LkwUE/B/O43FVWSQQTzoTxPxGg1IvMpAlte9DJXijpaVhlBKusONUzd6gZ
	8rxGmBuwE1sMxRVp2cihsiXqlEmA6G/Y5zjsudZVNrMy2qjMN36tpmMbo5+aUS0Yi6Ob
	UuM5eYfiX+eTX4ZBc+gjOiHlK6p95WYrEGrXx5NCguyODCc2egc7IQLwiTtDYhLXsV6J
	TpoWEajCPv1h8hWacNC9l6CHUyToq6Wu4ofRorK5OFkYcnnGUuXhRMSFfeblG8UuTw/w
	vucA==
X-Gm-Message-State: APjAAAUDg6Qd0SOjFc2O57QsM1v0U6TvrxjgTo+Yu0jt+QOHVQrdDelE
	QLsMJlHdyb66UgtoUPLmA8o=
X-Google-Smtp-Source: APXvYqx0tTQx5OwBS/F4RP56JMIaWEhh5sLaDyp1dWji3k0Wq2Tc4LPpi+V0bqm8nBeEYE1JIyGw5g==
X-Received: by 2002:a24:e0ce:: with SMTP id c197mr4717905ith.31.1557855196904; 
	Tue, 14 May 2019 10:33:16 -0700 (PDT)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.googlemail.com with ESMTPSA id
	l80sm1393681ita.15.2019.05.14.10.33.15
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Tue, 14 May 2019 10:33:16 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Message-ID: <89a08389eb630f124aa3b128ba468a23a38f60d5.camel@gmail.com>
To: "Bach, Pascal" <pascal.bach@siemens.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Tue, 14 May 2019 12:33:15 -0500
In-Reply-To: <355BE46A91031048906B695426A8D8E62EA61AA8@DENBGAT9EL2MSX.ww902.siemens.net>
References: <355BE46A91031048906B695426A8D8E62EA61AA8@DENBGAT9EL2MSX.ww902.siemens.net>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
Cc: "Freihofer, Adrian" <adrian.freihofer@siemens.com>
Subject: Re: Issue with useradd-staticids and sstate-cache
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
X-List-Received-Date: Tue, 14 May 2019 17:33:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2019-05-14 at 15:25 +0000, Bach, Pascal wrote:
> Hello
> 
> We ran into an issue when trying to switch to useradd-staticids that
> looks like it could be a bug with sstate. We are running thud.
> 
> The issue appeared on our CI builds which have a shared sstate-cache
> (SSTATE_DIR) but otherwise start with a clean build (no tmp
> directory).
> 
> We tried to add static user ids by setting USERADDEXTENSION =
> "useradd-staticids" and providing the required passwd and group
> files.
> Locally everything worked fine. 
> 
> But the CI servers produced the following error:
> 
> DEBUG: Executing shell function useradd_sysroot
> /build/tmp/work/corei7-64-ccp-linux/dbus/1.12.10-r0/recipe-sysroot-
> native/usr/sbin/useradd
> Running groupadd commands...
> NOTE: dbus: Performing groupadd with [--root /build/tmp/work/corei7-
> 64-ccp-linux/dbus/1.12.10-r0/recipe-sysroot --gid 998 --system
> netdev]
> groupadd: GID '998' already exists
> ERROR: dbus: groupadd command did not succeed.
> 
> Looking at the /etc/group file in recipes-sysroot it contains:
> 
> systemd-network:!:998:
> 
> which obviously conflicts with what we have set in our static user
> group:
> 
> netdev:x:998:
> systemd-network:x:994:
> 
> Looking at the logs I think the recipe-sysroots is coming from sstate
> cache (via do_populate_sysroot_setscene task).
> 
> When running the same build with static user ids on the same CI
> server with a different (empty) SSTATE_DIR everything works.
> 
> Now I have several questions regarding this:
> 1. Is switching to static user ids without cleaning sstate cache a
> supported uses case? The documentation mentions deleting TMPDIR but
> it doesn't mention sstate.

FWIW, I think when we switch to static user IDs (a long while ago) we
had to delete everything; it was a pain. We never switched back, so I
don't have any experience with more recent versions.

> 2. Is this an sstate bug that should be investigated further?

I believe this is captured by this bug: 
https://bugzilla.yoctoproject.org/show_bug.cgi?id=12107

> 3. Does somebody know of a solution for this issue beside cleaning
> the entire sstate cache?
> 
> Regards
> Pascal
-- 
Joshua Watt <JPEWhacker@gmail.com>


