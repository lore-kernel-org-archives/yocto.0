Return-Path: <andrei@gherzan.ro>
Received: from mail-qe0-f41.google.com (mail-qe0-f41.google.com
	[209.85.128.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A9C7E0079B
	for <yocto@yoctoproject.org>; Tue, 14 Jan 2014 02:56:20 -0800 (PST)
Received: by mail-qe0-f41.google.com with SMTP id gh4so8483625qeb.14
	for <yocto@yoctoproject.org>; Tue, 14 Jan 2014 02:56:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version
	:content-type:content-disposition:user-agent;
	bh=5r2nDObWkjnto7y3N5iI7Rb8L5iRSzr3NfzUpnWSdiM=;
	b=Ye54IfUxEfY3a55aOXXzFDBULLj71AUVv2Ve1zdYutdf4dqg+RaBS0yh/F+28xgwLm
	wzsNU6GgWhN+EUl87fkTpJ3wes261NDPi+2GPHhdlsEWfedE676xW5os9PZ6whLoT8kl
	rgHVUPgBmf3hhYGGRNQKuCgxydWi7414vdUiBdf30xltu1djmp478VthsVtcpYFYDNok
	qhzyFY9wGgVSKYYlhy3RHtRqBBBjxi+v4a5CO7Y/0yWrXfuRS0eIT9MJ8J8wnyDbzR0/
	BoHEcPlXAHqK3eV7k9WTR5K/dnY4tSb+sui/pZsRREWAhIZdKT94aKn9zWIu5k+MjZyB
	VB2w==
X-Gm-Message-State: ALoCoQkbeExv5NVL93l264CCT26U6lkHiwLAC4fsGeR4r2Wy4w+WA5lqVOonyMNaWdut0mfC+aCb
X-Received: by 10.224.128.72 with SMTP id j8mr1413168qas.51.1389696979658;
	Tue, 14 Jan 2014 02:56:19 -0800 (PST)
Received: from gmail.com ([89.121.200.106])
	by mx.google.com with ESMTPSA id x9sm191087qev.15.2014.01.14.02.56.17
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Tue, 14 Jan 2014 02:56:18 -0800 (PST)
Date: Tue, 14 Jan 2014 12:56:08 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Message-ID: <20140114105608.GA4192@gmail.com>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Audio/Video etc sample files
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
X-List-Received-Date: Tue, 14 Jan 2014 10:56:21 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

Is there any support in including sample files in yocto? For example for
testing different players you need samples. Maybe we can have a samples meta
layer with upstream sources or local ones if there is nothing already done.

--
Andrei Gherzan
m: +40.744.478.414 | f: +40.31.816.28.12

