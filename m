Return-Path: <davidsmoot@gmail.com>
Received: from mail-bw0-f48.google.com (mail-bw0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82426E006B5
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2011 19:43:29 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by bkbzs8 with SMTP id zs8so2672016bkb.35
	for <yocto@yoctoproject.org>; Thu, 01 Dec 2011 19:43:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=8of8/AcCm9QvSuJXRkf76ABOgWVDGfgJkRvUWoiolIw=;
	b=i5HYq8sW1EyOefh2TekbNkCgX+QoNUPUck/pd8qUPkECsaKzt3IfzUkGjueHFB3aZ/
	/mjGWUBquCvKADdegMQjcGVRTXUcXsiXHcRUZSRyLmRLu8xklBG2/rMVtoqnmvvIOaa/
	6YvMELefgiPMv79UHfNzuSWFYoli31apt1D4I=
MIME-Version: 1.0
Received: by 10.180.80.98 with SMTP id q2mr6977944wix.53.1322797408223; Thu,
	01 Dec 2011 19:43:28 -0800 (PST)
Received: by 10.216.154.81 with HTTP; Thu, 1 Dec 2011 19:43:28 -0800 (PST)
In-Reply-To: <CA+5N1gzpSU1vj5HkUUPisj9_wWUrmg_ReunPmmxj_ER8AgvoJQ@mail.gmail.com>
References: <CA+5N1gw_Tn0uPj_-YHpj4_3bRm+nFJiemNkp=VjOiHT6_V_bfA@mail.gmail.com>
	<CA+5N1gzpSU1vj5HkUUPisj9_wWUrmg_ReunPmmxj_ER8AgvoJQ@mail.gmail.com>
Date: Thu, 1 Dec 2011 21:43:28 -0600
Message-ID: <CA+5N1gzC-aYBxauCOQbGiNNZu84X11Ds8gbdes+SMHoe9jK+6g@mail.gmail.com>
From: David Smoot <davidsmoot@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: building the examples from "meta-demo"
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 02 Dec 2011 03:43:30 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Dec 1, 2011 at 9:30 PM, David Smoot <davidsmoot@gmail.com> wrote:
> On Thu, Dec 1, 2011 at 8:18 PM, David Smoot <davidsmoot@gmail.com> wrote:
> <snip background>

>> Thanks in advance for any answers and thanks for such a cool tool.
>>
>> David Smoot
>
> <snip second round of questions>
>
> thanks again,
> David

Josh answered my question before I hit send.  Thank you.  I'll look
into updating / adapting the meta-demo layer as I learn more.

I've only been experimenting with Yocto for a few days, the
documentation is very good for such a powerful tool.

David

