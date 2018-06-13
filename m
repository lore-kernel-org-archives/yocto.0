Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 353ACE02E10; Tue, 12 Jun 2018 22:31:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f66.google.com (mail-pl0-f66.google.com
	[209.85.160.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4C16E02E0D
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 22:31:23 -0700 (PDT)
Received: by mail-pl0-f66.google.com with SMTP id az12-v6so829650plb.8
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 22:31:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=W4HUw/qJavDjj3+WAqfd8wKH9MfOC9LJJsuO56Fcypk=;
	b=YL3sSQTIy7cK0bu8gzvOZx0HZ+FhoKvjFyuDpwZ9XAnIwSt46owZR7r1/5KoY5cv30
	MG73pcwf2Us+6p4g+0Vb3nZ7pwcnJIgpPZCH8z/Qm3+FZ/5B8ldmXPlg/hfMzbjCQy8c
	Lf/zH1v+Ft3GKNTE56quPtDsEC9jDNGPzUrYDzEJcB8H2DwbCT680dPtSMeoQtzqESti
	OtUJu4kQWT9t1dKBqtSfFy1F2HvDLiZcPTXbyWONiqN88aV6qJmIc0RIUBmh6Mb0hQPQ
	4ytJyA6k8iBywR1r3AxTuzn2ehMUr3odaIim1W5okBf4B0mj8H2ifS3WogPVs1NcGuHj
	ROtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=W4HUw/qJavDjj3+WAqfd8wKH9MfOC9LJJsuO56Fcypk=;
	b=A/LXQn2DVRapEO7DBj3VsfRdDJM+TAfCgYCz8dgP6tc241NZEvtcKLJJeXKAsTd6ox
	0jF5pT86wofGCzhVf94dhxN704ft3r9R8QWzcvwKwYWiJq5xVZro2Z50DkNs8iB0Hlmd
	BzrCz/WpUbmSy6R2JgEyb5k9FRLOn1TY9SXffbn+JhBdNgMfZcY7aJWEIIicIvcpjxcx
	WUTYK+ild9Cp1aiBeajcBYBXIQl6H82VAbXV15LczswHluDo5Sl8P1xumzTa0ROOy5sF
	ESmPFzHD54gASUQjFmwmlY2i4EEDguyE+3yhmDT85jzK/36ao3dfTS92uL++5GcR8sFs
	sVxA==
X-Gm-Message-State: APt69E1VuMPRO/TnR3bwQtG2V/YnhzRNs9UqiOhaJlAUWAjQtgO2Asmf
	S1SmXnBHExWGMbcAwRPdxQo=
X-Google-Smtp-Source: ADUXVKK1t7lgAQ3nrRo1HIu3BPRsg4+Ekz9z2djEA1o9ZARP3Ays05BE+Fqv/qWAwMuEWtu5gaiRlA==
X-Received: by 2002:a17:902:7896:: with SMTP id
	q22-v6mr3494982pll.243.1528867883288; 
	Tue, 12 Jun 2018 22:31:23 -0700 (PDT)
Received: from ?IPv6:2601:202:4000:1184:d10c:bb08:f0ab:ea67?
	([2601:202:4000:1184:d10c:bb08:f0ab:ea67])
	by smtp.gmail.com with ESMTPSA id
	l15-v6sm990383pfg.88.2018.06.12.22.31.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 12 Jun 2018 22:31:22 -0700 (PDT)
To: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>,
	"'yocto@yoctoproject.org'" <yocto@yoctoproject.org>,
	"Jolley, Stephen K" <stephen.k.jolley@intel.com>,
	"Eggleton, Paul" <paul.eggleton@intel.com>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>
References: <9DDD2658D1FE414E99172D2DB1E4D04335E64BD8@PGSMSX109.gar.corp.intel.com>
	<9DDD2658D1FE414E99172D2DB1E4D04335E65208@PGSMSX109.gar.corp.intel.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <146c0772-4788-02f2-2639-73095398f8b1@gmail.com>
Date: Tue, 12 Jun 2018 22:31:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <9DDD2658D1FE414E99172D2DB1E4D04335E65208@PGSMSX109.gar.corp.intel.com>
Cc: "Kirkiris, Nectar" <nectar.kirkiris@intel.com>
Subject: Re: QA cycle report for 2.4.3 RC2
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
X-List-Received-Date: Wed, 13 Jun 2018 05:31:24 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US


Ee Peng,

On 06/12/2018 08:22 PM, Yeoh, Ee Peng wrote:
> Hello All,
>
> This is the full report for 2.4.3 RC2:  
> https://wiki.yoctoproject.org/wiki/WW24_-_2018-06-12-_Full_Test_Cycle_-_2.4.3_rc2
>
> ======= Summary ========
>
> The QA cycle for release 2.4.3 RC2 was completed.  Team had found that virtual/kernel build time had increased by 10% and 18% accordingly on Centos 7 and Ubuntu 1604 performance machines.  Team found that libxml2 pTest was failed.  No other new bugs were discovered. 
>
> ======= QA-Hints========
>
> QA shows no major bug.
>
> ======= Bugs ========
>
> New Bugs
> [1] Bug 12782 - [2.4.3.rc2] libxml2 ptest failed
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=12782
there appears to be a fix in sumo for that bug.
http://cgit.openembedded.org/openembedded-core/commit/meta/recipes-core/libxml?h=sumo&id=5cf92ca436e1a1ba60fec8b30b6cb3cfd4842bc8

thanks for the report.
Armin
>
> Regards
> Ee Peng 
>
>


