Return-Path: <anton@advancedtelematic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 982C7E00CC4; Wed, 29 Nov 2017 08:04:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05BEDE00C78
	for <yocto@yoctoproject.org>; Wed, 29 Nov 2017 08:04:19 -0800 (PST)
Received: by mail-wm0-f42.google.com with SMTP id t8so7304194wmc.3
	for <yocto@yoctoproject.org>; Wed, 29 Nov 2017 08:04:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=advancedtelematic.com; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=6xIR+RnGgUdfRTETWBANOkGWmWuKT76vXB83VEYD8yU=;
	b=hS7l5FeAGYy8RQrrJf5kR3144NsEaIPTE1hAejNc0Iw5a0J80xO42abiFvPCl7D1yr
	eVSPzC7nR0EO6owgCJmqmr2Qt824+Yhha+SUHHdl4bmoMSXm5I7M3rI4qOQrA0BtYoPL
	c8q+YiGAW90wyVEGaoCUDp3anxkqtmVir0X4s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=6xIR+RnGgUdfRTETWBANOkGWmWuKT76vXB83VEYD8yU=;
	b=ePEOzTcutruDJh7l/qGL12LEudAxyZA9edmdmLvhTh34tfD7XNS6zI8BIHyX0za04Q
	x+mrIe0rfuC4fse2NnM29Ut/+G0+v3MYAXRjP95E5Udw/nszfcozKHrzvKf7uk6gd35s
	Eb2jc80yH33xCdxtgnqsGZVWLfHQtIpYRWzFpkoDz6LB7g9Y76epYhJEC4Mb/L4xX3Kl
	Fnh+wHM133lR/Dz66JSykLoENs+m/VUi4SSDMOCyp1ZsqqgTmNQzdxEpScgQZZm33WXB
	IkcxTbktrsLM7NzFJfaM9u8lwRJVfegI4rAdRqJwxpx5dtawBylCIpJGT8xprmZiW4C1
	Hw7w==
X-Gm-Message-State: AJaThX7/6fmueS2vE5LTsd0L4cjqkOjTGF4Dx1/MvD/WOs1S5oaG78aH
	HsRzKs93UDsrRhRIzySyLJQVgRXnTss=
X-Google-Smtp-Source: AGs4zMYYVo3VM4niBZLVbBC9O1Izufa9d9j8KNHTmDdlOQtM/0DavQtQR0EYlb9frdLkFtQww2CpaA==
X-Received: by 10.80.137.195 with SMTP id h3mr8341703edh.295.1511971458392;
	Wed, 29 Nov 2017 08:04:18 -0800 (PST)
Received: from ?IPv6:2003:a:f1f:7600:c041:cd11:3c89:2665?
	([2003:a:f1f:7600:c041:cd11:3c89:2665])
	by smtp.gmail.com with ESMTPSA id m8sm1813925edl.74.2017.11.29.08.04.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 29 Nov 2017 08:04:17 -0800 (PST)
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	Yocto list discussion <yocto@yoctoproject.org>
References: <7085a873-0594-f4e4-03ba-c72fc156d6c9@advancedtelematic.com>
	<cbe07fed-c51d-d663-4914-6a247171b86e@linux.intel.com>
From: Anton Gerasimov <anton@advancedtelematic.com>
Message-ID: <68140500-7b0d-e7e2-8a6b-7317fb4a082b@advancedtelematic.com>
Date: Wed, 29 Nov 2017 17:02:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <cbe07fed-c51d-d663-4914-6a247171b86e@linux.intel.com>
Subject: Re: Invalidating tasks
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
X-List-Received-Date: Wed, 29 Nov 2017 16:04:20 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

On 11/29/2017 11:10 AM, Alexander Kanavin wrote:
> That would be a gross hack that goes against bitbake philosophy -
> which is that once a task completes successfully, you never need to
> re-run it again, unless the task content (or its dependencies) changes.=

>
> What are you doing in do_A and do_B, and why the outcome can vary
> without the tasks themselves changing? Are you fetching something from
> the network?

Yes, you're pretty close, the two tasks are pushing data to a server and
then I want to fetch the result back to check it's consistent. Talking
to a server as a part of building the image is already hacky enough, I
know. I'll see what can be done, I might just merge all the three tasks
into one.

Thanks,
Anton



