Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B04ABE007C9; Mon,  9 Jan 2017 02:49:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.51 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.51 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f51.google.com (mail-it0-f51.google.com
	[209.85.214.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29A76E0053F
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2017 02:49:09 -0800 (PST)
Received: by mail-it0-f51.google.com with SMTP id x2so60103022itf.1
	for <yocto@yoctoproject.org>; Mon, 09 Jan 2017 02:49:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=spHZoWEHe65wzNE4nO2dh+FeM9Yj4rE5v95ja1S5r3o=;
	b=LkmMllHrSf/9M4868DJViSIdDQhb5hiiiljKGvByCUArhOuE6Ajba6FWQexbFNG/Sr
	iSTFpArXcxEu5DrcToKrksZluk06hu0RIj10zLAVYxLtG4MN3K4AU0/LYAyHy3raqTpO
	Owq1Go3auMqKmZonQSntW+4yLPTpbRH3CuEcg+pYjhyUAYKKjntvyWEAWccGVexEWLfa
	ihlcZn86FktN7OkueGDUD8BBaEbqrM2Fpn/b4AfdXRsqTcnDS1rCtTomu+e2CnUMpBUd
	4O8H5FIo1Y6elV7Gq5xv+iq7abr1uCHGtnzuSLPZ8x90jWSbATCFISv12guf1hVUdWHk
	RoKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=spHZoWEHe65wzNE4nO2dh+FeM9Yj4rE5v95ja1S5r3o=;
	b=rlS+qCI7XAhDQ1S6XOc2MnPGVKzIxUSZE/GBqrPNf1EY5UqcRZAMnHIK/2PTrqeeT4
	61cRfoZutJyN7wsmBh2GaGkWzEUg+COZ6xkqGLHvSrJAuKzdgGJx1ExAgBZ0F0cfdagK
	I4l8EtJCWXrDWW7oSA2AlSc1rAz+vhen/NgSY5D+O1yyb2Le7myRqv1M+rNm/EWttdFV
	OgjuPUSlm3aYEsOlqsbdGalS/EE+0iYgLp77fsa4acjciBAplCSYszhqPTildHGPIjQP
	7PcUYiE/9zXvoA2H4qLFFVcSP2GwnWgYuPlyVTAgkVwQVP36zcX+aqW87oA6v53CeI53
	+4LA==
X-Gm-Message-State: AIkVDXJ+36rlDc9sbCaEnP5iKAP+RK6SEYe8vV+AE5H8oaDndstOsJSS1NspwYzJiXYkpd7O
X-Received: by 10.36.246.5 with SMTP id u5mr8437205ith.48.1483958948968;
	Mon, 09 Jan 2017 02:49:08 -0800 (PST)
Received: from pohly-mobl1 (p5DE8F553.dip0.t-ipconnect.de. [93.232.245.83])
	by smtp.gmail.com with ESMTPSA id
	w188sm6148961itc.9.2017.01.09.02.49.06
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 09 Jan 2017 02:49:07 -0800 (PST)
Message-ID: <1483958944.2137.22.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Jose Lamego <jose.a.lamego@linux.intel.com>
Date: Mon, 09 Jan 2017 11:49:04 +0100
In-Reply-To: <1483743785-13872-1-git-send-email-jose.a.lamego@linux.intel.com>
References: <1483743785-13872-1-git-send-email-jose.a.lamego@linux.intel.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [patchwork][PATCH] patchwork/bin/parsemail: Make "[PATCH" prefix mandatory
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
X-List-Received-Date: Mon, 09 Jan 2017 10:49:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2017-01-06 at 17:03 -0600, Jose Lamego wrote:
> Patchwork may incorrectly identify emails containing patch-like content as
> patches.
> This change makes "[PATCH" prefix in subject mandatory for emails to be
> considered as new patches.
> 
> [YOCTO #10764]
> 
> Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
> ---
>  patchwork/bin/parsemail.py | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/patchwork/bin/parsemail.py b/patchwork/bin/parsemail.py
> index 476118d..8d6529c 100755
> --- a/patchwork/bin/parsemail.py
> +++ b/patchwork/bin/parsemail.py
> @@ -399,7 +399,8 @@ def find_content(project, mail):
>      refs = build_references_list(mail)
>      is_root = refs == []
>      is_cover_letter = is_root and x == 0
> -    is_patch = patchbuf is not None
> +    patch_prefix = re.search('\[\s*PATCH', mail.get('Subject'))
> +    is_patch = patchbuf is not None and patch_prefix

This is indeed enough to weed out diffs that were inlined in normal
discussions (example from YOCTO #10764).

But we also have other examples and another bug (YOCTO #10877) where a
reply to a patch caused patchwork to create a new entry:

Subject: Re: [OE-core] [PATCH v2 1/2] grub_git: extend recipe for proper
target  deployment
...
Ping!

I'm wondering if we can address two bugs with the same fix, something
that requires that the Subject line is starting with a set of tags plus
the [PATCH] tag. For example:

patch_prefix = re.match('(\s*\[[^]]*\]\s*)*\[\s*PATCH', mail.get('Subject'))

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




