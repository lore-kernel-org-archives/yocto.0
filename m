Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f51.google.com (mail-pb0-f51.google.com
	[209.85.160.51]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 47C1CE00721
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2013 23:05:37 -0800 (PST)
Received: by mail-pb0-f51.google.com with SMTP id un15so2688657pbc.38
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2013 23:05:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:mail-followup-to
	:references:mime-version:content-type:content-disposition
	:in-reply-to:user-agent;
	bh=00hwKrxcNk0dBVef8VDFdyJ1G6X0g6jy2ApMsNV7fsg=;
	b=amP67QTQPOMuI/YJR+DRDLD5ohKNmp7U+RlnzzKqW0jVSNu/mixqKAo+/HsCLwhfVC
	edmgN6rp6dhg+umCh0XTb6GD2C3yreNaFiQ9/cKS12RaaUQZpBMgsAG0T2wTGvy6pKP8
	iT2JTNMllagfE077BmDrQNqIMMnajoLMHxDca+HILpQ7Oec7ccHpn/P71GLzE1jbJhb8
	13sQVk2FgDPrdjKrVJa6CWGAzClR8QwqKJQ6BonsOsGu5ycsIuWsev85VT26uZwOJ2x9
	Gptx6/1iZXWxk1x1dIGxa+sVFbj8AnX3ZQyd6eXb0Jm3hdEfJ1AMkXyTxL8SrG9+NU2k
	KW8g==
X-Received: by 10.66.251.227 with SMTP id zn3mr882673pac.178.1361343936955;
	Tue, 19 Feb 2013 23:05:36 -0800 (PST)
Received: from sakrah.homelinux.org
	(99-57-140-209.lightspeed.sntcca.sbcglobal.net. [99.57.140.209])
	by mx.google.com with ESMTPS id c3sm66480568pax.9.2013.02.19.23.05.27
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Tue, 19 Feb 2013 23:05:36 -0800 (PST)
Date: Tue, 19 Feb 2013 23:05:10 -0800
From: Khem Raj <raj.khem@gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
Message-ID: <20130220070508.GA23580@sakrah.homelinux.org>
Mail-Followup-To: Edward Vidal <vidal.develone@gmail.com>,
	yocto@yoctoproject.org
References: <CANwz6nz5QUDFeSZR62uncFEsr-4=ehGUpn3AtZpW-4k4reX49A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANwz6nz5QUDFeSZR62uncFEsr-4=ehGUpn3AtZpW-4k4reX49A@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: adt-manual.pdf
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
X-List-Received-Date: Wed, 20 Feb 2013 07:05:37 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On (09/01/13 16:59), Edward Vidal wrote:
> Hello,
> I was testing the example  4.1 Autotools-Based Projects
> should the file "configure".in be "configure.ac"
> this is the error that I get when I execute aclocal
> aclocal
> aclocal: warning: autoconf input should be named 'configure.ac', not '
> configure.in'
> Any help will be appreciated.

yes configure.ac is right naming. Have you filed a bug for it in
bugzilla ? if not I would suggest to file one

