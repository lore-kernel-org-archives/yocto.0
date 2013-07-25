Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ee0-f49.google.com (mail-ee0-f49.google.com [74.125.83.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C59B0E01363
	for <yocto@yoctoproject.org>; Thu, 25 Jul 2013 07:23:00 -0700 (PDT)
Received: by mail-ee0-f49.google.com with SMTP id b57so960252eek.22
	for <yocto@yoctoproject.org>; Thu, 25 Jul 2013 07:22:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=mwdMWFkos5Wi9664lkFtct3wfganhDUQIMetXpXSUhY=;
	b=NGaKg7t0HnnfOlvN9npW64ctQqpENFl2so1Q/vlnyeidWg1cOgkczM1UjJknETsHBV
	pW9D8e0ndbq+mKVAyC7FueCc55dTYCBPoA3FyAUcbuYmzikdoNp6I+FXPH+Oi5Ptnokl
	4inMTHMJNkysQ3Olz21CNhmgGUewZooy7X6yGhHa07ogMfIk1qUtCoQi2jR7LdBxIwLg
	bDC6xLmOm09i6w6zxxzfM65q2mWTV1riU16w8ZLYWTn7FmzixIs4s3qXsnDVTLUertpX
	zUfSTWnGoR9lxV9SXoMnYLwLycHjFfO9cH1I4z/ZVAhTE8fKPz09oPO9Cha6iaOLuGtq
	M2sQ==
MIME-Version: 1.0
X-Received: by 10.14.0.4 with SMTP id 4mr42278655eea.68.1374762179428; Thu, 25
	Jul 2013 07:22:59 -0700 (PDT)
Received: by 10.14.117.65 with HTTP; Thu, 25 Jul 2013 07:22:59 -0700 (PDT)
In-Reply-To: <CADM5y7v6xs5iaUtnt8hWypAgRz981Sx90nSLHb9NM5F6BoNidw@mail.gmail.com>
References: <CADM5y7v6DT9Ls=UZNRc_uYPdrgh2AtrY_HMRPbEss=CYxOWxoQ@mail.gmail.com>
	<CALmOhg=b9JaHpH9+bRsebAoE+pq9K0QYziwT7Ji7uYjsCfOtCQ@mail.gmail.com>
	<CADM5y7v6xs5iaUtnt8hWypAgRz981Sx90nSLHb9NM5F6BoNidw@mail.gmail.com>
Date: Thu, 25 Jul 2013 10:22:59 -0400
Message-ID: <CALmOhgmFsHmjwzcQP2wHQ1y9HoqBmAN-JRK3zXqEPBMa1bF2_Q@mail.gmail.com>
From: Trevor Woerner <trevor.woerner@linaro.org>
To: mulhern <mulhern@gmail.com>
X-Gm-Message-State: ALoCoQlENkwpoQjq95cP9qIfBm/kArEAuux+vnNxTvDtSMMkp/0MA7kOQbx6LB6FVB61h6zgTMKC
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Discovering available Perl modules OR writing recipes for your own
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
X-List-Received-Date: Thu, 25 Jul 2013 14:23:01 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 25 July 2013 09:25, mulhern <mulhern@gmail.com> wrote:
> It's
> nice of you to point out for me the location of that one but what about the
> more like 15 or so others I didn't list and where they might or might not be
> hiding?

I was hoping you'd notice that there is a web-based search tool you
can use to try to find various already-written recipes:
http://layers.openembedded.org/layerindex/

If you can't find a module you're interested in through that interface
then you'll have to write it yourself (and hopefully contribute it
back to the community) :-)

