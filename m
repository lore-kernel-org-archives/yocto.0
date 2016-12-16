Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F4A3E00DA5; Fri, 16 Dec 2016 09:29:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f169.google.com (mail-qk0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9033DE0070F
	for <yocto@yoctoproject.org>; Fri, 16 Dec 2016 09:29:48 -0800 (PST)
Received: by mail-qk0-f169.google.com with SMTP id t184so43640796qkd.0
	for <yocto@yoctoproject.org>; Fri, 16 Dec 2016 09:29:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ej6Qwm910rQnuaMMqWDWp8bomFiUFK67KMLU2dAz+eg=;
	b=F0IJslDa+NBAzIBSDeuBE8QvzYT5B5xqtLOmapC3WF8oIIJeGjE/q7PCA4CeERlbu+
	6v7AVAGe09f94JbRyJ7NwSBR4Qez2C+I2t3sN9CW1/U9slL/vCUC3Sc+EhKQuH4TBV0R
	58zwGG2qxCzbw9HbxcAFnQUQv0jf+fqi8i7RIgnzljkfn5uQNBOkPyFmQKvRCszZSVOk
	Hf+4K6B2GOVFhF9/UW4oqq5kJjQaABsisA7vEgQPZViyAu5mOX2PgxNugUR5W5CLDAMJ
	FrBw/8UbPvxewJRVYIeZWMgIOE7pQnC4bc2IrHH3QpVLksCK9RD7/q7Hvh/LMlFdogbf
	8otA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ej6Qwm910rQnuaMMqWDWp8bomFiUFK67KMLU2dAz+eg=;
	b=Bw2Ti8X+/oYXMoCGT8n6YIh4X83i4+tm/QN4XX9YLH3AgxcdPS5M2DfkkPH6+kBZ+2
	iN4hDiDVaa1A4FLQVarbhFmWgAcZT1vMQhixmOoNgpVJqKbMklezppl2U+WhHXSIpFyy
	z3Ni058mzm4l30LZXsMau7DfZ306Y6zQBWUfULfZFELh6PVxKBC7AxqEzvvPhiRBjTTV
	xHGCTpJesHJpR7/2sNas7WRcLMSayQPfOlrggE3csMyjKIM0ouC2ZjTzc+2Y2TwqkK60
	nqUaAhg+GWuUqmiu5n+8BjmWniuweMyfoXwJkSJL8rVJqPhcl3uCEL1qiTkSh+94hc4u
	Gw4g==
X-Gm-Message-State: AIkVDXKUqAILWiJ/4u7hL3z/cHG7m5I/cJuF4CdOc2awIdpYFJIQUv6gNVqqmUR5E0HpRB1Kw5bDFZa6cCOQPw==
X-Received: by 10.55.104.141 with SMTP id d135mr2304536qkc.243.1481909387388; 
	Fri, 16 Dec 2016 09:29:47 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.88.21 with HTTP; Fri, 16 Dec 2016 09:29:46 -0800 (PST)
In-Reply-To: <E47AA1F4-25C4-4B12-AC01-44F803A817B7@gmail.com>
References: <CAF3SDA5aT3hw-52qMVe+ZLgJ2ZSBv1MTPPdTru=u7aoPUgR7Ow@mail.gmail.com>
	<E47AA1F4-25C4-4B12-AC01-44F803A817B7@gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Fri, 16 Dec 2016 15:29:46 -0200
Message-ID: <CAF3SDA6DVucTaqyC1L3_q2gtvZJjieaszjmSSEkJThYn_tiVsw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: distutils break my shebang, what to do?
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
X-List-Received-Date: Fri, 16 Dec 2016 17:29:49 -0000
Content-Type: text/plain; charset=UTF-8

Well this is what I'm already doing, for target, nativesdk and native...

do_install_append() {
    sed '1c\
#!/usr/bin/env python' -i ${D}${bindir}/myscript
}

Should I use do_install_class-nativesdk_append instead?

Regards,

2016-12-16 15:04 GMT-02:00 Khem Raj <raj.khem@gmail.com>:
>
>> On Dec 15, 2016, at 5:49 PM, Daniel. <danielhilst@gmail.com> wrote:
>>
>> Hi,
>>
>> I've been trying to install cxxtest to nativesdk. After done I went to
>> run`cxxtestgen` and got a "bad interpreter" error from bash. I look at
>> the script and there was "#! python" at first line.
>>
>> I know that this is something that distutils does. I also know that
>> SDK ships its own python interpreter. So what is the right way to
>> approach this problem?
>
> sed it out to right location when doing nativesdk build.
>
>>
>> Regards,
>>
>> --
>> "Do or do not. There is no try"
>>  Yoda Master
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Do or do not. There is no try"
  Yoda Master

