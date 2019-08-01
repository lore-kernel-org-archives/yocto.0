Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F901E00D75; Thu,  1 Aug 2019 04:08:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
	[209.85.166.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EC72E00BEB
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2019 04:08:07 -0700 (PDT)
Received: by mail-io1-f65.google.com with SMTP id j6so23575003ioa.5
	for <yocto@yoctoproject.org>; Thu, 01 Aug 2019 04:08:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=E0OluRvwLBJ+z82q5sfU1Tor3xFPa9lgrtIVkKYdrw8=;
	b=BIFdhg5rG8HxQAW3BJh7H3N26+QjulAyi8Kc10SSbCU9EidoxtnxMYJLMvV/tE0yvh
	jGVGNEhiJ7SO+PAzW1VAaOane1/HwPDYu2YyeFspPAx4piCK1zlbSw/pYcT/U0YxwuDS
	XWAjODHiLg+Hiv6g2VG8iK8t4BcWkUnUOMtkYACla3G+Q8CZpQDc56MnwHfOSVWbkXMa
	RbVY70vKiDuFQxr5c301qPnS7tzDt88aRVFk44MwgO52xB1FJ525TIYFJ4QzuW5AYzh9
	jl8a7SfkLxO982ExQva1Pzpniy2qlDTgLuCCM9PDN8FuXlRvi7TUfY5yW9pQiJpgldeh
	D6Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=E0OluRvwLBJ+z82q5sfU1Tor3xFPa9lgrtIVkKYdrw8=;
	b=ONQ1sPVzrzi4cLxH8EGxYvkevCZ5khOGdGuBLfL7wBVJRpwqCO2XCSjGi0T/iJkRF9
	fOE02lbEkx0x2jdL96c4plV6+TbR0ZDc4gJED3vtO67FRQ4p01p2zNiOyDZt4FsVE/Oo
	F9/N/re0UGKUVGUamhSh8V9J9wF8GXBLpFIjma5n3W2LfI63AkOEVIf94EBO3ZFQh55K
	f81X8vE95Hn7Ckp2FCsguipfb8lNYDOkIyvfNpS2ve1GYtTbXfut34MskIuBTRJjOiCu
	wV2WtP8eFouXzPEm9Cy+gFRNFshG6pEQLxJWWCWWzcYffTgjnGndAmNwXzFc3dG1tRKz
	cH6Q==
X-Gm-Message-State: APjAAAU7fQ3BWtq9GuVHLNbvtYw4sJ5pfj5ErY4ILbt9nWsAKeyvTtea
	pqG4dmgoin0sPs4DmYeN151QUgaGmGAP9DBUfH9tzXvmerM=
X-Google-Smtp-Source: APXvYqwqH3rx3qhn7aCfqkTB2GeYI9W8XHj62x0j4V2vl1LQ+JX1zK7TVRgfeusWHFwwPdEoYey4iuQYDE9HyHPtpYY=
X-Received: by 2002:a02:cc8f:: with SMTP id s15mr128092868jap.94.1564657687356;
	Thu, 01 Aug 2019 04:08:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP;
	Thu, 1 Aug 2019 04:08:07 -0700 (PDT)
In-Reply-To: <f881304f-668d-01c6-65ec-c26cf82199b5@windriver.com>
References: <CAA=hcWSYrjxA8K1jURiiwpcY5pz6zb-cb6j7R9sOTM-831-BBQ@mail.gmail.com>
	<f881304f-668d-01c6-65ec-c26cf82199b5@windriver.com>
From: JH <jupiter.hce@gmail.com>
Date: Thu, 1 Aug 2019 21:08:07 +1000
Message-ID: <CAA=hcWR+c=am2SHqRr3tUeMShLkzB+HrD2UBqhDwvK9ViyVHnw@mail.gmail.com>
To: ChenQi <Qi.Chen@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: Make the service the last run in boot
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
X-List-Received-Date: Thu, 01 Aug 2019 11:08:09 -0000
Content-Type: text/plain; charset="UTF-8"

The application requires network connection to communicate services
via Internet, it could only work if the network connection is ready,
so I really want to know which system servuce run at last I could put
it in the After statement.

On 8/1/19, ChenQi <Qi.Chen@windriver.com> wrote:
> On 08/01/2019 03:37 PM, JH wrote:
>> Hi,
>>
>> How can I find the systemd last run service I can put it in my network
>> application After=<last run tartget or service>?
>>
>> I need my network application service to be run at last in boot, I
>> made After=connman and Requires=connman.service that did not work,
>> always failed in boot, I have to manually restart the network
>> application service which won't work in field operation.
>
> I'd suggest you find out what you network service actually require.
>
>> Searched from Internet, there is a blog Systemd: Run it last to create
>> a custom.target After=multi-user.target, and put my network
>> application service WantedBy=custom.target, that works well, but it is
>> a little bit cumbersome to configure customer.target in Yocto bb file,
>> enabling the customer.target is called systemctl isolate
>> custom.target, the /etc/systemd/system/default.target link needs be
>> changed to from multi-user.target to custom.target. I am not sure how
>> it could be done in do_install, appreciate your tips.
>>
>> Thank you.
>>
>> Kind regards,
>>
>> - JH
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

