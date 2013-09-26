Return-Path: <hans.beckerus@gmail.com>
Received: from mail-lb0-f171.google.com (mail-lb0-f171.google.com
	[209.85.217.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB3EAE01508
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 10:10:27 -0700 (PDT)
Received: by mail-lb0-f171.google.com with SMTP id u14so1334888lbd.16
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 10:10:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=thqoQDHDxVDRPCIYw7BmF9e3qBxnr6iQbhmvr8tyMxs=;
	b=zVZ2PjtjEXMpq3Dx4INpmj+09IpU/o7KXChDEKdObCZxGN3wXfdhFe3eyzacBz5t5S
	cXfFPGMENpC1nHzcbhM3ZkM+K67ftmJ7OrjTNgw9Wf6ogn7XhMecwA37u+P3YLoCHqG+
	Xhgh2E51OrlRoSRzPysLijrwX/qPZ/9s/Dkx2mYBW0uxWt8JY8B5yLSRUKENAKUuysVq
	7Yb+hBxIVsYUGUXPDbjXNG5RLranYdi9UhPcgYDtWqwYbC3vaEY1yesAsOp0hTAnAsvF
	t6mbGtbyFJjvaD+X9gIlK+tGA3U6IEK8R7Sm8e14aeaTF4lB0is7lXErW5f/1aUMjeQa
	hN0A==
X-Received: by 10.152.22.65 with SMTP id b1mr29837laf.46.1380215425799;
	Thu, 26 Sep 2013 10:10:25 -0700 (PDT)
Received: from [192.168.0.10] (h135n8-rny-a12.ias.bredband.telia.com.
	[217.209.54.135])
	by mx.google.com with ESMTPSA id ac2sm2988043lbc.10.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 26 Sep 2013 10:10:24 -0700 (PDT)
Message-ID: <52446A7F.4080005@gmail.com>
Date: Thu, 26 Sep 2013 19:10:23 +0200
From: Hans Beckerus <hans.beckerus@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.2;
	rv:17.0) Gecko/20130801 Thunderbird/17.0.8
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAFyqS9oDjhiKNr3gPYtNmgkqfC82J-OiG1hX4TG3L3AqbjABCA@mail.gmail.com>
In-Reply-To: <CAFyqS9oDjhiKNr3gPYtNmgkqfC82J-OiG1hX4TG3L3AqbjABCA@mail.gmail.com>
Subject: Re: Question about DEPENDS and eg. DEPENDS_class-native
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
X-List-Received-Date: Thu, 26 Sep 2013 17:10:28 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit

On 2013-09-26 2:41, Hans Beckérus wrote:
> Hi. Browsing through the existing recipes really did not answer this
> since I have no clue what was the initial intent.
> So my quick question is if a .inc file has a DEPENDS = "foo" and a
> recipe that includes it has DEPENDS_class-native = "fee", will the
> resulting depend be merged from the two or will DEPENDS_class-native
> completely override DEPENDS? If it overrides, is the correct way to
> merge them to do DEPENDS_append_class-native = "fee"?
Ok, this one I managed to figure out by doing some trial and error.
What I have learned from that exercise is that if you wish to extend DEPENDS specifically you need to do DEPENDS_append_class-native = " <pkg>"
Doing DEPENDS_class-native = "<pkg> will override DEPENDS completely for native builds. Please correct me if I am wrong.

> Thanks.
> Hans


