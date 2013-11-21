Return-Path: <hans.beckerus@gmail.com>
Received: from mail-lb0-f171.google.com (mail-lb0-f171.google.com
	[209.85.217.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38268E005A9
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2013 07:59:35 -0800 (PST)
Received: by mail-lb0-f171.google.com with SMTP id q8so7582805lbi.30
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2013 07:59:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=MexbsgO0wlUN4ARQxBcoVetov5goiQlnztF9wnWrqQs=;
	b=Ridl3zwmVXVawFrM3wemKQ1cJ0EuIBgttYRie1j3I7aVSkMJPM9fn7IA5LmSzXyJ+9
	j9aoA9BtVLqtUX2Ljkhn7TmPjeABBUJ3z5ZIswhwLqg8TrQZx7Lr5MOQyYDY8qlY9/Kb
	qYAtFGrw5xiwvnxmgYeI7AP448z0FnPP2ka87bY82QqaOiubCTvqEuplKEPTifg2TIBq
	wDFn+2NlasMiVpNu5kFxlq1e9T+V0bxAHLKHB/LQVsppLhTbdtABGxKlup311aIoXduq
	9Nc+gkBad+r5CXT6BEbgcdxA0WSThCXtAsnOHhvahwY8K1fI3lmsP8SA0gwKIq394AQB
	O+Tw==
X-Received: by 10.152.143.6 with SMTP id sa6mr5508862lab.20.1385049569923;
	Thu, 21 Nov 2013 07:59:29 -0800 (PST)
Received: from [192.168.0.10] (h135n8-rny-a12.ias.bredband.telia.com.
	[217.209.54.135]) by mx.google.com with ESMTPSA id
	di11sm30547669lac.0.2013.11.21.07.59.28 for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 21 Nov 2013 07:59:29 -0800 (PST)
Message-ID: <528E2DDE.1080602@gmail.com>
Date: Thu, 21 Nov 2013 16:59:26 +0100
From: Hans Beckerus <hans.beckerus@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.2;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAFyqS9o5dBnO5C9yvy6UvUxbsHKhBAqNSiiRXsBhgd6w8qgurg@mail.gmail.com>
In-Reply-To: <CAFyqS9o5dBnO5C9yvy6UvUxbsHKhBAqNSiiRXsBhgd6w8qgurg@mail.gmail.com>
Subject: Re: init-ifupdown: is this missing a RDEPEND to procps?
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
X-List-Received-Date: Thu, 21 Nov 2013 15:59:36 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit

On 2013-11-20 4:15, Hans Beckérus wrote:
> The /etc/init.d/networking script is using sysctl to grab some
> parameters from /etc/sysctl.conf. This file does not exists unless
> procps is also installed.
> I can not see that init-ifupdown RDEPENDS procps. Should it not? Or is
> there a reason for not having it like that?
No one? Should I route this question to OE-core instead?

> Thanks.
> Hans


