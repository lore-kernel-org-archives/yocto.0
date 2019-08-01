Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DB56E00DA9; Thu,  1 Aug 2019 04:30:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
	[209.85.128.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C7D6E00D75
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2019 04:30:48 -0700 (PDT)
Received: by mail-wm1-f49.google.com with SMTP id v15so64290314wml.0
	for <yocto@yoctoproject.org>; Thu, 01 Aug 2019 04:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=aa0YdhWJSwnla250LwWeth3vEXeUZiBYpqD2br8xVUY=;
	b=pEmW4XghwU3uIADaDLMD33xihBqKlHD7PNmp50eWgWmi43Z8j9OAIInznAA2SrsO+5
	+2Tm4wLLVBCajSzGvpUNJBurY+YM2vNsQmNlw6pDike4VzOSrLuOrDvdhogsZrIbG8xD
	lYmgxhrJfhvLTnEQTcE6kXl3D26whOl534WOv9mBx952zY9nfYzkSz2nqLNpcgAYP5PI
	XqWMu7Mj7Nzdh5LJuqgh+MD+c0hFk4nIEKC/3tMakvJwxp9A1tu9DrFwnzVwjIF1P2px
	TrVxNeDpwNMUNecKu/q/Xt9QYgVsdq/lsd+zt4lRDxLxCAGQ+Sb6a6obDHCbvh4qfHVu
	cuXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=aa0YdhWJSwnla250LwWeth3vEXeUZiBYpqD2br8xVUY=;
	b=IlVoOIzghaG9bndEG5izX9w+t3zlvjDbQyxCEMkd+cDaMpfRzH0oF9kJtPnfpEtoIg
	7fOuSWh8/RjjDuHQhMoScmXlG17kN8FWVJ6unzncx7wPAGjQvUrGqHF77doAj4XyVIKA
	DhV0DugDWkJuN/tAjKDJUWRjG4e/3DfomSQ5h42ZPRPQYsv3XLKIWg+WLuX7eL0Xaopl
	EHz35KGY1co7ZryLR344oqVpf+5FM5jHqNm90OuGVNpgAvQMoaf5L3nNaUsz53n7ixOO
	HC11eMgY0u74n9pXQ9LWkaKpSimKayy5aYzhy80Gsa0SiBgKjmIQtQYNEqAnLbAHFw5M
	bawQ==
X-Gm-Message-State: APjAAAUb2U87dj9Ww6SLV4E8pCfaT5oakvlRvmUQYreNqUQL/igetq5z
	VVzyCTcrJzFt9s/XnjSYfCoKxg==
X-Google-Smtp-Source: APXvYqxPLABrVexc2t2/EhUpQrrVKG3I06bXQAygNLysJoVfagOlHI+o1eaKQHDfBXe4lQx1aCblxQ==
X-Received: by 2002:a1c:407:: with SMTP id 7mr122314390wme.113.1564659047405; 
	Thu, 01 Aug 2019 04:30:47 -0700 (PDT)
Received: from [192.168.1.25]
	(host86-161-197-210.range86-161.btcentralplus.com. [86.161.197.210])
	by smtp.gmail.com with ESMTPSA id
	s12sm66618734wmh.34.2019.08.01.04.30.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 01 Aug 2019 04:30:46 -0700 (PDT)
To: richard.purdie@linuxfoundation.org, "Yeoh, Ee Peng"
	<ee.peng.yeoh@intel.com>, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <9DDD2658D1FE414E99172D2DB1E4D04348210BA7@PGSMSX109.gar.corp.intel.com>
	<5cb64dc7da80fdc8b2229b35ca7fe4ed55188622.camel@linuxfoundation.org>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <1b429a41-6521-6528-67f9-52b14fce426d@mvista.com>
Date: Thu, 1 Aug 2019 04:30:44 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <5cb64dc7da80fdc8b2229b35ca7fe4ed55188622.camel@linuxfoundation.org>
Cc: "akuster808@gmail.com" <akuster808@gmail.com>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"otavio@ossystems.com.br" <otavio@ossystems.com.br>
Subject: Re: QA cycle report for 2.8 M2 RC1
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
X-List-Received-Date: Thu, 01 Aug 2019 11:30:55 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On 8/1/19 3:00 AM, richard.purdie@linuxfoundation.org wrote:
> On Thu, 2019-08-01 at 07:30 +0000, Yeoh, Ee Peng wrote:
>> This is the full report for 2.8 M2 RC1:  
>> https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?h=zeus&id=d550d40646e1ca78a4b5d106e1b20831208b4c37
>>
>> ======= Summary ========
>> No high milestone defects.  
>> Two new defects are found in this cycle, both beaglebone and
>> genericx86-64 facing shutdown hanging (BUG id:13461) and ptest failed
>> (BUG id:13465). 
>> One timeout issues observed in ptests was mdadm (BUG id: 13368).
>>
>> ======= Bugs ========
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13461
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13465
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13368
> Thanks Ee Peng, Yi and everyone else in QA!
+1,yes,  many thanks

>
> I think we do need to fix these regressions but they're not serious
> enough to block release of M2, or require a rebuild. As such I think we
> should release this.
I am fine with releasing M2 but make them blockers for M3.

- Armin

>
> Any other feedback from anyone?
>
> Cheers,
>
> Richard
>


