Return-Path: <otavio.salvador@ossystems.com.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 349F8E003E1; Mon,  3 Apr 2017 10:52:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.54 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3A5FE0030B
	for <yocto@yoctoproject.org>; Mon,  3 Apr 2017 10:52:39 -0700 (PDT)
Received: by mail-oi0-f54.google.com with SMTP id b187so135225934oif.0
	for <yocto@yoctoproject.org>; Mon, 03 Apr 2017 10:52:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ossystems-com-br.20150623.gappssmtp.com; s=20150623;
	h=from:mime-version:in-reply-to:references:date:message-id:subject:to
	:cc; bh=ir7s7t6Eu+p/etWI3AItc5aR3u3RNVYlQfVNXBLSCZQ=;
	b=KuslLRuGWsg4kvXKmVrUgaGiM+4KdnYLRnwoyxhNKWMmOp/GSIIaWa7h5P9dFrU0E0
	3UuaFw7UbDjfjIJdOsQU9tBPD57+QcyqG78mC8AowGRFu8XjKO4YaAw0AkjSOVYzf8JB
	U7Wqbk43KB/7PDQ/DEzd8FtN5OKbeZIC0/txJS+rH74Gcf/R2QgV/6x5fvDvyshDhfeL
	4LgqSDb84FEPy3u9HlAFMv5nwwdDhORHw80SZM51fqeQu65CAHHfbenbXjpJTp5c2COo
	qGPV6PJojyvxY6pb0rqeHAevFUxoyNtp5rXW9RTof/kiJulQU+shDnSerR5LbmVu/eAl
	zq9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:in-reply-to:references:date
	:message-id:subject:to:cc;
	bh=ir7s7t6Eu+p/etWI3AItc5aR3u3RNVYlQfVNXBLSCZQ=;
	b=E13EhwaEtTfCTY7axDAXo14fye1xIUXC2MkCpEtUGK+8CbtjOlY9byJgfGZPzFnbye
	2WWEpih4fxSNsu4q7p2Uy01yOjJTYrGRkyvVOByOdjXJGucBOdQUgRMjh93JJhCZXPH2
	B0XNpvk6V7xwUrz9bAEnN0zg5yq092koInqfi9EMZxXWIaNt1LY0eHBV/ftK/NOxQqbY
	XDlt+X5dzCOPvgGJUTRvH/PCX2HTbc3WFumu6+V7LkR70WbA60ArdEnfBCN/ZW+qufV/
	J3LZv18RzyN65Lw4VaqWf/o4uJrEvgulyXGxhr3n5CF7MgaIv2/B0bXzvDh8UZxLgx3G
	giXQ==
X-Gm-Message-State: AFeK/H2OvXgQbiOqmhkSKQWi0VXPDJQnDgEVk1aVLPjEgfRrJHdaTxo/IaNtaqpzveizbg==
X-Received: by 10.202.90.87 with SMTP id o84mr9790113oib.141.1491241959085;
	Mon, 03 Apr 2017 10:52:39 -0700 (PDT)
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com.
	[209.85.218.50])
	by smtp.gmail.com with ESMTPSA id 94sm7031808otj.55.2017.04.03.10.52.37
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 03 Apr 2017 10:52:38 -0700 (PDT)
From: Otavio Salvador <otavio.salvador@ossystems.com.br>
X-Google-Original-From: Otavio Salvador <otavio@ossystems.com.br>
Received: by mail-oi0-f50.google.com with SMTP id r203so135209450oib.3
	for <yocto@yoctoproject.org>; Mon, 03 Apr 2017 10:52:37 -0700 (PDT)
X-Received: by 10.157.16.1 with SMTP id h1mr7821375ote.205.1491241957378; Mon,
	03 Apr 2017 10:52:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.79.203 with HTTP; Mon, 3 Apr 2017 10:52:36 -0700 (PDT)
In-Reply-To: <20170403071346.9980-1-romain.perier@collabora.com>
References: <20170403071346.9980-1-romain.perier@collabora.com>
Date: Mon, 3 Apr 2017 14:52:36 -0300
X-Gmail-Original-Message-ID: <CAP9ODKqCCDTvJMEhCPBUira9xE59VDpwWd7uXDEycCrL9ffF_Q@mail.gmail.com>
Message-ID: <CAP9ODKqCCDTvJMEhCPBUira9xE59VDpwWd7uXDEycCrL9ffF_Q@mail.gmail.com>
To: Romain Perier <romain.perier@collabora.com>
Cc: yocto <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [PATCH v2] busybox: make SYSLOGD optionnal
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
X-List-Received-Date: Mon, 03 Apr 2017 17:52:44 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Apr 3, 2017 at 4:13 AM, Romain Perier
<romain.perier@collabora.com> wrote:
> Some distros might choose another syslogd provider like rsyslogd.
> update-alternative will update the link from syslogd to the right
> provider. However the syslogd feature is still present and enabled
> in busybox.
>
> This commit adds a new configuration fragment to make syslogd
> optionnal in busybox.
>
> Signed-off-by: Romain Perier <romain.perier@collabora.com>
> ---


Acked-by: Otavio Salvador <otavio@ossystems.com.br>

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

