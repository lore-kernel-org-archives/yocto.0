Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ie0-f178.google.com (mail-ie0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F3C7E008B6
	for <yocto@yoctoproject.org>; Wed,  8 Jan 2014 13:38:10 -0800 (PST)
Received: by mail-ie0-f178.google.com with SMTP id lx4so2687855iec.37
	for <yocto@yoctoproject.org>; Wed, 08 Jan 2014 13:38:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=gAbxkpmgiwJCd193PihtuorgPTrjf+ySwAweQeK1bXk=;
	b=kPhOh0saDRgWKgqQlOimCjSht/YoJNXOqk0R14MB9wuuL3sUgTFwG/lJSOXGQYL7Ln
	1Qx/YNlQprr0cKF42sTRdoH1+zmpuLouZDCKbMuqZFn2hN7f4VTo1bOAyvQvs5h6Zk6C
	XRLchrK1eseTNI1xK1WcZtuIrOVJAY/lYIy19wMO2QxkwsAzMe+Wv6MBrVJoP3As08V2
	H6KN99D7U+aiagAF0aY1aYY0AAD7C0U1zNTANTmppjxQ8Thy+ZVP5GUZE0skiuc8Tj2e
	040wRLR3NGUdZxOh9Scg+r5XWB4pOMOn3zEu11kMnm6jaMgmzGE9ikl53sO8I/5QMdAq
	6IKA==
X-Gm-Message-State: ALoCoQnZnH4TOX5wzrtPMjbE/ysYC4GvBE3ujvwa3vFoLcHErcRD4OshGHuAEaxJQsXgvI5pE+1v
X-Received: by 10.42.4.201 with SMTP id 9mr15689685ict.57.1389217089951;
	Wed, 08 Jan 2014 13:38:09 -0800 (PST)
Received: from [192.168.141.83] (69-165-220-158.dsl.teksavvy.com.
	[69.165.220.158])
	by mx.google.com with ESMTPSA id qk7sm10813107igc.8.2014.01.08.13.38.08
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 08 Jan 2014 13:38:08 -0800 (PST)
Message-ID: <52CDC53F.2050906@linaro.org>
Date: Wed, 08 Jan 2014 16:38:07 -0500
From: Trevor Woerner <trevor.woerner@linaro.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1723630.4SPRZoJkQD@koontz>
In-Reply-To: <1723630.4SPRZoJkQD@koontz>
Subject: Re: Yocto and ccache
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
X-List-Received-Date: Wed, 08 Jan 2014 21:38:12 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit

On 01/07/14 02:50, Søren Holm wrote:
> How to I make yocto utilize ccache - it does not seem to do it on it's own?

I don't think it's necessary to explicitly use ccache since the OE/Yocto
framework already provides a sstate.bbclass which implements this sort
of logic and is designed to work better with the sorts of things bitbake
does:

http://www.yoctoproject.org/docs/1.6/ref-manual/ref-manual.html#shared-state-cache

