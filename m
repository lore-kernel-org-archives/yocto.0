Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32377E00A27; Mon, 29 Feb 2016 13:26:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FA92E008EE
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 13:26:44 -0800 (PST)
Received: by mail-wm0-f51.google.com with SMTP id l68so7646842wml.1
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 13:26:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=Z1Za0XnzIYViOZ0zc8Zr9QZYf/rlP0lQeLaPm2UaQpc=;
	b=EIcr5quvp82R6unCsr9hFoepvgdpJUn8KsZwxvotgC3GZ6/3ONMc3HaMJFSXcbQgjd
	YVeKxvsDVZOHPad5nVGOwhU33lH4LHkO+K7rwxMhw7XAn8bdxuc5Jch1D3vG5mMI3eIw
	iwQxvgm92l1fIhNgdcNENsRSWO+8YRdQ/6T8TBIaWKNe2LNLoHt4wpMVC16aEgHesiPs
	F2CWQvZXt1wJgtTfcVY/QxdXwcDYosK68/wVQvaRXc6b5diNsQ66iVusH9F8QAFjvX/9
	P+yjv6kzWXgRczgV1IsgcUKa0DiA/YeAQ8x4d+w3sUgz8u2Zey9Ho+6Zd+3UlkzrDnq+
	XyXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=Z1Za0XnzIYViOZ0zc8Zr9QZYf/rlP0lQeLaPm2UaQpc=;
	b=hyMqISJQNrTVH/xIgK7tf71CEUW8IVe+rkyGmT6zrq06wR+jAdmdSZE2o+8ECMzP1B
	8rPVlbcgK5A+KSNAqeSa3xixDM8TMxcN7Bij2kVxDoQ5sR5lx9blRcCyXvCiYdGFv+Yq
	sFmaRbYlxfo6iysPfp1zsS/lrh2V7/TqsLOYBn8g+/It7ew9io+TteKyHgYEHK8rjpj/
	5wAK0RKqCX+5tfWNYoHVBenhCj3Qj+biltwaokZszoKxSrI6eOhHImf05lvhF7veg9ad
	4jqbyLiiw3CAQ8p1Wz61t4NiZQoCo5wBgorbETnyLpHC57tpP/dBNgPnY1ZiUvetRBYp
	TkWw==
X-Gm-Message-State: AD7BkJIwsyzokH2Otf5XvJhXCTud1sItahQOZrJlrf+Enux27m5WRaAtieaxW45uvcgrUg==
X-Received: by 10.194.187.240 with SMTP id fv16mr20446036wjc.53.1456781204191; 
	Mon, 29 Feb 2016 13:26:44 -0800 (PST)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	av3sm27784176wjc.44.2016.02.29.13.26.42
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 29 Feb 2016 13:26:43 -0800 (PST)
Date: Mon, 29 Feb 2016 22:26:41 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Petter =?iso-8859-1?Q?Mab=E4cker?= <petter@technux.se>
Message-ID: <20160229212641.GJ2087@resin.home>
References: <1456667173-28743-1-git-send-email-petter@technux.se>
	<1456667173-28743-3-git-send-email-petter@technux.se>
MIME-Version: 1.0
In-Reply-To: <1456667173-28743-3-git-send-email-petter@technux.se>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v3 2/6] .gitignore: Ignore .swp files
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
X-List-Received-Date: Mon, 29 Feb 2016 21:26:51 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Sun, Feb 28, 2016 at 02:46:09PM +0100, Petter Mabäcker wrote:
> Signed-off-by: Petter Mabäcker <petter@technux.se>
> ---
>  .gitignore | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/.gitignore b/.gitignore
> index 1677b58..f235765 100644
> --- a/.gitignore
> +++ b/.gitignore
> @@ -1,2 +1,3 @@
>  build*
>  *~
> +.*.swp

Merged to master. Thanks.

--
Andrei Gherzan

