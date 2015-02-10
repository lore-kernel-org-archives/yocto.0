Return-Path: <michael.g.wood@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19986E0095F; Tue, 10 Feb 2015 06:26:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.179 listed in list.dnswl.org]
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7B0DE0094C
	for <yocto@yoctoproject.org>; Tue, 10 Feb 2015 06:26:39 -0800 (PST)
Received: by mail-wi0-f179.google.com with SMTP id hi2so4313346wib.0
	for <yocto@yoctoproject.org>; Tue, 10 Feb 2015 06:26:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:content-type:content-transfer-encoding;
	bh=a0bZMp+A/uG73bPQik55wxUVwil6mdyeNNVUdJ5eUlY=;
	b=j5phkzsmrR0CF/xuC1qjPNhIeUf9iosoZ5SLB2ZOOd9BAgy0N3nwOm/9mHepJH5VZW
	rIWXFfliz0xj6Cr8JhhP8P3cMPw9cAmbPvf/eKkzKzgTGm6Y3x+zb1ZLdqzAO/Eb+FI5
	bPTJquiDEAhiJSgETx1P/uhj9fVXLkCQASrRgPh3OCaLeq3llwRT5oZI8GZpqhCZvqDs
	871DfWV1Tvov24LV92/9a67J/PWqonNVIyiWXn6Ammjbm7wUW6bucJsHlesyePJBpUv1
	tYwUYHoPLjuJMbI8P0fa3XEYkSmvhC6L5jCcfJqkyDfisspGhRdblP2kRRmYB5YJxl3g
	kNIQ==
X-Gm-Message-State: ALoCoQn58vZOkHe9T0h8ekabrfme0J/SoYA+DEZS9H24qEspiNaFu9KM7xrBavK4B5U4RoeE8RH8
X-Received: by 10.180.35.42 with SMTP id e10mr37391542wij.11.1423578398248;
	Tue, 10 Feb 2015 06:26:38 -0800 (PST)
Received: from [192.168.2.171] ([83.217.123.106])
	by mx.google.com with ESMTPSA id n1sm19025289wib.11.2015.02.10.06.26.37
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 10 Feb 2015 06:26:37 -0800 (PST)
Message-ID: <54DA151D.4080500@intel.com>
Date: Tue, 10 Feb 2015 14:26:37 +0000
From: Michael Wood <michael.g.wood@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: [error-report-web] New errors-report-web
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
X-List-Received-Date: Tue, 10 Feb 2015 14:26:44 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

I've updated the errors.yoctoproject.org site with the latest version of 
error-report-web [1] that myself and Belén have been working on.

error-report-web is a project to provide a web service that can be used 
to collect and display build error reports. Error report generation can 
be enabled in your build's local.conf [2]

Here are some of the highlights for the latest version:

     - Option to have a JSON response on error report submission
     - Optional "Special submitter" allowing an extra tab in the UI for 
quick access to a defined submitter (e.g "autobuilder")
     - Filtering and ordering on columns
     - Searching improved to allow search of the contents of error 
reports and other useful fields
     - Improved page loading speed
     - Non blocking graph generation
     - Unit tests
     - Update to Django 1.7
     - Add support for Django migrations
     - View errors by build
     - Many UI tweaks
     - Better error handling
     - Simpler url structure

Thanks,

Michael

[1] http://git.yoctoproject.org/cgit/cgit.cgi/error-report-web/
[2] 
http://www.yoctoproject.org/docs/1.7.1/dev-manual/dev-manual.html#using-the-error-reporting-tool



