Return-Path: <cavallini.koan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 425DEE00D10; Mon, 25 Sep 2017 11:41:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (cavallini.koan[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.194 listed in dnsbl.sorbs.net]
Received: from mail-wr0-f194.google.com (mail-wr0-f194.google.com
	[209.85.128.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC27FE009F5
	for <yocto@yoctoproject.org>; Mon, 25 Sep 2017 11:41:11 -0700 (PDT)
Received: by mail-wr0-f194.google.com with SMTP id n64so297600wrb.2
	for <yocto@yoctoproject.org>; Mon, 25 Sep 2017 11:41:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=GWYdOtJNf8UldfBZFpyTW/Ruoz4FJbrJDZoHL9B02Tg=;
	b=m94QWSJGzxRSVa0stEz9aBiuotdsg7Y65gkd4hFHIHeLYfgYYU3HGLT7KjTNd9xRMD
	jaXH0mZmY8p7YVL81Bml2uquGI/h441sgViLIAeZZit+nuoJeHyLltRGPGU7tgOPecas
	pC/Xkw3nicMutro/3FKB0Shk63ACdS8Fh4PiCt+jJdwH8eW7aFXvLWHcAUWjCmCKXs5Y
	zIHiFV7P3r1E4CDxTEx4Sj7Nc64yXBFsrCIJRjXh13krSTqIPh6LTBR9N78ZWDwMmGpQ
	moNF4XQS18O2vHvw9S4ROvxfZpjtL523nsm/USZsKC/uCSeLCOaRD3Wxq+uj0+AqDGHG
	zp6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=GWYdOtJNf8UldfBZFpyTW/Ruoz4FJbrJDZoHL9B02Tg=;
	b=daysWC/TOmTdXbfcnL4ZYj88VeS7mqoBlBDhvy9hyavQEYtOpyVxjE12eXtQjzPhRU
	2u8lSEjLsKjP4Q942GTu7LVqQDlkvF8qk1cbY7Kj8Ze4Vjwz42KfR7QJjICRgJRISokM
	puLEDvvVe7yMnn3ltTSiIR0sf6Y+MqEsB9AjkbmauHW2JlzLKgy+2AXyEuUBNKmJdVN8
	/luIc9QNWd/9oM6SY2UT6yNg0UWCRMeOd69ITZrvdh6nS4stATSmHacKbGZP37zmdP8B
	0CflhjXYZ/hJJUd4XWwg1i3qel3U4XUXV6MOeD0WgOVJv8vJRakranRTEuJ2ZX9e6bnz
	KYIQ==
X-Gm-Message-State: AHPjjUjq1eVH362urDyEzf3M7tqQCjWNNfYXIJQR5bJIoerVVD3Zh0Di
	9aqk5Lo0WLsFFP1IR2eplfsn/7E/AyOSOK57+MFzRg==
X-Google-Smtp-Source: AOwi7QCnmpDQ3vTCTqGLvbMfDlrQGEwG0AL7YSifVxkVUhIU8fkfx28kRoFYxQlXgWdV7Q5Mb46IQ4MQuMctNqacZXs=
X-Received: by 10.46.25.138 with SMTP id 10mr3130300ljz.122.1506364870048;
	Mon, 25 Sep 2017 11:41:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.212.195 with HTTP; Mon, 25 Sep 2017 11:41:09 -0700 (PDT)
From: Marco <cavallini.koan@gmail.com>
Date: Mon, 25 Sep 2017 20:41:09 +0200
Message-ID: <CAFQ+Dij+yJFtAyMnAQ_-3T5HJRzf0V9ZcxiSe1S59ZHQz1-gSg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Unclear sstate-cache dir permissions
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
X-List-Received-Date: Mon, 25 Sep 2017 18:41:12 -0000
Content-Type: text/plain; charset="UTF-8"

Hello,
I am trying to share a sstate-cache between two (or more) users in a
shared directory.
Although I set the directory owner, group and permissions I face to a
weird condition that I don't understand.
Particularly why some directories don't have the group write
permisisons that drive me to a buld failure for mambers of the group.

I wonder if I am doing something wrong or I have an unexpected issue.


koan@kmobile:sstate-cache$ ll
totale 1028
drwxrwxr-x   2 koan devgroup 4096 set 14 15:32 00
drwxrwxr-x   2 koan devgroup 4096 set 14 14:37 01
...
drwxr-xr-x   2 koan devgroup 4096 set 14 15:31 1d
drwxrwxr-x   2 koan devgroup 4096 set 14 15:31 1e
...
drwxr-xr-x   2 koan devgroup 4096 set 14 15:32 27
drwxrwxr-x   2 koan devgroup 4096 set 14 15:32 28
...
etc...


Any help would be greatly appreciated.

Thank you
--
Marco 'mckoan'

