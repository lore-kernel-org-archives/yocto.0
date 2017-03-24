Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04CC8E009C2; Fri, 24 Mar 2017 02:04:22 -0700 (PDT)
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
	*      [209.85.223.182 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.182 listed in dnsbl.sorbs.net]
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBEF7E00724
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 02:04:17 -0700 (PDT)
Received: by mail-io0-f182.google.com with SMTP id l7so12887796ioe.3
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 02:04:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=OMXI9f2FyXedjptxwcqY7FOkokwXlnrhMJ8xRigbNE4=;
	b=I3Xs4OEL6gSW/vVf+4q6f4m5Fa4AxCKMc/ywzjoM7HPS0d4c1WzEVjyueBpIPZIfeF
	MIZbiUHSRmKhOrIE/o2aHul+gyMa59iSO0nM6MdE+/A/YrorE3AKpAoOGfZcO60MEioU
	NXdasuPT7Hp5lPH035ubGZ5pj6LGfd0Hj+9LFDZEqPHv//vo+xea6/U3itgYgRfeE69g
	/IV82oTkIrD9zhCwyT18LLi/gN7AQI7YHDyS2G6GuQfyxz979GJqtFSg3hHzKUgY/B+e
	6Mx4u/fkHg2XQPMFD9FBKjVaejG20ZAtFjFgOmIYUH4sT9u/Fob7Vdzbz1Jg9QYY883J
	2pQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=OMXI9f2FyXedjptxwcqY7FOkokwXlnrhMJ8xRigbNE4=;
	b=ndNaN4RWz/O8LztMcJjPAuZfykb7smXfkhvD9dP8RspWlkRFiu4c7dFT98y+5rS2Td
	vjnv92TEYlKdJ6BDsCslKHBkidYQpoRctlx1tFVD79+X5l8kBc+26PTdUfYnwTQ2OdfW
	Sg69jucMh2pyeOq/9FZLHD7JSA+7uQLRzO7sUMYoIJpZ/sCXS3/8+VlpKZE4NSqm1ZfS
	udHzq3TeTzshalD0pJ4bXNilbEwq4j2D0JGQnQWwznSp4wGGScn4R/c1tnqrXpHSBaTw
	pRhwrRWp7K9k5BkVgIR1zHfzIB09PGpXrg25tBbVDPmUgnj3QREUg9viCsCqQDzYHWKM
	xqAw==
X-Gm-Message-State: AFeK/H0SaSyxL4q85fk93wlW33J6M+6H1dijDgnxbpJlG2UuxDeJ/7EEwew2NLACLkGL5syM
X-Received: by 10.107.200.139 with SMTP id y133mr7647913iof.147.1490346257374; 
	Fri, 24 Mar 2017 02:04:17 -0700 (PDT)
Received: from pohly-mobl1 (p5DE8E2F9.dip0.t-ipconnect.de. [93.232.226.249])
	by smtp.gmail.com with ESMTPSA id 33sm937467ios.54.2017.03.24.02.04.14
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 24 Mar 2017 02:04:15 -0700 (PDT)
Message-ID: <1490346252.6396.262.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Ingo Flaschberger <ingo.flaschberger@gmail.com>
Date: Fri, 24 Mar 2017 10:04:12 +0100
In-Reply-To: <edfa3cda-2c3e-d8d0-aeb8-c2ce30931ce4@gmail.com>
References: <edfa3cda-2c3e-d8d0-aeb8-c2ce30931ce4@gmail.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-swupd] allow username/password encoded in SWUPD_VERSION_URL and SWUPD_CONTENT_URL
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
X-List-Received-Date: Fri, 24 Mar 2017 09:04:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2017-03-23 at 16:04 +0100, Ingo Flaschberger wrote:
> This patch allows basic authentication of swupd SWUPD_VERSION_URL and 
> SWUPD_CONTENT_URL.
> swupd-client already support urlencoded username/password, but 
> buildlayer does not.

Can you resend in "git format-patch" format? Don't forget the
signed-off-by and add short prefix to the summary line, perhaps like
this:
bundles.py: allow username/password encoded into HTTP server URLs

An example how username/password need to be encoded in the URL would
also be useful.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




