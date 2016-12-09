Return-Path: <kristian.amlie@mender.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9053EE00C5B; Fri,  9 Dec 2016 02:25:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC9CDE00B96
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2016 02:24:58 -0800 (PST)
Received: by mail-wm0-f54.google.com with SMTP id f82so20080545wmf.1
	for <yocto@yoctoproject.org>; Fri, 09 Dec 2016 02:24:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mender-io.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=DaneZRp2mjecpi/h6t8h4658RsRcpqORivZab1Vemb8=;
	b=fYRj5YLfDdbrjDaJWB9FHYVA7WqHEGl/R/3tljoOVMLDyDBJihA/AWdsqB38Vtxji9
	oJN2uzfIt4RQSFxKQQs/Cjsr9xoqXaszTgA8zOb6pcUiSCfr/y9Sd0skvKKASaW9gMDh
	e/UejfxugTLvc02b8rxcw+aYKIAD49XBoldKAK9XwjqKESnF6xugyW0VD9BjQQxeyao9
	GY3sFoXP7kodoWbHet4oSpdMMzjhskqyGBVRBarBD5nK8mLfiD8Ux9JR/lUHyq+iolQy
	lZGvCxbz4ytq35xoQHAvDhsIAZpW7Bw4qdAdDsnWE5PifPpLShPD2RZ8qxCVKlUwZsk/
	rqCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=DaneZRp2mjecpi/h6t8h4658RsRcpqORivZab1Vemb8=;
	b=g+SxYYvDQgShpLqLFSmuuZopjcuwy7WxnFPzuU2dn7t6/iQVwvGST2uupW3JFxN7T/
	OBMKuhDLjj6EP9gTTEaF1USxsLBgH1PsrKvjpGjskCAbuTGftuOUvj040mp8V9boSNiG
	qSkm8NvXRJERm25XH5Hd6z6iJbvcCyFGGZ4EY+a/AlY0y8w0UTkhxrNyGO0cqnJbUOdP
	Axb2trOEydDUvmoy2mHsa0oVb7SRPQa79wHdLSoG4zAGwRe1X3yL5EyYsG4njtZeyOxo
	COiVzUfbPyv6xzFV3ruhhDZntyQJ2telNovaM6807N6fki0kJM3mxVi0RS5XYQ4E/kCD
	4iPQ==
X-Gm-Message-State: AKaTC03tjEePBKkQ5PIAfVEanFr5JW3iWwflSYc8wtAzFJ0HmJLrieH+uRjXQ3Zpel6pTw==
X-Received: by 10.25.206.13 with SMTP id e13mr27510171lfg.38.1481279097104;
	Fri, 09 Dec 2016 02:24:57 -0800 (PST)
Received: from [10.25.0.170] ([195.159.140.90])
	by smtp.googlemail.com with ESMTPSA id
	z9sm6474160lja.1.2016.12.09.02.24.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 09 Dec 2016 02:24:56 -0800 (PST)
To: Ed Bartosh <ed.bartosh@linux.intel.com>, yocto@yoctoproject.org
References: <1481201650-13695-1-git-send-email-ed.bartosh@linux.intel.com>
From: Kristian Amlie <kristian.amlie@mender.io>
Message-ID: <5dcc694b-0fa1-058c-c7a9-7eb5bd4075e0@mender.io>
Date: Fri, 9 Dec 2016 11:24:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <1481201650-13695-1-git-send-email-ed.bartosh@linux.intel.com>
Cc: scott.m.rifenbark@intel.com
Subject: Re: [PATCH] ref-manual: New WKS_FILE variable glossary entry.
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
X-List-Received-Date: Fri, 09 Dec 2016 10:25:01 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 08/12/16 13:54, Ed Bartosh wrote:
> +        <glossentry id='var-WKS_FILE'><glossterm>WKS_FILE</glossterm>
> +            <info>
> +               WKS_FILE[doc] = "Specifies the name of the wic kickstart file."
> +            </info>
> +            <glossdef>
> +                <para role="glossdeffirst">
> +                    Specifies the the of the wic kickstart file that is

'the the'?

-- 
Kristian

