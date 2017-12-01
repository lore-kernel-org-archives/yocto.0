Return-Path: <stevep@korgrd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2027FE00CF7; Fri,  1 Dec 2017 09:11:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E373E00CE8
	for <yocto@yoctoproject.org>; Fri,  1 Dec 2017 09:11:52 -0800 (PST)
Received: by mail-io0-f176.google.com with SMTP id u42so11941078ioi.9
	for <yocto@yoctoproject.org>; Fri, 01 Dec 2017 09:11:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=korgrd-com.20150623.gappssmtp.com; s=20150623;
	h=from:content-transfer-encoding:mime-version:date:subject:message-id
	:to; bh=XowStPXt55xlRfPffiaOHNr4Hlo/sYIXnqG0o8gtNPI=;
	b=khwOFsdN/UWx+ViqEn4HOqb7zjCDfxg1cPuEQiboaLESVzKlXvCd+vsRTlZSvA3U60
	AFCrpHuzpXQNIQxo/UfsK7lRToh0wiQVvkie+2TGBdKsR85YGcwcqm3/vs20szFs6WcF
	mxXEn5/kySBEYL2UI08is4eYF9B7quUL/+nhyOKJEG/OswFotGBIY0CXJesTduuOqyMw
	s2dk17+IdhT7629vwG5FdDHTvnvTi/teUzj7NDP7aPqKzNdGx50Uconv35ip27FeFL3Q
	fRJfkx3QlJqyg2ADt/0SrYiWjYVbj2PlkZc6R706zJbtU8Ph7TqUQ1GNc32hz4HZrkJX
	Apmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
	:subject:message-id:to;
	bh=XowStPXt55xlRfPffiaOHNr4Hlo/sYIXnqG0o8gtNPI=;
	b=RFagk7YqQf6wIjSBeFX0Dd7FAa0BQAIH8VGKG1B/5eqSgzCnZQvT3oAwFl/pgcOda1
	j5VTCyk5UfbbMkxY6VWUO12SJrT08pg4QvHANtwLWLN/CwoFK28mClFfsbF27CfqcPQs
	7pL5dzCtrnYiIZHBGmBtFy+00Yfy6jJyQlevE4y2lppgO3LPfEKNPFIQCtYgYytsgYQT
	tGNcedChbltQLAakRYXxmHHnF7Ztbo1Fq2gUJE3GIIYOD9+Q4ulv0k5elEPGru5CIlW8
	NLexl2BgUNUYlz3FRE+4sAZPHN8kVAoBx4gxdK7kVH+nAr+BWzyxsBmHXQSAUhiZv9zA
	Y9Og==
X-Gm-Message-State: AJaThX570iTOzlzLjx2tmCNxsm1/mW9PY7qXF4r66asoQPiwpHfgrfnz
	yFxgTD3X08RJXaNyeaGV39aXU7ex0NY=
X-Google-Smtp-Source: AGs4zMbceW+ox3zPnCPlKzKocWjzzZQ4tovo9qkcOnot/15MR3k7LbHe9ZKlhcPqWnPW6IilLLIaWw==
X-Received: by 10.107.185.197 with SMTP id j188mr13921042iof.221.1512148311512;
	Fri, 01 Dec 2017 09:11:51 -0800 (PST)
Received: from [192.168.1.2] (68-112-255-18.dhcp.oxfr.ma.charter.com.
	[68.112.255.18])
	by smtp.gmail.com with ESMTPSA id q2sm760073ite.17.2017.12.01.09.11.49
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 01 Dec 2017 09:11:50 -0800 (PST)
From: Steve Pavao <stevep@korgrd.com>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Fri, 1 Dec 2017 12:11:49 -0500
Message-Id: <223AEB75-1CFA-4A47-BA4B-C5AFAA32407A@korgrd.com>
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3273)
Subject: how to know Poky kernel version before running it
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
X-List-Received-Date: Fri, 01 Dec 2017 17:11:53 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Is there a definitive way to know at/after build time what kernel =
version is being built via a particular bitbake of Poky?

I don=E2=80=99t have the board on hand to boot the result of my work =
right now; it is a scout build for a board I=E2=80=99m getting soon.

I=E2=80=99m trying to figure it out by browsing the console-latest.log =
and looking for the highest kernel version I can observe from the =
recipes used.  Is there a better way to find this out at build time?

Knowing the kernel version would help me decide what version of a patch =
to apply to go along with it.

Steve Pavao
Korg R&D


