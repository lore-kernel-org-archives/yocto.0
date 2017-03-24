Return-Path: <cody@arrc.ou.edu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 763A7E007AD; Fri, 24 Mar 2017 06:49:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.179 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.179 listed in dnsbl.sorbs.net]
Received: from mail-ot0-f179.google.com (mail-ot0-f179.google.com
	[74.125.82.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E30DE003C1
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 06:49:25 -0700 (PDT)
Received: by mail-ot0-f179.google.com with SMTP id i1so1944856ota.3
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 06:49:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=arrc-ou-edu.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=BnOCf/AptdbbP1pZj5/wk/kIMzGGjTfRQax9Qe71ZG4=;
	b=Xa+7PwVqknkIYCeEriWkHVsyBOU3nL9GITg3V9Tbzfyo0SZNIjvHgfBd8bU+jpArlm
	TzEbuNKQLk8iAfRclf343DTTaiBA1cNP8Nv+kBzMqa5MiJVp2pvCkrK3zZOEH3iSopCB
	3iy8XGxkXPzsIM5Zw8QXRiLbEBIn2Hm4vD3N2ZjhrshpDNr0kUaZG4IQE5DW83A06e93
	TtRy4GwtqejrVimRVIsQWjdMM+YU/MyE8WIiaPA1yvhNKxkQvImiQ8FGJQ7Q/fMe9/z/
	Ouc+XiQ7u//FnW6dggYP9v1OtzUo6xhKZVDUERMWPpcc7Pdr/CT1rLrYDhFEnNH5VqTE
	wsxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=BnOCf/AptdbbP1pZj5/wk/kIMzGGjTfRQax9Qe71ZG4=;
	b=B6SwyTzIbGIJsR/rFDwLqp1qi9iyxUOScTWqLwbrIFjRZ5lX8B2sXwCZ4mXHmDhTOn
	HyQrWfJRLjjQbB5xwlUM7ZZFeKvetRf/qqn4meyO/dyNgGp0J1usxJXqlAxn7/ESGi4D
	CQ61fS4xvIE6xuORuU5nVvk/+XoqwhiIfPRtxkgtu2BYo0mVt6iLpdqL0M+RnNMfDBBY
	oE84LYUmb+gIWw3y9Abro1x8CNNIfkxmXaIQfL6MRWEJcKDOAbCjdgMCH+2zQJDtPXud
	V8ENICcjyrtSMJN/Vd/HkYhP5/KnMTKDfa+lzdjZ03zObpdel0jK8L/EQIrd4Q440SO3
	bUlw==
X-Gm-Message-State: AFeK/H0lWwqWghQI37U2r9koHChh9BYDMQxtBLv3TRqdzTkbYXQQ//u4FRPcnOCaQLrlehHhmUjBjZygKQwf34H7
X-Received: by 10.157.39.109 with SMTP id r100mr1859905ota.240.1490363365194; 
	Fri, 24 Mar 2017 06:49:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.4.203 with HTTP; Fri, 24 Mar 2017 06:49:24 -0700 (PDT)
From: Cody Piersall <cody@arrc.ou.edu>
Date: Fri, 24 Mar 2017 08:49:24 -0500
Message-ID: <CAKEinFzZ-8poavqXnmDPXg47N6OQ7un4X1nLpwofUKRrY8gW1w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Remove a recipe's do_install_append() function in an append file
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
X-List-Received-Date: Fri, 24 Mar 2017 13:49:29 -0000
Content-Type: text/plain; charset=UTF-8

Hello,

I am building zsh from meta-oe layer, and it has a do_install_append()
function defined like this:

do_install_append () {
    rm -fr ${D}/usr/share
}

which gets rid of lots lots of useful functionality, like
context-aware autocompletion.  Can a bbappend file get rid of that
function, or do I need to edit the actual recipe? I've attempted
defining an empty do_install_append() { : } but it didn't work.

Thanks,
Cody

