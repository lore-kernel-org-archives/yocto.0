Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDA20E00857; Fri, 13 Apr 2018 17:52:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A07EE00529
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 17:52:38 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id y66so7229296pfi.7
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 17:52:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=6L+ykjVr5sSocnm8FORju3QbjIsI3HqLcMRWBEGihYw=;
	b=pTOTj3xcScRLfWwrh+8r6YJneuD72VVy+rN3+cse2LF0MynALb0SBy0uYCmyzMv+Bk
	MZE+ehy+gRi1Gi0bgdWAF5uKLAAGd9q4AMLoMlHKH+tIz7EGt85XSQxftX2dQLS2cyd0
	8nLeH8At1eJXORSldzqUdJjsVKO8lhw6y2kEpwSTBEzx9tm461cn0B7xtJlyQdWXUS+j
	8tuC3pIeWQn+tup8CwHCcFgn89Z72eYxqutyxRnsbGx+sJCUnl/oTSxdtPOnoFMMgPjn
	RAE5I6rtHFJSxwwtDLvDshAW5dB/IiorRO8zTCMqRYjbve93GnNTQI45CN/7AY15Mcgm
	trvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=6L+ykjVr5sSocnm8FORju3QbjIsI3HqLcMRWBEGihYw=;
	b=rcjhw73kObwDuUUlR7d/p9rOwmL56G0ty69Mg8HKXuxYq46VGISUSJreTI+KCh4hDo
	2SeBjyItcdo0I4vpetlgHkAwMmJpk4qGGVcA5silkoVjDpTXDRi8dUMfEC03c3AIpukc
	mBA3LLel9qKbzBRG0/YaHXS/Qf1DQSI2GKlosCpabGz5d//g/JQ+qC3JZzTPHF7y7pBy
	1Fu6TWI0oGKFkeXCSODEMF6IYfC9FQ/ZnzXa7cBOr/MFx5S7YcWEG2jbJ+k2JqEo7aPw
	vcX8RE6gObofnVRZ/HYGvosl4j+3JtKWZlw7gHqDfZ2Ox/PX8yaMHiWih2Fes7CE3nPY
	SIjg==
X-Gm-Message-State: ALQs6tDlwQw49b8ogY/vKqGl5gUSAkduyhZ8nk4V5Jb/ZVR7jrYMXFFB
	xtxD1t4P8SiE7CPgSVxLH6bRJjy7
X-Google-Smtp-Source: AIpwx4/uCA4/36zl3vwqMPlvadzZ8UaG6qpwcgNMlDzf3ND72cvRXdjjZYELsplAUngNUORyzRGOKg==
X-Received: by 10.99.95.14 with SMTP id t14mr4817742pgb.94.1523667158392;
	Fri, 13 Apr 2018 17:52:38 -0700 (PDT)
Received: from hermes.local ([2601:646:8880:466c:4caf:c486:61ac:d2f7])
	by smtp.gmail.com with ESMTPSA id
	r20sm17012247pff.165.2018.04.13.17.52.37
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 13 Apr 2018 17:52:37 -0700 (PDT)
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <231b0a5a6c0744ee9799b8bedf2c1ab7@sakuraus.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <8ffca19b-aaa1-de11-9e8a-c9cbcde7de6a@gmail.com>
Date: Fri, 13 Apr 2018 17:52:36 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0)
	Gecko/20100101 Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <231b0a5a6c0744ee9799b8bedf2c1ab7@sakuraus.com>
Subject: Re: How to patch a driver in Linux source tree
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
X-List-Received-Date: Sat, 14 Apr 2018 00:52:39 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 4/13/18 11:41 AM, Greg Wilson-Lindberg wrote:
> I'm working on a raspberry pi3 Yocto build from Qt's boot2qt project, 
> it's running Yocto version 2.2.3, and Linux kernel 4.4.50. I need to 
> back port some changes to a file in drivers/net/can/spi. I confused 
> about where and how I set up the patch file.
> 
> I have a linux-raspberrypi_4.4.bbappend file. Do I put the patch file in 
> that, and If so, how do I indicate the path to the file?

yes.

SRC_URI += "file://yourpatch.patch"

also add

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

then create a directory called linux-raspberrypi parallel to where the 
bbappend is and put the yourpatch.patch inside that directory.


> 
> 
> Thanks for the help and enlightenment,
> 
> Greg Wilson-Lindberg
> 
> 

