Return-Path: <alext.mkrs@gmail.com>
Received: from mail-ee0-f51.google.com (mail-ee0-f51.google.com [74.125.83.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14704E00AD0
	for <yocto@yoctoproject.org>; Mon, 17 Mar 2014 12:21:15 -0700 (PDT)
Received: by mail-ee0-f51.google.com with SMTP id c13so4469591eek.24
	for <yocto@yoctoproject.org>; Mon, 17 Mar 2014 12:21:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=i86dF2Q+VOUZV2qrtqMYB0ytn73PzcQ7A5LulYtQUUc=;
	b=HpyhfrqQrN2cW/EOz7JimF5fmRW1OgAf8FQR7rcV1g5UyxJTpBjVqCZXPzccMJQSq5
	S22aZp/zOFHf0ml34M3YX26tObN8igp5hr6zdMD9lcrQd2gkDR+4h/QVEFx7zdLEf2RV
	X6gst1quBvVDLsGdlGG+TrJ8bMv7X533VMUShrbaMEib8lGEIqZ+VCjrPvhjScGGng0V
	2N6XZyZkD7gQaUuEliAFMZ+Kqu6QoLoKao0cB490k9j8SDNZgKNjGiFvhLjUPFzx4Z1E
	wNo/4O5nQuFKPBBM3OFF33OHKPIAQE5lO+wkDoGBsHmXBL/6pZ9KsAE/Q2uGGWfIW+Dy
	HAWw==
X-Received: by 10.15.33.70 with SMTP id b46mr1345630eev.107.1395084073714;
	Mon, 17 Mar 2014 12:21:13 -0700 (PDT)
Received: from [192.168.1.174] (89-69-181-95.dynamic.chello.pl. [89.69.181.95])
	by mx.google.com with ESMTPSA id o4sm8932834eef.20.2014.03.17.12.21.12
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 17 Mar 2014 12:21:12 -0700 (PDT)
Message-ID: <53274B25.4080902@gmail.com>
Date: Mon, 17 Mar 2014 20:21:09 +0100
From: Alex T <alext.mkrs@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <532492D3.8060100@gmail.com>
In-Reply-To: <532492D3.8060100@gmail.com>
X-Enigmail-Version: 1.6
Subject: Re: Problem with git.yoctoproject.org - looks like a server-side issue, confirmed on #yocto IRC channel
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
X-List-Received-Date: Mon, 17 Mar 2014 19:21:16 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 15/03/2014 18:50, Alex T wrote:
> Looks like there's some problem with Yocto's git server, surfaced just
> recently.
>
> In short - "git fetch --depth=3 <refspec>", which was working just fine
> about a week ago, now fails

Thanks Michael, it indeed works ok now.

Sorry for replying to my own email - I wasn't subscribed, so haven't
received your email directly, read it in the archive.

regards,
Alex



