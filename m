Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECFCBE00A9B; Wed, 20 Sep 2017 22:15:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.48 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.48 listed in list.dnswl.org]
Received: from mail-pg0-f48.google.com (mail-pg0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E0B5E00A9B
	for <yocto@yoctoproject.org>; Wed, 20 Sep 2017 22:15:11 -0700 (PDT)
Received: by mail-pg0-f48.google.com with SMTP id i130so2950720pgc.3
	for <yocto@yoctoproject.org>; Wed, 20 Sep 2017 22:15:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=OCVHOdti6P4YpOqIy+iRdajlNV9mGXyR/ub8PGlwQbM=;
	b=NTbYBsxrvt5jtOJf0mLSN5XGbRBIzpOIMO30otMIP3IZkkagwaYvddDmwHxlUVF7J5
	HD0zTSuXu4f3s9O2JK/ls4R2WqDDhKuFceVLiXmj9EIBwE1USrAJDzou1I1K3JLr6jw8
	eJ54/VMQKleZYD+C2ZPgpiZ4Dn3jihr106xCJHKG/oPvVwiFRJBmedxsh+qztZAf/x3O
	UYj6HV7NNL6vX+LBz13TkguWR9zG+WcQcQ1CD6IV0UX4z2hwWnxnlVUVnEaLWj78EmrO
	wbwoFVcsOzv2zA+RmTsu4ZtfPqyq80x23OIpE8UJMZpKcLBVh5F4rWfs9Wcn+aE98Xmv
	mCoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=OCVHOdti6P4YpOqIy+iRdajlNV9mGXyR/ub8PGlwQbM=;
	b=COouEFNL+7ydcQDUOCZGAUrW906pA2DZdZd7pveuZuh1deQ3ZKqzzmUvMW3+IC5RCK
	gejECCmH1i3rLhNi64NxSTbBIFZivXFh6DtihipKN2LQyR88Yj8MlF+GPTsL7Gkk76F3
	jC6eLOTtKUgkY3ZktT3ielA2Tb/lRYF2Owd/E3l67zpkBdDUTDaRg2j59+Rx78PkaEtB
	drqg7TFwV7UQgYrhpf7B7M6Aqd/jcqo+bWtLfqqhee7eHsU+IBuxnJYSoJu74vTSBIWS
	tjJgeimV764tuu7yS/GDW2Waf18QwQt+9kWQVhMa4OnQUM8YO0hixrM/E/GZRBCXi3bD
	3TNQ==
X-Gm-Message-State: AHPjjUjLweaxPsvzdi1lj9OU9OOXZdXT93wNE7PJpBPphO7QHvHz/TX0
	IXuF4M2/9OQEI9PlU/sSTs+UxVhi
X-Google-Smtp-Source: AOwi7QCokrzfqau6Kj1FwdDciPyhGgvq3aikUSjkUuQTn8DU8dGve/wlpuRbRIGORPbMCKvxZ1inSg==
X-Received: by 10.98.73.197 with SMTP id r66mr4587862pfi.242.1505970911107;
	Wed, 20 Sep 2017 22:15:11 -0700 (PDT)
Received: from Khems-MacBook-Pro.local
	([2601:646:8882:b8c:84ec:30f7:51fb:c666])
	by smtp.gmail.com with ESMTPSA id z26sm959288pfa.49.2017.09.20.22.15.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 20 Sep 2017 22:15:10 -0700 (PDT)
To: Takashi Matsuzawa <tmatsuzawa@xevo.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <MWHPR01MB32939418BEF2C9C72FE13D57B6660@MWHPR01MB3293.prod.exchangelabs.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <386119ba-a8ca-ccc6-0dde-26c01edc1c35@gmail.com>
Date: Wed, 20 Sep 2017 22:15:08 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:56.0)
	Gecko/20100101 Thunderbird/56.0
MIME-Version: 1.0
In-Reply-To: <MWHPR01MB32939418BEF2C9C72FE13D57B6660@MWHPR01MB3293.prod.exchangelabs.com>
Subject: Re: "(-)"??
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
X-List-Received-Date: Thu, 21 Sep 2017 05:15:13 -0000
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 9/20/17 8:18 PM, Takashi Matsuzawa wrote:
> Hello.
> I am seeing some of the recipes contains lines like below.
> 
>> COMPATIBLE_MACHINE = "(-)"
> 
> Sorry being novice, but what is the intended effect of this line?
> I can see submit comments that this is for blacklisting but I am not
> sure how it works.  It simply means a '-' letter?

COMAPTIBLE_MACHINE uses regexp syntax

