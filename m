Return-Path: <robert.berger.yocto.user@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F05BE00D68; Tue, 24 Sep 2019 09:32:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (robert.berger.yocto.user[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.43 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com
	[209.85.208.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85F04E00B1B
	for <yocto@yoctoproject.org>; Tue, 24 Sep 2019 09:32:38 -0700 (PDT)
Received: by mail-ed1-f43.google.com with SMTP id v8so2425861eds.2
	for <yocto@yoctoproject.org>; Tue, 24 Sep 2019 09:32:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=62vJVMJzgYOItS3IGLWnlU8Oxayr9oZg1739aqEWu1A=;
	b=I8BBmSAs/Ea2Mxwvuqw+bOXyTz21Ne3l/n2JGNc7HlctoMvaIHwkq1UT8GaKkQomjx
	MvyzCcX53dGD3JUpwU/lL7IUyMJXk224F/f84dZjXhL4nMUTIrNYkWtHHk6RmjL7M/n9
	53VdzUW+9tTaO2PffIR7LyKP0tagRmdvcW4wbZDe4/ubMsu+L9MyuC2G3IDRXUZ/XCss
	v4uogaPqvMYVIIu6hvGMsxkif9B+vCG/uUiRVVBPR/8mGarkm12aw9dNa41UdKfTUJ7q
	IoHpojJheQJ9va0noBGUUG2BrQMcm8yHrdLGLWjOYBQc2NmvRy/M6x+kLWdpnX52kaYW
	Ik8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=62vJVMJzgYOItS3IGLWnlU8Oxayr9oZg1739aqEWu1A=;
	b=nXYlZcutmGfNrHVy2p7B77IXsOaYXPgg3k+rI3b6kdWSemCrkLnovnnvEjqv/DLZqu
	LwRTZqmRAIEHtv9A5EBBY7ubh84LtrWD/pIEsnRudk3FVaNgdtJnC49Lv6Hg20qB0sD1
	aplwfRbf5yZa+f4snaCZP6Ch0ipjqW/wInfmbe0cSomSCZQv0Q5eHCOsCZIF17UKBa90
	EhJ2I8EBbiLXsdaIBuWploTqgyndj6JMQGQ50o+r1oSp3+mLIkvLXaSvDwb4JfCsikyC
	4UAlnzFEZooJmcoe4nZJkjYbnOjvR8AarTG6gqSnhGZ/6Z52SFcX0k0+dgKbMDT+CX2j
	dcxg==
X-Gm-Message-State: APjAAAUq16u3wPzZ6NPVQ2vm+nyo8l7nbXTtEF9S6hXNMM3QagAQrtYy
	oJM10HTTwgi/jVAlP3CtT2w=
X-Google-Smtp-Source: APXvYqyFZscB3YhUKwGXzUecVkdBDsSIRNaRSMNnVLvxDiPny9Nc63jLxJHMVSPCo22ziUj3aBZLUQ==
X-Received: by 2002:a17:906:af57:: with SMTP id
	ly23mr3299528ejb.269.1569342757521; 
	Tue, 24 Sep 2019 09:32:37 -0700 (PDT)
Received: from [192.168.42.52] (cable-static-24-202.rsnweb.ch. [88.84.24.202])
	by smtp.gmail.com with ESMTPSA id
	g9sm257306ejj.51.2019.09.24.09.32.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 24 Sep 2019 09:32:37 -0700 (PDT)
To: Yann Dirson <yann.dirson@blade-group.com>, yocto@yoctoproject.org
References: <CA+4=imYTN+JCcHZU4eUfkur1wxwDRNnQzg6Y+W+OUrHar0R9zA@mail.gmail.com>
From: "Robert Berger@yocto.user" <robert.berger.yocto.user@gmail.com>
Message-ID: <72612a1b-54b8-364d-ade2-106d51ccb91e@gmail.com>
Date: Tue, 24 Sep 2019 18:32:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CA+4=imYTN+JCcHZU4eUfkur1wxwDRNnQzg6Y+W+OUrHar0R9zA@mail.gmail.com>
Cc: bunk@stusta.de, Simon Spannagel <simon.spannagel@cern.ch>
Subject: Re: gitlab-ci helper scripts for OpenEmbedded builds
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
X-List-Received-Date: Tue, 24 Sep 2019 16:32:39 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

On 23/09/2019 23:48, Yann Dirson wrote:
> Hi all,
> 
> We released our scripts to help in setting up continuous integration
> of a yocto-based project
> using Gitlab-CI.  You'll find the repository at
> https://github.com/BladeGroup/gitlab-oe

I am currently not too far away from cern.ch ;)

Thanks!

Regards,

Robert


