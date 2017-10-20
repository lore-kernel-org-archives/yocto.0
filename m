Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FC75E00CF5; Fri, 20 Oct 2017 07:10:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.171 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A2B0E00CCC
	for <yocto@yoctoproject.org>; Fri, 20 Oct 2017 07:10:03 -0700 (PDT)
Received: by mail-io0-f171.google.com with SMTP id 134so13351772ioo.0
	for <yocto@yoctoproject.org>; Fri, 20 Oct 2017 07:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:subject:to:date:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=WLjhiZU1zfHPN5o4BFKdW+GRiz5aGRXrYClEqMuZdMo=;
	b=X7P1xIWxKdEE+5jGQ7fRUaqpz3KwcPatL82BP5I/ajj1SGDP1UI3B5V+2N2wY9cauT
	boR/hTVOkcUi8eztZ2CIg6pgArJTfrcd1YG8Mgs1VauRmr+DzOtgHuKxbPZ1uFwRMvG9
	NAzcqB1RKdhVxI8VIpcO9YSJRlJNIlQL5WNc4HFRIVJbGop7xqoDQFBEPLR2PZ5k3WV6
	ZmG2DRkNd5eC7OzgbfDHA03f28Zq3ss0RVjxkK/9Bgsdy6Gdhg+dv2ON+uzh/hWcYsZ9
	VYSrKgWQxR5cFxRpIZXavQhth47nTslH1ghYS4SjvlZKbnShtQcjlCidIpMn3NhKlMks
	6Gow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:subject:to:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=WLjhiZU1zfHPN5o4BFKdW+GRiz5aGRXrYClEqMuZdMo=;
	b=jXQGOK1YNqPPeclWrAj82/WU9v1EhYiIAc9559fQKnh8xKIobB/wGzerwonkAXMfqf
	g6UgrYlCzd/JmUCy5ox0NDuOWQe5ECf00Ix2GE7wFZ0V3DfCC4fdLdVzSHwCOFGIm9+1
	oTHmX6cBa/WPx9Qlv1V50y7eU6nMT421Vb2SEx5bJ8o10tZj8Oyl2MtW0V5VNbesdhJ2
	R+KyWutUni+IbsSHAL6higB7UL/JXBe2XYLbrxsa02wKhzae1xfUalVoaiZ4rt8/pB3s
	gwIrw4NN8LHT8yfEUZnrZM/w4Pm4HwE5SuE0/EVnmOwN6MQqBaaoy+wQmchRMJTsFKxR
	Kprg==
X-Gm-Message-State: AMCzsaW+HPyfpEVRsoDhj0a9Vib1tMw9JVZZdfaSvDe+WK34InYxTF7n
	cuAflnr9dym5v3SVSDJmFV8=
X-Google-Smtp-Source: ABhQp+TtvJicqkWvHkBKQcHgDzRdGNoc9B9iSBihsf+Il2xv9mDsm2pdPv0ttXbXBWRkvgrWHTdAlw==
X-Received: by 10.107.175.28 with SMTP id y28mr6704572ioe.216.1508508602919;
	Fri, 20 Oct 2017 07:10:02 -0700 (PDT)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.googlemail.com with ESMTPSA id
	j71sm3777943itj.2.2017.10.20.07.10.01
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Fri, 20 Oct 2017 07:10:02 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Message-ID: <1508508601.2542.9.camel@gmail.com>
To: "Koehler, Yannick" <yannick.koehler@hpe.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Fri, 20 Oct 2017 09:10:01 -0500
In-Reply-To: <TU4PR84MB01764E055DD6B5F1BBC43003ED430@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
References: <TU4PR84MB01764E055DD6B5F1BBC43003ED430@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
X-Mailer: Evolution 3.24.6 (3.24.6-1.fc26) 
Mime-Version: 1.0
Subject: Re: bbappend - FILESEXTRAPATHS
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
X-List-Received-Date: Fri, 20 Oct 2017 14:10:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2017-10-20 at 13:30 +0000, Koehler, Yannick wrote:
> Hi,
>  
> I have been using Yocto for over 2 years now, and whenever I create a
> new bbappend file, I always have to remember that FILESEXTRAPATHS
> variable, often typing it wrong, EXTRAFILESPATHS or FILEEXTRAPATHS or
> FILESEXTRAPATH, etc…
>  
> I did a quick check on my setup and on 102 bbappend recipe found,
> there are 73 that uses the FILESEXTRAPATHS variable, so that is
> around 71% of them. 
>  
> I was wondering if the team would enhance the user/dev experience
> here and modify bitbake behavior as to not require this variable and
> be able to “override” any FILESPATH that already exists with the
> bbappend location.  So that for example the FILESPATH “files” would
> be looked up in the bbappend folder location before the initial bb
> recipe folder location automatically without having to manually enter
> a FILESEXTRAPATHS statement.
>  
> Or alternatively, a script or command to create an initial skeleton
> bbappend with the initial .bb in comment
>  
>                bbappend mylayer recipename.bb
>                # Create a file under mylayer/recipes-*/*.bbappend
> (using % for version when not specified on cmd line) with the
> original .bb in comment and a section containing FILESEXTRAPATHS

kergoth has some really good vim plugins for bitbake files at https://g
ithub.com/kergoth/vim-bitbake (if you like vim). I supplemented it to
pre-populate FILESEXTRAPATHS for bbpappend files, pull request pending:
https://github.com/kergoth/vim-bitbake/pull/14

>  
> I think this would greatly help when creating those files.
>  
> --
> Yannick Koehler
> HPE Aruba


