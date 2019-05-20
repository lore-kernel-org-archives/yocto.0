Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BAC63E00D47; Mon, 20 May 2019 11:36:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.181 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com
	[209.85.210.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62903E00D45
	for <yocto@yoctoproject.org>; Mon, 20 May 2019 11:36:42 -0700 (PDT)
Received: by mail-pf1-f181.google.com with SMTP id z26so7638871pfg.6
	for <yocto@yoctoproject.org>; Mon, 20 May 2019 11:36:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=Cu+LavSIrahQo/moCk1srwsf4lWPd3Wxip0EpZ+c3vk=;
	b=CVcaO/6w87+KQ1XSlInSR6Gmb51SvQ9C9juzrE6cUxPACVEbcaCp1FwzS3fHnvEI6v
	jrW6nE7Trn175j10SEfeonrCP6V1X0DORMGyj5Ikk8x/SmD0gYwj8NUxymRimno5f4mq
	r5nRM8fSJUuTtzLINzS5dNHTYtmFsSbjtAjza74KpaWaEajddc+H2615Lp8TRXzviyih
	s9lbcTkZjn1l3UUHo/laWRHGjAKfMRNLAFBl0cYH5vPZmS2rfVjN0FyArazhKVaMpDNa
	mJTv90TkV/tc+5SyhG5dXOC9tKRUbBRcvhAK9NjyBLkCGC9GR9RfRnwbMaSdXYesPQFM
	Ec8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=Cu+LavSIrahQo/moCk1srwsf4lWPd3Wxip0EpZ+c3vk=;
	b=tkx80CWGdQPxicvq49q3Aff4+hky9SP7zlZpkfNpoMff8aqnQzb7A/mGZTPgn2OyXp
	q115dVsHRLVqMYQw+eUX6kiIWpAneAdk/Yrjq0sVVetgOha0LnVpCoCK+pRxtUiVrpSJ
	N5GkaelMcuiPix9s/FBgR9gdJkmYwecVZRCaWn22+vSxoQpLJaWZasTixLKds0Bbt5rF
	TuawPScbW6qFaEX9Sq/6vFn1uxYO7bz8B4Ft0JhoQN86oT+yG/ZoD5NHmKvmaxGK+Cla
	HD6tRmzZEAWeMxdx8kLzd9sh8CGru6lBfqbJKrSEAcTQaE0rzD9e4UwisL/2cTCGlhJ9
	1jmQ==
X-Gm-Message-State: APjAAAUOzxbn2w904UHxuPcoDA9faabaBAQRKi95U2J3gu7V6TnAdCwx
	gQIebsI3PUp0AoVDoW7CU1mAKHtaf3Q=
X-Google-Smtp-Source: APXvYqz6rhnohq7GLJ39TxLNRGp8TSt2YrBmwHBHsCnY4RktL0KjkO7y3a5sbBLl23+7OFyE+F4O7g==
X-Received: by 2002:a63:4045:: with SMTP id n66mr62554818pga.386.1558377400615;
	Mon, 20 May 2019 11:36:40 -0700 (PDT)
Received: from hermes.local ([2601:646:8500:6bc6:74d7:3fa5:f6a5:ec10])
	by smtp.gmail.com with ESMTPSA id t11sm26787pgp.1.2019.05.20.11.36.39
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Mon, 20 May 2019 11:36:40 -0700 (PDT)
To: Davis Roman <davis.roman84@gmail.com>,
	Yocto discussion list <yocto@yoctoproject.org>
References: <CACfi_Z3ZAOH1MQ7QY0AHKVaNdsFV_uooYJF4xbB4nYuOS8fy7Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <1468b160-a0fc-5d4e-ea43-3fb88b28ff10@gmail.com>
Date: Mon, 20 May 2019 11:36:39 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:67.0)
	Gecko/20100101 Thunderbird/67.0
MIME-Version: 1.0
In-Reply-To: <CACfi_Z3ZAOH1MQ7QY0AHKVaNdsFV_uooYJF4xbB4nYuOS8fy7Q@mail.gmail.com>
Subject: Re: Upgrading to Sumo triggered issue with python3 autopackaging - "ERROR: Nothing RPROVIDES 'python3-signal'"
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
X-List-Received-Date: Mon, 20 May 2019 18:36:43 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 5/15/19 8:28 PM, Davis Roman wrote:
> Hello,
> 
> I upgraded to Sumo(2.5) and now bitbake is complaining that nothing
> rprovides python3-signal.
> 
> ERROR: Nothing RPROVIDES 'python3-signal' (but
> /home/worker/building/sources/meta-bluetooth/recipes-bluetooth/bluetooth-app/bluetooth-app.bb
> RDEPENDS on or otherwise requires it)
> 

this is not provided by python3-core at runtime so your RDEPENDS should 
change from python3-signal to python3-core


> After some searching I found that this is related to the restructuring
> of python3 packaging in Sumo
> (http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=b6777878ff03c3e956386020a19d11c875c835ae)
> 
> So according to the instructions in the above commit, I'm supposed to
> first create a manifest file using:
> 
> $ bitbake python -c create_manifest
> 
> and then the json file appears to get created:
> 
> build/tmp/work/armv7ahf-neon-poky-linux-gnueabi/python3/3.5.5-r1.0/python3-manifest.json
> 
> After a quick inspection of the created python3-manifest.json, I see
> that signal.py already appears on the list.
> 
>      "core": {
>          "cached": [
>              ...
>              "${libdir}/python3.5/__pycache__/signal.*.pyc",
>              ...
>          ],
>          "files": [
>               ...
>              "${libdir}/python3.5/signal.py",
>               ...
>          ],
>          "rdepends": [],
>          "summary": "Python interpreter and core modules"
>      },
> 
> Assuming that nothing else needs to be done, I then proceed to again
> bitbake my application but unfortunately the original error persists.
> 
> What am I missing?
> 
> Thank you,
> 
> Davis Roman
> 

