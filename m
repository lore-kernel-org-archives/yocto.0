Return-Path: <twoerner@gmail.com>
Received: from mail-wg0-f53.google.com (mail-wg0-f53.google.com [74.125.82.53])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id EF9B4E01460
	for <yocto@yoctoproject.org>; Fri,  1 Mar 2013 08:43:01 -0800 (PST)
Received: by mail-wg0-f53.google.com with SMTP id fn15so2633664wgb.20
	for <yocto@yoctoproject.org>; Fri, 01 Mar 2013 08:43:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=YQW16hYbD+dPZ/o5LANUNrvOGtcDQXbj9HSI0xOnLoU=;
	b=tIpgLNGUlf4GOvoUE5yPHWIaUzQqXEPu0u9oPV1OFj3h9b1WosTBDnxvHQJTWLaH5D
	ittfz5ONoNxuQcf7V9l3XWimKmhmME16kzAUXNddNhZvqrqhpAjddExqxBkQRkgr4bI7
	Drj6gmnErIjbGiwj5Vhv5tPhSEUC16y5VgWuOk33DfpleSkGL3PBZczNtx6UyirOxMBi
	7rTkg0RFJV2JBN1aX82Q1yG+71zul5c4jH0XNFeM8aO0oNqU/HeBPAkrrc/l1A4awBrs
	qXs+hUTQ9qjgUu6GgIjOYskXQfcZir84pRp6kiv2NuNoDY+EF3dvtwpgkav3PNf0GUpG
	z9SQ==
MIME-Version: 1.0
X-Received: by 10.194.21.233 with SMTP id y9mr11862715wje.47.1362156179957;
	Fri, 01 Mar 2013 08:42:59 -0800 (PST)
Received: by 10.194.45.100 with HTTP; Fri, 1 Mar 2013 08:42:59 -0800 (PST)
Date: Fri, 1 Mar 2013 11:42:59 -0500
Message-ID: <CAHUNapRBgEjmtJNCsY+t59uJ8p1+HzJuQKaJxNExbPx_fJKZZQ@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: linux 3.8
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
X-List-Received-Date: Fri, 01 Mar 2013 16:43:02 -0000
Content-Type: text/plain; charset=ISO-8859-1

Given that Greg KH has publicly stated linux-3.8 is not a long term
stable kernel, is it worth the effort to support it in Yocto?

http://www.kroah.com/log/linux/3.8-is_not_longterm_stable.html

